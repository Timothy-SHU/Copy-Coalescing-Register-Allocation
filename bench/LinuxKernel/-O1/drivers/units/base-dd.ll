; ModuleID = 'drivers/base/dd.c'
source_filename = "drivers/base/dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_deferred_probe_check_state: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_deferred_probe_check_state ; .previous"
module asm ".section\09\22.initcall7.init..kmod_dd__291_375_deferred_probe_initcall\22, \22a\22\09\09"
module asm "__initcall__kmod_dd__291_375_deferred_probe_initcall7:\09\09\09"
module asm ".long\09__initstub__kmod_dd__291_375_deferred_probe_initcall7 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_bind_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_bind_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wait_for_device_probe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad wait_for_device_probe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_attach: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_attach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_driver_attach: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_driver_attach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_attach: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_attach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_release_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_release_driver ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.device_attach_data = type { ptr, i8, i8, i8 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@deferred_probe_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @deferred_probe_mutex, i64 16), ptr getelementptr (i8, ptr @deferred_probe_mutex, i64 16) } }, align 8, !dbg !0
@deferred_probe_pending_list = internal global %struct.list_head { ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list }, align 8, !dbg !4908
@driver_deferred_probe_enable = internal global i8 0, align 1, !dbg !4906
@deferred_trigger_count = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !4910
@deferred_probe_active_list = internal global %struct.list_head { ptr @deferred_probe_active_list, ptr @deferred_probe_active_list }, align 8, !dbg !4912
@system_unbound_wq = external dso_local global ptr, align 8
@deferred_probe_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @deferred_probe_work, i64 8), ptr getelementptr (i8, ptr @deferred_probe_work, i64 8) }, ptr @deferred_probe_work_func }, align 8, !dbg !4914
@defer_all_probes = internal global i8 0, align 1, !dbg !4904
@.str = private unnamed_addr constant [8 x i8] c"%s: %pV\00", align 1, !dbg !4858
@__setup_str_deferred_probe_timeout_setup = internal constant [24 x i8] c"deferred_probe_timeout=\00", section ".init.rodata", align 1, !dbg !4916
@__setup_deferred_probe_timeout_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_deferred_probe_timeout_setup, ptr @deferred_probe_timeout_setup, i32 0 }, section ".init.setup", align 8, !dbg !4860
@driver_deferred_probe_timeout = internal global i32 10, align 4, !dbg !4921
@initcalls_done = internal global i8 0, align 1, !dbg !4902
@.str.1 = private unnamed_addr constant [45 x i8] c"deferred probe timeout, ignoring dependency\0A\00", align 1, !dbg !4871
@__UNIQUE_ID___addressable_driver_deferred_probe_check_state290 = internal global ptr @driver_deferred_probe_check_state, section ".discard.addressable", align 8, !dbg !4876
@deferred_probe_timeout_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @deferred_probe_timeout_work, i64 8), ptr getelementptr (i8, ptr @deferred_probe_timeout_work, i64 8) }, ptr @deferred_probe_timeout_work_func }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 8, !dbg !4923
@__UNIQUE_ID___addressable___initstub__kmod_dd__291_375_deferred_probe_initcall7292 = internal global ptr @__initstub__kmod_dd__291_375_deferred_probe_initcall7, section ".discard.addressable", align 8, !dbg !4878
@.str.2 = private unnamed_addr constant [17 x i8] c"devices_deferred\00", align 1, !dbg !4880
@__exitcall_deferred_probe_exit = internal global ptr @deferred_probe_exit, section ".exitcall.exit", align 8, !dbg !4885
@__UNIQUE_ID___addressable_device_bind_driver293 = internal global ptr @device_bind_driver, section ".discard.addressable", align 8, !dbg !4888
@probe_count = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !4948
@probe_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @probe_waitqueue, i64 8), ptr getelementptr (i8, ptr @probe_waitqueue, i64 8) } }, align 8, !dbg !4954
@__UNIQUE_ID___addressable_wait_for_device_probe294 = internal global ptr @wait_for_device_probe, section ".discard.addressable", align 8, !dbg !4890
@__setup_str_save_async_options = internal constant [20 x i8] c"driver_async_probe=\00", section ".init.rodata", align 1, !dbg !4956
@__setup_save_async_options = internal global %struct.obs_kernel_param { ptr @__setup_str_save_async_options, ptr @save_async_options, i32 0 }, section ".init.setup", align 8, !dbg !4892
@__UNIQUE_ID___addressable_device_attach295 = internal global ptr @device_attach, section ".discard.addressable", align 8, !dbg !4894
@__UNIQUE_ID___addressable_device_driver_attach296 = internal global ptr @device_driver_attach, section ".discard.addressable", align 8, !dbg !4896
@__UNIQUE_ID___addressable_driver_attach297 = internal global ptr @driver_attach, section ".discard.addressable", align 8, !dbg !4898
@__UNIQUE_ID___addressable_device_release_driver298 = internal global ptr @device_release_driver, section ".discard.addressable", align 8, !dbg !4900
@.str.3 = private unnamed_addr constant [24 x i8] c"deferred probe pending\0A\00", align 1, !dbg !4925
@system_wq = external dso_local global ptr, align 8
@deferred_devs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @deferred_devs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4928
@.str.4 = private unnamed_addr constant [6 x i8] c"%s\09%s\00", align 1, !dbg !4930
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4932
@.str.6 = private unnamed_addr constant [7 x i8] c"driver\00", align 1, !dbg !4935
@.str.7 = private unnamed_addr constant [31 x i8] c"\014%s: device %s already bound\0A\00", align 1, !dbg !4938
@__func__.driver_bound = private unnamed_addr constant [13 x i8] c"driver_bound\00", align 1, !dbg !4943
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4950
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.8 = private unnamed_addr constant [59 x i8] c"\014Too long list of driver names for 'driver_async_probe'!\0A\00", align 1, !dbg !4959
@async_probe_drv_names = internal global [256 x i8] zeroinitializer, align 16, !dbg !4966
@.str.9 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !dbg !4964
@async_probe_default = internal global i8 0, align 1, !dbg !4971
@initcall_debug = external dso_local global i8, align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\017probe of %s returned %d after %lld usecs\0A\00", align 1, !dbg !4973
@.str.11 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1, !dbg !4978
@.str.12 = private unnamed_addr constant [34 x i8] c"Resources present before probing\0A\00", align 1, !dbg !4983
@.str.13 = private unnamed_addr constant [35 x i8] c"\013%s: driver_sysfs_add(%s) failed\0A\00", align 1, !dbg !4988
@__func__.really_probe = private unnamed_addr constant [13 x i8] c"really_probe\00", align 1, !dbg !4993
@.str.14 = private unnamed_addr constant [28 x i8] c"device_add_groups() failed\0A\00", align 1, !dbg !4995
@dev_attr_state_synced = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @state_synced_show, ptr @state_synced_store }, align 8, !dbg !5010
@.str.15 = private unnamed_addr constant [31 x i8] c"state_synced sysfs add failed\0A\00", align 1, !dbg !5000
@.str.16 = private unnamed_addr constant [40 x i8] c"\014%s: probe of %s failed with error %d\0A\00", align 1, !dbg !5002
@.str.17 = private unnamed_addr constant [13 x i8] c"state_synced\00", align 1, !dbg !5007
@.str.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !5024
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !5027
@dev_attr_coredump = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 128 }, ptr null, ptr @coredump_store }, align 8, !dbg !5034
@.str.20 = private unnamed_addr constant [9 x i8] c"coredump\00", align 1, !dbg !5029
@llvm.compiler.used = appending global [13 x ptr] [ptr @__setup_deferred_probe_timeout_setup, ptr @__UNIQUE_ID___addressable_driver_deferred_probe_check_state290, ptr @__UNIQUE_ID___addressable___initstub__kmod_dd__291_375_deferred_probe_initcall7292, ptr @deferred_probe_exit, ptr @__exitcall_deferred_probe_exit, ptr @__UNIQUE_ID___addressable_device_bind_driver293, ptr @__UNIQUE_ID___addressable_wait_for_device_probe294, ptr @__setup_save_async_options, ptr @__UNIQUE_ID___addressable_device_attach295, ptr @__UNIQUE_ID___addressable_device_driver_attach296, ptr @__UNIQUE_ID___addressable_driver_attach297, ptr @__UNIQUE_ID___addressable_device_release_driver298, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @driver_deferred_probe_add(ptr noundef %dev) #0 align 16 !dbg !5045 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5049
  %can_match = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37, !dbg !5051
  %bf.load = load i8, ptr %can_match, align 4, !dbg !5051
  %bf.lshr = lshr i8 %bf.load, 4, !dbg !5051
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5051
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !5051
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !5052

if.then:                                          ; preds = %entry
  br label %return, !dbg !5053

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !5054
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5055
  %p = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2, !dbg !5057
  %2 = load ptr, ptr %p, align 8, !dbg !5057
  %deferred_probe = getelementptr inbounds %struct.device_private, ptr %2, i32 0, i32 5, !dbg !5058
  %call = call i32 @list_empty(ptr noundef %deferred_probe) #9, !dbg !5059
  %tobool = icmp ne i32 %call, 0, !dbg !5059
  br i1 %tobool, label %if.then1, label %if.end4, !dbg !5060

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5061
  %p2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 2, !dbg !5063
  %4 = load ptr, ptr %p2, align 8, !dbg !5063
  %deferred_probe3 = getelementptr inbounds %struct.device_private, ptr %4, i32 0, i32 5, !dbg !5064
  call void @list_add_tail(ptr noundef %deferred_probe3, ptr noundef @deferred_probe_pending_list) #9, !dbg !5065
  br label %if.end4, !dbg !5066

if.end4:                                          ; preds = %if.then1, %if.end
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !5067
  br label %return, !dbg !5068

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !5068
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5069 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !5073 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  br label %do.body, !dbg !5082

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5084

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5082
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5082
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5082
  store ptr %1, ptr %tmp, align 8, !dbg !5084
  %2 = load ptr, ptr %tmp, align 8, !dbg !5082
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5086
  %cmp = icmp eq ptr %2, %3, !dbg !5087
  %conv = zext i1 %cmp to i32, !dbg !5087
  ret i32 %conv, !dbg !5088
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5089 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5093, metadata !DIExpression()), !dbg !5095
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5094, metadata !DIExpression()), !dbg !5096
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5097
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5098
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5099
  %2 = load ptr, ptr %prev, align 8, !dbg !5099
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5100
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9, !dbg !5101
  ret void, !dbg !5102
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5103 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @driver_deferred_probe_del(ptr noundef %dev) #0 align 16 !dbg !5104 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !5108
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5109
  %p = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2, !dbg !5111
  %1 = load ptr, ptr %p, align 8, !dbg !5111
  %deferred_probe = getelementptr inbounds %struct.device_private, ptr %1, i32 0, i32 5, !dbg !5112
  %call = call i32 @list_empty(ptr noundef %deferred_probe) #9, !dbg !5113
  %tobool = icmp ne i32 %call, 0, !dbg !5113
  br i1 %tobool, label %if.end, label %if.then, !dbg !5114

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5115
  %p1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 2, !dbg !5117
  %3 = load ptr, ptr %p1, align 8, !dbg !5117
  %deferred_probe2 = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 5, !dbg !5118
  call void @list_del_init(ptr noundef %deferred_probe2) #9, !dbg !5119
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5120
  call void @__device_set_deferred_probe_reason(ptr noundef %4, ptr noundef null) #9, !dbg !5121
  br label %if.end, !dbg !5122

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !5123
  ret void, !dbg !5124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !5125 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5131
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5132
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5133
  call void @INIT_LIST_HEAD(ptr noundef %1) #9, !dbg !5134
  ret void, !dbg !5135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__device_set_deferred_probe_reason(ptr noundef %dev, ptr noundef %reason) #0 align 16 !dbg !5136 {
entry:
  %dev.addr = alloca ptr, align 8
  %reason.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5140, metadata !DIExpression()), !dbg !5142
  store ptr %reason, ptr %reason.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reason.addr, metadata !5141, metadata !DIExpression()), !dbg !5143
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5144
  %p = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2, !dbg !5145
  %1 = load ptr, ptr %p, align 8, !dbg !5145
  %deferred_probe_reason = getelementptr inbounds %struct.device_private, ptr %1, i32 0, i32 7, !dbg !5146
  %2 = load ptr, ptr %deferred_probe_reason, align 8, !dbg !5146
  call void @kfree(ptr noundef %2) #9, !dbg !5147
  %3 = load ptr, ptr %reason.addr, align 8, !dbg !5148
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5149
  %p1 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !5150
  %5 = load ptr, ptr %p1, align 8, !dbg !5150
  %deferred_probe_reason2 = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 7, !dbg !5151
  store ptr %3, ptr %deferred_probe_reason2, align 8, !dbg !5152
  ret void, !dbg !5153
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @driver_deferred_probe_trigger() #0 align 16 !dbg !5154 {
entry:
  %0 = load i8, ptr @driver_deferred_probe_enable, align 1, !dbg !5155, !range !5157, !noundef !1463
  %tobool = trunc i8 %0 to i1, !dbg !5155
  br i1 %tobool, label %if.end, label %if.then, !dbg !5158

if.then:                                          ; preds = %entry
  br label %return, !dbg !5159

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !5160
  call void @atomic_inc(ptr noundef @deferred_trigger_count) #9, !dbg !5161
  call void @list_splice_tail_init(ptr noundef @deferred_probe_pending_list, ptr noundef @deferred_probe_active_list) #9, !dbg !5162
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !5163
  %1 = load ptr, ptr @system_unbound_wq, align 8, !dbg !5164
  %call = call zeroext i1 @queue_work(ptr noundef %1, ptr noundef @deferred_probe_work) #9, !dbg !5165
  br label %return, !dbg !5166

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #4 align 16 !dbg !5167 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5175
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !5176
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5177
  call void @raw_atomic_inc(ptr noundef %1) #9, !dbg !5178
  ret void, !dbg !5179
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail_init(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !5180 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5182, metadata !DIExpression()), !dbg !5184
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5183, metadata !DIExpression()), !dbg !5185
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5186
  %call = call i32 @list_empty(ptr noundef %0) #9, !dbg !5188
  %tobool = icmp ne i32 %call, 0, !dbg !5188
  br i1 %tobool, label %if.end, label %if.then, !dbg !5189

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5190
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5192
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5193
  %3 = load ptr, ptr %prev, align 8, !dbg !5193
  %4 = load ptr, ptr %head.addr, align 8, !dbg !5194
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #9, !dbg !5195
  %5 = load ptr, ptr %list.addr, align 8, !dbg !5196
  call void @INIT_LIST_HEAD(ptr noundef %5) #9, !dbg !5197
  br label %if.end, !dbg !5198

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5199
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #3 align 16 !dbg !5200 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5204, metadata !DIExpression()), !dbg !5206
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5205, metadata !DIExpression()), !dbg !5207
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5208
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5209
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #9, !dbg !5210
  ret i1 %call, !dbg !5211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_block_probing() #0 align 16 !dbg !5212 {
entry:
  store i8 1, ptr @defer_all_probes, align 1, !dbg !5213
  call void @wait_for_device_probe() #9, !dbg !5214
  ret void, !dbg !5215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @wait_for_device_probe() #0 align 16 !dbg !5216 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %call = call zeroext i1 @flush_work(ptr noundef @deferred_probe_work) #9, !dbg !5238
  br label %do.body, !dbg !5239

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5240

do.body1:                                         ; preds = %do.body
  call void @might_resched() #9, !dbg !5241
  br label %do.end, !dbg !5241

do.end:                                           ; preds = %do.body1
  %call2 = call i32 @atomic_read(ptr noundef @probe_count) #9, !dbg !5243
  %cmp = icmp eq i32 %call2, 0, !dbg !5243
  br i1 %cmp, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %do.end
  br label %do.end8, !dbg !5243

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #10, !dbg !5245
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5218, metadata !DIExpression()), !dbg !5245
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #10, !dbg !5245
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5232, metadata !DIExpression()), !dbg !5245
  store i64 0, ptr %__ret, align 8, !dbg !5245
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #9, !dbg !5245
  br label %for.cond, !dbg !5245

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #10, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5233, metadata !DIExpression()), !dbg !5246
  %call3 = call i64 @prepare_to_wait_event(ptr noundef @probe_waitqueue, ptr noundef %__wq_entry, i32 noundef 2) #9, !dbg !5246
  store i64 %call3, ptr %__int, align 8, !dbg !5246
  %call4 = call i32 @atomic_read(ptr noundef @probe_count) #9, !dbg !5247
  %cmp5 = icmp eq i32 %call4, 0, !dbg !5247
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5246

if.then6:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5247

if.end7:                                          ; preds = %for.cond
  call void @schedule() #9, !dbg !5246
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5249
  br label %cleanup, !dbg !5249

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #10, !dbg !5249
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5249, !llvm.loop !5250

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @probe_waitqueue, ptr noundef %__wq_entry) #9, !dbg !5245
  br label %__out, !dbg !5245

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5237), !dbg !5245
  %0 = load i64, ptr %__ret, align 8, !dbg !5245
  store i64 %0, ptr %tmp, align 8, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #10, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #10, !dbg !5240
  %1 = load i64, ptr %tmp, align 8, !dbg !5245
  br label %do.end8, !dbg !5240

do.end8:                                          ; preds = %__out, %if.then
  call void @async_synchronize_full() #9, !dbg !5253
  ret void, !dbg !5254

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_unblock_probing() #0 align 16 !dbg !5255 {
entry:
  store i8 0, ptr @defer_all_probes, align 1, !dbg !5256
  call void @driver_deferred_probe_trigger() #9, !dbg !5257
  ret void, !dbg !5258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_set_deferred_probe_reason(ptr noundef %dev, ptr noundef %vaf) #0 align 16 !dbg !5259 {
entry:
  %dev.addr = alloca ptr, align 8
  %vaf.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %reason = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5280, metadata !DIExpression()), !dbg !5284
  store ptr %vaf, ptr %vaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaf.addr, metadata !5281, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #10, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5282, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5288
  %call = call ptr @dev_driver_string(ptr noundef %0) #9, !dbg !5289
  store ptr %call, ptr %drv, align 8, !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %reason) #10, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %reason, metadata !5283, metadata !DIExpression()), !dbg !5291
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !5292
  %1 = load ptr, ptr %drv, align 8, !dbg !5293
  %2 = load ptr, ptr %vaf.addr, align 8, !dbg !5294
  %call1 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str, ptr noundef %1, ptr noundef %2) #9, !dbg !5295
  store ptr %call1, ptr %reason, align 8, !dbg !5296
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5297
  %4 = load ptr, ptr %reason, align 8, !dbg !5298
  call void @__device_set_deferred_probe_reason(ptr noundef %3, ptr noundef %4) #9, !dbg !5299
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 8, ptr %reason) #10, !dbg !5301
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #10, !dbg !5301
  ret void, !dbg !5301
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5302 dso_local ptr @dev_driver_string(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5305 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @deferred_probe_timeout_setup(ptr noundef %str) #6 section ".init.text" align 16 !dbg !5309 {
entry:
  %str.addr = alloca ptr, align 8
  %timeout = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5311, metadata !DIExpression()), !dbg !5313
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #10, !dbg !5314
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !5312, metadata !DIExpression()), !dbg !5315
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5316
  %call = call i32 @kstrtoint(ptr noundef %0, i32 noundef 10, ptr noundef %timeout) #9, !dbg !5318
  %tobool = icmp ne i32 %call, 0, !dbg !5318
  br i1 %tobool, label %if.end, label %if.then, !dbg !5319

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %timeout, align 4, !dbg !5320
  store i32 %1, ptr @driver_deferred_probe_timeout, align 4, !dbg !5321
  br label %if.end, !dbg !5322

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #10, !dbg !5323
  ret i32 1, !dbg !5324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @driver_deferred_probe_check_state(ptr noundef %dev) #0 align 16 !dbg !5325 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load i32, ptr @driver_deferred_probe_timeout, align 4, !dbg !5329
  %tobool = icmp ne i32 %0, 0, !dbg !5329
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5331

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @initcalls_done, align 1, !dbg !5332, !range !5157, !noundef !1463
  %tobool1 = trunc i8 %1 to i1, !dbg !5332
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5333

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !5334

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5337

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5334
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef @.str.1) #11, !dbg !5334
  store i32 -110, ptr %retval, align 4, !dbg !5339
  br label %return, !dbg !5339

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -517, ptr %retval, align 4, !dbg !5340
  br label %return, !dbg !5340

return:                                           ; preds = %if.end, %do.end
  %3 = load i32, ptr %retval, align 4, !dbg !5341
  ret i32 %3, !dbg !5341
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5342 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @deferred_probe_extend_timeout() #0 align 16 !dbg !5346 {
entry:
  %tmp = alloca i32, align 4
  %call = call zeroext i1 @cancel_delayed_work(ptr noundef @deferred_probe_timeout_work) #9, !dbg !5347
  br i1 %call, label %if.then, label %if.end, !dbg !5349

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @driver_deferred_probe_timeout, align 4, !dbg !5350
  %mul = mul i32 %0, 1000, !dbg !5352
  %conv = sext i32 %mul to i64, !dbg !5350
  %call1 = call zeroext i1 @schedule_delayed_work(ptr noundef @deferred_probe_timeout_work, i64 noundef %conv) #9, !dbg !5353
  store i32 0, ptr %tmp, align 4, !dbg !5354
  %1 = load i32, ptr %tmp, align 4, !dbg !5357
  br label %if.end, !dbg !5358

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5359
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5360 dso_local zeroext i1 @cancel_delayed_work(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_delayed_work(ptr noundef %dwork, i64 noundef %delay) #3 align 16 !dbg !5364 {
entry:
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !5368, metadata !DIExpression()), !dbg !5370
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !5369, metadata !DIExpression()), !dbg !5371
  %0 = load ptr, ptr @system_wq, align 8, !dbg !5372
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !5373
  %2 = load i64, ptr %delay.addr, align 8, !dbg !5374
  %call = call zeroext i1 @queue_delayed_work(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9, !dbg !5375
  ret i1 %call, !dbg !5376
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_dd__291_375_deferred_probe_initcall7() #6 section ".init.text" align 16 !dbg !5377 {
entry:
  %call = call i32 @deferred_probe_initcall() #9, !dbg !5378
  ret i32 %call, !dbg !5378
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @deferred_probe_initcall() #0 align 16 !dbg !5379 {
entry:
  %call = call ptr @debugfs_create_file(ptr noundef @.str.2, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef @deferred_devs_fops) #9, !dbg !5380
  store i8 1, ptr @driver_deferred_probe_enable, align 1, !dbg !5381
  call void @driver_deferred_probe_trigger() #9, !dbg !5382
  %call1 = call zeroext i1 @flush_work(ptr noundef @deferred_probe_work) #9, !dbg !5383
  store i8 1, ptr @initcalls_done, align 1, !dbg !5384
  call void @driver_deferred_probe_trigger() #9, !dbg !5385
  %call2 = call zeroext i1 @flush_work(ptr noundef @deferred_probe_work) #9, !dbg !5386
  %0 = load i32, ptr @driver_deferred_probe_timeout, align 4, !dbg !5387
  %cmp = icmp sgt i32 %0, 0, !dbg !5389
  br i1 %cmp, label %if.then, label %if.end, !dbg !5390

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @driver_deferred_probe_timeout, align 4, !dbg !5391
  %mul = mul i32 %1, 1000, !dbg !5393
  %conv = sext i32 %mul to i64, !dbg !5391
  %call3 = call zeroext i1 @schedule_delayed_work(ptr noundef @deferred_probe_timeout_work, i64 noundef %conv) #9, !dbg !5394
  br label %if.end, !dbg !5395

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5396
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @deferred_probe_exit() #6 section ".exit.text" align 16 !dbg !5397 {
entry:
  call void @debugfs_lookup_and_remove(ptr noundef @.str.2, ptr noundef null) #9, !dbg !5398
  ret void, !dbg !5399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5400 dso_local void @debugfs_lookup_and_remove(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @device_is_bound(ptr noundef %dev) #0 align 16 !dbg !5404 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5410
  %p = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2, !dbg !5411
  %1 = load ptr, ptr %p, align 8, !dbg !5411
  %tobool = icmp ne ptr %1, null, !dbg !5410
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5412

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5413
  %p1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 2, !dbg !5414
  %3 = load ptr, ptr %p1, align 8, !dbg !5414
  %knode_driver = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 2, !dbg !5415
  %call = call i32 @klist_node_attached(ptr noundef %knode_driver) #9, !dbg !5416
  %tobool2 = icmp ne i32 %call, 0, !dbg !5412
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5417
  ret i1 %4, !dbg !5418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5419 dso_local i32 @klist_node_attached(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @device_bind_driver(ptr noundef %dev) #0 align 16 !dbg !5422 {
entry:
  %dev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5424, metadata !DIExpression()), !dbg !5426
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5425, metadata !DIExpression()), !dbg !5428
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5429
  %call = call i32 @driver_sysfs_add(ptr noundef %0) #9, !dbg !5430
  store i32 %call, ptr %ret, align 4, !dbg !5431
  %1 = load i32, ptr %ret, align 4, !dbg !5432
  %tobool = icmp ne i32 %1, 0, !dbg !5432
  br i1 %tobool, label %if.else, label %if.then, !dbg !5434

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5435
  call void @device_links_force_bind(ptr noundef %2) #9, !dbg !5437
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5438
  call void @driver_bound(ptr noundef %3) #9, !dbg !5439
  br label %if.end, !dbg !5440

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5441
  call void @bus_notify(ptr noundef %4, i32 noundef 7) #9, !dbg !5442
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %ret, align 4, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5444
  ret i32 %5, !dbg !5445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @driver_sysfs_add(ptr noundef %dev) #0 align 16 !dbg !5446 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5448, metadata !DIExpression()), !dbg !5452
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5453
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5449, metadata !DIExpression()), !dbg !5454
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5455
  call void @bus_notify(ptr noundef %0, i32 noundef 3) #9, !dbg !5456
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5457
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6, !dbg !5458
  %2 = load ptr, ptr %driver, align 8, !dbg !5458
  %p = getelementptr inbounds %struct.device_driver, ptr %2, i32 0, i32 18, !dbg !5459
  %3 = load ptr, ptr %p, align 8, !dbg !5459
  %kobj = getelementptr inbounds %struct.driver_private, ptr %3, i32 0, i32 0, !dbg !5460
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5461
  %kobj1 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5462
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5463
  %kobj2 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 0, !dbg !5464
  %call = call ptr @kobject_name(ptr noundef %kobj2) #9, !dbg !5465
  %call3 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj1, ptr noundef %call) #9, !dbg !5466
  store i32 %call3, ptr %ret, align 4, !dbg !5467
  %6 = load i32, ptr %ret, align 4, !dbg !5468
  %tobool = icmp ne i32 %6, 0, !dbg !5468
  br i1 %tobool, label %if.then, label %if.end, !dbg !5470

if.then:                                          ; preds = %entry
  br label %fail, !dbg !5471

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5472
  %kobj4 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 0, !dbg !5473
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5474
  %driver5 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 6, !dbg !5475
  %9 = load ptr, ptr %driver5, align 8, !dbg !5475
  %p6 = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 18, !dbg !5476
  %10 = load ptr, ptr %p6, align 8, !dbg !5476
  %kobj7 = getelementptr inbounds %struct.driver_private, ptr %10, i32 0, i32 0, !dbg !5477
  %call8 = call i32 @sysfs_create_link(ptr noundef %kobj4, ptr noundef %kobj7, ptr noundef @.str.6) #9, !dbg !5478
  store i32 %call8, ptr %ret, align 4, !dbg !5479
  %11 = load i32, ptr %ret, align 4, !dbg !5480
  %tobool9 = icmp ne i32 %11, 0, !dbg !5480
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5482

if.then10:                                        ; preds = %if.end
  br label %rm_dev, !dbg !5483

if.end11:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5484

rm_dev:                                           ; preds = %if.then10
  call void @llvm.dbg.label(metadata !5450), !dbg !5486
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5487
  %driver12 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6, !dbg !5488
  %13 = load ptr, ptr %driver12, align 8, !dbg !5488
  %p13 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 18, !dbg !5489
  %14 = load ptr, ptr %p13, align 8, !dbg !5489
  %kobj14 = getelementptr inbounds %struct.driver_private, ptr %14, i32 0, i32 0, !dbg !5490
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5491
  %kobj15 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 0, !dbg !5492
  %call16 = call ptr @kobject_name(ptr noundef %kobj15) #9, !dbg !5493
  call void @sysfs_remove_link(ptr noundef %kobj14, ptr noundef %call16) #9, !dbg !5494
  br label %fail, !dbg !5494

fail:                                             ; preds = %rm_dev, %if.then
  call void @llvm.dbg.label(metadata !5451), !dbg !5495
  %16 = load i32, ptr %ret, align 4, !dbg !5496
  store i32 %16, ptr %retval, align 4, !dbg !5497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5497

cleanup:                                          ; preds = %fail, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5498
  %17 = load i32, ptr %retval, align 4, !dbg !5498
  ret i32 %17, !dbg !5498
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5499 dso_local void @device_links_force_bind(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @driver_bound(ptr noundef %dev) #0 align 16 !dbg !5500 {
entry:
  %dev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5504
  %call = call zeroext i1 @device_is_bound(ptr noundef %0) #9, !dbg !5506
  br i1 %call, label %if.then, label %if.end, !dbg !5507

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5508

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5511

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5508
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !5508
  %call1 = call ptr @kobject_name(ptr noundef %kobj) #9, !dbg !5508
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @__func__.driver_bound, ptr noundef %call1) #11, !dbg !5508
  store i32 %call2, ptr %tmp, align 4, !dbg !5511
  %2 = load i32, ptr %tmp, align 4, !dbg !5508
  br label %return, !dbg !5513

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp3, align 4, !dbg !5514
  %3 = load i32, ptr %tmp3, align 4, !dbg !5517
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5518
  %p = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !5519
  %5 = load ptr, ptr %p, align 8, !dbg !5519
  %knode_driver = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 2, !dbg !5520
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5521
  %driver = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6, !dbg !5522
  %7 = load ptr, ptr %driver, align 8, !dbg !5522
  %p4 = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 18, !dbg !5523
  %8 = load ptr, ptr %p4, align 8, !dbg !5523
  %klist_devices = getelementptr inbounds %struct.driver_private, ptr %8, i32 0, i32 1, !dbg !5524
  call void @klist_add_tail(ptr noundef %knode_driver, ptr noundef %klist_devices) #9, !dbg !5525
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5526
  call void @device_links_driver_bound(ptr noundef %9) #9, !dbg !5527
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5528
  call void @device_pm_check_callbacks(ptr noundef %10) #9, !dbg !5529
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5530
  call void @driver_deferred_probe_del(ptr noundef %11) #9, !dbg !5531
  call void @driver_deferred_probe_trigger() #9, !dbg !5532
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5533
  call void @bus_notify(ptr noundef %12, i32 noundef 4) #9, !dbg !5534
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5535
  %kobj5 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 0, !dbg !5536
  %call6 = call i32 @kobject_uevent(ptr noundef %kobj5, i32 noundef 6) #9, !dbg !5537
  br label %return, !dbg !5538

return:                                           ; preds = %if.end, %do.end
  ret void, !dbg !5538
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5539 dso_local void @bus_notify(ptr noundef, i32 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @driver_probe_done() #6 section ".init.text" align 16 !dbg !5542 {
entry:
  %local_probe_count = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_probe_count) #10, !dbg !5545
  call void @llvm.dbg.declare(metadata ptr %local_probe_count, metadata !5544, metadata !DIExpression()), !dbg !5546
  %call = call i32 @atomic_read(ptr noundef @probe_count) #9, !dbg !5547
  store i32 %call, ptr %local_probe_count, align 4, !dbg !5546
  store i32 0, ptr %tmp, align 4, !dbg !5548
  %0 = load i32, ptr %tmp, align 4, !dbg !5551
  %1 = load i32, ptr %local_probe_count, align 4, !dbg !5552
  %tobool = icmp ne i32 %1, 0, !dbg !5553
  %lnot = xor i1 %tobool, true, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_probe_count) #10, !dbg !5554
  ret i1 %lnot, !dbg !5555
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !5556 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5564
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #9, !dbg !5565
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5566
  %call = call i32 @raw_atomic_read(ptr noundef %1) #9, !dbg !5567
  ret i32 %call, !dbg !5568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5569 dso_local zeroext i1 @flush_work(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #4 align 16 !dbg !4952 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5572
  %0 = load ptr, ptr %tmp, align 8, !dbg !5572
  %call = call i32 %0() #9, !dbg !5574
  ret void, !dbg !5575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5576 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5579 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5583 dso_local void @schedule() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5584 dso_local void @finish_wait(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5587 dso_local void @async_synchronize_full() #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @save_async_options(ptr noundef %buf) #6 section ".init.text" align 16 !dbg !5589 {
entry:
  %buf.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5593
  %call = call i64 @strlen(ptr noundef %0) #9, !dbg !5595
  %cmp = icmp uge i64 %call, 256, !dbg !5596
  br i1 %cmp, label %if.then, label %if.end, !dbg !5597

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5598

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5600

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #11, !dbg !5598
  store i32 %call1, ptr %tmp, align 4, !dbg !5600
  %1 = load i32, ptr %tmp, align 4, !dbg !5598
  br label %if.end, !dbg !5602

if.end:                                           ; preds = %do.end, %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5603
  %call2 = call i64 @strscpy(ptr noundef @async_probe_drv_names, ptr noundef %2, i64 noundef 256) #9, !dbg !5604
  %call3 = call zeroext i1 @parse_option_str(ptr noundef @async_probe_drv_names, ptr noundef @.str.9) #9, !dbg !5605
  %frombool = zext i1 %call3 to i8, !dbg !5606
  store i8 %frombool, ptr @async_probe_default, align 1, !dbg !5606
  ret i32 1, !dbg !5607
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @device_attach(ptr noundef %dev) #0 align 16 !dbg !5608 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5612
  %call = call i32 @__device_attach(ptr noundef %0, i1 noundef zeroext false) #9, !dbg !5613
  ret i32 %call, !dbg !5614
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__device_attach(ptr noundef %dev, i1 noundef zeroext %allow_async) #0 align 16 !dbg !5615 {
entry:
  %dev.addr = alloca ptr, align 8
  %allow_async.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %async = alloca i8, align 1
  %data = alloca %struct.device_attach_data, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5619, metadata !DIExpression()), !dbg !5634
  %frombool = zext i1 %allow_async to i8
  store i8 %frombool, ptr %allow_async.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %allow_async.addr, metadata !5620, metadata !DIExpression()), !dbg !5635
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5636
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5621, metadata !DIExpression()), !dbg !5637
  store i32 0, ptr %ret, align 4, !dbg !5637
  call void @llvm.lifetime.start.p0(i64 1, ptr %async) #10, !dbg !5638
  call void @llvm.dbg.declare(metadata ptr %async, metadata !5622, metadata !DIExpression()), !dbg !5639
  store i8 0, ptr %async, align 1, !dbg !5639
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5640
  call void @device_lock(ptr noundef %0) #9, !dbg !5641
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5642
  %p = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2, !dbg !5643
  %2 = load ptr, ptr %p, align 8, !dbg !5643
  %dead = getelementptr inbounds %struct.device_private, ptr %2, i32 0, i32 9, !dbg !5644
  %bf.load = load i8, ptr %dead, align 8, !dbg !5644
  %bf.clear = and i8 %bf.load, 1, !dbg !5644
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5642
  br i1 %tobool, label %if.then, label %if.else, !dbg !5645

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !5646

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5648
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !5649
  %4 = load ptr, ptr %driver, align 8, !dbg !5649
  %tobool1 = icmp ne ptr %4, null, !dbg !5648
  br i1 %tobool1, label %if.then2, label %if.else9, !dbg !5650

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5651
  %call = call zeroext i1 @device_is_bound(ptr noundef %5) #9, !dbg !5654
  br i1 %call, label %if.then3, label %if.end, !dbg !5655

if.then3:                                         ; preds = %if.then2
  store i32 1, ptr %ret, align 4, !dbg !5656
  br label %out_unlock, !dbg !5658

if.end:                                           ; preds = %if.then2
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5659
  %call4 = call i32 @device_bind_driver(ptr noundef %6) #9, !dbg !5660
  store i32 %call4, ptr %ret, align 4, !dbg !5661
  %7 = load i32, ptr %ret, align 4, !dbg !5662
  %cmp = icmp eq i32 %7, 0, !dbg !5664
  br i1 %cmp, label %if.then5, label %if.else6, !dbg !5665

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %ret, align 4, !dbg !5666
  br label %if.end8, !dbg !5667

if.else6:                                         ; preds = %if.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5668
  %driver7 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 6, !dbg !5670
  store ptr null, ptr %driver7, align 8, !dbg !5671
  store i32 0, ptr %ret, align 4, !dbg !5672
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then5
  br label %if.end35, !dbg !5673

if.else9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #10, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5623, metadata !DIExpression()), !dbg !5675
  %dev10 = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 0, !dbg !5676
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5677
  store ptr %9, ptr %dev10, align 8, !dbg !5676
  %check_async = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 1, !dbg !5676
  %10 = load i8, ptr %allow_async.addr, align 1, !dbg !5678, !range !5157, !noundef !1463
  %tobool11 = trunc i8 %10 to i1, !dbg !5678
  %frombool12 = zext i1 %tobool11 to i8, !dbg !5676
  store i8 %frombool12, ptr %check_async, align 8, !dbg !5676
  %want_async = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 2, !dbg !5676
  store i8 0, ptr %want_async, align 1, !dbg !5676
  %have_async = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 3, !dbg !5676
  store i8 0, ptr %have_async, align 2, !dbg !5676
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5679
  %parent = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1, !dbg !5681
  %12 = load ptr, ptr %parent, align 8, !dbg !5681
  %tobool13 = icmp ne ptr %12, null, !dbg !5679
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5682

if.then14:                                        ; preds = %if.else9
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5683
  %parent15 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !5684
  %14 = load ptr, ptr %parent15, align 8, !dbg !5684
  %call16 = call i32 @pm_runtime_get_sync(ptr noundef %14) #9, !dbg !5685
  br label %if.end17, !dbg !5685

if.end17:                                         ; preds = %if.then14, %if.else9
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5686
  %bus = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 5, !dbg !5687
  %16 = load ptr, ptr %bus, align 8, !dbg !5687
  %call18 = call i32 @bus_for_each_drv(ptr noundef %16, ptr noundef null, ptr noundef %data, ptr noundef @__device_attach_driver) #9, !dbg !5688
  store i32 %call18, ptr %ret, align 4, !dbg !5689
  %17 = load i32, ptr %ret, align 4, !dbg !5690
  %tobool19 = icmp ne i32 %17, 0, !dbg !5690
  br i1 %tobool19, label %if.else26, label %land.lhs.true, !dbg !5692

land.lhs.true:                                    ; preds = %if.end17
  %18 = load i8, ptr %allow_async.addr, align 1, !dbg !5693, !range !5157, !noundef !1463
  %tobool20 = trunc i8 %18 to i1, !dbg !5693
  br i1 %tobool20, label %land.lhs.true21, label %if.else26, !dbg !5694

land.lhs.true21:                                  ; preds = %land.lhs.true
  %have_async22 = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 3, !dbg !5695
  %19 = load i8, ptr %have_async22, align 2, !dbg !5695, !range !5157, !noundef !1463
  %tobool23 = trunc i8 %19 to i1, !dbg !5695
  br i1 %tobool23, label %if.then24, label %if.else26, !dbg !5696

if.then24:                                        ; preds = %land.lhs.true21
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5697
  %call25 = call ptr @get_device(ptr noundef %20) #9, !dbg !5699
  store i8 1, ptr %async, align 1, !dbg !5700
  br label %if.end28, !dbg !5701

if.else26:                                        ; preds = %land.lhs.true21, %land.lhs.true, %if.end17
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5702
  %call27 = call i32 @pm_request_idle(ptr noundef %21) #9, !dbg !5704
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5705
  %parent29 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1, !dbg !5707
  %23 = load ptr, ptr %parent29, align 8, !dbg !5707
  %tobool30 = icmp ne ptr %23, null, !dbg !5705
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !5708

if.then31:                                        ; preds = %if.end28
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5709
  %parent32 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1, !dbg !5710
  %25 = load ptr, ptr %parent32, align 8, !dbg !5710
  %call33 = call i32 @pm_runtime_put(ptr noundef %25) #9, !dbg !5711
  br label %if.end34, !dbg !5711

if.end34:                                         ; preds = %if.then31, %if.end28
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #10, !dbg !5712
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end8
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  br label %out_unlock, !dbg !5644

out_unlock:                                       ; preds = %if.end36, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !5633), !dbg !5713
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5714
  call void @device_unlock(ptr noundef %26) #9, !dbg !5715
  %27 = load i8, ptr %async, align 1, !dbg !5716, !range !5157, !noundef !1463
  %tobool37 = trunc i8 %27 to i1, !dbg !5716
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5718

if.then38:                                        ; preds = %out_unlock
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5719
  %call39 = call i64 @async_schedule_dev(ptr noundef @__device_attach_async_helper, ptr noundef %28) #9, !dbg !5720
  br label %if.end40, !dbg !5720

if.end40:                                         ; preds = %if.then38, %out_unlock
  %29 = load i32, ptr %ret, align 4, !dbg !5721
  call void @llvm.lifetime.end.p0(i64 1, ptr %async) #10, !dbg !5722
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5722
  ret i32 %29, !dbg !5723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_initial_probe(ptr noundef %dev) #0 align 16 !dbg !5724 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5728
  %call = call i32 @__device_attach(ptr noundef %0, i1 noundef zeroext true) #9, !dbg !5729
  ret void, !dbg !5730
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @device_driver_attach(ptr noundef %drv, ptr noundef %dev) #0 align 16 !dbg !5731 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5735, metadata !DIExpression()), !dbg !5738
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5736, metadata !DIExpression()), !dbg !5739
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5737, metadata !DIExpression()), !dbg !5741
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5742
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5743
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1, !dbg !5744
  %2 = load ptr, ptr %parent, align 8, !dbg !5744
  call void @__device_driver_lock(ptr noundef %0, ptr noundef %2) #9, !dbg !5745
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !5746
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5747
  %call = call i32 @__driver_probe_device(ptr noundef %3, ptr noundef %4) #9, !dbg !5748
  store i32 %call, ptr %ret, align 4, !dbg !5749
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5750
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5751
  %parent1 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !5752
  %7 = load ptr, ptr %parent1, align 8, !dbg !5752
  call void @__device_driver_unlock(ptr noundef %5, ptr noundef %7) #9, !dbg !5753
  %8 = load i32, ptr %ret, align 4, !dbg !5754
  %cmp = icmp sgt i32 %8, 0, !dbg !5756
  br i1 %cmp, label %if.then, label %if.end, !dbg !5757

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %ret, align 4, !dbg !5758
  %sub = sub i32 0, %9, !dbg !5759
  store i32 %sub, ptr %ret, align 4, !dbg !5760
  br label %if.end, !dbg !5761

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %ret, align 4, !dbg !5762
  %cmp2 = icmp eq i32 %10, -517, !dbg !5764
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5765

if.then3:                                         ; preds = %if.end
  store i32 -11, ptr %retval, align 4, !dbg !5766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5766

if.end4:                                          ; preds = %if.end
  %11 = load i32, ptr %ret, align 4, !dbg !5767
  store i32 %11, ptr %retval, align 4, !dbg !5768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5768

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5769
  %12 = load i32, ptr %retval, align 4, !dbg !5769
  ret i32 %12, !dbg !5769
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__device_driver_lock(ptr noundef %dev, ptr noundef %parent) #0 align 16 !dbg !5770 {
entry:
  %dev.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5774, metadata !DIExpression()), !dbg !5776
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5778
  %tobool = icmp ne ptr %0, null, !dbg !5778
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5780

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5781
  %bus = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5, !dbg !5782
  %2 = load ptr, ptr %bus, align 8, !dbg !5782
  %need_parent_lock = getelementptr inbounds %struct.bus_type, ptr %2, i32 0, i32 20, !dbg !5783
  %3 = load i8, ptr %need_parent_lock, align 8, !dbg !5783, !range !5157, !noundef !1463
  %tobool1 = trunc i8 %3 to i1, !dbg !5783
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5784

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !5785
  call void @device_lock(ptr noundef %4) #9, !dbg !5786
  br label %if.end, !dbg !5786

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5787
  call void @device_lock(ptr noundef %5) #9, !dbg !5788
  ret void, !dbg !5789
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__driver_probe_device(ptr noundef %drv, ptr noundef %dev) #0 align 16 !dbg !5790 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5792, metadata !DIExpression()), !dbg !5795
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5793, metadata !DIExpression()), !dbg !5796
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5794, metadata !DIExpression()), !dbg !5798
  store i32 0, ptr %ret, align 4, !dbg !5798
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5799
  %p = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2, !dbg !5801
  %1 = load ptr, ptr %p, align 8, !dbg !5801
  %dead = getelementptr inbounds %struct.device_private, ptr %1, i32 0, i32 9, !dbg !5802
  %bf.load = load i8, ptr %dead, align 8, !dbg !5802
  %bf.clear = and i8 %bf.load, 1, !dbg !5802
  %conv = zext i8 %bf.clear to i32, !dbg !5799
  %tobool = icmp ne i32 %conv, 0, !dbg !5799
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5803

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5804
  %call = call i32 @device_is_registered(ptr noundef %2) #9, !dbg !5805
  %tobool1 = icmp ne i32 %call, 0, !dbg !5805
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5806

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5807

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5808
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !5810
  %4 = load ptr, ptr %driver, align 8, !dbg !5810
  %tobool2 = icmp ne ptr %4, null, !dbg !5808
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5811

if.then3:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !5812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5812

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5813
  %can_match = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 37, !dbg !5814
  %bf.load5 = load i8, ptr %can_match, align 4, !dbg !5815
  %bf.clear6 = and i8 %bf.load5, -17, !dbg !5815
  %bf.set = or i8 %bf.clear6, 16, !dbg !5815
  store i8 %bf.set, ptr %can_match, align 4, !dbg !5815
  store i32 0, ptr %tmp, align 4, !dbg !5816
  %6 = load i32, ptr %tmp, align 4, !dbg !5819
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5820
  call void @pm_runtime_get_suppliers(ptr noundef %7) #9, !dbg !5821
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5822
  %parent = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1, !dbg !5824
  %9 = load ptr, ptr %parent, align 8, !dbg !5824
  %tobool7 = icmp ne ptr %9, null, !dbg !5822
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !5825

if.then8:                                         ; preds = %if.end4
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5826
  %parent9 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1, !dbg !5827
  %11 = load ptr, ptr %parent9, align 8, !dbg !5827
  %call10 = call i32 @pm_runtime_get_sync(ptr noundef %11) #9, !dbg !5828
  br label %if.end11, !dbg !5828

if.end11:                                         ; preds = %if.then8, %if.end4
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5829
  %call12 = call i32 @pm_runtime_barrier(ptr noundef %12) #9, !dbg !5830
  %13 = load i8, ptr @initcall_debug, align 1, !dbg !5831, !range !5157, !noundef !1463
  %tobool13 = trunc i8 %13 to i1, !dbg !5831
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !5833

if.then14:                                        ; preds = %if.end11
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5834
  %15 = load ptr, ptr %drv.addr, align 8, !dbg !5835
  %call15 = call i32 @really_probe_debug(ptr noundef %14, ptr noundef %15) #9, !dbg !5836
  store i32 %call15, ptr %ret, align 4, !dbg !5837
  br label %if.end17, !dbg !5838

if.else:                                          ; preds = %if.end11
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5839
  %17 = load ptr, ptr %drv.addr, align 8, !dbg !5840
  %call16 = call i32 @really_probe(ptr noundef %16, ptr noundef %17) #9, !dbg !5841
  store i32 %call16, ptr %ret, align 4, !dbg !5842
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5843
  %call18 = call i32 @pm_request_idle(ptr noundef %18) #9, !dbg !5844
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5845
  %parent19 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1, !dbg !5847
  %20 = load ptr, ptr %parent19, align 8, !dbg !5847
  %tobool20 = icmp ne ptr %20, null, !dbg !5845
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !5848

if.then21:                                        ; preds = %if.end17
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5849
  %parent22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1, !dbg !5850
  %22 = load ptr, ptr %parent22, align 8, !dbg !5850
  %call23 = call i32 @pm_runtime_put(ptr noundef %22) #9, !dbg !5851
  br label %if.end24, !dbg !5851

if.end24:                                         ; preds = %if.then21, %if.end17
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5852
  call void @pm_runtime_put_suppliers(ptr noundef %23) #9, !dbg !5853
  %24 = load i32, ptr %ret, align 4, !dbg !5854
  store i32 %24, ptr %retval, align 4, !dbg !5855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5855

cleanup:                                          ; preds = %if.end24, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5856
  %25 = load i32, ptr %retval, align 4, !dbg !5856
  ret i32 %25, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__device_driver_unlock(ptr noundef %dev, ptr noundef %parent) #0 align 16 !dbg !5857 {
entry:
  %dev.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5859, metadata !DIExpression()), !dbg !5861
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5860, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5863
  call void @device_unlock(ptr noundef %0) #9, !dbg !5864
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !5865
  %tobool = icmp ne ptr %1, null, !dbg !5865
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5867

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5868
  %bus = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 5, !dbg !5869
  %3 = load ptr, ptr %bus, align 8, !dbg !5869
  %need_parent_lock = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 20, !dbg !5870
  %4 = load i8, ptr %need_parent_lock, align 8, !dbg !5870, !range !5157, !noundef !1463
  %tobool1 = trunc i8 %4 to i1, !dbg !5870
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5871

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !5872
  call void @device_unlock(ptr noundef %5) #9, !dbg !5873
  br label %if.end, !dbg !5873

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !5874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @driver_attach(ptr noundef %drv) #0 align 16 !dbg !5875 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !5881
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !5882
  %1 = load ptr, ptr %bus, align 8, !dbg !5882
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !5883
  %call = call i32 @bus_for_each_dev(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef @__driver_attach) #9, !dbg !5884
  ret i32 %call, !dbg !5885
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5886 dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__driver_attach(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !5892 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %async = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5894, metadata !DIExpression()), !dbg !5899
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5895, metadata !DIExpression()), !dbg !5900
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #10, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5896, metadata !DIExpression()), !dbg !5902
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5903
  store ptr %0, ptr %drv, align 8, !dbg !5902
  call void @llvm.lifetime.start.p0(i64 1, ptr %async) #10, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %async, metadata !5897, metadata !DIExpression()), !dbg !5905
  store i8 0, ptr %async, align 1, !dbg !5905
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5898, metadata !DIExpression()), !dbg !5907
  %1 = load ptr, ptr %drv, align 8, !dbg !5908
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5909
  %call = call i32 @driver_match_device(ptr noundef %1, ptr noundef %2) #9, !dbg !5910
  store i32 %call, ptr %ret, align 4, !dbg !5911
  %3 = load i32, ptr %ret, align 4, !dbg !5912
  %cmp = icmp eq i32 %3, 0, !dbg !5914
  br i1 %cmp, label %if.then, label %if.else, !dbg !5915

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5916

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !5918
  %cmp1 = icmp eq i32 %4, -517, !dbg !5920
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !5921

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5922
  %can_match = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 37, !dbg !5924
  %bf.load = load i8, ptr %can_match, align 4, !dbg !5925
  %bf.clear = and i8 %bf.load, -17, !dbg !5925
  %bf.set = or i8 %bf.clear, 16, !dbg !5925
  store i8 %bf.set, ptr %can_match, align 4, !dbg !5925
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5926
  call void @driver_deferred_probe_add(ptr noundef %6) #9, !dbg !5927
  store i32 0, ptr %retval, align 4, !dbg !5928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5928

if.else3:                                         ; preds = %if.else
  %7 = load i32, ptr %ret, align 4, !dbg !5929
  %cmp4 = icmp slt i32 %7, 0, !dbg !5931
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !5932

if.then5:                                         ; preds = %if.else3
  store i32 0, ptr %retval, align 4, !dbg !5933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5933

if.end:                                           ; preds = %if.else3
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  %8 = load ptr, ptr %drv, align 8, !dbg !5935
  %call8 = call zeroext i1 @driver_allows_async_probing(ptr noundef %8) #9, !dbg !5937
  br i1 %call8, label %if.then9, label %if.end20, !dbg !5938

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5939
  call void @device_lock(ptr noundef %9) #9, !dbg !5941
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5942
  %driver = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 6, !dbg !5944
  %11 = load ptr, ptr %driver, align 8, !dbg !5944
  %tobool = icmp ne ptr %11, null, !dbg !5942
  br i1 %tobool, label %if.end15, label %land.lhs.true, !dbg !5945

land.lhs.true:                                    ; preds = %if.then9
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5946
  %p = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 2, !dbg !5947
  %13 = load ptr, ptr %p, align 8, !dbg !5947
  %async_driver = getelementptr inbounds %struct.device_private, ptr %13, i32 0, i32 6, !dbg !5948
  %14 = load ptr, ptr %async_driver, align 8, !dbg !5948
  %tobool10 = icmp ne ptr %14, null, !dbg !5946
  br i1 %tobool10, label %if.end15, label %if.then11, !dbg !5949

if.then11:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5950
  %call12 = call ptr @get_device(ptr noundef %15) #9, !dbg !5952
  %16 = load ptr, ptr %drv, align 8, !dbg !5953
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5954
  %p13 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 2, !dbg !5955
  %18 = load ptr, ptr %p13, align 8, !dbg !5955
  %async_driver14 = getelementptr inbounds %struct.device_private, ptr %18, i32 0, i32 6, !dbg !5956
  store ptr %16, ptr %async_driver14, align 8, !dbg !5957
  store i8 1, ptr %async, align 1, !dbg !5958
  br label %if.end15, !dbg !5959

if.end15:                                         ; preds = %if.then11, %land.lhs.true, %if.then9
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5960
  call void @device_unlock(ptr noundef %19) #9, !dbg !5961
  %20 = load i8, ptr %async, align 1, !dbg !5962, !range !5157, !noundef !1463
  %tobool16 = trunc i8 %20 to i1, !dbg !5962
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5964

if.then17:                                        ; preds = %if.end15
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5965
  %call18 = call i64 @async_schedule_dev(ptr noundef @__driver_attach_async_helper, ptr noundef %21) #9, !dbg !5966
  br label %if.end19, !dbg !5966

if.end19:                                         ; preds = %if.then17, %if.end15
  store i32 0, ptr %retval, align 4, !dbg !5967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end20:                                         ; preds = %if.end7
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5968
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5969
  %parent = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 1, !dbg !5970
  %24 = load ptr, ptr %parent, align 8, !dbg !5970
  call void @__device_driver_lock(ptr noundef %22, ptr noundef %24) #9, !dbg !5971
  %25 = load ptr, ptr %drv, align 8, !dbg !5972
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5973
  %call21 = call i32 @driver_probe_device(ptr noundef %25, ptr noundef %26) #9, !dbg !5974
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5975
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5976
  %parent22 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 1, !dbg !5977
  %29 = load ptr, ptr %parent22, align 8, !dbg !5977
  call void @__device_driver_unlock(ptr noundef %27, ptr noundef %29) #9, !dbg !5978
  store i32 0, ptr %retval, align 4, !dbg !5979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5979

cleanup:                                          ; preds = %if.end20, %if.end19, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 1, ptr %async) #10, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #10, !dbg !5980
  %30 = load i32, ptr %retval, align 4, !dbg !5980
  ret i32 %30, !dbg !5980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_release_driver_internal(ptr noundef %dev, ptr noundef %drv, ptr noundef %parent) #0 align 16 !dbg !5981 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5985, metadata !DIExpression()), !dbg !5988
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5986, metadata !DIExpression()), !dbg !5989
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5987, metadata !DIExpression()), !dbg !5990
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5991
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !5992
  call void @__device_driver_lock(ptr noundef %0, ptr noundef %1) #9, !dbg !5993
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !5994
  %tobool = icmp ne ptr %2, null, !dbg !5994
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5996

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !5997
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5998
  %driver = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6, !dbg !5999
  %5 = load ptr, ptr %driver, align 8, !dbg !5999
  %cmp = icmp eq ptr %3, %5, !dbg !6000
  br i1 %cmp, label %if.then, label %if.end, !dbg !6001

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6002
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !6003
  call void @__device_release_driver(ptr noundef %6, ptr noundef %7) #9, !dbg !6004
  br label %if.end, !dbg !6004

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6005
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !6006
  call void @__device_driver_unlock(ptr noundef %8, ptr noundef %9) #9, !dbg !6007
  ret void, !dbg !6008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__device_release_driver(ptr noundef %dev, ptr noundef %parent) #0 align 16 !dbg !6009 {
entry:
  %dev.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6011, metadata !DIExpression()), !dbg !6014
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6012, metadata !DIExpression()), !dbg !6015
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #10, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !6013, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6018
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !6019
  %1 = load ptr, ptr %driver, align 8, !dbg !6019
  store ptr %1, ptr %drv, align 8, !dbg !6020
  %2 = load ptr, ptr %drv, align 8, !dbg !6021
  %tobool = icmp ne ptr %2, null, !dbg !6021
  br i1 %tobool, label %if.then, label %if.end14, !dbg !6023

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6024
  %call = call i32 @pm_runtime_get_sync(ptr noundef %3) #9, !dbg !6026
  br label %while.cond, !dbg !6027

while.cond:                                       ; preds = %if.end, %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6028
  %call1 = call zeroext i1 @device_links_busy(ptr noundef %4) #9, !dbg !6029
  br i1 %call1, label %while.body, label %while.end, !dbg !6027

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6030
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !6032
  call void @__device_driver_unlock(ptr noundef %5, ptr noundef %6) #9, !dbg !6033
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6034
  call void @device_links_unbind_consumers(ptr noundef %7) #9, !dbg !6035
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !6036
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !6037
  call void @__device_driver_lock(ptr noundef %8, ptr noundef %9) #9, !dbg !6038
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6039
  %driver2 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 6, !dbg !6041
  %11 = load ptr, ptr %driver2, align 8, !dbg !6041
  %12 = load ptr, ptr %drv, align 8, !dbg !6042
  %cmp = icmp ne ptr %11, %12, !dbg !6043
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6044

if.then3:                                         ; preds = %while.body
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !6045
  %call4 = call i32 @pm_runtime_put(ptr noundef %13) #9, !dbg !6047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6048

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !6027, !llvm.loop !6049

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6052
  call void @driver_sysfs_remove(ptr noundef %14) #9, !dbg !6053
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6054
  call void @bus_notify(ptr noundef %15, i32 noundef 5) #9, !dbg !6055
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !6056
  %call5 = call i32 @pm_runtime_put_sync(ptr noundef %16) #9, !dbg !6057
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !6058
  call void @device_remove(ptr noundef %17) #9, !dbg !6059
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !6060
  %bus = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 5, !dbg !6062
  %19 = load ptr, ptr %bus, align 8, !dbg !6062
  %tobool6 = icmp ne ptr %19, null, !dbg !6060
  br i1 %tobool6, label %land.lhs.true, label %if.end12, !dbg !6063

land.lhs.true:                                    ; preds = %while.end
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !6064
  %bus7 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 5, !dbg !6065
  %21 = load ptr, ptr %bus7, align 8, !dbg !6065
  %dma_cleanup = getelementptr inbounds %struct.bus_type, ptr %21, i32 0, i32 17, !dbg !6066
  %22 = load ptr, ptr %dma_cleanup, align 8, !dbg !6066
  %tobool8 = icmp ne ptr %22, null, !dbg !6064
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !6067

if.then9:                                         ; preds = %land.lhs.true
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !6068
  %bus10 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 5, !dbg !6069
  %24 = load ptr, ptr %bus10, align 8, !dbg !6069
  %dma_cleanup11 = getelementptr inbounds %struct.bus_type, ptr %24, i32 0, i32 17, !dbg !6070
  %25 = load ptr, ptr %dma_cleanup11, align 8, !dbg !6070
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !6071
  call void %25(ptr noundef %26) #9, !dbg !6068
  br label %if.end12, !dbg !6068

if.end12:                                         ; preds = %if.then9, %land.lhs.true, %while.end
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !6072
  call void @device_unbind_cleanup(ptr noundef %27) #9, !dbg !6073
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !6074
  call void @device_links_driver_cleanup(ptr noundef %28) #9, !dbg !6075
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !6076
  %p = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 2, !dbg !6077
  %30 = load ptr, ptr %p, align 8, !dbg !6077
  %knode_driver = getelementptr inbounds %struct.device_private, ptr %30, i32 0, i32 2, !dbg !6078
  call void @klist_remove(ptr noundef %knode_driver) #9, !dbg !6079
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !6080
  call void @device_pm_check_callbacks(ptr noundef %31) #9, !dbg !6081
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !6082
  call void @bus_notify(ptr noundef %32, i32 noundef 6) #9, !dbg !6083
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !6084
  %kobj = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 0, !dbg !6085
  %call13 = call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 7) #9, !dbg !6086
  br label %if.end14, !dbg !6087

if.end14:                                         ; preds = %if.end12, %entry
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6088
  br label %cleanup, !dbg !6088

cleanup:                                          ; preds = %if.end14, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #10, !dbg !6088
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6088

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_release_driver(ptr noundef %dev) #0 align 16 !dbg !6089 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6093
  call void @device_release_driver_internal(ptr noundef %0, ptr noundef null, ptr noundef null) #9, !dbg !6094
  ret void, !dbg !6095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_driver_detach(ptr noundef %dev) #0 align 16 !dbg !6096 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6100
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6101
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1, !dbg !6102
  %2 = load ptr, ptr %parent, align 8, !dbg !6102
  call void @device_release_driver_internal(ptr noundef %0, ptr noundef null, ptr noundef %2) #9, !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @driver_detach(ptr noundef %drv) #0 align 16 !dbg !6105 {
entry:
  %drv.addr = alloca ptr, align 8
  %dev_prv = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6109, metadata !DIExpression()), !dbg !6117
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_prv) #10, !dbg !6118
  call void @llvm.dbg.declare(metadata ptr %dev_prv, metadata !6110, metadata !DIExpression()), !dbg !6119
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !6120
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6111, metadata !DIExpression()), !dbg !6121
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !6122
  %call = call zeroext i1 @driver_allows_async_probing(ptr noundef %0) #9, !dbg !6124
  br i1 %call, label %if.then, label %if.end, !dbg !6125

if.then:                                          ; preds = %entry
  call void @async_synchronize_full() #9, !dbg !6126
  br label %if.end, !dbg !6126

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond, !dbg !6127

for.cond:                                         ; preds = %if.end8, %if.end
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !6128
  %p = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18, !dbg !6129
  %2 = load ptr, ptr %p, align 8, !dbg !6129
  %klist_devices = getelementptr inbounds %struct.driver_private, ptr %2, i32 0, i32 1, !dbg !6130
  %k_lock = getelementptr inbounds %struct.klist, ptr %klist_devices, i32 0, i32 0, !dbg !6131
  call void @spin_lock(ptr noundef %k_lock) #9, !dbg !6132
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !6133
  %p1 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 18, !dbg !6135
  %4 = load ptr, ptr %p1, align 8, !dbg !6135
  %klist_devices2 = getelementptr inbounds %struct.driver_private, ptr %4, i32 0, i32 1, !dbg !6136
  %k_list = getelementptr inbounds %struct.klist, ptr %klist_devices2, i32 0, i32 1, !dbg !6137
  %call3 = call i32 @list_empty(ptr noundef %k_list) #9, !dbg !6138
  %tobool = icmp ne i32 %call3, 0, !dbg !6138
  br i1 %tobool, label %if.then4, label %if.end8, !dbg !6139

if.then4:                                         ; preds = %for.cond
  %5 = load ptr, ptr %drv.addr, align 8, !dbg !6140
  %p5 = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 18, !dbg !6142
  %6 = load ptr, ptr %p5, align 8, !dbg !6142
  %klist_devices6 = getelementptr inbounds %struct.driver_private, ptr %6, i32 0, i32 1, !dbg !6143
  %k_lock7 = getelementptr inbounds %struct.klist, ptr %klist_devices6, i32 0, i32 0, !dbg !6144
  call void @spin_unlock(ptr noundef %k_lock7) #9, !dbg !6145
  br label %for.end, !dbg !6146

if.end8:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6112, metadata !DIExpression()), !dbg !6147
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !6147
  %p9 = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 18, !dbg !6147
  %8 = load ptr, ptr %p9, align 8, !dbg !6147
  %klist_devices10 = getelementptr inbounds %struct.driver_private, ptr %8, i32 0, i32 1, !dbg !6147
  %k_list11 = getelementptr inbounds %struct.klist, ptr %klist_devices10, i32 0, i32 1, !dbg !6147
  %prev = getelementptr inbounds %struct.list_head, ptr %k_list11, i32 0, i32 1, !dbg !6147
  %9 = load ptr, ptr %prev, align 8, !dbg !6147
  store ptr %9, ptr %__mptr, align 8, !dbg !6147
  %10 = load ptr, ptr %__mptr, align 8, !dbg !6147
  %add.ptr = getelementptr i8, ptr %10, i64 -80, !dbg !6147
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6147
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6148
  %11 = load ptr, ptr %tmp, align 8, !dbg !6147
  store ptr %11, ptr %dev_prv, align 8, !dbg !6149
  %12 = load ptr, ptr %dev_prv, align 8, !dbg !6150
  %device = getelementptr inbounds %struct.device_private, ptr %12, i32 0, i32 8, !dbg !6151
  %13 = load ptr, ptr %device, align 8, !dbg !6151
  store ptr %13, ptr %dev, align 8, !dbg !6152
  %14 = load ptr, ptr %dev, align 8, !dbg !6153
  %call12 = call ptr @get_device(ptr noundef %14) #9, !dbg !6154
  %15 = load ptr, ptr %drv.addr, align 8, !dbg !6155
  %p13 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 18, !dbg !6156
  %16 = load ptr, ptr %p13, align 8, !dbg !6156
  %klist_devices14 = getelementptr inbounds %struct.driver_private, ptr %16, i32 0, i32 1, !dbg !6157
  %k_lock15 = getelementptr inbounds %struct.klist, ptr %klist_devices14, i32 0, i32 0, !dbg !6158
  call void @spin_unlock(ptr noundef %k_lock15) #9, !dbg !6159
  %17 = load ptr, ptr %dev, align 8, !dbg !6160
  %18 = load ptr, ptr %drv.addr, align 8, !dbg !6161
  %19 = load ptr, ptr %dev, align 8, !dbg !6162
  %parent = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1, !dbg !6163
  %20 = load ptr, ptr %parent, align 8, !dbg !6163
  call void @device_release_driver_internal(ptr noundef %17, ptr noundef %18, ptr noundef %20) #9, !dbg !6164
  %21 = load ptr, ptr %dev, align 8, !dbg !6165
  call void @put_device(ptr noundef %21) #9, !dbg !6166
  br label %for.cond, !dbg !6167, !llvm.loop !6168

for.end:                                          ; preds = %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !6171
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_prv) #10, !dbg !6171
  ret void, !dbg !6171
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @driver_allows_async_probing(ptr noundef %drv) #0 align 16 !dbg !6172 {
entry:
  %retval = alloca i1, align 1
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !6178
  %probe_type = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 5, !dbg !6179
  %1 = load i32, ptr %probe_type, align 4, !dbg !6179
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !6180

sw.bb:                                            ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6181
  br label %return, !dbg !6181

sw.bb1:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6183
  br label %return, !dbg !6183

sw.default:                                       ; preds = %entry
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !6184
  %name = getelementptr inbounds %struct.device_driver, ptr %2, i32 0, i32 0, !dbg !6186
  %3 = load ptr, ptr %name, align 8, !dbg !6186
  %call = call zeroext i1 @cmdline_requested_async_probing(ptr noundef %3) #9, !dbg !6187
  br i1 %call, label %if.then, label %if.end, !dbg !6188

if.then:                                          ; preds = %sw.default
  store i1 true, ptr %retval, align 1, !dbg !6189
  br label %return, !dbg !6189

if.end:                                           ; preds = %sw.default
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !6190
  %owner = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 2, !dbg !6192
  %5 = load ptr, ptr %owner, align 8, !dbg !6192
  %call2 = call zeroext i1 @module_requested_async_probing(ptr noundef %5) #9, !dbg !6193
  br i1 %call2, label %if.then3, label %if.end4, !dbg !6194

if.then3:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6195
  br label %return, !dbg !6195

if.end4:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6196
  br label %return, !dbg !6196

return:                                           ; preds = %if.end4, %if.then3, %if.then, %sw.bb1, %sw.bb
  %6 = load i1, ptr %retval, align 1, !dbg !6197
  ret i1 %6, !dbg !6197
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !6198 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6205
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6205
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !6205
  ret void, !dbg !6206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !6207 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6211
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6211
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !6211
  ret void, !dbg !6212
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6213 dso_local ptr @get_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6216 dso_local void @put_device(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6217 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6221, metadata !DIExpression()), !dbg !6224
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6222, metadata !DIExpression()), !dbg !6225
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6223, metadata !DIExpression()), !dbg !6226
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6227
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6229
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6230
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !6231
  br i1 %call, label %if.end, label %if.then, !dbg !6232

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6233

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6234
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6235
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6236
  store ptr %3, ptr %prev1, align 8, !dbg !6237
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6238
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6239
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6240
  store ptr %5, ptr %next2, align 8, !dbg !6241
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6242
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6243
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6244
  store ptr %7, ptr %prev3, align 8, !dbg !6245
  br label %do.body, !dbg !6246

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6247

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6249

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6247

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6251
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6251
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6251
  store volatile ptr %9, ptr %next6, align 8, !dbg !6251
  br label %do.end7, !dbg !6251

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6247

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6254 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6258, metadata !DIExpression()), !dbg !6261
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6259, metadata !DIExpression()), !dbg !6262
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6260, metadata !DIExpression()), !dbg !6263
  ret i1 true, !dbg !6264
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !6265 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6269
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !6271
  br i1 %call, label %if.end, label %if.then, !dbg !6272

if.then:                                          ; preds = %entry
  br label %return, !dbg !6273

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6274
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6275
  %2 = load ptr, ptr %prev, align 8, !dbg !6275
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6276
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6277
  %4 = load ptr, ptr %next, align 8, !dbg !6277
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !6278
  br label %return, !dbg !6279

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !6280 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  br label %do.body, !dbg !6284

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6285

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6287

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6285

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6289
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6289
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6289
  store volatile ptr %0, ptr %next, align 8, !dbg !6289
  br label %do.end3, !dbg !6289

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6285

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6291

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6292

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6294

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6292

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6296
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6296
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6296
  store volatile ptr %2, ptr %prev, align 8, !dbg !6296
  br label %do.end9, !dbg !6296

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6292

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6298
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !6299 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  ret i1 true, !dbg !6305
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6306 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6312
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6313
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6314
  store ptr %0, ptr %prev1, align 8, !dbg !6315
  br label %do.body, !dbg !6316

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6317

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6319

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6317

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6321
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6321
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6321
  store volatile ptr %2, ptr %next4, align 8, !dbg !6321
  br label %do.end5, !dbg !6321

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6317

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6323
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6324 dso_local void @kfree(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6328 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6336, metadata !DIExpression()), !dbg !6338
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6337, metadata !DIExpression()), !dbg !6339
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6340
  %1 = load i64, ptr %size.addr, align 8, !dbg !6341
  %conv = trunc i64 %1 to i32, !dbg !6341
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !6342
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6343
  %3 = load i64, ptr %size.addr, align 8, !dbg !6343
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !6343
  ret void, !dbg !6344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6345 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6348, metadata !DIExpression()), !dbg !6349
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6350
  call void @arch_atomic_inc(ptr noundef %0) #9, !dbg !6351
  ret void, !dbg !6352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6353 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6358, metadata !DIExpression()), !dbg !6360
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6359, metadata !DIExpression()), !dbg !6361
  ret i1 true, !dbg !6362
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6363 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6368, metadata !DIExpression()), !dbg !6371
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6369, metadata !DIExpression()), !dbg !6372
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6370, metadata !DIExpression()), !dbg !6373
  ret void, !dbg !6374
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6375 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6378, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6380
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6381
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !6382, !srcloc !6383
  ret void, !dbg !6384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6385 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6389, metadata !DIExpression()), !dbg !6394
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6390, metadata !DIExpression()), !dbg !6395
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6391, metadata !DIExpression()), !dbg !6396
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #10, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %first, metadata !6392, metadata !DIExpression()), !dbg !6398
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6399
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6400
  %1 = load ptr, ptr %next1, align 8, !dbg !6400
  store ptr %1, ptr %first, align 8, !dbg !6398
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #10, !dbg !6401
  call void @llvm.dbg.declare(metadata ptr %last, metadata !6393, metadata !DIExpression()), !dbg !6402
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6403
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6404
  %3 = load ptr, ptr %prev2, align 8, !dbg !6404
  store ptr %3, ptr %last, align 8, !dbg !6402
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !6405
  %5 = load ptr, ptr %first, align 8, !dbg !6406
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !6407
  store ptr %4, ptr %prev3, align 8, !dbg !6408
  %6 = load ptr, ptr %first, align 8, !dbg !6409
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6410
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !6411
  store ptr %6, ptr %next4, align 8, !dbg !6412
  %8 = load ptr, ptr %next.addr, align 8, !dbg !6413
  %9 = load ptr, ptr %last, align 8, !dbg !6414
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !6415
  store ptr %8, ptr %next5, align 8, !dbg !6416
  %10 = load ptr, ptr %last, align 8, !dbg !6417
  %11 = load ptr, ptr %next.addr, align 8, !dbg !6418
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !6419
  store ptr %10, ptr %prev6, align 8, !dbg !6420
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #10, !dbg !6421
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #10, !dbg !6421
  ret void, !dbg !6421
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6422 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @deferred_probe_work_func(ptr noundef %work) #0 align 16 !dbg !6425 {
entry:
  %work.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %private = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6427, metadata !DIExpression()), !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6428, metadata !DIExpression()), !dbg !6435
  call void @llvm.lifetime.start.p0(i64 8, ptr %private) #10, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %private, metadata !6429, metadata !DIExpression()), !dbg !6437
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !6438
  br label %while.cond, !dbg !6439

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @list_empty(ptr noundef @deferred_probe_active_list) #9, !dbg !6440
  %tobool = icmp ne i32 %call, 0, !dbg !6441
  %lnot = xor i1 %tobool, true, !dbg !6441
  br i1 %lnot, label %while.body, label %while.end, !dbg !6439

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6442
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6430, metadata !DIExpression()), !dbg !6442
  %0 = load ptr, ptr @deferred_probe_active_list, align 8, !dbg !6442
  store ptr %0, ptr %__mptr, align 8, !dbg !6442
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6442
  %add.ptr = getelementptr i8, ptr %1, i64 -168, !dbg !6442
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6443
  %2 = load ptr, ptr %tmp, align 8, !dbg !6442
  store ptr %2, ptr %private, align 8, !dbg !6444
  %3 = load ptr, ptr %private, align 8, !dbg !6445
  %device = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 8, !dbg !6446
  %4 = load ptr, ptr %device, align 8, !dbg !6446
  store ptr %4, ptr %dev, align 8, !dbg !6447
  %5 = load ptr, ptr %private, align 8, !dbg !6448
  %deferred_probe = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 5, !dbg !6449
  call void @list_del_init(ptr noundef %deferred_probe) #9, !dbg !6450
  %6 = load ptr, ptr %dev, align 8, !dbg !6451
  %call1 = call ptr @get_device(ptr noundef %6) #9, !dbg !6452
  %7 = load ptr, ptr %dev, align 8, !dbg !6453
  call void @__device_set_deferred_probe_reason(ptr noundef %7, ptr noundef null) #9, !dbg !6454
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !6455
  %8 = load ptr, ptr %dev, align 8, !dbg !6456
  call void @device_pm_move_to_tail(ptr noundef %8) #9, !dbg !6457
  %9 = load ptr, ptr %dev, align 8, !dbg !6458
  call void @bus_probe_device(ptr noundef %9) #9, !dbg !6459
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !6460
  %10 = load ptr, ptr %dev, align 8, !dbg !6461
  call void @put_device(ptr noundef %10) #9, !dbg !6462
  br label %while.cond, !dbg !6439, !llvm.loop !6463

while.end:                                        ; preds = %while.cond
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !6465
  call void @llvm.lifetime.end.p0(i64 8, ptr %private) #10, !dbg !6466
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !6466
  ret void, !dbg !6466
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6467 dso_local void @device_pm_move_to_tail(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6468 dso_local void @bus_probe_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6469 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @deferred_probe_timeout_work_func(ptr noundef %work) #0 align 16 !dbg !6473 {
entry:
  %work.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6475, metadata !DIExpression()), !dbg !6483
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !6484
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6476, metadata !DIExpression()), !dbg !6485
  call void @fw_devlink_drivers_done() #9, !dbg !6486
  store i32 0, ptr @driver_deferred_probe_timeout, align 4, !dbg !6487
  call void @driver_deferred_probe_trigger() #9, !dbg !6488
  %call = call zeroext i1 @flush_work(ptr noundef @deferred_probe_work) #9, !dbg !6489
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !6490
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6491
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6477, metadata !DIExpression()), !dbg !6491
  %0 = load ptr, ptr @deferred_probe_pending_list, align 8, !dbg !6491
  store ptr %0, ptr %__mptr, align 8, !dbg !6491
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6491
  %add.ptr = getelementptr i8, ptr %1, i64 -168, !dbg !6491
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6491
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6492
  %2 = load ptr, ptr %tmp, align 8, !dbg !6491
  store ptr %2, ptr %p, align 8, !dbg !6492
  br label %for.cond, !dbg !6492

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !6493
  %deferred_probe = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 5, !dbg !6493
  %cmp = icmp eq ptr %deferred_probe, @deferred_probe_pending_list, !dbg !6493
  %lnot = xor i1 %cmp, true, !dbg !6493
  br i1 %lnot, label %for.body, label %for.end, !dbg !6492

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !6494

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !6496

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6496

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %p, align 8, !dbg !6494
  %device = getelementptr inbounds %struct.device_private, ptr %4, i32 0, i32 8, !dbg !6494
  %5 = load ptr, ptr %device, align 8, !dbg !6494
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef @.str.3) #11, !dbg !6494
  br label %for.inc, !dbg !6498

for.inc:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #10, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6480, metadata !DIExpression()), !dbg !6499
  %6 = load ptr, ptr %p, align 8, !dbg !6499
  %deferred_probe2 = getelementptr inbounds %struct.device_private, ptr %6, i32 0, i32 5, !dbg !6499
  %next = getelementptr inbounds %struct.list_head, ptr %deferred_probe2, i32 0, i32 0, !dbg !6499
  %7 = load ptr, ptr %next, align 8, !dbg !6499
  store ptr %7, ptr %__mptr1, align 8, !dbg !6499
  %8 = load ptr, ptr %__mptr1, align 8, !dbg !6499
  %add.ptr4 = getelementptr i8, ptr %8, i64 -168, !dbg !6499
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !6499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #10, !dbg !6493
  %9 = load ptr, ptr %tmp3, align 8, !dbg !6499
  store ptr %9, ptr %p, align 8, !dbg !6493
  br label %for.cond, !dbg !6493, !llvm.loop !6500

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !6502
  call void @fw_devlink_probing_done() #9, !dbg !6503
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !6504
  ret void, !dbg !6504
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6505 dso_local void @fw_devlink_drivers_done() #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6506 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6507 dso_local void @fw_devlink_probing_done() #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #3 align 16 !dbg !6508 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6512, metadata !DIExpression()), !dbg !6515
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !6513, metadata !DIExpression()), !dbg !6516
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !6514, metadata !DIExpression()), !dbg !6517
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6518
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !6519
  %2 = load i64, ptr %delay.addr, align 8, !dbg !6520
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #9, !dbg !6521
  ret i1 %call, !dbg !6522
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6523 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6526 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @deferred_devs_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6529 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6531, metadata !DIExpression()), !dbg !6533
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6532, metadata !DIExpression()), !dbg !6533
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6533
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6533
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !6533
  %2 = load ptr, ptr %i_private, align 8, !dbg !6533
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @deferred_devs_show, ptr noundef %2) #9, !dbg !6533
  ret i32 %call, !dbg !6533
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6534 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @deferred_devs_show(ptr noundef %s, ptr noundef %data) #0 align 16 !dbg !6537 {
entry:
  %s.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %curr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6539, metadata !DIExpression()), !dbg !6548
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6540, metadata !DIExpression()), !dbg !6549
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr) #10, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !6541, metadata !DIExpression()), !dbg !6551
  call void @mutex_lock(ptr noundef @deferred_probe_mutex) #9, !dbg !6552
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6542, metadata !DIExpression()), !dbg !6553
  %0 = load ptr, ptr @deferred_probe_pending_list, align 8, !dbg !6553
  store ptr %0, ptr %__mptr, align 8, !dbg !6553
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6553
  %add.ptr = getelementptr i8, ptr %1, i64 -168, !dbg !6553
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !6554
  %2 = load ptr, ptr %tmp, align 8, !dbg !6553
  store ptr %2, ptr %curr, align 8, !dbg !6554
  br label %for.cond, !dbg !6554

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %curr, align 8, !dbg !6555
  %deferred_probe = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 5, !dbg !6555
  %cmp = icmp eq ptr %deferred_probe, @deferred_probe_pending_list, !dbg !6555
  %lnot = xor i1 %cmp, true, !dbg !6555
  br i1 %lnot, label %for.body, label %for.end, !dbg !6554

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s.addr, align 8, !dbg !6556
  %5 = load ptr, ptr %curr, align 8, !dbg !6557
  %device = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 8, !dbg !6558
  %6 = load ptr, ptr %device, align 8, !dbg !6558
  %call = call ptr @dev_name(ptr noundef %6) #9, !dbg !6559
  %7 = load ptr, ptr %curr, align 8, !dbg !6560
  %device1 = getelementptr inbounds %struct.device_private, ptr %7, i32 0, i32 8, !dbg !6561
  %8 = load ptr, ptr %device1, align 8, !dbg !6561
  %p = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !6562
  %9 = load ptr, ptr %p, align 8, !dbg !6562
  %deferred_probe_reason = getelementptr inbounds %struct.device_private, ptr %9, i32 0, i32 7, !dbg !6563
  %10 = load ptr, ptr %deferred_probe_reason, align 8, !dbg !6563
  %tobool = icmp ne ptr %10, null, !dbg !6560
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6560

cond.true:                                        ; preds = %for.body
  br label %cond.end, !dbg !6560

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !6560

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ @.str.5, %cond.false ], !dbg !6560
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef @.str.4, ptr noundef %call, ptr noundef %cond) #9, !dbg !6564
  br label %for.inc, !dbg !6564

for.inc:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #10, !dbg !6565
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6545, metadata !DIExpression()), !dbg !6565
  %11 = load ptr, ptr %curr, align 8, !dbg !6565
  %deferred_probe3 = getelementptr inbounds %struct.device_private, ptr %11, i32 0, i32 5, !dbg !6565
  %next = getelementptr inbounds %struct.list_head, ptr %deferred_probe3, i32 0, i32 0, !dbg !6565
  %12 = load ptr, ptr %next, align 8, !dbg !6565
  store ptr %12, ptr %__mptr2, align 8, !dbg !6565
  %13 = load ptr, ptr %__mptr2, align 8, !dbg !6565
  %add.ptr5 = getelementptr i8, ptr %13, i64 -168, !dbg !6565
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !6565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #10, !dbg !6555
  %14 = load ptr, ptr %tmp4, align 8, !dbg !6565
  store ptr %14, ptr %curr, align 8, !dbg !6555
  br label %for.cond, !dbg !6555, !llvm.loop !6566

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @deferred_probe_mutex) #9, !dbg !6568
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr) #10, !dbg !6569
  ret i32 0, !dbg !6570
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6571 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !6574 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6576, metadata !DIExpression()), !dbg !6577
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6578
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6580
  %1 = load ptr, ptr %init_name, align 8, !dbg !6580
  %tobool = icmp ne ptr %1, null, !dbg !6578
  br i1 %tobool, label %if.then, label %if.end, !dbg !6581

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6582
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6583
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6583
  store ptr %3, ptr %retval, align 8, !dbg !6584
  br label %return, !dbg !6584

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6585
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6586
  %call = call ptr @kobject_name(ptr noundef %kobj) #9, !dbg !6587
  store ptr %call, ptr %retval, align 8, !dbg !6588
  br label %return, !dbg !6588

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6589
  ret ptr %5, !dbg !6589
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !6590 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6592, metadata !DIExpression()), !dbg !6593
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6594
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6595
  %1 = load ptr, ptr %name, align 8, !dbg !6595
  ret ptr %1, !dbg !6596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6597 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6600 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6603 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6606 dso_local void @klist_add_tail(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6610 dso_local void @device_links_driver_bound(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6611 dso_local void @device_pm_check_callbacks(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6612 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6615 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6617, metadata !DIExpression()), !dbg !6619
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6618, metadata !DIExpression()), !dbg !6620
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6621
  %1 = load i64, ptr %size.addr, align 8, !dbg !6622
  %conv = trunc i64 %1 to i32, !dbg !6622
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !6623
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6624
  %3 = load i64, ptr %size.addr, align 8, !dbg !6624
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !6624
  ret void, !dbg !6625
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !6626 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6628, metadata !DIExpression()), !dbg !6629
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6630
  %call = call i32 @arch_atomic_read(ptr noundef %0) #9, !dbg !6631
  ret i32 %call, !dbg !6632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6633 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6635, metadata !DIExpression()), !dbg !6637
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6636, metadata !DIExpression()), !dbg !6638
  ret i1 true, !dbg !6639
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !6640 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6642, metadata !DIExpression()), !dbg !6643
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6644
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6644
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6644
  ret i32 %1, !dbg !6645
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6646 dso_local i64 @strlen(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6650 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6653 dso_local zeroext i1 @parse_option_str(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_lock(ptr noundef %dev) #3 align 16 !dbg !6656 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6658, metadata !DIExpression()), !dbg !6659
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6660
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !6661
  call void @mutex_lock(ptr noundef %mutex) #9, !dbg !6662
  ret void, !dbg !6663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_runtime_get_sync(ptr noundef %dev) #3 align 16 !dbg !6664 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6667, metadata !DIExpression()), !dbg !6668
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6669
  %call = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9, !dbg !6670
  ret i32 %call, !dbg !6671
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6672 dso_local i32 @bus_for_each_drv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__device_attach_driver(ptr noundef %drv, ptr noundef %_data) #0 align 16 !dbg !6678 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %_data.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %async_allowed = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6680, metadata !DIExpression()), !dbg !6687
  store ptr %_data, ptr %_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_data.addr, metadata !6681, metadata !DIExpression()), !dbg !6688
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !6689
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6682, metadata !DIExpression()), !dbg !6690
  %0 = load ptr, ptr %_data.addr, align 8, !dbg !6691
  store ptr %0, ptr %data, align 8, !dbg !6690
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !6692
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6684, metadata !DIExpression()), !dbg !6693
  %1 = load ptr, ptr %data, align 8, !dbg !6694
  %dev1 = getelementptr inbounds %struct.device_attach_data, ptr %1, i32 0, i32 0, !dbg !6695
  %2 = load ptr, ptr %dev1, align 8, !dbg !6695
  store ptr %2, ptr %dev, align 8, !dbg !6693
  call void @llvm.lifetime.start.p0(i64 1, ptr %async_allowed) #10, !dbg !6696
  call void @llvm.dbg.declare(metadata ptr %async_allowed, metadata !6685, metadata !DIExpression()), !dbg !6697
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6698
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6686, metadata !DIExpression()), !dbg !6699
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !6700
  %4 = load ptr, ptr %dev, align 8, !dbg !6701
  %call = call i32 @driver_match_device(ptr noundef %3, ptr noundef %4) #9, !dbg !6702
  store i32 %call, ptr %ret, align 4, !dbg !6703
  %5 = load i32, ptr %ret, align 4, !dbg !6704
  %cmp = icmp eq i32 %5, 0, !dbg !6706
  br i1 %cmp, label %if.then, label %if.else, !dbg !6707

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6708

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %ret, align 4, !dbg !6710
  %cmp2 = icmp eq i32 %6, -517, !dbg !6712
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !6713

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %dev, align 8, !dbg !6714
  %can_match = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 37, !dbg !6716
  %bf.load = load i8, ptr %can_match, align 4, !dbg !6717
  %bf.clear = and i8 %bf.load, -17, !dbg !6717
  %bf.set = or i8 %bf.clear, 16, !dbg !6717
  store i8 %bf.set, ptr %can_match, align 4, !dbg !6717
  %8 = load ptr, ptr %dev, align 8, !dbg !6718
  call void @driver_deferred_probe_add(ptr noundef %8) #9, !dbg !6719
  %9 = load i32, ptr %ret, align 4, !dbg !6720
  store i32 %9, ptr %retval, align 4, !dbg !6721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6721

if.else4:                                         ; preds = %if.else
  %10 = load i32, ptr %ret, align 4, !dbg !6722
  %cmp5 = icmp slt i32 %10, 0, !dbg !6724
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !6725

if.then6:                                         ; preds = %if.else4
  %11 = load i32, ptr %ret, align 4, !dbg !6726
  store i32 %11, ptr %retval, align 4, !dbg !6728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6728

if.end:                                           ; preds = %if.else4
  br label %if.end7

if.end7:                                          ; preds = %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  %12 = load ptr, ptr %drv.addr, align 8, !dbg !6729
  %call9 = call zeroext i1 @driver_allows_async_probing(ptr noundef %12) #9, !dbg !6730
  %frombool = zext i1 %call9 to i8, !dbg !6731
  store i8 %frombool, ptr %async_allowed, align 1, !dbg !6731
  %13 = load i8, ptr %async_allowed, align 1, !dbg !6732, !range !5157, !noundef !1463
  %tobool = trunc i8 %13 to i1, !dbg !6732
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !6734

if.then10:                                        ; preds = %if.end8
  %14 = load ptr, ptr %data, align 8, !dbg !6735
  %have_async = getelementptr inbounds %struct.device_attach_data, ptr %14, i32 0, i32 3, !dbg !6736
  store i8 1, ptr %have_async, align 2, !dbg !6737
  br label %if.end11, !dbg !6735

if.end11:                                         ; preds = %if.then10, %if.end8
  %15 = load ptr, ptr %data, align 8, !dbg !6738
  %check_async = getelementptr inbounds %struct.device_attach_data, ptr %15, i32 0, i32 1, !dbg !6740
  %16 = load i8, ptr %check_async, align 8, !dbg !6740, !range !5157, !noundef !1463
  %tobool12 = trunc i8 %16 to i1, !dbg !6740
  br i1 %tobool12, label %land.lhs.true, label %if.end19, !dbg !6741

land.lhs.true:                                    ; preds = %if.end11
  %17 = load i8, ptr %async_allowed, align 1, !dbg !6742, !range !5157, !noundef !1463
  %tobool13 = trunc i8 %17 to i1, !dbg !6742
  %conv = zext i1 %tobool13 to i32, !dbg !6742
  %18 = load ptr, ptr %data, align 8, !dbg !6743
  %want_async = getelementptr inbounds %struct.device_attach_data, ptr %18, i32 0, i32 2, !dbg !6744
  %19 = load i8, ptr %want_async, align 1, !dbg !6744, !range !5157, !noundef !1463
  %tobool14 = trunc i8 %19 to i1, !dbg !6744
  %conv15 = zext i1 %tobool14 to i32, !dbg !6743
  %cmp16 = icmp ne i32 %conv, %conv15, !dbg !6745
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !6746

if.then18:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6747

if.end19:                                         ; preds = %land.lhs.true, %if.end11
  %20 = load ptr, ptr %drv.addr, align 8, !dbg !6748
  %21 = load ptr, ptr %dev, align 8, !dbg !6749
  %call20 = call i32 @driver_probe_device(ptr noundef %20, ptr noundef %21) #9, !dbg !6750
  store i32 %call20, ptr %ret, align 4, !dbg !6751
  %22 = load i32, ptr %ret, align 4, !dbg !6752
  %cmp21 = icmp slt i32 %22, 0, !dbg !6754
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !6755

if.then23:                                        ; preds = %if.end19
  %23 = load i32, ptr %ret, align 4, !dbg !6756
  store i32 %23, ptr %retval, align 4, !dbg !6757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6757

if.end24:                                         ; preds = %if.end19
  %24 = load i32, ptr %ret, align 4, !dbg !6758
  %cmp25 = icmp eq i32 %24, 0, !dbg !6759
  %conv26 = zext i1 %cmp25 to i32, !dbg !6759
  store i32 %conv26, ptr %retval, align 4, !dbg !6760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6760

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then18, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6761
  call void @llvm.lifetime.end.p0(i64 1, ptr %async_allowed) #10, !dbg !6761
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !6761
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !6761
  %25 = load i32, ptr %retval, align 4, !dbg !6761
  ret i32 %25, !dbg !6761
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_request_idle(ptr noundef %dev) #3 align 16 !dbg !6762 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6764, metadata !DIExpression()), !dbg !6765
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6766
  %call = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 1) #9, !dbg !6767
  ret i32 %call, !dbg !6768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_runtime_put(ptr noundef %dev) #3 align 16 !dbg !6769 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6771, metadata !DIExpression()), !dbg !6772
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6773
  %call = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #9, !dbg !6774
  ret i32 %call, !dbg !6775
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_unlock(ptr noundef %dev) #3 align 16 !dbg !6776 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6778, metadata !DIExpression()), !dbg !6779
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6780
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !6781
  call void @mutex_unlock(ptr noundef %mutex) #9, !dbg !6782
  ret void, !dbg !6783
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @async_schedule_dev(ptr noundef %func, ptr noundef %dev) #3 align 16 !dbg !6784 {
entry:
  %func.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6793, metadata !DIExpression()), !dbg !6795
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6794, metadata !DIExpression()), !dbg !6796
  %0 = load ptr, ptr %func.addr, align 8, !dbg !6797
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6798
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6799
  %call = call i32 @dev_to_node(ptr noundef %2) #9, !dbg !6800
  %call1 = call i64 @async_schedule_node(ptr noundef %0, ptr noundef %1, i32 noundef %call) #9, !dbg !6801
  ret i64 %call1, !dbg !6802
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__device_attach_async_helper(ptr noundef %_dev, i64 noundef %cookie) #0 align 16 !dbg !6803 {
entry:
  %_dev.addr = alloca ptr, align 8
  %cookie.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %data = alloca %struct.device_attach_data, align 8
  store ptr %_dev, ptr %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dev.addr, metadata !6805, metadata !DIExpression()), !dbg !6810
  store i64 %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6806, metadata !DIExpression()), !dbg !6811
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !6812
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6807, metadata !DIExpression()), !dbg !6813
  %0 = load ptr, ptr %_dev.addr, align 8, !dbg !6814
  store ptr %0, ptr %dev, align 8, !dbg !6813
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #10, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6808, metadata !DIExpression()), !dbg !6816
  %dev1 = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 0, !dbg !6817
  %1 = load ptr, ptr %dev, align 8, !dbg !6818
  store ptr %1, ptr %dev1, align 8, !dbg !6817
  %check_async = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 1, !dbg !6817
  store i8 1, ptr %check_async, align 8, !dbg !6817
  %want_async = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 2, !dbg !6817
  store i8 1, ptr %want_async, align 1, !dbg !6817
  %have_async = getelementptr inbounds %struct.device_attach_data, ptr %data, i32 0, i32 3, !dbg !6817
  store i8 0, ptr %have_async, align 2, !dbg !6817
  %2 = load ptr, ptr %dev, align 8, !dbg !6819
  call void @device_lock(ptr noundef %2) #9, !dbg !6820
  %3 = load ptr, ptr %dev, align 8, !dbg !6821
  %p = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 2, !dbg !6823
  %4 = load ptr, ptr %p, align 8, !dbg !6823
  %dead = getelementptr inbounds %struct.device_private, ptr %4, i32 0, i32 9, !dbg !6824
  %bf.load = load i8, ptr %dead, align 8, !dbg !6824
  %bf.clear = and i8 %bf.load, 1, !dbg !6824
  %conv = zext i8 %bf.clear to i32, !dbg !6821
  %tobool = icmp ne i32 %conv, 0, !dbg !6821
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6825

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %dev, align 8, !dbg !6826
  %driver = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6, !dbg !6827
  %6 = load ptr, ptr %driver, align 8, !dbg !6827
  %tobool2 = icmp ne ptr %6, null, !dbg !6826
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6828

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out_unlock, !dbg !6829

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %dev, align 8, !dbg !6830
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1, !dbg !6832
  %8 = load ptr, ptr %parent, align 8, !dbg !6832
  %tobool3 = icmp ne ptr %8, null, !dbg !6830
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6833

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %dev, align 8, !dbg !6834
  %parent5 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1, !dbg !6835
  %10 = load ptr, ptr %parent5, align 8, !dbg !6835
  %call = call i32 @pm_runtime_get_sync(ptr noundef %10) #9, !dbg !6836
  br label %if.end6, !dbg !6836

if.end6:                                          ; preds = %if.then4, %if.end
  %11 = load ptr, ptr %dev, align 8, !dbg !6837
  %bus = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 5, !dbg !6838
  %12 = load ptr, ptr %bus, align 8, !dbg !6838
  %call7 = call i32 @bus_for_each_drv(ptr noundef %12, ptr noundef null, ptr noundef %data, ptr noundef @__device_attach_driver) #9, !dbg !6839
  %13 = load ptr, ptr %dev, align 8, !dbg !6840
  %call8 = call i32 @pm_request_idle(ptr noundef %13) #9, !dbg !6841
  %14 = load ptr, ptr %dev, align 8, !dbg !6842
  %parent9 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1, !dbg !6844
  %15 = load ptr, ptr %parent9, align 8, !dbg !6844
  %tobool10 = icmp ne ptr %15, null, !dbg !6842
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !6845

if.then11:                                        ; preds = %if.end6
  %16 = load ptr, ptr %dev, align 8, !dbg !6846
  %parent12 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1, !dbg !6847
  %17 = load ptr, ptr %parent12, align 8, !dbg !6847
  %call13 = call i32 @pm_runtime_put(ptr noundef %17) #9, !dbg !6848
  br label %if.end14, !dbg !6848

if.end14:                                         ; preds = %if.then11, %if.end6
  br label %out_unlock, !dbg !6844

out_unlock:                                       ; preds = %if.end14, %if.then
  call void @llvm.dbg.label(metadata !6809), !dbg !6849
  %18 = load ptr, ptr %dev, align 8, !dbg !6850
  call void @device_unlock(ptr noundef %18) #9, !dbg !6851
  %19 = load ptr, ptr %dev, align 8, !dbg !6852
  call void @put_device(ptr noundef %19) #9, !dbg !6853
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #10, !dbg !6854
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !6854
  ret void, !dbg !6854
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6855 dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @driver_match_device(ptr noundef %drv, ptr noundef %dev) #3 align 16 !dbg !6858 {
entry:
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6860, metadata !DIExpression()), !dbg !6862
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6861, metadata !DIExpression()), !dbg !6863
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !6864
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !6865
  %1 = load ptr, ptr %bus, align 8, !dbg !6865
  %match = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 5, !dbg !6866
  %2 = load ptr, ptr %match, align 8, !dbg !6866
  %tobool = icmp ne ptr %2, null, !dbg !6864
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6864

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !6867
  %bus1 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 1, !dbg !6868
  %4 = load ptr, ptr %bus1, align 8, !dbg !6868
  %match2 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 5, !dbg !6869
  %5 = load ptr, ptr %match2, align 8, !dbg !6869
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6870
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !6871
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #9, !dbg !6867
  br label %cond.end, !dbg !6864

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6864

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %cond.false ], !dbg !6864
  ret i32 %cond, !dbg !6872
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @driver_probe_device(ptr noundef %drv, ptr noundef %dev) #0 align 16 !dbg !6873 {
entry:
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %trigger_count = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6875, metadata !DIExpression()), !dbg !6879
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6876, metadata !DIExpression()), !dbg !6880
  call void @llvm.lifetime.start.p0(i64 4, ptr %trigger_count) #10, !dbg !6881
  call void @llvm.dbg.declare(metadata ptr %trigger_count, metadata !6877, metadata !DIExpression()), !dbg !6882
  %call = call i32 @atomic_read(ptr noundef @deferred_trigger_count) #9, !dbg !6883
  store i32 %call, ptr %trigger_count, align 4, !dbg !6882
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6884
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6878, metadata !DIExpression()), !dbg !6885
  call void @atomic_inc(ptr noundef @probe_count) #9, !dbg !6886
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !6887
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6888
  %call1 = call i32 @__driver_probe_device(ptr noundef %0, ptr noundef %1) #9, !dbg !6889
  store i32 %call1, ptr %ret, align 4, !dbg !6890
  %2 = load i32, ptr %ret, align 4, !dbg !6891
  %cmp = icmp eq i32 %2, -517, !dbg !6893
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6894

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6895
  %cmp2 = icmp eq i32 %3, 517, !dbg !6896
  br i1 %cmp2, label %if.then, label %if.end6, !dbg !6897

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6898
  call void @driver_deferred_probe_add(ptr noundef %4) #9, !dbg !6900
  %5 = load i32, ptr %trigger_count, align 4, !dbg !6901
  %call3 = call i32 @atomic_read(ptr noundef @deferred_trigger_count) #9, !dbg !6903
  %cmp4 = icmp ne i32 %5, %call3, !dbg !6904
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !6905

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8, ptr @defer_all_probes, align 1, !dbg !6906, !range !5157, !noundef !1463
  %tobool = trunc i8 %6 to i1, !dbg !6906
  br i1 %tobool, label %if.end, label %if.then5, !dbg !6907

if.then5:                                         ; preds = %land.lhs.true
  call void @driver_deferred_probe_trigger() #9, !dbg !6908
  br label %if.end, !dbg !6908

if.end:                                           ; preds = %if.then5, %land.lhs.true, %if.then
  br label %if.end6, !dbg !6909

if.end6:                                          ; preds = %if.end, %lor.lhs.false
  call void @atomic_dec(ptr noundef @probe_count) #9, !dbg !6910
  %call7 = call i32 @__wake_up(ptr noundef @probe_waitqueue, i32 noundef 3, i32 noundef 0, ptr noundef null) #9, !dbg !6911
  %7 = load i32, ptr %ret, align 4, !dbg !6912
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6913
  call void @llvm.lifetime.end.p0(i64 4, ptr %trigger_count) #10, !dbg !6913
  ret i32 %7, !dbg !6914
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !6915 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6917, metadata !DIExpression()), !dbg !6918
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6919
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !6920
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6921
  call void @raw_atomic_dec(ptr noundef %1) #9, !dbg !6922
  ret void, !dbg !6923
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6924 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6927 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6929, metadata !DIExpression()), !dbg !6930
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6931
  call void @arch_atomic_dec(ptr noundef %0) #9, !dbg !6932
  ret void, !dbg !6933
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6934 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6936, metadata !DIExpression()), !dbg !6937
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6938
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6939
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #10, !dbg !6940, !srcloc !6941
  ret void, !dbg !6942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6943 dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6944 dso_local i64 @async_schedule_node(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_to_node(ptr noundef %dev) #3 align 16 !dbg !6947 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6949, metadata !DIExpression()), !dbg !6950
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6951
  %numa_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25, !dbg !6952
  %1 = load i32, ptr %numa_node, align 8, !dbg !6952
  ret i32 %1, !dbg !6953
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_is_registered(ptr noundef %dev) #3 align 16 !dbg !6954 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6956, metadata !DIExpression()), !dbg !6957
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6958
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !6959
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !6960
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !6960
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6960
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6960
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6960
  ret i32 %bf.cast, !dbg !6961
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6962 dso_local void @pm_runtime_get_suppliers(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6963 dso_local i32 @pm_runtime_barrier(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @really_probe_debug(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !6964 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %calltime = alloca i64, align 8
  %rettime = alloca i64, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6966, metadata !DIExpression()), !dbg !6971
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6967, metadata !DIExpression()), !dbg !6972
  call void @llvm.lifetime.start.p0(i64 8, ptr %calltime) #10, !dbg !6973
  call void @llvm.dbg.declare(metadata ptr %calltime, metadata !6968, metadata !DIExpression()), !dbg !6974
  call void @llvm.lifetime.start.p0(i64 8, ptr %rettime) #10, !dbg !6973
  call void @llvm.dbg.declare(metadata ptr %rettime, metadata !6969, metadata !DIExpression()), !dbg !6975
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6976
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6970, metadata !DIExpression()), !dbg !6977
  %call = call i64 @ktime_get() #9, !dbg !6978
  store i64 %call, ptr %calltime, align 8, !dbg !6979
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6980
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !6981
  %call1 = call i32 @really_probe(ptr noundef %0, ptr noundef %1) #9, !dbg !6982
  store i32 %call1, ptr %ret, align 4, !dbg !6983
  %call2 = call i64 @ktime_get() #9, !dbg !6984
  store i64 %call2, ptr %rettime, align 8, !dbg !6985
  br label %do.body, !dbg !6986

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6988

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6988

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6986
  %call3 = call ptr @dev_name(ptr noundef %2) #9, !dbg !6986
  %3 = load i32, ptr %ret, align 4, !dbg !6986
  %4 = load i64, ptr %rettime, align 8, !dbg !6986
  %5 = load i64, ptr %calltime, align 8, !dbg !6986
  %call4 = call i64 @ktime_us_delta(i64 noundef %4, i64 noundef %5) #9, !dbg !6986
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef %call3, i32 noundef %3, i64 noundef %call4) #11, !dbg !6986
  store i32 %call5, ptr %tmp, align 4, !dbg !6988
  %6 = load i32, ptr %tmp, align 4, !dbg !6986
  %7 = load i32, ptr %ret, align 4, !dbg !6990
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 8, ptr %rettime) #10, !dbg !6991
  call void @llvm.lifetime.end.p0(i64 8, ptr %calltime) #10, !dbg !6991
  ret i32 %7, !dbg !6992
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @really_probe(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !6993 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %test_remove = alloca i8, align 1
  %ret = alloca i32, align 4
  %link_ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp87 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6995, metadata !DIExpression()), !dbg !7007
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6996, metadata !DIExpression()), !dbg !7008
  call void @llvm.lifetime.start.p0(i64 1, ptr %test_remove) #10, !dbg !7009
  call void @llvm.dbg.declare(metadata ptr %test_remove, metadata !6997, metadata !DIExpression()), !dbg !7010
  store i8 0, ptr %test_remove, align 1, !dbg !7010
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6998, metadata !DIExpression()), !dbg !7012
  call void @llvm.lifetime.start.p0(i64 4, ptr %link_ret) #10, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %link_ret, metadata !6999, metadata !DIExpression()), !dbg !7013
  %0 = load i8, ptr @defer_all_probes, align 1, !dbg !7014, !range !5157, !noundef !1463
  %tobool = trunc i8 %0 to i1, !dbg !7014
  br i1 %tobool, label %if.then, label %if.end, !dbg !7016

if.then:                                          ; preds = %entry
  store i32 -517, ptr %retval, align 4, !dbg !7017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7017

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7019
  %call = call i32 @device_links_check_suppliers(ptr noundef %1) #9, !dbg !7020
  store i32 %call, ptr %link_ret, align 4, !dbg !7021
  %2 = load i32, ptr %link_ret, align 4, !dbg !7022
  %cmp = icmp eq i32 %2, -517, !dbg !7024
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7025

if.then1:                                         ; preds = %if.end
  %3 = load i32, ptr %link_ret, align 4, !dbg !7026
  store i32 %3, ptr %retval, align 4, !dbg !7027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7027

if.end2:                                          ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !7028
  %4 = load i32, ptr %tmp, align 4, !dbg !7031
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !7032
  %devres_head = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 29, !dbg !7034
  %call3 = call i32 @list_empty(ptr noundef %devres_head) #9, !dbg !7035
  %tobool4 = icmp ne i32 %call3, 0, !dbg !7035
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !7036

if.then5:                                         ; preds = %if.end2
  br label %do.body, !dbg !7037

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !7040

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7040

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !7037
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %6, ptr noundef @.str.12) #11, !dbg !7037
  store i32 -16, ptr %ret, align 4, !dbg !7042
  br label %done, !dbg !7043

if.end6:                                          ; preds = %if.end2
  br label %re_probe, !dbg !7044

re_probe:                                         ; preds = %if.end75, %if.end6
  call void @llvm.dbg.label(metadata !7000), !dbg !7045
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !7046
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !7047
  %driver = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 6, !dbg !7048
  store ptr %7, ptr %driver, align 8, !dbg !7049
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !7050
  %call7 = call i32 @pinctrl_bind_pins(ptr noundef %9) #9, !dbg !7051
  store i32 %call7, ptr %ret, align 4, !dbg !7052
  %10 = load i32, ptr %ret, align 4, !dbg !7053
  %tobool8 = icmp ne i32 %10, 0, !dbg !7053
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !7055

if.then9:                                         ; preds = %re_probe
  br label %pinctrl_bind_failed, !dbg !7056

if.end10:                                         ; preds = %re_probe
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !7057
  %bus = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 5, !dbg !7059
  %12 = load ptr, ptr %bus, align 8, !dbg !7059
  %dma_configure = getelementptr inbounds %struct.bus_type, ptr %12, i32 0, i32 16, !dbg !7060
  %13 = load ptr, ptr %dma_configure, align 8, !dbg !7060
  %tobool11 = icmp ne ptr %13, null, !dbg !7057
  br i1 %tobool11, label %if.then12, label %if.end19, !dbg !7061

if.then12:                                        ; preds = %if.end10
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !7062
  %bus13 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 5, !dbg !7064
  %15 = load ptr, ptr %bus13, align 8, !dbg !7064
  %dma_configure14 = getelementptr inbounds %struct.bus_type, ptr %15, i32 0, i32 16, !dbg !7065
  %16 = load ptr, ptr %dma_configure14, align 8, !dbg !7065
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !7066
  %call15 = call i32 %16(ptr noundef %17) #9, !dbg !7062
  store i32 %call15, ptr %ret, align 4, !dbg !7067
  %18 = load i32, ptr %ret, align 4, !dbg !7068
  %tobool16 = icmp ne i32 %18, 0, !dbg !7068
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !7070

if.then17:                                        ; preds = %if.then12
  br label %pinctrl_bind_failed, !dbg !7071

if.end18:                                         ; preds = %if.then12
  br label %if.end19, !dbg !7072

if.end19:                                         ; preds = %if.end18, %if.end10
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !7073
  %call20 = call i32 @driver_sysfs_add(ptr noundef %19) #9, !dbg !7074
  store i32 %call20, ptr %ret, align 4, !dbg !7075
  %20 = load i32, ptr %ret, align 4, !dbg !7076
  %tobool21 = icmp ne i32 %20, 0, !dbg !7076
  br i1 %tobool21, label %if.then22, label %if.end29, !dbg !7078

if.then22:                                        ; preds = %if.end19
  br label %do.body23, !dbg !7079

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !7082

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !7082

do.end25:                                         ; preds = %do.cond24
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !7079
  %call27 = call ptr @dev_name(ptr noundef %21) #9, !dbg !7079
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef @__func__.really_probe, ptr noundef %call27) #11, !dbg !7079
  store i32 %call28, ptr %tmp26, align 4, !dbg !7082
  %22 = load i32, ptr %tmp26, align 4, !dbg !7079
  br label %sysfs_failed, !dbg !7084

if.end29:                                         ; preds = %if.end19
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !7085
  %pm_domain = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, !dbg !7087
  %24 = load ptr, ptr %pm_domain, align 8, !dbg !7087
  %tobool30 = icmp ne ptr %24, null, !dbg !7085
  br i1 %tobool30, label %land.lhs.true, label %if.end40, !dbg !7088

land.lhs.true:                                    ; preds = %if.end29
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !7089
  %pm_domain31 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, !dbg !7090
  %26 = load ptr, ptr %pm_domain31, align 8, !dbg !7090
  %activate = getelementptr inbounds %struct.dev_pm_domain, ptr %26, i32 0, i32 3, !dbg !7091
  %27 = load ptr, ptr %activate, align 8, !dbg !7091
  %tobool32 = icmp ne ptr %27, null, !dbg !7089
  br i1 %tobool32, label %if.then33, label %if.end40, !dbg !7092

if.then33:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !7093
  %pm_domain34 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, !dbg !7095
  %29 = load ptr, ptr %pm_domain34, align 8, !dbg !7095
  %activate35 = getelementptr inbounds %struct.dev_pm_domain, ptr %29, i32 0, i32 3, !dbg !7096
  %30 = load ptr, ptr %activate35, align 8, !dbg !7096
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !7097
  %call36 = call i32 %30(ptr noundef %31) #9, !dbg !7093
  store i32 %call36, ptr %ret, align 4, !dbg !7098
  %32 = load i32, ptr %ret, align 4, !dbg !7099
  %tobool37 = icmp ne i32 %32, 0, !dbg !7099
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !7101

if.then38:                                        ; preds = %if.then33
  br label %probe_failed, !dbg !7102

if.end39:                                         ; preds = %if.then33
  br label %if.end40, !dbg !7103

if.end40:                                         ; preds = %if.end39, %land.lhs.true, %if.end29
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !7104
  %34 = load ptr, ptr %drv.addr, align 8, !dbg !7105
  %call41 = call i32 @call_driver_probe(ptr noundef %33, ptr noundef %34) #9, !dbg !7106
  store i32 %call41, ptr %ret, align 4, !dbg !7107
  %35 = load i32, ptr %ret, align 4, !dbg !7108
  %tobool42 = icmp ne i32 %35, 0, !dbg !7108
  br i1 %tobool42, label %if.then43, label %if.end47, !dbg !7110

if.then43:                                        ; preds = %if.end40
  %36 = load i32, ptr %link_ret, align 4, !dbg !7111
  %cmp44 = icmp eq i32 %36, -11, !dbg !7114
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !7115

if.then45:                                        ; preds = %if.then43
  store i32 -517, ptr %ret, align 4, !dbg !7116
  br label %if.end46, !dbg !7117

if.end46:                                         ; preds = %if.then45, %if.then43
  %37 = load i32, ptr %ret, align 4, !dbg !7118
  %sub = sub i32 0, %37, !dbg !7119
  store i32 %sub, ptr %ret, align 4, !dbg !7120
  br label %probe_failed, !dbg !7121

if.end47:                                         ; preds = %if.end40
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !7122
  %39 = load ptr, ptr %drv.addr, align 8, !dbg !7123
  %dev_groups = getelementptr inbounds %struct.device_driver, ptr %39, i32 0, i32 15, !dbg !7124
  %40 = load ptr, ptr %dev_groups, align 8, !dbg !7124
  %call48 = call i32 @device_add_groups(ptr noundef %38, ptr noundef %40) #9, !dbg !7125
  store i32 %call48, ptr %ret, align 4, !dbg !7126
  %41 = load i32, ptr %ret, align 4, !dbg !7127
  %tobool49 = icmp ne i32 %41, 0, !dbg !7127
  br i1 %tobool49, label %if.then50, label %if.end54, !dbg !7129

if.then50:                                        ; preds = %if.end47
  br label %do.body51, !dbg !7130

do.body51:                                        ; preds = %if.then50
  br label %do.cond52, !dbg !7133

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !7133

do.end53:                                         ; preds = %do.cond52
  %42 = load ptr, ptr %dev.addr, align 8, !dbg !7130
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef @.str.14) #11, !dbg !7130
  br label %dev_groups_failed, !dbg !7135

if.end54:                                         ; preds = %if.end47
  %43 = load ptr, ptr %dev.addr, align 8, !dbg !7136
  %call55 = call zeroext i1 @dev_has_sync_state(ptr noundef %43) #9, !dbg !7138
  br i1 %call55, label %if.then56, label %if.end64, !dbg !7139

if.then56:                                        ; preds = %if.end54
  %44 = load ptr, ptr %dev.addr, align 8, !dbg !7140
  %call57 = call i32 @device_create_file(ptr noundef %44, ptr noundef @dev_attr_state_synced) #9, !dbg !7142
  store i32 %call57, ptr %ret, align 4, !dbg !7143
  %45 = load i32, ptr %ret, align 4, !dbg !7144
  %tobool58 = icmp ne i32 %45, 0, !dbg !7144
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !7146

if.then59:                                        ; preds = %if.then56
  br label %do.body60, !dbg !7147

do.body60:                                        ; preds = %if.then59
  br label %do.cond61, !dbg !7150

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !7150

do.end62:                                         ; preds = %do.cond61
  %46 = load ptr, ptr %dev.addr, align 8, !dbg !7147
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef @.str.15) #11, !dbg !7147
  br label %dev_sysfs_state_synced_failed, !dbg !7152

if.end63:                                         ; preds = %if.then56
  br label %if.end64, !dbg !7153

if.end64:                                         ; preds = %if.end63, %if.end54
  %47 = load i8, ptr %test_remove, align 1, !dbg !7154, !range !5157, !noundef !1463
  %tobool65 = trunc i8 %47 to i1, !dbg !7154
  br i1 %tobool65, label %if.then66, label %if.end76, !dbg !7156

if.then66:                                        ; preds = %if.end64
  store i8 0, ptr %test_remove, align 1, !dbg !7157
  %48 = load ptr, ptr %dev.addr, align 8, !dbg !7159
  call void @device_remove(ptr noundef %48) #9, !dbg !7160
  %49 = load ptr, ptr %dev.addr, align 8, !dbg !7161
  call void @driver_sysfs_remove(ptr noundef %49) #9, !dbg !7162
  %50 = load ptr, ptr %dev.addr, align 8, !dbg !7163
  %bus67 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 5, !dbg !7165
  %51 = load ptr, ptr %bus67, align 8, !dbg !7165
  %tobool68 = icmp ne ptr %51, null, !dbg !7163
  br i1 %tobool68, label %land.lhs.true69, label %if.end75, !dbg !7166

land.lhs.true69:                                  ; preds = %if.then66
  %52 = load ptr, ptr %dev.addr, align 8, !dbg !7167
  %bus70 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 5, !dbg !7168
  %53 = load ptr, ptr %bus70, align 8, !dbg !7168
  %dma_cleanup = getelementptr inbounds %struct.bus_type, ptr %53, i32 0, i32 17, !dbg !7169
  %54 = load ptr, ptr %dma_cleanup, align 8, !dbg !7169
  %tobool71 = icmp ne ptr %54, null, !dbg !7167
  br i1 %tobool71, label %if.then72, label %if.end75, !dbg !7170

if.then72:                                        ; preds = %land.lhs.true69
  %55 = load ptr, ptr %dev.addr, align 8, !dbg !7171
  %bus73 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 5, !dbg !7172
  %56 = load ptr, ptr %bus73, align 8, !dbg !7172
  %dma_cleanup74 = getelementptr inbounds %struct.bus_type, ptr %56, i32 0, i32 17, !dbg !7173
  %57 = load ptr, ptr %dma_cleanup74, align 8, !dbg !7173
  %58 = load ptr, ptr %dev.addr, align 8, !dbg !7174
  call void %57(ptr noundef %58) #9, !dbg !7171
  br label %if.end75, !dbg !7171

if.end75:                                         ; preds = %if.then72, %land.lhs.true69, %if.then66
  %59 = load ptr, ptr %dev.addr, align 8, !dbg !7175
  call void @device_unbind_cleanup(ptr noundef %59) #9, !dbg !7176
  br label %re_probe, !dbg !7177

if.end76:                                         ; preds = %if.end64
  %60 = load ptr, ptr %dev.addr, align 8, !dbg !7178
  %call77 = call i32 @pinctrl_init_done(ptr noundef %60) #9, !dbg !7179
  %61 = load ptr, ptr %dev.addr, align 8, !dbg !7180
  %pm_domain78 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 12, !dbg !7182
  %62 = load ptr, ptr %pm_domain78, align 8, !dbg !7182
  %tobool79 = icmp ne ptr %62, null, !dbg !7180
  br i1 %tobool79, label %land.lhs.true80, label %if.end86, !dbg !7183

land.lhs.true80:                                  ; preds = %if.end76
  %63 = load ptr, ptr %dev.addr, align 8, !dbg !7184
  %pm_domain81 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 12, !dbg !7185
  %64 = load ptr, ptr %pm_domain81, align 8, !dbg !7185
  %sync = getelementptr inbounds %struct.dev_pm_domain, ptr %64, i32 0, i32 4, !dbg !7186
  %65 = load ptr, ptr %sync, align 8, !dbg !7186
  %tobool82 = icmp ne ptr %65, null, !dbg !7184
  br i1 %tobool82, label %if.then83, label %if.end86, !dbg !7187

if.then83:                                        ; preds = %land.lhs.true80
  %66 = load ptr, ptr %dev.addr, align 8, !dbg !7188
  %pm_domain84 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 12, !dbg !7189
  %67 = load ptr, ptr %pm_domain84, align 8, !dbg !7189
  %sync85 = getelementptr inbounds %struct.dev_pm_domain, ptr %67, i32 0, i32 4, !dbg !7190
  %68 = load ptr, ptr %sync85, align 8, !dbg !7190
  %69 = load ptr, ptr %dev.addr, align 8, !dbg !7191
  call void %68(ptr noundef %69) #9, !dbg !7188
  br label %if.end86, !dbg !7188

if.end86:                                         ; preds = %if.then83, %land.lhs.true80, %if.end76
  %70 = load ptr, ptr %dev.addr, align 8, !dbg !7192
  call void @driver_bound(ptr noundef %70) #9, !dbg !7193
  store i32 0, ptr %tmp87, align 4, !dbg !7194
  %71 = load i32, ptr %tmp87, align 4, !dbg !7197
  br label %done, !dbg !7198

dev_sysfs_state_synced_failed:                    ; preds = %do.end62
  call void @llvm.dbg.label(metadata !7001), !dbg !7199
  br label %dev_groups_failed, !dbg !7198

dev_groups_failed:                                ; preds = %dev_sysfs_state_synced_failed, %do.end53
  call void @llvm.dbg.label(metadata !7002), !dbg !7200
  %72 = load ptr, ptr %dev.addr, align 8, !dbg !7201
  call void @device_remove(ptr noundef %72) #9, !dbg !7202
  br label %probe_failed, !dbg !7202

probe_failed:                                     ; preds = %dev_groups_failed, %if.end46, %if.then38
  call void @llvm.dbg.label(metadata !7003), !dbg !7203
  %73 = load ptr, ptr %dev.addr, align 8, !dbg !7204
  call void @driver_sysfs_remove(ptr noundef %73) #9, !dbg !7205
  br label %sysfs_failed, !dbg !7205

sysfs_failed:                                     ; preds = %probe_failed, %do.end25
  call void @llvm.dbg.label(metadata !7004), !dbg !7206
  %74 = load ptr, ptr %dev.addr, align 8, !dbg !7207
  call void @bus_notify(ptr noundef %74, i32 noundef 7) #9, !dbg !7208
  %75 = load ptr, ptr %dev.addr, align 8, !dbg !7209
  %bus88 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 5, !dbg !7211
  %76 = load ptr, ptr %bus88, align 8, !dbg !7211
  %tobool89 = icmp ne ptr %76, null, !dbg !7209
  br i1 %tobool89, label %land.lhs.true90, label %if.end97, !dbg !7212

land.lhs.true90:                                  ; preds = %sysfs_failed
  %77 = load ptr, ptr %dev.addr, align 8, !dbg !7213
  %bus91 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 5, !dbg !7214
  %78 = load ptr, ptr %bus91, align 8, !dbg !7214
  %dma_cleanup92 = getelementptr inbounds %struct.bus_type, ptr %78, i32 0, i32 17, !dbg !7215
  %79 = load ptr, ptr %dma_cleanup92, align 8, !dbg !7215
  %tobool93 = icmp ne ptr %79, null, !dbg !7213
  br i1 %tobool93, label %if.then94, label %if.end97, !dbg !7216

if.then94:                                        ; preds = %land.lhs.true90
  %80 = load ptr, ptr %dev.addr, align 8, !dbg !7217
  %bus95 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 5, !dbg !7218
  %81 = load ptr, ptr %bus95, align 8, !dbg !7218
  %dma_cleanup96 = getelementptr inbounds %struct.bus_type, ptr %81, i32 0, i32 17, !dbg !7219
  %82 = load ptr, ptr %dma_cleanup96, align 8, !dbg !7219
  %83 = load ptr, ptr %dev.addr, align 8, !dbg !7220
  call void %82(ptr noundef %83) #9, !dbg !7217
  br label %if.end97, !dbg !7217

if.end97:                                         ; preds = %if.then94, %land.lhs.true90, %sysfs_failed
  br label %pinctrl_bind_failed, !dbg !7215

pinctrl_bind_failed:                              ; preds = %if.end97, %if.then17, %if.then9
  call void @llvm.dbg.label(metadata !7005), !dbg !7221
  %84 = load ptr, ptr %dev.addr, align 8, !dbg !7222
  call void @device_links_no_driver(ptr noundef %84) #9, !dbg !7223
  %85 = load ptr, ptr %dev.addr, align 8, !dbg !7224
  call void @device_unbind_cleanup(ptr noundef %85) #9, !dbg !7225
  br label %done, !dbg !7225

done:                                             ; preds = %pinctrl_bind_failed, %if.end86, %do.end
  call void @llvm.dbg.label(metadata !7006), !dbg !7226
  %86 = load i32, ptr %ret, align 4, !dbg !7227
  store i32 %86, ptr %retval, align 4, !dbg !7228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7228

cleanup:                                          ; preds = %done, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %link_ret) #10, !dbg !7229
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7229
  call void @llvm.lifetime.end.p0(i64 1, ptr %test_remove) #10, !dbg !7229
  %87 = load i32, ptr %retval, align 4, !dbg !7229
  ret i32 %87, !dbg !7229
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7230 dso_local void @pm_runtime_put_suppliers(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7231 dso_local i64 @ktime_get() #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_us_delta(i64 noundef %later, i64 noundef %earlier) #3 align 16 !dbg !7233 {
entry:
  %later.addr = alloca i64, align 8
  %earlier.addr = alloca i64, align 8
  store i64 %later, ptr %later.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %later.addr, metadata !7238, metadata !DIExpression()), !dbg !7240
  store i64 %earlier, ptr %earlier.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %earlier.addr, metadata !7239, metadata !DIExpression()), !dbg !7241
  %0 = load i64, ptr %later.addr, align 8, !dbg !7242
  %1 = load i64, ptr %earlier.addr, align 8, !dbg !7242
  %sub = sub i64 %0, %1, !dbg !7242
  %call = call i64 @ktime_to_us(i64 noundef %sub) #9, !dbg !7243
  ret i64 %call, !dbg !7244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_us(i64 noundef %kt) #3 align 16 !dbg !7245 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !7249, metadata !DIExpression()), !dbg !7250
  %0 = load i64, ptr %kt.addr, align 8, !dbg !7251
  %call = call i64 @ktime_divns(i64 noundef %0, i64 noundef 1000) #9, !dbg !7252
  ret i64 %call, !dbg !7253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) #3 align 16 !dbg !7254 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !7258, metadata !DIExpression()), !dbg !7265
  store i64 %div, ptr %div.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !7259, metadata !DIExpression()), !dbg !7266
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !7267
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7260, metadata !DIExpression()), !dbg !7267
  %0 = load i64, ptr %div.addr, align 8, !dbg !7267
  %cmp = icmp slt i64 %0, 0, !dbg !7267
  %lnot = xor i1 %cmp, true, !dbg !7267
  %lnot1 = xor i1 %lnot, true, !dbg !7267
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7267
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7267
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !7268
  %tobool = icmp ne i32 %1, 0, !dbg !7268
  %lnot2 = xor i1 %tobool, true, !dbg !7268
  %lnot4 = xor i1 %lnot2, true, !dbg !7268
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !7268
  %conv = sext i32 %lnot.ext5 to i64, !dbg !7268
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7268
  %tobool6 = icmp ne i64 %expval, 0, !dbg !7268
  br i1 %tobool6, label %if.then, label %if.end, !dbg !7267

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7268

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !7269
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7262, metadata !DIExpression()), !dbg !7269
  store i32 2305, ptr %__flags, align 4, !dbg !7269
  br label %do.body7, !dbg !7269

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !7270

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !7270

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !7269

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !7272
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 154, i32 %2, i64 12) #10, !dbg !7272, !srcloc !7274
  br label %do.cond9, !dbg !7272

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7272

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !7269

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !7275

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7275

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !7268
  br label %do.cond14, !dbg !7269

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !7269

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !7269

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !7267
  %tobool16 = icmp ne i32 %3, 0, !dbg !7267
  %lnot17 = xor i1 %tobool16, true, !dbg !7267
  %lnot19 = xor i1 %lnot17, true, !dbg !7267
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !7267
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !7267
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !7267
  store i64 %expval22, ptr %tmp, align 8, !dbg !7268
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !7277
  %4 = load i64, ptr %tmp, align 8, !dbg !7267
  %5 = load i64, ptr %kt.addr, align 8, !dbg !7278
  %6 = load i64, ptr %div.addr, align 8, !dbg !7279
  %div23 = sdiv i64 %5, %6, !dbg !7280
  ret i64 %div23, !dbg !7281
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7282 dso_local i32 @device_links_check_suppliers(ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7283 dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pinctrl_bind_pins(ptr noundef %dev) #3 align 16 !dbg !7284 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7287, metadata !DIExpression()), !dbg !7288
  ret i32 0, !dbg !7289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @call_driver_probe(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !7290 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7292, metadata !DIExpression()), !dbg !7295
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !7293, metadata !DIExpression()), !dbg !7296
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7297
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7294, metadata !DIExpression()), !dbg !7298
  store i32 0, ptr %ret, align 4, !dbg !7298
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7299
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !7301
  %1 = load ptr, ptr %bus, align 8, !dbg !7301
  %probe = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 7, !dbg !7302
  %2 = load ptr, ptr %probe, align 8, !dbg !7302
  %tobool = icmp ne ptr %2, null, !dbg !7299
  br i1 %tobool, label %if.then, label %if.else, !dbg !7303

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7304
  %bus1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5, !dbg !7305
  %4 = load ptr, ptr %bus1, align 8, !dbg !7305
  %probe2 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 7, !dbg !7306
  %5 = load ptr, ptr %probe2, align 8, !dbg !7306
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !7307
  %call = call i32 %5(ptr noundef %6) #9, !dbg !7304
  store i32 %call, ptr %ret, align 4, !dbg !7308
  br label %if.end8, !dbg !7309

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !7310
  %probe3 = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 8, !dbg !7312
  %8 = load ptr, ptr %probe3, align 8, !dbg !7312
  %tobool4 = icmp ne ptr %8, null, !dbg !7310
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !7313

if.then5:                                         ; preds = %if.else
  %9 = load ptr, ptr %drv.addr, align 8, !dbg !7314
  %probe6 = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 8, !dbg !7315
  %10 = load ptr, ptr %probe6, align 8, !dbg !7315
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !7316
  %call7 = call i32 %10(ptr noundef %11) #9, !dbg !7314
  store i32 %call7, ptr %ret, align 4, !dbg !7317
  br label %if.end, !dbg !7318

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %12 = load i32, ptr %ret, align 4, !dbg !7319
  switch i32 %12, label %sw.default [
    i32 0, label %sw.epilog
    i32 -517, label %sw.bb
    i32 -19, label %sw.bb9
    i32 -6, label %sw.bb9
  ], !dbg !7320

sw.bb:                                            ; preds = %if.end8
  br label %sw.epilog, !dbg !7321

sw.bb9:                                           ; preds = %if.end8, %if.end8
  store i32 0, ptr %tmp, align 4, !dbg !7323
  %13 = load i32, ptr %tmp, align 4, !dbg !7326
  br label %sw.epilog, !dbg !7327

sw.default:                                       ; preds = %if.end8
  br label %do.body, !dbg !7328

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !7330

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7330

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %drv.addr, align 8, !dbg !7328
  %name = getelementptr inbounds %struct.device_driver, ptr %14, i32 0, i32 0, !dbg !7328
  %15 = load ptr, ptr %name, align 8, !dbg !7328
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !7328
  %call11 = call ptr @dev_name(ptr noundef %16) #9, !dbg !7328
  %17 = load i32, ptr %ret, align 4, !dbg !7328
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, ptr noundef %15, ptr noundef %call11, i32 noundef %17) #11, !dbg !7328
  store i32 %call12, ptr %tmp10, align 4, !dbg !7330
  %18 = load i32, ptr %tmp10, align 4, !dbg !7328
  br label %sw.epilog, !dbg !7332

sw.epilog:                                        ; preds = %do.end, %sw.bb9, %sw.bb, %if.end8
  %19 = load i32, ptr %ret, align 4, !dbg !7333
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7334
  ret i32 %19, !dbg !7335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7336 dso_local i32 @device_add_groups(ptr noundef, ptr noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7339 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dev_has_sync_state(ptr noundef %dev) #3 align 16 !dbg !7340 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7342, metadata !DIExpression()), !dbg !7343
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7344
  %tobool = icmp ne ptr %0, null, !dbg !7344
  br i1 %tobool, label %if.end, label %if.then, !dbg !7346

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7347
  br label %return, !dbg !7347

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7348
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6, !dbg !7350
  %2 = load ptr, ptr %driver, align 8, !dbg !7350
  %tobool1 = icmp ne ptr %2, null, !dbg !7348
  br i1 %tobool1, label %land.lhs.true, label %if.end5, !dbg !7351

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7352
  %driver2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !7353
  %4 = load ptr, ptr %driver2, align 8, !dbg !7353
  %sync_state = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 9, !dbg !7354
  %5 = load ptr, ptr %sync_state, align 8, !dbg !7354
  %tobool3 = icmp ne ptr %5, null, !dbg !7352
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7355

if.then4:                                         ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !7356
  br label %return, !dbg !7356

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !7357
  %bus = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5, !dbg !7359
  %7 = load ptr, ptr %bus, align 8, !dbg !7359
  %tobool6 = icmp ne ptr %7, null, !dbg !7357
  br i1 %tobool6, label %land.lhs.true7, label %if.end12, !dbg !7360

land.lhs.true7:                                   ; preds = %if.end5
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !7361
  %bus8 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 5, !dbg !7362
  %9 = load ptr, ptr %bus8, align 8, !dbg !7362
  %sync_state9 = getelementptr inbounds %struct.bus_type, ptr %9, i32 0, i32 8, !dbg !7363
  %10 = load ptr, ptr %sync_state9, align 8, !dbg !7363
  %tobool10 = icmp ne ptr %10, null, !dbg !7361
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !7364

if.then11:                                        ; preds = %land.lhs.true7
  store i1 true, ptr %retval, align 1, !dbg !7365
  br label %return, !dbg !7365

if.end12:                                         ; preds = %land.lhs.true7, %if.end5
  store i1 false, ptr %retval, align 1, !dbg !7366
  br label %return, !dbg !7366

return:                                           ; preds = %if.end12, %if.then11, %if.then4, %if.then
  %11 = load i1, ptr %retval, align 1, !dbg !7367
  ret i1 %11, !dbg !7367
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7368 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_remove(ptr noundef %dev) #0 align 16 !dbg !7373 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7375, metadata !DIExpression()), !dbg !7376
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7377
  call void @device_remove_file(ptr noundef %0, ptr noundef @dev_attr_state_synced) #9, !dbg !7378
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7379
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7380
  %driver = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 6, !dbg !7381
  %3 = load ptr, ptr %driver, align 8, !dbg !7381
  %dev_groups = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 15, !dbg !7382
  %4 = load ptr, ptr %dev_groups, align 8, !dbg !7382
  call void @device_remove_groups(ptr noundef %1, ptr noundef %4) #9, !dbg !7383
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !7384
  %bus = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 5, !dbg !7386
  %6 = load ptr, ptr %bus, align 8, !dbg !7386
  %tobool = icmp ne ptr %6, null, !dbg !7384
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !7387

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !7388
  %bus1 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 5, !dbg !7389
  %8 = load ptr, ptr %bus1, align 8, !dbg !7389
  %remove = getelementptr inbounds %struct.bus_type, ptr %8, i32 0, i32 9, !dbg !7390
  %9 = load ptr, ptr %remove, align 8, !dbg !7390
  %tobool2 = icmp ne ptr %9, null, !dbg !7388
  br i1 %tobool2, label %if.then, label %if.else, !dbg !7391

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !7392
  %bus3 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 5, !dbg !7393
  %11 = load ptr, ptr %bus3, align 8, !dbg !7393
  %remove4 = getelementptr inbounds %struct.bus_type, ptr %11, i32 0, i32 9, !dbg !7394
  %12 = load ptr, ptr %remove4, align 8, !dbg !7394
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !7395
  call void %12(ptr noundef %13) #9, !dbg !7392
  br label %if.end11, !dbg !7392

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !7396
  %driver5 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 6, !dbg !7398
  %15 = load ptr, ptr %driver5, align 8, !dbg !7398
  %remove6 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 10, !dbg !7399
  %16 = load ptr, ptr %remove6, align 8, !dbg !7399
  %tobool7 = icmp ne ptr %16, null, !dbg !7396
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !7400

if.then8:                                         ; preds = %if.else
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !7401
  %driver9 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 6, !dbg !7402
  %18 = load ptr, ptr %driver9, align 8, !dbg !7402
  %remove10 = getelementptr inbounds %struct.device_driver, ptr %18, i32 0, i32 10, !dbg !7403
  %19 = load ptr, ptr %remove10, align 8, !dbg !7403
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !7404
  %call = call i32 %19(ptr noundef %20) #9, !dbg !7401
  br label %if.end, !dbg !7401

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  ret void, !dbg !7405
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @driver_sysfs_remove(ptr noundef %dev) #0 align 16 !dbg !7406 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7408, metadata !DIExpression()), !dbg !7410
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #10, !dbg !7411
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !7409, metadata !DIExpression()), !dbg !7412
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7413
  %driver = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6, !dbg !7414
  %1 = load ptr, ptr %driver, align 8, !dbg !7414
  store ptr %1, ptr %drv, align 8, !dbg !7412
  %2 = load ptr, ptr %drv, align 8, !dbg !7415
  %tobool = icmp ne ptr %2, null, !dbg !7415
  br i1 %tobool, label %if.then, label %if.end5, !dbg !7417

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %drv, align 8, !dbg !7418
  %coredump = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 17, !dbg !7421
  %4 = load ptr, ptr %coredump, align 8, !dbg !7421
  %tobool1 = icmp ne ptr %4, null, !dbg !7418
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !7422

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !7423
  call void @device_remove_file(ptr noundef %5, ptr noundef @dev_attr_coredump) #9, !dbg !7424
  br label %if.end, !dbg !7424

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %drv, align 8, !dbg !7425
  %p = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 18, !dbg !7426
  %7 = load ptr, ptr %p, align 8, !dbg !7426
  %kobj = getelementptr inbounds %struct.driver_private, ptr %7, i32 0, i32 0, !dbg !7427
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !7428
  %kobj3 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 0, !dbg !7429
  %call = call ptr @kobject_name(ptr noundef %kobj3) #9, !dbg !7430
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef %call) #9, !dbg !7431
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !7432
  %kobj4 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 0, !dbg !7433
  call void @sysfs_remove_link(ptr noundef %kobj4, ptr noundef @.str.6) #9, !dbg !7434
  br label %if.end5, !dbg !7435

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #10, !dbg !7436
  ret void, !dbg !7436
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_unbind_cleanup(ptr noundef %dev) #0 align 16 !dbg !7437 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7439, metadata !DIExpression()), !dbg !7440
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7441
  %call = call i32 @devres_release_all(ptr noundef %0) #9, !dbg !7442
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7443
  call void @arch_teardown_dma_ops(ptr noundef %1) #9, !dbg !7444
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7445
  %dma_range_map = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 18, !dbg !7446
  %3 = load ptr, ptr %dma_range_map, align 8, !dbg !7446
  call void @kfree(ptr noundef %3) #9, !dbg !7447
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !7448
  %dma_range_map1 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 18, !dbg !7449
  store ptr null, ptr %dma_range_map1, align 8, !dbg !7450
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !7451
  %driver = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6, !dbg !7452
  store ptr null, ptr %driver, align 8, !dbg !7453
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !7454
  call void @dev_set_drvdata(ptr noundef %6, ptr noundef null) #9, !dbg !7455
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !7456
  %pm_domain = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, !dbg !7458
  %8 = load ptr, ptr %pm_domain, align 8, !dbg !7458
  %tobool = icmp ne ptr %8, null, !dbg !7456
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7459

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !7460
  %pm_domain2 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, !dbg !7461
  %10 = load ptr, ptr %pm_domain2, align 8, !dbg !7461
  %dismiss = getelementptr inbounds %struct.dev_pm_domain, ptr %10, i32 0, i32 5, !dbg !7462
  %11 = load ptr, ptr %dismiss, align 8, !dbg !7462
  %tobool3 = icmp ne ptr %11, null, !dbg !7460
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7463

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !7464
  %pm_domain4 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, !dbg !7465
  %13 = load ptr, ptr %pm_domain4, align 8, !dbg !7465
  %dismiss5 = getelementptr inbounds %struct.dev_pm_domain, ptr %13, i32 0, i32 5, !dbg !7466
  %14 = load ptr, ptr %dismiss5, align 8, !dbg !7466
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !7467
  call void %14(ptr noundef %15) #9, !dbg !7464
  br label %if.end, !dbg !7464

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !7468
  call void @pm_runtime_reinit(ptr noundef %16) #9, !dbg !7469
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !7470
  call void @dev_pm_set_driver_flags(ptr noundef %17, i32 noundef 0) #9, !dbg !7471
  ret void, !dbg !7472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pinctrl_init_done(ptr noundef %dev) #3 align 16 !dbg !7473 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7475, metadata !DIExpression()), !dbg !7476
  ret i32 0, !dbg !7477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7478 dso_local void @device_links_no_driver(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @state_synced_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7479 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %val = alloca i8, align 1
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7481, metadata !DIExpression()), !dbg !7485
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7482, metadata !DIExpression()), !dbg !7486
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7483, metadata !DIExpression()), !dbg !7487
  call void @llvm.lifetime.start.p0(i64 1, ptr %val) #10, !dbg !7488
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7484, metadata !DIExpression()), !dbg !7489
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7490
  call void @device_lock(ptr noundef %0) #9, !dbg !7491
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7492
  %state_synced = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 37, !dbg !7493
  %bf.load = load i8, ptr %state_synced, align 4, !dbg !7493
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !7493
  %bf.clear = and i8 %bf.lshr, 1, !dbg !7493
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !7493
  %frombool = zext i1 %bf.cast to i8, !dbg !7494
  store i8 %frombool, ptr %val, align 1, !dbg !7494
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7495
  call void @device_unlock(ptr noundef %2) #9, !dbg !7496
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7497
  %4 = load i8, ptr %val, align 1, !dbg !7498, !range !5157, !noundef !1463
  %tobool = trunc i8 %4 to i1, !dbg !7498
  %conv = zext i1 %tobool to i32, !dbg !7498
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.18, i32 noundef %conv) #9, !dbg !7499
  %conv1 = sext i32 %call to i64, !dbg !7499
  call void @llvm.lifetime.end.p0(i64 1, ptr %val) #10, !dbg !7500
  ret i64 %conv1, !dbg !7501
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @state_synced_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !7502 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7504, metadata !DIExpression()), !dbg !7509
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7505, metadata !DIExpression()), !dbg !7510
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7506, metadata !DIExpression()), !dbg !7511
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7507, metadata !DIExpression()), !dbg !7512
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7513
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7508, metadata !DIExpression()), !dbg !7514
  store i32 0, ptr %ret, align 4, !dbg !7514
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !7515
  %call = call i32 @strcmp(ptr noundef @.str.19, ptr noundef %0) #9, !dbg !7517
  %tobool = icmp ne i32 %call, 0, !dbg !7517
  br i1 %tobool, label %if.then, label %if.end, !dbg !7518

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !7519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7519

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7520
  call void @device_lock(ptr noundef %1) #9, !dbg !7521
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7522
  %state_synced = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 37, !dbg !7524
  %bf.load = load i8, ptr %state_synced, align 4, !dbg !7524
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !7524
  %bf.clear = and i8 %bf.lshr, 1, !dbg !7524
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !7524
  br i1 %bf.cast, label %if.else, label %if.then1, !dbg !7525

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7526
  %state_synced2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 37, !dbg !7528
  %bf.load3 = load i8, ptr %state_synced2, align 4, !dbg !7529
  %bf.clear4 = and i8 %bf.load3, -9, !dbg !7529
  %bf.set = or i8 %bf.clear4, 8, !dbg !7529
  store i8 %bf.set, ptr %state_synced2, align 4, !dbg !7529
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !7530
  call void @dev_sync_state(ptr noundef %4) #9, !dbg !7531
  br label %if.end5, !dbg !7532

if.else:                                          ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !7533
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !7535
  call void @device_unlock(ptr noundef %5) #9, !dbg !7536
  %6 = load i32, ptr %ret, align 4, !dbg !7537
  %tobool6 = icmp ne i32 %6, 0, !dbg !7537
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !7537

cond.true:                                        ; preds = %if.end5
  %7 = load i32, ptr %ret, align 4, !dbg !7538
  %conv = sext i32 %7 to i64, !dbg !7538
  br label %cond.end, !dbg !7537

cond.false:                                       ; preds = %if.end5
  %8 = load i64, ptr %count.addr, align 8, !dbg !7539
  br label %cond.end, !dbg !7537

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %8, %cond.false ], !dbg !7537
  store i64 %cond, ptr %retval, align 8, !dbg !7540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7540

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7541
  %9 = load i64, ptr %retval, align 8, !dbg !7541
  ret i64 %9, !dbg !7541
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7542 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7545 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_sync_state(ptr noundef %dev) #3 align 16 !dbg !7548 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7550, metadata !DIExpression()), !dbg !7551
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7552
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !7554
  %1 = load ptr, ptr %bus, align 8, !dbg !7554
  %sync_state = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 8, !dbg !7555
  %2 = load ptr, ptr %sync_state, align 8, !dbg !7555
  %tobool = icmp ne ptr %2, null, !dbg !7552
  br i1 %tobool, label %if.then, label %if.else, !dbg !7556

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7557
  %bus1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5, !dbg !7558
  %4 = load ptr, ptr %bus1, align 8, !dbg !7558
  %sync_state2 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 8, !dbg !7559
  %5 = load ptr, ptr %sync_state2, align 8, !dbg !7559
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !7560
  call void %5(ptr noundef %6) #9, !dbg !7557
  br label %if.end10, !dbg !7557

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !7561
  %driver = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 6, !dbg !7563
  %8 = load ptr, ptr %driver, align 8, !dbg !7563
  %tobool3 = icmp ne ptr %8, null, !dbg !7561
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !7564

land.lhs.true:                                    ; preds = %if.else
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !7565
  %driver4 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 6, !dbg !7566
  %10 = load ptr, ptr %driver4, align 8, !dbg !7566
  %sync_state5 = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 9, !dbg !7567
  %11 = load ptr, ptr %sync_state5, align 8, !dbg !7567
  %tobool6 = icmp ne ptr %11, null, !dbg !7565
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !7568

if.then7:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !7569
  %driver8 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6, !dbg !7570
  %13 = load ptr, ptr %driver8, align 8, !dbg !7570
  %sync_state9 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 9, !dbg !7571
  %14 = load ptr, ptr %sync_state9, align 8, !dbg !7571
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !7572
  call void %14(ptr noundef %15) #9, !dbg !7569
  br label %if.end, !dbg !7569

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  ret void, !dbg !7573
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7574 dso_local void @device_remove_file(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7577 dso_local void @device_remove_groups(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @coredump_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !7580 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7582, metadata !DIExpression()), !dbg !7586
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7583, metadata !DIExpression()), !dbg !7587
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7584, metadata !DIExpression()), !dbg !7588
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7585, metadata !DIExpression()), !dbg !7589
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7590
  call void @device_lock(ptr noundef %0) #9, !dbg !7591
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7592
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6, !dbg !7593
  %2 = load ptr, ptr %driver, align 8, !dbg !7593
  %coredump = getelementptr inbounds %struct.device_driver, ptr %2, i32 0, i32 17, !dbg !7594
  %3 = load ptr, ptr %coredump, align 8, !dbg !7594
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !7595
  call void %3(ptr noundef %4) #9, !dbg !7592
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !7596
  call void @device_unlock(ptr noundef %5) #9, !dbg !7597
  %6 = load i64, ptr %count.addr, align 8, !dbg !7598
  ret i64 %6, !dbg !7599
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7600 dso_local i32 @devres_release_all(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_teardown_dma_ops(ptr noundef %dev) #3 align 16 !dbg !7601 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7603, metadata !DIExpression()), !dbg !7604
  ret void, !dbg !7605
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #3 align 16 !dbg !7606 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7610, metadata !DIExpression()), !dbg !7612
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7611, metadata !DIExpression()), !dbg !7613
  %0 = load ptr, ptr %data.addr, align 8, !dbg !7614
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7615
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !7616
  store ptr %0, ptr %driver_data, align 8, !dbg !7617
  ret void, !dbg !7618
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7619 dso_local void @pm_runtime_reinit(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_pm_set_driver_flags(ptr noundef %dev, i32 noundef %flags) #3 align 16 !dbg !7620 {
entry:
  %dev.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7624, metadata !DIExpression()), !dbg !7626
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7625, metadata !DIExpression()), !dbg !7627
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7628
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7629
  %power = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !7630
  %driver_flags = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 2, !dbg !7631
  store i32 %0, ptr %driver_flags, align 8, !dbg !7632
  ret void, !dbg !7633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__driver_attach_async_helper(ptr noundef %_dev, i64 noundef %cookie) #0 align 16 !dbg !7634 {
entry:
  %_dev.addr = alloca ptr, align 8
  %cookie.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %_dev, ptr %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dev.addr, metadata !7636, metadata !DIExpression()), !dbg !7641
  store i64 %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !7637, metadata !DIExpression()), !dbg !7642
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !7643
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !7638, metadata !DIExpression()), !dbg !7644
  %0 = load ptr, ptr %_dev.addr, align 8, !dbg !7645
  store ptr %0, ptr %dev, align 8, !dbg !7644
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #10, !dbg !7646
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !7639, metadata !DIExpression()), !dbg !7647
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !7648
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7640, metadata !DIExpression()), !dbg !7649
  %1 = load ptr, ptr %dev, align 8, !dbg !7650
  %2 = load ptr, ptr %dev, align 8, !dbg !7651
  %parent = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1, !dbg !7652
  %3 = load ptr, ptr %parent, align 8, !dbg !7652
  call void @__device_driver_lock(ptr noundef %1, ptr noundef %3) #9, !dbg !7653
  %4 = load ptr, ptr %dev, align 8, !dbg !7654
  %p = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !7655
  %5 = load ptr, ptr %p, align 8, !dbg !7655
  %async_driver = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 6, !dbg !7656
  %6 = load ptr, ptr %async_driver, align 8, !dbg !7656
  store ptr %6, ptr %drv, align 8, !dbg !7657
  %7 = load ptr, ptr %dev, align 8, !dbg !7658
  %p1 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !7659
  %8 = load ptr, ptr %p1, align 8, !dbg !7659
  %async_driver2 = getelementptr inbounds %struct.device_private, ptr %8, i32 0, i32 6, !dbg !7660
  store ptr null, ptr %async_driver2, align 8, !dbg !7661
  %9 = load ptr, ptr %drv, align 8, !dbg !7662
  %10 = load ptr, ptr %dev, align 8, !dbg !7663
  %call = call i32 @driver_probe_device(ptr noundef %9, ptr noundef %10) #9, !dbg !7664
  store i32 %call, ptr %ret, align 4, !dbg !7665
  %11 = load ptr, ptr %dev, align 8, !dbg !7666
  %12 = load ptr, ptr %dev, align 8, !dbg !7667
  %parent3 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1, !dbg !7668
  %13 = load ptr, ptr %parent3, align 8, !dbg !7668
  call void @__device_driver_unlock(ptr noundef %11, ptr noundef %13) #9, !dbg !7669
  %14 = load ptr, ptr %dev, align 8, !dbg !7670
  call void @put_device(ptr noundef %14) #9, !dbg !7671
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !7672
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #10, !dbg !7672
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !7672
  ret void, !dbg !7672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7673 dso_local zeroext i1 @device_links_busy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7674 dso_local void @device_links_unbind_consumers(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_runtime_put_sync(ptr noundef %dev) #3 align 16 !dbg !7675 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7677, metadata !DIExpression()), !dbg !7678
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7679
  %call = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #9, !dbg !7680
  ret i32 %call, !dbg !7681
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7682 dso_local void @device_links_driver_cleanup(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7683 dso_local void @klist_remove(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cmdline_requested_async_probing(ptr noundef %drv_name) #3 align 16 !dbg !7684 {
entry:
  %drv_name.addr = alloca ptr, align 8
  %async_drv = alloca i8, align 1
  store ptr %drv_name, ptr %drv_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv_name.addr, metadata !7688, metadata !DIExpression()), !dbg !7690
  call void @llvm.lifetime.start.p0(i64 1, ptr %async_drv) #10, !dbg !7691
  call void @llvm.dbg.declare(metadata ptr %async_drv, metadata !7689, metadata !DIExpression()), !dbg !7692
  %0 = load ptr, ptr %drv_name.addr, align 8, !dbg !7693
  %call = call zeroext i1 @parse_option_str(ptr noundef @async_probe_drv_names, ptr noundef %0) #9, !dbg !7694
  %frombool = zext i1 %call to i8, !dbg !7695
  store i8 %frombool, ptr %async_drv, align 1, !dbg !7695
  %1 = load i8, ptr @async_probe_default, align 1, !dbg !7696, !range !5157, !noundef !1463
  %tobool = trunc i8 %1 to i1, !dbg !7696
  %conv = zext i1 %tobool to i32, !dbg !7696
  %2 = load i8, ptr %async_drv, align 1, !dbg !7697, !range !5157, !noundef !1463
  %tobool1 = trunc i8 %2 to i1, !dbg !7697
  %conv2 = zext i1 %tobool1 to i32, !dbg !7697
  %cmp = icmp ne i32 %conv, %conv2, !dbg !7698
  call void @llvm.lifetime.end.p0(i64 1, ptr %async_drv) #10, !dbg !7699
  ret i1 %cmp, !dbg !7700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @module_requested_async_probing(ptr noundef %module) #3 align 16 !dbg !7701 {
entry:
  %module.addr = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module.addr, metadata !7705, metadata !DIExpression()), !dbg !7706
  %0 = load ptr, ptr %module.addr, align 8, !dbg !7707
  %tobool = icmp ne ptr %0, null, !dbg !7707
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7708

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %module.addr, align 8, !dbg !7709
  %async_probe_requested = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 18, !dbg !7710
  %2 = load i8, ptr %async_probe_requested, align 1, !dbg !7710, !range !5157, !noundef !1463
  %tobool1 = trunc i8 %2 to i1, !dbg !7710
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !7711
  ret i1 %3, !dbg !7712
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7713 dso_local void @_raw_spin_lock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7718 dso_local void @_raw_spin_unlock(ptr noundef) #2 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043}
!llvm.ident = !{!5044}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "deferred_probe_mutex", scope: !2, file: !3, line: 54, type: !571, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.dd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/dd\22 -D KBUILD_BASENAME=\22dd\22 -D KBUILD_MODNAME=\22dd\22 -D __KBUILD_MODNAME=kmod_dd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/dd.ll drivers/base/dd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !218, globals: !4857, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/dd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "be20f04ad03e96801ac21185f42627f7")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !129, !133, !140, !149, !154, !159, !165, !170, !181, !207}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !117, line: 41, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!120 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!121 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !117, line: 99, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!125 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!126 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!127 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!128 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !117, line: 80, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!132 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !134, line: 5, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!135 = !{!136, !137, !138, !139}
!136 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!137 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!138 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!139 = !DIEnumerator(name: "DMA_NONE", value: 3)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148}
!142 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!143 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!144 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!145 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!146 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!147 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!148 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!152 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!153 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!157 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!158 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164}
!161 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!162 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!163 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!164 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 10, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "false", value: 0)
!169 = !DIEnumerator(name: "true", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bus_notifier_event", file: !171, line: 268, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180}
!173 = !DIEnumerator(name: "BUS_NOTIFY_ADD_DEVICE", value: 0)
!174 = !DIEnumerator(name: "BUS_NOTIFY_DEL_DEVICE", value: 1)
!175 = !DIEnumerator(name: "BUS_NOTIFY_REMOVED_DEVICE", value: 2)
!176 = !DIEnumerator(name: "BUS_NOTIFY_BIND_DRIVER", value: 3)
!177 = !DIEnumerator(name: "BUS_NOTIFY_BOUND_DRIVER", value: 4)
!178 = !DIEnumerator(name: "BUS_NOTIFY_UNBIND_DRIVER", value: 5)
!179 = !DIEnumerator(name: "BUS_NOTIFY_UNBOUND_DRIVER", value: 6)
!180 = !DIEnumerator(name: "BUS_NOTIFY_DRIVER_NOT_BOUND", value: 7)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 30, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!184 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!185 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!186 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!187 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!188 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!189 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!190 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!191 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!192 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!193 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!194 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!195 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!196 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!197 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!198 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!199 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!200 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!201 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!202 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!203 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!204 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!205 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!206 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !208, line: 53, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217}
!210 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!211 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!212 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!213 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!214 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!215 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!216 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!217 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!218 = !{!219, !221, !222, !4850, !4853, !420, !1155, !4854}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !220, line: 154, baseType: !7)
!220 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !224, line: 108, size: 1728, elements: !225)
!224 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!225 = !{!226, !299, !300, !301, !302, !303, !304, !4847, !4848, !4849}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !223, file: !224, line: 109, baseType: !227, size: 320, align: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !228, line: 18, size: 320, align: 64, elements: !229)
!228 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!229 = !{!230, !273, !279, !298}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !227, file: !228, line: 19, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !232, line: 29, baseType: !233)
!232 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !232, line: 17, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !232, line: 18, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !232, line: 18, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !236, file: !232, line: 19, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !240, line: 14, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !239, file: !240, line: 15, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !244, line: 44, baseType: !245)
!244 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !244, line: 14, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !244, line: 15, baseType: !248, size: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !244, line: 15, size: 32, elements: !249)
!249 = !{!250, !255, !265}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !248, file: !244, line: 16, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !220, line: 174, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 172, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !252, file: !220, line: 173, baseType: !109, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !244, line: 24, baseType: !256, size: 16)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !244, line: 24, size: 16, elements: !257)
!257 = !{!258, !264}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !256, file: !244, line: 25, baseType: !259, size: 8)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !260, line: 17, baseType: !261)
!260 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !262, line: 21, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!263 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !256, file: !244, line: 26, baseType: !259, size: 8, offset: 8)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !244, line: 28, baseType: !266, size: 32)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !244, line: 28, size: 32, elements: !267)
!267 = !{!268, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !266, file: !244, line: 29, baseType: !269, size: 16)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !260, line: 19, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !262, line: 24, baseType: !271)
!271 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !266, file: !244, line: 30, baseType: !269, size: 16, offset: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !227, file: !228, line: 20, baseType: !274, size: 128, offset: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !220, line: 190, size: 128, elements: !275)
!275 = !{!276, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !220, line: 191, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !274, file: !220, line: 191, baseType: !277, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !227, file: !228, line: 21, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !228, line: 37, size: 256, elements: !285)
!285 = !{!286, !287, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !284, file: !228, line: 38, baseType: !221, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !284, file: !228, line: 39, baseType: !274, size: 128, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !284, file: !228, line: 40, baseType: !289, size: 32, offset: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !290, line: 19, size: 32, elements: !291)
!290 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !289, file: !290, line: 20, baseType: !293, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !294, line: 113, baseType: !295)
!294 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !294, line: 111, size: 32, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !295, file: !294, line: 112, baseType: !251, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !227, file: !228, line: 22, baseType: !280, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !223, file: !224, line: 110, baseType: !284, size: 256, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !223, file: !224, line: 111, baseType: !284, size: 256, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !223, file: !224, line: 112, baseType: !284, size: 256, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !223, file: !224, line: 113, baseType: !284, size: 256, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !223, file: !224, line: 114, baseType: !274, size: 128, offset: 1344)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !223, file: !224, line: 115, baseType: !305, size: 64, offset: 1472)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !307)
!307 = !{!308, !312, !4816, !4817, !4818, !4819, !4820, !4824, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !88, line: 97, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !306, file: !88, line: 98, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !171, line: 80, size: 1344, elements: !316)
!316 = !{!317, !318, !319, !4226, !4227, !4228, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4806, !4807, !4808, !4809, !4810, !4811, !4815}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !171, line: 81, baseType: !309, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !315, file: !171, line: 82, baseType: !309, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !315, file: !171, line: 83, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !324, line: 84, size: 320, elements: !325)
!324 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!325 = !{!326, !327, !4199, !4222, !4224}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !324, line: 85, baseType: !309, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !323, file: !324, line: 86, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !332, !408, !109}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !220, line: 24, baseType: !271)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !208, line: 64, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !385, !480, !4193, !4194, !4195, !4196, !4197, !4198}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !208, line: 65, baseType: !309, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !333, file: !208, line: 66, baseType: !274, size: 128, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !333, file: !208, line: 67, baseType: !332, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !333, file: !208, line: 68, baseType: !339, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !208, line: 168, size: 768, elements: !341)
!341 = !{!342, !343, !344, !345}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !340, file: !208, line: 169, baseType: !274, size: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !340, file: !208, line: 170, baseType: !231, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !340, file: !208, line: 171, baseType: !333, size: 512, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !340, file: !208, line: 172, baseType: !346, size: 64, offset: 704)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !208, line: 133, size: 192, elements: !349)
!349 = !{!350, !357, !362}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !348, file: !208, line: 134, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!109, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !208, line: 135, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!309, !355}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !348, file: !208, line: 136, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!109, !355, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !208, line: 125, size: 20736, elements: !369)
!369 = !{!370, !375, !379, !380, !384}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !368, file: !208, line: 126, baseType: !371, size: 192)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !373)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!373 = !{!374}
!374 = !DISubrange(count: 3)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !368, file: !208, line: 127, baseType: !376, size: 4096, offset: 192)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 4096, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !368, file: !208, line: 128, baseType: !109, size: 32, offset: 4288)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !368, file: !208, line: 129, baseType: !381, size: 16384, offset: 4320)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16384, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 2048)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !368, file: !208, line: 130, baseType: !109, size: 32, offset: 20704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !333, file: !208, line: 69, baseType: !386, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !208, line: 116, size: 384, elements: !389)
!389 = !{!390, !394, !421, !422, !457, !461}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !388, file: !208, line: 117, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !332}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !388, file: !208, line: 118, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !324, line: 254, size: 128, elements: !398)
!398 = !{!399, !413}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !397, file: !324, line: 255, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!403, !332, !408, !372}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !220, line: 66, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !405, line: 73, baseType: !406)
!405 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !405, line: 15, baseType: !407)
!407 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !324, line: 30, size: 128, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !324, line: 31, baseType: !309, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !409, file: !324, line: 32, baseType: !331, size: 16, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !397, file: !324, line: 256, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!403, !332, !408, !309, !417}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 61, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !405, line: 72, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !405, line: 16, baseType: !420)
!420 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !388, file: !208, line: 119, baseType: !320, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !388, file: !208, line: 120, baseType: !423, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !355}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !429)
!429 = !{!430, !431, !437, !441, !449, !453}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !82, line: 40, baseType: !81, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !428, file: !82, line: 41, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !220, line: 35, baseType: !436)
!436 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !428, file: !82, line: 42, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!221}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !428, file: !82, line: 43, baseType: !442, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !447}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !428, file: !82, line: 44, baseType: !450, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!445}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !428, file: !82, line: 45, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !221}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !388, file: !208, line: 121, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!445, !355}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !388, file: !208, line: 122, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !355, !465, !473}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !467, line: 23, baseType: !468)
!467 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 21, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !468, file: !467, line: 22, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !220, line: 37, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !405, line: 49, baseType: !7)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !467, line: 28, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 26, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !467, line: 27, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !220, line: 38, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !405, line: 50, baseType: !7)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !333, file: !208, line: 70, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !483, line: 190, size: 1152, elements: !484)
!483 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!484 = !{!485, !486, !487, !488, !489, !497, !498, !499, !4185, !4186, !4187, !4188, !4189, !4192}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !483, line: 191, baseType: !251, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !482, file: !483, line: 192, baseType: !251, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !482, file: !483, line: 202, baseType: !481, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !483, line: 203, baseType: !309, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !482, file: !483, line: 205, baseType: !490, size: 192, align: 64, offset: 192)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !491, line: 5, size: 192, align: 64, elements: !492)
!491 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!492 = !{!493, !494, !496}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !490, file: !491, line: 6, baseType: !420, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !490, file: !491, line: 7, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !490, file: !491, line: 8, baseType: !495, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !482, file: !483, line: 207, baseType: !445, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !482, file: !483, line: 208, baseType: !7, size: 32, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !483, line: 209, baseType: !500, size: 256, offset: 512)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !483, line: 209, size: 256, elements: !501)
!501 = !{!502, !514, !518}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !500, file: !483, line: 210, baseType: !503, size: 256)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !483, line: 153, size: 256, elements: !504)
!504 = !{!505, !506, !510, !513}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !503, file: !483, line: 154, baseType: !420, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !503, file: !483, line: 156, baseType: !507, size: 64, offset: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !491, line: 12, size: 64, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !507, file: !491, line: 13, baseType: !495, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !503, file: !483, line: 162, baseType: !511, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !483, line: 162, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !503, file: !483, line: 167, baseType: !420, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !500, file: !483, line: 211, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !483, line: 170, size: 64, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !515, file: !483, line: 171, baseType: !481, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !500, file: !483, line: 212, baseType: !519, size: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !483, line: 174, size: 256, elements: !520)
!520 = !{!521, !4180, !4183, !4184}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !519, file: !483, line: 175, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !483, line: 271, size: 768, elements: !525)
!525 = !{!526, !4157, !4161, !4162, !4163, !4164, !4165, !4169, !4170, !4171, !4172, !4176}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !524, file: !483, line: 276, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!109, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !483, line: 251, size: 1216, elements: !532)
!532 = !{!533, !534, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !531, file: !483, line: 253, baseType: !481, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !531, file: !483, line: 254, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !537)
!537 = !{!538, !557, !558, !560, !570, !583, !586, !587, !654, !862, !871, !4136, !4137, !4138, !4139, !4140, !4141, !4143, !4144, !4145}
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !14, line: 995, baseType: !539, size: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !14, line: 995, size: 128, elements: !540)
!540 = !{!541, !547, !556}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !539, file: !14, line: 996, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !543, line: 60, size: 64, elements: !544)
!543 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !543, line: 61, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !539, file: !14, line: 997, baseType: !548, size: 128, align: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !220, line: 232, size: 128, align: 64, elements: !549)
!549 = !{!550, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !220, line: 233, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !548, file: !220, line: 234, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !551}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !539, file: !14, line: 998, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !536, file: !14, line: 1005, baseType: !231, size: 32, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !536, file: !14, line: 1006, baseType: !559, size: 32, offset: 160)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !220, line: 156, baseType: !7)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !536, file: !14, line: 1007, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !562, line: 13, baseType: !563)
!562 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !220, line: 181, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 179, size: 64, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !564, file: !220, line: 180, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !260, line: 22, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !262, line: 30, baseType: !569)
!569 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !536, file: !14, line: 1008, baseType: !571, size: 256, offset: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !572, line: 66, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!573 = !{!574, !575, !577, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !571, file: !572, line: 67, baseType: !561, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !571, file: !572, line: 68, baseType: !576, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !240, line: 23, baseType: !239)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !571, file: !572, line: 70, baseType: !578, size: 32, offset: 96)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !579, line: 15, size: 32, elements: !580)
!579 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !578, file: !579, line: 20, baseType: !251, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !571, file: !572, line: 72, baseType: !274, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !536, file: !14, line: 1009, baseType: !584, size: 64, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !220, line: 52, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !405, line: 88, baseType: !569)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !536, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !536, file: !14, line: 1011, baseType: !588, size: 256, offset: 640)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !589)
!589 = !{!590, !611, !650, !651, !652, !653}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !588, file: !14, line: 949, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !592, line: 34, baseType: !593)
!592 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 25, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !593, file: !592, line: 26, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !597, line: 27, baseType: !598)
!597 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !597, line: 13, size: 64, elements: !599)
!599 = !{!600, !610}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !597, line: 14, baseType: !601, size: 32)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !597, line: 14, size: 32, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !601, file: !597, line: 15, baseType: !251, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !597, line: 16, baseType: !605, size: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !597, line: 16, size: 32, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !605, file: !597, line: 18, baseType: !259, size: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !605, file: !597, line: 19, baseType: !609, size: 24, offset: 8)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 24, elements: !373)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !598, file: !597, line: 26, baseType: !243, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !588, file: !14, line: 950, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !614)
!614 = !{!615, !616, !617, !618, !631, !632, !639, !640}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !613, file: !19, line: 61, baseType: !293, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !613, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !613, file: !19, line: 63, baseType: !231, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !613, file: !19, line: 65, baseType: !619, size: 256, offset: 128)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 256, elements: !629)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !220, line: 194, size: 64, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !620, file: !220, line: 195, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !220, line: 198, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !220, line: 199, baseType: !623, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !624, file: !220, line: 199, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!629 = !{!630}
!630 = !DISubrange(count: 4)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !613, file: !19, line: 66, baseType: !620, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !613, file: !19, line: 68, baseType: !633, size: 192, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !634, line: 41, baseType: !635)
!634 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !634, line: 37, size: 192, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !635, file: !634, line: 38, baseType: !231, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !635, file: !634, line: 39, baseType: !274, size: 128, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !613, file: !19, line: 69, baseType: !548, size: 128, align: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !613, file: !19, line: 70, baseType: !641, offset: 768)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, elements: !648)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !642, file: !19, line: 55, baseType: !109, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !642, file: !19, line: 56, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!648 = !{!649}
!649 = !DISubrange(count: -1)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !588, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !588, file: !14, line: 952, baseType: !466, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !588, file: !14, line: 952, baseType: !466, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !588, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !536, file: !14, line: 1012, baseType: !655, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !658, line: 110, size: 1472, elements: !659)
!658 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !679, !680, !681, !682, !683, !684, !807, !808, !809, !810, !811, !842, !845, !849, !857}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !657, file: !658, line: 111, baseType: !561, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !657, file: !658, line: 112, baseType: !466, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !657, file: !658, line: 113, baseType: !474, size: 32, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !657, file: !658, line: 114, baseType: !466, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !657, file: !658, line: 115, baseType: !474, size: 32, offset: 160)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !657, file: !658, line: 116, baseType: !466, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !657, file: !658, line: 117, baseType: !474, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !657, file: !658, line: 118, baseType: !466, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !657, file: !658, line: 119, baseType: !474, size: 32, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !657, file: !658, line: 120, baseType: !7, size: 32, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !657, file: !658, line: 121, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !672, line: 24, baseType: !673)
!672 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 24, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !673, file: !672, line: 24, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !260, line: 23, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !262, line: 31, baseType: !678)
!678 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !657, file: !658, line: 122, baseType: !671, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !657, file: !658, line: 123, baseType: !671, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !657, file: !658, line: 124, baseType: !671, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !657, file: !658, line: 125, baseType: !671, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !657, file: !658, line: 127, baseType: !263, size: 8, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !657, file: !658, line: 129, baseType: !685, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !687, line: 195, size: 1728, elements: !688)
!687 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!688 = !{!689, !690, !695, !700, !709, !712, !713, !720, !721, !722, !723, !728, !729, !730, !732, !733, !771, !792}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !686, file: !687, line: 196, baseType: !293, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !686, file: !687, line: 197, baseType: !691, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !687, line: 28, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !220, line: 104, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !260, line: 20, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !262, line: 26, baseType: !109)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 198, baseType: !696, size: 192, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 198, size: 192, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !696, file: !687, line: 199, baseType: !274, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !696, file: !687, line: 200, baseType: !490, size: 192, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !686, file: !687, line: 205, baseType: !701, size: 320, offset: 256)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !702, line: 48, size: 320, elements: !703)
!702 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!703 = !{!704, !705, !706, !707, !708}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !702, line: 49, baseType: !561, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !701, file: !702, line: 55, baseType: !561, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !701, file: !702, line: 57, baseType: !578, size: 32, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !701, file: !702, line: 59, baseType: !576, size: 32, offset: 160)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !701, file: !702, line: 60, baseType: !274, size: 128, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !686, file: !687, line: 206, baseType: !710, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !687, line: 206, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !686, file: !687, line: 207, baseType: !221, size: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 208, baseType: !714, size: 64, offset: 704)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 208, size: 64, elements: !715)
!715 = !{!716, !719}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !714, file: !687, line: 209, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !718, line: 8, baseType: !568)
!718 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!719 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !714, file: !687, line: 210, baseType: !717, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !686, file: !687, line: 212, baseType: !717, size: 64, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !686, file: !687, line: 213, baseType: !466, size: 32, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !686, file: !687, line: 214, baseType: !474, size: 32, offset: 864)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !686, file: !687, line: 215, baseType: !724, size: 32, offset: 896)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !687, line: 31, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !220, line: 110, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !260, line: 21, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !262, line: 27, baseType: !7)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !686, file: !687, line: 216, baseType: !271, size: 16, offset: 928)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !686, file: !687, line: 217, baseType: !271, size: 16, offset: 944)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !686, file: !687, line: 221, baseType: !731, size: 16, offset: 960)
!731 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 228, baseType: !420, size: 64, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 245, baseType: !734, size: 320, offset: 1088)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 245, size: 320, elements: !735)
!735 = !{!736, !763}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !734, file: !687, line: 246, baseType: !737, size: 320)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !687, line: 114, size: 320, elements: !738)
!738 = !{!739, !740, !752, !755, !762}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !737, file: !687, line: 116, baseType: !420, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !687, line: 117, baseType: !741, size: 64, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !687, line: 117, size: 64, elements: !742)
!742 = !{!743, !751}
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !687, line: 118, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !741, file: !687, line: 118, size: 64, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !744, file: !687, line: 120, baseType: !269, size: 16)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !744, file: !687, line: 121, baseType: !748, size: 48, offset: 16)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 48, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 6)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !741, file: !687, line: 127, baseType: !420, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !687, line: 129, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !687, line: 102, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !737, file: !687, line: 130, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !687, line: 108, size: 192, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !757, file: !687, line: 109, baseType: !548, size: 128, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !757, file: !687, line: 110, baseType: !293, size: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !757, file: !687, line: 111, baseType: !435, size: 8, offset: 160)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !737, file: !687, line: 131, baseType: !309, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !687, line: 247, baseType: !764, size: 320)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !687, line: 247, size: 320, elements: !765)
!765 = !{!766, !767, !768, !769, !770}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !764, file: !687, line: 248, baseType: !420, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !764, file: !687, line: 249, baseType: !420, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !687, line: 250, baseType: !753, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !764, file: !687, line: 251, baseType: !756, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !764, file: !687, line: 252, baseType: !372, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 260, baseType: !772, size: 256, offset: 1408)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 260, size: 256, elements: !773)
!773 = !{!774, !780}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !772, file: !687, line: 261, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !687, line: 134, size: 256, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !775, file: !687, line: 135, baseType: !221, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !775, file: !687, line: 136, baseType: !779, size: 256)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !629)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !687, line: 262, baseType: !781, size: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !687, line: 262, size: 256, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !781, file: !687, line: 264, baseType: !274, size: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !781, file: !687, line: 265, baseType: !785, size: 128, offset: 128)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !786, line: 22, size: 128, elements: !787)
!786 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!787 = !{!788, !791}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !785, file: !786, line: 23, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !786, line: 23, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !785, file: !786, line: 24, baseType: !420, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !686, file: !687, line: 280, baseType: !793, size: 64, offset: 1664)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !687, line: 176, size: 192, elements: !795)
!795 = !{!796, !805, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !794, file: !687, line: 177, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !687, line: 171, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!109, !685, !801, !803, !685}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !794, file: !687, line: 178, baseType: !685, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !794, file: !687, line: 179, baseType: !753, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !657, file: !658, line: 130, baseType: !685, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !657, file: !658, line: 131, baseType: !685, size: 64, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !657, file: !658, line: 132, baseType: !685, size: 64, offset: 960)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !657, file: !658, line: 135, baseType: !221, size: 64, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !657, file: !658, line: 137, baseType: !812, size: 64, offset: 1088)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !814, line: 14, size: 1088, elements: !815)
!814 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!815 = !{!816, !817, !826, !827, !828, !829, !830, !831}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !813, file: !814, line: 15, baseType: !293, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !813, file: !814, line: 17, baseType: !818, size: 320, offset: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !819, line: 22, size: 320, elements: !820)
!819 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!820 = !{!821, !822, !823, !824}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !818, file: !819, line: 23, baseType: !576, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !818, file: !819, line: 24, baseType: !567, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !818, file: !819, line: 26, baseType: !274, size: 128, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !818, file: !819, line: 28, baseType: !825, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !813, file: !814, line: 19, baseType: !420, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !813, file: !814, line: 20, baseType: !561, size: 64, offset: 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !813, file: !814, line: 23, baseType: !624, size: 128, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !813, file: !814, line: 24, baseType: !466, size: 32, offset: 640)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !813, file: !814, line: 29, baseType: !561, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !813, file: !814, line: 36, baseType: !832, size: 320, offset: 768)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !833, line: 15, size: 320, elements: !834)
!833 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!834 = !{!835, !836, !837, !838, !839, !840, !841}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !832, file: !833, line: 16, baseType: !576, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !832, file: !833, line: 18, baseType: !109, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !832, file: !833, line: 19, baseType: !109, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !832, file: !833, line: 20, baseType: !109, size: 32, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !832, file: !833, line: 21, baseType: !109, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !832, file: !833, line: 22, baseType: !420, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !833, line: 23, baseType: !420, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !657, file: !658, line: 138, baseType: !843, size: 64, offset: 1152)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !467, line: 18, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !657, file: !658, line: 139, baseType: !846, size: 64, offset: 1216)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !848, line: 16, flags: DIFlagFwdDecl)
!848 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!849 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !657, file: !658, line: 140, baseType: !850, size: 64, offset: 1280)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !658, line: 25, size: 64, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !851, file: !658, line: 26, baseType: !251, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !851, file: !658, line: 27, baseType: !109, size: 32, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !851, file: !658, line: 28, baseType: !856, offset: 64)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, elements: !648)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 142, baseType: !858, size: 128, offset: 1344)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 142, size: 128, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !858, file: !658, line: 143, baseType: !109, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !858, file: !658, line: 144, baseType: !548, size: 128, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !536, file: !14, line: 1013, baseType: !863, size: 256, offset: 960)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !863, file: !14, line: 971, baseType: !420, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !863, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !863, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !863, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !863, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !863, file: !14, line: 976, baseType: !584, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !536, file: !14, line: 1014, baseType: !872, size: 128, offset: 1216)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !873, line: 8, size: 128, elements: !874)
!873 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!874 = !{!875, !4135}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !872, file: !873, line: 9, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !878, line: 70, size: 256, elements: !879)
!878 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!879 = !{!880, !4132, !4133, !4134}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !877, file: !878, line: 71, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !883, line: 82, size: 1536, elements: !884)
!883 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!884 = !{!885, !886, !896, !904, !905, !920, !4099, !4101, !4114, !4115, !4116, !4117, !4118, !4124, !4125, !4126}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !882, file: !883, line: 84, baseType: !7, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !882, file: !883, line: 85, baseType: !887, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !888, line: 275, baseType: !889)
!888 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !888, line: 275, size: 32, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !889, file: !888, line: 275, baseType: !892, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !888, line: 69, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !888, line: 64, size: 32, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !893, file: !888, line: 65, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !882, file: !883, line: 86, baseType: !897, size: 128, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !898, line: 38, size: 128, elements: !899)
!898 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!899 = !{!900, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !898, line: 39, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !897, file: !898, line: 39, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !882, file: !883, line: 87, baseType: !881, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !882, file: !883, line: 88, baseType: !906, size: 128, offset: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !883, line: 49, size: 128, elements: !907)
!907 = !{!908, !917}
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !883, line: 50, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !883, line: 50, size: 64, elements: !910)
!910 = !{!911, !916}
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !883, line: 51, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !883, line: 51, size: 64, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !912, file: !883, line: 52, baseType: !726, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !912, file: !883, line: 52, baseType: !726, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !909, file: !883, line: 54, baseType: !676, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !906, file: !883, line: 56, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !882, file: !883, line: 89, baseType: !921, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !923)
!923 = !{!924, !925, !926, !927, !928, !929, !930, !933, !934, !1121, !3911, !3912, !3913, !3914, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !4081, !4084, !4085, !4086, !4095, !4096, !4097, !4098}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !922, file: !14, line: 642, baseType: !331, size: 16)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !922, file: !14, line: 643, baseType: !271, size: 16, offset: 16)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !922, file: !14, line: 644, baseType: !466, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !922, file: !14, line: 645, baseType: !274, size: 128, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !922, file: !14, line: 646, baseType: !474, size: 32, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !922, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !922, file: !14, line: 650, baseType: !931, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !922, file: !14, line: 651, baseType: !931, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !922, file: !14, line: 654, baseType: !935, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !938)
!938 = !{!939, !943, !953, !959, !963, !967, !971, !975, !979, !983, !987, !988, !994, !998, !1035, !1066, !1070, !1076, !1080, !1084, !1088, !1092, !1096, !1102, !1106}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !937, file: !14, line: 1967, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!881, !921, !881, !7}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !937, file: !14, line: 1968, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!309, !881, !921, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !949, line: 10, size: 128, elements: !950)
!949 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !948, file: !949, line: 11, baseType: !454, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !948, file: !949, line: 12, baseType: !221, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !937, file: !14, line: 1969, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!109, !957, !921, !109}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !672, line: 42, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !937, file: !14, line: 1970, baseType: !960, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!931, !921, !109, !435}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !937, file: !14, line: 1972, baseType: !964, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!109, !881, !372, !109}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !937, file: !14, line: 1974, baseType: !968, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!109, !957, !921, !881, !331, !435}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !937, file: !14, line: 1976, baseType: !972, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!109, !881, !921, !881}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !937, file: !14, line: 1977, baseType: !976, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!109, !921, !881}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !937, file: !14, line: 1978, baseType: !980, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!109, !957, !921, !881, !309}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !937, file: !14, line: 1980, baseType: !984, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!109, !957, !921, !881, !331}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !937, file: !14, line: 1982, baseType: !976, size: 64, offset: 640)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !937, file: !14, line: 1983, baseType: !989, size: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!109, !957, !921, !881, !331, !992}
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !220, line: 21, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !220, line: 18, baseType: !726)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !937, file: !14, line: 1985, baseType: !995, size: 64, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!109, !957, !921, !881, !921, !881, !7}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !937, file: !14, line: 1987, baseType: !999, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!109, !957, !881, !1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1017, !1026, !1027, !1032, !1033, !1034}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1003, file: !14, line: 227, baseType: !7, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1003, file: !14, line: 228, baseType: !331, size: 16, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !14, line: 241, baseType: !1008, size: 32, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1003, file: !14, line: 241, size: 32, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1008, file: !14, line: 242, baseType: !466, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1008, file: !14, line: 243, baseType: !1012, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1013, line: 16, baseType: !1014)
!1013 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1013, line: 14, size: 32, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1014, file: !1013, line: 15, baseType: !471, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !14, line: 245, baseType: !1018, size: 32, offset: 96)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1003, file: !14, line: 245, size: 32, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1018, file: !14, line: 246, baseType: !474, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1018, file: !14, line: 247, baseType: !1022, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1013, line: 20, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1013, line: 18, size: 32, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1023, file: !1013, line: 19, baseType: !478, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1003, file: !14, line: 249, baseType: !584, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1003, file: !14, line: 250, baseType: !1028, size: 128, offset: 192)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !718, line: 13, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1028, file: !718, line: 14, baseType: !717, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1028, file: !718, line: 15, baseType: !407, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1003, file: !14, line: 251, baseType: !1028, size: 128, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1003, file: !14, line: 252, baseType: !1028, size: 128, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1003, file: !14, line: 259, baseType: !535, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !937, file: !14, line: 1988, baseType: !1036, size: 64, offset: 896)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!109, !957, !1039, !1041, !726, !7}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1043, line: 22, size: 1280, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1042, file: !1043, line: 23, baseType: !726, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1042, file: !1043, line: 24, baseType: !331, size: 16, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1042, file: !1043, line: 25, baseType: !7, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1042, file: !1043, line: 26, baseType: !725, size: 32, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1042, file: !1043, line: 27, baseType: !676, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1042, file: !1043, line: 28, baseType: !676, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1042, file: !1043, line: 41, baseType: !676, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1042, file: !1043, line: 42, baseType: !992, size: 32, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1042, file: !1043, line: 43, baseType: !992, size: 32, offset: 352)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1042, file: !1043, line: 44, baseType: !466, size: 32, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1042, file: !1043, line: 45, baseType: !474, size: 32, offset: 416)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1042, file: !1043, line: 46, baseType: !584, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1042, file: !1043, line: 47, baseType: !1028, size: 128, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1042, file: !1043, line: 48, baseType: !1028, size: 128, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1042, file: !1043, line: 49, baseType: !1028, size: 128, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1042, file: !1043, line: 50, baseType: !1028, size: 128, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1042, file: !1043, line: 51, baseType: !676, size: 64, offset: 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1042, file: !1043, line: 52, baseType: !676, size: 64, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1042, file: !1043, line: 53, baseType: !726, size: 32, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1042, file: !1043, line: 54, baseType: !726, size: 32, offset: 1184)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1042, file: !1043, line: 55, baseType: !676, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !937, file: !14, line: 1990, baseType: !1067, size: 64, offset: 960)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!403, !881, !372, !417}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !937, file: !14, line: 1991, baseType: !1071, size: 64, offset: 1024)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!109, !921, !1074, !676, !676}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !937, file: !14, line: 1993, baseType: !1077, size: 64, offset: 1088)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!109, !921, !109}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !937, file: !14, line: 1994, baseType: !1081, size: 64, offset: 1152)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!109, !921, !881, !535, !7, !331}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !937, file: !14, line: 1997, baseType: !1085, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!109, !957, !921, !535, !331}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !937, file: !14, line: 1999, baseType: !1089, size: 64, offset: 1280)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!931, !957, !881, !109}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !937, file: !14, line: 2001, baseType: !1093, size: 64, offset: 1344)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!109, !957, !881, !931, !109}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !937, file: !14, line: 2003, baseType: !1097, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!109, !957, !881, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !937, file: !14, line: 2005, baseType: !1103, size: 64, offset: 1472)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!109, !881, !1100}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !937, file: !14, line: 2006, baseType: !1107, size: 64, offset: 1536)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1110, !921}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1112)
!1112 = !{!1113, !1120}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1111, file: !14, line: 3193, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1115, line: 296, size: 128, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1114, file: !1115, line: 297, baseType: !231, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1114, file: !1115, line: 299, baseType: !219, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1114, file: !1115, line: 300, baseType: !221, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1111, file: !14, line: 3194, baseType: !726, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !922, file: !14, line: 655, baseType: !1122, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1554, !1727, !1767, !1850, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1867, !1871, !1872, !1875, !1878, !1881, !1884, !1885, !1886, !1927, !3786, !3787, !3788, !3789, !3790, !3791, !3794, !3796, !3803, !3804, !3805, !3806, !3865, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1123, file: !14, line: 1191, baseType: !274, size: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1123, file: !14, line: 1192, baseType: !992, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1123, file: !14, line: 1193, baseType: !263, size: 8, offset: 160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1123, file: !14, line: 1194, baseType: !420, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1123, file: !14, line: 1195, baseType: !584, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1123, file: !14, line: 1196, baseType: !1131, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1142, !1146, !1150, !1154, !1542, !1543, !1544, !1546, !1547, !1548, !1550, !1551, !1552, !1553}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1132, file: !14, line: 2367, baseType: !309, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1132, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1132, file: !14, line: 2376, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!109, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !878, line: 21, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1132, file: !14, line: 2377, baseType: !1143, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1132, file: !14, line: 2378, baseType: !1147, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!881, !1131, !109, !309, !221}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1132, file: !14, line: 2380, baseType: !1151, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !1122}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1132, file: !14, line: 2381, baseType: !1155, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1164, !1185, !1211, !1212, !1213, !1214, !1218, !1221, !1222, !1223, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1291, !1295, !1315, !1335, !1336, !1337, !1338, !1347, !1370, !1371, !1374, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1388, !1389, !1500, !1508, !1509, !1510, !1512, !1516, !1517, !1521, !1522, !1523, !1524, !1526, !1527, !1528, !1535, !1536, !1537, !1541}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1156, file: !6, line: 403, baseType: !5, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1156, file: !6, line: 406, baseType: !274, size: 128, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1156, file: !6, line: 409, baseType: !1161, size: 448, offset: 192)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 448, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 56)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1156, file: !6, line: 417, baseType: !1165, size: 768, offset: 640)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1173}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1165, file: !6, line: 46, baseType: !333, size: 512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1165, file: !6, line: 47, baseType: !1155, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1165, file: !6, line: 48, baseType: !332, size: 64, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1165, file: !6, line: 49, baseType: !1171, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1165, file: !6, line: 50, baseType: !1174, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1176, line: 26, size: 256, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1175, file: !1176, line: 27, baseType: !7, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1175, file: !1176, line: 28, baseType: !1180, size: 192, offset: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1181, line: 43, size: 192, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1180, file: !1181, line: 44, baseType: !576, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1180, file: !1181, line: 45, baseType: !274, size: 128, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1156, file: !6, line: 418, baseType: !1186, size: 64, offset: 1408)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1188)
!1188 = !{!1189, !1190, !1195, !1199, !1203, !1207}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1187, file: !6, line: 54, baseType: !409, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1187, file: !6, line: 55, baseType: !1191, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!403, !1186, !1194, !372}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1187, file: !6, line: 57, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!403, !1186, !1194, !309, !417}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1187, file: !6, line: 59, baseType: !1200, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !1155, !309}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1187, file: !6, line: 60, baseType: !1204, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!109, !1155}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1187, file: !6, line: 61, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1155}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1156, file: !6, line: 419, baseType: !309, size: 64, offset: 1472)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1156, file: !6, line: 420, baseType: !309, size: 64, offset: 1536)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1156, file: !6, line: 421, baseType: !332, size: 64, offset: 1600)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1156, file: !6, line: 424, baseType: !1215, size: 64, offset: 1664)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1156, file: !6, line: 425, baseType: !1219, size: 64, offset: 1728)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1156, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1156, file: !6, line: 435, baseType: !571, size: 256, offset: 1856)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1156, file: !6, line: 437, baseType: !1224, size: 64, offset: 2112)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1226, line: 69, size: 320, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1227 = !{!1228, !1229, !1230, !1247, !1249, !1253, !1254}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1225, file: !1226, line: 70, baseType: !309, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1225, file: !1226, line: 71, baseType: !1155, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1225, file: !1226, line: 72, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1226, line: 47, size: 256, elements: !1234)
!1234 = !{!1235, !1236, !1242, !1246}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !1226, line: 49, baseType: !7, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1233, file: !1226, line: 51, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!109, !309, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1233, file: !1226, line: 53, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!109, !372, !1240}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1233, file: !1226, line: 55, baseType: !454, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1225, file: !1226, line: 73, baseType: !1248, size: 16, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1225, file: !1226, line: 74, baseType: !1250, size: 8, offset: 208)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !260, line: 16, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !262, line: 20, baseType: !1252)
!1252 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !1226, line: 75, baseType: !259, size: 8, offset: 216)
!1254 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !1226, line: 76, baseType: !1255, size: 64, offset: 256)
!1255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !1226, line: 76, size: 64, elements: !1256)
!1256 = !{!1257, !1258, !1265}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1255, file: !1226, line: 77, baseType: !221, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1255, file: !1226, line: 78, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1226, line: 86, size: 128, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1261, file: !1226, line: 87, baseType: !7, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1261, file: !1226, line: 88, baseType: !372, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1255, file: !1226, line: 79, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1226, line: 92, size: 256, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1274, !1275}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1268, file: !1226, line: 94, baseType: !7, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1268, file: !1226, line: 95, baseType: !7, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1268, file: !1226, line: 96, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1268, file: !1226, line: 97, baseType: !1231, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1268, file: !1226, line: 98, baseType: !221, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1156, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1156, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1156, file: !6, line: 442, baseType: !1215, size: 64, offset: 2240)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1156, file: !6, line: 443, baseType: !1219, size: 64, offset: 2304)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1156, file: !6, line: 444, baseType: !435, size: 8, offset: 2368)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1156, file: !6, line: 451, baseType: !435, size: 8, offset: 2376)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1156, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1156, file: !6, line: 455, baseType: !1284, size: 64, offset: 2432)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1286, line: 23, size: 96, elements: !1287)
!1286 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1285, file: !1286, line: 24, baseType: !109, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1285, file: !1286, line: 24, baseType: !109, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1285, file: !1286, line: 24, baseType: !109, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1156, file: !6, line: 458, baseType: !1292, size: 64, offset: 2496)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!109}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1156, file: !6, line: 460, baseType: !1296, size: 4032, align: 512, offset: 2560)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1297, size: 4032, elements: !1313)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1298)
!1298 = !{!1299, !1300, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1297, file: !6, line: 363, baseType: !221, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1297, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1297, file: !6, line: 367, baseType: !1302, size: 448, offset: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1302, file: !6, line: 320, baseType: !1155, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1302, file: !6, line: 321, baseType: !1306, size: 384, offset: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1307, line: 40, size: 384, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1306, file: !1307, line: 41, baseType: !1310, size: 384, align: 64)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 384, align: 64, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 2)
!1313 = !{!1314}
!1314 = !DISubrange(count: 7)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1156, file: !6, line: 463, baseType: !1316, size: 192, offset: 6592)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1317, line: 8, size: 192, elements: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1318 = !{!1319, !1320, !1322}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1316, file: !1317, line: 10, baseType: !7, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1316, file: !1317, line: 11, baseType: !1321, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1316, file: !1317, line: 12, baseType: !1323, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1325, line: 59, size: 48, elements: !1326)
!1325 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1326 = !{!1327, !1330, !1331, !1332, !1333, !1334}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1324, file: !1325, line: 60, baseType: !1328, size: 16)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !260, line: 18, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !262, line: 23, baseType: !731)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1324, file: !1325, line: 61, baseType: !1328, size: 16, offset: 16)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1324, file: !1325, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1324, file: !1325, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1324, file: !1325, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1324, file: !1325, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1156, file: !6, line: 465, baseType: !420, size: 64, offset: 6784)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1156, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1156, file: !6, line: 470, baseType: !274, size: 128, offset: 6912)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1156, file: !6, line: 471, baseType: !1339, size: 64, offset: 7040)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1341, line: 33, size: 96, elements: !1342)
!1341 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1340, file: !1341, line: 37, baseType: !109, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1340, file: !1341, line: 43, baseType: !109, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1340, file: !1341, line: 45, baseType: !271, size: 16, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1340, file: !1341, line: 47, baseType: !271, size: 16, offset: 80)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1156, file: !6, line: 476, baseType: !1348, size: 64, offset: 7104)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1350)
!1350 = !{!1351, !1367, !1368, !1369}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1349, file: !6, line: 379, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1354, line: 204, baseType: !1355)
!1354 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1354, line: 197, size: 192, elements: !1356)
!1356 = !{!1357, !1359, !1360, !1361, !1363, !1365}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1355, file: !1354, line: 198, baseType: !1358, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1354, line: 21, baseType: !727)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1355, file: !1354, line: 199, baseType: !263, size: 8, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1355, file: !1354, line: 200, baseType: !263, size: 8, offset: 40)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1355, file: !1354, line: 201, baseType: !1362, size: 16, offset: 48)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1354, line: 17, baseType: !270)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1355, file: !1354, line: 202, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1354, line: 16, baseType: !677)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1355, file: !1354, line: 203, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1354, line: 22, baseType: !677)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1349, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1349, file: !6, line: 381, baseType: !372, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1349, file: !6, line: 382, baseType: !372, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1156, file: !6, line: 477, baseType: !1349, size: 256, offset: 7168)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1156, file: !6, line: 480, baseType: !1372, size: 64, offset: 7424)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1156, file: !6, line: 483, baseType: !1375, size: 64, offset: 7488)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1156, file: !6, line: 488, baseType: !372, size: 64, offset: 7552)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1156, file: !6, line: 492, baseType: !221, size: 64, offset: 7616)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1156, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1156, file: !6, line: 495, baseType: !221, size: 64, offset: 7744)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1156, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1156, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1156, file: !6, line: 500, baseType: !1384, size: 64, offset: 7872)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1386, line: 45, baseType: !1387)
!1386 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1156, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1156, file: !6, line: 504, baseType: !1390, size: 64, offset: 8000)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1393, line: 96, size: 192, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1394 = !{!1395, !1396, !1460, !1464}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1392, file: !1393, line: 97, baseType: !7, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1392, file: !1393, line: 98, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1393, line: 24, size: 3072, elements: !1399)
!1399 = !{!1400, !1402, !1403, !1404, !1405, !1419, !1420, !1421, !1422, !1434, !1445, !1446, !1457, !1458, !1459}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1398, file: !1393, line: 26, baseType: !1401, size: 128)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 128, elements: !1311)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1398, file: !1393, line: 27, baseType: !1401, size: 128, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1398, file: !1393, line: 28, baseType: !109, size: 32, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1398, file: !1393, line: 31, baseType: !231, size: 32, align: 512, offset: 512)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1398, file: !1393, line: 32, baseType: !1406, size: 960, offset: 576)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1407, line: 206, size: 960, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1408 = !{!1409, !1410, !1413, !1415, !1416, !1418}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1406, file: !1407, line: 207, baseType: !551, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1406, file: !1407, line: 208, baseType: !1411, size: 256, offset: 64)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 256, elements: !629)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1406, file: !1407, line: 209, baseType: !1414, size: 256, offset: 320)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 256, elements: !629)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1406, file: !1407, line: 213, baseType: !407, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1406, file: !1407, line: 215, baseType: !1417, size: 256, offset: 640)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 256, elements: !629)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1407, line: 216, baseType: !259, size: 8, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1398, file: !1393, line: 33, baseType: !420, size: 64, offset: 1536)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1398, file: !1393, line: 34, baseType: !420, size: 64, offset: 1600)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1398, file: !1393, line: 35, baseType: !435, size: 8, offset: 1664)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1398, file: !1393, line: 36, baseType: !1423, size: 320, offset: 1728)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1424, line: 11, size: 320, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1425 = !{!1426, !1427, !1428, !1433}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1423, file: !1424, line: 16, baseType: !624, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1423, file: !1424, line: 17, baseType: !420, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1423, file: !1424, line: 18, baseType: !1429, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !1424, line: 19, baseType: !726, size: 32, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1398, file: !1393, line: 37, baseType: !1435, size: 256, offset: 2048)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !182, line: 98, size: 256, elements: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1435, file: !182, line: 99, baseType: !561, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1435, file: !182, line: 100, baseType: !274, size: 128, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1435, file: !182, line: 101, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !182, line: 21, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !1444}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1398, file: !1393, line: 38, baseType: !548, size: 128, align: 64, offset: 2304)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1398, file: !1393, line: 39, baseType: !1447, size: 64, offset: 2432)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1393, line: 49, size: 768, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1448, file: !1393, line: 50, baseType: !231, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1448, file: !1393, line: 51, baseType: !1414, size: 256, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1448, file: !1393, line: 53, baseType: !1414, size: 256, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1448, file: !1393, line: 54, baseType: !420, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1448, file: !1393, line: 55, baseType: !1447, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1448, file: !1393, line: 56, baseType: !109, size: 32, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1448, file: !1393, line: 57, baseType: !109, size: 32, offset: 736)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1398, file: !1393, line: 40, baseType: !420, size: 64, offset: 2496)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1398, file: !1393, line: 42, baseType: !109, size: 32, offset: 2560)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1398, file: !1393, line: 43, baseType: !1391, size: 64, offset: 2624)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1392, file: !1393, line: 99, baseType: !1461, offset: 128)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1462, line: 211, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1463 = !{}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1392, file: !1393, line: 100, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1393, line: 63, size: 3008, elements: !1467)
!1467 = !{!1468, !1469, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1499}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1466, file: !1393, line: 64, baseType: !1447, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1466, file: !1393, line: 65, baseType: !1470, size: 192, offset: 64)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 192, elements: !373)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1466, file: !1393, line: 67, baseType: !109, size: 32, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1466, file: !1393, line: 68, baseType: !571, size: 256, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1393, line: 69, baseType: !231, size: 32, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1466, file: !1393, line: 70, baseType: !571, size: 256, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1466, file: !1393, line: 71, baseType: !420, size: 64, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1466, file: !1393, line: 72, baseType: !420, size: 64, offset: 960)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1466, file: !1393, line: 73, baseType: !420, size: 64, offset: 1024)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1466, file: !1393, line: 74, baseType: !420, size: 64, offset: 1088)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1466, file: !1393, line: 75, baseType: !420, size: 64, offset: 1152)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1466, file: !1393, line: 76, baseType: !420, size: 64, offset: 1216)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1466, file: !1393, line: 77, baseType: !420, size: 64, offset: 1280)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1466, file: !1393, line: 78, baseType: !420, size: 64, offset: 1344)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1466, file: !1393, line: 79, baseType: !435, size: 8, offset: 1408)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1466, file: !1393, line: 80, baseType: !420, size: 64, offset: 1472)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1466, file: !1393, line: 81, baseType: !571, size: 256, offset: 1536)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1466, file: !1393, line: 82, baseType: !1175, size: 256, offset: 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1466, file: !1393, line: 84, baseType: !251, size: 32, offset: 2048)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1466, file: !1393, line: 87, baseType: !420, size: 64, offset: 2112)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1466, file: !1393, line: 88, baseType: !420, size: 64, offset: 2176)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1466, file: !1393, line: 89, baseType: !1491, size: 704, offset: 2240)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !182, line: 111, size: 704, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1498}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1491, file: !182, line: 112, baseType: !1435, size: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1491, file: !182, line: 113, baseType: !1423, size: 320, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1491, file: !182, line: 116, baseType: !1496, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !182, line: 18, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1491, file: !182, line: 117, baseType: !109, size: 32, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1466, file: !1393, line: 90, baseType: !1391, size: 64, offset: 2944)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1156, file: !6, line: 515, baseType: !1501, size: 64, offset: 8064)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1503, line: 117, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1504 = !{!1505, !1506, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1502, file: !1503, line: 118, baseType: !693, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1502, file: !1503, line: 119, baseType: !693, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1502, file: !1503, line: 120, baseType: !407, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1156, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1156, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1156, file: !6, line: 520, baseType: !1511, size: 64, offset: 8192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1156, file: !6, line: 523, baseType: !1513, size: 64, offset: 8256)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1156, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1156, file: !6, line: 525, baseType: !1518, size: 64, offset: 8384)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1156, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1156, file: !6, line: 533, baseType: !221, size: 64, offset: 8512)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1156, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1156, file: !6, line: 535, baseType: !1525, size: 64, offset: 8640)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1156, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1156, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1156, file: !6, line: 540, baseType: !1529, size: 64, offset: 8768)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1531, line: 32, size: 64, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1530, file: !1531, line: 33, baseType: !693, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1530, file: !1531, line: 34, baseType: !693, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1156, file: !6, line: 563, baseType: !274, size: 128, offset: 8832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1156, file: !6, line: 565, baseType: !274, size: 128, offset: 8960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1156, file: !6, line: 568, baseType: !1538, size: 64, offset: 9088)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1156, file: !6, line: 570, baseType: !251, size: 32, offset: 9152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !14, line: 2382, baseType: !1131, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1132, file: !14, line: 2383, baseType: !620, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1132, file: !14, line: 2385, baseType: !1545, offset: 576)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1462, line: 206, elements: !1463)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1132, file: !14, line: 2386, baseType: !1545, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1132, file: !14, line: 2387, baseType: !1545, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1132, file: !14, line: 2388, baseType: !1549, offset: 576)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1545, elements: !373)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1132, file: !14, line: 2390, baseType: !1545, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1132, file: !14, line: 2391, baseType: !1545, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1132, file: !14, line: 2392, baseType: !1545, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1132, file: !14, line: 2393, baseType: !1545, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1123, file: !14, line: 1197, baseType: !1555, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1558)
!1558 = !{!1559, !1563, !1567, !1568, !1572, !1578, !1582, !1583, !1584, !1588, !1592, !1596, !1597, !1598, !1604, !1608, !1609, !1652, !1653, !1654, !1655, !1659, !1663, !1710, !1725, !1726}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1557, file: !14, line: 2058, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!921, !1122}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1557, file: !14, line: 2059, baseType: !1564, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !921}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1557, file: !14, line: 2060, baseType: !1564, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1557, file: !14, line: 2062, baseType: !1569, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !921, !109}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1557, file: !14, line: 2063, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!109, !921, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1557, file: !14, line: 2064, baseType: !1579, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!109, !921}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1557, file: !14, line: 2065, baseType: !1564, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1557, file: !14, line: 2066, baseType: !1151, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1557, file: !14, line: 2067, baseType: !1585, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!109, !1122, !109}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1557, file: !14, line: 2068, baseType: !1589, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!109, !1122, !13}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1557, file: !14, line: 2069, baseType: !1593, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!109, !1122}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1557, file: !14, line: 2070, baseType: !1589, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1557, file: !14, line: 2071, baseType: !1593, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1557, file: !14, line: 2072, baseType: !1599, size: 64, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!109, !881, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1557, file: !14, line: 2073, baseType: !1605, size: 64, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!109, !1122, !1321, !372}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1557, file: !14, line: 2074, baseType: !1151, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1557, file: !14, line: 2076, baseType: !1610, size: 64, offset: 1024)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!109, !1613, !881}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1615, line: 17, size: 960, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1647, !1648, !1651}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1614, file: !1615, line: 18, baseType: !372, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1614, file: !1615, line: 19, baseType: !417, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1614, file: !1615, line: 20, baseType: !417, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1614, file: !1615, line: 21, baseType: !417, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1614, file: !1615, line: 22, baseType: !417, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1614, file: !1615, line: 23, baseType: !584, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1614, file: !1615, line: 24, baseType: !584, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1614, file: !1615, line: 25, baseType: !571, size: 256, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1614, file: !1615, line: 26, baseType: !1626, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1615, line: 32, size: 256, elements: !1629)
!1629 = !{!1630, !1635, !1639, !1643}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1628, file: !1615, line: 33, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!221, !1613, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1628, file: !1615, line: 34, baseType: !1636, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1613, !221}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1628, file: !1615, line: 35, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!221, !1613, !221, !1634}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1628, file: !1615, line: 36, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!109, !1613, !221}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1614, file: !1615, line: 27, baseType: !109, size: 32, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1614, file: !1615, line: 28, baseType: !1649, size: 64, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1614, file: !1615, line: 29, baseType: !221, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1557, file: !14, line: 2077, baseType: !1610, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1557, file: !14, line: 2078, baseType: !1610, size: 64, offset: 1152)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1557, file: !14, line: 2079, baseType: !1610, size: 64, offset: 1216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1557, file: !14, line: 2081, baseType: !1656, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!403, !1122, !109, !372, !417, !584}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1557, file: !14, line: 2082, baseType: !1660, size: 64, offset: 1344)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!403, !1122, !109, !309, !417, !584}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1557, file: !14, line: 2083, baseType: !1664, size: 64, offset: 1408)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1667, !921}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1695, !1696, !1697}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1669, file: !51, line: 297, baseType: !624, size: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1669, file: !51, line: 298, baseType: !274, size: 128, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1669, file: !51, line: 299, baseType: !274, size: 128, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1669, file: !51, line: 300, baseType: !274, size: 128, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1669, file: !51, line: 301, baseType: !571, size: 256, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1669, file: !51, line: 302, baseType: !231, size: 32, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1669, file: !51, line: 303, baseType: !251, size: 32, offset: 800)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1669, file: !51, line: 304, baseType: !1122, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1669, file: !51, line: 305, baseType: !1680, size: 64, offset: 896)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !1681)
!1681 = !{!1682, !1694}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !51, line: 69, baseType: !1683, size: 32)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !51, line: 69, size: 32, elements: !1684)
!1684 = !{!1685, !1686, !1687}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1683, file: !51, line: 70, baseType: !466, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1683, file: !51, line: 71, baseType: !474, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1683, file: !51, line: 72, baseType: !1688, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1689, line: 24, baseType: !1690)
!1689 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 22, size: 32, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1690, file: !1689, line: 23, baseType: !1693, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1689, line: 20, baseType: !472)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1680, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1669, file: !51, line: 306, baseType: !584, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1669, file: !51, line: 307, baseType: !420, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1669, file: !51, line: 308, baseType: !1698, size: 576, offset: 1088)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !1699)
!1699 = !{!1700, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1698, file: !51, line: 206, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !569)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1698, file: !51, line: 207, baseType: !1701, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1698, file: !51, line: 208, baseType: !1701, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1698, file: !51, line: 209, baseType: !1701, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1698, file: !51, line: 210, baseType: !1701, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1698, file: !51, line: 211, baseType: !1701, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1698, file: !51, line: 212, baseType: !1701, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1698, file: !51, line: 213, baseType: !717, size: 64, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1698, file: !51, line: 214, baseType: !717, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1557, file: !14, line: 2085, baseType: !1711, size: 64, offset: 1472)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!407, !1122, !1714}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1716, line: 15, size: 256, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1717 = !{!1718, !1719, !1720, !1721, !1722}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1715, file: !1716, line: 16, baseType: !219, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1715, file: !1716, line: 19, baseType: !109, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1715, file: !1716, line: 26, baseType: !420, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1715, file: !1716, line: 33, baseType: !420, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1715, file: !1716, line: 36, baseType: !1723, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1716, line: 36, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1557, file: !14, line: 2087, baseType: !1711, size: 64, offset: 1536)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1557, file: !14, line: 2089, baseType: !1151, size: 64, offset: 1600)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1123, file: !14, line: 1198, baseType: !1728, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !1731)
!1731 = !{!1732, !1736, !1740, !1744, !1745, !1746, !1747, !1748, !1753, !1758, !1762}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1730, file: !51, line: 325, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!109, !1668}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1730, file: !51, line: 326, baseType: !1737, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1668, !1122, !109}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1730, file: !51, line: 327, baseType: !1741, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1668}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1730, file: !51, line: 328, baseType: !1733, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1730, file: !51, line: 329, baseType: !1733, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1730, file: !51, line: 330, baseType: !1733, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1730, file: !51, line: 331, baseType: !1585, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1730, file: !51, line: 334, baseType: !1749, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1752, !921}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1730, file: !51, line: 335, baseType: !1754, size: 64, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!109, !921, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1730, file: !51, line: 337, baseType: !1759, size: 64, offset: 576)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!109, !921, !1752}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1730, file: !51, line: 339, baseType: !1763, size: 64, offset: 640)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!109, !1122, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1123, file: !14, line: 1199, baseType: !1768, size: 64, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !1771)
!1771 = !{!1772, !1776, !1777, !1781, !1782, !1783, !1798, !1821, !1825, !1826, !1849}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1770, file: !51, line: 431, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!109, !1122, !109, !109, !1039}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1770, file: !51, line: 432, baseType: !1585, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1770, file: !51, line: 433, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!109, !1122, !7}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1770, file: !51, line: 434, baseType: !1778, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1770, file: !51, line: 435, baseType: !1585, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1770, file: !51, line: 436, baseType: !1784, size: 64, offset: 320)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!109, !1122, !109, !1787}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1788, file: !51, line: 418, baseType: !109, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1788, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1788, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1788, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1788, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1788, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1788, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1788, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1770, file: !51, line: 437, baseType: !1799, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!109, !1122, !1680, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1803, file: !51, line: 346, baseType: !109, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1803, file: !51, line: 347, baseType: !676, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1803, file: !51, line: 348, baseType: !676, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1803, file: !51, line: 349, baseType: !676, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1803, file: !51, line: 350, baseType: !676, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1803, file: !51, line: 351, baseType: !676, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1803, file: !51, line: 352, baseType: !676, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1803, file: !51, line: 353, baseType: !567, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1803, file: !51, line: 355, baseType: !567, size: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1803, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1803, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1803, file: !51, line: 358, baseType: !676, size: 64, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1803, file: !51, line: 359, baseType: !676, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1803, file: !51, line: 360, baseType: !676, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1803, file: !51, line: 361, baseType: !567, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1803, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1770, file: !51, line: 438, baseType: !1822, size: 64, offset: 448)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!109, !1122, !1766, !1802}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1770, file: !51, line: 440, baseType: !1799, size: 64, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1770, file: !51, line: 441, baseType: !1827, size: 64, offset: 576)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!109, !1122, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1831, file: !51, line: 412, baseType: !7, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1831, file: !51, line: 413, baseType: !1835, size: 1344, offset: 64)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1836, size: 1344, elements: !373)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1848}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !51, line: 398, baseType: !7, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1836, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1836, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1836, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1836, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1836, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1836, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1836, file: !51, line: 406, baseType: !678, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1836, file: !51, line: 407, baseType: !1847, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !220, line: 132, baseType: !676)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1836, file: !51, line: 408, baseType: !1847, size: 64, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1770, file: !51, line: 442, baseType: !1778, size: 64, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1123, file: !14, line: 1200, baseType: !1851, size: 64, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1123, file: !14, line: 1201, baseType: !420, size: 64, offset: 640)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1123, file: !14, line: 1202, baseType: !420, size: 64, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1123, file: !14, line: 1203, baseType: !420, size: 64, offset: 768)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1123, file: !14, line: 1204, baseType: !881, size: 64, offset: 832)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1123, file: !14, line: 1205, baseType: !701, size: 320, offset: 896)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1123, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1123, file: !14, line: 1207, baseType: !251, size: 32, offset: 1248)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1123, file: !14, line: 1209, baseType: !221, size: 64, offset: 1280)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1123, file: !14, line: 1211, baseType: !1863, size: 64, offset: 1344)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1123, file: !14, line: 1223, baseType: !1868, size: 64, offset: 1408)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !898, line: 34, size: 64, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1868, file: !898, line: 35, baseType: !901, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1123, file: !14, line: 1224, baseType: !274, size: 128, offset: 1472)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1123, file: !14, line: 1225, baseType: !1873, size: 64, offset: 1600)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1123, file: !14, line: 1226, baseType: !1876, size: 64, offset: 1664)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1123, file: !14, line: 1227, baseType: !1879, size: 64, offset: 1728)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1123, file: !14, line: 1228, baseType: !1882, size: 64, offset: 1792)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1123, file: !14, line: 1229, baseType: !624, size: 128, offset: 1856)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1123, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1123, file: !14, line: 1231, baseType: !1887, size: 2496, offset: 2048)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1893, !1925}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1887, file: !51, line: 522, baseType: !7, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1887, file: !51, line: 523, baseType: !701, size: 320, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1887, file: !51, line: 524, baseType: !1892, size: 192, offset: 384)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 192, elements: !373)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1887, file: !51, line: 525, baseType: !1894, size: 1728, offset: 576)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 1728, elements: !373)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !1896)
!1896 = !{!1897, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1895, file: !51, line: 223, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !1900)
!1900 = !{!1901, !1902, !1915, !1916}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1899, file: !51, line: 446, baseType: !109, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1899, file: !51, line: 447, baseType: !1903, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1905, file: !51, line: 313, baseType: !1585, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1905, file: !51, line: 314, baseType: !1585, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1905, file: !51, line: 315, baseType: !1585, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1905, file: !51, line: 316, baseType: !1585, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1905, file: !51, line: 317, baseType: !1733, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1905, file: !51, line: 318, baseType: !1733, size: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1905, file: !51, line: 319, baseType: !1733, size: 64, offset: 384)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1905, file: !51, line: 320, baseType: !1763, size: 64, offset: 448)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1899, file: !51, line: 448, baseType: !1155, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1899, file: !51, line: 449, baseType: !1898, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1895, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1895, file: !51, line: 226, baseType: !274, size: 128, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1895, file: !51, line: 227, baseType: !420, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1895, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1895, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1895, file: !51, line: 230, baseType: !1701, size: 64, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1895, file: !51, line: 231, baseType: !1701, size: 64, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1895, file: !51, line: 232, baseType: !221, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1887, file: !51, line: 526, baseType: !1926, size: 192, offset: 2304)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1903, size: 192, elements: !373)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1123, file: !14, line: 1233, baseType: !1928, size: 2368, offset: 4544)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1929)
!1929 = !{!1930, !1931, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1928, file: !14, line: 1185, baseType: !271, size: 16)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1928, file: !14, line: 1186, baseType: !271, size: 16, offset: 16)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1928, file: !14, line: 1187, baseType: !1933, size: 2304, offset: 64)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1934, size: 2304, elements: !373)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1935, line: 12, size: 768, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1936 = !{!1937, !1945, !1946, !3784, !3785}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1934, file: !1935, line: 13, baseType: !1938, size: 384)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1939, line: 17, size: 384, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1938, file: !1939, line: 18, baseType: !109, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1938, file: !1939, line: 19, baseType: !109, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1938, file: !1939, line: 20, baseType: !633, size: 192, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1938, file: !1939, line: 22, baseType: !548, size: 128, align: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1934, file: !1935, line: 14, baseType: !1273, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1934, file: !1935, line: 15, baseType: !1947, size: 64, offset: 448)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1948, line: 16, size: 64, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1947, file: !1948, line: 17, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1953, line: 746, size: 58368, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1954 = !{!1955, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !2035, !2046, !2138, !2142, !2145, !2176, !2177, !2178, !2179, !2190, !2192, !2193, !2194, !2195, !2196, !2197, !2208, !2209, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2226, !2227, !2234, !2235, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2467, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2515, !2521, !2522, !2523, !2524, !2525, !2529, !2532, !2539, !2544, !2547, !2550, !2553, !2556, !2694, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2732, !2733, !2734, !2743, !2751, !2752, !2753, !2754, !2755, !2760, !2761, !2762, !2765, !2766, !2769, !2772, !2775, !2783, !2786, !2787, !2873, !2874, !2875, !2876, !2877, !2883, !2884, !2885, !2886, !2889, !2890, !2893, !2896, !2897, !2900, !2901, !2902, !2905, !2906, !2907, !2910, !2911, !2912, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2944, !2947, !3439, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3451, !3523, !3525, !3526, !3527, !3528, !3529, !3530, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3559, !3560, !3561}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1952, file: !1953, line: 752, baseType: !1956, size: 192)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1957, line: 56, size: 192, elements: !1958)
!1957 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1958 = !{!1959, !1960, !1961, !1962}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1956, file: !1957, line: 57, baseType: !420, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1956, file: !1957, line: 58, baseType: !420, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1956, file: !1957, line: 59, baseType: !726, size: 32, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1956, file: !1957, line: 61, baseType: !726, size: 32, offset: 160)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1952, file: !1953, line: 754, baseType: !7, size: 32, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1952, file: !1953, line: 767, baseType: !221, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1952, file: !1953, line: 768, baseType: !293, size: 32, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !1953, line: 770, baseType: !7, size: 32, offset: 352)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1952, file: !1953, line: 771, baseType: !7, size: 32, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1952, file: !1953, line: 774, baseType: !109, size: 32, offset: 416)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1952, file: !1953, line: 775, baseType: !1970, size: 128, offset: 448)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1971, line: 58, size: 128, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1972 = !{!1973, !1974, !1979, !1980}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1970, file: !1971, line: 59, baseType: !542, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1971, line: 60, baseType: !1975, size: 32, offset: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1971, line: 60, size: 32, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1975, file: !1971, line: 61, baseType: !7, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1975, file: !1971, line: 62, baseType: !251, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1970, file: !1971, line: 65, baseType: !269, size: 16, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1970, file: !1971, line: 65, baseType: !269, size: 16, offset: 112)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1952, file: !1953, line: 776, baseType: !7, size: 32, offset: 576)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1952, file: !1953, line: 777, baseType: !420, size: 64, offset: 640)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1952, file: !1953, line: 778, baseType: !1951, size: 64, offset: 704)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1952, file: !1953, line: 787, baseType: !109, size: 32, offset: 768)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1952, file: !1953, line: 788, baseType: !109, size: 32, offset: 800)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1952, file: !1953, line: 790, baseType: !109, size: 32, offset: 832)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1952, file: !1953, line: 792, baseType: !109, size: 32, offset: 864)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1952, file: !1953, line: 793, baseType: !109, size: 32, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1952, file: !1953, line: 794, baseType: !109, size: 32, offset: 928)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1952, file: !1953, line: 795, baseType: !7, size: 32, offset: 960)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1952, file: !1953, line: 797, baseType: !1992, size: 2048, offset: 1024)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1953, line: 551, size: 2048, elements: !1993)
!1993 = !{!1994, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2014, !2017, !2018, !2019}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1992, file: !1953, line: 553, baseType: !1995, size: 128)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1953, line: 411, size: 128, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1995, file: !1953, line: 412, baseType: !420, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1995, file: !1953, line: 413, baseType: !726, size: 32, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1992, file: !1953, line: 554, baseType: !490, size: 192, align: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1992, file: !1953, line: 555, baseType: !676, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1992, file: !1953, line: 556, baseType: !676, size: 64, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1992, file: !1953, line: 558, baseType: !274, size: 128, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1992, file: !1953, line: 559, baseType: !7, size: 32, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1992, file: !1953, line: 561, baseType: !676, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1992, file: !1953, line: 562, baseType: !676, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1992, file: !1953, line: 563, baseType: !676, size: 64, offset: 768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1992, file: !1953, line: 564, baseType: !676, size: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1992, file: !1953, line: 565, baseType: !567, size: 64, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1992, file: !1953, line: 566, baseType: !676, size: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1992, file: !1953, line: 568, baseType: !676, size: 64, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1992, file: !1953, line: 571, baseType: !109, size: 32, offset: 1088)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1992, file: !1953, line: 572, baseType: !2013, size: 64, offset: 1152)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1992, file: !1953, line: 574, baseType: !2015, size: 64, offset: 1216)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1953, line: 49, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1992, file: !1953, line: 576, baseType: !2015, size: 64, offset: 1280)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1992, file: !1953, line: 578, baseType: !420, size: 64, offset: 1344)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1992, file: !1953, line: 588, baseType: !2020, size: 512, align: 512, offset: 1536)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1953, line: 497, size: 512, align: 512, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2020, file: !1953, line: 498, baseType: !676, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2020, file: !1953, line: 499, baseType: !676, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2020, file: !1953, line: 500, baseType: !676, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2020, file: !1953, line: 501, baseType: !726, size: 32, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2020, file: !1953, line: 502, baseType: !726, size: 32, offset: 224)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2020, file: !1953, line: 503, baseType: !420, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2020, file: !1953, line: 504, baseType: !420, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2020, file: !1953, line: 505, baseType: !420, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2020, file: !1953, line: 506, baseType: !2031, size: 64, align: 64, offset: 448)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1953, line: 445, size: 64, align: 64, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2031, file: !1953, line: 446, baseType: !7, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2031, file: !1953, line: 447, baseType: !7, size: 32, offset: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1952, file: !1953, line: 798, baseType: !2036, size: 384, offset: 3072)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1953, line: 592, size: 384, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2036, file: !1953, line: 593, baseType: !274, size: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2036, file: !1953, line: 594, baseType: !420, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2036, file: !1953, line: 595, baseType: !420, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2036, file: !1953, line: 596, baseType: !7, size: 32, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2036, file: !1953, line: 597, baseType: !271, size: 16, offset: 288)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2036, file: !1953, line: 598, baseType: !271, size: 16, offset: 304)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2036, file: !1953, line: 600, baseType: !2045, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1952, file: !1953, line: 799, baseType: !2047, size: 1792, offset: 3456)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1953, line: 610, size: 1792, elements: !2048)
!2048 = !{!2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2135, !2136}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2047, file: !1953, line: 611, baseType: !490, size: 192, align: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2047, file: !1953, line: 618, baseType: !676, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2047, file: !1953, line: 619, baseType: !676, size: 64, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2047, file: !1953, line: 620, baseType: !676, size: 64, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2047, file: !1953, line: 621, baseType: !676, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2047, file: !1953, line: 622, baseType: !676, size: 64, offset: 448)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2047, file: !1953, line: 629, baseType: !567, size: 64, offset: 512)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2047, file: !1953, line: 630, baseType: !676, size: 64, offset: 576)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2047, file: !1953, line: 631, baseType: !7, size: 32, offset: 640)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2047, file: !1953, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2047, file: !1953, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2047, file: !1953, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2047, file: !1953, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2047, file: !1953, line: 662, baseType: !2063, size: 512, offset: 704)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2064)
!2064 = !{!2065, !2073, !2074, !2079, !2131, !2132, !2133, !2134}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2063, file: !57, line: 119, baseType: !2066, size: 256)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2067, line: 9, size: 256, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2066, file: !2067, line: 10, baseType: !490, size: 192, align: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2066, file: !2067, line: 11, baseType: !2071, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2072, line: 29, baseType: !567)
!2072 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2063, file: !57, line: 120, baseType: !2071, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2063, file: !57, line: 121, baseType: !2075, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!56, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2063, file: !57, line: 122, baseType: !2080, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2082)
!2082 = !{!2083, !2108, !2109, !2112, !2117, !2118, !2126, !2130}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2081, file: !57, line: 160, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2085, file: !57, line: 216, baseType: !576, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2085, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2085, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2085, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2085, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2085, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2085, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2085, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2085, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2085, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2085, file: !57, line: 227, baseType: !271, size: 16, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2085, file: !57, line: 228, baseType: !271, size: 16, offset: 208)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2085, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2085, file: !57, line: 235, baseType: !2071, size: 64, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2085, file: !57, line: 236, baseType: !2078, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2085, file: !57, line: 237, baseType: !2071, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2085, file: !57, line: 238, baseType: !2078, size: 64, offset: 448)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2085, file: !57, line: 239, baseType: !2105, size: 4096, align: 512, offset: 512)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2081, size: 4096, align: 512, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 8)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2081, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2081, file: !57, line: 162, baseType: !2110, size: 32, offset: 96)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !220, line: 32, baseType: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !405, line: 96, baseType: !109)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2081, file: !57, line: 163, baseType: !2113, size: 32, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !888, line: 274, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !888, line: 274, size: 32, elements: !2115)
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2114, file: !888, line: 274, baseType: !892, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2081, file: !57, line: 164, baseType: !2078, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2081, file: !57, line: 165, baseType: !2119, size: 128, offset: 256)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2067, line: 14, size: 128, elements: !2120)
!2120 = !{!2121}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2119, file: !2067, line: 15, baseType: !2122, size: 128)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !491, line: 26, size: 128, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2122, file: !491, line: 27, baseType: !507, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2122, file: !491, line: 28, baseType: !495, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2081, file: !57, line: 166, baseType: !2127, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2071}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2081, file: !57, line: 167, baseType: !2071, size: 64, offset: 448)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2063, file: !57, line: 123, baseType: !259, size: 8, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2063, file: !57, line: 124, baseType: !259, size: 8, offset: 456)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2063, file: !57, line: 125, baseType: !259, size: 8, offset: 464)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2063, file: !57, line: 126, baseType: !259, size: 8, offset: 472)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2047, file: !1953, line: 671, baseType: !2063, size: 512, offset: 1216)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2047, file: !1953, line: 679, baseType: !2137, size: 64, offset: 1728)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1952, file: !1953, line: 800, baseType: !2139, size: 64, offset: 5248)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1953, line: 800, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1952, file: !1953, line: 809, baseType: !2143, size: 64, offset: 5312)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1953, line: 70, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1952, file: !1953, line: 825, baseType: !2146, size: 2048, align: 512, offset: 5632)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1953, line: 509, size: 2048, align: 512, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2146, file: !1953, line: 511, baseType: !676, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2146, file: !1953, line: 512, baseType: !676, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2146, file: !1953, line: 513, baseType: !676, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2146, file: !1953, line: 514, baseType: !676, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2146, file: !1953, line: 515, baseType: !676, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2146, file: !1953, line: 516, baseType: !676, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2146, file: !1953, line: 518, baseType: !676, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2146, file: !1953, line: 519, baseType: !676, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2146, file: !1953, line: 520, baseType: !567, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2146, file: !1953, line: 522, baseType: !676, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2146, file: !1953, line: 523, baseType: !676, size: 64, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2146, file: !1953, line: 524, baseType: !567, size: 64, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2146, file: !1953, line: 526, baseType: !567, size: 64, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2146, file: !1953, line: 527, baseType: !676, size: 64, offset: 832)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2146, file: !1953, line: 529, baseType: !676, size: 64, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2146, file: !1953, line: 530, baseType: !676, size: 64, offset: 960)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2146, file: !1953, line: 531, baseType: !676, size: 64, offset: 1024)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2146, file: !1953, line: 532, baseType: !676, size: 64, offset: 1088)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2146, file: !1953, line: 533, baseType: !676, size: 64, offset: 1152)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2146, file: !1953, line: 535, baseType: !676, size: 64, offset: 1216)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2146, file: !1953, line: 536, baseType: !676, size: 64, offset: 1280)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2146, file: !1953, line: 537, baseType: !676, size: 64, offset: 1344)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2146, file: !1953, line: 538, baseType: !676, size: 64, offset: 1408)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2146, file: !1953, line: 539, baseType: !676, size: 64, offset: 1472)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2146, file: !1953, line: 540, baseType: !676, size: 64, offset: 1536)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2146, file: !1953, line: 541, baseType: !676, size: 64, offset: 1600)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2146, file: !1953, line: 542, baseType: !676, size: 64, offset: 1664)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2146, file: !1953, line: 543, baseType: !676, size: 64, offset: 1728)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1952, file: !1953, line: 833, baseType: !7, size: 32, offset: 7680)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1952, file: !1953, line: 836, baseType: !7, size: 32, offset: 7712)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1952, file: !1953, line: 837, baseType: !109, size: 32, offset: 7744)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1952, file: !1953, line: 838, baseType: !2180, size: 64, offset: 7808)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2183, line: 19, baseType: !2184)
!2183 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2183, line: 19, size: 64, elements: !2185)
!2185 = !{!2186}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2184, file: !2183, line: 19, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 64, elements: !2188)
!2188 = !{!2189}
!2189 = !DISubrange(count: 1)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1952, file: !1953, line: 839, baseType: !2191, size: 64, offset: 7872)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1952, file: !1953, line: 840, baseType: !2182, size: 64, offset: 7936)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1952, file: !1953, line: 841, baseType: !221, size: 64, offset: 8000)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1952, file: !1953, line: 843, baseType: !271, size: 16, offset: 8064)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1952, file: !1953, line: 845, baseType: !271, size: 16, offset: 8080)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1952, file: !1953, line: 848, baseType: !109, size: 32, offset: 8096)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1952, file: !1953, line: 849, baseType: !2198, size: 32, offset: 8128)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1953, line: 718, size: 32, elements: !2199)
!2199 = !{!2200, !2207}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2198, file: !1953, line: 724, baseType: !2201, size: 32)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2198, file: !1953, line: 719, size: 32, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2201, file: !1953, line: 720, baseType: !259, size: 8)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2201, file: !1953, line: 721, baseType: !259, size: 8, offset: 8)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2201, file: !1953, line: 722, baseType: !259, size: 8, offset: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2201, file: !1953, line: 723, baseType: !259, size: 8, offset: 24)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2198, file: !1953, line: 725, baseType: !726, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1952, file: !1953, line: 850, baseType: !274, size: 128, offset: 8192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1952, file: !1953, line: 851, baseType: !2210, size: 64, offset: 8320)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1953, line: 60, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1952, file: !1953, line: 855, baseType: !420, size: 64, offset: 8384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1952, file: !1953, line: 856, baseType: !259, size: 8, offset: 8448)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1952, file: !1953, line: 857, baseType: !259, size: 8, offset: 8456)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1952, file: !1953, line: 858, baseType: !109, size: 32, offset: 8480)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1952, file: !1953, line: 859, baseType: !274, size: 128, offset: 8512)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1952, file: !1953, line: 860, baseType: !109, size: 32, offset: 8640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1952, file: !1953, line: 861, baseType: !274, size: 128, offset: 8704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1952, file: !1953, line: 873, baseType: !2220, size: 256, offset: 8832)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1953, line: 376, size: 256, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2220, file: !1953, line: 381, baseType: !420, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2220, file: !1953, line: 384, baseType: !678, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2220, file: !1953, line: 389, baseType: !678, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2220, file: !1953, line: 392, baseType: !678, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1952, file: !1953, line: 875, baseType: !274, size: 128, offset: 9088)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1952, file: !1953, line: 877, baseType: !2228, size: 320, offset: 9216)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2229, line: 86, size: 320, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2228, file: !2229, line: 87, baseType: !109, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2228, file: !2229, line: 88, baseType: !274, size: 128, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2228, file: !2229, line: 89, baseType: !274, size: 128, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1952, file: !1953, line: 878, baseType: !490, size: 192, align: 64, offset: 9536)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1952, file: !1953, line: 881, baseType: !2236, size: 64, offset: 9728)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !2238)
!2238 = !{!2239, !2386}
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !27, line: 734, baseType: !2240, size: 10240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2237, file: !27, line: 734, size: 10240, elements: !2241)
!2241 = !{!2242, !2246, !2259, !2263, !2264, !2265, !2266, !2267, !2268, !2277, !2278, !2279, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2318, !2320, !2323, !2366, !2367, !2368, !2371, !2372, !2373, !2376, !2377, !2378, !2384, !2385}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !27, line: 739, baseType: !2243, size: 512, align: 512)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !27, line: 739, size: 512, align: 512, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2243, file: !27, line: 747, baseType: !251, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2240, file: !27, line: 750, baseType: !2247, size: 128, offset: 512)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2248, line: 218, size: 128, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2249 = !{!2250, !2257, !2258}
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !2248, line: 219, baseType: !2251, size: 32)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2247, file: !2248, line: 219, size: 32, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2251, file: !2248, line: 220, baseType: !231, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2251, file: !2248, line: 221, baseType: !2255)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2248, line: 197, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2248, line: 197, elements: !1463)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2247, file: !2248, line: 223, baseType: !7, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2247, file: !2248, line: 224, baseType: !221, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2240, file: !27, line: 752, baseType: !2260, size: 64, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!420, !535, !420, !420, !420, !420}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2240, file: !27, line: 756, baseType: !420, size: 64, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2240, file: !27, line: 757, baseType: !420, size: 64, offset: 768)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2240, file: !27, line: 760, baseType: !420, size: 64, offset: 832)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2240, file: !27, line: 761, baseType: !420, size: 64, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2240, file: !27, line: 763, baseType: !420, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2240, file: !27, line: 764, baseType: !2269, size: 64, offset: 1024)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2271, line: 299, baseType: !2272)
!2271 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2271, line: 299, size: 64, elements: !2273)
!2273 = !{!2274}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2272, file: !2271, line: 299, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2276, line: 18, baseType: !420)
!2276 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2240, file: !27, line: 773, baseType: !251, size: 32, offset: 1088)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2240, file: !27, line: 785, baseType: !251, size: 32, offset: 1120)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2240, file: !27, line: 795, baseType: !2280, size: 64, offset: 1152)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2281, file: !27, line: 727, baseType: !676, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2281, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2240, file: !27, line: 801, baseType: !420, size: 64, offset: 1216)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2240, file: !27, line: 804, baseType: !561, size: 64, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2240, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2240, file: !27, line: 808, baseType: !231, size: 32, offset: 1376)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2240, file: !27, line: 823, baseType: !701, size: 320, offset: 1408)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2240, file: !27, line: 825, baseType: !274, size: 128, offset: 1728)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2240, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2240, file: !27, line: 849, baseType: !420, size: 64, offset: 1920)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2240, file: !27, line: 850, baseType: !420, size: 64, offset: 1984)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2240, file: !27, line: 852, baseType: !420, size: 64, offset: 2048)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2240, file: !27, line: 853, baseType: !420, size: 64, offset: 2112)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2240, file: !27, line: 854, baseType: !563, size: 64, offset: 2176)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2240, file: !27, line: 855, baseType: !420, size: 64, offset: 2240)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2240, file: !27, line: 856, baseType: !420, size: 64, offset: 2304)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2240, file: !27, line: 857, baseType: !420, size: 64, offset: 2368)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2240, file: !27, line: 858, baseType: !420, size: 64, offset: 2432)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2240, file: !27, line: 865, baseType: !892, size: 32, offset: 2496)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2240, file: !27, line: 867, baseType: !231, size: 32, offset: 2528)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2240, file: !27, line: 869, baseType: !420, size: 64, offset: 2560)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2240, file: !27, line: 869, baseType: !420, size: 64, offset: 2624)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2240, file: !27, line: 869, baseType: !420, size: 64, offset: 2688)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2240, file: !27, line: 869, baseType: !420, size: 64, offset: 2752)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2240, file: !27, line: 870, baseType: !420, size: 64, offset: 2816)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2240, file: !27, line: 870, baseType: !420, size: 64, offset: 2880)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2240, file: !27, line: 870, baseType: !420, size: 64, offset: 2944)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2240, file: !27, line: 871, baseType: !420, size: 64, offset: 3008)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2240, file: !27, line: 871, baseType: !420, size: 64, offset: 3072)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2240, file: !27, line: 871, baseType: !420, size: 64, offset: 3136)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2240, file: !27, line: 871, baseType: !420, size: 64, offset: 3200)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2240, file: !27, line: 873, baseType: !2315, size: 3328, offset: 3264)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 3328, elements: !2316)
!2316 = !{!2317}
!2317 = !DISubrange(count: 52)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2240, file: !27, line: 875, baseType: !2319, size: 1280, offset: 6592)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 1280, elements: !629)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2240, file: !27, line: 877, baseType: !2321, size: 64, offset: 7872)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2240, file: !27, line: 880, baseType: !2324, size: 1088, offset: 7936)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2325, line: 72, baseType: !2326)
!2325 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2325, line: 23, size: 1088, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2335, !2336, !2337, !2338, !2363, !2364, !2365}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2326, file: !2325, line: 28, baseType: !676, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2326, file: !2325, line: 38, baseType: !563, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2326, file: !2325, line: 40, baseType: !420, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2326, file: !2325, line: 43, baseType: !701, size: 320, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2326, file: !2325, line: 44, baseType: !2333, size: 64, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2325, line: 44, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !2325, line: 48, baseType: !420, size: 64, offset: 576)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2326, file: !2325, line: 59, baseType: !571, size: 256, offset: 640)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2326, file: !2325, line: 60, baseType: !221, size: 64, offset: 896)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2326, file: !2325, line: 61, baseType: !2339, size: 64, offset: 960)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2341)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2342, line: 13, size: 1216, elements: !2343)
!2342 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2341, file: !2342, line: 14, baseType: !221, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2341, file: !2342, line: 15, baseType: !420, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2341, file: !2342, line: 17, baseType: !420, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2341, file: !2342, line: 17, baseType: !420, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2341, file: !2342, line: 18, baseType: !420, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2341, file: !2342, line: 18, baseType: !420, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2341, file: !2342, line: 19, baseType: !445, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2341, file: !2342, line: 21, baseType: !407, size: 64, offset: 448)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2341, file: !2342, line: 23, baseType: !407, size: 64, offset: 512)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2341, file: !2342, line: 24, baseType: !407, size: 64, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2341, file: !2342, line: 25, baseType: !407, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2341, file: !2342, line: 26, baseType: !407, size: 64, offset: 704)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2341, file: !2342, line: 27, baseType: !407, size: 64, offset: 768)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2341, file: !2342, line: 28, baseType: !407, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2341, file: !2342, line: 29, baseType: !407, size: 64, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2341, file: !2342, line: 30, baseType: !407, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2341, file: !2342, line: 31, baseType: !407, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2341, file: !2342, line: 32, baseType: !407, size: 64, offset: 1088)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2341, file: !2342, line: 33, baseType: !407, size: 64, offset: 1152)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2326, file: !2325, line: 63, baseType: !251, size: 32, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2326, file: !2325, line: 69, baseType: !269, size: 16, offset: 1056)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2326, file: !2325, line: 70, baseType: !1328, size: 16, offset: 1072)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !27, line: 882, baseType: !420, size: 64, offset: 9024)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2240, file: !27, line: 885, baseType: !231, size: 32, offset: 9088)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2240, file: !27, line: 886, baseType: !2369, size: 64, offset: 9152)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2240, file: !27, line: 901, baseType: !843, size: 64, offset: 9216)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2240, file: !27, line: 904, baseType: !535, size: 64, offset: 9280)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2240, file: !27, line: 906, baseType: !2374, size: 64, offset: 9344)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2240, file: !27, line: 930, baseType: !251, size: 32, offset: 9408)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2240, file: !27, line: 933, baseType: !251, size: 32, offset: 9440)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2240, file: !27, line: 935, baseType: !2379, size: 64, offset: 9472)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2380)
!2380 = !{!2381}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2379, file: !68, line: 104, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2240, file: !27, line: 940, baseType: !561, size: 64, offset: 9536)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2240, file: !27, line: 942, baseType: !1435, size: 256, offset: 9600)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2237, file: !27, line: 986, baseType: !2387, offset: 10240)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, elements: !648)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1952, file: !1953, line: 882, baseType: !2236, size: 64, offset: 9792)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1952, file: !1953, line: 884, baseType: !109, size: 32, offset: 9856)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1952, file: !1953, line: 885, baseType: !109, size: 32, offset: 9888)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1952, file: !1953, line: 886, baseType: !109, size: 32, offset: 9920)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1952, file: !1953, line: 888, baseType: !109, size: 32, offset: 9952)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1952, file: !1953, line: 890, baseType: !420, size: 64, offset: 9984)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1952, file: !1953, line: 893, baseType: !7, size: 32, offset: 10048)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1952, file: !1953, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1952, file: !1953, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1952, file: !1953, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1952, file: !1953, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1952, file: !1953, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1952, file: !1953, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1952, file: !1953, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1952, file: !1953, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1952, file: !1953, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1952, file: !1953, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1952, file: !1953, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1952, file: !1953, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1952, file: !1953, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1952, file: !1953, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1952, file: !1953, line: 969, baseType: !420, size: 64, offset: 10176)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1952, file: !1953, line: 971, baseType: !2411, size: 448, offset: 10240)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2412)
!2412 = !{!2413, !2414, !2419}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2411, file: !62, line: 26, baseType: !420, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2411, file: !62, line: 27, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!407, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2411, file: !62, line: 28, baseType: !2420, size: 320, offset: 128)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2411, file: !62, line: 28, size: 320, elements: !2421)
!2421 = !{!2422, !2432, !2457}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2420, file: !62, line: 37, baseType: !2423, size: 320)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !62, line: 30, size: 320, elements: !2424)
!2424 = !{!2425, !2427, !2428, !2429, !2430, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2423, file: !62, line: 31, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2423, file: !62, line: 32, baseType: !726, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2423, file: !62, line: 33, baseType: !726, size: 32, offset: 96)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2423, file: !62, line: 34, baseType: !726, size: 32, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2423, file: !62, line: 35, baseType: !676, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2423, file: !62, line: 36, baseType: !2426, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2420, file: !62, line: 47, baseType: !2433, size: 192)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !62, line: 39, size: 192, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2456}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2433, file: !62, line: 40, baseType: !2110, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2433, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !62, line: 42, baseType: !2438, size: 64, offset: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2433, file: !62, line: 42, size: 64, elements: !2439)
!2439 = !{!2440, !2448}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2438, file: !62, line: 43, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2443, line: 7, size: 128, elements: !2444)
!2443 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2444 = !{!2445, !2447}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2442, file: !2443, line: 8, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !405, line: 93, baseType: !569)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2442, file: !2443, line: 9, baseType: !569, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2438, file: !62, line: 44, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2451, line: 7, size: 64, elements: !2452)
!2451 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2452 = !{!2453, !2455}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2450, file: !2451, line: 8, baseType: !2454, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2451, line: 5, baseType: !693)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2450, file: !2451, line: 9, baseType: !693, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2433, file: !62, line: 46, baseType: !676, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2420, file: !62, line: 55, baseType: !2458, size: 256)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !62, line: 49, size: 256, elements: !2459)
!2459 = !{!2460, !2463, !2464, !2465, !2466}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2458, file: !62, line: 50, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2458, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2458, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2458, file: !62, line: 53, baseType: !420, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2458, file: !62, line: 54, baseType: !420, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1952, file: !1953, line: 973, baseType: !2468, size: 32, offset: 10688)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !220, line: 27, baseType: !2469)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !405, line: 28, baseType: !109)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1952, file: !1953, line: 974, baseType: !2468, size: 32, offset: 10720)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1952, file: !1953, line: 978, baseType: !420, size: 64, offset: 10752)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1952, file: !1953, line: 987, baseType: !1951, size: 64, offset: 10816)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1952, file: !1953, line: 990, baseType: !1951, size: 64, offset: 10880)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1952, file: !1953, line: 995, baseType: !274, size: 128, offset: 10944)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1952, file: !1953, line: 996, baseType: !274, size: 128, offset: 11072)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1952, file: !1953, line: 997, baseType: !1951, size: 64, offset: 11200)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1952, file: !1953, line: 1005, baseType: !274, size: 128, offset: 11264)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1952, file: !1953, line: 1006, baseType: !274, size: 128, offset: 11392)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1952, file: !1953, line: 1009, baseType: !612, size: 64, offset: 11520)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1952, file: !1953, line: 1010, baseType: !2481, size: 512, offset: 11584)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 512, elements: !629)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1952, file: !1953, line: 1011, baseType: !274, size: 128, offset: 12096)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1952, file: !1953, line: 1012, baseType: !274, size: 128, offset: 12224)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1952, file: !1953, line: 1014, baseType: !1174, size: 64, offset: 12352)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1952, file: !1953, line: 1017, baseType: !1321, size: 64, offset: 12416)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1952, file: !1953, line: 1020, baseType: !1321, size: 64, offset: 12480)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1952, file: !1953, line: 1023, baseType: !221, size: 64, offset: 12544)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1952, file: !1953, line: 1025, baseType: !676, size: 64, offset: 12608)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1952, file: !1953, line: 1026, baseType: !676, size: 64, offset: 12672)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1952, file: !1953, line: 1031, baseType: !676, size: 64, offset: 12736)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1952, file: !1953, line: 1032, baseType: !2492, size: 192, offset: 12800)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1953, line: 324, size: 192, elements: !2493)
!2493 = !{!2494, !2495, !2496}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2492, file: !1953, line: 326, baseType: !676, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2492, file: !1953, line: 327, baseType: !676, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2492, file: !1953, line: 328, baseType: !576, size: 32, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1952, file: !1953, line: 1041, baseType: !420, size: 64, offset: 12992)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1952, file: !1953, line: 1042, baseType: !420, size: 64, offset: 13056)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1952, file: !1953, line: 1045, baseType: !676, size: 64, offset: 13120)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1952, file: !1953, line: 1048, baseType: !676, size: 64, offset: 13184)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1952, file: !1953, line: 1051, baseType: !420, size: 64, offset: 13248)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1952, file: !1953, line: 1052, baseType: !420, size: 64, offset: 13312)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1952, file: !1953, line: 1055, baseType: !2504, size: 640, offset: 13376)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2505, line: 132, size: 640, elements: !2506)
!2505 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2506 = !{!2507, !2513, !2514}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2504, file: !2505, line: 133, baseType: !2508, size: 576)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2509, size: 576, elements: !373)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2505, line: 117, size: 192, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2509, file: !2505, line: 118, baseType: !676, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2509, file: !2505, line: 119, baseType: !2119, size: 128, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2504, file: !2505, line: 134, baseType: !7, size: 32, offset: 576)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2504, file: !2505, line: 135, baseType: !7, size: 32, offset: 608)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1952, file: !1953, line: 1058, baseType: !2516, size: 448, offset: 14016)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2505, line: 144, size: 448, elements: !2517)
!2517 = !{!2518, !2519, !2520}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2516, file: !2505, line: 145, baseType: !548, size: 128, align: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2516, file: !2505, line: 146, baseType: !571, size: 256, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2516, file: !2505, line: 147, baseType: !7, size: 32, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1952, file: !1953, line: 1064, baseType: !655, size: 64, offset: 14464)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1952, file: !1953, line: 1067, baseType: !655, size: 64, offset: 14528)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1952, file: !1953, line: 1070, baseType: !655, size: 64, offset: 14592)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1952, file: !1953, line: 1074, baseType: !685, size: 64, offset: 14656)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1952, file: !1953, line: 1084, baseType: !2526, size: 128, offset: 14720)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !2527)
!2527 = !{!2528}
!2528 = !DISubrange(count: 16)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1952, file: !1953, line: 1086, baseType: !2530, size: 64, offset: 14848)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1953, line: 55, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1952, file: !1953, line: 1089, baseType: !2533, size: 64, offset: 14912)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2534, line: 12, size: 64, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2533, file: !2534, line: 13, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2534, line: 8, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1952, file: !1953, line: 1090, baseType: !2540, size: 128, offset: 14976)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2541, line: 13, size: 128, elements: !2542)
!2541 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2540, file: !2541, line: 14, baseType: !274, size: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1952, file: !1953, line: 1097, baseType: !2545, size: 64, offset: 15104)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1953, line: 50, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1952, file: !1953, line: 1100, baseType: !2548, size: 64, offset: 15168)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1953, line: 1100, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1952, file: !1953, line: 1103, baseType: !2551, size: 64, offset: 15232)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1953, line: 53, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1952, file: !1953, line: 1107, baseType: !2554, size: 64, offset: 15296)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1953, line: 56, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1952, file: !1953, line: 1110, baseType: !2557, size: 64, offset: 15360)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2559, line: 93, size: 8768, elements: !2560)
!2559 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2608, !2617, !2618, !2620, !2621, !2622, !2625, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2663, !2664, !2671, !2681, !2684, !2685, !2688, !2689, !2690, !2691, !2692, !2693}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2558, file: !2559, line: 94, baseType: !293, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2558, file: !2559, line: 95, baseType: !251, size: 32, offset: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2558, file: !2559, line: 96, baseType: !109, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2558, file: !2559, line: 97, baseType: !109, size: 32, offset: 96)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2558, file: !2559, line: 98, baseType: !274, size: 128, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2558, file: !2559, line: 100, baseType: !633, size: 192, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2558, file: !2559, line: 103, baseType: !1951, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2558, file: !2559, line: 106, baseType: !2569, size: 192, offset: 512)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !848, line: 32, size: 192, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2569, file: !848, line: 33, baseType: !274, size: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2569, file: !848, line: 34, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2574, line: 25, baseType: !2575)
!2574 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2574, line: 23, size: 64, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2575, file: !2574, line: 24, baseType: !2187, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2558, file: !2559, line: 109, baseType: !620, size: 64, offset: 704)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2558, file: !2559, line: 112, baseType: !109, size: 32, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2558, file: !2559, line: 114, baseType: !109, size: 32, offset: 800)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2558, file: !2559, line: 115, baseType: !1951, size: 64, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2558, file: !2559, line: 118, baseType: !109, size: 32, offset: 896)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2558, file: !2559, line: 119, baseType: !7, size: 32, offset: 928)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2558, file: !2559, line: 121, baseType: !2585, size: 64, offset: 960)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2559, line: 80, size: 448, elements: !2587)
!2587 = !{!2588, !2589, !2595}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2586, file: !2559, line: 81, baseType: !251, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2586, file: !2559, line: 82, baseType: !2590, size: 128, offset: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2559, line: 75, size: 128, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2590, file: !2559, line: 76, baseType: !1951, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2590, file: !2559, line: 77, baseType: !2594, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2586, file: !2559, line: 83, baseType: !1175, size: 256, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2558, file: !2559, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2558, file: !2559, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2558, file: !2559, line: 138, baseType: !7, size: 32, offset: 1056)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2558, file: !2559, line: 139, baseType: !274, size: 128, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2558, file: !2559, line: 142, baseType: !2063, size: 512, offset: 1216)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2558, file: !2559, line: 143, baseType: !2071, size: 64, offset: 1728)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2558, file: !2559, line: 150, baseType: !2603, size: 256, offset: 1792)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 256, elements: !1311)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2559, line: 38, size: 128, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2604, file: !2559, line: 39, baseType: !676, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2604, file: !2559, line: 40, baseType: !676, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2558, file: !2559, line: 156, baseType: !2609, size: 192, offset: 2048)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2559, line: 66, size: 192, elements: !2610)
!2610 = !{!2611}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2609, file: !2559, line: 67, baseType: !2612, size: 192)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2559, line: 47, size: 192, elements: !2613)
!2613 = !{!2614, !2615, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2612, file: !2559, line: 48, baseType: !563, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2612, file: !2559, line: 49, baseType: !563, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2612, file: !2559, line: 50, baseType: !563, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2558, file: !2559, line: 160, baseType: !2504, size: 640, offset: 2240)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2558, file: !2559, line: 163, baseType: !2619, size: 256, offset: 2880)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 256, elements: !629)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2558, file: !2559, line: 169, baseType: !612, size: 64, offset: 3136)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2558, file: !2559, line: 172, baseType: !109, size: 32, offset: 3200)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2558, file: !2559, line: 174, baseType: !2623, size: 64, offset: 3264)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2559, line: 174, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2558, file: !2559, line: 185, baseType: !2626, size: 64, offset: 3328)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !888, line: 860, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !888, line: 853, size: 64, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2627, file: !888, line: 858, baseType: !887, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2627, file: !888, line: 859, baseType: !231, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2558, file: !2559, line: 186, baseType: !676, size: 64, offset: 3392)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2558, file: !2559, line: 186, baseType: !676, size: 64, offset: 3456)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2558, file: !2559, line: 186, baseType: !676, size: 64, offset: 3520)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2558, file: !2559, line: 186, baseType: !676, size: 64, offset: 3584)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2558, file: !2559, line: 187, baseType: !676, size: 64, offset: 3648)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2558, file: !2559, line: 188, baseType: !676, size: 64, offset: 3712)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2558, file: !2559, line: 189, baseType: !2492, size: 192, offset: 3776)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2558, file: !2559, line: 190, baseType: !420, size: 64, offset: 3968)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2558, file: !2559, line: 190, baseType: !420, size: 64, offset: 4032)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2558, file: !2559, line: 190, baseType: !420, size: 64, offset: 4096)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2558, file: !2559, line: 190, baseType: !420, size: 64, offset: 4160)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2558, file: !2559, line: 191, baseType: !420, size: 64, offset: 4224)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2558, file: !2559, line: 191, baseType: !420, size: 64, offset: 4288)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2558, file: !2559, line: 191, baseType: !420, size: 64, offset: 4352)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2558, file: !2559, line: 191, baseType: !420, size: 64, offset: 4416)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2558, file: !2559, line: 192, baseType: !420, size: 64, offset: 4480)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2558, file: !2559, line: 192, baseType: !420, size: 64, offset: 4544)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2558, file: !2559, line: 192, baseType: !420, size: 64, offset: 4608)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2558, file: !2559, line: 192, baseType: !420, size: 64, offset: 4672)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2558, file: !2559, line: 193, baseType: !420, size: 64, offset: 4736)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2558, file: !2559, line: 193, baseType: !420, size: 64, offset: 4800)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2558, file: !2559, line: 194, baseType: !2653, size: 448, offset: 4864)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2654, line: 12, size: 448, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2653, file: !2654, line: 15, baseType: !676, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2653, file: !2654, line: 17, baseType: !676, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2653, file: !2654, line: 19, baseType: !676, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2653, file: !2654, line: 21, baseType: !676, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2653, file: !2654, line: 29, baseType: !676, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2653, file: !2654, line: 35, baseType: !676, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2653, file: !2654, line: 44, baseType: !676, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2558, file: !2559, line: 202, baseType: !678, size: 64, offset: 5312)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2558, file: !2559, line: 213, baseType: !2665, size: 2048, offset: 5376)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 2048, elements: !2527)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2667, line: 43, size: 128, elements: !2668)
!2667 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2666, file: !2667, line: 44, baseType: !419, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2666, file: !2667, line: 45, baseType: !419, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2558, file: !2559, line: 216, baseType: !2672, size: 448, offset: 7424)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2559, line: 30, size: 448, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2672, file: !2559, line: 31, baseType: !109, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2672, file: !2559, line: 32, baseType: !407, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2672, file: !2559, line: 33, baseType: !420, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2672, file: !2559, line: 34, baseType: !676, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2672, file: !2559, line: 34, baseType: !676, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2672, file: !2559, line: 35, baseType: !420, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2672, file: !2559, line: 35, baseType: !420, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2558, file: !2559, line: 219, baseType: !2682, size: 64, offset: 7872)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2559, line: 219, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2558, file: !2559, line: 222, baseType: !7, size: 32, offset: 7936)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2558, file: !2559, line: 223, baseType: !2686, size: 64, offset: 8000)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2559, line: 223, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2558, file: !2559, line: 230, baseType: !435, size: 8, offset: 8064)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2558, file: !2559, line: 231, baseType: !731, size: 16, offset: 8080)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2558, file: !2559, line: 232, baseType: !731, size: 16, offset: 8096)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2558, file: !2559, line: 234, baseType: !2236, size: 64, offset: 8128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2558, file: !2559, line: 237, baseType: !571, size: 256, offset: 8192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2558, file: !2559, line: 243, baseType: !701, size: 320, offset: 8448)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1952, file: !1953, line: 1111, baseType: !2695, size: 64, offset: 15424)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2559, line: 20, size: 16640, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2696, file: !2559, line: 21, baseType: !231, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2696, file: !2559, line: 22, baseType: !293, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2696, file: !2559, line: 23, baseType: !633, size: 192, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2696, file: !2559, line: 24, baseType: !2702, size: 16384, offset: 256)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2703, size: 16384, elements: !377)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !848, line: 51, size: 256, elements: !2704)
!2704 = !{!2705}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2703, file: !848, line: 52, baseType: !2706, size: 256)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !848, line: 37, size: 256, elements: !2707)
!2707 = !{!2708, !2715, !2716, !2720}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2706, file: !848, line: 39, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2710, line: 83, baseType: !2711)
!2710 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2710, line: 82, baseType: !2713)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !109}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2706, file: !848, line: 40, baseType: !420, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2706, file: !848, line: 46, baseType: !2717, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2710, line: 86, baseType: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2710, line: 85, baseType: !1539)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2706, file: !848, line: 48, baseType: !2573, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1952, file: !1953, line: 1112, baseType: !2573, size: 64, offset: 15488)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1952, file: !1953, line: 1113, baseType: !2573, size: 64, offset: 15552)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1952, file: !1953, line: 1115, baseType: !2573, size: 64, offset: 15616)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1952, file: !1953, line: 1116, baseType: !2569, size: 192, offset: 15680)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1952, file: !1953, line: 1117, baseType: !420, size: 64, offset: 15872)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1952, file: !1953, line: 1118, baseType: !417, size: 64, offset: 15936)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1952, file: !1953, line: 1119, baseType: !7, size: 32, offset: 16000)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1952, file: !1953, line: 1121, baseType: !551, size: 64, offset: 16064)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1952, file: !1953, line: 1125, baseType: !2730, size: 64, offset: 16128)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1953, line: 43, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1952, file: !1953, line: 1127, baseType: !466, size: 32, offset: 16192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1952, file: !1953, line: 1128, baseType: !7, size: 32, offset: 16224)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1952, file: !1953, line: 1130, baseType: !2735, size: 128, offset: 16256)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2736, line: 37, size: 128, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2735, file: !2736, line: 38, baseType: !109, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2735, file: !2736, line: 39, baseType: !251, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2735, file: !2736, line: 40, baseType: !2741, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2736, line: 24, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1952, file: !1953, line: 1131, baseType: !2744, size: 256, offset: 16384)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2745, line: 12, size: 256, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2744, file: !2745, line: 13, baseType: !372, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2744, file: !2745, line: 14, baseType: !420, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2744, file: !2745, line: 15, baseType: !420, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2744, file: !2745, line: 16, baseType: !435, size: 8, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1952, file: !1953, line: 1134, baseType: !676, size: 64, offset: 16640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1952, file: !1953, line: 1135, baseType: !676, size: 64, offset: 16704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1952, file: !1953, line: 1138, baseType: !231, size: 32, offset: 16768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1952, file: !1953, line: 1141, baseType: !576, size: 32, offset: 16800)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1952, file: !1953, line: 1143, baseType: !2756, size: 64, offset: 16832)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1953, line: 735, size: 64, elements: !2757)
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2756, file: !1953, line: 736, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1952, file: !1953, line: 1147, baseType: !2122, size: 128, offset: 16896)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1952, file: !1953, line: 1149, baseType: !1951, size: 64, offset: 17024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1952, file: !1953, line: 1151, baseType: !2763, size: 64, offset: 17088)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1953, line: 1151, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1952, file: !1953, line: 1188, baseType: !221, size: 64, offset: 17152)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1952, file: !1953, line: 1191, baseType: !2767, size: 64, offset: 17216)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1953, line: 44, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1952, file: !1953, line: 1194, baseType: !2770, size: 64, offset: 17280)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1953, line: 45, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1952, file: !1953, line: 1197, baseType: !2773, size: 64, offset: 17344)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1953, line: 61, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1952, file: !1953, line: 1199, baseType: !2776, size: 64, offset: 17408)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2778, line: 99, size: 128, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2779 = !{!2780, !2781, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2777, file: !2778, line: 100, baseType: !561, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2777, file: !2778, line: 101, baseType: !251, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2777, file: !2778, line: 103, baseType: !271, size: 16, offset: 96)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1952, file: !1953, line: 1202, baseType: !2784, size: 64, offset: 17472)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1953, line: 48, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1952, file: !1953, line: 1205, baseType: !420, size: 64, offset: 17536)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1952, file: !1953, line: 1206, baseType: !2788, size: 64, offset: 17600)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !848, line: 14, baseType: !2790)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !848, line: 12, size: 384, elements: !2791)
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_member, scope: !2790, file: !848, line: 13, baseType: !2793, size: 384)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2790, file: !848, line: 13, size: 384, elements: !2794)
!2794 = !{!2795, !2796, !2797, !2798}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2793, file: !848, line: 13, baseType: !109, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2793, file: !848, line: 13, baseType: !109, size: 32, offset: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2793, file: !848, line: 13, baseType: !109, size: 32, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2793, file: !848, line: 13, baseType: !2799, size: 256, offset: 128)
!2799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2800, line: 37, size: 256, elements: !2801)
!2800 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2801 = !{!2802, !2807, !2820, !2826, !2835, !2862, !2867}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2799, file: !2800, line: 42, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 39, size: 64, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2803, file: !2800, line: 40, baseType: !2469, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2803, file: !2800, line: 41, baseType: !472, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2799, file: !2800, line: 50, baseType: !2808, size: 192)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 45, size: 192, elements: !2809)
!2809 = !{!2810, !2812, !2813, !2819}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2808, file: !2800, line: 46, baseType: !2811, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !405, line: 95, baseType: !109)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2808, file: !2800, line: 47, baseType: !109, size: 32, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2808, file: !2800, line: 48, baseType: !2814, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2800, line: 11, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2800, line: 8, size: 64, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2815, file: !2800, line: 9, baseType: !109, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2815, file: !2800, line: 10, baseType: !221, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2808, file: !2800, line: 49, baseType: !109, size: 32, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2799, file: !2800, line: 57, baseType: !2821, size: 128)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 53, size: 128, elements: !2822)
!2822 = !{!2823, !2824, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2821, file: !2800, line: 54, baseType: !2469, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2821, file: !2800, line: 55, baseType: !472, size: 32, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2821, file: !2800, line: 56, baseType: !2814, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2799, file: !2800, line: 66, baseType: !2827, size: 256)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 60, size: 256, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2834}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2827, file: !2800, line: 61, baseType: !2469, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2827, file: !2800, line: 62, baseType: !472, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2827, file: !2800, line: 63, baseType: !109, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2827, file: !2800, line: 64, baseType: !2833, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !405, line: 94, baseType: !406)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2827, file: !2800, line: 65, baseType: !2833, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2799, file: !2800, line: 105, baseType: !2836, size: 256)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 69, size: 256, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2836, file: !2800, line: 70, baseType: !221, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2836, file: !2800, line: 79, baseType: !2840, size: 192, offset: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2836, file: !2800, line: 79, size: 192, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2851, !2856}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2840, file: !2800, line: 81, baseType: !109, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2840, file: !2800, line: 86, baseType: !731, size: 16)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2840, file: !2800, line: 92, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !2800, line: 88, size: 192, elements: !2846)
!2846 = !{!2847, !2849, !2850}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2845, file: !2800, line: 89, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 64, elements: !2106)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2845, file: !2800, line: 90, baseType: !221, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2845, file: !2800, line: 91, baseType: !221, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2840, file: !2800, line: 97, baseType: !2852, size: 96)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !2800, line: 94, size: 96, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2852, file: !2800, line: 95, baseType: !2848, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2852, file: !2800, line: 96, baseType: !727, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2840, file: !2800, line: 103, baseType: !2857, size: 128)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !2800, line: 99, size: 128, elements: !2858)
!2858 = !{!2859, !2860, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2857, file: !2800, line: 100, baseType: !420, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2857, file: !2800, line: 101, baseType: !727, size: 32, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2857, file: !2800, line: 102, baseType: !727, size: 32, offset: 96)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2799, file: !2800, line: 111, baseType: !2863, size: 128)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 108, size: 128, elements: !2864)
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2863, file: !2800, line: 109, baseType: !407, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2863, file: !2800, line: 110, baseType: !109, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2799, file: !2800, line: 118, baseType: !2868, size: 128)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 114, size: 128, elements: !2869)
!2869 = !{!2870, !2871, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2868, file: !2800, line: 115, baseType: !221, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2868, file: !2800, line: 116, baseType: !109, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2868, file: !2800, line: 117, baseType: !7, size: 32, offset: 96)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1952, file: !1953, line: 1208, baseType: !2653, size: 448, offset: 17664)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1952, file: !1953, line: 1215, baseType: !676, size: 64, offset: 18112)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1952, file: !1953, line: 1217, baseType: !676, size: 64, offset: 18176)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1952, file: !1953, line: 1219, baseType: !676, size: 64, offset: 18240)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1952, file: !1953, line: 1223, baseType: !2878, size: 64, offset: 18304)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2879, line: 99, baseType: !2880)
!2879 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2879, line: 99, size: 64, elements: !2881)
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2880, file: !2879, line: 99, baseType: !2187, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1952, file: !1953, line: 1225, baseType: !887, size: 32, offset: 18368)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1952, file: !1953, line: 1226, baseType: !109, size: 32, offset: 18400)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1952, file: !1953, line: 1227, baseType: !109, size: 32, offset: 18432)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1952, file: !1953, line: 1231, baseType: !2887, size: 64, offset: 18496)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1953, line: 1231, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1952, file: !1953, line: 1233, baseType: !274, size: 128, offset: 18560)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1952, file: !1953, line: 1240, baseType: !2891, size: 64, offset: 18688)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1953, line: 62, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1952, file: !1953, line: 1242, baseType: !2894, size: 64, offset: 18752)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1953, line: 1242, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1952, file: !1953, line: 1244, baseType: !274, size: 128, offset: 18816)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1952, file: !1953, line: 1245, baseType: !2898, size: 64, offset: 18944)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1953, line: 51, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1952, file: !1953, line: 1246, baseType: !571, size: 256, offset: 19008)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1952, file: !1953, line: 1247, baseType: !7, size: 32, offset: 19264)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1952, file: !1953, line: 1250, baseType: !2903, size: 64, offset: 19328)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1953, line: 57, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1952, file: !1953, line: 1251, baseType: !571, size: 256, offset: 19392)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1952, file: !1953, line: 1252, baseType: !274, size: 128, offset: 19648)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1952, file: !1953, line: 1259, baseType: !2908, size: 64, offset: 19776)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1952, file: !1953, line: 1260, baseType: !731, size: 16, offset: 19840)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1952, file: !1953, line: 1261, baseType: !731, size: 16, offset: 19856)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1952, file: !1953, line: 1314, baseType: !2913, size: 64, offset: 19904)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2915, line: 62, size: 256, align: 256, elements: !2916)
!2915 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2914, file: !2915, line: 75, baseType: !727, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2914, file: !2915, line: 90, baseType: !727, size: 32, offset: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2914, file: !2915, line: 112, baseType: !677, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2914, file: !2915, line: 132, baseType: !727, size: 32, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2914, file: !2915, line: 140, baseType: !727, size: 32, offset: 160)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2914, file: !2915, line: 149, baseType: !727, size: 32, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2914, file: !2915, line: 154, baseType: !2924, offset: 224)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, elements: !648)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1952, file: !1953, line: 1315, baseType: !726, size: 32, offset: 19968)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1952, file: !1953, line: 1316, baseType: !726, size: 32, offset: 20000)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1952, file: !1953, line: 1321, baseType: !420, size: 64, offset: 20032)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1952, file: !1953, line: 1325, baseType: !109, size: 32, offset: 20096)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1952, file: !1953, line: 1326, baseType: !109, size: 32, offset: 20128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1952, file: !1953, line: 1327, baseType: !109, size: 32, offset: 20160)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1952, file: !1953, line: 1328, baseType: !109, size: 32, offset: 20192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1952, file: !1953, line: 1329, baseType: !548, size: 128, align: 64, offset: 20224)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1952, file: !1953, line: 1332, baseType: !2934, size: 128, offset: 20352)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2935, line: 51, size: 128, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2936 = !{!2937, !2942, !2943}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2934, file: !2935, line: 60, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2939, line: 7, size: 64, elements: !2940)
!2939 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2940 = !{!2941}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2938, file: !2939, line: 12, baseType: !2184, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2934, file: !2935, line: 63, baseType: !435, size: 8, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2934, file: !2935, line: 70, baseType: !435, size: 8, offset: 72)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1952, file: !1953, line: 1335, baseType: !2945, size: 64, offset: 20480)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1953, line: 59, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1952, file: !1953, line: 1337, baseType: !2948, size: 128, offset: 20544)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2935, line: 39, size: 128, elements: !2949)
!2949 = !{!2950, !3437, !3438}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2948, file: !2935, line: 40, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !2953)
!2953 = !{!2954, !2955, !3431, !3436}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2952, file: !27, line: 75, baseType: !420, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !27, line: 83, baseType: !2956, size: 320, offset: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2952, file: !27, line: 83, size: 320, elements: !2957)
!2957 = !{!2958, !3182, !3196, !3200, !3430}
!2958 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !27, line: 84, baseType: !2959, size: 320)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !27, line: 84, size: 320, elements: !2960)
!2960 = !{!2961, !2972, !3176, !3181}
!2961 = !DIDerivedType(tag: DW_TAG_member, scope: !2959, file: !27, line: 90, baseType: !2962, size: 128)
!2962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2959, file: !27, line: 90, size: 128, elements: !2963)
!2963 = !{!2964, !2965, !2970, !2971}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2962, file: !27, line: 91, baseType: !274, size: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, scope: !2962, file: !27, line: 94, baseType: !2966, size: 128)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2962, file: !27, line: 94, size: 128, elements: !2967)
!2967 = !{!2968, !2969}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2966, file: !27, line: 96, baseType: !221, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2966, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2962, file: !27, line: 102, baseType: !274, size: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2962, file: !27, line: 103, baseType: !274, size: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2959, file: !27, line: 106, baseType: !2973, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !3168, !3169, !3170, !3173, !3174, !3175}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2974, file: !14, line: 473, baseType: !921, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2974, file: !14, line: 474, baseType: !1114, size: 128, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2974, file: !14, line: 475, baseType: !701, size: 320, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2974, file: !14, line: 476, baseType: !219, size: 32, offset: 512)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2974, file: !14, line: 477, baseType: !251, size: 32, offset: 544)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2974, file: !14, line: 482, baseType: !2122, size: 128, offset: 576)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2974, file: !14, line: 483, baseType: !420, size: 64, offset: 704)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2974, file: !14, line: 484, baseType: !420, size: 64, offset: 768)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2974, file: !14, line: 485, baseType: !2985, size: 64, offset: 832)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !2988)
!2988 = !{!2989, !2993, !3063, !3067, !3071, !3077, !3083, !3087, !3092, !3096, !3100, !3104, !3132, !3136, !3140, !3144, !3149, !3153, !3160, !3164}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2987, file: !14, line: 405, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!109, !2951, !1576}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2987, file: !14, line: 406, baseType: !2994, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!109, !535, !2997}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !2999)
!2999 = !{!3000, !3030, !3044}
!3000 = !DIDerivedType(tag: DW_TAG_member, scope: !2998, file: !27, line: 295, baseType: !3001, size: 512)
!3001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2998, file: !27, line: 295, size: 512, elements: !3002)
!3002 = !{!3003, !3029}
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !3001, file: !27, line: 296, baseType: !3004, size: 448)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !27, line: 296, size: 448, elements: !3005)
!3005 = !{!3006, !3007, !3016, !3017, !3018, !3027, !3028}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3004, file: !27, line: 298, baseType: !420, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, scope: !3004, file: !27, line: 299, baseType: !3008, size: 128, offset: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3004, file: !27, line: 299, size: 128, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3008, file: !27, line: 300, baseType: !274, size: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, scope: !3008, file: !27, line: 302, baseType: !3012, size: 128)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3008, file: !27, line: 302, size: 128, elements: !3013)
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3012, file: !27, line: 303, baseType: !221, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3012, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3004, file: !27, line: 310, baseType: !2973, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3004, file: !27, line: 311, baseType: !420, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !3004, file: !27, line: 312, baseType: !3019, size: 64, offset: 320)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3004, file: !27, line: 312, size: 64, elements: !3020)
!3020 = !{!3021, !3022}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3019, file: !27, line: 313, baseType: !221, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3019, file: !27, line: 314, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !3025)
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3024, file: !27, line: 256, baseType: !420, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3004, file: !27, line: 316, baseType: !251, size: 32, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3004, file: !27, line: 317, baseType: !251, size: 32, offset: 416)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3001, file: !27, line: 323, baseType: !2952, size: 512, align: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !2998, file: !27, line: 325, baseType: !3031, size: 512, offset: 512)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2998, file: !27, line: 325, size: 512, elements: !3032)
!3032 = !{!3033, !3043}
!3033 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !27, line: 326, baseType: !3034, size: 320)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3031, file: !27, line: 326, size: 320, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3034, file: !27, line: 327, baseType: !420, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3034, file: !27, line: 328, baseType: !420, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3034, file: !27, line: 329, baseType: !420, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3034, file: !27, line: 331, baseType: !251, size: 32, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3034, file: !27, line: 332, baseType: !251, size: 32, offset: 224)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3034, file: !27, line: 333, baseType: !251, size: 32, offset: 256)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3034, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3031, file: !27, line: 339, baseType: !2952, size: 512, align: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, scope: !2998, file: !27, line: 341, baseType: !3045, size: 512, offset: 1024)
!3045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2998, file: !27, line: 341, size: 512, elements: !3046)
!3046 = !{!3047, !3056, !3062}
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !3045, file: !27, line: 342, baseType: !3048, size: 384)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !27, line: 342, size: 384, elements: !3049)
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3048, file: !27, line: 343, baseType: !420, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3048, file: !27, line: 344, baseType: !420, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3048, file: !27, line: 346, baseType: !221, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3048, file: !27, line: 347, baseType: !221, size: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3048, file: !27, line: 348, baseType: !221, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3048, file: !27, line: 349, baseType: !221, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, scope: !3045, file: !27, line: 352, baseType: !3057, size: 256)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3045, file: !27, line: 352, size: 256, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3057, file: !27, line: 353, baseType: !420, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3057, file: !27, line: 354, baseType: !420, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3057, file: !27, line: 356, baseType: !274, size: 128, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3045, file: !27, line: 359, baseType: !2952, size: 512, align: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2987, file: !14, line: 409, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!109, !2973, !1576}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2987, file: !14, line: 412, baseType: !3068, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!435, !2973, !2997}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2987, file: !14, line: 414, baseType: !3072, size: 64, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !3075}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2987, file: !14, line: 416, baseType: !3078, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!109, !535, !2973, !584, !7, !3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2987, file: !14, line: 419, baseType: !3084, size: 64, offset: 384)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!109, !535, !2973, !584, !7, !7, !2951, !221}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2987, file: !14, line: 424, baseType: !3088, size: 64, offset: 448)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!3091, !2973, !3091}
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !220, line: 131, baseType: !676)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2987, file: !14, line: 425, baseType: !3093, size: 64, offset: 512)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !2997, !417, !417}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2987, file: !14, line: 426, baseType: !3097, size: 64, offset: 576)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!435, !2997, !219}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2987, file: !14, line: 427, baseType: !3101, size: 64, offset: 640)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !2997}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2987, file: !14, line: 428, baseType: !3105, size: 64, offset: 704)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!403, !3108, !3130}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3117, !3118, !3119, !3120}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3109, file: !14, line: 374, baseType: !535, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3109, file: !14, line: 375, baseType: !584, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3109, file: !14, line: 376, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !3108, !407}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3109, file: !14, line: 377, baseType: !221, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3109, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3109, file: !14, line: 379, baseType: !269, size: 16, offset: 288)
!3120 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !14, line: 380, baseType: !3121, size: 64, offset: 320)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !14, line: 380, size: 64, elements: !3122)
!3122 = !{!3123, !3126}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3121, file: !14, line: 386, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3121, file: !14, line: 395, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!403, !221}
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2987, file: !14, line: 433, baseType: !3133, size: 64, offset: 768)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!109, !2973, !2997, !2997, !74}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2987, file: !14, line: 435, baseType: !3137, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!109, !2997}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2987, file: !14, line: 436, baseType: !3141, size: 64, offset: 896)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!435, !2997, !417, !417}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2987, file: !14, line: 438, baseType: !3145, size: 64, offset: 960)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !2997, !3148, !3148}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2987, file: !14, line: 439, baseType: !3150, size: 64, offset: 1024)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!109, !2973, !2951}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2987, file: !14, line: 442, baseType: !3154, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!109, !3157, !535, !3159}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2987, file: !14, line: 444, baseType: !3161, size: 64, offset: 1152)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !535}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2987, file: !14, line: 445, baseType: !3165, size: 64, offset: 1216)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!109, !3108, !3130}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2974, file: !14, line: 486, baseType: !420, size: 64, offset: 896)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2974, file: !14, line: 487, baseType: !701, size: 320, offset: 960)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2974, file: !14, line: 488, baseType: !3171, size: 32, offset: 1280)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3172, line: 8, baseType: !726)
!3172 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2974, file: !14, line: 489, baseType: !231, size: 32, offset: 1312)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2974, file: !14, line: 490, baseType: !274, size: 128, offset: 1344)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2974, file: !14, line: 491, baseType: !221, size: 64, offset: 1472)
!3176 = !DIDerivedType(tag: DW_TAG_member, scope: !2959, file: !27, line: 107, baseType: !3177, size: 64, offset: 192)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2959, file: !27, line: 107, size: 64, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3177, file: !27, line: 108, baseType: !420, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3177, file: !27, line: 109, baseType: !420, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2959, file: !27, line: 117, baseType: !420, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !27, line: 119, baseType: !3183, size: 320)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !27, line: 119, size: 320, elements: !3184)
!3184 = !{!3185, !3186, !3189, !3190, !3191}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3183, file: !27, line: 124, baseType: !420, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3183, file: !27, line: 125, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3183, file: !27, line: 126, baseType: !420, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3183, file: !27, line: 127, baseType: !420, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !27, line: 128, baseType: !3192, size: 64, offset: 256)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !27, line: 128, size: 64, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3192, file: !27, line: 133, baseType: !420, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3192, file: !27, line: 138, baseType: !561, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !27, line: 141, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !27, line: 141, size: 64, elements: !3198)
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3197, file: !27, line: 142, baseType: !420, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !27, line: 144, baseType: !3201, size: 128)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !27, line: 144, size: 128, elements: !3202)
!3202 = !{!3203, !3429}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3201, file: !27, line: 146, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !3206)
!3206 = !{!3207, !3217, !3238, !3239, !3240, !3241, !3242, !3411, !3412, !3413}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3205, file: !43, line: 127, baseType: !3208, size: 384)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !3209)
!3209 = !{!3210, !3211, !3213, !3214, !3215, !3216}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3208, file: !43, line: 22, baseType: !420, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3208, file: !43, line: 23, baseType: !3212, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3208, file: !43, line: 24, baseType: !3212, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3208, file: !43, line: 25, baseType: !420, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3208, file: !43, line: 26, baseType: !420, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3208, file: !43, line: 27, baseType: !420, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3205, file: !43, line: 128, baseType: !3218, size: 128, offset: 384)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3219, line: 105, size: 128, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3218, file: !3219, line: 110, baseType: !420, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3218, file: !3219, line: 118, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3219, line: 95, size: 448, elements: !3225)
!3225 = !{!3226, !3227, !3233, !3234, !3235, !3236, !3237}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3224, file: !3219, line: 96, baseType: !561, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3224, file: !3219, line: 97, baseType: !3228, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3219, line: 60, baseType: !3230)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3224, file: !3219, line: 98, baseType: !3228, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3224, file: !3219, line: 99, baseType: !435, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3224, file: !3219, line: 100, baseType: !435, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3224, file: !3219, line: 101, baseType: !548, size: 128, align: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3224, file: !3219, line: 102, baseType: !3232, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3205, file: !43, line: 129, baseType: !1175, size: 256, offset: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3205, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3205, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3205, file: !43, line: 132, baseType: !420, size: 64, offset: 832)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3205, file: !43, line: 133, baseType: !3243, size: 64, offset: 896)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !3246)
!3246 = !{!3247, !3251, !3407}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3245, file: !43, line: 83, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !2951}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3245, file: !43, line: 89, baseType: !3252, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3258, line: 512, size: 896, elements: !3259)
!3258 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3259 = !{!3260, !3374, !3375, !3382, !3389, !3399, !3400, !3401, !3403, !3405}
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !3258, line: 513, baseType: !3261, size: 320)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3257, file: !3258, line: 513, size: 320, elements: !3262)
!3262 = !{!3263, !3370, !3371, !3372, !3373}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3261, file: !3258, line: 514, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !3266)
!3266 = !{!3267, !3276, !3277, !3283, !3290, !3291, !3296, !3297, !3302, !3303, !3306, !3363, !3364, !3365, !3366, !3367, !3368}
!3267 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !27, line: 628, baseType: !3268, size: 128)
!3268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3265, file: !27, line: 628, size: 128, elements: !3269)
!3269 = !{!3270, !3275}
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !27, line: 629, baseType: !3271, size: 128)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3268, file: !27, line: 629, size: 128, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3271, file: !27, line: 631, baseType: !420, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3271, file: !27, line: 632, baseType: !420, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3268, file: !27, line: 635, baseType: !548, size: 128, align: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3265, file: !27, line: 639, baseType: !2236, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3265, file: !27, line: 640, baseType: !3278, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2271, line: 297, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2271, line: 297, size: 64, elements: !3280)
!3280 = !{!3281}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3279, file: !2271, line: 297, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2276, line: 19, baseType: !420)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !27, line: 646, baseType: !3284, size: 64, offset: 256)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3265, file: !27, line: 646, size: 64, elements: !3285)
!3285 = !{!3286, !3289}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3284, file: !27, line: 647, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !420)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3284, file: !27, line: 648, baseType: !3288, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3265, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3265, file: !27, line: 667, baseType: !3292, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !3294)
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3293, file: !27, line: 580, baseType: !701, size: 320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3265, file: !27, line: 670, baseType: !435, size: 8, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3265, file: !27, line: 681, baseType: !3298, size: 256, offset: 512)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !27, line: 678, size: 256, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3298, file: !27, line: 679, baseType: !490, size: 192, align: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3298, file: !27, line: 680, baseType: !420, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3265, file: !27, line: 689, baseType: !274, size: 128, offset: 768)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3265, file: !27, line: 691, baseType: !3304, size: 64, offset: 896)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3265, file: !27, line: 694, baseType: !3307, size: 64, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3309)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3258, line: 563, size: 1024, elements: !3310)
!3310 = !{!3311, !3315, !3316, !3320, !3324, !3328, !3329, !3333, !3337, !3341, !3342, !3343, !3347, !3351, !3355, !3359}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3309, file: !3258, line: 564, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3264}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3309, file: !3258, line: 569, baseType: !3312, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3309, file: !3258, line: 571, baseType: !3317, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!109, !3264, !420}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3309, file: !3258, line: 572, baseType: !3321, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!109, !3264}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3309, file: !3258, line: 578, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!109, !3264, !420, !420, !420}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3309, file: !3258, line: 580, baseType: !3252, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3309, file: !3258, line: 581, baseType: !3330, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!3255, !3256, !7}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3309, file: !3258, line: 582, baseType: !3334, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!3255, !3256, !420, !420}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3309, file: !3258, line: 584, baseType: !3338, size: 64, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!420, !3264}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3309, file: !3258, line: 588, baseType: !3252, size: 64, offset: 576)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3309, file: !3258, line: 591, baseType: !3252, size: 64, offset: 640)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3309, file: !3258, line: 597, baseType: !3344, size: 64, offset: 704)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!109, !3264, !420, !221, !109, !109}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3309, file: !3258, line: 603, baseType: !3348, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!309, !3264}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3309, file: !3258, line: 613, baseType: !3352, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!109, !3264, !2908}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3309, file: !3258, line: 625, baseType: !3356, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!2908, !3264, !420}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3309, file: !3258, line: 633, baseType: !3360, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!2951, !3264, !420}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3265, file: !27, line: 697, baseType: !420, size: 64, offset: 1024)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3265, file: !27, line: 699, baseType: !535, size: 64, offset: 1088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3265, file: !27, line: 700, baseType: !221, size: 64, offset: 1152)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3265, file: !27, line: 711, baseType: !561, size: 64, offset: 1216)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3265, file: !27, line: 717, baseType: !2908, size: 64, offset: 1280)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3265, file: !27, line: 722, baseType: !3369, offset: 1344)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !1463)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3261, file: !3258, line: 515, baseType: !219, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3261, file: !3258, line: 516, baseType: !420, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3261, file: !3258, line: 517, baseType: !420, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3261, file: !3258, line: 518, baseType: !420, size: 64, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3257, file: !3258, line: 520, baseType: !26, size: 32, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3257, file: !3258, line: 522, baseType: !3376, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2276, line: 22, baseType: !3378)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2276, line: 22, size: 64, elements: !3379)
!3379 = !{!3380}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3378, file: !2276, line: 22, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2276, line: 15, baseType: !420)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3257, file: !3258, line: 524, baseType: !3383, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2271, line: 372, baseType: !3385)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2271, line: 372, size: 64, elements: !3386)
!3386 = !{!3387}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3385, file: !2271, line: 372, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2276, line: 16, baseType: !420)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !3258, line: 527, baseType: !3390, size: 64, offset: 512)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !3258, line: 527, size: 64, elements: !3391)
!3391 = !{!3392, !3398}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3390, file: !3258, line: 528, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2276, line: 21, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2276, line: 21, size: 64, elements: !3395)
!3395 = !{!3396}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3394, file: !2276, line: 21, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2276, line: 14, baseType: !420)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3390, file: !3258, line: 529, baseType: !3377, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3257, file: !3258, line: 534, baseType: !2951, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3257, file: !3258, line: 535, baseType: !2951, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3257, file: !3258, line: 541, baseType: !3402, size: 64, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3257, file: !3258, line: 545, baseType: !3404, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3257, file: !3258, line: 549, baseType: !3406, size: 64, offset: 832)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2271, line: 520, baseType: !2951)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3245, file: !43, line: 100, baseType: !3408, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!109, !3204, !420, !420, !109}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3205, file: !43, line: 134, baseType: !221, size: 64, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3205, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !43, line: 136, baseType: !3414, size: 128, offset: 1088)
!3414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !43, line: 136, size: 128, elements: !3415)
!3415 = !{!3416, !3422}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3414, file: !43, line: 137, baseType: !3417, size: 128)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3418, line: 6, size: 128, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3419 = !{!3420, !3421}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3417, file: !3418, line: 7, baseType: !676, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3417, file: !3418, line: 8, baseType: !676, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3414, file: !43, line: 138, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3414, file: !43, line: 138, elements: !3424)
!3424 = !{!3425, !3427}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3423, file: !43, line: 138, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3423, file: !43, line: 138, elements: !1463)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3423, file: !43, line: 138, baseType: !3428)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3417, elements: !648)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3201, file: !27, line: 147, baseType: !221, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2956, file: !27, line: 161, baseType: !548, size: 128, align: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !27, line: 164, baseType: !3432, size: 32, offset: 384)
!3432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2952, file: !27, line: 164, size: 32, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3432, file: !27, line: 169, baseType: !251, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3432, file: !27, line: 177, baseType: !7, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2952, file: !27, line: 181, baseType: !251, size: 32, offset: 416)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2948, file: !2935, line: 42, baseType: !727, size: 32, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2948, file: !2935, line: 43, baseType: !727, size: 32, offset: 96)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1952, file: !1953, line: 1340, baseType: !3440, size: 64, offset: 20672)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1953, line: 69, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1952, file: !1953, line: 1351, baseType: !109, size: 32, offset: 20736)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1952, file: !1953, line: 1352, baseType: !109, size: 32, offset: 20768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1952, file: !1953, line: 1354, baseType: !420, size: 64, offset: 20800)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1952, file: !1953, line: 1364, baseType: !676, size: 64, offset: 20864)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1952, file: !1953, line: 1365, baseType: !676, size: 64, offset: 20928)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1952, file: !1953, line: 1412, baseType: !420, size: 64, offset: 20992)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1952, file: !1953, line: 1453, baseType: !3449, size: 64, offset: 21056)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1953, line: 1453, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1952, file: !1953, line: 1457, baseType: !3452, size: 64, offset: 21120)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3454)
!3454 = !{!3455, !3456, !3475, !3478, !3479, !3512, !3522}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3453, file: !68, line: 62, baseType: !67, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !68, line: 64, baseType: !3457, size: 192, offset: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3453, file: !68, line: 64, size: 192, elements: !3458)
!3458 = !{!3459, !3470}
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !68, line: 65, baseType: !3460, size: 192)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3457, file: !68, line: 65, size: 192, elements: !3461)
!3461 = !{!3462, !3469}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3460, file: !68, line: 66, baseType: !3463, size: 128)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3464, line: 50, size: 128, elements: !3465)
!3464 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3465 = !{!3466, !3467, !3468}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3463, file: !3464, line: 52, baseType: !420, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3463, file: !3464, line: 54, baseType: !7, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3463, file: !3464, line: 55, baseType: !7, size: 32, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3460, file: !68, line: 67, baseType: !420, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !68, line: 70, baseType: !3471, size: 192)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3457, file: !68, line: 70, size: 192, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3471, file: !68, line: 71, baseType: !548, size: 128, align: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3471, file: !68, line: 72, baseType: !420, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3453, file: !68, line: 76, baseType: !3476, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3453, file: !68, line: 77, baseType: !420, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3453, file: !68, line: 79, baseType: !3480, size: 64, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3464, line: 25, size: 256, elements: !3482)
!3482 = !{!3483, !3489, !3493}
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3464, line: 26, baseType: !3484, size: 128)
!3484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !3464, line: 26, size: 128, elements: !3485)
!3485 = !{!3486, !3488}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3484, file: !3464, line: 27, baseType: !3487, size: 128)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, elements: !2527)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3484, file: !3464, line: 28, baseType: !3487, size: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3481, file: !3464, line: 31, baseType: !3490, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3492)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3464, line: 23, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3481, file: !3464, line: 33, baseType: !3494, size: 64, offset: 192)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3481, file: !3464, line: 33, size: 64, elements: !3495)
!3495 = !{!3496, !3502, !3507}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3494, file: !3464, line: 38, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3464, line: 34, size: 64, elements: !3498)
!3498 = !{!3499, !3500, !3501}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3497, file: !3464, line: 35, baseType: !693, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3497, file: !3464, line: 36, baseType: !259, size: 8, offset: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3497, file: !3464, line: 37, baseType: !259, size: 8, offset: 40)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3494, file: !3464, line: 42, baseType: !3503, size: 16)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3464, line: 39, size: 16, elements: !3504)
!3504 = !{!3505, !3506}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3503, file: !3464, line: 40, baseType: !259, size: 8)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3503, file: !3464, line: 41, baseType: !259, size: 8, offset: 8)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3494, file: !3464, line: 46, baseType: !3508, size: 16)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !3464, line: 43, size: 16, elements: !3509)
!3509 = !{!3510, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3508, file: !3464, line: 44, baseType: !259, size: 8)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3508, file: !3464, line: 45, baseType: !259, size: 8, offset: 8)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3453, file: !68, line: 81, baseType: !3513, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3514, file: !68, line: 86, baseType: !3476, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3514, file: !68, line: 87, baseType: !420, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3514, file: !68, line: 88, baseType: !420, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3514, file: !68, line: 89, baseType: !420, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3514, file: !68, line: 90, baseType: !435, size: 8, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3514, file: !68, line: 92, baseType: !3513, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3453, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1952, file: !1953, line: 1463, baseType: !3524, offset: 21184)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1953, line: 739, elements: !1463)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1952, file: !1953, line: 1470, baseType: !548, size: 128, align: 64, offset: 21184)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1952, file: !1953, line: 1471, baseType: !293, size: 32, offset: 21312)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1952, file: !1953, line: 1472, baseType: !109, size: 32, offset: 21344)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1952, file: !1953, line: 1474, baseType: !1951, size: 64, offset: 21376)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1952, file: !1953, line: 1475, baseType: !1423, size: 320, offset: 21440)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1952, file: !1953, line: 1478, baseType: !3531, size: 64, offset: 21760)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3533, line: 49, size: 512, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3544}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3532, file: !3533, line: 50, baseType: !3531, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3532, file: !3533, line: 51, baseType: !221, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3532, file: !3533, line: 52, baseType: !420, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3532, file: !3533, line: 53, baseType: !420, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3532, file: !3533, line: 54, baseType: !3081, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3532, file: !3533, line: 56, baseType: !7, size: 32, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3532, file: !3533, line: 58, baseType: !7, size: 32, offset: 352)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3532, file: !3533, line: 59, baseType: !3543, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !220, line: 159, baseType: !676)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3532, file: !3533, line: 60, baseType: !445, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1952, file: !1953, line: 1482, baseType: !293, size: 32, offset: 21824)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1952, file: !1953, line: 1489, baseType: !221, size: 64, offset: 21888)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1952, file: !1953, line: 1504, baseType: !221, size: 64, offset: 21952)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1952, file: !1953, line: 1505, baseType: !677, size: 64, offset: 22016)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1952, file: !1953, line: 1506, baseType: !676, size: 64, offset: 22080)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1952, file: !1953, line: 1507, baseType: !677, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1952, file: !1953, line: 1508, baseType: !677, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1952, file: !1953, line: 1509, baseType: !677, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1952, file: !1953, line: 1510, baseType: !548, size: 128, align: 64, offset: 22208)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1952, file: !1953, line: 1511, baseType: !109, size: 32, offset: 22336)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1952, file: !1953, line: 1515, baseType: !3556, size: 64, offset: 22400)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !543, line: 56, size: 64, elements: !3557)
!3557 = !{!3558}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3556, file: !543, line: 57, baseType: !546, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1952, file: !1953, line: 1518, baseType: !3556, size: 64, offset: 22464)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1952, file: !1953, line: 1528, baseType: !548, size: 128, align: 64, offset: 22528)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1952, file: !1953, line: 1552, baseType: !3562, size: 35328, offset: 23040)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3563, line: 430, size: 35328, elements: !3564)
!3563 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3564 = !{!3565, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3594, !3595, !3596, !3597, !3598, !3599, !3602, !3603, !3604, !3605}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3562, file: !3563, line: 432, baseType: !3566, size: 192)
!3566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3567, size: 192, elements: !373)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3568, line: 16, size: 64, elements: !3569)
!3568 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3567, file: !3568, line: 17, baseType: !269, size: 16)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3567, file: !3568, line: 18, baseType: !269, size: 16, offset: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3567, file: !3568, line: 19, baseType: !269, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3567, file: !3568, line: 19, baseType: !269, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3567, file: !3568, line: 19, baseType: !269, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3567, file: !3568, line: 19, baseType: !269, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3567, file: !3568, line: 19, baseType: !269, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3567, file: !3568, line: 20, baseType: !269, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3567, file: !3568, line: 20, baseType: !269, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3567, file: !3568, line: 20, baseType: !269, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3567, file: !3568, line: 20, baseType: !269, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3567, file: !3568, line: 20, baseType: !269, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3567, file: !3568, line: 20, baseType: !269, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3562, file: !3563, line: 436, baseType: !420, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3562, file: !3563, line: 440, baseType: !271, size: 16, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3562, file: !3563, line: 441, baseType: !271, size: 16, offset: 272)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3562, file: !3563, line: 442, baseType: !271, size: 16, offset: 288)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3562, file: !3563, line: 443, baseType: !271, size: 16, offset: 304)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3562, file: !3563, line: 447, baseType: !420, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3562, file: !3563, line: 448, baseType: !420, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3562, file: !3563, line: 459, baseType: !3591, size: 256, offset: 448)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3592, size: 256, elements: !629)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3563, line: 428, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3562, file: !3563, line: 461, baseType: !420, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3562, file: !3563, line: 463, baseType: !420, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3562, file: !3563, line: 465, baseType: !420, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3562, file: !3563, line: 466, baseType: !420, size: 64, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3562, file: !3563, line: 467, baseType: !420, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3562, file: !3563, line: 473, baseType: !3600, size: 64, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3563, line: 10, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3562, file: !3563, line: 480, baseType: !420, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3562, file: !3563, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3562, file: !3563, line: 491, baseType: !726, size: 32, offset: 1184)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3562, file: !3563, line: 501, baseType: !3606, size: 33792, offset: 1536)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3607, line: 448, size: 33792, elements: !3608)
!3607 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3608 = !{!3609, !3610, !3611, !3775, !3776, !3782, !3783}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3606, file: !3607, line: 461, baseType: !7, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3606, file: !3607, line: 468, baseType: !420, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3606, file: !3607, line: 476, baseType: !3612, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3607, line: 356, size: 33280, align: 512, elements: !3614)
!3614 = !{!3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3613, file: !3607, line: 358, baseType: !7, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3613, file: !3607, line: 361, baseType: !7, size: 32, offset: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3613, file: !3607, line: 364, baseType: !676, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3613, file: !3607, line: 367, baseType: !676, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3613, file: !3607, line: 370, baseType: !676, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3613, file: !3607, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3613, file: !3607, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3613, file: !3607, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3613, file: !3607, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3613, file: !3607, line: 397, baseType: !3625, size: 32768, offset: 512)
!3625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3607, line: 348, size: 32768, elements: !3626)
!3626 = !{!3627, !3642, !3681, !3758, !3771}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3625, file: !3607, line: 349, baseType: !3628, size: 896)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3607, line: 12, size: 896, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3641}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3628, file: !3607, line: 13, baseType: !726, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3628, file: !3607, line: 14, baseType: !726, size: 32, offset: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3628, file: !3607, line: 15, baseType: !726, size: 32, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3628, file: !3607, line: 16, baseType: !726, size: 32, offset: 96)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3628, file: !3607, line: 17, baseType: !726, size: 32, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3628, file: !3607, line: 18, baseType: !726, size: 32, offset: 160)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3628, file: !3607, line: 19, baseType: !726, size: 32, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3628, file: !3607, line: 22, baseType: !3638, size: 640, offset: 224)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 640, elements: !3639)
!3639 = !{!3640}
!3640 = !DISubrange(count: 20)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3628, file: !3607, line: 25, baseType: !726, size: 32, offset: 864)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3625, file: !3607, line: 350, baseType: !3643, size: 4096, align: 128)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3607, line: 34, size: 4096, align: 128, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3664, !3665, !3666, !3670, !3672, !3676}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3643, file: !3607, line: 35, baseType: !269, size: 16)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3643, file: !3607, line: 36, baseType: !269, size: 16, offset: 16)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3643, file: !3607, line: 37, baseType: !269, size: 16, offset: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3643, file: !3607, line: 38, baseType: !269, size: 16, offset: 48)
!3649 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !3607, line: 39, baseType: !3650, size: 128, offset: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !3607, line: 39, size: 128, elements: !3651)
!3651 = !{!3652, !3657}
!3652 = !DIDerivedType(tag: DW_TAG_member, scope: !3650, file: !3607, line: 40, baseType: !3653, size: 128)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3650, file: !3607, line: 40, size: 128, elements: !3654)
!3654 = !{!3655, !3656}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3653, file: !3607, line: 41, baseType: !676, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3653, file: !3607, line: 42, baseType: !676, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3650, file: !3607, line: 44, baseType: !3658, size: 128)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3650, file: !3607, line: 44, size: 128, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3658, file: !3607, line: 45, baseType: !726, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3658, file: !3607, line: 46, baseType: !726, size: 32, offset: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3658, file: !3607, line: 47, baseType: !726, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3658, file: !3607, line: 48, baseType: !726, size: 32, offset: 96)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3643, file: !3607, line: 51, baseType: !726, size: 32, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3643, file: !3607, line: 52, baseType: !726, size: 32, offset: 224)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3643, file: !3607, line: 55, baseType: !3667, size: 1024, offset: 256)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 1024, elements: !3668)
!3668 = !{!3669}
!3669 = !DISubrange(count: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3643, file: !3607, line: 58, baseType: !3671, size: 2048, offset: 1280)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 2048, elements: !377)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3643, file: !3607, line: 60, baseType: !3673, size: 384, offset: 3328)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 384, elements: !3674)
!3674 = !{!3675}
!3675 = !DISubrange(count: 12)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !3607, line: 62, baseType: !3677, size: 384, offset: 3712)
!3677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !3607, line: 62, size: 384, elements: !3678)
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3677, file: !3607, line: 63, baseType: !3673, size: 384)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3677, file: !3607, line: 64, baseType: !3673, size: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3625, file: !3607, line: 351, baseType: !3682, size: 1088)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3607, line: 79, size: 1088, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3757}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3682, file: !3607, line: 80, baseType: !726, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3682, file: !3607, line: 81, baseType: !726, size: 32, offset: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3682, file: !3607, line: 82, baseType: !726, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3682, file: !3607, line: 83, baseType: !726, size: 32, offset: 96)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3682, file: !3607, line: 84, baseType: !726, size: 32, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3682, file: !3607, line: 85, baseType: !726, size: 32, offset: 160)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3682, file: !3607, line: 86, baseType: !726, size: 32, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3682, file: !3607, line: 88, baseType: !3638, size: 640, offset: 224)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3682, file: !3607, line: 89, baseType: !259, size: 8, offset: 864)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3682, file: !3607, line: 90, baseType: !259, size: 8, offset: 872)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3682, file: !3607, line: 91, baseType: !259, size: 8, offset: 880)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3682, file: !3607, line: 92, baseType: !259, size: 8, offset: 888)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3682, file: !3607, line: 93, baseType: !259, size: 8, offset: 896)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3682, file: !3607, line: 94, baseType: !259, size: 8, offset: 904)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3682, file: !3607, line: 95, baseType: !3699, size: 64, offset: 960)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3701, line: 11, size: 128, elements: !3702)
!3701 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3702 = !{!3703, !3704}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3700, file: !3701, line: 12, baseType: !407, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3700, file: !3701, line: 13, baseType: !3705, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3707, line: 103, size: 1344, elements: !3708)
!3707 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3737, !3738, !3739}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3706, file: !3707, line: 109, baseType: !420, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3706, file: !3707, line: 110, baseType: !420, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3706, file: !3707, line: 111, baseType: !420, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3706, file: !3707, line: 112, baseType: !420, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3706, file: !3707, line: 113, baseType: !420, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3706, file: !3707, line: 114, baseType: !420, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3706, file: !3707, line: 117, baseType: !420, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3706, file: !3707, line: 118, baseType: !420, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3706, file: !3707, line: 119, baseType: !420, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3706, file: !3707, line: 120, baseType: !420, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3706, file: !3707, line: 121, baseType: !420, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3706, file: !3707, line: 122, baseType: !420, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3706, file: !3707, line: 123, baseType: !420, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3706, file: !3707, line: 124, baseType: !420, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3706, file: !3707, line: 125, baseType: !420, size: 64, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3706, file: !3707, line: 139, baseType: !420, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3706, file: !3707, line: 142, baseType: !420, size: 64, offset: 1024)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !3707, line: 144, baseType: !3727, size: 64, offset: 1088)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !3707, line: 144, size: 64, elements: !3728)
!3728 = !{!3729, !3730, !3731}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3727, file: !3707, line: 146, baseType: !269, size: 16)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3727, file: !3707, line: 148, baseType: !676, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3727, file: !3707, line: 150, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3707, line: 59, size: 64, elements: !3733)
!3733 = !{!3734, !3735, !3736}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3732, file: !3707, line: 61, baseType: !676, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3732, file: !3707, line: 63, baseType: !676, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3732, file: !3707, line: 65, baseType: !676, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3706, file: !3707, line: 153, baseType: !420, size: 64, offset: 1152)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3706, file: !3707, line: 154, baseType: !420, size: 64, offset: 1216)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !3707, line: 156, baseType: !3740, size: 64, offset: 1280)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !3707, line: 156, size: 64, elements: !3741)
!3741 = !{!3742, !3743, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3740, file: !3707, line: 158, baseType: !269, size: 16)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3740, file: !3707, line: 160, baseType: !676, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3740, file: !3707, line: 162, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3707, line: 69, size: 64, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3745, file: !3707, line: 71, baseType: !676, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3745, file: !3707, line: 73, baseType: !676, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3745, file: !3707, line: 75, baseType: !676, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3745, file: !3707, line: 77, baseType: !676, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3745, file: !3707, line: 80, baseType: !676, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3745, file: !3707, line: 83, baseType: !676, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3745, file: !3707, line: 86, baseType: !676, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3745, file: !3707, line: 88, baseType: !676, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3745, file: !3707, line: 93, baseType: !676, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3745, file: !3707, line: 100, baseType: !676, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3682, file: !3607, line: 96, baseType: !726, size: 32, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3625, file: !3607, line: 352, baseType: !3759, size: 4608, align: 512)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3607, line: 333, size: 4608, align: 512, elements: !3760)
!3760 = !{!3761, !3762, !3769}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3759, file: !3607, line: 334, baseType: !3643, size: 4096, align: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3759, file: !3607, line: 335, baseType: !3763, size: 512, offset: 4096)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3607, line: 312, size: 512, elements: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3763, file: !3607, line: 313, baseType: !676, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3763, file: !3607, line: 314, baseType: !676, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3763, file: !3607, line: 315, baseType: !3768, size: 384, offset: 128)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 384, elements: !749)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3759, file: !3607, line: 336, baseType: !3770, offset: 4608)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !648)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3625, file: !3607, line: 353, baseType: !3772, size: 32768)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 32768, elements: !3773)
!3773 = !{!3774}
!3774 = !DISubrange(count: 4096)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3606, file: !3607, line: 484, baseType: !3612, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3606, file: !3607, line: 491, baseType: !3777, size: 128, offset: 256)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3607, line: 404, size: 128, elements: !3778)
!3778 = !{!3779, !3780, !3781}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3777, file: !3607, line: 424, baseType: !676, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3777, file: !3607, line: 432, baseType: !7, size: 32, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3777, file: !3607, line: 440, baseType: !7, size: 32, offset: 96)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3606, file: !3607, line: 498, baseType: !3777, size: 128, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3606, file: !3607, line: 508, baseType: !3613, size: 33280, align: 512, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1934, file: !1935, line: 16, baseType: !633, size: 192, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1934, file: !1935, line: 17, baseType: !251, size: 32, offset: 704)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1123, file: !14, line: 1240, baseType: !221, size: 64, offset: 6912)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1123, file: !14, line: 1243, baseType: !726, size: 32, offset: 6976)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1123, file: !14, line: 1245, baseType: !717, size: 64, offset: 7040)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1123, file: !14, line: 1246, baseType: !717, size: 64, offset: 7104)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1123, file: !14, line: 1248, baseType: !727, size: 32, offset: 7168)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1123, file: !14, line: 1249, baseType: !3792, size: 64, offset: 7232)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1123, file: !14, line: 1252, baseType: !3795, size: 256, offset: 7296)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 256, elements: !3668)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1123, file: !14, line: 1253, baseType: !3797, size: 128, offset: 7552)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3798, line: 21, baseType: !3799)
!3798 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3798, line: 19, size: 128, elements: !3800)
!3800 = !{!3801}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3799, file: !3798, line: 20, baseType: !3802, size: 128)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 128, elements: !2527)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1123, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1123, file: !14, line: 1261, baseType: !571, size: 256, offset: 7744)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1123, file: !14, line: 1267, baseType: !309, size: 64, offset: 8000)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1123, file: !14, line: 1269, baseType: !3807, size: 64, offset: 8064)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !883, line: 128, size: 1024, align: 512, elements: !3810)
!3810 = !{!3811, !3815, !3816, !3823, !3829, !3833, !3837, !3841, !3842, !3846, !3850, !3855, !3859}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3809, file: !883, line: 129, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!109, !881, !7}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3809, file: !883, line: 130, baseType: !3812, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3809, file: !883, line: 131, baseType: !3817, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !3820, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3809, file: !883, line: 132, baseType: !3824, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!109, !3820, !7, !309, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3809, file: !883, line: 134, baseType: !3830, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!109, !3820}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3809, file: !883, line: 135, baseType: !3834, size: 64, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!109, !881}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3809, file: !883, line: 136, baseType: !3838, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !881}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3809, file: !883, line: 137, baseType: !3838, size: 64, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3809, file: !883, line: 138, baseType: !3843, size: 64, offset: 512)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !881, !921}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3809, file: !883, line: 139, baseType: !3847, size: 64, offset: 576)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!372, !881, !372, !109}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3809, file: !883, line: 140, baseType: !3851, size: 64, offset: 640)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!876, !3854}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3809, file: !883, line: 141, baseType: !3856, size: 64, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!109, !1039, !435}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3809, file: !883, line: 142, baseType: !3860, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!881, !881, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1123, file: !14, line: 1271, baseType: !3866, size: 448, offset: 8128)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1716, line: 63, size: 448, elements: !3867)
!3867 = !{!3868, !3873, !3874, !3875, !3876, !3877, !3878}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3866, file: !1716, line: 64, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!420, !3872, !1714}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3866, file: !1716, line: 66, baseType: !3869, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3866, file: !1716, line: 69, baseType: !407, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3866, file: !1716, line: 70, baseType: !109, size: 32, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3866, file: !1716, line: 71, baseType: !7, size: 32, offset: 224)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3866, file: !1716, line: 74, baseType: !274, size: 128, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3866, file: !1716, line: 85, baseType: !3879, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1123, file: !14, line: 1274, baseType: !561, size: 64, offset: 8576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1123, file: !14, line: 1280, baseType: !561, size: 64, offset: 8640)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1123, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1123, file: !14, line: 1286, baseType: !3171, size: 32, offset: 8736)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1123, file: !14, line: 1289, baseType: !1496, size: 64, offset: 8768)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1123, file: !14, line: 1290, baseType: !620, size: 64, offset: 8832)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1123, file: !14, line: 1297, baseType: !843, size: 64, offset: 8896)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1123, file: !14, line: 1304, baseType: !3888, size: 64, offset: 8960)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3889, line: 49, size: 64, elements: !3890)
!3889 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3890 = !{!3891}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3888, file: !3889, line: 50, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3889, line: 41, size: 512, align: 512, elements: !3894)
!3894 = !{!3895, !3896, !3901}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3893, file: !3889, line: 43, baseType: !231, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3893, file: !3889, line: 45, baseType: !3897, size: 192, offset: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3889, line: 29, size: 192, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3897, file: !3889, line: 30, baseType: !274, size: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3897, file: !3889, line: 32, baseType: !407, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3893, file: !3889, line: 46, baseType: !407, size: 64, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1123, file: !14, line: 1305, baseType: !3888, size: 64, offset: 9024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1123, file: !14, line: 1306, baseType: !548, size: 128, align: 64, offset: 9088)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1123, file: !14, line: 1307, baseType: !1435, size: 256, offset: 9216)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1123, file: !14, line: 1309, baseType: !571, size: 256, offset: 9472)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1123, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1123, file: !14, line: 1317, baseType: !231, size: 32, align: 512, offset: 10240)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1123, file: !14, line: 1318, baseType: !274, size: 128, offset: 10304)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1123, file: !14, line: 1320, baseType: !231, size: 32, offset: 10432)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1123, file: !14, line: 1321, baseType: !274, size: 128, offset: 10496)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !922, file: !14, line: 656, baseType: !2973, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !922, file: !14, line: 659, baseType: !221, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !922, file: !14, line: 663, baseType: !420, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !14, line: 671, baseType: !3915, size: 32, offset: 704)
!3915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !14, line: 671, size: 32, elements: !3916)
!3916 = !{!3917, !3919}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3915, file: !14, line: 672, baseType: !3918, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3915, file: !14, line: 673, baseType: !7, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !922, file: !14, line: 675, baseType: !992, size: 32, offset: 736)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !922, file: !14, line: 676, baseType: !584, size: 64, offset: 768)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !922, file: !14, line: 677, baseType: !1028, size: 128, offset: 832)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !922, file: !14, line: 678, baseType: !1028, size: 128, offset: 960)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !922, file: !14, line: 679, baseType: !1028, size: 128, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !922, file: !14, line: 680, baseType: !231, size: 32, offset: 1216)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !922, file: !14, line: 681, baseType: !271, size: 16, offset: 1248)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !922, file: !14, line: 682, baseType: !259, size: 8, offset: 1264)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !922, file: !14, line: 683, baseType: !259, size: 8, offset: 1272)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !922, file: !14, line: 684, baseType: !1847, size: 64, offset: 1280)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !922, file: !14, line: 691, baseType: !420, size: 64, offset: 1344)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !922, file: !14, line: 692, baseType: !701, size: 320, offset: 1408)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !922, file: !14, line: 694, baseType: !420, size: 64, offset: 1728)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !922, file: !14, line: 695, baseType: !420, size: 64, offset: 1792)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !922, file: !14, line: 697, baseType: !624, size: 128, offset: 1856)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !922, file: !14, line: 698, baseType: !274, size: 128, offset: 1984)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !922, file: !14, line: 707, baseType: !274, size: 128, offset: 2112)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !922, file: !14, line: 708, baseType: !274, size: 128, offset: 2240)
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !14, line: 709, baseType: !3939, size: 128, offset: 2368)
!3939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !14, line: 709, size: 128, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3939, file: !14, line: 710, baseType: !620, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3939, file: !14, line: 711, baseType: !548, size: 128, align: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !922, file: !14, line: 713, baseType: !563, size: 64, offset: 2496)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !922, file: !14, line: 714, baseType: !563, size: 64, offset: 2560)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !922, file: !14, line: 715, baseType: !251, size: 32, offset: 2624)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !922, file: !14, line: 716, baseType: !251, size: 32, offset: 2656)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !922, file: !14, line: 717, baseType: !251, size: 32, offset: 2688)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !922, file: !14, line: 719, baseType: !251, size: 32, offset: 2720)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !14, line: 721, baseType: !3950, size: 64, offset: 2752)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !14, line: 721, size: 64, elements: !3951)
!3951 = !{!3952, !4080}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3950, file: !14, line: 722, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3955)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3956)
!3956 = !{!3957, !3958, !3962, !3966, !3970, !3971, !3972, !3978, !3991, !3999, !4003, !4004, !4008, !4009, !4013, !4018, !4019, !4023, !4027, !4033, !4034, !4038, !4039, !4043, !4047, !4048, !4053, !4057, !4061, !4065, !4069, !4070, !4076}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3955, file: !14, line: 1915, baseType: !1155, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3955, file: !14, line: 1916, baseType: !3959, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!584, !535, !584, !109}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3955, file: !14, line: 1917, baseType: !3963, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!403, !535, !372, !417, !1634}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3955, file: !14, line: 1918, baseType: !3967, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!403, !535, !309, !417, !1634}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3955, file: !14, line: 1919, baseType: !3105, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3955, file: !14, line: 1920, baseType: !3105, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3955, file: !14, line: 1921, baseType: !3973, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!109, !3108, !3976, !7}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3955, file: !14, line: 1923, baseType: !3979, size: 64, offset: 448)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!109, !535, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3984)
!3984 = !{!3985, !3990}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3983, file: !14, line: 1859, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3987)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!435, !3982, !309, !109, !584, !676, !7}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3983, file: !14, line: 1860, baseType: !584, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3955, file: !14, line: 1924, baseType: !3992, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!3995, !535, !3997}
!3995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3996, line: 59, baseType: !7)
!3996 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3955, file: !14, line: 1925, baseType: !4000, size: 64, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!407, !535, !7, !420}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3955, file: !14, line: 1926, baseType: !4000, size: 64, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3955, file: !14, line: 1927, baseType: !4005, size: 64, offset: 704)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!109, !535, !3264}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3955, file: !14, line: 1928, baseType: !420, size: 64, offset: 768)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3955, file: !14, line: 1929, baseType: !4010, size: 64, offset: 832)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!109, !921, !535}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3955, file: !14, line: 1930, baseType: !4014, size: 64, offset: 896)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!109, !535, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !221)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3955, file: !14, line: 1931, baseType: !4010, size: 64, offset: 960)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3955, file: !14, line: 1932, baseType: !4020, size: 64, offset: 1024)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!109, !535, !584, !584, !109}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3955, file: !14, line: 1933, baseType: !4024, size: 64, offset: 1088)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!109, !109, !535, !109}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3955, file: !14, line: 1934, baseType: !4028, size: 64, offset: 1152)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109, !535, !109, !4031}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3955, file: !14, line: 1935, baseType: !2260, size: 64, offset: 1216)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3955, file: !14, line: 1936, baseType: !4035, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!109, !109}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3955, file: !14, line: 1937, baseType: !4028, size: 64, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3955, file: !14, line: 1938, baseType: !4040, size: 64, offset: 1408)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!403, !2945, !535, !1634, !417, !7}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3955, file: !14, line: 1939, baseType: !4044, size: 64, offset: 1472)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!403, !535, !1634, !2945, !417, !7}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3955, file: !14, line: 1940, baseType: !3161, size: 64, offset: 1536)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3955, file: !14, line: 1941, baseType: !4049, size: 64, offset: 1600)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!109, !535, !109, !4052, !3082}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3955, file: !14, line: 1942, baseType: !4054, size: 64, offset: 1664)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!407, !535, !109, !584, !584}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3955, file: !14, line: 1944, baseType: !4058, size: 64, offset: 1728)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !1613, !535}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3955, file: !14, line: 1948, baseType: !4062, size: 64, offset: 1792)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!403, !535, !584, !535, !584, !417, !7}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3955, file: !14, line: 1950, baseType: !4066, size: 64, offset: 1856)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!584, !535, !584, !535, !584, !584, !7}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3955, file: !14, line: 1953, baseType: !4020, size: 64, offset: 1920)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3955, file: !14, line: 1954, baseType: !4071, size: 64, offset: 1984)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!109, !4074, !7}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3955, file: !14, line: 1955, baseType: !4077, size: 64, offset: 2048)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!109, !4074, !3976, !7}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3950, file: !14, line: 723, baseType: !1564, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !922, file: !14, line: 725, baseType: !4082, size: 64, offset: 2816)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !922, file: !14, line: 726, baseType: !2974, size: 1536, align: 64, offset: 2880)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !922, file: !14, line: 727, baseType: !274, size: 128, offset: 4416)
!4086 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !14, line: 728, baseType: !4087, size: 64, offset: 4544)
!4087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !14, line: 728, size: 64, elements: !4088)
!4088 = !{!4089, !4090, !4093, !4094}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4087, file: !14, line: 729, baseType: !2945, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4087, file: !14, line: 730, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4087, file: !14, line: 731, baseType: !372, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4087, file: !14, line: 732, baseType: !7, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !922, file: !14, line: 735, baseType: !727, size: 32, offset: 4608)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !922, file: !14, line: 738, baseType: !727, size: 32, offset: 4640)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !922, file: !14, line: 739, baseType: !3792, size: 64, offset: 4672)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !922, file: !14, line: 750, baseType: !221, size: 64, offset: 4736)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !882, file: !883, line: 91, baseType: !4100, size: 256, offset: 448)
!4100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 256, elements: !3668)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !882, file: !883, line: 94, baseType: !4102, size: 64, offset: 704)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4103, line: 25, size: 64, elements: !4104)
!4103 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4104 = !{!4105}
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4102, file: !4103, line: 26, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4102, file: !4103, line: 26, size: 64, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4106, file: !4103, line: 28, baseType: !677, size: 64, align: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, scope: !4106, file: !4103, line: 30, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4103, line: 30, size: 64, elements: !4111)
!4111 = !{!4112, !4113}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4110, file: !4103, line: 31, baseType: !231, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4110, file: !4103, line: 32, baseType: !109, size: 32, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !882, file: !883, line: 95, baseType: !3807, size: 64, offset: 768)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !882, file: !883, line: 96, baseType: !1122, size: 64, offset: 832)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !882, file: !883, line: 97, baseType: !420, size: 64, offset: 896)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !882, file: !883, line: 98, baseType: !221, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !883, line: 100, baseType: !4119, size: 128, offset: 1024)
!4119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 100, size: 128, elements: !4120)
!4120 = !{!4121, !4122}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4119, file: !883, line: 101, baseType: !274, size: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4119, file: !883, line: 102, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !882, file: !883, line: 104, baseType: !274, size: 128, offset: 1152)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !882, file: !883, line: 105, baseType: !274, size: 128, offset: 1280)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !882, file: !883, line: 113, baseType: !4127, size: 128, offset: 1408)
!4127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !883, line: 109, size: 128, elements: !4128)
!4128 = !{!4129, !4130, !4131}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4127, file: !883, line: 110, baseType: !624, size: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4127, file: !883, line: 111, baseType: !897, size: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4127, file: !883, line: 112, baseType: !548, size: 128, align: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !877, file: !878, line: 72, baseType: !1122, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !877, file: !878, line: 73, baseType: !109, size: 32, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !877, file: !878, line: 74, baseType: !957, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !872, file: !873, line: 10, baseType: !881, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !536, file: !14, line: 1015, baseType: !921, size: 64, offset: 1344)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !536, file: !14, line: 1016, baseType: !3953, size: 64, offset: 1408)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !536, file: !14, line: 1018, baseType: !676, size: 64, offset: 1472)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !536, file: !14, line: 1020, baseType: !221, size: 64, offset: 1536)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !536, file: !14, line: 1023, baseType: !221, size: 64, offset: 1600)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !536, file: !14, line: 1027, baseType: !4142, size: 64, offset: 1664)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !536, file: !14, line: 1029, baseType: !2973, size: 64, offset: 1728)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !536, file: !14, line: 1030, baseType: !3171, size: 32, offset: 1792)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !536, file: !14, line: 1031, baseType: !3171, size: 32, offset: 1824)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !531, file: !483, line: 255, baseType: !1613, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !531, file: !483, line: 256, baseType: !221, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !531, file: !483, line: 259, baseType: !571, size: 256, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !531, file: !483, line: 260, baseType: !571, size: 256, offset: 512)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !531, file: !483, line: 261, baseType: !109, size: 32, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !531, file: !483, line: 262, baseType: !274, size: 128, offset: 832)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !531, file: !483, line: 263, baseType: !372, size: 64, offset: 960)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !531, file: !483, line: 265, baseType: !417, size: 64, offset: 1024)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !531, file: !483, line: 266, baseType: !435, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !531, file: !483, line: 267, baseType: !435, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !531, file: !483, line: 268, baseType: !3307, size: 64, offset: 1152)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !524, file: !483, line: 277, baseType: !4158, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !530}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !524, file: !483, line: 290, baseType: !1644, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !524, file: !483, line: 292, baseType: !1631, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !524, file: !483, line: 293, baseType: !1640, size: 64, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !524, file: !483, line: 294, baseType: !1636, size: 64, offset: 320)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !524, file: !483, line: 296, baseType: !4166, size: 64, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!403, !530, !372, !417, !584}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !524, file: !483, line: 306, baseType: !417, size: 64, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !524, file: !483, line: 313, baseType: !435, size: 8, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !524, file: !483, line: 314, baseType: !4166, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !524, file: !483, line: 317, baseType: !4173, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!3995, !530, !3997}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !524, file: !483, line: 320, baseType: !4177, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!109, !530, !3264}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !519, file: !483, line: 176, baseType: !4181, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !483, line: 35, flags: DIFlagFwdDecl)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !519, file: !483, line: 177, baseType: !584, size: 64, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !519, file: !483, line: 178, baseType: !481, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !482, file: !483, line: 215, baseType: !221, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !482, file: !483, line: 221, baseType: !676, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !483, line: 223, baseType: !271, size: 16, offset: 896)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !482, file: !483, line: 224, baseType: !331, size: 16, offset: 912)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !482, file: !483, line: 225, baseType: !4190, size: 64, offset: 960)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !483, line: 36, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !482, file: !483, line: 227, baseType: !548, size: 128, align: 64, offset: 1024)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !333, file: !208, line: 71, baseType: !289, size: 32, offset: 448)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !333, file: !208, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !333, file: !208, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !333, file: !208, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !333, file: !208, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !333, file: !208, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !323, file: !324, line: 88, baseType: !4200, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!331, !332, !4203, !109}
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !324, line: 175, size: 512, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4213, !4217, !4218}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4204, file: !324, line: 176, baseType: !409, size: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4204, file: !324, line: 177, baseType: !417, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4204, file: !324, line: 178, baseType: !221, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !4204, file: !324, line: 179, baseType: !4210, size: 64, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!2973}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4204, file: !324, line: 180, baseType: !4214, size: 64, offset: 320)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!403, !535, !332, !4203, !372, !584, !417}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4204, file: !324, line: 182, baseType: !4214, size: 64, offset: 384)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4204, file: !324, line: 184, baseType: !4219, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!109, !535, !332, !4203, !3264}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !323, file: !324, line: 90, baseType: !4223, size: 64, offset: 192)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !323, file: !324, line: 91, baseType: !4225, size: 64, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !315, file: !171, line: 84, baseType: !320, size: 64, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !315, file: !171, line: 85, baseType: !320, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !315, file: !171, line: 87, baseType: !4229, size: 64, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!109, !4232, !305}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4292, !4293, !4294, !4295, !4296, !4297, !4304, !4472, !4485, !4495, !4607, !4609, !4610, !4611, !4615, !4622, !4623, !4626, !4629, !4633, !4737, !4738, !4739, !4740, !4741, !4742, !4772, !4773, !4774, !4777, !4780, !4789, !4790, !4791, !4792, !4793, !4794}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4233, file: !94, line: 706, baseType: !333, size: 512)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4233, file: !94, line: 707, baseType: !4232, size: 64, offset: 512)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4233, file: !94, line: 709, baseType: !222, size: 64, offset: 576)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4233, file: !94, line: 711, baseType: !309, size: 64, offset: 640)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4233, file: !94, line: 712, baseType: !4240, size: 64, offset: 704)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4242)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4252, !4257, !4261}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4242, file: !94, line: 90, baseType: !309, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4242, file: !94, line: 91, baseType: !320, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4242, file: !94, line: 92, baseType: !4247, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!109, !4250, !367}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4233)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4242, file: !94, line: 93, baseType: !4253, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!372, !4250, !4256, !465, !473}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4242, file: !94, line: 95, baseType: !4258, size: 64, offset: 256)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !4232}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4242, file: !94, line: 97, baseType: !4262, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4265)
!4265 = !{!4266, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4264, file: !101, line: 287, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!109, !4232}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4264, file: !101, line: 288, baseType: !4258, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4264, file: !101, line: 289, baseType: !4267, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4264, file: !101, line: 290, baseType: !4267, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4264, file: !101, line: 291, baseType: !4267, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4264, file: !101, line: 292, baseType: !4267, size: 64, offset: 320)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4264, file: !101, line: 293, baseType: !4267, size: 64, offset: 384)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4264, file: !101, line: 294, baseType: !4267, size: 64, offset: 448)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4264, file: !101, line: 295, baseType: !4267, size: 64, offset: 512)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4264, file: !101, line: 296, baseType: !4267, size: 64, offset: 576)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4264, file: !101, line: 297, baseType: !4267, size: 64, offset: 640)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4264, file: !101, line: 298, baseType: !4267, size: 64, offset: 704)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4264, file: !101, line: 299, baseType: !4267, size: 64, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4264, file: !101, line: 300, baseType: !4267, size: 64, offset: 832)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4264, file: !101, line: 301, baseType: !4267, size: 64, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4264, file: !101, line: 302, baseType: !4267, size: 64, offset: 960)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4264, file: !101, line: 303, baseType: !4267, size: 64, offset: 1024)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4264, file: !101, line: 304, baseType: !4267, size: 64, offset: 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4264, file: !101, line: 305, baseType: !4267, size: 64, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4264, file: !101, line: 306, baseType: !4267, size: 64, offset: 1216)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4264, file: !101, line: 307, baseType: !4267, size: 64, offset: 1280)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4264, file: !101, line: 308, baseType: !4267, size: 64, offset: 1344)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4264, file: !101, line: 309, baseType: !4267, size: 64, offset: 1408)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4233, file: !94, line: 714, baseType: !313, size: 64, offset: 768)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4233, file: !94, line: 715, baseType: !305, size: 64, offset: 832)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4233, file: !94, line: 717, baseType: !221, size: 64, offset: 896)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4233, file: !94, line: 719, baseType: !221, size: 64, offset: 960)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4233, file: !94, line: 721, baseType: !571, size: 256, offset: 1024)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4233, file: !94, line: 725, baseType: !4298, size: 448, offset: 1280)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4303}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4298, file: !94, line: 518, baseType: !274, size: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4298, file: !94, line: 519, baseType: !274, size: 128, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4298, file: !94, line: 520, baseType: !274, size: 128, offset: 256)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4298, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4233, file: !94, line: 726, baseType: !4305, size: 2496, offset: 1728)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4306)
!4306 = !{!4307, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4399, !4403}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4305, file: !101, line: 664, baseType: !4308, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4310)
!4310 = !{!4311}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4309, file: !101, line: 59, baseType: !109, size: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4305, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4305, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4305, file: !101, line: 667, baseType: !435, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4305, file: !101, line: 668, baseType: !435, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4305, file: !101, line: 669, baseType: !435, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4305, file: !101, line: 670, baseType: !435, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4305, file: !101, line: 671, baseType: !435, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4305, file: !101, line: 672, baseType: !435, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4305, file: !101, line: 673, baseType: !435, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4305, file: !101, line: 674, baseType: !435, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4305, file: !101, line: 675, baseType: !726, size: 32, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4305, file: !101, line: 676, baseType: !231, size: 32, offset: 96)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4305, file: !101, line: 678, baseType: !274, size: 128, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4305, file: !101, line: 679, baseType: !1175, size: 256, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4305, file: !101, line: 680, baseType: !4327, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4329, line: 43, size: 1536, elements: !4330)
!4329 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4328, file: !4329, line: 44, baseType: !309, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4328, file: !4329, line: 45, baseType: !109, size: 32, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4328, file: !4329, line: 46, baseType: !274, size: 128, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4328, file: !4329, line: 47, baseType: !231, size: 32, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4328, file: !4329, line: 48, baseType: !4336, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !4338, line: 34, size: 192, elements: !4339)
!4338 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1327210c8ac5950226b4c5538c62ec75")
!4339 = !{!4340, !4341, !4342, !4343}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4337, file: !4338, line: 35, baseType: !4232, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4337, file: !4338, line: 36, baseType: !7, size: 32, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4337, file: !4338, line: 37, baseType: !109, size: 32, offset: 96)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4337, file: !4338, line: 38, baseType: !309, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4328, file: !4329, line: 49, baseType: !1423, size: 320, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4328, file: !4329, line: 50, baseType: !420, size: 64, offset: 704)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4328, file: !4329, line: 51, baseType: !2071, size: 64, offset: 768)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4328, file: !4329, line: 52, baseType: !2071, size: 64, offset: 832)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4328, file: !4329, line: 53, baseType: !2071, size: 64, offset: 896)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4328, file: !4329, line: 54, baseType: !2071, size: 64, offset: 960)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4328, file: !4329, line: 55, baseType: !2071, size: 64, offset: 1024)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4328, file: !4329, line: 56, baseType: !420, size: 64, offset: 1088)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4328, file: !4329, line: 57, baseType: !420, size: 64, offset: 1152)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4328, file: !4329, line: 58, baseType: !420, size: 64, offset: 1216)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4328, file: !4329, line: 59, baseType: !420, size: 64, offset: 1280)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4328, file: !4329, line: 60, baseType: !420, size: 64, offset: 1344)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4328, file: !4329, line: 61, baseType: !4232, size: 64, offset: 1408)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4328, file: !4329, line: 62, baseType: !435, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4328, file: !4329, line: 63, baseType: !435, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4305, file: !101, line: 681, baseType: !435, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4305, file: !101, line: 682, baseType: !435, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4305, file: !101, line: 683, baseType: !435, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4305, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4305, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4305, file: !101, line: 690, baseType: !2063, size: 512, offset: 640)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4305, file: !101, line: 691, baseType: !676, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4305, file: !101, line: 692, baseType: !1435, size: 256, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4305, file: !101, line: 693, baseType: !633, size: 192, offset: 1472)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4305, file: !101, line: 694, baseType: !4336, size: 64, offset: 1664)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4305, file: !101, line: 695, baseType: !251, size: 32, offset: 1728)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4305, file: !101, line: 696, baseType: !251, size: 32, offset: 1760)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4305, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4305, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4305, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4305, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4305, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4305, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4305, file: !101, line: 703, baseType: !435, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4305, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4305, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4305, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4305, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4305, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4305, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4305, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4305, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4305, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4305, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4305, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4305, file: !101, line: 715, baseType: !676, size: 64, offset: 2048)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4305, file: !101, line: 716, baseType: !676, size: 64, offset: 2112)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4305, file: !101, line: 717, baseType: !676, size: 64, offset: 2176)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4305, file: !101, line: 718, baseType: !676, size: 64, offset: 2240)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4305, file: !101, line: 720, baseType: !4394, size: 64, offset: 2304)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4396)
!4396 = !{!4397, !4398}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4395, file: !101, line: 633, baseType: !231, size: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4395, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4305, file: !101, line: 721, baseType: !4400, size: 64, offset: 2368)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{null, !4232, !693}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4305, file: !101, line: 722, baseType: !4404, size: 64, offset: 2432)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 117, size: 2432, elements: !4406)
!4406 = !{!4407, !4435, !4436, !4443, !4448, !4470, !4471}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4405, file: !117, line: 118, baseType: !4408, size: 320)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !117, line: 52, size: 320, elements: !4409)
!4409 = !{!4410, !4414, !4415, !4416, !4417, !4418}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4408, file: !117, line: 53, baseType: !4411, size: 128)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2229, line: 82, size: 128, elements: !4412)
!4412 = !{!4413}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4411, file: !2229, line: 83, baseType: !274, size: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4408, file: !117, line: 54, baseType: !693, size: 32, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4408, file: !117, line: 55, baseType: !693, size: 32, offset: 160)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4408, file: !117, line: 56, baseType: !693, size: 32, offset: 192)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4408, file: !117, line: 57, baseType: !116, size: 32, offset: 224)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4408, file: !117, line: 58, baseType: !4419, size: 64, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4421, line: 65, size: 384, elements: !4422)
!4421 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4420, file: !4421, line: 66, baseType: !701, size: 320)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4420, file: !4421, line: 67, baseType: !4425, size: 64, offset: 320)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4421, line: 54, size: 192, elements: !4427)
!4427 = !{!4428, !4433, !4434}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4426, file: !4421, line: 55, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4421, line: 51, baseType: !4430)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!109, !4425, !420, !221}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4426, file: !4421, line: 56, baseType: !4425, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4426, file: !4421, line: 57, baseType: !109, size: 32, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4405, file: !117, line: 119, baseType: !4408, size: 320, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4405, file: !117, line: 120, baseType: !4437, size: 1408, offset: 640)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !117, line: 85, size: 1408, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4442}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4437, file: !117, line: 86, baseType: !4408, size: 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4437, file: !117, line: 87, baseType: !4420, size: 384, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4437, file: !117, line: 88, baseType: !4408, size: 320, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4437, file: !117, line: 89, baseType: !4420, size: 384, offset: 1024)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4405, file: !117, line: 121, baseType: !4444, size: 192, offset: 2048)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !117, line: 71, size: 192, elements: !4445)
!4445 = !{!4446, !4447}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4444, file: !117, line: 72, baseType: !274, size: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4444, file: !117, line: 73, baseType: !693, size: 32, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4405, file: !117, line: 122, baseType: !4449, size: 64, offset: 2240)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !117, line: 107, size: 576, elements: !4451)
!4451 = !{!4452, !4453, !4469}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4450, file: !117, line: 108, baseType: !122, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4450, file: !117, line: 113, baseType: !4454, size: 448, offset: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4450, file: !117, line: 109, size: 448, elements: !4455)
!4455 = !{!4456, !4457, !4462}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4454, file: !117, line: 110, baseType: !2228, size: 320)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4454, file: !117, line: 111, baseType: !4458, size: 192)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !117, line: 66, size: 192, elements: !4459)
!4459 = !{!4460, !4461}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4458, file: !117, line: 67, baseType: !274, size: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4458, file: !117, line: 68, baseType: !693, size: 32, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4454, file: !117, line: 112, baseType: !4463, size: 448)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !117, line: 92, size: 448, elements: !4464)
!4464 = !{!4465, !4466, !4467}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4463, file: !117, line: 93, baseType: !129, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4463, file: !117, line: 94, baseType: !2228, size: 320, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4463, file: !117, line: 95, baseType: !4468, size: 64, offset: 384)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4450, file: !117, line: 114, baseType: !4232, size: 64, offset: 512)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4405, file: !117, line: 123, baseType: !4449, size: 64, offset: 2304)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4405, file: !117, line: 124, baseType: !4449, size: 64, offset: 2368)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4233, file: !94, line: 727, baseType: !4473, size: 64, offset: 4224)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4482, !4483, !4484}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4474, file: !101, line: 743, baseType: !4264, size: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4474, file: !101, line: 744, baseType: !4267, size: 64, offset: 1472)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4474, file: !101, line: 745, baseType: !4479, size: 64, offset: 1536)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !4232, !435}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4474, file: !101, line: 746, baseType: !4267, size: 64, offset: 1600)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4474, file: !101, line: 747, baseType: !4258, size: 64, offset: 1664)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4474, file: !101, line: 748, baseType: !4258, size: 64, offset: 1728)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4233, file: !94, line: 736, baseType: !4486, size: 128, offset: 4288)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4487)
!4487 = !{!4488, !4492}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4486, file: !94, line: 531, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4491, line: 13, flags: DIFlagFwdDecl)
!4491 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4486, file: !94, line: 532, baseType: !4493, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4233, file: !94, line: 738, baseType: !4496, size: 64, offset: 4416)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !4499, line: 23, size: 1600, elements: !4500)
!4499 = !DIFile(filename: "./include/linux/dma-map-ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4d66bec2a94b0bd77a1dc531a459703")
!4500 = !{!4501, !4502, !4508, !4512, !4516, !4520, !4540, !4544, !4548, !4552, !4556, !4560, !4564, !4568, !4572, !4573, !4577, !4578, !4582, !4583, !4587, !4591, !4595, !4599, !4603}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4498, file: !4499, line: 24, baseType: !7, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4498, file: !4499, line: 26, baseType: !4503, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!221, !4232, !417, !4506, !219, !420}
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !220, line: 149, baseType: !676)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4498, file: !4499, line: 29, baseType: !4509, size: 64, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4232, !417, !221, !4507, !420}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_pages", scope: !4498, file: !4499, line: 31, baseType: !4513, size: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!2951, !4232, !417, !4506, !133, !219}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !4498, file: !4499, line: 34, baseType: !4517, size: 64, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !4232, !417, !2951, !4507, !133}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_noncontiguous", scope: !4498, file: !4499, line: 36, baseType: !4521, size: 64, offset: 320)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!4524, !4232, !417, !133, !219, !420}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4526, line: 39, size: 128, elements: !4527)
!4526 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4527 = !{!4528, !4538, !4539}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4525, file: !4526, line: 40, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4526, line: 11, size: 256, elements: !4531)
!4531 = !{!4532, !4533, !4534, !4535, !4536, !4537}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4530, file: !4526, line: 12, baseType: !420, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4530, file: !4526, line: 13, baseType: !7, size: 32, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4530, file: !4526, line: 14, baseType: !7, size: 32, offset: 96)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4530, file: !4526, line: 15, baseType: !4507, size: 64, offset: 128)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4530, file: !4526, line: 17, baseType: !7, size: 32, offset: 192)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4530, file: !4526, line: 20, baseType: !7, size: 32, offset: 224)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4525, file: !4526, line: 41, baseType: !7, size: 32, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4525, file: !4526, line: 42, baseType: !7, size: 32, offset: 96)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "free_noncontiguous", scope: !4498, file: !4499, line: 39, baseType: !4541, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !4232, !417, !4524, !133}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4498, file: !4499, line: 41, baseType: !4545, size: 64, offset: 448)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!109, !4232, !3264, !221, !4507, !417, !420}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "get_sgtable", scope: !4498, file: !4499, line: 44, baseType: !4549, size: 64, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!109, !4232, !4524, !221, !4507, !417, !420}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "map_page", scope: !4498, file: !4499, line: 48, baseType: !4553, size: 64, offset: 576)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!4507, !4232, !2951, !420, !417, !133, !420}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_page", scope: !4498, file: !4499, line: 51, baseType: !4557, size: 64, offset: 640)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{null, !4232, !4507, !417, !133, !420}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "map_sg", scope: !4498, file: !4499, line: 59, baseType: !4561, size: 64, offset: 704)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!109, !4232, !4529, !109, !133, !420}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_sg", scope: !4498, file: !4499, line: 61, baseType: !4565, size: 64, offset: 768)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4232, !4529, !109, !133, !420}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "map_resource", scope: !4498, file: !4499, line: 63, baseType: !4569, size: 64, offset: 832)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!4507, !4232, !3543, !417, !133, !420}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_resource", scope: !4498, file: !4499, line: 66, baseType: !4557, size: 64, offset: 896)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_cpu", scope: !4498, file: !4499, line: 69, baseType: !4574, size: 64, offset: 960)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !4232, !4507, !417, !133}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_device", scope: !4498, file: !4499, line: 71, baseType: !4574, size: 64, offset: 1024)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_cpu", scope: !4498, file: !4499, line: 74, baseType: !4579, size: 64, offset: 1088)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{null, !4232, !4529, !109, !133}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_device", scope: !4498, file: !4499, line: 76, baseType: !4579, size: 64, offset: 1152)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sync", scope: !4498, file: !4499, line: 78, baseType: !4584, size: 64, offset: 1216)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{null, !4232, !221, !417, !133}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_supported", scope: !4498, file: !4499, line: 80, baseType: !4588, size: 64, offset: 1280)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!109, !4232, !676}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "get_required_mask", scope: !4498, file: !4499, line: 81, baseType: !4592, size: 64, offset: 1344)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!676, !4232}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "max_mapping_size", scope: !4498, file: !4499, line: 82, baseType: !4596, size: 64, offset: 1408)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!417, !4232}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "opt_mapping_size", scope: !4498, file: !4499, line: 83, baseType: !4600, size: 64, offset: 1472)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!417}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "get_merge_boundary", scope: !4498, file: !4499, line: 84, baseType: !4604, size: 64, offset: 1536)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!420, !4232}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4233, file: !94, line: 740, baseType: !4608, size: 64, offset: 4480)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4233, file: !94, line: 741, baseType: !676, size: 64, offset: 4544)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4233, file: !94, line: 746, baseType: !676, size: 64, offset: 4608)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4233, file: !94, line: 747, baseType: !4612, size: 64, offset: 4672)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4614)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4233, file: !94, line: 749, baseType: !4616, size: 64, offset: 4736)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4618)
!4618 = !{!4619, !4620, !4621}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4617, file: !94, line: 433, baseType: !7, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4617, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4617, file: !94, line: 435, baseType: !420, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4233, file: !94, line: 751, baseType: !274, size: 128, offset: 4800)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4233, file: !94, line: 762, baseType: !4624, size: 64, offset: 4928)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4233, file: !94, line: 770, baseType: !4627, offset: 4992)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4628, line: 5, elements: !1463)
!4628 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4233, file: !94, line: 772, baseType: !4630, size: 64, offset: 4992)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4632, line: 18, flags: DIFlagFwdDecl)
!4632 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4233, file: !94, line: 773, baseType: !4634, size: 64, offset: 5056)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4636, line: 41, size: 512, elements: !4637)
!4636 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4637 = !{!4638, !4639, !4733, !4734, !4735, !4736}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4635, file: !4636, line: 42, baseType: !4634, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4635, file: !4636, line: 43, baseType: !4640, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4642)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4636, line: 125, size: 1408, elements: !4643)
!4643 = !{!4644, !4648, !4652, !4658, !4662, !4663, !4668, !4672, !4676, !4680, !4684, !4685, !4689, !4693, !4697, !4708, !4709, !4710, !4711, !4721, !4725, !4729}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4642, file: !4636, line: 126, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!4634, !4634}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4642, file: !4636, line: 127, baseType: !4649, size: 64, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !4634}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4642, file: !4636, line: 128, baseType: !4653, size: 64, offset: 128)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!435, !4656}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4635)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4642, file: !4636, line: 129, baseType: !4659, size: 64, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!445, !4656, !4250}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4642, file: !4636, line: 131, baseType: !4653, size: 64, offset: 256)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4642, file: !4636, line: 133, baseType: !4664, size: 64, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!4667, !4656}
!4667 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4636, line: 132, flags: DIFlagFwdDecl)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4642, file: !4636, line: 134, baseType: !4669, size: 64, offset: 384)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!435, !4656, !309}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4642, file: !4636, line: 136, baseType: !4673, size: 64, offset: 448)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!109, !4656, !309, !7, !221, !417}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4642, file: !4636, line: 141, baseType: !4677, size: 64, offset: 512)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!109, !4656, !309, !1511, !417}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4642, file: !4636, line: 144, baseType: !4681, size: 64, offset: 576)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!309, !4656}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4642, file: !4636, line: 145, baseType: !4681, size: 64, offset: 640)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4642, file: !4636, line: 146, baseType: !4686, size: 64, offset: 704)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!4634, !4656}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4642, file: !4636, line: 148, baseType: !4690, size: 64, offset: 768)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!4634, !4656, !4634}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4642, file: !4636, line: 151, baseType: !4694, size: 64, offset: 832)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!4634, !4656, !309}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4642, file: !4636, line: 153, baseType: !4698, size: 64, offset: 896)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!109, !4656, !309, !309, !7, !7, !4701}
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4636, line: 94, size: 640, elements: !4703)
!4703 = !{!4704, !4705, !4706}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4702, file: !4636, line: 95, baseType: !4634, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4702, file: !4636, line: 96, baseType: !7, size: 32, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4702, file: !4636, line: 97, baseType: !4707, size: 512, offset: 128)
!4707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 512, elements: !2106)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4642, file: !4636, line: 158, baseType: !4690, size: 64, offset: 960)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4642, file: !4636, line: 161, baseType: !4686, size: 64, offset: 1024)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4642, file: !4636, line: 163, baseType: !4645, size: 64, offset: 1088)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4642, file: !4636, line: 164, baseType: !4712, size: 64, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!109, !4656, !4715}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4636, line: 73, size: 128, elements: !4717)
!4717 = !{!4718, !4719, !4720}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4716, file: !4636, line: 74, baseType: !7, size: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4716, file: !4636, line: 75, baseType: !7, size: 32, offset: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4716, file: !4636, line: 76, baseType: !4656, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4642, file: !4636, line: 166, baseType: !4722, size: 64, offset: 1216)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!221, !4634, !109}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4642, file: !4636, line: 167, baseType: !4726, size: 64, offset: 1280)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!109, !4656, !7}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4642, file: !4636, line: 168, baseType: !4730, size: 64, offset: 1344)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!109, !4634}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4635, file: !4636, line: 44, baseType: !4232, size: 64, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4635, file: !4636, line: 45, baseType: !274, size: 128, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4635, file: !4636, line: 46, baseType: !274, size: 128, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4635, file: !4636, line: 47, baseType: !259, size: 8, offset: 448)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4233, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4233, file: !94, line: 778, baseType: !992, size: 32, offset: 5152)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4233, file: !94, line: 779, baseType: !726, size: 32, offset: 5184)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4233, file: !94, line: 781, baseType: !231, size: 32, offset: 5216)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4233, file: !94, line: 782, baseType: !274, size: 128, offset: 5248)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4233, file: !94, line: 784, baseType: !4743, size: 64, offset: 5376)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4745)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4746, line: 52, size: 768, elements: !4747)
!4746 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4747 = !{!4748, !4749, !4750, !4751, !4752, !4756, !4760, !4761, !4762, !4763, !4767, !4771}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4745, file: !4746, line: 53, baseType: !309, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4745, file: !4746, line: 55, baseType: !320, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4745, file: !4746, line: 56, baseType: !320, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4745, file: !4746, line: 58, baseType: !4247, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4745, file: !4746, line: 59, baseType: !4753, size: 64, offset: 256)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!372, !4250, !4256}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4745, file: !4746, line: 61, baseType: !4757, size: 64, offset: 320)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !4743}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4745, file: !4746, line: 62, baseType: !4258, size: 64, offset: 384)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4745, file: !4746, line: 64, baseType: !4267, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4745, file: !4746, line: 66, baseType: !426, size: 64, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4745, file: !4746, line: 67, baseType: !4764, size: 64, offset: 576)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!445, !4250}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4745, file: !4746, line: 69, baseType: !4768, size: 64, offset: 640)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !4250, !465, !473}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4745, file: !4746, line: 71, baseType: !4262, size: 64, offset: 704)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4233, file: !94, line: 785, baseType: !320, size: 64, offset: 5440)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4233, file: !94, line: 787, baseType: !4258, size: 64, offset: 5504)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4233, file: !94, line: 788, baseType: !4775, size: 64, offset: 5568)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4233, file: !94, line: 789, baseType: !4778, size: 64, offset: 5632)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4233, file: !94, line: 791, baseType: !4781, size: 64, offset: 5696)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4783)
!4783 = !{!4784, !4785, !4786, !4787, !4788}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4782, file: !94, line: 598, baseType: !140, size: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4782, file: !94, line: 599, baseType: !149, size: 32, offset: 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4782, file: !94, line: 600, baseType: !154, size: 32, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4782, file: !94, line: 601, baseType: !435, size: 8, offset: 96)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4782, file: !94, line: 602, baseType: !435, size: 8, offset: 104)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4233, file: !94, line: 793, baseType: !159, size: 32, offset: 5760)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4233, file: !94, line: 795, baseType: !435, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4233, file: !94, line: 796, baseType: !435, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4233, file: !94, line: 797, baseType: !435, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4233, file: !94, line: 798, baseType: !435, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4233, file: !94, line: 799, baseType: !435, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !315, file: !171, line: 88, baseType: !4247, size: 64, offset: 384)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !315, file: !171, line: 89, baseType: !4267, size: 64, offset: 448)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !315, file: !171, line: 90, baseType: !4258, size: 64, offset: 512)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !315, file: !171, line: 91, baseType: !4258, size: 64, offset: 576)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !315, file: !171, line: 92, baseType: !4258, size: 64, offset: 640)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !315, file: !171, line: 94, baseType: !4267, size: 64, offset: 704)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !315, file: !171, line: 95, baseType: !4267, size: 64, offset: 768)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !315, file: !171, line: 97, baseType: !4803, size: 64, offset: 832)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!109, !4232, !4308}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !315, file: !171, line: 98, baseType: !4267, size: 64, offset: 896)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !315, file: !171, line: 100, baseType: !4267, size: 64, offset: 960)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !315, file: !171, line: 102, baseType: !4267, size: 64, offset: 1024)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !315, file: !171, line: 103, baseType: !4258, size: 64, offset: 1088)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !315, file: !171, line: 105, baseType: !4262, size: 64, offset: 1152)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !315, file: !171, line: 107, baseType: !4812, size: 64, offset: 1216)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4814)
!4814 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !171, line: 107, flags: DIFlagFwdDecl)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !315, file: !171, line: 109, baseType: !435, size: 8, offset: 1280)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !306, file: !88, line: 100, baseType: !1155, size: 64, offset: 128)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !306, file: !88, line: 101, baseType: !309, size: 64, offset: 192)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !306, file: !88, line: 103, baseType: !435, size: 8, offset: 256)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !306, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !306, file: !88, line: 106, baseType: !4821, size: 64, offset: 320)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4823)
!4823 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !306, file: !88, line: 107, baseType: !4825, size: 64, offset: 384)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4827)
!4827 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !306, file: !88, line: 109, baseType: !4267, size: 64, offset: 448)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !306, file: !88, line: 110, baseType: !4258, size: 64, offset: 512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !306, file: !88, line: 111, baseType: !4267, size: 64, offset: 576)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !306, file: !88, line: 112, baseType: !4258, size: 64, offset: 640)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !306, file: !88, line: 113, baseType: !4803, size: 64, offset: 704)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !306, file: !88, line: 114, baseType: !4267, size: 64, offset: 768)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !306, file: !88, line: 115, baseType: !320, size: 64, offset: 832)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !306, file: !88, line: 116, baseType: !320, size: 64, offset: 896)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !306, file: !88, line: 118, baseType: !4262, size: 64, offset: 960)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !306, file: !88, line: 119, baseType: !4258, size: 64, offset: 1024)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !306, file: !88, line: 121, baseType: !4839, size: 64, offset: 1088)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !224, line: 78, size: 1216, elements: !4841)
!4841 = !{!4842, !4843, !4844, !4845, !4846}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4840, file: !224, line: 79, baseType: !333, size: 512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !4840, file: !224, line: 80, baseType: !227, size: 320, align: 64, offset: 512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !4840, file: !224, line: 81, baseType: !284, size: 256, offset: 832)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !4840, file: !224, line: 82, baseType: !1194, size: 64, offset: 1088)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4840, file: !224, line: 83, baseType: !305, size: 64, offset: 1152)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !223, file: !224, line: 116, baseType: !372, size: 64, offset: 1536)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !223, file: !224, line: 117, baseType: !4232, size: 64, offset: 1600)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !223, file: !224, line: 118, baseType: !259, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4852)
!4852 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !277)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4856)
!4856 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!4857 = !{!4858, !4860, !4871, !4876, !4878, !4880, !4885, !4888, !4890, !4892, !4894, !4896, !4898, !4900, !4902, !4904, !4906, !0, !4908, !4910, !4912, !4914, !4916, !4921, !4923, !4925, !4928, !4930, !4932, !4935, !4938, !4943, !4948, !4950, !4954, !4956, !4959, !4964, !4966, !4971, !4973, !4978, !4983, !4988, !4993, !4995, !5000, !5002, !5007, !5010, !5024, !5027, !5029, !5034}
!4858 = !DIGlobalVariableExpression(var: !4859, expr: !DIExpression())
!4859 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !2848, isLocal: true, isDefinition: true)
!4860 = !DIGlobalVariableExpression(var: !4861, expr: !DIExpression())
!4861 = distinct !DIGlobalVariable(name: "__setup_deferred_probe_timeout_setup", scope: !2, file: !3, line: 273, type: !4862, isLocal: true, isDefinition: true, align: 64)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4863, line: 324, size: 192, elements: !4864)
!4863 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4864 = !{!4865, !4866, !4870}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4862, file: !4863, line: 325, baseType: !309, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4862, file: !4863, line: 326, baseType: !4867, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!109, !372}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4862, file: !4863, line: 327, baseType: !109, size: 32, offset: 128)
!4871 = !DIGlobalVariableExpression(var: !4872, expr: !DIExpression())
!4872 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !4873, isLocal: true, isDefinition: true)
!4873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 360, elements: !4874)
!4874 = !{!4875}
!4875 = !DISubrange(count: 45)
!4876 = !DIGlobalVariableExpression(var: !4877, expr: !DIExpression())
!4877 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_deferred_probe_check_state290", scope: !2, file: !3, line: 302, type: !221, isLocal: true, isDefinition: true)
!4878 = !DIGlobalVariableExpression(var: !4879, expr: !DIExpression())
!4879 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_dd__291_375_deferred_probe_initcall7292", scope: !2, file: !3, line: 375, type: !221, isLocal: true, isDefinition: true)
!4880 = !DIGlobalVariableExpression(var: !4881, expr: !DIExpression())
!4881 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !4882, isLocal: true, isDefinition: true)
!4882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 136, elements: !4883)
!4883 = !{!4884}
!4884 = !DISubrange(count: 17)
!4885 = !DIGlobalVariableExpression(var: !4886, expr: !DIExpression())
!4886 = distinct !DIGlobalVariable(name: "__exitcall_deferred_probe_exit", scope: !2, file: !3, line: 381, type: !4887, isLocal: true, isDefinition: true)
!4887 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4863, line: 120, baseType: !1538)
!4888 = !DIGlobalVariableExpression(var: !4889, expr: !DIExpression())
!4889 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_bind_driver293", scope: !2, file: !3, line: 508, type: !221, isLocal: true, isDefinition: true)
!4890 = !DIGlobalVariableExpression(var: !4891, expr: !DIExpression())
!4891 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wait_for_device_probe294", scope: !2, file: !3, line: 777, type: !221, isLocal: true, isDefinition: true)
!4892 = !DIGlobalVariableExpression(var: !4893, expr: !DIExpression())
!4893 = distinct !DIGlobalVariable(name: "__setup_save_async_options", scope: !2, file: !3, line: 866, type: !4862, isLocal: true, isDefinition: true, align: 64)
!4894 = !DIGlobalVariableExpression(var: !4895, expr: !DIExpression())
!4895 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_attach295", scope: !2, file: !3, line: 1075, type: !221, isLocal: true, isDefinition: true)
!4896 = !DIGlobalVariableExpression(var: !4897, expr: !DIExpression())
!4897 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_driver_attach296", scope: !2, file: !3, line: 1137, type: !221, isLocal: true, isDefinition: true)
!4898 = !DIGlobalVariableExpression(var: !4899, expr: !DIExpression())
!4899 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_attach297", scope: !2, file: !3, line: 1235, type: !221, isLocal: true, isDefinition: true)
!4900 = !DIGlobalVariableExpression(var: !4901, expr: !DIExpression())
!4901 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_release_driver298", scope: !2, file: !3, line: 1320, type: !221, isLocal: true, isDefinition: true)
!4902 = !DIGlobalVariableExpression(var: !4903, expr: !DIExpression())
!4903 = distinct !DIGlobalVariable(name: "initcalls_done", scope: !2, file: !3, line: 58, type: !435, isLocal: true, isDefinition: true)
!4904 = !DIGlobalVariableExpression(var: !4905, expr: !DIExpression())
!4905 = distinct !DIGlobalVariable(name: "defer_all_probes", scope: !2, file: !3, line: 70, type: !435, isLocal: true, isDefinition: true)
!4906 = !DIGlobalVariableExpression(var: !4907, expr: !DIExpression())
!4907 = distinct !DIGlobalVariable(name: "driver_deferred_probe_enable", scope: !2, file: !3, line: 156, type: !435, isLocal: true, isDefinition: true)
!4908 = !DIGlobalVariableExpression(var: !4909, expr: !DIExpression())
!4909 = distinct !DIGlobalVariable(name: "deferred_probe_pending_list", scope: !2, file: !3, line: 55, type: !274, isLocal: true, isDefinition: true)
!4910 = !DIGlobalVariableExpression(var: !4911, expr: !DIExpression())
!4911 = distinct !DIGlobalVariable(name: "deferred_trigger_count", scope: !2, file: !3, line: 57, type: !251, isLocal: true, isDefinition: true)
!4912 = !DIGlobalVariableExpression(var: !4913, expr: !DIExpression())
!4913 = distinct !DIGlobalVariable(name: "deferred_probe_active_list", scope: !2, file: !3, line: 56, type: !274, isLocal: true, isDefinition: true)
!4914 = !DIGlobalVariableExpression(var: !4915, expr: !DIExpression())
!4915 = distinct !DIGlobalVariable(name: "deferred_probe_work", scope: !2, file: !3, line: 130, type: !1435, isLocal: true, isDefinition: true)
!4916 = !DIGlobalVariableExpression(var: !4917, expr: !DIExpression())
!4917 = distinct !DIGlobalVariable(name: "__setup_str_deferred_probe_timeout_setup", scope: !2, file: !3, line: 273, type: !4918, isLocal: true, isDefinition: true, align: 8)
!4918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, elements: !4919)
!4919 = !{!4920}
!4920 = !DISubrange(count: 24)
!4921 = !DIGlobalVariableExpression(var: !4922, expr: !DIExpression())
!4922 = distinct !DIGlobalVariable(name: "driver_deferred_probe_timeout", scope: !2, file: !3, line: 260, type: !109, isLocal: true, isDefinition: true)
!4923 = !DIGlobalVariableExpression(var: !4924, expr: !DIExpression())
!4924 = distinct !DIGlobalVariable(name: "deferred_probe_timeout_work", scope: !2, file: !3, line: 321, type: !1491, isLocal: true, isDefinition: true)
!4925 = !DIGlobalVariableExpression(var: !4926, expr: !DIExpression())
!4926 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !4927, isLocal: true, isDefinition: true)
!4927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 192, elements: !4919)
!4928 = !DIGlobalVariableExpression(var: !4929, expr: !DIExpression())
!4929 = distinct !DIGlobalVariable(name: "deferred_devs_fops", scope: !2, file: !3, line: 257, type: !3954, isLocal: true, isDefinition: true)
!4930 = !DIGlobalVariableExpression(var: !4931, expr: !DIExpression())
!4931 = distinct !DIGlobalVariable(scope: null, file: !3, line: 250, type: !748, isLocal: true, isDefinition: true)
!4932 = !DIGlobalVariableExpression(var: !4933, expr: !DIExpression())
!4933 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !4934, isLocal: true, isDefinition: true)
!4934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16, elements: !1311)
!4935 = !DIGlobalVariableExpression(var: !4936, expr: !DIExpression())
!4936 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !4937, isLocal: true, isDefinition: true)
!4937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 56, elements: !1313)
!4938 = !DIGlobalVariableExpression(var: !4939, expr: !DIExpression())
!4939 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4940, isLocal: true, isDefinition: true)
!4940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 248, elements: !4941)
!4941 = !{!4942}
!4942 = !DISubrange(count: 31)
!4943 = !DIGlobalVariableExpression(var: !4944, expr: !DIExpression())
!4944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !4945, isLocal: true, isDefinition: true)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 104, elements: !4946)
!4946 = !{!4947}
!4947 = !DISubrange(count: 13)
!4948 = !DIGlobalVariableExpression(var: !4949, expr: !DIExpression())
!4949 = distinct !DIGlobalVariable(name: "probe_count", scope: !2, file: !3, line: 510, type: !251, isLocal: true, isDefinition: true)
!4950 = !DIGlobalVariableExpression(var: !4951, expr: !DIExpression())
!4951 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !4952, file: !4953, line: 112, type: !221, isLocal: true, isDefinition: true)
!4952 = distinct !DISubprogram(name: "might_resched", scope: !4953, file: !4953, line: 110, type: !1539, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4953 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4954 = !DIGlobalVariableExpression(var: !4955, expr: !DIExpression())
!4955 = distinct !DIGlobalVariable(name: "probe_waitqueue", scope: !2, file: !3, line: 511, type: !635, isLocal: true, isDefinition: true)
!4956 = !DIGlobalVariableExpression(var: !4957, expr: !DIExpression())
!4957 = distinct !DIGlobalVariable(name: "__setup_str_save_async_options", scope: !2, file: !3, line: 866, type: !4958, isLocal: true, isDefinition: true, align: 8)
!4958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 160, elements: !3639)
!4959 = !DIGlobalVariableExpression(var: !4960, expr: !DIExpression())
!4960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 859, type: !4961, isLocal: true, isDefinition: true)
!4961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 472, elements: !4962)
!4962 = !{!4963}
!4963 = !DISubrange(count: 59)
!4964 = !DIGlobalVariableExpression(var: !4965, expr: !DIExpression())
!4965 = distinct !DIGlobalVariable(scope: null, file: !3, line: 862, type: !4934, isLocal: true, isDefinition: true)
!4966 = !DIGlobalVariableExpression(var: !4967, expr: !DIExpression())
!4967 = distinct !DIGlobalVariable(name: "async_probe_drv_names", scope: !2, file: !3, line: 62, type: !4968, isLocal: true, isDefinition: true)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 2048, elements: !4969)
!4969 = !{!4970}
!4970 = !DISubrange(count: 256)
!4971 = !DIGlobalVariableExpression(var: !4972, expr: !DIExpression())
!4972 = distinct !DIGlobalVariable(name: "async_probe_default", scope: !2, file: !3, line: 63, type: !435, isLocal: true, isDefinition: true)
!4973 = !DIGlobalVariableExpression(var: !4974, expr: !DIExpression())
!4974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 745, type: !4975, isLocal: true, isDefinition: true)
!4975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 352, elements: !4976)
!4976 = !{!4977}
!4977 = !DISubrange(count: 44)
!4978 = !DIGlobalVariableExpression(var: !4979, expr: !DIExpression())
!4979 = distinct !DIGlobalVariable(scope: null, file: !2072, line: 154, type: !4980, isLocal: true, isDefinition: true)
!4980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 176, elements: !4981)
!4981 = !{!4982}
!4982 = !DISubrange(count: 22)
!4983 = !DIGlobalVariableExpression(var: !4984, expr: !DIExpression())
!4984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 626, type: !4985, isLocal: true, isDefinition: true)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 272, elements: !4986)
!4986 = !{!4987}
!4987 = !DISubrange(count: 34)
!4988 = !DIGlobalVariableExpression(var: !4989, expr: !DIExpression())
!4989 = distinct !DIGlobalVariable(scope: null, file: !3, line: 647, type: !4990, isLocal: true, isDefinition: true)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 280, elements: !4991)
!4991 = !{!4992}
!4992 = !DISubrange(count: 35)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 647, type: !4945, isLocal: true, isDefinition: true)
!4995 = !DIGlobalVariableExpression(var: !4996, expr: !DIExpression())
!4996 = distinct !DIGlobalVariable(scope: null, file: !3, line: 679, type: !4997, isLocal: true, isDefinition: true)
!4997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 224, elements: !4998)
!4998 = !{!4999}
!4999 = !DISubrange(count: 28)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(scope: null, file: !3, line: 686, type: !4940, isLocal: true, isDefinition: true)
!5002 = !DIGlobalVariableExpression(var: !5003, expr: !DIExpression())
!5003 = distinct !DIGlobalVariable(scope: null, file: !3, line: 595, type: !5004, isLocal: true, isDefinition: true)
!5004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 320, elements: !5005)
!5005 = !{!5006}
!5006 = !DISubrange(count: 40)
!5007 = !DIGlobalVariableExpression(var: !5008, expr: !DIExpression())
!5008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 545, type: !5009, isLocal: true, isDefinition: true)
!5009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 104, elements: !4946)
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(name: "dev_attr_state_synced", scope: !2, file: !3, line: 545, type: !5012, isLocal: true, isDefinition: true)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5013)
!5013 = !{!5014, !5015, !5020}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5012, file: !94, line: 107, baseType: !409, size: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5012, file: !94, line: 108, baseType: !5016, size: 64, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!403, !4232, !5019, !372}
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5012, file: !94, line: 110, baseType: !5021, size: 64, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!403, !4232, !5019, !309, !417}
!5024 = !DIGlobalVariableExpression(var: !5025, expr: !DIExpression())
!5025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 543, type: !5026, isLocal: true, isDefinition: true)
!5026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 32, elements: !629)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 519, type: !4934, isLocal: true, isDefinition: true)
!5029 = !DIGlobalVariableExpression(var: !5030, expr: !DIExpression())
!5030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !5031, isLocal: true, isDefinition: true)
!5031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 72, elements: !5032)
!5032 = !{!5033}
!5033 = !DISubrange(count: 9)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(name: "dev_attr_coredump", scope: !2, file: !3, line: 433, type: !5012, isLocal: true, isDefinition: true)
!5036 = !{i32 7, !"Dwarf Version", i32 5}
!5037 = !{i32 2, !"Debug Info Version", i32 3}
!5038 = !{i32 1, !"wchar_size", i32 2}
!5039 = !{i32 8, !"cf-protection-branch", i32 1}
!5040 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5041 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5042 = !{i32 1, !"Code Model", i32 2}
!5043 = !{i32 1, !"override-stack-alignment", i32 8}
!5044 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5045 = distinct !DISubprogram(name: "driver_deferred_probe_add", scope: !3, file: !3, line: 132, type: !4259, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5046)
!5046 = !{!5047}
!5047 = !DILocalVariable(name: "dev", arg: 1, scope: !5045, file: !3, line: 132, type: !4232)
!5048 = !DILocation(line: 132, column: 47, scope: !5045)
!5049 = !DILocation(line: 134, column: 7, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 134, column: 6)
!5051 = !DILocation(line: 134, column: 12, scope: !5050)
!5052 = !DILocation(line: 134, column: 6, scope: !5045)
!5053 = !DILocation(line: 135, column: 3, scope: !5050)
!5054 = !DILocation(line: 137, column: 2, scope: !5045)
!5055 = !DILocation(line: 138, column: 18, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 138, column: 6)
!5057 = !DILocation(line: 138, column: 23, scope: !5056)
!5058 = !DILocation(line: 138, column: 26, scope: !5056)
!5059 = !DILocation(line: 138, column: 6, scope: !5056)
!5060 = !DILocation(line: 138, column: 6, scope: !5045)
!5061 = !DILocation(line: 140, column: 18, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 138, column: 43)
!5063 = !DILocation(line: 140, column: 23, scope: !5062)
!5064 = !DILocation(line: 140, column: 26, scope: !5062)
!5065 = !DILocation(line: 140, column: 3, scope: !5062)
!5066 = !DILocation(line: 141, column: 2, scope: !5062)
!5067 = !DILocation(line: 142, column: 2, scope: !5045)
!5068 = !DILocation(line: 143, column: 1, scope: !5045)
!5069 = !DISubprogram(name: "mutex_lock", scope: !572, file: !572, line: 227, type: !5070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{null, !5072}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!5073 = distinct !DISubprogram(name: "list_empty", scope: !5074, file: !5074, line: 371, type: !5075, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5074 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!109, !5077}
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!5079 = !{!5080}
!5080 = !DILocalVariable(name: "head", arg: 1, scope: !5073, file: !5074, line: 371, type: !5077)
!5081 = !DILocation(line: 371, column: 54, scope: !5073)
!5082 = !DILocation(line: 373, column: 9, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5073, file: !5074, line: 373, column: 9)
!5084 = !DILocation(line: 373, column: 9, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5083, file: !5074, line: 373, column: 9)
!5086 = !DILocation(line: 373, column: 34, scope: !5073)
!5087 = !DILocation(line: 373, column: 31, scope: !5073)
!5088 = !DILocation(line: 373, column: 2, scope: !5073)
!5089 = distinct !DISubprogram(name: "list_add_tail", scope: !5074, file: !5074, line: 181, type: !5090, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5092)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !277, !277}
!5092 = !{!5093, !5094}
!5093 = !DILocalVariable(name: "new", arg: 1, scope: !5089, file: !5074, line: 181, type: !277)
!5094 = !DILocalVariable(name: "head", arg: 2, scope: !5089, file: !5074, line: 181, type: !277)
!5095 = !DILocation(line: 181, column: 52, scope: !5089)
!5096 = !DILocation(line: 181, column: 75, scope: !5089)
!5097 = !DILocation(line: 183, column: 13, scope: !5089)
!5098 = !DILocation(line: 183, column: 18, scope: !5089)
!5099 = !DILocation(line: 183, column: 24, scope: !5089)
!5100 = !DILocation(line: 183, column: 30, scope: !5089)
!5101 = !DILocation(line: 183, column: 2, scope: !5089)
!5102 = !DILocation(line: 184, column: 1, scope: !5089)
!5103 = !DISubprogram(name: "mutex_unlock", scope: !572, file: !572, line: 246, type: !5070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5104 = distinct !DISubprogram(name: "driver_deferred_probe_del", scope: !3, file: !3, line: 145, type: !4259, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5105 = !{!5106}
!5106 = !DILocalVariable(name: "dev", arg: 1, scope: !5104, file: !3, line: 145, type: !4232)
!5107 = !DILocation(line: 145, column: 47, scope: !5104)
!5108 = !DILocation(line: 147, column: 2, scope: !5104)
!5109 = !DILocation(line: 148, column: 19, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 148, column: 6)
!5111 = !DILocation(line: 148, column: 24, scope: !5110)
!5112 = !DILocation(line: 148, column: 27, scope: !5110)
!5113 = !DILocation(line: 148, column: 7, scope: !5110)
!5114 = !DILocation(line: 148, column: 6, scope: !5104)
!5115 = !DILocation(line: 150, column: 18, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 148, column: 44)
!5117 = !DILocation(line: 150, column: 23, scope: !5116)
!5118 = !DILocation(line: 150, column: 26, scope: !5116)
!5119 = !DILocation(line: 150, column: 3, scope: !5116)
!5120 = !DILocation(line: 151, column: 38, scope: !5116)
!5121 = !DILocation(line: 151, column: 3, scope: !5116)
!5122 = !DILocation(line: 152, column: 2, scope: !5116)
!5123 = !DILocation(line: 153, column: 2, scope: !5104)
!5124 = !DILocation(line: 154, column: 1, scope: !5104)
!5125 = distinct !DISubprogram(name: "list_del_init", scope: !5074, file: !5074, line: 285, type: !5126, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5128)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !277}
!5128 = !{!5129}
!5129 = !DILocalVariable(name: "entry", arg: 1, scope: !5125, file: !5074, line: 285, type: !277)
!5130 = !DILocation(line: 285, column: 52, scope: !5125)
!5131 = !DILocation(line: 287, column: 19, scope: !5125)
!5132 = !DILocation(line: 287, column: 2, scope: !5125)
!5133 = !DILocation(line: 288, column: 17, scope: !5125)
!5134 = !DILocation(line: 288, column: 2, scope: !5125)
!5135 = !DILocation(line: 289, column: 1, scope: !5125)
!5136 = distinct !DISubprogram(name: "__device_set_deferred_probe_reason", scope: !3, file: !3, line: 72, type: !5137, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5139)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{null, !4250, !372}
!5139 = !{!5140, !5141}
!5140 = !DILocalVariable(name: "dev", arg: 1, scope: !5136, file: !3, line: 72, type: !4250)
!5141 = !DILocalVariable(name: "reason", arg: 2, scope: !5136, file: !3, line: 72, type: !372)
!5142 = !DILocation(line: 72, column: 69, scope: !5136)
!5143 = !DILocation(line: 72, column: 80, scope: !5136)
!5144 = !DILocation(line: 74, column: 8, scope: !5136)
!5145 = !DILocation(line: 74, column: 13, scope: !5136)
!5146 = !DILocation(line: 74, column: 16, scope: !5136)
!5147 = !DILocation(line: 74, column: 2, scope: !5136)
!5148 = !DILocation(line: 75, column: 34, scope: !5136)
!5149 = !DILocation(line: 75, column: 2, scope: !5136)
!5150 = !DILocation(line: 75, column: 7, scope: !5136)
!5151 = !DILocation(line: 75, column: 10, scope: !5136)
!5152 = !DILocation(line: 75, column: 32, scope: !5136)
!5153 = !DILocation(line: 76, column: 1, scope: !5136)
!5154 = distinct !DISubprogram(name: "driver_deferred_probe_trigger", scope: !3, file: !3, line: 175, type: !1539, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5155 = !DILocation(line: 177, column: 7, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 177, column: 6)
!5157 = !{i8 0, i8 2}
!5158 = !DILocation(line: 177, column: 6, scope: !5154)
!5159 = !DILocation(line: 178, column: 3, scope: !5156)
!5160 = !DILocation(line: 185, column: 2, scope: !5154)
!5161 = !DILocation(line: 186, column: 2, scope: !5154)
!5162 = !DILocation(line: 187, column: 2, scope: !5154)
!5163 = !DILocation(line: 189, column: 2, scope: !5154)
!5164 = !DILocation(line: 195, column: 13, scope: !5154)
!5165 = !DILocation(line: 195, column: 2, scope: !5154)
!5166 = !DILocation(line: 196, column: 1, scope: !5154)
!5167 = distinct !DISubprogram(name: "atomic_inc", scope: !5168, file: !5168, line: 433, type: !5169, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5172)
!5168 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5169 = !DISubroutineType(types: !5170)
!5170 = !{null, !5171}
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!5172 = !{!5173}
!5173 = !DILocalVariable(name: "v", arg: 1, scope: !5167, file: !5168, line: 433, type: !5171)
!5174 = !DILocation(line: 433, column: 22, scope: !5167)
!5175 = !DILocation(line: 435, column: 31, scope: !5167)
!5176 = !DILocation(line: 435, column: 2, scope: !5167)
!5177 = !DILocation(line: 436, column: 17, scope: !5167)
!5178 = !DILocation(line: 436, column: 2, scope: !5167)
!5179 = !DILocation(line: 437, column: 1, scope: !5167)
!5180 = distinct !DISubprogram(name: "list_splice_tail_init", scope: !5074, file: !5074, line: 585, type: !5090, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5181)
!5181 = !{!5182, !5183}
!5182 = !DILocalVariable(name: "list", arg: 1, scope: !5180, file: !5074, line: 585, type: !277)
!5183 = !DILocalVariable(name: "head", arg: 2, scope: !5180, file: !5074, line: 586, type: !277)
!5184 = !DILocation(line: 585, column: 60, scope: !5180)
!5185 = !DILocation(line: 586, column: 25, scope: !5180)
!5186 = !DILocation(line: 588, column: 18, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5180, file: !5074, line: 588, column: 6)
!5188 = !DILocation(line: 588, column: 7, scope: !5187)
!5189 = !DILocation(line: 588, column: 6, scope: !5180)
!5190 = !DILocation(line: 589, column: 17, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5187, file: !5074, line: 588, column: 25)
!5192 = !DILocation(line: 589, column: 23, scope: !5191)
!5193 = !DILocation(line: 589, column: 29, scope: !5191)
!5194 = !DILocation(line: 589, column: 35, scope: !5191)
!5195 = !DILocation(line: 589, column: 3, scope: !5191)
!5196 = !DILocation(line: 590, column: 18, scope: !5191)
!5197 = !DILocation(line: 590, column: 3, scope: !5191)
!5198 = !DILocation(line: 591, column: 2, scope: !5191)
!5199 = !DILocation(line: 592, column: 1, scope: !5180)
!5200 = distinct !DISubprogram(name: "queue_work", scope: !182, file: !182, line: 559, type: !5201, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!435, !1496, !1444}
!5203 = !{!5204, !5205}
!5204 = !DILocalVariable(name: "wq", arg: 1, scope: !5200, file: !182, line: 559, type: !1496)
!5205 = !DILocalVariable(name: "work", arg: 2, scope: !5200, file: !182, line: 560, type: !1444)
!5206 = !DILocation(line: 559, column: 56, scope: !5200)
!5207 = !DILocation(line: 560, column: 30, scope: !5200)
!5208 = !DILocation(line: 562, column: 41, scope: !5200)
!5209 = !DILocation(line: 562, column: 45, scope: !5200)
!5210 = !DILocation(line: 562, column: 9, scope: !5200)
!5211 = !DILocation(line: 562, column: 2, scope: !5200)
!5212 = distinct !DISubprogram(name: "device_block_probing", scope: !3, file: !3, line: 203, type: !1539, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5213 = !DILocation(line: 205, column: 19, scope: !5212)
!5214 = !DILocation(line: 207, column: 2, scope: !5212)
!5215 = !DILocation(line: 208, column: 1, scope: !5212)
!5216 = distinct !DISubprogram(name: "wait_for_device_probe", scope: !3, file: !3, line: 768, type: !1539, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5217 = !{!5218, !5232, !5233, !5237}
!5218 = !DILocalVariable(name: "__wq_entry", scope: !5219, file: !3, line: 774, type: !5221)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 774, column: 2)
!5220 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 774, column: 2)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !634, line: 30, size: 320, elements: !5222)
!5222 = !{!5223, !5224, !5225, !5231}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5221, file: !634, line: 31, baseType: !7, size: 32)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5221, file: !634, line: 32, baseType: !221, size: 64, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5221, file: !634, line: 33, baseType: !5226, size: 64, offset: 128)
!5226 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !634, line: 16, baseType: !5227)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!109, !5230, !7, !109, !221}
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5221, file: !634, line: 34, baseType: !274, size: 128, offset: 192)
!5232 = !DILocalVariable(name: "__ret", scope: !5219, file: !3, line: 774, type: !407)
!5233 = !DILocalVariable(name: "__int", scope: !5234, file: !3, line: 774, type: !407)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 774, column: 2)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 774, column: 2)
!5236 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 774, column: 2)
!5237 = !DILabel(scope: !5219, name: "__out", file: !3, line: 774)
!5238 = !DILocation(line: 771, column: 2, scope: !5216)
!5239 = !DILocation(line: 774, column: 2, scope: !5216)
!5240 = !DILocation(line: 774, column: 2, scope: !5220)
!5241 = !DILocation(line: 774, column: 2, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 774, column: 2)
!5243 = !DILocation(line: 774, column: 2, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 774, column: 2)
!5245 = !DILocation(line: 774, column: 2, scope: !5219)
!5246 = !DILocation(line: 774, column: 2, scope: !5234)
!5247 = !DILocation(line: 774, column: 2, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 774, column: 2)
!5249 = !DILocation(line: 774, column: 2, scope: !5235)
!5250 = distinct !{!5250, !5251, !5251, !5252}
!5251 = !DILocation(line: 774, column: 2, scope: !5236)
!5252 = !{!"llvm.loop.unroll.disable"}
!5253 = !DILocation(line: 775, column: 2, scope: !5216)
!5254 = !DILocation(line: 776, column: 1, scope: !5216)
!5255 = distinct !DISubprogram(name: "device_unblock_probing", scope: !3, file: !3, line: 216, type: !1539, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5256 = !DILocation(line: 218, column: 19, scope: !5255)
!5257 = !DILocation(line: 219, column: 2, scope: !5255)
!5258 = !DILocation(line: 220, column: 1, scope: !5255)
!5259 = distinct !DISubprogram(name: "device_set_deferred_probe_reason", scope: !3, file: !3, line: 227, type: !5260, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5279)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !4250, !5262}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5264, line: 79, size: 128, elements: !5265)
!5264 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5265 = !{!5266, !5267}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5263, file: !5264, line: 80, baseType: !309, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5263, file: !5264, line: 81, baseType: !5268, size: 64, offset: 64)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5270, line: 5, baseType: !5271)
!5270 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5272)
!5272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5273, size: 192, elements: !2188)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5274)
!5274 = !{!5275, !5276, !5277, !5278}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5273, file: !3, line: 220, baseType: !7, size: 32)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5273, file: !3, line: 220, baseType: !7, size: 32, offset: 32)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5273, file: !3, line: 220, baseType: !221, size: 64, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5273, file: !3, line: 220, baseType: !221, size: 64, offset: 128)
!5279 = !{!5280, !5281, !5282, !5283}
!5280 = !DILocalVariable(name: "dev", arg: 1, scope: !5259, file: !3, line: 227, type: !4250)
!5281 = !DILocalVariable(name: "vaf", arg: 2, scope: !5259, file: !3, line: 227, type: !5262)
!5282 = !DILocalVariable(name: "drv", scope: !5259, file: !3, line: 229, type: !309)
!5283 = !DILocalVariable(name: "reason", scope: !5259, file: !3, line: 230, type: !372)
!5284 = !DILocation(line: 227, column: 60, scope: !5259)
!5285 = !DILocation(line: 227, column: 83, scope: !5259)
!5286 = !DILocation(line: 229, column: 2, scope: !5259)
!5287 = !DILocation(line: 229, column: 14, scope: !5259)
!5288 = !DILocation(line: 229, column: 38, scope: !5259)
!5289 = !DILocation(line: 229, column: 20, scope: !5259)
!5290 = !DILocation(line: 230, column: 2, scope: !5259)
!5291 = !DILocation(line: 230, column: 8, scope: !5259)
!5292 = !DILocation(line: 232, column: 2, scope: !5259)
!5293 = !DILocation(line: 234, column: 44, scope: !5259)
!5294 = !DILocation(line: 234, column: 49, scope: !5259)
!5295 = !DILocation(line: 234, column: 11, scope: !5259)
!5296 = !DILocation(line: 234, column: 9, scope: !5259)
!5297 = !DILocation(line: 235, column: 37, scope: !5259)
!5298 = !DILocation(line: 235, column: 42, scope: !5259)
!5299 = !DILocation(line: 235, column: 2, scope: !5259)
!5300 = !DILocation(line: 237, column: 2, scope: !5259)
!5301 = !DILocation(line: 238, column: 1, scope: !5259)
!5302 = !DISubprogram(name: "dev_driver_string", scope: !94, file: !94, line: 1247, type: !5303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!309, !4250}
!5305 = !DISubprogram(name: "kasprintf", scope: !5306, file: !5306, line: 16, type: !5307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5306 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!372, !219, !309, null}
!5309 = distinct !DISubprogram(name: "deferred_probe_timeout_setup", scope: !3, file: !3, line: 265, type: !4868, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5310)
!5310 = !{!5311, !5312}
!5311 = !DILocalVariable(name: "str", arg: 1, scope: !5309, file: !3, line: 265, type: !372)
!5312 = !DILocalVariable(name: "timeout", scope: !5309, file: !3, line: 267, type: !109)
!5313 = !DILocation(line: 265, column: 54, scope: !5309)
!5314 = !DILocation(line: 267, column: 2, scope: !5309)
!5315 = !DILocation(line: 267, column: 6, scope: !5309)
!5316 = !DILocation(line: 269, column: 17, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 269, column: 6)
!5318 = !DILocation(line: 269, column: 7, scope: !5317)
!5319 = !DILocation(line: 269, column: 6, scope: !5309)
!5320 = !DILocation(line: 270, column: 35, scope: !5317)
!5321 = !DILocation(line: 270, column: 33, scope: !5317)
!5322 = !DILocation(line: 270, column: 3, scope: !5317)
!5323 = !DILocation(line: 272, column: 1, scope: !5309)
!5324 = !DILocation(line: 271, column: 2, scope: !5309)
!5325 = distinct !DISubprogram(name: "driver_deferred_probe_check_state", scope: !3, file: !3, line: 288, type: !4268, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5326)
!5326 = !{!5327}
!5327 = !DILocalVariable(name: "dev", arg: 1, scope: !5325, file: !3, line: 288, type: !4232)
!5328 = !DILocation(line: 288, column: 54, scope: !5325)
!5329 = !DILocation(line: 295, column: 7, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 295, column: 6)
!5331 = !DILocation(line: 295, column: 37, scope: !5330)
!5332 = !DILocation(line: 295, column: 40, scope: !5330)
!5333 = !DILocation(line: 295, column: 6, scope: !5325)
!5334 = !DILocation(line: 296, column: 3, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 296, column: 3)
!5336 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 295, column: 56)
!5337 = !DILocation(line: 296, column: 3, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 296, column: 3)
!5339 = !DILocation(line: 297, column: 3, scope: !5336)
!5340 = !DILocation(line: 300, column: 2, scope: !5325)
!5341 = !DILocation(line: 301, column: 1, scope: !5325)
!5342 = !DISubprogram(name: "_dev_warn", scope: !5343, file: !5343, line: 52, type: !5344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5343 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5344 = !DISubroutineType(types: !5345)
!5345 = !{null, !4250, !309, null}
!5346 = distinct !DISubprogram(name: "deferred_probe_extend_timeout", scope: !3, file: !3, line: 323, type: !1539, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5347 = !DILocation(line: 329, column: 6, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 329, column: 6)
!5349 = !DILocation(line: 329, column: 6, scope: !5346)
!5350 = !DILocation(line: 331, column: 5, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 329, column: 57)
!5352 = !DILocation(line: 331, column: 35, scope: !5351)
!5353 = !DILocation(line: 330, column: 3, scope: !5351)
!5354 = !DILocation(line: 332, column: 3, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 332, column: 3)
!5356 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 332, column: 3)
!5357 = !DILocation(line: 332, column: 3, scope: !5356)
!5358 = !DILocation(line: 334, column: 2, scope: !5351)
!5359 = !DILocation(line: 335, column: 1, scope: !5346)
!5360 = !DISubprogram(name: "cancel_delayed_work", scope: !182, file: !182, line: 518, type: !5361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{!435, !5363}
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!5364 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !182, file: !182, line: 688, type: !5365, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5367)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!435, !5363, !420}
!5367 = !{!5368, !5369}
!5368 = !DILocalVariable(name: "dwork", arg: 1, scope: !5364, file: !182, line: 688, type: !5363)
!5369 = !DILocalVariable(name: "delay", arg: 2, scope: !5364, file: !182, line: 689, type: !420)
!5370 = !DILocation(line: 688, column: 63, scope: !5364)
!5371 = !DILocation(line: 689, column: 21, scope: !5364)
!5372 = !DILocation(line: 691, column: 28, scope: !5364)
!5373 = !DILocation(line: 691, column: 39, scope: !5364)
!5374 = !DILocation(line: 691, column: 46, scope: !5364)
!5375 = !DILocation(line: 691, column: 9, scope: !5364)
!5376 = !DILocation(line: 691, column: 2, scope: !5364)
!5377 = distinct !DISubprogram(name: "__initstub__kmod_dd__291_375_deferred_probe_initcall7", scope: !3, file: !3, line: 375, type: !1293, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5378 = !DILocation(line: 375, column: 1, scope: !5377)
!5379 = distinct !DISubprogram(name: "deferred_probe_initcall", scope: !3, file: !3, line: 344, type: !1293, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5380 = !DILocation(line: 346, column: 2, scope: !5379)
!5381 = !DILocation(line: 349, column: 31, scope: !5379)
!5382 = !DILocation(line: 350, column: 2, scope: !5379)
!5383 = !DILocation(line: 352, column: 2, scope: !5379)
!5384 = !DILocation(line: 353, column: 17, scope: !5379)
!5385 = !DILocation(line: 362, column: 2, scope: !5379)
!5386 = !DILocation(line: 363, column: 2, scope: !5379)
!5387 = !DILocation(line: 365, column: 6, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 365, column: 6)
!5389 = !DILocation(line: 365, column: 36, scope: !5388)
!5390 = !DILocation(line: 365, column: 6, scope: !5379)
!5391 = !DILocation(line: 367, column: 4, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 365, column: 41)
!5393 = !DILocation(line: 367, column: 34, scope: !5392)
!5394 = !DILocation(line: 366, column: 3, scope: !5392)
!5395 = !DILocation(line: 368, column: 2, scope: !5392)
!5396 = !DILocation(line: 373, column: 2, scope: !5379)
!5397 = distinct !DISubprogram(name: "deferred_probe_exit", scope: !3, file: !3, line: 377, type: !1539, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5398 = !DILocation(line: 379, column: 2, scope: !5397)
!5399 = !DILocation(line: 380, column: 1, scope: !5397)
!5400 = !DISubprogram(name: "debugfs_lookup_and_remove", scope: !5401, file: !5401, line: 100, type: !5402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5401 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!5402 = !DISubroutineType(types: !5403)
!5403 = !{null, !309, !881}
!5404 = distinct !DISubprogram(name: "device_is_bound", scope: !3, file: !3, line: 392, type: !5405, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5407)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!435, !4232}
!5407 = !{!5408}
!5408 = !DILocalVariable(name: "dev", arg: 1, scope: !5404, file: !3, line: 392, type: !4232)
!5409 = !DILocation(line: 392, column: 37, scope: !5404)
!5410 = !DILocation(line: 394, column: 9, scope: !5404)
!5411 = !DILocation(line: 394, column: 14, scope: !5404)
!5412 = !DILocation(line: 394, column: 16, scope: !5404)
!5413 = !DILocation(line: 394, column: 40, scope: !5404)
!5414 = !DILocation(line: 394, column: 45, scope: !5404)
!5415 = !DILocation(line: 394, column: 48, scope: !5404)
!5416 = !DILocation(line: 394, column: 19, scope: !5404)
!5417 = !DILocation(line: 0, scope: !5404)
!5418 = !DILocation(line: 394, column: 2, scope: !5404)
!5419 = !DISubprogram(name: "klist_node_attached", scope: !228, file: !228, line: 51, type: !5420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!109, !283}
!5422 = distinct !DISubprogram(name: "device_bind_driver", scope: !3, file: !3, line: 495, type: !4268, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5423 = !{!5424, !5425}
!5424 = !DILocalVariable(name: "dev", arg: 1, scope: !5422, file: !3, line: 495, type: !4232)
!5425 = !DILocalVariable(name: "ret", scope: !5422, file: !3, line: 497, type: !109)
!5426 = !DILocation(line: 495, column: 39, scope: !5422)
!5427 = !DILocation(line: 497, column: 2, scope: !5422)
!5428 = !DILocation(line: 497, column: 6, scope: !5422)
!5429 = !DILocation(line: 499, column: 25, scope: !5422)
!5430 = !DILocation(line: 499, column: 8, scope: !5422)
!5431 = !DILocation(line: 499, column: 6, scope: !5422)
!5432 = !DILocation(line: 500, column: 7, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 500, column: 6)
!5434 = !DILocation(line: 500, column: 6, scope: !5422)
!5435 = !DILocation(line: 501, column: 27, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 500, column: 12)
!5437 = !DILocation(line: 501, column: 3, scope: !5436)
!5438 = !DILocation(line: 502, column: 16, scope: !5436)
!5439 = !DILocation(line: 502, column: 3, scope: !5436)
!5440 = !DILocation(line: 503, column: 2, scope: !5436)
!5441 = !DILocation(line: 505, column: 14, scope: !5433)
!5442 = !DILocation(line: 505, column: 3, scope: !5433)
!5443 = !DILocation(line: 506, column: 9, scope: !5422)
!5444 = !DILocation(line: 507, column: 1, scope: !5422)
!5445 = !DILocation(line: 506, column: 2, scope: !5422)
!5446 = distinct !DISubprogram(name: "driver_sysfs_add", scope: !3, file: !3, line: 435, type: !4268, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5447 = !{!5448, !5449, !5450, !5451}
!5448 = !DILocalVariable(name: "dev", arg: 1, scope: !5446, file: !3, line: 435, type: !4232)
!5449 = !DILocalVariable(name: "ret", scope: !5446, file: !3, line: 437, type: !109)
!5450 = !DILabel(scope: !5446, name: "rm_dev", file: !3, line: 460)
!5451 = !DILabel(scope: !5446, name: "fail", file: !3, line: 464)
!5452 = !DILocation(line: 435, column: 44, scope: !5446)
!5453 = !DILocation(line: 437, column: 2, scope: !5446)
!5454 = !DILocation(line: 437, column: 6, scope: !5446)
!5455 = !DILocation(line: 439, column: 13, scope: !5446)
!5456 = !DILocation(line: 439, column: 2, scope: !5446)
!5457 = !DILocation(line: 441, column: 27, scope: !5446)
!5458 = !DILocation(line: 441, column: 32, scope: !5446)
!5459 = !DILocation(line: 441, column: 40, scope: !5446)
!5460 = !DILocation(line: 441, column: 43, scope: !5446)
!5461 = !DILocation(line: 441, column: 50, scope: !5446)
!5462 = !DILocation(line: 441, column: 55, scope: !5446)
!5463 = !DILocation(line: 442, column: 19, scope: !5446)
!5464 = !DILocation(line: 442, column: 24, scope: !5446)
!5465 = !DILocation(line: 442, column: 5, scope: !5446)
!5466 = !DILocation(line: 441, column: 8, scope: !5446)
!5467 = !DILocation(line: 441, column: 6, scope: !5446)
!5468 = !DILocation(line: 443, column: 6, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 443, column: 6)
!5470 = !DILocation(line: 443, column: 6, scope: !5446)
!5471 = !DILocation(line: 444, column: 3, scope: !5469)
!5472 = !DILocation(line: 446, column: 27, scope: !5446)
!5473 = !DILocation(line: 446, column: 32, scope: !5446)
!5474 = !DILocation(line: 446, column: 39, scope: !5446)
!5475 = !DILocation(line: 446, column: 44, scope: !5446)
!5476 = !DILocation(line: 446, column: 52, scope: !5446)
!5477 = !DILocation(line: 446, column: 55, scope: !5446)
!5478 = !DILocation(line: 446, column: 8, scope: !5446)
!5479 = !DILocation(line: 446, column: 6, scope: !5446)
!5480 = !DILocation(line: 448, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 448, column: 6)
!5482 = !DILocation(line: 448, column: 6, scope: !5446)
!5483 = !DILocation(line: 449, column: 3, scope: !5481)
!5484 = !DILocation(line: 452, column: 3, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 451, column: 6)
!5486 = !DILocation(line: 460, column: 1, scope: !5446)
!5487 = !DILocation(line: 461, column: 21, scope: !5446)
!5488 = !DILocation(line: 461, column: 26, scope: !5446)
!5489 = !DILocation(line: 461, column: 34, scope: !5446)
!5490 = !DILocation(line: 461, column: 37, scope: !5446)
!5491 = !DILocation(line: 462, column: 20, scope: !5446)
!5492 = !DILocation(line: 462, column: 25, scope: !5446)
!5493 = !DILocation(line: 462, column: 6, scope: !5446)
!5494 = !DILocation(line: 461, column: 2, scope: !5446)
!5495 = !DILocation(line: 464, column: 1, scope: !5446)
!5496 = !DILocation(line: 465, column: 9, scope: !5446)
!5497 = !DILocation(line: 465, column: 2, scope: !5446)
!5498 = !DILocation(line: 466, column: 1, scope: !5446)
!5499 = !DISubprogram(name: "device_links_force_bind", scope: !224, file: !224, line: 227, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5500 = distinct !DISubprogram(name: "driver_bound", scope: !3, file: !3, line: 397, type: !4259, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5501)
!5501 = !{!5502}
!5502 = !DILocalVariable(name: "dev", arg: 1, scope: !5500, file: !3, line: 397, type: !4232)
!5503 = !DILocation(line: 397, column: 41, scope: !5500)
!5504 = !DILocation(line: 399, column: 22, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 399, column: 6)
!5506 = !DILocation(line: 399, column: 6, scope: !5505)
!5507 = !DILocation(line: 399, column: 6, scope: !5500)
!5508 = !DILocation(line: 400, column: 3, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 400, column: 3)
!5510 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 399, column: 28)
!5511 = !DILocation(line: 400, column: 3, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 400, column: 3)
!5513 = !DILocation(line: 402, column: 3, scope: !5510)
!5514 = !DILocation(line: 405, column: 2, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 405, column: 2)
!5516 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 405, column: 2)
!5517 = !DILocation(line: 405, column: 2, scope: !5516)
!5518 = !DILocation(line: 408, column: 18, scope: !5500)
!5519 = !DILocation(line: 408, column: 23, scope: !5500)
!5520 = !DILocation(line: 408, column: 26, scope: !5500)
!5521 = !DILocation(line: 408, column: 41, scope: !5500)
!5522 = !DILocation(line: 408, column: 46, scope: !5500)
!5523 = !DILocation(line: 408, column: 54, scope: !5500)
!5524 = !DILocation(line: 408, column: 57, scope: !5500)
!5525 = !DILocation(line: 408, column: 2, scope: !5500)
!5526 = !DILocation(line: 409, column: 28, scope: !5500)
!5527 = !DILocation(line: 409, column: 2, scope: !5500)
!5528 = !DILocation(line: 411, column: 28, scope: !5500)
!5529 = !DILocation(line: 411, column: 2, scope: !5500)
!5530 = !DILocation(line: 417, column: 28, scope: !5500)
!5531 = !DILocation(line: 417, column: 2, scope: !5500)
!5532 = !DILocation(line: 418, column: 2, scope: !5500)
!5533 = !DILocation(line: 420, column: 13, scope: !5500)
!5534 = !DILocation(line: 420, column: 2, scope: !5500)
!5535 = !DILocation(line: 421, column: 18, scope: !5500)
!5536 = !DILocation(line: 421, column: 23, scope: !5500)
!5537 = !DILocation(line: 421, column: 2, scope: !5500)
!5538 = !DILocation(line: 422, column: 1, scope: !5500)
!5539 = !DISubprogram(name: "bus_notify", scope: !224, file: !224, line: 153, type: !5540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{null, !4232, !170}
!5542 = distinct !DISubprogram(name: "driver_probe_done", scope: !3, file: !3, line: 756, type: !433, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5543)
!5543 = !{!5544}
!5544 = !DILocalVariable(name: "local_probe_count", scope: !5542, file: !3, line: 758, type: !109)
!5545 = !DILocation(line: 758, column: 2, scope: !5542)
!5546 = !DILocation(line: 758, column: 6, scope: !5542)
!5547 = !DILocation(line: 758, column: 26, scope: !5542)
!5548 = !DILocation(line: 760, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 760, column: 2)
!5550 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 760, column: 2)
!5551 = !DILocation(line: 760, column: 2, scope: !5550)
!5552 = !DILocation(line: 761, column: 10, scope: !5542)
!5553 = !DILocation(line: 761, column: 9, scope: !5542)
!5554 = !DILocation(line: 762, column: 1, scope: !5542)
!5555 = !DILocation(line: 761, column: 2, scope: !5542)
!5556 = distinct !DISubprogram(name: "atomic_read", scope: !5168, file: !5168, line: 30, type: !5557, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5561)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{!109, !5559}
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!5561 = !{!5562}
!5562 = !DILocalVariable(name: "v", arg: 1, scope: !5556, file: !5168, line: 30, type: !5559)
!5563 = !DILocation(line: 30, column: 29, scope: !5556)
!5564 = !DILocation(line: 32, column: 25, scope: !5556)
!5565 = !DILocation(line: 32, column: 2, scope: !5556)
!5566 = !DILocation(line: 33, column: 25, scope: !5556)
!5567 = !DILocation(line: 33, column: 9, scope: !5556)
!5568 = !DILocation(line: 33, column: 2, scope: !5556)
!5569 = !DISubprogram(name: "flush_work", scope: !182, file: !182, line: 513, type: !5570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!435, !1444}
!5572 = !DILocation(line: 112, column: 2, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !4952, file: !4953, line: 112, column: 2)
!5574 = !DILocation(line: 112, column: 2, scope: !4952)
!5575 = !DILocation(line: 113, column: 1, scope: !4952)
!5576 = !DISubprogram(name: "init_wait_entry", scope: !634, file: !634, line: 290, type: !5577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{null, !5230, !109}
!5579 = !DISubprogram(name: "prepare_to_wait_event", scope: !634, file: !634, line: 1199, type: !5580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!407, !5582, !5230, !109}
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!5583 = !DISubprogram(name: "schedule", scope: !1953, file: !1953, line: 303, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5584 = !DISubprogram(name: "finish_wait", scope: !634, file: !634, line: 1200, type: !5585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{null, !5582, !5230}
!5587 = !DISubprogram(name: "async_synchronize_full", scope: !5588, file: !5588, line: 117, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5588 = !DIFile(filename: "./include/linux/async.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec3d14405de96b2cececccfaaedbde0e")
!5589 = distinct !DISubprogram(name: "save_async_options", scope: !3, file: !3, line: 856, type: !4868, scopeLine: 857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5590)
!5590 = !{!5591}
!5591 = !DILocalVariable(name: "buf", arg: 1, scope: !5589, file: !3, line: 856, type: !372)
!5592 = !DILocation(line: 856, column: 44, scope: !5589)
!5593 = !DILocation(line: 858, column: 13, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 858, column: 6)
!5595 = !DILocation(line: 858, column: 6, scope: !5594)
!5596 = !DILocation(line: 858, column: 18, scope: !5594)
!5597 = !DILocation(line: 858, column: 6, scope: !5589)
!5598 = !DILocation(line: 859, column: 3, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 859, column: 3)
!5600 = !DILocation(line: 859, column: 3, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 859, column: 3)
!5602 = !DILocation(line: 859, column: 3, scope: !5594)
!5603 = !DILocation(line: 861, column: 33, scope: !5589)
!5604 = !DILocation(line: 861, column: 2, scope: !5589)
!5605 = !DILocation(line: 862, column: 24, scope: !5589)
!5606 = !DILocation(line: 862, column: 22, scope: !5589)
!5607 = !DILocation(line: 864, column: 2, scope: !5589)
!5608 = distinct !DISubprogram(name: "device_attach", scope: !3, file: !3, line: 1071, type: !4268, scopeLine: 1072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5609)
!5609 = !{!5610}
!5610 = !DILocalVariable(name: "dev", arg: 1, scope: !5608, file: !3, line: 1071, type: !4232)
!5611 = !DILocation(line: 1071, column: 34, scope: !5608)
!5612 = !DILocation(line: 1073, column: 25, scope: !5608)
!5613 = !DILocation(line: 1073, column: 9, scope: !5608)
!5614 = !DILocation(line: 1073, column: 2, scope: !5608)
!5615 = distinct !DISubprogram(name: "__device_attach", scope: !3, file: !3, line: 1000, type: !5616, scopeLine: 1001, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5618)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!109, !4232, !435}
!5618 = !{!5619, !5620, !5621, !5622, !5623, !5633}
!5619 = !DILocalVariable(name: "dev", arg: 1, scope: !5615, file: !3, line: 1000, type: !4232)
!5620 = !DILocalVariable(name: "allow_async", arg: 2, scope: !5615, file: !3, line: 1000, type: !435)
!5621 = !DILocalVariable(name: "ret", scope: !5615, file: !3, line: 1002, type: !109)
!5622 = !DILocalVariable(name: "async", scope: !5615, file: !3, line: 1003, type: !435)
!5623 = !DILocalVariable(name: "data", scope: !5624, file: !3, line: 1021, type: !5627)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 1020, column: 9)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 1008, column: 13)
!5626 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 1006, column: 6)
!5627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attach_data", file: !3, line: 888, size: 128, elements: !5628)
!5628 = !{!5629, !5630, !5631, !5632}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5627, file: !3, line: 889, baseType: !4232, size: 64)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "check_async", scope: !5627, file: !3, line: 898, baseType: !435, size: 8, offset: 64)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "want_async", scope: !5627, file: !3, line: 912, baseType: !435, size: 8, offset: 72)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "have_async", scope: !5627, file: !3, line: 918, baseType: !435, size: 8, offset: 80)
!5633 = !DILabel(scope: !5615, name: "out_unlock", file: !3, line: 1050)
!5634 = !DILocation(line: 1000, column: 43, scope: !5615)
!5635 = !DILocation(line: 1000, column: 53, scope: !5615)
!5636 = !DILocation(line: 1002, column: 2, scope: !5615)
!5637 = !DILocation(line: 1002, column: 6, scope: !5615)
!5638 = !DILocation(line: 1003, column: 2, scope: !5615)
!5639 = !DILocation(line: 1003, column: 7, scope: !5615)
!5640 = !DILocation(line: 1005, column: 14, scope: !5615)
!5641 = !DILocation(line: 1005, column: 2, scope: !5615)
!5642 = !DILocation(line: 1006, column: 6, scope: !5626)
!5643 = !DILocation(line: 1006, column: 11, scope: !5626)
!5644 = !DILocation(line: 1006, column: 14, scope: !5626)
!5645 = !DILocation(line: 1006, column: 6, scope: !5615)
!5646 = !DILocation(line: 1007, column: 3, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 1006, column: 20)
!5648 = !DILocation(line: 1008, column: 13, scope: !5625)
!5649 = !DILocation(line: 1008, column: 18, scope: !5625)
!5650 = !DILocation(line: 1008, column: 13, scope: !5626)
!5651 = !DILocation(line: 1009, column: 23, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 1009, column: 7)
!5653 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 1008, column: 26)
!5654 = !DILocation(line: 1009, column: 7, scope: !5652)
!5655 = !DILocation(line: 1009, column: 7, scope: !5653)
!5656 = !DILocation(line: 1010, column: 8, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 1009, column: 29)
!5658 = !DILocation(line: 1011, column: 4, scope: !5657)
!5659 = !DILocation(line: 1013, column: 28, scope: !5653)
!5660 = !DILocation(line: 1013, column: 9, scope: !5653)
!5661 = !DILocation(line: 1013, column: 7, scope: !5653)
!5662 = !DILocation(line: 1014, column: 7, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 1014, column: 7)
!5664 = !DILocation(line: 1014, column: 11, scope: !5663)
!5665 = !DILocation(line: 1014, column: 7, scope: !5653)
!5666 = !DILocation(line: 1015, column: 8, scope: !5663)
!5667 = !DILocation(line: 1015, column: 4, scope: !5663)
!5668 = !DILocation(line: 1017, column: 4, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 1016, column: 8)
!5670 = !DILocation(line: 1017, column: 9, scope: !5669)
!5671 = !DILocation(line: 1017, column: 16, scope: !5669)
!5672 = !DILocation(line: 1018, column: 8, scope: !5669)
!5673 = !DILocation(line: 1020, column: 2, scope: !5653)
!5674 = !DILocation(line: 1021, column: 3, scope: !5624)
!5675 = !DILocation(line: 1021, column: 29, scope: !5624)
!5676 = !DILocation(line: 1021, column: 36, scope: !5624)
!5677 = !DILocation(line: 1022, column: 11, scope: !5624)
!5678 = !DILocation(line: 1023, column: 19, scope: !5624)
!5679 = !DILocation(line: 1027, column: 7, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 1027, column: 7)
!5681 = !DILocation(line: 1027, column: 12, scope: !5680)
!5682 = !DILocation(line: 1027, column: 7, scope: !5624)
!5683 = !DILocation(line: 1028, column: 24, scope: !5680)
!5684 = !DILocation(line: 1028, column: 29, scope: !5680)
!5685 = !DILocation(line: 1028, column: 4, scope: !5680)
!5686 = !DILocation(line: 1030, column: 26, scope: !5624)
!5687 = !DILocation(line: 1030, column: 31, scope: !5624)
!5688 = !DILocation(line: 1030, column: 9, scope: !5624)
!5689 = !DILocation(line: 1030, column: 7, scope: !5624)
!5690 = !DILocation(line: 1032, column: 8, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 1032, column: 7)
!5692 = !DILocation(line: 1032, column: 12, scope: !5691)
!5693 = !DILocation(line: 1032, column: 15, scope: !5691)
!5694 = !DILocation(line: 1032, column: 27, scope: !5691)
!5695 = !DILocation(line: 1032, column: 35, scope: !5691)
!5696 = !DILocation(line: 1032, column: 7, scope: !5624)
!5697 = !DILocation(line: 1041, column: 15, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 1032, column: 47)
!5699 = !DILocation(line: 1041, column: 4, scope: !5698)
!5700 = !DILocation(line: 1042, column: 10, scope: !5698)
!5701 = !DILocation(line: 1043, column: 3, scope: !5698)
!5702 = !DILocation(line: 1044, column: 20, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 1043, column: 10)
!5704 = !DILocation(line: 1044, column: 4, scope: !5703)
!5705 = !DILocation(line: 1047, column: 7, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 1047, column: 7)
!5707 = !DILocation(line: 1047, column: 12, scope: !5706)
!5708 = !DILocation(line: 1047, column: 7, scope: !5624)
!5709 = !DILocation(line: 1048, column: 19, scope: !5706)
!5710 = !DILocation(line: 1048, column: 24, scope: !5706)
!5711 = !DILocation(line: 1048, column: 4, scope: !5706)
!5712 = !DILocation(line: 1049, column: 2, scope: !5625)
!5713 = !DILocation(line: 1050, column: 1, scope: !5615)
!5714 = !DILocation(line: 1051, column: 16, scope: !5615)
!5715 = !DILocation(line: 1051, column: 2, scope: !5615)
!5716 = !DILocation(line: 1052, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 1052, column: 6)
!5718 = !DILocation(line: 1052, column: 6, scope: !5615)
!5719 = !DILocation(line: 1053, column: 52, scope: !5717)
!5720 = !DILocation(line: 1053, column: 3, scope: !5717)
!5721 = !DILocation(line: 1054, column: 9, scope: !5615)
!5722 = !DILocation(line: 1055, column: 1, scope: !5615)
!5723 = !DILocation(line: 1054, column: 2, scope: !5615)
!5724 = distinct !DISubprogram(name: "device_initial_probe", scope: !3, file: !3, line: 1077, type: !4259, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5725)
!5725 = !{!5726}
!5726 = !DILocalVariable(name: "dev", arg: 1, scope: !5724, file: !3, line: 1077, type: !4232)
!5727 = !DILocation(line: 1077, column: 42, scope: !5724)
!5728 = !DILocation(line: 1079, column: 18, scope: !5724)
!5729 = !DILocation(line: 1079, column: 2, scope: !5724)
!5730 = !DILocation(line: 1080, column: 1, scope: !5724)
!5731 = distinct !DISubprogram(name: "device_driver_attach", scope: !3, file: !3, line: 1122, type: !5732, scopeLine: 1123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5734)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!109, !305, !4232}
!5734 = !{!5735, !5736, !5737}
!5735 = !DILocalVariable(name: "drv", arg: 1, scope: !5731, file: !3, line: 1122, type: !305)
!5736 = !DILocalVariable(name: "dev", arg: 2, scope: !5731, file: !3, line: 1122, type: !4232)
!5737 = !DILocalVariable(name: "ret", scope: !5731, file: !3, line: 1124, type: !109)
!5738 = !DILocation(line: 1122, column: 48, scope: !5731)
!5739 = !DILocation(line: 1122, column: 68, scope: !5731)
!5740 = !DILocation(line: 1124, column: 2, scope: !5731)
!5741 = !DILocation(line: 1124, column: 6, scope: !5731)
!5742 = !DILocation(line: 1126, column: 23, scope: !5731)
!5743 = !DILocation(line: 1126, column: 28, scope: !5731)
!5744 = !DILocation(line: 1126, column: 33, scope: !5731)
!5745 = !DILocation(line: 1126, column: 2, scope: !5731)
!5746 = !DILocation(line: 1127, column: 30, scope: !5731)
!5747 = !DILocation(line: 1127, column: 35, scope: !5731)
!5748 = !DILocation(line: 1127, column: 8, scope: !5731)
!5749 = !DILocation(line: 1127, column: 6, scope: !5731)
!5750 = !DILocation(line: 1128, column: 25, scope: !5731)
!5751 = !DILocation(line: 1128, column: 30, scope: !5731)
!5752 = !DILocation(line: 1128, column: 35, scope: !5731)
!5753 = !DILocation(line: 1128, column: 2, scope: !5731)
!5754 = !DILocation(line: 1131, column: 6, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 1131, column: 6)
!5756 = !DILocation(line: 1131, column: 10, scope: !5755)
!5757 = !DILocation(line: 1131, column: 6, scope: !5731)
!5758 = !DILocation(line: 1132, column: 10, scope: !5755)
!5759 = !DILocation(line: 1132, column: 9, scope: !5755)
!5760 = !DILocation(line: 1132, column: 7, scope: !5755)
!5761 = !DILocation(line: 1132, column: 3, scope: !5755)
!5762 = !DILocation(line: 1133, column: 6, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 1133, column: 6)
!5764 = !DILocation(line: 1133, column: 10, scope: !5763)
!5765 = !DILocation(line: 1133, column: 6, scope: !5731)
!5766 = !DILocation(line: 1134, column: 3, scope: !5763)
!5767 = !DILocation(line: 1135, column: 9, scope: !5731)
!5768 = !DILocation(line: 1135, column: 2, scope: !5731)
!5769 = !DILocation(line: 1136, column: 1, scope: !5731)
!5770 = distinct !DISubprogram(name: "__device_driver_lock", scope: !3, file: !3, line: 1091, type: !5771, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5773)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{null, !4232, !4232}
!5773 = !{!5774, !5775}
!5774 = !DILocalVariable(name: "dev", arg: 1, scope: !5770, file: !3, line: 1091, type: !4232)
!5775 = !DILocalVariable(name: "parent", arg: 2, scope: !5770, file: !3, line: 1091, type: !4232)
!5776 = !DILocation(line: 1091, column: 49, scope: !5770)
!5777 = !DILocation(line: 1091, column: 69, scope: !5770)
!5778 = !DILocation(line: 1093, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 1093, column: 6)
!5780 = !DILocation(line: 1093, column: 13, scope: !5779)
!5781 = !DILocation(line: 1093, column: 16, scope: !5779)
!5782 = !DILocation(line: 1093, column: 21, scope: !5779)
!5783 = !DILocation(line: 1093, column: 26, scope: !5779)
!5784 = !DILocation(line: 1093, column: 6, scope: !5770)
!5785 = !DILocation(line: 1094, column: 15, scope: !5779)
!5786 = !DILocation(line: 1094, column: 3, scope: !5779)
!5787 = !DILocation(line: 1095, column: 14, scope: !5770)
!5788 = !DILocation(line: 1095, column: 2, scope: !5770)
!5789 = !DILocation(line: 1096, column: 1, scope: !5770)
!5790 = distinct !DISubprogram(name: "__driver_probe_device", scope: !3, file: !3, line: 779, type: !5732, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5791)
!5791 = !{!5792, !5793, !5794}
!5792 = !DILocalVariable(name: "drv", arg: 1, scope: !5790, file: !3, line: 779, type: !305)
!5793 = !DILocalVariable(name: "dev", arg: 2, scope: !5790, file: !3, line: 779, type: !4232)
!5794 = !DILocalVariable(name: "ret", scope: !5790, file: !3, line: 781, type: !109)
!5795 = !DILocation(line: 779, column: 56, scope: !5790)
!5796 = !DILocation(line: 779, column: 76, scope: !5790)
!5797 = !DILocation(line: 781, column: 2, scope: !5790)
!5798 = !DILocation(line: 781, column: 6, scope: !5790)
!5799 = !DILocation(line: 783, column: 6, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 783, column: 6)
!5801 = !DILocation(line: 783, column: 11, scope: !5800)
!5802 = !DILocation(line: 783, column: 14, scope: !5800)
!5803 = !DILocation(line: 783, column: 19, scope: !5800)
!5804 = !DILocation(line: 783, column: 44, scope: !5800)
!5805 = !DILocation(line: 783, column: 23, scope: !5800)
!5806 = !DILocation(line: 783, column: 6, scope: !5790)
!5807 = !DILocation(line: 784, column: 3, scope: !5800)
!5808 = !DILocation(line: 785, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 785, column: 6)
!5810 = !DILocation(line: 785, column: 11, scope: !5809)
!5811 = !DILocation(line: 785, column: 6, scope: !5790)
!5812 = !DILocation(line: 786, column: 3, scope: !5809)
!5813 = !DILocation(line: 788, column: 2, scope: !5790)
!5814 = !DILocation(line: 788, column: 7, scope: !5790)
!5815 = !DILocation(line: 788, column: 17, scope: !5790)
!5816 = !DILocation(line: 789, column: 2, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 789, column: 2)
!5818 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 789, column: 2)
!5819 = !DILocation(line: 789, column: 2, scope: !5818)
!5820 = !DILocation(line: 792, column: 27, scope: !5790)
!5821 = !DILocation(line: 792, column: 2, scope: !5790)
!5822 = !DILocation(line: 793, column: 6, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 793, column: 6)
!5824 = !DILocation(line: 793, column: 11, scope: !5823)
!5825 = !DILocation(line: 793, column: 6, scope: !5790)
!5826 = !DILocation(line: 794, column: 23, scope: !5823)
!5827 = !DILocation(line: 794, column: 28, scope: !5823)
!5828 = !DILocation(line: 794, column: 3, scope: !5823)
!5829 = !DILocation(line: 796, column: 21, scope: !5790)
!5830 = !DILocation(line: 796, column: 2, scope: !5790)
!5831 = !DILocation(line: 797, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 797, column: 6)
!5833 = !DILocation(line: 797, column: 6, scope: !5790)
!5834 = !DILocation(line: 798, column: 28, scope: !5832)
!5835 = !DILocation(line: 798, column: 33, scope: !5832)
!5836 = !DILocation(line: 798, column: 9, scope: !5832)
!5837 = !DILocation(line: 798, column: 7, scope: !5832)
!5838 = !DILocation(line: 798, column: 3, scope: !5832)
!5839 = !DILocation(line: 800, column: 22, scope: !5832)
!5840 = !DILocation(line: 800, column: 27, scope: !5832)
!5841 = !DILocation(line: 800, column: 9, scope: !5832)
!5842 = !DILocation(line: 800, column: 7, scope: !5832)
!5843 = !DILocation(line: 801, column: 18, scope: !5790)
!5844 = !DILocation(line: 801, column: 2, scope: !5790)
!5845 = !DILocation(line: 803, column: 6, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 803, column: 6)
!5847 = !DILocation(line: 803, column: 11, scope: !5846)
!5848 = !DILocation(line: 803, column: 6, scope: !5790)
!5849 = !DILocation(line: 804, column: 18, scope: !5846)
!5850 = !DILocation(line: 804, column: 23, scope: !5846)
!5851 = !DILocation(line: 804, column: 3, scope: !5846)
!5852 = !DILocation(line: 806, column: 27, scope: !5790)
!5853 = !DILocation(line: 806, column: 2, scope: !5790)
!5854 = !DILocation(line: 807, column: 9, scope: !5790)
!5855 = !DILocation(line: 807, column: 2, scope: !5790)
!5856 = !DILocation(line: 808, column: 1, scope: !5790)
!5857 = distinct !DISubprogram(name: "__device_driver_unlock", scope: !3, file: !3, line: 1107, type: !5771, scopeLine: 1108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5858)
!5858 = !{!5859, !5860}
!5859 = !DILocalVariable(name: "dev", arg: 1, scope: !5857, file: !3, line: 1107, type: !4232)
!5860 = !DILocalVariable(name: "parent", arg: 2, scope: !5857, file: !3, line: 1107, type: !4232)
!5861 = !DILocation(line: 1107, column: 51, scope: !5857)
!5862 = !DILocation(line: 1107, column: 71, scope: !5857)
!5863 = !DILocation(line: 1109, column: 16, scope: !5857)
!5864 = !DILocation(line: 1109, column: 2, scope: !5857)
!5865 = !DILocation(line: 1110, column: 6, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 1110, column: 6)
!5867 = !DILocation(line: 1110, column: 13, scope: !5866)
!5868 = !DILocation(line: 1110, column: 16, scope: !5866)
!5869 = !DILocation(line: 1110, column: 21, scope: !5866)
!5870 = !DILocation(line: 1110, column: 26, scope: !5866)
!5871 = !DILocation(line: 1110, column: 6, scope: !5857)
!5872 = !DILocation(line: 1111, column: 17, scope: !5866)
!5873 = !DILocation(line: 1111, column: 3, scope: !5866)
!5874 = !DILocation(line: 1112, column: 1, scope: !5857)
!5875 = distinct !DISubprogram(name: "driver_attach", scope: !3, file: !3, line: 1231, type: !5876, scopeLine: 1232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{!109, !305}
!5878 = !{!5879}
!5879 = !DILocalVariable(name: "drv", arg: 1, scope: !5875, file: !3, line: 1231, type: !305)
!5880 = !DILocation(line: 1231, column: 41, scope: !5875)
!5881 = !DILocation(line: 1233, column: 26, scope: !5875)
!5882 = !DILocation(line: 1233, column: 31, scope: !5875)
!5883 = !DILocation(line: 1233, column: 42, scope: !5875)
!5884 = !DILocation(line: 1233, column: 9, scope: !5875)
!5885 = !DILocation(line: 1233, column: 2, scope: !5875)
!5886 = !DISubprogram(name: "bus_for_each_dev", scope: !171, file: !171, line: 144, type: !5887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!109, !313, !4232, !221, !5889}
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5890, size: 64)
!5890 = !DISubroutineType(types: !5891)
!5891 = !{!109, !4232, !221}
!5892 = distinct !DISubprogram(name: "__driver_attach", scope: !3, file: !3, line: 1156, type: !5890, scopeLine: 1157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5893)
!5893 = !{!5894, !5895, !5896, !5897, !5898}
!5894 = !DILocalVariable(name: "dev", arg: 1, scope: !5892, file: !3, line: 1156, type: !4232)
!5895 = !DILocalVariable(name: "data", arg: 2, scope: !5892, file: !3, line: 1156, type: !221)
!5896 = !DILocalVariable(name: "drv", scope: !5892, file: !3, line: 1158, type: !305)
!5897 = !DILocalVariable(name: "async", scope: !5892, file: !3, line: 1159, type: !435)
!5898 = !DILocalVariable(name: "ret", scope: !5892, file: !3, line: 1160, type: !109)
!5899 = !DILocation(line: 1156, column: 43, scope: !5892)
!5900 = !DILocation(line: 1156, column: 54, scope: !5892)
!5901 = !DILocation(line: 1158, column: 2, scope: !5892)
!5902 = !DILocation(line: 1158, column: 24, scope: !5892)
!5903 = !DILocation(line: 1158, column: 30, scope: !5892)
!5904 = !DILocation(line: 1159, column: 2, scope: !5892)
!5905 = !DILocation(line: 1159, column: 7, scope: !5892)
!5906 = !DILocation(line: 1160, column: 2, scope: !5892)
!5907 = !DILocation(line: 1160, column: 6, scope: !5892)
!5908 = !DILocation(line: 1172, column: 28, scope: !5892)
!5909 = !DILocation(line: 1172, column: 33, scope: !5892)
!5910 = !DILocation(line: 1172, column: 8, scope: !5892)
!5911 = !DILocation(line: 1172, column: 6, scope: !5892)
!5912 = !DILocation(line: 1173, column: 6, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 1173, column: 6)
!5914 = !DILocation(line: 1173, column: 10, scope: !5913)
!5915 = !DILocation(line: 1173, column: 6, scope: !5892)
!5916 = !DILocation(line: 1175, column: 3, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 1173, column: 16)
!5918 = !DILocation(line: 1176, column: 13, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 1176, column: 13)
!5920 = !DILocation(line: 1176, column: 17, scope: !5919)
!5921 = !DILocation(line: 1176, column: 13, scope: !5913)
!5922 = !DILocation(line: 1178, column: 3, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 1176, column: 35)
!5924 = !DILocation(line: 1178, column: 8, scope: !5923)
!5925 = !DILocation(line: 1178, column: 18, scope: !5923)
!5926 = !DILocation(line: 1179, column: 29, scope: !5923)
!5927 = !DILocation(line: 1179, column: 3, scope: !5923)
!5928 = !DILocation(line: 1184, column: 3, scope: !5923)
!5929 = !DILocation(line: 1185, column: 13, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 1185, column: 13)
!5931 = !DILocation(line: 1185, column: 17, scope: !5930)
!5932 = !DILocation(line: 1185, column: 13, scope: !5919)
!5933 = !DILocation(line: 1191, column: 3, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 1185, column: 22)
!5935 = !DILocation(line: 1194, column: 34, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 1194, column: 6)
!5937 = !DILocation(line: 1194, column: 6, scope: !5936)
!5938 = !DILocation(line: 1194, column: 6, scope: !5892)
!5939 = !DILocation(line: 1203, column: 15, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 1194, column: 40)
!5941 = !DILocation(line: 1203, column: 3, scope: !5940)
!5942 = !DILocation(line: 1204, column: 8, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 1204, column: 7)
!5944 = !DILocation(line: 1204, column: 13, scope: !5943)
!5945 = !DILocation(line: 1204, column: 20, scope: !5943)
!5946 = !DILocation(line: 1204, column: 24, scope: !5943)
!5947 = !DILocation(line: 1204, column: 29, scope: !5943)
!5948 = !DILocation(line: 1204, column: 32, scope: !5943)
!5949 = !DILocation(line: 1204, column: 7, scope: !5940)
!5950 = !DILocation(line: 1205, column: 15, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 1204, column: 46)
!5952 = !DILocation(line: 1205, column: 4, scope: !5951)
!5953 = !DILocation(line: 1206, column: 27, scope: !5951)
!5954 = !DILocation(line: 1206, column: 4, scope: !5951)
!5955 = !DILocation(line: 1206, column: 9, scope: !5951)
!5956 = !DILocation(line: 1206, column: 12, scope: !5951)
!5957 = !DILocation(line: 1206, column: 25, scope: !5951)
!5958 = !DILocation(line: 1207, column: 10, scope: !5951)
!5959 = !DILocation(line: 1208, column: 3, scope: !5951)
!5960 = !DILocation(line: 1209, column: 17, scope: !5940)
!5961 = !DILocation(line: 1209, column: 3, scope: !5940)
!5962 = !DILocation(line: 1210, column: 7, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 1210, column: 7)
!5964 = !DILocation(line: 1210, column: 7, scope: !5940)
!5965 = !DILocation(line: 1211, column: 53, scope: !5963)
!5966 = !DILocation(line: 1211, column: 4, scope: !5963)
!5967 = !DILocation(line: 1212, column: 3, scope: !5940)
!5968 = !DILocation(line: 1215, column: 23, scope: !5892)
!5969 = !DILocation(line: 1215, column: 28, scope: !5892)
!5970 = !DILocation(line: 1215, column: 33, scope: !5892)
!5971 = !DILocation(line: 1215, column: 2, scope: !5892)
!5972 = !DILocation(line: 1216, column: 22, scope: !5892)
!5973 = !DILocation(line: 1216, column: 27, scope: !5892)
!5974 = !DILocation(line: 1216, column: 2, scope: !5892)
!5975 = !DILocation(line: 1217, column: 25, scope: !5892)
!5976 = !DILocation(line: 1217, column: 30, scope: !5892)
!5977 = !DILocation(line: 1217, column: 35, scope: !5892)
!5978 = !DILocation(line: 1217, column: 2, scope: !5892)
!5979 = !DILocation(line: 1219, column: 2, scope: !5892)
!5980 = !DILocation(line: 1220, column: 1, scope: !5892)
!5981 = distinct !DISubprogram(name: "device_release_driver_internal", scope: !3, file: !3, line: 1288, type: !5982, scopeLine: 1291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5984)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{null, !4232, !305, !4232}
!5984 = !{!5985, !5986, !5987}
!5985 = !DILocalVariable(name: "dev", arg: 1, scope: !5981, file: !3, line: 1288, type: !4232)
!5986 = !DILocalVariable(name: "drv", arg: 2, scope: !5981, file: !3, line: 1289, type: !305)
!5987 = !DILocalVariable(name: "parent", arg: 3, scope: !5981, file: !3, line: 1290, type: !4232)
!5988 = !DILocation(line: 1288, column: 52, scope: !5981)
!5989 = !DILocation(line: 1289, column: 31, scope: !5981)
!5990 = !DILocation(line: 1290, column: 24, scope: !5981)
!5991 = !DILocation(line: 1292, column: 23, scope: !5981)
!5992 = !DILocation(line: 1292, column: 28, scope: !5981)
!5993 = !DILocation(line: 1292, column: 2, scope: !5981)
!5994 = !DILocation(line: 1294, column: 7, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 1294, column: 6)
!5996 = !DILocation(line: 1294, column: 11, scope: !5995)
!5997 = !DILocation(line: 1294, column: 14, scope: !5995)
!5998 = !DILocation(line: 1294, column: 21, scope: !5995)
!5999 = !DILocation(line: 1294, column: 26, scope: !5995)
!6000 = !DILocation(line: 1294, column: 18, scope: !5995)
!6001 = !DILocation(line: 1294, column: 6, scope: !5981)
!6002 = !DILocation(line: 1295, column: 27, scope: !5995)
!6003 = !DILocation(line: 1295, column: 32, scope: !5995)
!6004 = !DILocation(line: 1295, column: 3, scope: !5995)
!6005 = !DILocation(line: 1297, column: 25, scope: !5981)
!6006 = !DILocation(line: 1297, column: 30, scope: !5981)
!6007 = !DILocation(line: 1297, column: 2, scope: !5981)
!6008 = !DILocation(line: 1298, column: 1, scope: !5981)
!6009 = distinct !DISubprogram(name: "__device_release_driver", scope: !3, file: !3, line: 1241, type: !5771, scopeLine: 1242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6010 = !{!6011, !6012, !6013}
!6011 = !DILocalVariable(name: "dev", arg: 1, scope: !6009, file: !3, line: 1241, type: !4232)
!6012 = !DILocalVariable(name: "parent", arg: 2, scope: !6009, file: !3, line: 1241, type: !4232)
!6013 = !DILocalVariable(name: "drv", scope: !6009, file: !3, line: 1243, type: !305)
!6014 = !DILocation(line: 1241, column: 52, scope: !6009)
!6015 = !DILocation(line: 1241, column: 72, scope: !6009)
!6016 = !DILocation(line: 1243, column: 2, scope: !6009)
!6017 = !DILocation(line: 1243, column: 24, scope: !6009)
!6018 = !DILocation(line: 1245, column: 8, scope: !6009)
!6019 = !DILocation(line: 1245, column: 13, scope: !6009)
!6020 = !DILocation(line: 1245, column: 6, scope: !6009)
!6021 = !DILocation(line: 1246, column: 6, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 1246, column: 6)
!6023 = !DILocation(line: 1246, column: 6, scope: !6009)
!6024 = !DILocation(line: 1247, column: 23, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6022, file: !3, line: 1246, column: 11)
!6026 = !DILocation(line: 1247, column: 3, scope: !6025)
!6027 = !DILocation(line: 1249, column: 3, scope: !6025)
!6028 = !DILocation(line: 1249, column: 28, scope: !6025)
!6029 = !DILocation(line: 1249, column: 10, scope: !6025)
!6030 = !DILocation(line: 1250, column: 27, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 1249, column: 34)
!6032 = !DILocation(line: 1250, column: 32, scope: !6031)
!6033 = !DILocation(line: 1250, column: 4, scope: !6031)
!6034 = !DILocation(line: 1252, column: 34, scope: !6031)
!6035 = !DILocation(line: 1252, column: 4, scope: !6031)
!6036 = !DILocation(line: 1254, column: 25, scope: !6031)
!6037 = !DILocation(line: 1254, column: 30, scope: !6031)
!6038 = !DILocation(line: 1254, column: 4, scope: !6031)
!6039 = !DILocation(line: 1260, column: 8, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 1260, column: 8)
!6041 = !DILocation(line: 1260, column: 13, scope: !6040)
!6042 = !DILocation(line: 1260, column: 23, scope: !6040)
!6043 = !DILocation(line: 1260, column: 20, scope: !6040)
!6044 = !DILocation(line: 1260, column: 8, scope: !6031)
!6045 = !DILocation(line: 1261, column: 20, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 1260, column: 28)
!6047 = !DILocation(line: 1261, column: 5, scope: !6046)
!6048 = !DILocation(line: 1262, column: 5, scope: !6046)
!6049 = distinct !{!6049, !6027, !6050, !6051, !5252}
!6050 = !DILocation(line: 1264, column: 3, scope: !6025)
!6051 = !{!"llvm.loop.mustprogress"}
!6052 = !DILocation(line: 1266, column: 23, scope: !6025)
!6053 = !DILocation(line: 1266, column: 3, scope: !6025)
!6054 = !DILocation(line: 1268, column: 14, scope: !6025)
!6055 = !DILocation(line: 1268, column: 3, scope: !6025)
!6056 = !DILocation(line: 1270, column: 23, scope: !6025)
!6057 = !DILocation(line: 1270, column: 3, scope: !6025)
!6058 = !DILocation(line: 1272, column: 17, scope: !6025)
!6059 = !DILocation(line: 1272, column: 3, scope: !6025)
!6060 = !DILocation(line: 1274, column: 7, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 1274, column: 7)
!6062 = !DILocation(line: 1274, column: 12, scope: !6061)
!6063 = !DILocation(line: 1274, column: 16, scope: !6061)
!6064 = !DILocation(line: 1274, column: 19, scope: !6061)
!6065 = !DILocation(line: 1274, column: 24, scope: !6061)
!6066 = !DILocation(line: 1274, column: 29, scope: !6061)
!6067 = !DILocation(line: 1274, column: 7, scope: !6025)
!6068 = !DILocation(line: 1275, column: 4, scope: !6061)
!6069 = !DILocation(line: 1275, column: 9, scope: !6061)
!6070 = !DILocation(line: 1275, column: 14, scope: !6061)
!6071 = !DILocation(line: 1275, column: 26, scope: !6061)
!6072 = !DILocation(line: 1277, column: 25, scope: !6025)
!6073 = !DILocation(line: 1277, column: 3, scope: !6025)
!6074 = !DILocation(line: 1278, column: 31, scope: !6025)
!6075 = !DILocation(line: 1278, column: 3, scope: !6025)
!6076 = !DILocation(line: 1280, column: 17, scope: !6025)
!6077 = !DILocation(line: 1280, column: 22, scope: !6025)
!6078 = !DILocation(line: 1280, column: 25, scope: !6025)
!6079 = !DILocation(line: 1280, column: 3, scope: !6025)
!6080 = !DILocation(line: 1281, column: 29, scope: !6025)
!6081 = !DILocation(line: 1281, column: 3, scope: !6025)
!6082 = !DILocation(line: 1283, column: 14, scope: !6025)
!6083 = !DILocation(line: 1283, column: 3, scope: !6025)
!6084 = !DILocation(line: 1284, column: 19, scope: !6025)
!6085 = !DILocation(line: 1284, column: 24, scope: !6025)
!6086 = !DILocation(line: 1284, column: 3, scope: !6025)
!6087 = !DILocation(line: 1285, column: 2, scope: !6025)
!6088 = !DILocation(line: 1286, column: 1, scope: !6009)
!6089 = distinct !DISubprogram(name: "device_release_driver", scope: !3, file: !3, line: 1311, type: !4259, scopeLine: 1312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6090 = !{!6091}
!6091 = !DILocalVariable(name: "dev", arg: 1, scope: !6089, file: !3, line: 1311, type: !4232)
!6092 = !DILocation(line: 1311, column: 43, scope: !6089)
!6093 = !DILocation(line: 1318, column: 33, scope: !6089)
!6094 = !DILocation(line: 1318, column: 2, scope: !6089)
!6095 = !DILocation(line: 1319, column: 1, scope: !6089)
!6096 = distinct !DISubprogram(name: "device_driver_detach", scope: !3, file: !3, line: 1329, type: !4259, scopeLine: 1330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6097)
!6097 = !{!6098}
!6098 = !DILocalVariable(name: "dev", arg: 1, scope: !6096, file: !3, line: 1329, type: !4232)
!6099 = !DILocation(line: 1329, column: 42, scope: !6096)
!6100 = !DILocation(line: 1331, column: 33, scope: !6096)
!6101 = !DILocation(line: 1331, column: 44, scope: !6096)
!6102 = !DILocation(line: 1331, column: 49, scope: !6096)
!6103 = !DILocation(line: 1331, column: 2, scope: !6096)
!6104 = !DILocation(line: 1332, column: 1, scope: !6096)
!6105 = distinct !DISubprogram(name: "driver_detach", scope: !3, file: !3, line: 1338, type: !6106, scopeLine: 1339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6108)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{null, !305}
!6108 = !{!6109, !6110, !6111, !6112}
!6109 = !DILocalVariable(name: "drv", arg: 1, scope: !6105, file: !3, line: 1338, type: !305)
!6110 = !DILocalVariable(name: "dev_prv", scope: !6105, file: !3, line: 1340, type: !222)
!6111 = !DILocalVariable(name: "dev", scope: !6105, file: !3, line: 1341, type: !4232)
!6112 = !DILocalVariable(name: "__mptr", scope: !6113, file: !3, line: 1352, type: !221)
!6113 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 1352, column: 13)
!6114 = distinct !DILexicalBlock(scope: !6115, file: !3, line: 1346, column: 11)
!6115 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 1346, column: 2)
!6116 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 1346, column: 2)
!6117 = !DILocation(line: 1338, column: 42, scope: !6105)
!6118 = !DILocation(line: 1340, column: 2, scope: !6105)
!6119 = !DILocation(line: 1340, column: 25, scope: !6105)
!6120 = !DILocation(line: 1341, column: 2, scope: !6105)
!6121 = !DILocation(line: 1341, column: 17, scope: !6105)
!6122 = !DILocation(line: 1343, column: 34, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 1343, column: 6)
!6124 = !DILocation(line: 1343, column: 6, scope: !6123)
!6125 = !DILocation(line: 1343, column: 6, scope: !6105)
!6126 = !DILocation(line: 1344, column: 3, scope: !6123)
!6127 = !DILocation(line: 1346, column: 2, scope: !6105)
!6128 = !DILocation(line: 1347, column: 14, scope: !6114)
!6129 = !DILocation(line: 1347, column: 19, scope: !6114)
!6130 = !DILocation(line: 1347, column: 22, scope: !6114)
!6131 = !DILocation(line: 1347, column: 36, scope: !6114)
!6132 = !DILocation(line: 1347, column: 3, scope: !6114)
!6133 = !DILocation(line: 1348, column: 19, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 1348, column: 7)
!6135 = !DILocation(line: 1348, column: 24, scope: !6134)
!6136 = !DILocation(line: 1348, column: 27, scope: !6134)
!6137 = !DILocation(line: 1348, column: 41, scope: !6134)
!6138 = !DILocation(line: 1348, column: 7, scope: !6134)
!6139 = !DILocation(line: 1348, column: 7, scope: !6114)
!6140 = !DILocation(line: 1349, column: 17, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 1348, column: 50)
!6142 = !DILocation(line: 1349, column: 22, scope: !6141)
!6143 = !DILocation(line: 1349, column: 25, scope: !6141)
!6144 = !DILocation(line: 1349, column: 39, scope: !6141)
!6145 = !DILocation(line: 1349, column: 4, scope: !6141)
!6146 = !DILocation(line: 1350, column: 4, scope: !6141)
!6147 = !DILocation(line: 1352, column: 13, scope: !6113)
!6148 = !DILocation(line: 1352, column: 13, scope: !6114)
!6149 = !DILocation(line: 1352, column: 11, scope: !6114)
!6150 = !DILocation(line: 1355, column: 9, scope: !6114)
!6151 = !DILocation(line: 1355, column: 18, scope: !6114)
!6152 = !DILocation(line: 1355, column: 7, scope: !6114)
!6153 = !DILocation(line: 1356, column: 14, scope: !6114)
!6154 = !DILocation(line: 1356, column: 3, scope: !6114)
!6155 = !DILocation(line: 1357, column: 16, scope: !6114)
!6156 = !DILocation(line: 1357, column: 21, scope: !6114)
!6157 = !DILocation(line: 1357, column: 24, scope: !6114)
!6158 = !DILocation(line: 1357, column: 38, scope: !6114)
!6159 = !DILocation(line: 1357, column: 3, scope: !6114)
!6160 = !DILocation(line: 1358, column: 34, scope: !6114)
!6161 = !DILocation(line: 1358, column: 39, scope: !6114)
!6162 = !DILocation(line: 1358, column: 44, scope: !6114)
!6163 = !DILocation(line: 1358, column: 49, scope: !6114)
!6164 = !DILocation(line: 1358, column: 3, scope: !6114)
!6165 = !DILocation(line: 1359, column: 14, scope: !6114)
!6166 = !DILocation(line: 1359, column: 3, scope: !6114)
!6167 = !DILocation(line: 1346, column: 2, scope: !6115)
!6168 = distinct !{!6168, !6169, !6170, !5252}
!6169 = !DILocation(line: 1346, column: 2, scope: !6116)
!6170 = !DILocation(line: 1360, column: 2, scope: !6116)
!6171 = !DILocation(line: 1361, column: 1, scope: !6105)
!6172 = distinct !DISubprogram(name: "driver_allows_async_probing", scope: !3, file: !3, line: 868, type: !6173, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6175)
!6173 = !DISubroutineType(types: !6174)
!6174 = !{!435, !305}
!6175 = !{!6176}
!6176 = !DILocalVariable(name: "drv", arg: 1, scope: !6172, file: !3, line: 868, type: !305)
!6177 = !DILocation(line: 868, column: 63, scope: !6172)
!6178 = !DILocation(line: 870, column: 10, scope: !6172)
!6179 = !DILocation(line: 870, column: 15, scope: !6172)
!6180 = !DILocation(line: 870, column: 2, scope: !6172)
!6181 = !DILocation(line: 872, column: 3, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 870, column: 27)
!6183 = !DILocation(line: 875, column: 3, scope: !6182)
!6184 = !DILocation(line: 878, column: 39, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 878, column: 7)
!6186 = !DILocation(line: 878, column: 44, scope: !6185)
!6187 = !DILocation(line: 878, column: 7, scope: !6185)
!6188 = !DILocation(line: 878, column: 7, scope: !6182)
!6189 = !DILocation(line: 879, column: 4, scope: !6185)
!6190 = !DILocation(line: 881, column: 38, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 881, column: 7)
!6192 = !DILocation(line: 881, column: 43, scope: !6191)
!6193 = !DILocation(line: 881, column: 7, scope: !6191)
!6194 = !DILocation(line: 881, column: 7, scope: !6182)
!6195 = !DILocation(line: 882, column: 4, scope: !6191)
!6196 = !DILocation(line: 884, column: 3, scope: !6182)
!6197 = !DILocation(line: 886, column: 1, scope: !6172)
!6198 = distinct !DISubprogram(name: "spin_lock", scope: !6199, file: !6199, line: 349, type: !6200, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6199 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6200 = !DISubroutineType(types: !6201)
!6201 = !{null, !3404}
!6202 = !{!6203}
!6203 = !DILocalVariable(name: "lock", arg: 1, scope: !6198, file: !6199, line: 349, type: !3404)
!6204 = !DILocation(line: 349, column: 51, scope: !6198)
!6205 = !DILocation(line: 351, column: 2, scope: !6198)
!6206 = !DILocation(line: 352, column: 1, scope: !6198)
!6207 = distinct !DISubprogram(name: "spin_unlock", scope: !6199, file: !6199, line: 389, type: !6200, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6208)
!6208 = !{!6209}
!6209 = !DILocalVariable(name: "lock", arg: 1, scope: !6207, file: !6199, line: 389, type: !3404)
!6210 = !DILocation(line: 389, column: 53, scope: !6207)
!6211 = !DILocation(line: 391, column: 2, scope: !6207)
!6212 = !DILocation(line: 392, column: 1, scope: !6207)
!6213 = !DISubprogram(name: "get_device", scope: !94, file: !94, line: 1230, type: !6214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6214 = !DISubroutineType(types: !6215)
!6215 = !{!4232, !4232}
!6216 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6217 = distinct !DISubprogram(name: "__list_add", scope: !5074, file: !5074, line: 146, type: !6218, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6220)
!6218 = !DISubroutineType(types: !6219)
!6219 = !{null, !277, !277, !277}
!6220 = !{!6221, !6222, !6223}
!6221 = !DILocalVariable(name: "new", arg: 1, scope: !6217, file: !5074, line: 146, type: !277)
!6222 = !DILocalVariable(name: "prev", arg: 2, scope: !6217, file: !5074, line: 147, type: !277)
!6223 = !DILocalVariable(name: "next", arg: 3, scope: !6217, file: !5074, line: 148, type: !277)
!6224 = !DILocation(line: 146, column: 49, scope: !6217)
!6225 = !DILocation(line: 147, column: 28, scope: !6217)
!6226 = !DILocation(line: 148, column: 28, scope: !6217)
!6227 = !DILocation(line: 150, column: 24, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6217, file: !5074, line: 150, column: 6)
!6229 = !DILocation(line: 150, column: 29, scope: !6228)
!6230 = !DILocation(line: 150, column: 35, scope: !6228)
!6231 = !DILocation(line: 150, column: 7, scope: !6228)
!6232 = !DILocation(line: 150, column: 6, scope: !6217)
!6233 = !DILocation(line: 151, column: 3, scope: !6228)
!6234 = !DILocation(line: 153, column: 15, scope: !6217)
!6235 = !DILocation(line: 153, column: 2, scope: !6217)
!6236 = !DILocation(line: 153, column: 8, scope: !6217)
!6237 = !DILocation(line: 153, column: 13, scope: !6217)
!6238 = !DILocation(line: 154, column: 14, scope: !6217)
!6239 = !DILocation(line: 154, column: 2, scope: !6217)
!6240 = !DILocation(line: 154, column: 7, scope: !6217)
!6241 = !DILocation(line: 154, column: 12, scope: !6217)
!6242 = !DILocation(line: 155, column: 14, scope: !6217)
!6243 = !DILocation(line: 155, column: 2, scope: !6217)
!6244 = !DILocation(line: 155, column: 7, scope: !6217)
!6245 = !DILocation(line: 155, column: 12, scope: !6217)
!6246 = !DILocation(line: 156, column: 2, scope: !6217)
!6247 = !DILocation(line: 156, column: 2, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6217, file: !5074, line: 156, column: 2)
!6249 = !DILocation(line: 156, column: 2, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6248, file: !5074, line: 156, column: 2)
!6251 = !DILocation(line: 156, column: 2, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6248, file: !5074, line: 156, column: 2)
!6253 = !DILocation(line: 157, column: 1, scope: !6217)
!6254 = distinct !DISubprogram(name: "__list_add_valid", scope: !5074, file: !5074, line: 128, type: !6255, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{!435, !277, !277, !277}
!6257 = !{!6258, !6259, !6260}
!6258 = !DILocalVariable(name: "new", arg: 1, scope: !6254, file: !5074, line: 128, type: !277)
!6259 = !DILocalVariable(name: "prev", arg: 2, scope: !6254, file: !5074, line: 129, type: !277)
!6260 = !DILocalVariable(name: "next", arg: 3, scope: !6254, file: !5074, line: 130, type: !277)
!6261 = !DILocation(line: 128, column: 55, scope: !6254)
!6262 = !DILocation(line: 129, column: 23, scope: !6254)
!6263 = !DILocation(line: 130, column: 23, scope: !6254)
!6264 = !DILocation(line: 132, column: 2, scope: !6254)
!6265 = distinct !DISubprogram(name: "__list_del_entry", scope: !5074, file: !5074, line: 213, type: !5126, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6266)
!6266 = !{!6267}
!6267 = !DILocalVariable(name: "entry", arg: 1, scope: !6265, file: !5074, line: 213, type: !277)
!6268 = !DILocation(line: 213, column: 55, scope: !6265)
!6269 = !DILocation(line: 215, column: 30, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6265, file: !5074, line: 215, column: 6)
!6271 = !DILocation(line: 215, column: 7, scope: !6270)
!6272 = !DILocation(line: 215, column: 6, scope: !6265)
!6273 = !DILocation(line: 216, column: 3, scope: !6270)
!6274 = !DILocation(line: 218, column: 13, scope: !6265)
!6275 = !DILocation(line: 218, column: 20, scope: !6265)
!6276 = !DILocation(line: 218, column: 26, scope: !6265)
!6277 = !DILocation(line: 218, column: 33, scope: !6265)
!6278 = !DILocation(line: 218, column: 2, scope: !6265)
!6279 = !DILocation(line: 219, column: 1, scope: !6265)
!6280 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5074, file: !5074, line: 35, type: !5126, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6281)
!6281 = !{!6282}
!6282 = !DILocalVariable(name: "list", arg: 1, scope: !6280, file: !5074, line: 35, type: !277)
!6283 = !DILocation(line: 35, column: 53, scope: !6280)
!6284 = !DILocation(line: 37, column: 2, scope: !6280)
!6285 = !DILocation(line: 37, column: 2, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6280, file: !5074, line: 37, column: 2)
!6287 = !DILocation(line: 37, column: 2, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6286, file: !5074, line: 37, column: 2)
!6289 = !DILocation(line: 37, column: 2, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6286, file: !5074, line: 37, column: 2)
!6291 = !DILocation(line: 38, column: 2, scope: !6280)
!6292 = !DILocation(line: 38, column: 2, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6280, file: !5074, line: 38, column: 2)
!6294 = !DILocation(line: 38, column: 2, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6293, file: !5074, line: 38, column: 2)
!6296 = !DILocation(line: 38, column: 2, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6293, file: !5074, line: 38, column: 2)
!6298 = !DILocation(line: 39, column: 1, scope: !6280)
!6299 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5074, file: !5074, line: 134, type: !6300, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6302)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!435, !277}
!6302 = !{!6303}
!6303 = !DILocalVariable(name: "entry", arg: 1, scope: !6299, file: !5074, line: 134, type: !277)
!6304 = !DILocation(line: 134, column: 61, scope: !6299)
!6305 = !DILocation(line: 136, column: 2, scope: !6299)
!6306 = distinct !DISubprogram(name: "__list_del", scope: !5074, file: !5074, line: 193, type: !5090, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6307)
!6307 = !{!6308, !6309}
!6308 = !DILocalVariable(name: "prev", arg: 1, scope: !6306, file: !5074, line: 193, type: !277)
!6309 = !DILocalVariable(name: "next", arg: 2, scope: !6306, file: !5074, line: 193, type: !277)
!6310 = !DILocation(line: 193, column: 50, scope: !6306)
!6311 = !DILocation(line: 193, column: 75, scope: !6306)
!6312 = !DILocation(line: 195, column: 15, scope: !6306)
!6313 = !DILocation(line: 195, column: 2, scope: !6306)
!6314 = !DILocation(line: 195, column: 8, scope: !6306)
!6315 = !DILocation(line: 195, column: 13, scope: !6306)
!6316 = !DILocation(line: 196, column: 2, scope: !6306)
!6317 = !DILocation(line: 196, column: 2, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6306, file: !5074, line: 196, column: 2)
!6319 = !DILocation(line: 196, column: 2, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6318, file: !5074, line: 196, column: 2)
!6321 = !DILocation(line: 196, column: 2, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6318, file: !5074, line: 196, column: 2)
!6323 = !DILocation(line: 197, column: 1, scope: !6306)
!6324 = !DISubprogram(name: "kfree", scope: !6325, file: !6325, line: 227, type: !6326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6325 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6326 = !DISubroutineType(types: !6327)
!6327 = !{null, !445}
!6328 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6329, file: !6329, line: 94, type: !6330, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6335)
!6329 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6330 = !DISubroutineType(types: !6331)
!6331 = !{null, !6332, !417}
!6332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6333, size: 64)
!6333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6334)
!6334 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6335 = !{!6336, !6337}
!6336 = !DILocalVariable(name: "v", arg: 1, scope: !6328, file: !6329, line: 94, type: !6332)
!6337 = !DILocalVariable(name: "size", arg: 2, scope: !6328, file: !6329, line: 94, type: !417)
!6338 = !DILocation(line: 94, column: 79, scope: !6328)
!6339 = !DILocation(line: 94, column: 89, scope: !6328)
!6340 = !DILocation(line: 96, column: 20, scope: !6328)
!6341 = !DILocation(line: 96, column: 23, scope: !6328)
!6342 = !DILocation(line: 96, column: 2, scope: !6328)
!6343 = !DILocation(line: 97, column: 2, scope: !6328)
!6344 = !DILocation(line: 98, column: 1, scope: !6328)
!6345 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6346, file: !6346, line: 976, type: !5169, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6347)
!6346 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6347 = !{!6348}
!6348 = !DILocalVariable(name: "v", arg: 1, scope: !6345, file: !6346, line: 976, type: !5171)
!6349 = !DILocation(line: 976, column: 26, scope: !6345)
!6350 = !DILocation(line: 979, column: 18, scope: !6345)
!6351 = !DILocation(line: 979, column: 2, scope: !6345)
!6352 = !DILocation(line: 983, column: 1, scope: !6345)
!6353 = distinct !DISubprogram(name: "kasan_check_write", scope: !6354, file: !6354, line: 44, type: !6355, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6357)
!6354 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6355 = !DISubroutineType(types: !6356)
!6356 = !{!435, !6332, !7}
!6357 = !{!6358, !6359}
!6358 = !DILocalVariable(name: "p", arg: 1, scope: !6353, file: !6354, line: 44, type: !6332)
!6359 = !DILocalVariable(name: "size", arg: 2, scope: !6353, file: !6354, line: 44, type: !7)
!6360 = !DILocation(line: 44, column: 59, scope: !6353)
!6361 = !DILocation(line: 44, column: 75, scope: !6353)
!6362 = !DILocation(line: 46, column: 2, scope: !6353)
!6363 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6364, file: !6364, line: 229, type: !6365, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6367)
!6364 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6365 = !DISubroutineType(types: !6366)
!6366 = !{null, !6332, !417, !109}
!6367 = !{!6368, !6369, !6370}
!6368 = !DILocalVariable(name: "ptr", arg: 1, scope: !6363, file: !6364, line: 229, type: !6332)
!6369 = !DILocalVariable(name: "size", arg: 2, scope: !6363, file: !6364, line: 229, type: !417)
!6370 = !DILocalVariable(name: "type", arg: 3, scope: !6363, file: !6364, line: 230, type: !109)
!6371 = !DILocation(line: 229, column: 60, scope: !6363)
!6372 = !DILocation(line: 229, column: 72, scope: !6363)
!6373 = !DILocation(line: 230, column: 15, scope: !6363)
!6374 = !DILocation(line: 230, column: 23, scope: !6363)
!6375 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6376, file: !6376, line: 51, type: !5169, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6377)
!6376 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6377 = !{!6378}
!6378 = !DILocalVariable(name: "v", arg: 1, scope: !6375, file: !6376, line: 51, type: !5171)
!6379 = !DILocation(line: 51, column: 55, scope: !6375)
!6380 = !DILocation(line: 54, column: 16, scope: !6375)
!6381 = !DILocation(line: 54, column: 19, scope: !6375)
!6382 = !DILocation(line: 53, column: 2, scope: !6375)
!6383 = !{i64 2149020423, i64 2149020462, i64 2149020483, i64 2149020520, i64 2149020543, i64 2149020413}
!6384 = !DILocation(line: 55, column: 1, scope: !6375)
!6385 = distinct !DISubprogram(name: "__list_splice", scope: !5074, file: !5074, line: 523, type: !6386, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6388)
!6386 = !DISubroutineType(types: !6387)
!6387 = !{null, !5077, !277, !277}
!6388 = !{!6389, !6390, !6391, !6392, !6393}
!6389 = !DILocalVariable(name: "list", arg: 1, scope: !6385, file: !5074, line: 523, type: !5077)
!6390 = !DILocalVariable(name: "prev", arg: 2, scope: !6385, file: !5074, line: 524, type: !277)
!6391 = !DILocalVariable(name: "next", arg: 3, scope: !6385, file: !5074, line: 525, type: !277)
!6392 = !DILocalVariable(name: "first", scope: !6385, file: !5074, line: 527, type: !277)
!6393 = !DILocalVariable(name: "last", scope: !6385, file: !5074, line: 528, type: !277)
!6394 = !DILocation(line: 523, column: 58, scope: !6385)
!6395 = !DILocation(line: 524, column: 24, scope: !6385)
!6396 = !DILocation(line: 525, column: 24, scope: !6385)
!6397 = !DILocation(line: 527, column: 2, scope: !6385)
!6398 = !DILocation(line: 527, column: 20, scope: !6385)
!6399 = !DILocation(line: 527, column: 28, scope: !6385)
!6400 = !DILocation(line: 527, column: 34, scope: !6385)
!6401 = !DILocation(line: 528, column: 2, scope: !6385)
!6402 = !DILocation(line: 528, column: 20, scope: !6385)
!6403 = !DILocation(line: 528, column: 27, scope: !6385)
!6404 = !DILocation(line: 528, column: 33, scope: !6385)
!6405 = !DILocation(line: 530, column: 16, scope: !6385)
!6406 = !DILocation(line: 530, column: 2, scope: !6385)
!6407 = !DILocation(line: 530, column: 9, scope: !6385)
!6408 = !DILocation(line: 530, column: 14, scope: !6385)
!6409 = !DILocation(line: 531, column: 15, scope: !6385)
!6410 = !DILocation(line: 531, column: 2, scope: !6385)
!6411 = !DILocation(line: 531, column: 8, scope: !6385)
!6412 = !DILocation(line: 531, column: 13, scope: !6385)
!6413 = !DILocation(line: 533, column: 15, scope: !6385)
!6414 = !DILocation(line: 533, column: 2, scope: !6385)
!6415 = !DILocation(line: 533, column: 8, scope: !6385)
!6416 = !DILocation(line: 533, column: 13, scope: !6385)
!6417 = !DILocation(line: 534, column: 15, scope: !6385)
!6418 = !DILocation(line: 534, column: 2, scope: !6385)
!6419 = !DILocation(line: 534, column: 8, scope: !6385)
!6420 = !DILocation(line: 534, column: 13, scope: !6385)
!6421 = !DILocation(line: 535, column: 1, scope: !6385)
!6422 = !DISubprogram(name: "queue_work_on", scope: !182, file: !182, line: 496, type: !6423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6423 = !DISubroutineType(types: !6424)
!6424 = !{!435, !109, !1496, !1444}
!6425 = distinct !DISubprogram(name: "deferred_probe_work_func", scope: !3, file: !3, line: 81, type: !1442, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6426)
!6426 = !{!6427, !6428, !6429, !6430}
!6427 = !DILocalVariable(name: "work", arg: 1, scope: !6425, file: !3, line: 81, type: !1444)
!6428 = !DILocalVariable(name: "dev", scope: !6425, file: !3, line: 83, type: !4232)
!6429 = !DILocalVariable(name: "private", scope: !6425, file: !3, line: 84, type: !222)
!6430 = !DILocalVariable(name: "__mptr", scope: !6431, file: !3, line: 99, type: !221)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 99, column: 13)
!6432 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 98, column: 51)
!6433 = !DILocation(line: 81, column: 58, scope: !6425)
!6434 = !DILocation(line: 83, column: 2, scope: !6425)
!6435 = !DILocation(line: 83, column: 17, scope: !6425)
!6436 = !DILocation(line: 84, column: 2, scope: !6425)
!6437 = !DILocation(line: 84, column: 25, scope: !6425)
!6438 = !DILocation(line: 97, column: 2, scope: !6425)
!6439 = !DILocation(line: 98, column: 2, scope: !6425)
!6440 = !DILocation(line: 98, column: 10, scope: !6425)
!6441 = !DILocation(line: 98, column: 9, scope: !6425)
!6442 = !DILocation(line: 99, column: 13, scope: !6431)
!6443 = !DILocation(line: 99, column: 13, scope: !6432)
!6444 = !DILocation(line: 99, column: 11, scope: !6432)
!6445 = !DILocation(line: 101, column: 9, scope: !6432)
!6446 = !DILocation(line: 101, column: 18, scope: !6432)
!6447 = !DILocation(line: 101, column: 7, scope: !6432)
!6448 = !DILocation(line: 102, column: 18, scope: !6432)
!6449 = !DILocation(line: 102, column: 27, scope: !6432)
!6450 = !DILocation(line: 102, column: 3, scope: !6432)
!6451 = !DILocation(line: 104, column: 14, scope: !6432)
!6452 = !DILocation(line: 104, column: 3, scope: !6432)
!6453 = !DILocation(line: 106, column: 38, scope: !6432)
!6454 = !DILocation(line: 106, column: 3, scope: !6432)
!6455 = !DILocation(line: 112, column: 3, scope: !6432)
!6456 = !DILocation(line: 120, column: 26, scope: !6432)
!6457 = !DILocation(line: 120, column: 3, scope: !6432)
!6458 = !DILocation(line: 123, column: 20, scope: !6432)
!6459 = !DILocation(line: 123, column: 3, scope: !6432)
!6460 = !DILocation(line: 124, column: 3, scope: !6432)
!6461 = !DILocation(line: 126, column: 14, scope: !6432)
!6462 = !DILocation(line: 126, column: 3, scope: !6432)
!6463 = distinct !{!6463, !6439, !6464, !6051, !5252}
!6464 = !DILocation(line: 127, column: 2, scope: !6425)
!6465 = !DILocation(line: 128, column: 2, scope: !6425)
!6466 = !DILocation(line: 129, column: 1, scope: !6425)
!6467 = !DISubprogram(name: "device_pm_move_to_tail", scope: !224, file: !224, line: 237, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6468 = !DISubprogram(name: "bus_probe_device", scope: !224, file: !224, line: 151, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6469 = !DISubprogram(name: "kstrtoint", scope: !6470, file: !6470, line: 72, type: !6471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6470 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6471 = !DISubroutineType(types: !6472)
!6472 = !{!109, !309, !7, !1321}
!6473 = distinct !DISubprogram(name: "deferred_probe_timeout_work_func", scope: !3, file: !3, line: 304, type: !1442, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6474)
!6474 = !{!6475, !6476, !6477, !6480}
!6475 = !DILocalVariable(name: "work", arg: 1, scope: !6473, file: !3, line: 304, type: !1444)
!6476 = !DILocalVariable(name: "p", scope: !6473, file: !3, line: 306, type: !222)
!6477 = !DILocalVariable(name: "__mptr", scope: !6478, file: !3, line: 315, type: !221)
!6478 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 315, column: 2)
!6479 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 315, column: 2)
!6480 = !DILocalVariable(name: "__mptr", scope: !6481, file: !3, line: 315, type: !221)
!6481 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 315, column: 2)
!6482 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 315, column: 2)
!6483 = !DILocation(line: 304, column: 66, scope: !6473)
!6484 = !DILocation(line: 306, column: 2, scope: !6473)
!6485 = !DILocation(line: 306, column: 25, scope: !6473)
!6486 = !DILocation(line: 308, column: 2, scope: !6473)
!6487 = !DILocation(line: 310, column: 32, scope: !6473)
!6488 = !DILocation(line: 311, column: 2, scope: !6473)
!6489 = !DILocation(line: 312, column: 2, scope: !6473)
!6490 = !DILocation(line: 314, column: 2, scope: !6473)
!6491 = !DILocation(line: 315, column: 2, scope: !6478)
!6492 = !DILocation(line: 315, column: 2, scope: !6479)
!6493 = !DILocation(line: 315, column: 2, scope: !6482)
!6494 = !DILocation(line: 316, column: 3, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 316, column: 3)
!6496 = !DILocation(line: 316, column: 3, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 316, column: 3)
!6498 = !DILocation(line: 316, column: 3, scope: !6482)
!6499 = !DILocation(line: 315, column: 2, scope: !6481)
!6500 = distinct !{!6500, !6492, !6501, !6051, !5252}
!6501 = !DILocation(line: 316, column: 3, scope: !6479)
!6502 = !DILocation(line: 317, column: 2, scope: !6473)
!6503 = !DILocation(line: 319, column: 2, scope: !6473)
!6504 = !DILocation(line: 320, column: 1, scope: !6473)
!6505 = !DISubprogram(name: "fw_devlink_drivers_done", scope: !224, file: !224, line: 233, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6506 = !DISubprogram(name: "_dev_info", scope: !5343, file: !5343, line: 56, type: !5344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6507 = !DISubprogram(name: "fw_devlink_probing_done", scope: !224, file: !224, line: 234, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6508 = distinct !DISubprogram(name: "queue_delayed_work", scope: !182, file: !182, line: 573, type: !6509, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6511)
!6509 = !DISubroutineType(types: !6510)
!6510 = !{!435, !1496, !5363, !420}
!6511 = !{!6512, !6513, !6514}
!6512 = !DILocalVariable(name: "wq", arg: 1, scope: !6508, file: !182, line: 573, type: !1496)
!6513 = !DILocalVariable(name: "dwork", arg: 2, scope: !6508, file: !182, line: 574, type: !5363)
!6514 = !DILocalVariable(name: "delay", arg: 3, scope: !6508, file: !182, line: 575, type: !420)
!6515 = !DILocation(line: 573, column: 64, scope: !6508)
!6516 = !DILocation(line: 574, column: 32, scope: !6508)
!6517 = !DILocation(line: 575, column: 25, scope: !6508)
!6518 = !DILocation(line: 577, column: 49, scope: !6508)
!6519 = !DILocation(line: 577, column: 53, scope: !6508)
!6520 = !DILocation(line: 577, column: 60, scope: !6508)
!6521 = !DILocation(line: 577, column: 9, scope: !6508)
!6522 = !DILocation(line: 577, column: 2, scope: !6508)
!6523 = !DISubprogram(name: "queue_delayed_work_on", scope: !182, file: !182, line: 500, type: !6524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6524 = !DISubroutineType(types: !6525)
!6525 = !{!435, !109, !1496, !5363, !420}
!6526 = !DISubprogram(name: "debugfs_create_file", scope: !5401, file: !5401, line: 75, type: !6527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6527 = !DISubroutineType(types: !6528)
!6528 = !{!881, !309, !331, !881, !221, !3953}
!6529 = distinct !DISubprogram(name: "deferred_devs_open", scope: !3, file: !3, line: 257, type: !4011, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6530)
!6530 = !{!6531, !6532}
!6531 = !DILocalVariable(name: "inode", arg: 1, scope: !6529, file: !3, line: 257, type: !921)
!6532 = !DILocalVariable(name: "file", arg: 2, scope: !6529, file: !3, line: 257, type: !535)
!6533 = !DILocation(line: 257, column: 1, scope: !6529)
!6534 = !DISubprogram(name: "single_open", scope: !1615, file: !1615, line: 166, type: !6535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6535 = !DISubroutineType(types: !6536)
!6536 = !{!109, !535, !1644, !221}
!6537 = distinct !DISubprogram(name: "deferred_devs_show", scope: !3, file: !3, line: 243, type: !1645, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6538)
!6538 = !{!6539, !6540, !6541, !6542, !6545}
!6539 = !DILocalVariable(name: "s", arg: 1, scope: !6537, file: !3, line: 243, type: !1613)
!6540 = !DILocalVariable(name: "data", arg: 2, scope: !6537, file: !3, line: 243, type: !221)
!6541 = !DILocalVariable(name: "curr", scope: !6537, file: !3, line: 245, type: !222)
!6542 = !DILocalVariable(name: "__mptr", scope: !6543, file: !3, line: 249, type: !221)
!6543 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 249, column: 2)
!6544 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 249, column: 2)
!6545 = !DILocalVariable(name: "__mptr", scope: !6546, file: !3, line: 249, type: !221)
!6546 = distinct !DILexicalBlock(scope: !6547, file: !3, line: 249, column: 2)
!6547 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 249, column: 2)
!6548 = !DILocation(line: 243, column: 48, scope: !6537)
!6549 = !DILocation(line: 243, column: 57, scope: !6537)
!6550 = !DILocation(line: 245, column: 2, scope: !6537)
!6551 = !DILocation(line: 245, column: 25, scope: !6537)
!6552 = !DILocation(line: 247, column: 2, scope: !6537)
!6553 = !DILocation(line: 249, column: 2, scope: !6543)
!6554 = !DILocation(line: 249, column: 2, scope: !6544)
!6555 = !DILocation(line: 249, column: 2, scope: !6547)
!6556 = !DILocation(line: 250, column: 14, scope: !6547)
!6557 = !DILocation(line: 250, column: 36, scope: !6547)
!6558 = !DILocation(line: 250, column: 42, scope: !6547)
!6559 = !DILocation(line: 250, column: 27, scope: !6547)
!6560 = !DILocation(line: 251, column: 7, scope: !6547)
!6561 = !DILocation(line: 251, column: 13, scope: !6547)
!6562 = !DILocation(line: 251, column: 21, scope: !6547)
!6563 = !DILocation(line: 251, column: 24, scope: !6547)
!6564 = !DILocation(line: 250, column: 3, scope: !6547)
!6565 = !DILocation(line: 249, column: 2, scope: !6546)
!6566 = distinct !{!6566, !6554, !6567, !6051, !5252}
!6567 = !DILocation(line: 251, column: 53, scope: !6544)
!6568 = !DILocation(line: 253, column: 2, scope: !6537)
!6569 = !DILocation(line: 256, column: 1, scope: !6537)
!6570 = !DILocation(line: 255, column: 2, scope: !6537)
!6571 = !DISubprogram(name: "seq_printf", scope: !1615, file: !1615, line: 119, type: !6572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6572 = !DISubroutineType(types: !6573)
!6573 = !{null, !1613, !309, null}
!6574 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !5303, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6575)
!6575 = !{!6576}
!6576 = !DILocalVariable(name: "dev", arg: 1, scope: !6574, file: !94, line: 858, type: !4250)
!6577 = !DILocation(line: 858, column: 57, scope: !6574)
!6578 = !DILocation(line: 861, column: 6, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6574, file: !94, line: 861, column: 6)
!6580 = !DILocation(line: 861, column: 11, scope: !6579)
!6581 = !DILocation(line: 861, column: 6, scope: !6574)
!6582 = !DILocation(line: 862, column: 10, scope: !6579)
!6583 = !DILocation(line: 862, column: 15, scope: !6579)
!6584 = !DILocation(line: 862, column: 3, scope: !6579)
!6585 = !DILocation(line: 864, column: 23, scope: !6574)
!6586 = !DILocation(line: 864, column: 28, scope: !6574)
!6587 = !DILocation(line: 864, column: 9, scope: !6574)
!6588 = !DILocation(line: 864, column: 2, scope: !6574)
!6589 = !DILocation(line: 865, column: 1, scope: !6574)
!6590 = distinct !DISubprogram(name: "kobject_name", scope: !208, file: !208, line: 87, type: !360, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6591)
!6591 = !{!6592}
!6592 = !DILocalVariable(name: "kobj", arg: 1, scope: !6590, file: !208, line: 87, type: !355)
!6593 = !DILocation(line: 87, column: 62, scope: !6590)
!6594 = !DILocation(line: 89, column: 9, scope: !6590)
!6595 = !DILocation(line: 89, column: 15, scope: !6590)
!6596 = !DILocation(line: 89, column: 2, scope: !6590)
!6597 = !DISubprogram(name: "sysfs_create_link", scope: !324, file: !324, line: 293, type: !6598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6598 = !DISubroutineType(types: !6599)
!6599 = !{!109, !332, !332, !309}
!6600 = !DISubprogram(name: "sysfs_remove_link", scope: !324, file: !324, line: 298, type: !6601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6601 = !DISubroutineType(types: !6602)
!6602 = !{null, !332, !309}
!6603 = !DISubprogram(name: "_printk", scope: !5264, file: !5264, line: 153, type: !6604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6604 = !DISubroutineType(types: !6605)
!6605 = !{!109, !309, null}
!6606 = !DISubprogram(name: "klist_add_tail", scope: !228, file: !228, line: 43, type: !6607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6607 = !DISubroutineType(types: !6608)
!6608 = !{null, !283, !6609}
!6609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!6610 = !DISubprogram(name: "device_links_driver_bound", scope: !224, file: !224, line: 228, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6611 = !DISubprogram(name: "device_pm_check_callbacks", scope: !4338, file: !4338, line: 120, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6612 = !DISubprogram(name: "kobject_uevent", scope: !208, file: !208, line: 214, type: !6613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6613 = !DISubroutineType(types: !6614)
!6614 = !{!109, !332, !207}
!6615 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6329, file: !6329, line: 66, type: !6330, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6616)
!6616 = !{!6617, !6618}
!6617 = !DILocalVariable(name: "v", arg: 1, scope: !6615, file: !6329, line: 66, type: !6332)
!6618 = !DILocalVariable(name: "size", arg: 2, scope: !6615, file: !6329, line: 66, type: !417)
!6619 = !DILocation(line: 66, column: 73, scope: !6615)
!6620 = !DILocation(line: 66, column: 83, scope: !6615)
!6621 = !DILocation(line: 68, column: 19, scope: !6615)
!6622 = !DILocation(line: 68, column: 22, scope: !6615)
!6623 = !DILocation(line: 68, column: 2, scope: !6615)
!6624 = !DILocation(line: 69, column: 2, scope: !6615)
!6625 = !DILocation(line: 70, column: 1, scope: !6615)
!6626 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6346, file: !6346, line: 442, type: !5557, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6627)
!6627 = !{!6628}
!6628 = !DILocalVariable(name: "v", arg: 1, scope: !6626, file: !6346, line: 442, type: !5559)
!6629 = !DILocation(line: 442, column: 33, scope: !6626)
!6630 = !DILocation(line: 444, column: 26, scope: !6626)
!6631 = !DILocation(line: 444, column: 9, scope: !6626)
!6632 = !DILocation(line: 444, column: 2, scope: !6626)
!6633 = distinct !DISubprogram(name: "kasan_check_read", scope: !6354, file: !6354, line: 40, type: !6355, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6634)
!6634 = !{!6635, !6636}
!6635 = !DILocalVariable(name: "p", arg: 1, scope: !6633, file: !6354, line: 40, type: !6332)
!6636 = !DILocalVariable(name: "size", arg: 2, scope: !6633, file: !6354, line: 40, type: !7)
!6637 = !DILocation(line: 40, column: 58, scope: !6633)
!6638 = !DILocation(line: 40, column: 74, scope: !6633)
!6639 = !DILocation(line: 42, column: 2, scope: !6633)
!6640 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6376, file: !6376, line: 17, type: !5557, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6641)
!6641 = !{!6642}
!6642 = !DILocalVariable(name: "v", arg: 1, scope: !6640, file: !6376, line: 17, type: !5559)
!6643 = !DILocation(line: 17, column: 61, scope: !6640)
!6644 = !DILocation(line: 23, column: 9, scope: !6640)
!6645 = !DILocation(line: 23, column: 2, scope: !6640)
!6646 = !DISubprogram(name: "strlen", scope: !6647, file: !6647, line: 128, type: !6648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6647 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!420, !309}
!6650 = !DISubprogram(name: "strscpy", scope: !6647, file: !6647, line: 72, type: !6651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6651 = !DISubroutineType(types: !6652)
!6652 = !{!403, !372, !309, !417}
!6653 = !DISubprogram(name: "parse_option_str", scope: !4953, file: !4953, line: 210, type: !6654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6654 = !DISubroutineType(types: !6655)
!6655 = !{!435, !309, !309}
!6656 = distinct !DISubprogram(name: "device_lock", scope: !94, file: !94, line: 990, type: !4259, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6657)
!6657 = !{!6658}
!6658 = !DILocalVariable(name: "dev", arg: 1, scope: !6656, file: !94, line: 990, type: !4232)
!6659 = !DILocation(line: 990, column: 47, scope: !6656)
!6660 = !DILocation(line: 992, column: 14, scope: !6656)
!6661 = !DILocation(line: 992, column: 19, scope: !6656)
!6662 = !DILocation(line: 992, column: 2, scope: !6656)
!6663 = !DILocation(line: 993, column: 1, scope: !6656)
!6664 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !6665, file: !6665, line: 425, type: !4268, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6666)
!6665 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!6666 = !{!6667}
!6667 = !DILocalVariable(name: "dev", arg: 1, scope: !6664, file: !6665, line: 425, type: !4232)
!6668 = !DILocation(line: 425, column: 54, scope: !6664)
!6669 = !DILocation(line: 427, column: 29, scope: !6664)
!6670 = !DILocation(line: 427, column: 9, scope: !6664)
!6671 = !DILocation(line: 427, column: 2, scope: !6664)
!6672 = !DISubprogram(name: "bus_for_each_drv", scope: !171, file: !171, line: 233, type: !6673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6673 = !DISubroutineType(types: !6674)
!6674 = !{!109, !313, !305, !221, !6675}
!6675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6676, size: 64)
!6676 = !DISubroutineType(types: !6677)
!6677 = !{!109, !305, !221}
!6678 = distinct !DISubprogram(name: "__device_attach_driver", scope: !3, file: !3, line: 921, type: !6676, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6679 = !{!6680, !6681, !6682, !6684, !6685, !6686}
!6680 = !DILocalVariable(name: "drv", arg: 1, scope: !6678, file: !3, line: 921, type: !305)
!6681 = !DILocalVariable(name: "_data", arg: 2, scope: !6678, file: !3, line: 921, type: !221)
!6682 = !DILocalVariable(name: "data", scope: !6678, file: !3, line: 923, type: !6683)
!6683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5627, size: 64)
!6684 = !DILocalVariable(name: "dev", scope: !6678, file: !3, line: 924, type: !4232)
!6685 = !DILocalVariable(name: "async_allowed", scope: !6678, file: !3, line: 925, type: !435)
!6686 = !DILocalVariable(name: "ret", scope: !6678, file: !3, line: 926, type: !109)
!6687 = !DILocation(line: 921, column: 57, scope: !6678)
!6688 = !DILocation(line: 921, column: 68, scope: !6678)
!6689 = !DILocation(line: 923, column: 2, scope: !6678)
!6690 = !DILocation(line: 923, column: 29, scope: !6678)
!6691 = !DILocation(line: 923, column: 36, scope: !6678)
!6692 = !DILocation(line: 924, column: 2, scope: !6678)
!6693 = !DILocation(line: 924, column: 17, scope: !6678)
!6694 = !DILocation(line: 924, column: 23, scope: !6678)
!6695 = !DILocation(line: 924, column: 29, scope: !6678)
!6696 = !DILocation(line: 925, column: 2, scope: !6678)
!6697 = !DILocation(line: 925, column: 7, scope: !6678)
!6698 = !DILocation(line: 926, column: 2, scope: !6678)
!6699 = !DILocation(line: 926, column: 6, scope: !6678)
!6700 = !DILocation(line: 928, column: 28, scope: !6678)
!6701 = !DILocation(line: 928, column: 33, scope: !6678)
!6702 = !DILocation(line: 928, column: 8, scope: !6678)
!6703 = !DILocation(line: 928, column: 6, scope: !6678)
!6704 = !DILocation(line: 929, column: 6, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 929, column: 6)
!6706 = !DILocation(line: 929, column: 10, scope: !6705)
!6707 = !DILocation(line: 929, column: 6, scope: !6678)
!6708 = !DILocation(line: 931, column: 3, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6705, file: !3, line: 929, column: 16)
!6710 = !DILocation(line: 932, column: 13, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6705, file: !3, line: 932, column: 13)
!6712 = !DILocation(line: 932, column: 17, scope: !6711)
!6713 = !DILocation(line: 932, column: 13, scope: !6705)
!6714 = !DILocation(line: 934, column: 3, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6711, file: !3, line: 932, column: 35)
!6716 = !DILocation(line: 934, column: 8, scope: !6715)
!6717 = !DILocation(line: 934, column: 18, scope: !6715)
!6718 = !DILocation(line: 935, column: 29, scope: !6715)
!6719 = !DILocation(line: 935, column: 3, scope: !6715)
!6720 = !DILocation(line: 940, column: 10, scope: !6715)
!6721 = !DILocation(line: 940, column: 3, scope: !6715)
!6722 = !DILocation(line: 941, column: 13, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6711, file: !3, line: 941, column: 13)
!6724 = !DILocation(line: 941, column: 17, scope: !6723)
!6725 = !DILocation(line: 941, column: 13, scope: !6711)
!6726 = !DILocation(line: 943, column: 10, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 941, column: 22)
!6728 = !DILocation(line: 943, column: 3, scope: !6727)
!6729 = !DILocation(line: 946, column: 46, scope: !6678)
!6730 = !DILocation(line: 946, column: 18, scope: !6678)
!6731 = !DILocation(line: 946, column: 16, scope: !6678)
!6732 = !DILocation(line: 948, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 948, column: 6)
!6734 = !DILocation(line: 948, column: 6, scope: !6678)
!6735 = !DILocation(line: 949, column: 3, scope: !6733)
!6736 = !DILocation(line: 949, column: 9, scope: !6733)
!6737 = !DILocation(line: 949, column: 20, scope: !6733)
!6738 = !DILocation(line: 951, column: 6, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 951, column: 6)
!6740 = !DILocation(line: 951, column: 12, scope: !6739)
!6741 = !DILocation(line: 951, column: 24, scope: !6739)
!6742 = !DILocation(line: 951, column: 27, scope: !6739)
!6743 = !DILocation(line: 951, column: 44, scope: !6739)
!6744 = !DILocation(line: 951, column: 50, scope: !6739)
!6745 = !DILocation(line: 951, column: 41, scope: !6739)
!6746 = !DILocation(line: 951, column: 6, scope: !6678)
!6747 = !DILocation(line: 952, column: 3, scope: !6739)
!6748 = !DILocation(line: 958, column: 28, scope: !6678)
!6749 = !DILocation(line: 958, column: 33, scope: !6678)
!6750 = !DILocation(line: 958, column: 8, scope: !6678)
!6751 = !DILocation(line: 958, column: 6, scope: !6678)
!6752 = !DILocation(line: 959, column: 6, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6678, file: !3, line: 959, column: 6)
!6754 = !DILocation(line: 959, column: 10, scope: !6753)
!6755 = !DILocation(line: 959, column: 6, scope: !6678)
!6756 = !DILocation(line: 960, column: 10, scope: !6753)
!6757 = !DILocation(line: 960, column: 3, scope: !6753)
!6758 = !DILocation(line: 961, column: 9, scope: !6678)
!6759 = !DILocation(line: 961, column: 13, scope: !6678)
!6760 = !DILocation(line: 961, column: 2, scope: !6678)
!6761 = !DILocation(line: 962, column: 1, scope: !6678)
!6762 = distinct !DISubprogram(name: "pm_request_idle", scope: !6665, file: !6665, line: 373, type: !4268, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6763)
!6763 = !{!6764}
!6764 = !DILocalVariable(name: "dev", arg: 1, scope: !6762, file: !6665, line: 373, type: !4232)
!6765 = !DILocation(line: 373, column: 50, scope: !6762)
!6766 = !DILocation(line: 375, column: 27, scope: !6762)
!6767 = !DILocation(line: 375, column: 9, scope: !6762)
!6768 = !DILocation(line: 375, column: 2, scope: !6762)
!6769 = distinct !DISubprogram(name: "pm_runtime_put", scope: !6665, file: !6665, line: 458, type: !4268, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6770)
!6770 = !{!6771}
!6771 = !DILocalVariable(name: "dev", arg: 1, scope: !6769, file: !6665, line: 458, type: !4232)
!6772 = !DILocation(line: 458, column: 49, scope: !6769)
!6773 = !DILocation(line: 460, column: 27, scope: !6769)
!6774 = !DILocation(line: 460, column: 9, scope: !6769)
!6775 = !DILocation(line: 460, column: 2, scope: !6769)
!6776 = distinct !DISubprogram(name: "device_unlock", scope: !94, file: !94, line: 1005, type: !4259, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6777)
!6777 = !{!6778}
!6778 = !DILocalVariable(name: "dev", arg: 1, scope: !6776, file: !94, line: 1005, type: !4232)
!6779 = !DILocation(line: 1005, column: 49, scope: !6776)
!6780 = !DILocation(line: 1007, column: 16, scope: !6776)
!6781 = !DILocation(line: 1007, column: 21, scope: !6776)
!6782 = !DILocation(line: 1007, column: 2, scope: !6776)
!6783 = !DILocation(line: 1008, column: 1, scope: !6776)
!6784 = distinct !DISubprogram(name: "async_schedule_dev", scope: !5588, file: !5588, line: 88, type: !6785, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6792)
!6785 = !DISubroutineType(types: !6786)
!6786 = !{!6787, !6788, !4232}
!6787 = !DIDerivedType(tag: DW_TAG_typedef, name: "async_cookie_t", file: !5588, line: 16, baseType: !676)
!6788 = !DIDerivedType(tag: DW_TAG_typedef, name: "async_func_t", file: !5588, line: 17, baseType: !6789)
!6789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6790, size: 64)
!6790 = !DISubroutineType(types: !6791)
!6791 = !{null, !221, !6787}
!6792 = !{!6793, !6794}
!6793 = !DILocalVariable(name: "func", arg: 1, scope: !6784, file: !5588, line: 88, type: !6788)
!6794 = !DILocalVariable(name: "dev", arg: 2, scope: !6784, file: !5588, line: 88, type: !4232)
!6795 = !DILocation(line: 88, column: 33, scope: !6784)
!6796 = !DILocation(line: 88, column: 54, scope: !6784)
!6797 = !DILocation(line: 90, column: 29, scope: !6784)
!6798 = !DILocation(line: 90, column: 35, scope: !6784)
!6799 = !DILocation(line: 90, column: 52, scope: !6784)
!6800 = !DILocation(line: 90, column: 40, scope: !6784)
!6801 = !DILocation(line: 90, column: 9, scope: !6784)
!6802 = !DILocation(line: 90, column: 2, scope: !6784)
!6803 = distinct !DISubprogram(name: "__device_attach_async_helper", scope: !3, file: !3, line: 964, type: !6790, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6804)
!6804 = !{!6805, !6806, !6807, !6808, !6809}
!6805 = !DILocalVariable(name: "_dev", arg: 1, scope: !6803, file: !3, line: 964, type: !221)
!6806 = !DILocalVariable(name: "cookie", arg: 2, scope: !6803, file: !3, line: 964, type: !6787)
!6807 = !DILocalVariable(name: "dev", scope: !6803, file: !3, line: 966, type: !4232)
!6808 = !DILocalVariable(name: "data", scope: !6803, file: !3, line: 967, type: !5627)
!6809 = !DILabel(scope: !6803, name: "out_unlock", file: !3, line: 994)
!6810 = !DILocation(line: 964, column: 48, scope: !6803)
!6811 = !DILocation(line: 964, column: 69, scope: !6803)
!6812 = !DILocation(line: 966, column: 2, scope: !6803)
!6813 = !DILocation(line: 966, column: 17, scope: !6803)
!6814 = !DILocation(line: 966, column: 23, scope: !6803)
!6815 = !DILocation(line: 967, column: 2, scope: !6803)
!6816 = !DILocation(line: 967, column: 28, scope: !6803)
!6817 = !DILocation(line: 967, column: 35, scope: !6803)
!6818 = !DILocation(line: 968, column: 11, scope: !6803)
!6819 = !DILocation(line: 973, column: 14, scope: !6803)
!6820 = !DILocation(line: 973, column: 2, scope: !6803)
!6821 = !DILocation(line: 981, column: 6, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 981, column: 6)
!6823 = !DILocation(line: 981, column: 11, scope: !6822)
!6824 = !DILocation(line: 981, column: 14, scope: !6822)
!6825 = !DILocation(line: 981, column: 19, scope: !6822)
!6826 = !DILocation(line: 981, column: 22, scope: !6822)
!6827 = !DILocation(line: 981, column: 27, scope: !6822)
!6828 = !DILocation(line: 981, column: 6, scope: !6803)
!6829 = !DILocation(line: 982, column: 3, scope: !6822)
!6830 = !DILocation(line: 984, column: 6, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 984, column: 6)
!6832 = !DILocation(line: 984, column: 11, scope: !6831)
!6833 = !DILocation(line: 984, column: 6, scope: !6803)
!6834 = !DILocation(line: 985, column: 23, scope: !6831)
!6835 = !DILocation(line: 985, column: 28, scope: !6831)
!6836 = !DILocation(line: 985, column: 3, scope: !6831)
!6837 = !DILocation(line: 987, column: 19, scope: !6803)
!6838 = !DILocation(line: 987, column: 24, scope: !6803)
!6839 = !DILocation(line: 987, column: 2, scope: !6803)
!6840 = !DILocation(line: 990, column: 18, scope: !6803)
!6841 = !DILocation(line: 990, column: 2, scope: !6803)
!6842 = !DILocation(line: 992, column: 6, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6803, file: !3, line: 992, column: 6)
!6844 = !DILocation(line: 992, column: 11, scope: !6843)
!6845 = !DILocation(line: 992, column: 6, scope: !6803)
!6846 = !DILocation(line: 993, column: 18, scope: !6843)
!6847 = !DILocation(line: 993, column: 23, scope: !6843)
!6848 = !DILocation(line: 993, column: 3, scope: !6843)
!6849 = !DILocation(line: 994, column: 1, scope: !6803)
!6850 = !DILocation(line: 995, column: 16, scope: !6803)
!6851 = !DILocation(line: 995, column: 2, scope: !6803)
!6852 = !DILocation(line: 997, column: 13, scope: !6803)
!6853 = !DILocation(line: 997, column: 2, scope: !6803)
!6854 = !DILocation(line: 998, column: 1, scope: !6803)
!6855 = !DISubprogram(name: "__pm_runtime_resume", scope: !6665, file: !6665, line: 74, type: !6856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!109, !4232, !109}
!6858 = distinct !DISubprogram(name: "driver_match_device", scope: !224, file: !224, line: 164, type: !5732, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6859)
!6859 = !{!6860, !6861}
!6860 = !DILocalVariable(name: "drv", arg: 1, scope: !6858, file: !224, line: 164, type: !305)
!6861 = !DILocalVariable(name: "dev", arg: 2, scope: !6858, file: !224, line: 165, type: !4232)
!6862 = !DILocation(line: 164, column: 61, scope: !6858)
!6863 = !DILocation(line: 165, column: 26, scope: !6858)
!6864 = !DILocation(line: 167, column: 9, scope: !6858)
!6865 = !DILocation(line: 167, column: 14, scope: !6858)
!6866 = !DILocation(line: 167, column: 19, scope: !6858)
!6867 = !DILocation(line: 167, column: 27, scope: !6858)
!6868 = !DILocation(line: 167, column: 32, scope: !6858)
!6869 = !DILocation(line: 167, column: 37, scope: !6858)
!6870 = !DILocation(line: 167, column: 43, scope: !6858)
!6871 = !DILocation(line: 167, column: 48, scope: !6858)
!6872 = !DILocation(line: 167, column: 2, scope: !6858)
!6873 = distinct !DISubprogram(name: "driver_probe_device", scope: !3, file: !3, line: 824, type: !5732, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6874)
!6874 = !{!6875, !6876, !6877, !6878}
!6875 = !DILocalVariable(name: "drv", arg: 1, scope: !6873, file: !3, line: 824, type: !305)
!6876 = !DILocalVariable(name: "dev", arg: 2, scope: !6873, file: !3, line: 824, type: !4232)
!6877 = !DILocalVariable(name: "trigger_count", scope: !6873, file: !3, line: 826, type: !109)
!6878 = !DILocalVariable(name: "ret", scope: !6873, file: !3, line: 827, type: !109)
!6879 = !DILocation(line: 824, column: 54, scope: !6873)
!6880 = !DILocation(line: 824, column: 74, scope: !6873)
!6881 = !DILocation(line: 826, column: 2, scope: !6873)
!6882 = !DILocation(line: 826, column: 6, scope: !6873)
!6883 = !DILocation(line: 826, column: 22, scope: !6873)
!6884 = !DILocation(line: 827, column: 2, scope: !6873)
!6885 = !DILocation(line: 827, column: 6, scope: !6873)
!6886 = !DILocation(line: 829, column: 2, scope: !6873)
!6887 = !DILocation(line: 830, column: 30, scope: !6873)
!6888 = !DILocation(line: 830, column: 35, scope: !6873)
!6889 = !DILocation(line: 830, column: 8, scope: !6873)
!6890 = !DILocation(line: 830, column: 6, scope: !6873)
!6891 = !DILocation(line: 831, column: 6, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6873, file: !3, line: 831, column: 6)
!6893 = !DILocation(line: 831, column: 10, scope: !6892)
!6894 = !DILocation(line: 831, column: 27, scope: !6892)
!6895 = !DILocation(line: 831, column: 30, scope: !6892)
!6896 = !DILocation(line: 831, column: 34, scope: !6892)
!6897 = !DILocation(line: 831, column: 6, scope: !6873)
!6898 = !DILocation(line: 832, column: 29, scope: !6899)
!6899 = distinct !DILexicalBlock(scope: !6892, file: !3, line: 831, column: 51)
!6900 = !DILocation(line: 832, column: 3, scope: !6899)
!6901 = !DILocation(line: 837, column: 7, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6899, file: !3, line: 837, column: 7)
!6903 = !DILocation(line: 837, column: 24, scope: !6902)
!6904 = !DILocation(line: 837, column: 21, scope: !6902)
!6905 = !DILocation(line: 837, column: 61, scope: !6902)
!6906 = !DILocation(line: 838, column: 8, scope: !6902)
!6907 = !DILocation(line: 837, column: 7, scope: !6899)
!6908 = !DILocation(line: 839, column: 4, scope: !6902)
!6909 = !DILocation(line: 840, column: 2, scope: !6899)
!6910 = !DILocation(line: 841, column: 2, scope: !6873)
!6911 = !DILocation(line: 842, column: 2, scope: !6873)
!6912 = !DILocation(line: 843, column: 9, scope: !6873)
!6913 = !DILocation(line: 844, column: 1, scope: !6873)
!6914 = !DILocation(line: 843, column: 2, scope: !6873)
!6915 = distinct !DISubprogram(name: "atomic_dec", scope: !5168, file: !5168, line: 590, type: !5169, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6916)
!6916 = !{!6917}
!6917 = !DILocalVariable(name: "v", arg: 1, scope: !6915, file: !5168, line: 590, type: !5171)
!6918 = !DILocation(line: 590, column: 22, scope: !6915)
!6919 = !DILocation(line: 592, column: 31, scope: !6915)
!6920 = !DILocation(line: 592, column: 2, scope: !6915)
!6921 = !DILocation(line: 593, column: 17, scope: !6915)
!6922 = !DILocation(line: 593, column: 2, scope: !6915)
!6923 = !DILocation(line: 594, column: 1, scope: !6915)
!6924 = !DISubprogram(name: "__wake_up", scope: !634, file: !634, line: 212, type: !6925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6925 = !DISubroutineType(types: !6926)
!6926 = !{!109, !5582, !7, !109, !221}
!6927 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6346, file: !6346, line: 1194, type: !5169, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6928)
!6928 = !{!6929}
!6929 = !DILocalVariable(name: "v", arg: 1, scope: !6927, file: !6346, line: 1194, type: !5171)
!6930 = !DILocation(line: 1194, column: 26, scope: !6927)
!6931 = !DILocation(line: 1197, column: 18, scope: !6927)
!6932 = !DILocation(line: 1197, column: 2, scope: !6927)
!6933 = !DILocation(line: 1201, column: 1, scope: !6927)
!6934 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6376, file: !6376, line: 58, type: !5169, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6935)
!6935 = !{!6936}
!6936 = !DILocalVariable(name: "v", arg: 1, scope: !6934, file: !6376, line: 58, type: !5171)
!6937 = !DILocation(line: 58, column: 55, scope: !6934)
!6938 = !DILocation(line: 61, column: 16, scope: !6934)
!6939 = !DILocation(line: 61, column: 19, scope: !6934)
!6940 = !DILocation(line: 60, column: 2, scope: !6934)
!6941 = !{i64 2149020786, i64 2149020825, i64 2149020846, i64 2149020883, i64 2149020906, i64 2149020776}
!6942 = !DILocation(line: 62, column: 1, scope: !6934)
!6943 = !DISubprogram(name: "__pm_runtime_idle", scope: !6665, file: !6665, line: 72, type: !6856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6944 = !DISubprogram(name: "async_schedule_node", scope: !5588, file: !5588, line: 38, type: !6945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6945 = !DISubroutineType(types: !6946)
!6946 = !{!6787, !6788, !221, !109}
!6947 = distinct !DISubprogram(name: "dev_to_node", scope: !94, file: !94, line: 882, type: !4268, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6948)
!6948 = !{!6949}
!6949 = !DILocalVariable(name: "dev", arg: 1, scope: !6947, file: !94, line: 882, type: !4232)
!6950 = !DILocation(line: 882, column: 46, scope: !6947)
!6951 = !DILocation(line: 884, column: 9, scope: !6947)
!6952 = !DILocation(line: 884, column: 14, scope: !6947)
!6953 = !DILocation(line: 884, column: 2, scope: !6947)
!6954 = distinct !DISubprogram(name: "device_is_registered", scope: !94, file: !94, line: 941, type: !4268, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6955)
!6955 = !{!6956}
!6956 = !DILocalVariable(name: "dev", arg: 1, scope: !6954, file: !94, line: 941, type: !4232)
!6957 = !DILocation(line: 941, column: 55, scope: !6954)
!6958 = !DILocation(line: 943, column: 9, scope: !6954)
!6959 = !DILocation(line: 943, column: 14, scope: !6954)
!6960 = !DILocation(line: 943, column: 19, scope: !6954)
!6961 = !DILocation(line: 943, column: 2, scope: !6954)
!6962 = !DISubprogram(name: "pm_runtime_get_suppliers", scope: !6665, file: !6665, line: 89, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6963 = !DISubprogram(name: "pm_runtime_barrier", scope: !6665, file: !6665, line: 78, type: !4268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6964 = distinct !DISubprogram(name: "really_probe_debug", scope: !3, file: !3, line: 732, type: !4230, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6965)
!6965 = !{!6966, !6967, !6968, !6969, !6970}
!6966 = !DILocalVariable(name: "dev", arg: 1, scope: !6964, file: !3, line: 732, type: !4232)
!6967 = !DILocalVariable(name: "drv", arg: 2, scope: !6964, file: !3, line: 732, type: !305)
!6968 = !DILocalVariable(name: "calltime", scope: !6964, file: !3, line: 734, type: !2071)
!6969 = !DILocalVariable(name: "rettime", scope: !6964, file: !3, line: 734, type: !2071)
!6970 = !DILocalVariable(name: "ret", scope: !6964, file: !3, line: 735, type: !109)
!6971 = !DILocation(line: 732, column: 46, scope: !6964)
!6972 = !DILocation(line: 732, column: 73, scope: !6964)
!6973 = !DILocation(line: 734, column: 2, scope: !6964)
!6974 = !DILocation(line: 734, column: 10, scope: !6964)
!6975 = !DILocation(line: 734, column: 20, scope: !6964)
!6976 = !DILocation(line: 735, column: 2, scope: !6964)
!6977 = !DILocation(line: 735, column: 6, scope: !6964)
!6978 = !DILocation(line: 737, column: 13, scope: !6964)
!6979 = !DILocation(line: 737, column: 11, scope: !6964)
!6980 = !DILocation(line: 738, column: 21, scope: !6964)
!6981 = !DILocation(line: 738, column: 26, scope: !6964)
!6982 = !DILocation(line: 738, column: 8, scope: !6964)
!6983 = !DILocation(line: 738, column: 6, scope: !6964)
!6984 = !DILocation(line: 739, column: 12, scope: !6964)
!6985 = !DILocation(line: 739, column: 10, scope: !6964)
!6986 = !DILocation(line: 745, column: 2, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 745, column: 2)
!6988 = !DILocation(line: 745, column: 2, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 745, column: 2)
!6990 = !DILocation(line: 747, column: 9, scope: !6964)
!6991 = !DILocation(line: 748, column: 1, scope: !6964)
!6992 = !DILocation(line: 747, column: 2, scope: !6964)
!6993 = distinct !DISubprogram(name: "really_probe", scope: !3, file: !3, line: 603, type: !4230, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6994)
!6994 = !{!6995, !6996, !6997, !6998, !6999, !7000, !7001, !7002, !7003, !7004, !7005, !7006}
!6995 = !DILocalVariable(name: "dev", arg: 1, scope: !6993, file: !3, line: 603, type: !4232)
!6996 = !DILocalVariable(name: "drv", arg: 2, scope: !6993, file: !3, line: 603, type: !305)
!6997 = !DILocalVariable(name: "test_remove", scope: !6993, file: !3, line: 605, type: !435)
!6998 = !DILocalVariable(name: "ret", scope: !6993, file: !3, line: 607, type: !109)
!6999 = !DILocalVariable(name: "link_ret", scope: !6993, file: !3, line: 607, type: !109)
!7000 = !DILabel(scope: !6993, name: "re_probe", file: !3, line: 631)
!7001 = !DILabel(scope: !6993, name: "dev_sysfs_state_synced_failed", file: !3, line: 713)
!7002 = !DILabel(scope: !6993, name: "dev_groups_failed", file: !3, line: 714)
!7003 = !DILabel(scope: !6993, name: "probe_failed", file: !3, line: 716)
!7004 = !DILabel(scope: !6993, name: "sysfs_failed", file: !3, line: 718)
!7005 = !DILabel(scope: !6993, name: "pinctrl_bind_failed", file: !3, line: 722)
!7006 = !DILabel(scope: !6993, name: "done", file: !3, line: 725)
!7007 = !DILocation(line: 603, column: 40, scope: !6993)
!7008 = !DILocation(line: 603, column: 67, scope: !6993)
!7009 = !DILocation(line: 605, column: 2, scope: !6993)
!7010 = !DILocation(line: 605, column: 7, scope: !6993)
!7011 = !DILocation(line: 607, column: 2, scope: !6993)
!7012 = !DILocation(line: 607, column: 6, scope: !6993)
!7013 = !DILocation(line: 607, column: 11, scope: !6993)
!7014 = !DILocation(line: 609, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 609, column: 6)
!7016 = !DILocation(line: 609, column: 6, scope: !6993)
!7017 = !DILocation(line: 616, column: 3, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !7015, file: !3, line: 609, column: 24)
!7019 = !DILocation(line: 619, column: 42, scope: !6993)
!7020 = !DILocation(line: 619, column: 13, scope: !6993)
!7021 = !DILocation(line: 619, column: 11, scope: !6993)
!7022 = !DILocation(line: 620, column: 6, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 620, column: 6)
!7024 = !DILocation(line: 620, column: 15, scope: !7023)
!7025 = !DILocation(line: 620, column: 6, scope: !6993)
!7026 = !DILocation(line: 621, column: 10, scope: !7023)
!7027 = !DILocation(line: 621, column: 3, scope: !7023)
!7028 = !DILocation(line: 623, column: 2, scope: !7029)
!7029 = distinct !DILexicalBlock(scope: !7030, file: !3, line: 623, column: 2)
!7030 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 623, column: 2)
!7031 = !DILocation(line: 623, column: 2, scope: !7030)
!7032 = !DILocation(line: 625, column: 19, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 625, column: 6)
!7034 = !DILocation(line: 625, column: 24, scope: !7033)
!7035 = !DILocation(line: 625, column: 7, scope: !7033)
!7036 = !DILocation(line: 625, column: 6, scope: !6993)
!7037 = !DILocation(line: 626, column: 3, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !7039, file: !3, line: 626, column: 3)
!7039 = distinct !DILexicalBlock(scope: !7033, file: !3, line: 625, column: 38)
!7040 = !DILocation(line: 626, column: 3, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !7038, file: !3, line: 626, column: 3)
!7042 = !DILocation(line: 627, column: 7, scope: !7039)
!7043 = !DILocation(line: 628, column: 3, scope: !7039)
!7044 = !DILocation(line: 625, column: 35, scope: !7033)
!7045 = !DILocation(line: 631, column: 1, scope: !6993)
!7046 = !DILocation(line: 632, column: 16, scope: !6993)
!7047 = !DILocation(line: 632, column: 2, scope: !6993)
!7048 = !DILocation(line: 632, column: 7, scope: !6993)
!7049 = !DILocation(line: 632, column: 14, scope: !6993)
!7050 = !DILocation(line: 635, column: 26, scope: !6993)
!7051 = !DILocation(line: 635, column: 8, scope: !6993)
!7052 = !DILocation(line: 635, column: 6, scope: !6993)
!7053 = !DILocation(line: 636, column: 6, scope: !7054)
!7054 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 636, column: 6)
!7055 = !DILocation(line: 636, column: 6, scope: !6993)
!7056 = !DILocation(line: 637, column: 3, scope: !7054)
!7057 = !DILocation(line: 639, column: 6, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 639, column: 6)
!7059 = !DILocation(line: 639, column: 11, scope: !7058)
!7060 = !DILocation(line: 639, column: 16, scope: !7058)
!7061 = !DILocation(line: 639, column: 6, scope: !6993)
!7062 = !DILocation(line: 640, column: 9, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !7058, file: !3, line: 639, column: 31)
!7064 = !DILocation(line: 640, column: 14, scope: !7063)
!7065 = !DILocation(line: 640, column: 19, scope: !7063)
!7066 = !DILocation(line: 640, column: 33, scope: !7063)
!7067 = !DILocation(line: 640, column: 7, scope: !7063)
!7068 = !DILocation(line: 641, column: 7, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 641, column: 7)
!7070 = !DILocation(line: 641, column: 7, scope: !7063)
!7071 = !DILocation(line: 642, column: 4, scope: !7069)
!7072 = !DILocation(line: 643, column: 2, scope: !7063)
!7073 = !DILocation(line: 645, column: 25, scope: !6993)
!7074 = !DILocation(line: 645, column: 8, scope: !6993)
!7075 = !DILocation(line: 645, column: 6, scope: !6993)
!7076 = !DILocation(line: 646, column: 6, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 646, column: 6)
!7078 = !DILocation(line: 646, column: 6, scope: !6993)
!7079 = !DILocation(line: 647, column: 3, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !7081, file: !3, line: 647, column: 3)
!7081 = distinct !DILexicalBlock(scope: !7077, file: !3, line: 646, column: 11)
!7082 = !DILocation(line: 647, column: 3, scope: !7083)
!7083 = distinct !DILexicalBlock(scope: !7080, file: !3, line: 647, column: 3)
!7084 = !DILocation(line: 649, column: 3, scope: !7081)
!7085 = !DILocation(line: 652, column: 6, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 652, column: 6)
!7087 = !DILocation(line: 652, column: 11, scope: !7086)
!7088 = !DILocation(line: 652, column: 21, scope: !7086)
!7089 = !DILocation(line: 652, column: 24, scope: !7086)
!7090 = !DILocation(line: 652, column: 29, scope: !7086)
!7091 = !DILocation(line: 652, column: 40, scope: !7086)
!7092 = !DILocation(line: 652, column: 6, scope: !6993)
!7093 = !DILocation(line: 653, column: 9, scope: !7094)
!7094 = distinct !DILexicalBlock(scope: !7086, file: !3, line: 652, column: 50)
!7095 = !DILocation(line: 653, column: 14, scope: !7094)
!7096 = !DILocation(line: 653, column: 25, scope: !7094)
!7097 = !DILocation(line: 653, column: 34, scope: !7094)
!7098 = !DILocation(line: 653, column: 7, scope: !7094)
!7099 = !DILocation(line: 654, column: 7, scope: !7100)
!7100 = distinct !DILexicalBlock(scope: !7094, file: !3, line: 654, column: 7)
!7101 = !DILocation(line: 654, column: 7, scope: !7094)
!7102 = !DILocation(line: 655, column: 4, scope: !7100)
!7103 = !DILocation(line: 656, column: 2, scope: !7094)
!7104 = !DILocation(line: 658, column: 26, scope: !6993)
!7105 = !DILocation(line: 658, column: 31, scope: !6993)
!7106 = !DILocation(line: 658, column: 8, scope: !6993)
!7107 = !DILocation(line: 658, column: 6, scope: !6993)
!7108 = !DILocation(line: 659, column: 6, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 659, column: 6)
!7110 = !DILocation(line: 659, column: 6, scope: !6993)
!7111 = !DILocation(line: 666, column: 7, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7113, file: !3, line: 666, column: 7)
!7113 = distinct !DILexicalBlock(scope: !7109, file: !3, line: 659, column: 11)
!7114 = !DILocation(line: 666, column: 16, scope: !7112)
!7115 = !DILocation(line: 666, column: 7, scope: !7113)
!7116 = !DILocation(line: 667, column: 8, scope: !7112)
!7117 = !DILocation(line: 667, column: 4, scope: !7112)
!7118 = !DILocation(line: 673, column: 10, scope: !7113)
!7119 = !DILocation(line: 673, column: 9, scope: !7113)
!7120 = !DILocation(line: 673, column: 7, scope: !7113)
!7121 = !DILocation(line: 674, column: 3, scope: !7113)
!7122 = !DILocation(line: 677, column: 26, scope: !6993)
!7123 = !DILocation(line: 677, column: 31, scope: !6993)
!7124 = !DILocation(line: 677, column: 36, scope: !6993)
!7125 = !DILocation(line: 677, column: 8, scope: !6993)
!7126 = !DILocation(line: 677, column: 6, scope: !6993)
!7127 = !DILocation(line: 678, column: 6, scope: !7128)
!7128 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 678, column: 6)
!7129 = !DILocation(line: 678, column: 6, scope: !6993)
!7130 = !DILocation(line: 679, column: 3, scope: !7131)
!7131 = distinct !DILexicalBlock(scope: !7132, file: !3, line: 679, column: 3)
!7132 = distinct !DILexicalBlock(scope: !7128, file: !3, line: 678, column: 11)
!7133 = !DILocation(line: 679, column: 3, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7131, file: !3, line: 679, column: 3)
!7135 = !DILocation(line: 680, column: 3, scope: !7132)
!7136 = !DILocation(line: 683, column: 25, scope: !7137)
!7137 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 683, column: 6)
!7138 = !DILocation(line: 683, column: 6, scope: !7137)
!7139 = !DILocation(line: 683, column: 6, scope: !6993)
!7140 = !DILocation(line: 684, column: 28, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7137, file: !3, line: 683, column: 31)
!7142 = !DILocation(line: 684, column: 9, scope: !7141)
!7143 = !DILocation(line: 684, column: 7, scope: !7141)
!7144 = !DILocation(line: 685, column: 7, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7141, file: !3, line: 685, column: 7)
!7146 = !DILocation(line: 685, column: 7, scope: !7141)
!7147 = !DILocation(line: 686, column: 4, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7149, file: !3, line: 686, column: 4)
!7149 = distinct !DILexicalBlock(scope: !7145, file: !3, line: 685, column: 12)
!7150 = !DILocation(line: 686, column: 4, scope: !7151)
!7151 = distinct !DILexicalBlock(scope: !7148, file: !3, line: 686, column: 4)
!7152 = !DILocation(line: 687, column: 4, scope: !7149)
!7153 = !DILocation(line: 689, column: 2, scope: !7141)
!7154 = !DILocation(line: 691, column: 6, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 691, column: 6)
!7156 = !DILocation(line: 691, column: 6, scope: !6993)
!7157 = !DILocation(line: 692, column: 15, scope: !7158)
!7158 = distinct !DILexicalBlock(scope: !7155, file: !3, line: 691, column: 19)
!7159 = !DILocation(line: 694, column: 17, scope: !7158)
!7160 = !DILocation(line: 694, column: 3, scope: !7158)
!7161 = !DILocation(line: 695, column: 23, scope: !7158)
!7162 = !DILocation(line: 695, column: 3, scope: !7158)
!7163 = !DILocation(line: 696, column: 7, scope: !7164)
!7164 = distinct !DILexicalBlock(scope: !7158, file: !3, line: 696, column: 7)
!7165 = !DILocation(line: 696, column: 12, scope: !7164)
!7166 = !DILocation(line: 696, column: 16, scope: !7164)
!7167 = !DILocation(line: 696, column: 19, scope: !7164)
!7168 = !DILocation(line: 696, column: 24, scope: !7164)
!7169 = !DILocation(line: 696, column: 29, scope: !7164)
!7170 = !DILocation(line: 696, column: 7, scope: !7158)
!7171 = !DILocation(line: 697, column: 4, scope: !7164)
!7172 = !DILocation(line: 697, column: 9, scope: !7164)
!7173 = !DILocation(line: 697, column: 14, scope: !7164)
!7174 = !DILocation(line: 697, column: 26, scope: !7164)
!7175 = !DILocation(line: 698, column: 25, scope: !7158)
!7176 = !DILocation(line: 698, column: 3, scope: !7158)
!7177 = !DILocation(line: 700, column: 3, scope: !7158)
!7178 = !DILocation(line: 703, column: 20, scope: !6993)
!7179 = !DILocation(line: 703, column: 2, scope: !6993)
!7180 = !DILocation(line: 705, column: 6, scope: !7181)
!7181 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 705, column: 6)
!7182 = !DILocation(line: 705, column: 11, scope: !7181)
!7183 = !DILocation(line: 705, column: 21, scope: !7181)
!7184 = !DILocation(line: 705, column: 24, scope: !7181)
!7185 = !DILocation(line: 705, column: 29, scope: !7181)
!7186 = !DILocation(line: 705, column: 40, scope: !7181)
!7187 = !DILocation(line: 705, column: 6, scope: !6993)
!7188 = !DILocation(line: 706, column: 3, scope: !7181)
!7189 = !DILocation(line: 706, column: 8, scope: !7181)
!7190 = !DILocation(line: 706, column: 19, scope: !7181)
!7191 = !DILocation(line: 706, column: 24, scope: !7181)
!7192 = !DILocation(line: 708, column: 15, scope: !6993)
!7193 = !DILocation(line: 708, column: 2, scope: !6993)
!7194 = !DILocation(line: 709, column: 2, scope: !7195)
!7195 = distinct !DILexicalBlock(scope: !7196, file: !3, line: 709, column: 2)
!7196 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 709, column: 2)
!7197 = !DILocation(line: 709, column: 2, scope: !7196)
!7198 = !DILocation(line: 711, column: 2, scope: !6993)
!7199 = !DILocation(line: 713, column: 1, scope: !6993)
!7200 = !DILocation(line: 714, column: 1, scope: !6993)
!7201 = !DILocation(line: 715, column: 16, scope: !6993)
!7202 = !DILocation(line: 715, column: 2, scope: !6993)
!7203 = !DILocation(line: 716, column: 1, scope: !6993)
!7204 = !DILocation(line: 717, column: 22, scope: !6993)
!7205 = !DILocation(line: 717, column: 2, scope: !6993)
!7206 = !DILocation(line: 718, column: 1, scope: !6993)
!7207 = !DILocation(line: 719, column: 13, scope: !6993)
!7208 = !DILocation(line: 719, column: 2, scope: !6993)
!7209 = !DILocation(line: 720, column: 6, scope: !7210)
!7210 = distinct !DILexicalBlock(scope: !6993, file: !3, line: 720, column: 6)
!7211 = !DILocation(line: 720, column: 11, scope: !7210)
!7212 = !DILocation(line: 720, column: 15, scope: !7210)
!7213 = !DILocation(line: 720, column: 18, scope: !7210)
!7214 = !DILocation(line: 720, column: 23, scope: !7210)
!7215 = !DILocation(line: 720, column: 28, scope: !7210)
!7216 = !DILocation(line: 720, column: 6, scope: !6993)
!7217 = !DILocation(line: 721, column: 3, scope: !7210)
!7218 = !DILocation(line: 721, column: 8, scope: !7210)
!7219 = !DILocation(line: 721, column: 13, scope: !7210)
!7220 = !DILocation(line: 721, column: 25, scope: !7210)
!7221 = !DILocation(line: 722, column: 1, scope: !6993)
!7222 = !DILocation(line: 723, column: 25, scope: !6993)
!7223 = !DILocation(line: 723, column: 2, scope: !6993)
!7224 = !DILocation(line: 724, column: 24, scope: !6993)
!7225 = !DILocation(line: 724, column: 2, scope: !6993)
!7226 = !DILocation(line: 725, column: 1, scope: !6993)
!7227 = !DILocation(line: 726, column: 9, scope: !6993)
!7228 = !DILocation(line: 726, column: 2, scope: !6993)
!7229 = !DILocation(line: 727, column: 1, scope: !6993)
!7230 = !DISubprogram(name: "pm_runtime_put_suppliers", scope: !6665, file: !6665, line: 90, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7231 = !DISubprogram(name: "ktime_get", scope: !7232, file: !7232, line: 67, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7232 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!7233 = distinct !DISubprogram(name: "ktime_us_delta", scope: !2072, file: !2072, line: 169, type: !7234, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7237)
!7234 = !DISubroutineType(types: !7235)
!7235 = !{!567, !7236, !7236}
!7236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!7237 = !{!7238, !7239}
!7238 = !DILocalVariable(name: "later", arg: 1, scope: !7233, file: !2072, line: 169, type: !7236)
!7239 = !DILocalVariable(name: "earlier", arg: 2, scope: !7233, file: !2072, line: 169, type: !7236)
!7240 = !DILocation(line: 169, column: 48, scope: !7233)
!7241 = !DILocation(line: 169, column: 69, scope: !7233)
!7242 = !DILocation(line: 171, column: 27, scope: !7233)
!7243 = !DILocation(line: 171, column: 15, scope: !7233)
!7244 = !DILocation(line: 171, column: 8, scope: !7233)
!7245 = distinct !DISubprogram(name: "ktime_to_us", scope: !2072, file: !2072, line: 159, type: !7246, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7248)
!7246 = !DISubroutineType(types: !7247)
!7247 = !{!567, !7236}
!7248 = !{!7249}
!7249 = !DILocalVariable(name: "kt", arg: 1, scope: !7245, file: !2072, line: 159, type: !7236)
!7250 = !DILocation(line: 159, column: 45, scope: !7245)
!7251 = !DILocation(line: 161, column: 21, scope: !7245)
!7252 = !DILocation(line: 161, column: 9, scope: !7245)
!7253 = !DILocation(line: 161, column: 2, scope: !7245)
!7254 = distinct !DISubprogram(name: "ktime_divns", scope: !2072, file: !2072, line: 148, type: !7255, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7257)
!7255 = !DISubroutineType(types: !7256)
!7256 = !{!567, !7236, !567}
!7257 = !{!7258, !7259, !7260, !7262}
!7258 = !DILocalVariable(name: "kt", arg: 1, scope: !7254, file: !2072, line: 148, type: !7236)
!7259 = !DILocalVariable(name: "div", arg: 2, scope: !7254, file: !2072, line: 148, type: !567)
!7260 = !DILocalVariable(name: "__ret_warn_on", scope: !7261, file: !2072, line: 154, type: !109)
!7261 = distinct !DILexicalBlock(scope: !7254, file: !2072, line: 154, column: 2)
!7262 = !DILocalVariable(name: "__flags", scope: !7263, file: !2072, line: 154, type: !109)
!7263 = distinct !DILexicalBlock(scope: !7264, file: !2072, line: 154, column: 2)
!7264 = distinct !DILexicalBlock(scope: !7261, file: !2072, line: 154, column: 2)
!7265 = !DILocation(line: 148, column: 45, scope: !7254)
!7266 = !DILocation(line: 148, column: 53, scope: !7254)
!7267 = !DILocation(line: 154, column: 2, scope: !7261)
!7268 = !DILocation(line: 154, column: 2, scope: !7264)
!7269 = !DILocation(line: 154, column: 2, scope: !7263)
!7270 = !DILocation(line: 154, column: 2, scope: !7271)
!7271 = distinct !DILexicalBlock(scope: !7263, file: !2072, line: 154, column: 2)
!7272 = !DILocation(line: 154, column: 2, scope: !7273)
!7273 = distinct !DILexicalBlock(scope: !7263, file: !2072, line: 154, column: 2)
!7274 = !{i64 2151060635, i64 2151060664, i64 2151060710, i64 2151060768, i64 2151060822, i64 2151060876, i64 2151060931, i64 2151060962, i64 2151061270, i64 2151061276, i64 2151061323, i64 2151061346, i64 2151061372}
!7275 = !DILocation(line: 154, column: 2, scope: !7276)
!7276 = distinct !DILexicalBlock(scope: !7263, file: !2072, line: 154, column: 2)
!7277 = !DILocation(line: 154, column: 2, scope: !7254)
!7278 = !DILocation(line: 155, column: 9, scope: !7254)
!7279 = !DILocation(line: 155, column: 14, scope: !7254)
!7280 = !DILocation(line: 155, column: 12, scope: !7254)
!7281 = !DILocation(line: 155, column: 2, scope: !7254)
!7282 = !DISubprogram(name: "device_links_check_suppliers", scope: !224, file: !224, line: 226, type: !4268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7283 = !DISubprogram(name: "_dev_crit", scope: !5343, file: !5343, line: 48, type: !5344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7284 = distinct !DISubprogram(name: "pinctrl_bind_pins", scope: !7285, file: !7285, line: 61, type: !4268, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7286)
!7285 = !DIFile(filename: "./include/linux/pinctrl/devinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2bef704fcdcbd0588fcc612dcd1589ce")
!7286 = !{!7287}
!7287 = !DILocalVariable(name: "dev", arg: 1, scope: !7284, file: !7285, line: 61, type: !4232)
!7288 = !DILocation(line: 61, column: 52, scope: !7284)
!7289 = !DILocation(line: 63, column: 2, scope: !7284)
!7290 = distinct !DISubprogram(name: "call_driver_probe", scope: !3, file: !3, line: 572, type: !4230, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7291)
!7291 = !{!7292, !7293, !7294}
!7292 = !DILocalVariable(name: "dev", arg: 1, scope: !7290, file: !3, line: 572, type: !4232)
!7293 = !DILocalVariable(name: "drv", arg: 2, scope: !7290, file: !3, line: 572, type: !305)
!7294 = !DILocalVariable(name: "ret", scope: !7290, file: !3, line: 574, type: !109)
!7295 = !DILocation(line: 572, column: 45, scope: !7290)
!7296 = !DILocation(line: 572, column: 72, scope: !7290)
!7297 = !DILocation(line: 574, column: 2, scope: !7290)
!7298 = !DILocation(line: 574, column: 6, scope: !7290)
!7299 = !DILocation(line: 576, column: 6, scope: !7300)
!7300 = distinct !DILexicalBlock(scope: !7290, file: !3, line: 576, column: 6)
!7301 = !DILocation(line: 576, column: 11, scope: !7300)
!7302 = !DILocation(line: 576, column: 16, scope: !7300)
!7303 = !DILocation(line: 576, column: 6, scope: !7290)
!7304 = !DILocation(line: 577, column: 9, scope: !7300)
!7305 = !DILocation(line: 577, column: 14, scope: !7300)
!7306 = !DILocation(line: 577, column: 19, scope: !7300)
!7307 = !DILocation(line: 577, column: 25, scope: !7300)
!7308 = !DILocation(line: 577, column: 7, scope: !7300)
!7309 = !DILocation(line: 577, column: 3, scope: !7300)
!7310 = !DILocation(line: 578, column: 11, scope: !7311)
!7311 = distinct !DILexicalBlock(scope: !7300, file: !3, line: 578, column: 11)
!7312 = !DILocation(line: 578, column: 16, scope: !7311)
!7313 = !DILocation(line: 578, column: 11, scope: !7300)
!7314 = !DILocation(line: 579, column: 9, scope: !7311)
!7315 = !DILocation(line: 579, column: 14, scope: !7311)
!7316 = !DILocation(line: 579, column: 20, scope: !7311)
!7317 = !DILocation(line: 579, column: 7, scope: !7311)
!7318 = !DILocation(line: 579, column: 3, scope: !7311)
!7319 = !DILocation(line: 581, column: 10, scope: !7290)
!7320 = !DILocation(line: 581, column: 2, scope: !7290)
!7321 = !DILocation(line: 587, column: 3, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !7290, file: !3, line: 581, column: 15)
!7323 = !DILocation(line: 590, column: 3, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7325, file: !3, line: 590, column: 3)
!7325 = distinct !DILexicalBlock(scope: !7322, file: !3, line: 590, column: 3)
!7326 = !DILocation(line: 590, column: 3, scope: !7325)
!7327 = !DILocation(line: 592, column: 3, scope: !7322)
!7328 = !DILocation(line: 595, column: 3, scope: !7329)
!7329 = distinct !DILexicalBlock(scope: !7322, file: !3, line: 595, column: 3)
!7330 = !DILocation(line: 595, column: 3, scope: !7331)
!7331 = distinct !DILexicalBlock(scope: !7329, file: !3, line: 595, column: 3)
!7332 = !DILocation(line: 597, column: 3, scope: !7322)
!7333 = !DILocation(line: 600, column: 9, scope: !7290)
!7334 = !DILocation(line: 601, column: 1, scope: !7290)
!7335 = !DILocation(line: 600, column: 2, scope: !7290)
!7336 = !DISubprogram(name: "device_add_groups", scope: !94, file: !94, line: 1189, type: !7337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7337 = !DISubroutineType(types: !7338)
!7338 = !{!109, !4232, !320}
!7339 = !DISubprogram(name: "_dev_err", scope: !5343, file: !5343, line: 50, type: !5344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7340 = distinct !DISubprogram(name: "dev_has_sync_state", scope: !94, file: !94, line: 1024, type: !5405, scopeLine: 1025, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7341)
!7341 = !{!7342}
!7342 = !DILocalVariable(name: "dev", arg: 1, scope: !7340, file: !94, line: 1024, type: !4232)
!7343 = !DILocation(line: 1024, column: 54, scope: !7340)
!7344 = !DILocation(line: 1026, column: 7, scope: !7345)
!7345 = distinct !DILexicalBlock(scope: !7340, file: !94, line: 1026, column: 6)
!7346 = !DILocation(line: 1026, column: 6, scope: !7340)
!7347 = !DILocation(line: 1027, column: 3, scope: !7345)
!7348 = !DILocation(line: 1028, column: 6, scope: !7349)
!7349 = distinct !DILexicalBlock(scope: !7340, file: !94, line: 1028, column: 6)
!7350 = !DILocation(line: 1028, column: 11, scope: !7349)
!7351 = !DILocation(line: 1028, column: 18, scope: !7349)
!7352 = !DILocation(line: 1028, column: 21, scope: !7349)
!7353 = !DILocation(line: 1028, column: 26, scope: !7349)
!7354 = !DILocation(line: 1028, column: 34, scope: !7349)
!7355 = !DILocation(line: 1028, column: 6, scope: !7340)
!7356 = !DILocation(line: 1029, column: 3, scope: !7349)
!7357 = !DILocation(line: 1030, column: 6, scope: !7358)
!7358 = distinct !DILexicalBlock(scope: !7340, file: !94, line: 1030, column: 6)
!7359 = !DILocation(line: 1030, column: 11, scope: !7358)
!7360 = !DILocation(line: 1030, column: 15, scope: !7358)
!7361 = !DILocation(line: 1030, column: 18, scope: !7358)
!7362 = !DILocation(line: 1030, column: 23, scope: !7358)
!7363 = !DILocation(line: 1030, column: 28, scope: !7358)
!7364 = !DILocation(line: 1030, column: 6, scope: !7340)
!7365 = !DILocation(line: 1031, column: 3, scope: !7358)
!7366 = !DILocation(line: 1032, column: 2, scope: !7340)
!7367 = !DILocation(line: 1033, column: 1, scope: !7340)
!7368 = !DISubprogram(name: "device_create_file", scope: !94, file: !94, line: 259, type: !7369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7369 = !DISubroutineType(types: !7370)
!7370 = !{!109, !4232, !7371}
!7371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7372, size: 64)
!7372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5012)
!7373 = distinct !DISubprogram(name: "device_remove", scope: !3, file: !3, line: 561, type: !4259, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7374)
!7374 = !{!7375}
!7375 = !DILocalVariable(name: "dev", arg: 1, scope: !7373, file: !3, line: 561, type: !4232)
!7376 = !DILocation(line: 561, column: 42, scope: !7373)
!7377 = !DILocation(line: 563, column: 21, scope: !7373)
!7378 = !DILocation(line: 563, column: 2, scope: !7373)
!7379 = !DILocation(line: 564, column: 23, scope: !7373)
!7380 = !DILocation(line: 564, column: 28, scope: !7373)
!7381 = !DILocation(line: 564, column: 33, scope: !7373)
!7382 = !DILocation(line: 564, column: 41, scope: !7373)
!7383 = !DILocation(line: 564, column: 2, scope: !7373)
!7384 = !DILocation(line: 566, column: 6, scope: !7385)
!7385 = distinct !DILexicalBlock(scope: !7373, file: !3, line: 566, column: 6)
!7386 = !DILocation(line: 566, column: 11, scope: !7385)
!7387 = !DILocation(line: 566, column: 15, scope: !7385)
!7388 = !DILocation(line: 566, column: 18, scope: !7385)
!7389 = !DILocation(line: 566, column: 23, scope: !7385)
!7390 = !DILocation(line: 566, column: 28, scope: !7385)
!7391 = !DILocation(line: 566, column: 6, scope: !7373)
!7392 = !DILocation(line: 567, column: 3, scope: !7385)
!7393 = !DILocation(line: 567, column: 8, scope: !7385)
!7394 = !DILocation(line: 567, column: 13, scope: !7385)
!7395 = !DILocation(line: 567, column: 20, scope: !7385)
!7396 = !DILocation(line: 568, column: 11, scope: !7397)
!7397 = distinct !DILexicalBlock(scope: !7385, file: !3, line: 568, column: 11)
!7398 = !DILocation(line: 568, column: 16, scope: !7397)
!7399 = !DILocation(line: 568, column: 24, scope: !7397)
!7400 = !DILocation(line: 568, column: 11, scope: !7385)
!7401 = !DILocation(line: 569, column: 3, scope: !7397)
!7402 = !DILocation(line: 569, column: 8, scope: !7397)
!7403 = !DILocation(line: 569, column: 16, scope: !7397)
!7404 = !DILocation(line: 569, column: 23, scope: !7397)
!7405 = !DILocation(line: 570, column: 1, scope: !7373)
!7406 = distinct !DISubprogram(name: "driver_sysfs_remove", scope: !3, file: !3, line: 468, type: !4259, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7407)
!7407 = !{!7408, !7409}
!7408 = !DILocalVariable(name: "dev", arg: 1, scope: !7406, file: !3, line: 468, type: !4232)
!7409 = !DILocalVariable(name: "drv", scope: !7406, file: !3, line: 470, type: !305)
!7410 = !DILocation(line: 468, column: 48, scope: !7406)
!7411 = !DILocation(line: 470, column: 2, scope: !7406)
!7412 = !DILocation(line: 470, column: 24, scope: !7406)
!7413 = !DILocation(line: 470, column: 30, scope: !7406)
!7414 = !DILocation(line: 470, column: 35, scope: !7406)
!7415 = !DILocation(line: 472, column: 6, scope: !7416)
!7416 = distinct !DILexicalBlock(scope: !7406, file: !3, line: 472, column: 6)
!7417 = !DILocation(line: 472, column: 6, scope: !7406)
!7418 = !DILocation(line: 473, column: 7, scope: !7419)
!7419 = distinct !DILexicalBlock(scope: !7420, file: !3, line: 473, column: 7)
!7420 = distinct !DILexicalBlock(scope: !7416, file: !3, line: 472, column: 11)
!7421 = !DILocation(line: 473, column: 12, scope: !7419)
!7422 = !DILocation(line: 473, column: 7, scope: !7420)
!7423 = !DILocation(line: 474, column: 23, scope: !7419)
!7424 = !DILocation(line: 474, column: 4, scope: !7419)
!7425 = !DILocation(line: 475, column: 22, scope: !7420)
!7426 = !DILocation(line: 475, column: 27, scope: !7420)
!7427 = !DILocation(line: 475, column: 30, scope: !7420)
!7428 = !DILocation(line: 475, column: 50, scope: !7420)
!7429 = !DILocation(line: 475, column: 55, scope: !7420)
!7430 = !DILocation(line: 475, column: 36, scope: !7420)
!7431 = !DILocation(line: 475, column: 3, scope: !7420)
!7432 = !DILocation(line: 476, column: 22, scope: !7420)
!7433 = !DILocation(line: 476, column: 27, scope: !7420)
!7434 = !DILocation(line: 476, column: 3, scope: !7420)
!7435 = !DILocation(line: 477, column: 2, scope: !7420)
!7436 = !DILocation(line: 478, column: 1, scope: !7406)
!7437 = distinct !DISubprogram(name: "device_unbind_cleanup", scope: !3, file: !3, line: 547, type: !4259, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7438)
!7438 = !{!7439}
!7439 = !DILocalVariable(name: "dev", arg: 1, scope: !7437, file: !3, line: 547, type: !4232)
!7440 = !DILocation(line: 547, column: 50, scope: !7437)
!7441 = !DILocation(line: 549, column: 21, scope: !7437)
!7442 = !DILocation(line: 549, column: 2, scope: !7437)
!7443 = !DILocation(line: 550, column: 24, scope: !7437)
!7444 = !DILocation(line: 550, column: 2, scope: !7437)
!7445 = !DILocation(line: 551, column: 8, scope: !7437)
!7446 = !DILocation(line: 551, column: 13, scope: !7437)
!7447 = !DILocation(line: 551, column: 2, scope: !7437)
!7448 = !DILocation(line: 552, column: 2, scope: !7437)
!7449 = !DILocation(line: 552, column: 7, scope: !7437)
!7450 = !DILocation(line: 552, column: 21, scope: !7437)
!7451 = !DILocation(line: 553, column: 2, scope: !7437)
!7452 = !DILocation(line: 553, column: 7, scope: !7437)
!7453 = !DILocation(line: 553, column: 14, scope: !7437)
!7454 = !DILocation(line: 554, column: 18, scope: !7437)
!7455 = !DILocation(line: 554, column: 2, scope: !7437)
!7456 = !DILocation(line: 555, column: 6, scope: !7457)
!7457 = distinct !DILexicalBlock(scope: !7437, file: !3, line: 555, column: 6)
!7458 = !DILocation(line: 555, column: 11, scope: !7457)
!7459 = !DILocation(line: 555, column: 21, scope: !7457)
!7460 = !DILocation(line: 555, column: 24, scope: !7457)
!7461 = !DILocation(line: 555, column: 29, scope: !7457)
!7462 = !DILocation(line: 555, column: 40, scope: !7457)
!7463 = !DILocation(line: 555, column: 6, scope: !7437)
!7464 = !DILocation(line: 556, column: 3, scope: !7457)
!7465 = !DILocation(line: 556, column: 8, scope: !7457)
!7466 = !DILocation(line: 556, column: 19, scope: !7457)
!7467 = !DILocation(line: 556, column: 27, scope: !7457)
!7468 = !DILocation(line: 557, column: 20, scope: !7437)
!7469 = !DILocation(line: 557, column: 2, scope: !7437)
!7470 = !DILocation(line: 558, column: 26, scope: !7437)
!7471 = !DILocation(line: 558, column: 2, scope: !7437)
!7472 = !DILocation(line: 559, column: 1, scope: !7437)
!7473 = distinct !DISubprogram(name: "pinctrl_init_done", scope: !7285, file: !7285, line: 66, type: !4268, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7474)
!7474 = !{!7475}
!7475 = !DILocalVariable(name: "dev", arg: 1, scope: !7473, file: !7285, line: 66, type: !4232)
!7476 = !DILocation(line: 66, column: 52, scope: !7473)
!7477 = !DILocation(line: 68, column: 2, scope: !7473)
!7478 = !DISubprogram(name: "device_links_no_driver", scope: !224, file: !224, line: 230, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7479 = distinct !DISubprogram(name: "state_synced_show", scope: !3, file: !3, line: 534, type: !5017, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7480)
!7480 = !{!7481, !7482, !7483, !7484}
!7481 = !DILocalVariable(name: "dev", arg: 1, scope: !7479, file: !3, line: 534, type: !4232)
!7482 = !DILocalVariable(name: "attr", arg: 2, scope: !7479, file: !3, line: 535, type: !5019)
!7483 = !DILocalVariable(name: "buf", arg: 3, scope: !7479, file: !3, line: 535, type: !372)
!7484 = !DILocalVariable(name: "val", scope: !7479, file: !3, line: 537, type: !435)
!7485 = !DILocation(line: 534, column: 49, scope: !7479)
!7486 = !DILocation(line: 535, column: 31, scope: !7479)
!7487 = !DILocation(line: 535, column: 43, scope: !7479)
!7488 = !DILocation(line: 537, column: 2, scope: !7479)
!7489 = !DILocation(line: 537, column: 7, scope: !7479)
!7490 = !DILocation(line: 539, column: 14, scope: !7479)
!7491 = !DILocation(line: 539, column: 2, scope: !7479)
!7492 = !DILocation(line: 540, column: 8, scope: !7479)
!7493 = !DILocation(line: 540, column: 13, scope: !7479)
!7494 = !DILocation(line: 540, column: 6, scope: !7479)
!7495 = !DILocation(line: 541, column: 16, scope: !7479)
!7496 = !DILocation(line: 541, column: 2, scope: !7479)
!7497 = !DILocation(line: 543, column: 20, scope: !7479)
!7498 = !DILocation(line: 543, column: 33, scope: !7479)
!7499 = !DILocation(line: 543, column: 9, scope: !7479)
!7500 = !DILocation(line: 544, column: 1, scope: !7479)
!7501 = !DILocation(line: 543, column: 2, scope: !7479)
!7502 = distinct !DISubprogram(name: "state_synced_store", scope: !3, file: !3, line: 513, type: !5022, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7503)
!7503 = !{!7504, !7505, !7506, !7507, !7508}
!7504 = !DILocalVariable(name: "dev", arg: 1, scope: !7502, file: !3, line: 513, type: !4232)
!7505 = !DILocalVariable(name: "attr", arg: 2, scope: !7502, file: !3, line: 514, type: !5019)
!7506 = !DILocalVariable(name: "buf", arg: 3, scope: !7502, file: !3, line: 515, type: !309)
!7507 = !DILocalVariable(name: "count", arg: 4, scope: !7502, file: !3, line: 515, type: !417)
!7508 = !DILocalVariable(name: "ret", scope: !7502, file: !3, line: 517, type: !109)
!7509 = !DILocation(line: 513, column: 50, scope: !7502)
!7510 = !DILocation(line: 514, column: 32, scope: !7502)
!7511 = !DILocation(line: 515, column: 19, scope: !7502)
!7512 = !DILocation(line: 515, column: 31, scope: !7502)
!7513 = !DILocation(line: 517, column: 2, scope: !7502)
!7514 = !DILocation(line: 517, column: 6, scope: !7502)
!7515 = !DILocation(line: 519, column: 18, scope: !7516)
!7516 = distinct !DILexicalBlock(scope: !7502, file: !3, line: 519, column: 6)
!7517 = !DILocation(line: 519, column: 6, scope: !7516)
!7518 = !DILocation(line: 519, column: 6, scope: !7502)
!7519 = !DILocation(line: 520, column: 3, scope: !7516)
!7520 = !DILocation(line: 522, column: 14, scope: !7502)
!7521 = !DILocation(line: 522, column: 2, scope: !7502)
!7522 = !DILocation(line: 523, column: 7, scope: !7523)
!7523 = distinct !DILexicalBlock(scope: !7502, file: !3, line: 523, column: 6)
!7524 = !DILocation(line: 523, column: 12, scope: !7523)
!7525 = !DILocation(line: 523, column: 6, scope: !7502)
!7526 = !DILocation(line: 524, column: 3, scope: !7527)
!7527 = distinct !DILexicalBlock(scope: !7523, file: !3, line: 523, column: 26)
!7528 = !DILocation(line: 524, column: 8, scope: !7527)
!7529 = !DILocation(line: 524, column: 21, scope: !7527)
!7530 = !DILocation(line: 525, column: 18, scope: !7527)
!7531 = !DILocation(line: 525, column: 3, scope: !7527)
!7532 = !DILocation(line: 526, column: 2, scope: !7527)
!7533 = !DILocation(line: 527, column: 7, scope: !7534)
!7534 = distinct !DILexicalBlock(scope: !7523, file: !3, line: 526, column: 9)
!7535 = !DILocation(line: 529, column: 16, scope: !7502)
!7536 = !DILocation(line: 529, column: 2, scope: !7502)
!7537 = !DILocation(line: 531, column: 9, scope: !7502)
!7538 = !DILocation(line: 531, column: 15, scope: !7502)
!7539 = !DILocation(line: 531, column: 21, scope: !7502)
!7540 = !DILocation(line: 531, column: 2, scope: !7502)
!7541 = !DILocation(line: 532, column: 1, scope: !7502)
!7542 = !DISubprogram(name: "sysfs_emit", scope: !324, file: !324, line: 357, type: !7543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7543 = !DISubroutineType(types: !7544)
!7544 = !{!109, !372, !309, null}
!7545 = !DISubprogram(name: "strcmp", scope: !6647, file: !6647, line: 88, type: !7546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7546 = !DISubroutineType(types: !7547)
!7547 = !{!109, !309, !309}
!7548 = distinct !DISubprogram(name: "dev_sync_state", scope: !224, file: !224, line: 170, type: !4259, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7549)
!7549 = !{!7550}
!7550 = !DILocalVariable(name: "dev", arg: 1, scope: !7548, file: !224, line: 170, type: !4232)
!7551 = !DILocation(line: 170, column: 50, scope: !7548)
!7552 = !DILocation(line: 172, column: 6, scope: !7553)
!7553 = distinct !DILexicalBlock(scope: !7548, file: !224, line: 172, column: 6)
!7554 = !DILocation(line: 172, column: 11, scope: !7553)
!7555 = !DILocation(line: 172, column: 16, scope: !7553)
!7556 = !DILocation(line: 172, column: 6, scope: !7548)
!7557 = !DILocation(line: 173, column: 3, scope: !7553)
!7558 = !DILocation(line: 173, column: 8, scope: !7553)
!7559 = !DILocation(line: 173, column: 13, scope: !7553)
!7560 = !DILocation(line: 173, column: 24, scope: !7553)
!7561 = !DILocation(line: 174, column: 11, scope: !7562)
!7562 = distinct !DILexicalBlock(scope: !7553, file: !224, line: 174, column: 11)
!7563 = !DILocation(line: 174, column: 16, scope: !7562)
!7564 = !DILocation(line: 174, column: 23, scope: !7562)
!7565 = !DILocation(line: 174, column: 26, scope: !7562)
!7566 = !DILocation(line: 174, column: 31, scope: !7562)
!7567 = !DILocation(line: 174, column: 39, scope: !7562)
!7568 = !DILocation(line: 174, column: 11, scope: !7553)
!7569 = !DILocation(line: 175, column: 3, scope: !7562)
!7570 = !DILocation(line: 175, column: 8, scope: !7562)
!7571 = !DILocation(line: 175, column: 16, scope: !7562)
!7572 = !DILocation(line: 175, column: 27, scope: !7562)
!7573 = !DILocation(line: 176, column: 1, scope: !7548)
!7574 = !DISubprogram(name: "device_remove_file", scope: !94, file: !94, line: 261, type: !7575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7575 = !DISubroutineType(types: !7576)
!7576 = !{null, !4232, !7371}
!7577 = !DISubprogram(name: "device_remove_groups", scope: !94, file: !94, line: 1191, type: !7578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7578 = !DISubroutineType(types: !7579)
!7579 = !{null, !4232, !320}
!7580 = distinct !DISubprogram(name: "coredump_store", scope: !3, file: !3, line: 424, type: !5022, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7581)
!7581 = !{!7582, !7583, !7584, !7585}
!7582 = !DILocalVariable(name: "dev", arg: 1, scope: !7580, file: !3, line: 424, type: !4232)
!7583 = !DILocalVariable(name: "attr", arg: 2, scope: !7580, file: !3, line: 424, type: !5019)
!7584 = !DILocalVariable(name: "buf", arg: 3, scope: !7580, file: !3, line: 425, type: !309)
!7585 = !DILocalVariable(name: "count", arg: 4, scope: !7580, file: !3, line: 425, type: !417)
!7586 = !DILocation(line: 424, column: 46, scope: !7580)
!7587 = !DILocation(line: 424, column: 76, scope: !7580)
!7588 = !DILocation(line: 425, column: 20, scope: !7580)
!7589 = !DILocation(line: 425, column: 32, scope: !7580)
!7590 = !DILocation(line: 427, column: 14, scope: !7580)
!7591 = !DILocation(line: 427, column: 2, scope: !7580)
!7592 = !DILocation(line: 428, column: 2, scope: !7580)
!7593 = !DILocation(line: 428, column: 7, scope: !7580)
!7594 = !DILocation(line: 428, column: 15, scope: !7580)
!7595 = !DILocation(line: 428, column: 24, scope: !7580)
!7596 = !DILocation(line: 429, column: 16, scope: !7580)
!7597 = !DILocation(line: 429, column: 2, scope: !7580)
!7598 = !DILocation(line: 431, column: 9, scope: !7580)
!7599 = !DILocation(line: 431, column: 2, scope: !7580)
!7600 = !DISubprogram(name: "devres_release_all", scope: !224, file: !224, line: 182, type: !4268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7601 = distinct !DISubprogram(name: "arch_teardown_dma_ops", scope: !4499, file: !4499, line: 440, type: !4259, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7602)
!7602 = !{!7603}
!7603 = !DILocalVariable(name: "dev", arg: 1, scope: !7601, file: !4499, line: 440, type: !4232)
!7604 = !DILocation(line: 440, column: 57, scope: !7601)
!7605 = !DILocation(line: 442, column: 1, scope: !7601)
!7606 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !94, file: !94, line: 921, type: !7607, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7609)
!7607 = !DISubroutineType(types: !7608)
!7608 = !{null, !4232, !221}
!7609 = !{!7610, !7611}
!7610 = !DILocalVariable(name: "dev", arg: 1, scope: !7606, file: !94, line: 921, type: !4232)
!7611 = !DILocalVariable(name: "data", arg: 2, scope: !7606, file: !94, line: 921, type: !221)
!7612 = !DILocation(line: 921, column: 51, scope: !7606)
!7613 = !DILocation(line: 921, column: 62, scope: !7606)
!7614 = !DILocation(line: 923, column: 21, scope: !7606)
!7615 = !DILocation(line: 923, column: 2, scope: !7606)
!7616 = !DILocation(line: 923, column: 7, scope: !7606)
!7617 = !DILocation(line: 923, column: 19, scope: !7606)
!7618 = !DILocation(line: 924, column: 1, scope: !7606)
!7619 = !DISubprogram(name: "pm_runtime_reinit", scope: !4338, file: !4338, line: 22, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7620 = distinct !DISubprogram(name: "dev_pm_set_driver_flags", scope: !94, file: !94, line: 980, type: !7621, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7623)
!7621 = !DISubroutineType(types: !7622)
!7622 = !{null, !4232, !726}
!7623 = !{!7624, !7625}
!7624 = !DILocalVariable(name: "dev", arg: 1, scope: !7620, file: !94, line: 980, type: !4232)
!7625 = !DILocalVariable(name: "flags", arg: 2, scope: !7620, file: !94, line: 980, type: !726)
!7626 = !DILocation(line: 980, column: 59, scope: !7620)
!7627 = !DILocation(line: 980, column: 68, scope: !7620)
!7628 = !DILocation(line: 982, column: 28, scope: !7620)
!7629 = !DILocation(line: 982, column: 2, scope: !7620)
!7630 = !DILocation(line: 982, column: 7, scope: !7620)
!7631 = !DILocation(line: 982, column: 13, scope: !7620)
!7632 = !DILocation(line: 982, column: 26, scope: !7620)
!7633 = !DILocation(line: 983, column: 1, scope: !7620)
!7634 = distinct !DISubprogram(name: "__driver_attach_async_helper", scope: !3, file: !3, line: 1139, type: !6790, scopeLine: 1140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7635)
!7635 = !{!7636, !7637, !7638, !7639, !7640}
!7636 = !DILocalVariable(name: "_dev", arg: 1, scope: !7634, file: !3, line: 1139, type: !221)
!7637 = !DILocalVariable(name: "cookie", arg: 2, scope: !7634, file: !3, line: 1139, type: !6787)
!7638 = !DILocalVariable(name: "dev", scope: !7634, file: !3, line: 1141, type: !4232)
!7639 = !DILocalVariable(name: "drv", scope: !7634, file: !3, line: 1142, type: !305)
!7640 = !DILocalVariable(name: "ret", scope: !7634, file: !3, line: 1143, type: !109)
!7641 = !DILocation(line: 1139, column: 48, scope: !7634)
!7642 = !DILocation(line: 1139, column: 69, scope: !7634)
!7643 = !DILocation(line: 1141, column: 2, scope: !7634)
!7644 = !DILocation(line: 1141, column: 17, scope: !7634)
!7645 = !DILocation(line: 1141, column: 23, scope: !7634)
!7646 = !DILocation(line: 1142, column: 2, scope: !7634)
!7647 = !DILocation(line: 1142, column: 24, scope: !7634)
!7648 = !DILocation(line: 1143, column: 2, scope: !7634)
!7649 = !DILocation(line: 1143, column: 6, scope: !7634)
!7650 = !DILocation(line: 1145, column: 23, scope: !7634)
!7651 = !DILocation(line: 1145, column: 28, scope: !7634)
!7652 = !DILocation(line: 1145, column: 33, scope: !7634)
!7653 = !DILocation(line: 1145, column: 2, scope: !7634)
!7654 = !DILocation(line: 1146, column: 8, scope: !7634)
!7655 = !DILocation(line: 1146, column: 13, scope: !7634)
!7656 = !DILocation(line: 1146, column: 16, scope: !7634)
!7657 = !DILocation(line: 1146, column: 6, scope: !7634)
!7658 = !DILocation(line: 1147, column: 2, scope: !7634)
!7659 = !DILocation(line: 1147, column: 7, scope: !7634)
!7660 = !DILocation(line: 1147, column: 10, scope: !7634)
!7661 = !DILocation(line: 1147, column: 23, scope: !7634)
!7662 = !DILocation(line: 1148, column: 28, scope: !7634)
!7663 = !DILocation(line: 1148, column: 33, scope: !7634)
!7664 = !DILocation(line: 1148, column: 8, scope: !7634)
!7665 = !DILocation(line: 1148, column: 6, scope: !7634)
!7666 = !DILocation(line: 1149, column: 25, scope: !7634)
!7667 = !DILocation(line: 1149, column: 30, scope: !7634)
!7668 = !DILocation(line: 1149, column: 35, scope: !7634)
!7669 = !DILocation(line: 1149, column: 2, scope: !7634)
!7670 = !DILocation(line: 1153, column: 13, scope: !7634)
!7671 = !DILocation(line: 1153, column: 2, scope: !7634)
!7672 = !DILocation(line: 1154, column: 1, scope: !7634)
!7673 = !DISubprogram(name: "device_links_busy", scope: !224, file: !224, line: 231, type: !5405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7674 = !DISubprogram(name: "device_links_unbind_consumers", scope: !224, file: !224, line: 232, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7675 = distinct !DISubprogram(name: "pm_runtime_put_sync", scope: !6665, file: !6665, line: 489, type: !4268, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7676)
!7676 = !{!7677}
!7677 = !DILocalVariable(name: "dev", arg: 1, scope: !7675, file: !6665, line: 489, type: !4232)
!7678 = !DILocation(line: 489, column: 54, scope: !7675)
!7679 = !DILocation(line: 491, column: 27, scope: !7675)
!7680 = !DILocation(line: 491, column: 9, scope: !7675)
!7681 = !DILocation(line: 491, column: 2, scope: !7675)
!7682 = !DISubprogram(name: "device_links_driver_cleanup", scope: !224, file: !224, line: 229, type: !4259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7683 = !DISubprogram(name: "klist_remove", scope: !228, file: !228, line: 49, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7684 = distinct !DISubprogram(name: "cmdline_requested_async_probing", scope: !3, file: !3, line: 846, type: !7685, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7687)
!7685 = !DISubroutineType(types: !7686)
!7686 = !{!435, !309}
!7687 = !{!7688, !7689}
!7688 = !DILocalVariable(name: "drv_name", arg: 1, scope: !7684, file: !3, line: 846, type: !309)
!7689 = !DILocalVariable(name: "async_drv", scope: !7684, file: !3, line: 848, type: !435)
!7690 = !DILocation(line: 846, column: 64, scope: !7684)
!7691 = !DILocation(line: 848, column: 2, scope: !7684)
!7692 = !DILocation(line: 848, column: 7, scope: !7684)
!7693 = !DILocation(line: 850, column: 54, scope: !7684)
!7694 = !DILocation(line: 850, column: 14, scope: !7684)
!7695 = !DILocation(line: 850, column: 12, scope: !7684)
!7696 = !DILocation(line: 852, column: 10, scope: !7684)
!7697 = !DILocation(line: 852, column: 33, scope: !7684)
!7698 = !DILocation(line: 852, column: 30, scope: !7684)
!7699 = !DILocation(line: 853, column: 1, scope: !7684)
!7700 = !DILocation(line: 852, column: 2, scope: !7684)
!7701 = distinct !DISubprogram(name: "module_requested_async_probing", scope: !6, file: !6, line: 739, type: !7702, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7704)
!7702 = !DISubroutineType(types: !7703)
!7703 = !{!435, !1155}
!7704 = !{!7705}
!7705 = !DILocalVariable(name: "module", arg: 1, scope: !7701, file: !6, line: 739, type: !1155)
!7706 = !DILocation(line: 739, column: 66, scope: !7701)
!7707 = !DILocation(line: 741, column: 9, scope: !7701)
!7708 = !DILocation(line: 741, column: 16, scope: !7701)
!7709 = !DILocation(line: 741, column: 19, scope: !7701)
!7710 = !DILocation(line: 741, column: 27, scope: !7701)
!7711 = !DILocation(line: 0, scope: !7701)
!7712 = !DILocation(line: 741, column: 2, scope: !7701)
!7713 = !DISubprogram(name: "_raw_spin_lock", scope: !7714, file: !7714, line: 22, type: !7715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7714 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7715 = !DISubroutineType(types: !7716)
!7716 = !{null, !7717}
!7717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!7718 = !DISubprogram(name: "_raw_spin_unlock", scope: !7714, file: !7714, line: 39, type: !7715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
