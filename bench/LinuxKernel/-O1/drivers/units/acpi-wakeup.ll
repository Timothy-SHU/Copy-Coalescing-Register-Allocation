; ModuleID = 'drivers/acpi/wakeup.c'
source_filename = "drivers/acpi/wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_register_wakeup_handler: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_register_wakeup_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_unregister_wakeup_handler: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_unregister_wakeup_handler ; .previous"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.2, i32, i32, %struct.list_head }
%struct.anon.2 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.acpi_wakeup_handler = type { %struct.list_head, ptr, ptr }

@acpi_wakeup_device_list = external dso_local global %struct.list_head, align 8
@acpi_device_lock = external dso_local global %struct.mutex, align 8
@acpi_sci_irq = external dso_local global i32, align 4
@acpi_wakeup_handler_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @acpi_wakeup_handler_mutex, i64 16), ptr getelementptr (i8, ptr @acpi_wakeup_handler_mutex, i64 16) } }, align 8, !dbg !0
@acpi_wakeup_handler_head = internal global %struct.list_head { ptr @acpi_wakeup_handler_head, ptr @acpi_wakeup_handler_head }, align 8, !dbg !1983
@__UNIQUE_ID___addressable_acpi_register_wakeup_handler206 = internal global ptr @acpi_register_wakeup_handler, section ".discard.addressable", align 8, !dbg !1974
@__UNIQUE_ID___addressable_acpi_unregister_wakeup_handler207 = internal global ptr @acpi_unregister_wakeup_handler, section ".discard.addressable", align 8, !dbg !1976
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1978
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_register_wakeup_handler206, ptr @__UNIQUE_ID___addressable_acpi_unregister_wakeup_handler207], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_enable_wakeup_devices(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !1994 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %dev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr27 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !1998, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1999, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2000, metadata !DIExpression()), !dbg !2012
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2013
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2001, metadata !DIExpression()), !dbg !2013
  %0 = load ptr, ptr @acpi_wakeup_device_list, align 8, !dbg !2013
  store ptr %0, ptr %__mptr, align 8, !dbg !2013
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2013
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !2013
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2013
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2014
  %2 = load ptr, ptr %tmp1, align 8, !dbg !2013
  store ptr %2, ptr %dev, align 8, !dbg !2014
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #13, !dbg !2015
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2004, metadata !DIExpression()), !dbg !2015
  %3 = load ptr, ptr %dev, align 8, !dbg !2015
  %wakeup_list = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 4, !dbg !2015
  %next = getelementptr inbounds %struct.list_head, ptr %wakeup_list, i32 0, i32 0, !dbg !2015
  %4 = load ptr, ptr %next, align 8, !dbg !2015
  store ptr %4, ptr %__mptr2, align 8, !dbg !2015
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !2015
  %add.ptr4 = getelementptr i8, ptr %5, i64 -80, !dbg !2015
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2015
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #13, !dbg !2014
  %6 = load ptr, ptr %tmp3, align 8, !dbg !2015
  store ptr %6, ptr %tmp, align 8, !dbg !2014
  br label %for.cond, !dbg !2014

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !2016
  %wakeup_list5 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 4, !dbg !2016
  %cmp = icmp eq ptr %wakeup_list5, @acpi_wakeup_device_list, !dbg !2016
  %lnot = xor i1 %cmp, true, !dbg !2016
  br i1 %lnot, label %for.body, label %for.end, !dbg !2014

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dev, align 8, !dbg !2017
  %wakeup = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 10, !dbg !2020
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup, i32 0, i32 4, !dbg !2021
  %bf.load = load i8, ptr %flags, align 8, !dbg !2022
  %bf.clear = and i8 %bf.load, 1, !dbg !2022
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !2017
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2023

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i8, ptr %sleep_state.addr, align 1, !dbg !2024
  %conv = zext i8 %9 to i32, !dbg !2024
  %10 = load ptr, ptr %dev, align 8, !dbg !2025
  %wakeup6 = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 10, !dbg !2026
  %sleep_state7 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup6, i32 0, i32 2, !dbg !2027
  %11 = load i64, ptr %sleep_state7, align 8, !dbg !2027
  %conv8 = trunc i64 %11 to i32, !dbg !2028
  %cmp9 = icmp ugt i32 %conv, %conv8, !dbg !2029
  br i1 %cmp9, label %if.then, label %lor.lhs.false11, !dbg !2030

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %dev, align 8, !dbg !2031
  %dev12 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 18, !dbg !2032
  %call = call zeroext i1 @device_may_wakeup(ptr noundef %dev12) #14, !dbg !2033
  br i1 %call, label %if.end, label %lor.lhs.false14, !dbg !2034

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %13 = load ptr, ptr %dev, align 8, !dbg !2035
  %wakeup15 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 10, !dbg !2036
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup15, i32 0, i32 7, !dbg !2037
  %14 = load i32, ptr %prepare_count, align 8, !dbg !2037
  %tobool16 = icmp ne i32 %14, 0, !dbg !2035
  br i1 %tobool16, label %if.end, label %if.then, !dbg !2038

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !2039

if.end:                                           ; preds = %lor.lhs.false14, %lor.lhs.false11
  %15 = load ptr, ptr %dev, align 8, !dbg !2040
  %dev17 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 18, !dbg !2042
  %call18 = call zeroext i1 @device_may_wakeup(ptr noundef %dev17) #14, !dbg !2043
  br i1 %call18, label %if.then19, label %if.end22, !dbg !2044

if.then19:                                        ; preds = %if.end
  %16 = load ptr, ptr %dev, align 8, !dbg !2045
  %17 = load i8, ptr %sleep_state.addr, align 1, !dbg !2046
  %conv20 = zext i8 %17 to i32, !dbg !2046
  %call21 = call i32 @acpi_enable_wakeup_device_power(ptr noundef %16, i32 noundef %conv20) #14, !dbg !2047
  br label %if.end22, !dbg !2047

if.end22:                                         ; preds = %if.then19, %if.end
  %18 = load ptr, ptr %dev, align 8, !dbg !2048
  %wakeup23 = getelementptr inbounds %struct.acpi_device, ptr %18, i32 0, i32 10, !dbg !2049
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup23, i32 0, i32 0, !dbg !2050
  %19 = load ptr, ptr %gpe_device, align 8, !dbg !2050
  %20 = load ptr, ptr %dev, align 8, !dbg !2051
  %wakeup24 = getelementptr inbounds %struct.acpi_device, ptr %20, i32 0, i32 10, !dbg !2052
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup24, i32 0, i32 1, !dbg !2053
  %21 = load i64, ptr %gpe_number, align 8, !dbg !2053
  %conv25 = trunc i64 %21 to i32, !dbg !2051
  %call26 = call i32 @acpi_set_gpe_wake_mask(ptr noundef %19, i32 noundef %conv25, i8 noundef zeroext 0) #14, !dbg !2054
  br label %for.inc, !dbg !2055

for.inc:                                          ; preds = %if.end22, %if.then
  %22 = load ptr, ptr %tmp, align 8, !dbg !2016
  store ptr %22, ptr %dev, align 8, !dbg !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr27) #13, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %__mptr27, metadata !2006, metadata !DIExpression()), !dbg !2056
  %23 = load ptr, ptr %tmp, align 8, !dbg !2056
  %wakeup_list28 = getelementptr inbounds %struct.acpi_device, ptr %23, i32 0, i32 4, !dbg !2056
  %next29 = getelementptr inbounds %struct.list_head, ptr %wakeup_list28, i32 0, i32 0, !dbg !2056
  %24 = load ptr, ptr %next29, align 8, !dbg !2056
  store ptr %24, ptr %__mptr27, align 8, !dbg !2056
  %25 = load ptr, ptr %__mptr27, align 8, !dbg !2056
  %add.ptr31 = getelementptr i8, ptr %25, i64 -80, !dbg !2056
  store ptr %add.ptr31, ptr %tmp30, align 8, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr27) #13, !dbg !2016
  %26 = load ptr, ptr %tmp30, align 8, !dbg !2056
  store ptr %26, ptr %tmp, align 8, !dbg !2016
  br label %for.cond, !dbg !2016, !llvm.loop !2057

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !2061
  ret void, !dbg !2061
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_may_wakeup(ptr noundef %dev) #3 align 16 !dbg !2062 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2066, metadata !DIExpression()), !dbg !2067
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2068
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2069
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !2070
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !2070
  %bf.clear = and i16 %bf.load, 1, !dbg !2070
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2070
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2068
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2071

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2072
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2073
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2074
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2074
  %tobool2 = icmp ne ptr %2, null, !dbg !2075
  %lnot = xor i1 %tobool2, true, !dbg !2075
  %lnot3 = xor i1 %lnot, true, !dbg !2076
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !2077
  ret i1 %3, !dbg !2078
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2079 dso_local i32 @acpi_enable_wakeup_device_power(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2082 dso_local i32 @acpi_set_gpe_wake_mask(ptr noundef, i32 noundef, i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_disable_wakeup_devices(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !2087 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %dev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !2089, metadata !DIExpression()), !dbg !2100
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2090, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2091, metadata !DIExpression()), !dbg !2103
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2104
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2092, metadata !DIExpression()), !dbg !2104
  %0 = load ptr, ptr @acpi_wakeup_device_list, align 8, !dbg !2104
  store ptr %0, ptr %__mptr, align 8, !dbg !2104
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2104
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !2104
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2105
  %2 = load ptr, ptr %tmp1, align 8, !dbg !2104
  store ptr %2, ptr %dev, align 8, !dbg !2105
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #13, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2095, metadata !DIExpression()), !dbg !2106
  %3 = load ptr, ptr %dev, align 8, !dbg !2106
  %wakeup_list = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 4, !dbg !2106
  %next = getelementptr inbounds %struct.list_head, ptr %wakeup_list, i32 0, i32 0, !dbg !2106
  %4 = load ptr, ptr %next, align 8, !dbg !2106
  store ptr %4, ptr %__mptr2, align 8, !dbg !2106
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !2106
  %add.ptr4 = getelementptr i8, ptr %5, i64 -80, !dbg !2106
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2106
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #13, !dbg !2105
  %6 = load ptr, ptr %tmp3, align 8, !dbg !2106
  store ptr %6, ptr %tmp, align 8, !dbg !2105
  br label %for.cond, !dbg !2105

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !2107
  %wakeup_list5 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 4, !dbg !2107
  %cmp = icmp eq ptr %wakeup_list5, @acpi_wakeup_device_list, !dbg !2107
  %lnot = xor i1 %cmp, true, !dbg !2107
  br i1 %lnot, label %for.body, label %for.end, !dbg !2105

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dev, align 8, !dbg !2108
  %wakeup = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 10, !dbg !2111
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup, i32 0, i32 4, !dbg !2112
  %bf.load = load i8, ptr %flags, align 8, !dbg !2113
  %bf.clear = and i8 %bf.load, 1, !dbg !2113
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !2108
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2114

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i8, ptr %sleep_state.addr, align 1, !dbg !2115
  %conv = zext i8 %9 to i32, !dbg !2115
  %10 = load ptr, ptr %dev, align 8, !dbg !2116
  %wakeup6 = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 10, !dbg !2117
  %sleep_state7 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup6, i32 0, i32 2, !dbg !2118
  %11 = load i64, ptr %sleep_state7, align 8, !dbg !2118
  %conv8 = trunc i64 %11 to i32, !dbg !2119
  %cmp9 = icmp ugt i32 %conv, %conv8, !dbg !2120
  br i1 %cmp9, label %if.then, label %lor.lhs.false11, !dbg !2121

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %dev, align 8, !dbg !2122
  %dev12 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 18, !dbg !2123
  %call = call zeroext i1 @device_may_wakeup(ptr noundef %dev12) #14, !dbg !2124
  br i1 %call, label %if.end, label %lor.lhs.false14, !dbg !2125

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %13 = load ptr, ptr %dev, align 8, !dbg !2126
  %wakeup15 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 10, !dbg !2127
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup15, i32 0, i32 7, !dbg !2128
  %14 = load i32, ptr %prepare_count, align 8, !dbg !2128
  %tobool16 = icmp ne i32 %14, 0, !dbg !2126
  br i1 %tobool16, label %if.end, label %if.then, !dbg !2129

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !2130

if.end:                                           ; preds = %lor.lhs.false14, %lor.lhs.false11
  %15 = load ptr, ptr %dev, align 8, !dbg !2131
  %wakeup17 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 10, !dbg !2132
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup17, i32 0, i32 0, !dbg !2133
  %16 = load ptr, ptr %gpe_device, align 8, !dbg !2133
  %17 = load ptr, ptr %dev, align 8, !dbg !2134
  %wakeup18 = getelementptr inbounds %struct.acpi_device, ptr %17, i32 0, i32 10, !dbg !2135
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup18, i32 0, i32 1, !dbg !2136
  %18 = load i64, ptr %gpe_number, align 8, !dbg !2136
  %conv19 = trunc i64 %18 to i32, !dbg !2134
  %call20 = call i32 @acpi_set_gpe_wake_mask(ptr noundef %16, i32 noundef %conv19, i8 noundef zeroext 1) #14, !dbg !2137
  %19 = load ptr, ptr %dev, align 8, !dbg !2138
  %dev21 = getelementptr inbounds %struct.acpi_device, ptr %19, i32 0, i32 18, !dbg !2140
  %call22 = call zeroext i1 @device_may_wakeup(ptr noundef %dev21) #14, !dbg !2141
  br i1 %call22, label %if.then23, label %if.end25, !dbg !2142

if.then23:                                        ; preds = %if.end
  %20 = load ptr, ptr %dev, align 8, !dbg !2143
  %call24 = call i32 @acpi_disable_wakeup_device_power(ptr noundef %20) #14, !dbg !2144
  br label %if.end25, !dbg !2144

if.end25:                                         ; preds = %if.then23, %if.end
  br label %for.inc, !dbg !2145

for.inc:                                          ; preds = %if.end25, %if.then
  %21 = load ptr, ptr %tmp, align 8, !dbg !2107
  store ptr %21, ptr %dev, align 8, !dbg !2107
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #13, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !2097, metadata !DIExpression()), !dbg !2146
  %22 = load ptr, ptr %tmp, align 8, !dbg !2146
  %wakeup_list27 = getelementptr inbounds %struct.acpi_device, ptr %22, i32 0, i32 4, !dbg !2146
  %next28 = getelementptr inbounds %struct.list_head, ptr %wakeup_list27, i32 0, i32 0, !dbg !2146
  %23 = load ptr, ptr %next28, align 8, !dbg !2146
  store ptr %23, ptr %__mptr26, align 8, !dbg !2146
  %24 = load ptr, ptr %__mptr26, align 8, !dbg !2146
  %add.ptr30 = getelementptr i8, ptr %24, i64 -80, !dbg !2146
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #13, !dbg !2107
  %25 = load ptr, ptr %tmp29, align 8, !dbg !2146
  store ptr %25, ptr %tmp, align 8, !dbg !2107
  br label %for.cond, !dbg !2107, !llvm.loop !2147

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !2149
  ret void, !dbg !2149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2150 dso_local i32 @acpi_disable_wakeup_device_power(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_wakeup_device_init() #5 section ".init.text" align 16 !dbg !2151 {
entry:
  %dev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2153, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2154, metadata !DIExpression()), !dbg !2165
  call void @mutex_lock(ptr noundef @acpi_device_lock) #14, !dbg !2166
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2155, metadata !DIExpression()), !dbg !2167
  %0 = load ptr, ptr @acpi_wakeup_device_list, align 8, !dbg !2167
  store ptr %0, ptr %__mptr, align 8, !dbg !2167
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2167
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !2167
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2168
  %2 = load ptr, ptr %tmp1, align 8, !dbg !2167
  store ptr %2, ptr %dev, align 8, !dbg !2168
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #13, !dbg !2169
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2158, metadata !DIExpression()), !dbg !2169
  %3 = load ptr, ptr %dev, align 8, !dbg !2169
  %wakeup_list = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 4, !dbg !2169
  %next = getelementptr inbounds %struct.list_head, ptr %wakeup_list, i32 0, i32 0, !dbg !2169
  %4 = load ptr, ptr %next, align 8, !dbg !2169
  store ptr %4, ptr %__mptr2, align 8, !dbg !2169
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !2169
  %add.ptr4 = getelementptr i8, ptr %5, i64 -80, !dbg !2169
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #13, !dbg !2168
  %6 = load ptr, ptr %tmp3, align 8, !dbg !2169
  store ptr %6, ptr %tmp, align 8, !dbg !2168
  br label %for.cond, !dbg !2168

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !2170
  %wakeup_list5 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 4, !dbg !2170
  %cmp = icmp eq ptr %wakeup_list5, @acpi_wakeup_device_list, !dbg !2170
  %lnot = xor i1 %cmp, true, !dbg !2170
  br i1 %lnot, label %for.body, label %for.end, !dbg !2168

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dev, align 8, !dbg !2171
  %dev6 = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 18, !dbg !2174
  %call = call zeroext i1 @device_can_wakeup(ptr noundef %dev6) #14, !dbg !2175
  br i1 %call, label %if.then, label %if.end, !dbg !2176

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %dev, align 8, !dbg !2177
  %wakeup = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 10, !dbg !2179
  %gpe_device = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup, i32 0, i32 0, !dbg !2180
  %10 = load ptr, ptr %gpe_device, align 8, !dbg !2180
  %11 = load ptr, ptr %dev, align 8, !dbg !2181
  %wakeup7 = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 10, !dbg !2182
  %gpe_number = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup7, i32 0, i32 1, !dbg !2183
  %12 = load i64, ptr %gpe_number, align 8, !dbg !2183
  %conv = trunc i64 %12 to i32, !dbg !2181
  %call8 = call i32 @acpi_enable_gpe(ptr noundef %10, i32 noundef %conv) #14, !dbg !2184
  %13 = load ptr, ptr %dev, align 8, !dbg !2185
  %dev9 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 18, !dbg !2186
  %call10 = call i32 @device_set_wakeup_enable(ptr noundef %dev9, i1 noundef zeroext true) #14, !dbg !2187
  br label %if.end, !dbg !2188

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2189

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %tmp, align 8, !dbg !2170
  store ptr %14, ptr %dev, align 8, !dbg !2170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #13, !dbg !2190
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !2160, metadata !DIExpression()), !dbg !2190
  %15 = load ptr, ptr %tmp, align 8, !dbg !2190
  %wakeup_list12 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 4, !dbg !2190
  %next13 = getelementptr inbounds %struct.list_head, ptr %wakeup_list12, i32 0, i32 0, !dbg !2190
  %16 = load ptr, ptr %next13, align 8, !dbg !2190
  store ptr %16, ptr %__mptr11, align 8, !dbg !2190
  %17 = load ptr, ptr %__mptr11, align 8, !dbg !2190
  %add.ptr15 = getelementptr i8, ptr %17, i64 -80, !dbg !2190
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !2190
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #13, !dbg !2170
  %18 = load ptr, ptr %tmp14, align 8, !dbg !2190
  store ptr %18, ptr %tmp, align 8, !dbg !2170
  br label %for.cond, !dbg !2170, !llvm.loop !2191

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @acpi_device_lock) #14, !dbg !2193
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !2194
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !2194
  ret i32 0, !dbg !2195
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2196 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_can_wakeup(ptr noundef %dev) #3 align 16 !dbg !2200 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2202, metadata !DIExpression()), !dbg !2203
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2204
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2205
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !2206
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !2206
  %bf.clear = and i16 %bf.load, 1, !dbg !2206
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2206
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2204
  ret i1 %tobool, !dbg !2207
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2208 dso_local i32 @acpi_enable_gpe(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2211 dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2214 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_register_wakeup_handler(i32 noundef %wake_irq, ptr noundef %wakeup, ptr noundef %context) #0 align 16 !dbg !2215 {
entry:
  %retval = alloca i32, align 4
  %wake_irq.addr = alloca i32, align 4
  %wakeup.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %wake_irq, ptr %wake_irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wake_irq.addr, metadata !2219, metadata !DIExpression()), !dbg !2223
  store ptr %wakeup, ptr %wakeup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wakeup.addr, metadata !2220, metadata !DIExpression()), !dbg !2224
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #13, !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !2222, metadata !DIExpression()), !dbg !2227
  %call = call zeroext i1 @acpi_sci_irq_valid() #14, !dbg !2228
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !2230

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %wake_irq.addr, align 4, !dbg !2231
  %1 = load i32, ptr @acpi_sci_irq, align 4, !dbg !2232
  %cmp = icmp ne i32 %0, %1, !dbg !2233
  br i1 %cmp, label %if.then, label %if.end, !dbg !2234

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2235

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef 3264) #15, !dbg !2236
  store ptr %call1, ptr %handler, align 8, !dbg !2237
  %2 = load ptr, ptr %handler, align 8, !dbg !2238
  %tobool = icmp ne ptr %2, null, !dbg !2238
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2240

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2241

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %wakeup.addr, align 8, !dbg !2242
  %4 = load ptr, ptr %handler, align 8, !dbg !2243
  %wakeup4 = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %4, i32 0, i32 1, !dbg !2244
  store ptr %3, ptr %wakeup4, align 8, !dbg !2245
  %5 = load ptr, ptr %context.addr, align 8, !dbg !2246
  %6 = load ptr, ptr %handler, align 8, !dbg !2247
  %context5 = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %6, i32 0, i32 2, !dbg !2248
  store ptr %5, ptr %context5, align 8, !dbg !2249
  call void @mutex_lock(ptr noundef @acpi_wakeup_handler_mutex) #14, !dbg !2250
  %7 = load ptr, ptr %handler, align 8, !dbg !2251
  %list_node = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %7, i32 0, i32 0, !dbg !2252
  call void @list_add(ptr noundef %list_node, ptr noundef @acpi_wakeup_handler_head) #14, !dbg !2253
  call void @mutex_unlock(ptr noundef @acpi_wakeup_handler_mutex) #14, !dbg !2254
  store i32 0, ptr %retval, align 4, !dbg !2255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2255

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #13, !dbg !2256
  %8 = load i32, ptr %retval, align 4, !dbg !2256
  ret i32 %8, !dbg !2256
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_sci_irq_valid() #3 align 16 !dbg !2257 {
entry:
  %0 = load i32, ptr @acpi_sci_irq, align 4, !dbg !2259
  %cmp = icmp ne i32 %0, -1, !dbg !2260
  ret i1 %cmp, !dbg !2261
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2262 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2266, metadata !DIExpression()), !dbg !2271
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2267, metadata !DIExpression()), !dbg !2272
  %0 = load i64, ptr %size.addr, align 8, !dbg !2273
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2274
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2275

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2276
  %tobool = icmp ne i64 %2, 0, !dbg !2276
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2277

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !2278
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2268, metadata !DIExpression()), !dbg !2279
  %3 = load i64, ptr %size.addr, align 8, !dbg !2280
  %cmp = icmp ugt i64 %3, 8192, !dbg !2282
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2283

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2284
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2285
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2286
  store ptr %call, ptr %retval, align 8, !dbg !2287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2287

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2288
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2288
  store i32 %call2, ptr %index, align 4, !dbg !2289
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2290
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2291
  %9 = ptrtoint ptr %8 to i64, !dbg !2291
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2292
  %idxprom = zext i32 %call3 to i64, !dbg !2293
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2293
  %10 = load i32, ptr %index, align 4, !dbg !2294
  %idxprom4 = zext i32 %10 to i64, !dbg !2293
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2293
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2293
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2295
  %13 = load i64, ptr %size.addr, align 8, !dbg !2296
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !2297
  store ptr %call6, ptr %retval, align 8, !dbg !2298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2298

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !2299
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2300
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2301
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2302
  store ptr %call8, ptr %retval, align 8, !dbg !2303
  br label %return, !dbg !2303

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2304
  ret ptr %16, !dbg !2304
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !2305 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2310, metadata !DIExpression()), !dbg !2312
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2311, metadata !DIExpression()), !dbg !2313
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2314
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2315
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2316
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !2317
  %3 = load ptr, ptr %next, align 8, !dbg !2317
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #14, !dbg !2318
  ret void, !dbg !2319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_unregister_wakeup_handler(ptr noundef %wakeup, ptr noundef %context) #0 align 16 !dbg !2320 {
entry:
  %wakeup.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %wakeup, ptr %wakeup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wakeup.addr, metadata !2324, metadata !DIExpression()), !dbg !2333
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2325, metadata !DIExpression()), !dbg !2334
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #13, !dbg !2335
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !2326, metadata !DIExpression()), !dbg !2336
  call void @mutex_lock(ptr noundef @acpi_wakeup_handler_mutex) #14, !dbg !2337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2338
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2327, metadata !DIExpression()), !dbg !2338
  %0 = load ptr, ptr @acpi_wakeup_handler_head, align 8, !dbg !2338
  store ptr %0, ptr %__mptr, align 8, !dbg !2338
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2338
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2338
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2339
  %2 = load ptr, ptr %tmp, align 8, !dbg !2338
  store ptr %2, ptr %handler, align 8, !dbg !2339
  br label %for.cond, !dbg !2339

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %handler, align 8, !dbg !2340
  %list_node = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %3, i32 0, i32 0, !dbg !2340
  %cmp = icmp eq ptr %list_node, @acpi_wakeup_handler_head, !dbg !2340
  %lnot = xor i1 %cmp, true, !dbg !2340
  br i1 %lnot, label %for.body, label %for.end, !dbg !2339

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %handler, align 8, !dbg !2341
  %wakeup1 = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %4, i32 0, i32 1, !dbg !2344
  %5 = load ptr, ptr %wakeup1, align 8, !dbg !2344
  %6 = load ptr, ptr %wakeup.addr, align 8, !dbg !2345
  %cmp2 = icmp eq ptr %5, %6, !dbg !2346
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !2347

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %handler, align 8, !dbg !2348
  %context3 = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %7, i32 0, i32 2, !dbg !2349
  %8 = load ptr, ptr %context3, align 8, !dbg !2349
  %9 = load ptr, ptr %context.addr, align 8, !dbg !2350
  %cmp4 = icmp eq ptr %8, %9, !dbg !2351
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2352

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %handler, align 8, !dbg !2353
  %list_node5 = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %10, i32 0, i32 0, !dbg !2355
  call void @list_del(ptr noundef %list_node5) #14, !dbg !2356
  %11 = load ptr, ptr %handler, align 8, !dbg !2357
  call void @kfree(ptr noundef %11) #14, !dbg !2358
  br label %for.end, !dbg !2359

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2360

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #13, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !2330, metadata !DIExpression()), !dbg !2361
  %12 = load ptr, ptr %handler, align 8, !dbg !2361
  %list_node7 = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %12, i32 0, i32 0, !dbg !2361
  %next = getelementptr inbounds %struct.list_head, ptr %list_node7, i32 0, i32 0, !dbg !2361
  %13 = load ptr, ptr %next, align 8, !dbg !2361
  store ptr %13, ptr %__mptr6, align 8, !dbg !2361
  %14 = load ptr, ptr %__mptr6, align 8, !dbg !2361
  %add.ptr9 = getelementptr i8, ptr %14, i64 0, !dbg !2361
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #13, !dbg !2340
  %15 = load ptr, ptr %tmp8, align 8, !dbg !2361
  store ptr %15, ptr %handler, align 8, !dbg !2340
  br label %for.cond, !dbg !2340, !llvm.loop !2362

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @acpi_wakeup_handler_mutex) #14, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #13, !dbg !2365
  ret void, !dbg !2365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !2366 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2370, metadata !DIExpression()), !dbg !2371
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2372
  call void @__list_del_entry(ptr noundef %0) #14, !dbg !2373
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2374
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2375
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2376
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2377
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2378
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2379
  ret void, !dbg !2380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2381 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @acpi_check_wakeup_handlers() #0 align 16 !dbg !2384 {
entry:
  %retval = alloca i1, align 1
  %handler = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #13, !dbg !2393
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !2386, metadata !DIExpression()), !dbg !2394
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2395
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2387, metadata !DIExpression()), !dbg !2395
  %0 = load ptr, ptr @acpi_wakeup_handler_head, align 8, !dbg !2395
  store ptr %0, ptr %__mptr, align 8, !dbg !2395
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2395
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2395
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2395
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2396
  %2 = load ptr, ptr %tmp, align 8, !dbg !2395
  store ptr %2, ptr %handler, align 8, !dbg !2396
  br label %for.cond, !dbg !2396

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %handler, align 8, !dbg !2397
  %list_node = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %3, i32 0, i32 0, !dbg !2397
  %cmp = icmp eq ptr %list_node, @acpi_wakeup_handler_head, !dbg !2397
  %lnot = xor i1 %cmp, true, !dbg !2397
  br i1 %lnot, label %for.body, label %for.end, !dbg !2396

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %handler, align 8, !dbg !2398
  %wakeup = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %4, i32 0, i32 1, !dbg !2401
  %5 = load ptr, ptr %wakeup, align 8, !dbg !2401
  %6 = load ptr, ptr %handler, align 8, !dbg !2402
  %context = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %6, i32 0, i32 2, !dbg !2403
  %7 = load ptr, ptr %context, align 8, !dbg !2403
  %call = call zeroext i1 %5(ptr noundef %7) #14, !dbg !2398
  br i1 %call, label %if.then, label %if.end, !dbg !2404

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !2405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2405

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2406

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #13, !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2390, metadata !DIExpression()), !dbg !2407
  %8 = load ptr, ptr %handler, align 8, !dbg !2407
  %list_node2 = getelementptr inbounds %struct.acpi_wakeup_handler, ptr %8, i32 0, i32 0, !dbg !2407
  %next = getelementptr inbounds %struct.list_head, ptr %list_node2, i32 0, i32 0, !dbg !2407
  %9 = load ptr, ptr %next, align 8, !dbg !2407
  store ptr %9, ptr %__mptr1, align 8, !dbg !2407
  %10 = load ptr, ptr %__mptr1, align 8, !dbg !2407
  %add.ptr4 = getelementptr i8, ptr %10, i64 0, !dbg !2407
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #13, !dbg !2397
  %11 = load ptr, ptr %tmp3, align 8, !dbg !2407
  store ptr %11, ptr %handler, align 8, !dbg !2397
  br label %for.cond, !dbg !2397, !llvm.loop !2408

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2410

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #13, !dbg !2411
  %12 = load i1, ptr %retval, align 1, !dbg !2411
  ret i1 %12, !dbg !2411
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2412 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2413 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2417, metadata !DIExpression()), !dbg !2419
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2418, metadata !DIExpression()), !dbg !2420
  %0 = load i64, ptr %size.addr, align 8, !dbg !2421
  %tobool = icmp ne i64 %0, 0, !dbg !2421
  br i1 %tobool, label %if.end, label %if.then, !dbg !2423

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2424
  br label %return, !dbg !2424

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2425
  %cmp = icmp ule i64 %1, 8, !dbg !2427
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2428

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2429
  br label %return, !dbg !2429

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2430
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2432
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2433

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2434
  %cmp4 = icmp ule i64 %3, 96, !dbg !2435
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2436

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2437
  br label %return, !dbg !2437

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2438
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2440
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2441

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2442
  %cmp9 = icmp ule i64 %5, 192, !dbg !2443
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2444

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2445
  br label %return, !dbg !2445

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2446
  %cmp12 = icmp ule i64 %6, 8, !dbg !2448
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2449

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2450
  br label %return, !dbg !2450

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2451
  %cmp15 = icmp ule i64 %7, 16, !dbg !2453
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2454

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2455
  br label %return, !dbg !2455

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2456
  %cmp18 = icmp ule i64 %8, 32, !dbg !2458
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2459

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2460
  br label %return, !dbg !2460

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2461
  %cmp21 = icmp ule i64 %9, 64, !dbg !2463
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2464

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2465
  br label %return, !dbg !2465

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2466
  %cmp24 = icmp ule i64 %10, 128, !dbg !2468
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2469

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2470
  br label %return, !dbg !2470

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2471
  %cmp27 = icmp ule i64 %11, 256, !dbg !2473
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2474

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2475
  br label %return, !dbg !2475

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2476
  %cmp30 = icmp ule i64 %12, 512, !dbg !2478
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2479

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2480
  br label %return, !dbg !2480

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2481
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2483
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2484

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2485
  br label %return, !dbg !2485

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2486
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2488
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2489

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2490
  br label %return, !dbg !2490

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2491
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2493
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2494

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2495
  br label %return, !dbg !2495

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2496
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2498
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2499

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2500
  br label %return, !dbg !2500

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2501
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2503
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2504

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2505
  br label %return, !dbg !2505

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2506
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2508
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2509

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2510
  br label %return, !dbg !2510

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2511
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2513
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2514

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2515
  br label %return, !dbg !2515

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2516
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2518
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2519

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2520
  br label %return, !dbg !2520

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2521
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2523
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2524

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2525
  br label %return, !dbg !2525

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2526
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2528
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2529

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2530
  br label %return, !dbg !2530

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2531
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2533
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2534

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2535
  br label %return, !dbg !2535

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2536
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2538
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2539

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2540
  br label %return, !dbg !2540

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2541, !range !2543, !noundef !379
  %tobool69 = trunc i8 %25 to i1, !dbg !2541
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2544

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2545

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #17, !dbg !2546, !srcloc !2549
  unreachable, !dbg !2546

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2550

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2551

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2552

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2554

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2552

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !2556, !srcloc !2558
  br label %do.end75, !dbg !2556

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2552

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2559
  br label %return, !dbg !2559

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2560
  ret i32 %26, !dbg !2560
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2561 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2567 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2571, metadata !DIExpression()), !dbg !2573
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2572, metadata !DIExpression()), !dbg !2574
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2575
  %and = and i32 %0, 17, !dbg !2575
  %cmp = icmp eq i32 %and, 0, !dbg !2575
  %lnot = xor i1 %cmp, true, !dbg !2575
  %lnot1 = xor i1 %lnot, true, !dbg !2575
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2575
  %conv = sext i32 %lnot.ext to i64, !dbg !2575
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2575
  %tobool = icmp ne i64 %expval, 0, !dbg !2575
  br i1 %tobool, label %if.then, label %if.end, !dbg !2577

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2578
  br label %return, !dbg !2578

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2579
  %and2 = and i32 %1, 1, !dbg !2581
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2581
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2582

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2583
  br label %return, !dbg !2583

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2584
  br label %return, !dbg !2584

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2586
  ret i32 %2, !dbg !2586
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2587 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2588 dso_local void @__compiletime_assert_125() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !2589 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2593, metadata !DIExpression()), !dbg !2596
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2594, metadata !DIExpression()), !dbg !2597
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2595, metadata !DIExpression()), !dbg !2598
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2599
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2601
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2602
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14, !dbg !2603
  br i1 %call, label %if.end, label %if.then, !dbg !2604

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2605

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2606
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2607
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2608
  store ptr %3, ptr %prev1, align 8, !dbg !2609
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2610
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2611
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2612
  store ptr %5, ptr %next2, align 8, !dbg !2613
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2614
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2615
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2616
  store ptr %7, ptr %prev3, align 8, !dbg !2617
  br label %do.body, !dbg !2618

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2619

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2621

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2619

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2623
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2623
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2623
  store volatile ptr %9, ptr %next6, align 8, !dbg !2623
  br label %do.end7, !dbg !2623

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2619

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !2626 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2630, metadata !DIExpression()), !dbg !2633
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2631, metadata !DIExpression()), !dbg !2634
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2632, metadata !DIExpression()), !dbg !2635
  ret i1 true, !dbg !2636
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !2637 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2641
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #14, !dbg !2643
  br i1 %call, label %if.end, label %if.then, !dbg !2644

if.then:                                          ; preds = %entry
  br label %return, !dbg !2645

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2646
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2647
  %2 = load ptr, ptr %prev, align 8, !dbg !2647
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2648
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2649
  %4 = load ptr, ptr %next, align 8, !dbg !2649
  call void @__list_del(ptr noundef %2, ptr noundef %4) #14, !dbg !2650
  br label %return, !dbg !2651

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2651
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !2652 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  ret i1 true, !dbg !2658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !2659 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2661, metadata !DIExpression()), !dbg !2663
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2662, metadata !DIExpression()), !dbg !2664
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2665
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2666
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2667
  store ptr %0, ptr %prev1, align 8, !dbg !2668
  br label %do.body, !dbg !2669

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2670

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2672

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2670

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2674
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2674
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2674
  store volatile ptr %2, ptr %next4, align 8, !dbg !2674
  br label %do.end5, !dbg !2674

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2670

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2676
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992}
!llvm.ident = !{!1993}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_wakeup_handler_mutex", scope: !2, file: !3, line: 22, type: !500, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.wakeup.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22wakeup\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/wakeup.ll drivers/acpi/wakeup.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !1973, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/wakeup.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88080e4f80b6af25b1146045a648ea54")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !89}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !79, line: 30, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!82 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!83 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 10, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "false", value: 0)
!88 = !DIEnumerator(name: "true", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !90, line: 364, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!93 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!95 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!97 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!98 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!99 = !{!100, !101, !106, !1961, !1962, !7, !292, !1971}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !103, line: 367, size: 11200, elements: !104)
!103 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!104 = !{!105, !110, !111, !114, !1706, !1707, !1708, !1717, !1735, !1814, !1844, !1868, !1889, !1895, !1904, !1936, !1950, !1954, !1955, !1956, !1957, !1958, !1959, !1960}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !102, file: !103, line: 368, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !107, line: 21, baseType: !108)
!107 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !109, line: 27, baseType: !7)
!109 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !102, file: !103, line: 369, baseType: !46, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !102, file: !103, line: 370, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !113, line: 424, baseType: !100)
!113 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !102, file: !103, line: 371, baseType: !115, size: 512, offset: 128)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !116, line: 41, size: 512, elements: !117)
!116 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!117 = !{!118, !120, !1702, !1703, !1704, !1705}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !115, file: !116, line: 42, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !115, file: !116, line: 43, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !116, line: 125, size: 1408, elements: !124)
!124 = !{!125, !129, !133, !142, !1632, !1633, !1637, !1641, !1645, !1649, !1653, !1654, !1658, !1662, !1666, !1677, !1678, !1679, !1680, !1690, !1694, !1698}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !123, file: !116, line: 126, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!119, !119}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !123, file: !116, line: 127, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !119}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !123, file: !116, line: 128, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !140}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !138, line: 35, baseType: !139)
!138 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!139 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !123, file: !116, line: 129, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !140, !148}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !151)
!151 = !{!152, !814, !816, !819, !820, !871, !1337, !1338, !1339, !1340, !1341, !1348, !1518, !1531, !1541, !1545, !1547, !1548, !1549, !1553, !1560, !1561, !1564, !1567, !1571, !1572, !1573, !1576, !1577, !1578, !1579, !1609, !1610, !1611, !1614, !1617, !1626, !1627, !1628, !1629, !1630, !1631}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !150, file: !26, line: 706, baseType: !153, size: 512)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !154, line: 64, size: 512, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!155 = !{!156, !160, !166, !168, !255, !684, !799, !809, !810, !811, !812, !813}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !154, line: 65, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !153, file: !154, line: 66, baseType: !161, size: 128, offset: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !138, line: 190, size: 128, elements: !162)
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !138, line: 191, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !138, line: 191, baseType: !164, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !154, line: 67, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !153, file: !154, line: 68, baseType: !169, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !154, line: 168, size: 768, elements: !171)
!171 = !{!172, !173, !214, !215}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !170, file: !154, line: 169, baseType: !161, size: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !170, file: !154, line: 170, baseType: !174, size: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !175, line: 29, baseType: !176)
!175 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !175, line: 17, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !175, line: 18, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !175, line: 18, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !179, file: !175, line: 19, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !183, line: 14, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !182, file: !183, line: 15, baseType: !186, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !187, line: 44, baseType: !188)
!187 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !187, line: 14, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !187, line: 15, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !188, file: !187, line: 15, size: 32, elements: !192)
!192 = !{!193, !198, !206}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !191, file: !187, line: 16, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !138, line: 174, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 172, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !195, file: !138, line: 173, baseType: !46, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !187, line: 24, baseType: !199, size: 16)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !187, line: 24, size: 16, elements: !200)
!200 = !{!201, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !199, file: !187, line: 25, baseType: !202, size: 8)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !107, line: 17, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !109, line: 21, baseType: !204)
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !199, file: !187, line: 26, baseType: !202, size: 8, offset: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !187, line: 28, baseType: !207, size: 32)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !187, line: 28, size: 32, elements: !208)
!208 = !{!209, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !207, file: !187, line: 29, baseType: !210, size: 16)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !107, line: 19, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !109, line: 24, baseType: !212)
!212 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !207, file: !187, line: 30, baseType: !210, size: 16, offset: 16)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !154, line: 171, baseType: !153, size: 512, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !170, file: !154, line: 172, baseType: !216, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !154, line: 133, size: 192, elements: !219)
!219 = !{!220, !227, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !218, file: !154, line: 134, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!46, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !154, line: 135, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!157, !225}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !218, file: !154, line: 136, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!46, !225, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !154, line: 125, size: 20736, elements: !239)
!239 = !{!240, !245, !249, !250, !254}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !238, file: !154, line: 126, baseType: !241, size: 192)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !243)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!243 = !{!244}
!244 = !DISubrange(count: 3)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !238, file: !154, line: 127, baseType: !246, size: 4096, offset: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4096, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !238, file: !154, line: 128, baseType: !46, size: 32, offset: 4288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !238, file: !154, line: 129, baseType: !251, size: 16384, offset: 4320)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 16384, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 2048)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !238, file: !154, line: 130, baseType: !46, size: 32, offset: 20704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !153, file: !154, line: 69, baseType: !256, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !154, line: 116, size: 384, elements: !259)
!259 = !{!260, !264, !293, !630, !661, !665}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !258, file: !154, line: 117, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !167}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !258, file: !154, line: 118, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !268, line: 254, size: 128, elements: !269)
!268 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!269 = !{!270, !285}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !267, file: !268, line: 255, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !167, !279, !242}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !138, line: 66, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !276, line: 73, baseType: !277)
!276 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !276, line: 15, baseType: !278)
!278 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !268, line: 30, size: 128, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !268, line: 31, baseType: !157, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !280, file: !268, line: 32, baseType: !284, size: 16, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !138, line: 24, baseType: !212)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !267, file: !268, line: 256, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!274, !167, !279, !157, !289}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 61, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !276, line: 72, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !276, line: 16, baseType: !292)
!292 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !258, file: !154, line: 119, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !268, line: 84, size: 320, elements: !298)
!298 = !{!299, !300, !304, !626, !628}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !268, line: 85, baseType: !157, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !297, file: !268, line: 86, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!284, !167, !279, !46}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !297, file: !268, line: 88, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!284, !167, !308, !46}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !268, line: 175, size: 512, elements: !310)
!310 = !{!311, !312, !313, !314, !321, !331, !332}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !309, file: !268, line: 176, baseType: !280, size: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !309, file: !268, line: 177, baseType: !289, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !309, file: !268, line: 178, baseType: !100, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !309, file: !268, line: 179, baseType: !315, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !320, line: 351, flags: DIFlagFwdDecl)
!320 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !309, file: !268, line: 180, baseType: !322, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!274, !325, !167, !308, !242, !328, !289}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !327, line: 537, flags: DIFlagFwdDecl)
!327 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !138, line: 52, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !276, line: 88, baseType: !330)
!330 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !309, file: !268, line: 182, baseType: !322, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !309, file: !268, line: 184, baseType: !333, size: 64, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!46, !325, !167, !308, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !338, line: 625, size: 1344, elements: !339)
!338 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!339 = !{!340, !357, !577, !583, !590, !591, !596, !597, !609, !610, !613, !617, !618, !619, !620, !621, !624}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !338, line: 628, baseType: !341, size: 128)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !338, line: 628, size: 128, elements: !342)
!342 = !{!343, !348}
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !338, line: 629, baseType: !344, size: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !338, line: 629, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !344, file: !338, line: 631, baseType: !292, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !344, file: !338, line: 632, baseType: !292, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !341, file: !338, line: 635, baseType: !349, size: 128, align: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !138, line: 232, size: 128, align: 64, elements: !350)
!350 = !{!351, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !138, line: 233, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !349, file: !138, line: 234, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !352}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !337, file: !338, line: 639, baseType: !358, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !338, line: 733, size: 10240, elements: !360)
!360 = !{!361, !573}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !338, line: 734, baseType: !362, size: 10240)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !338, line: 734, size: 10240, elements: !363)
!363 = !{!364, !368, !382, !386, !387, !388, !389, !390, !391, !399, !400, !401, !410, !411, !420, !421, !422, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !469, !483, !486, !539, !540, !541, !544, !547, !548, !551, !552, !553, !560, !561}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !338, line: 739, baseType: !365, size: 512, align: 512)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !362, file: !338, line: 739, size: 512, align: 512, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !365, file: !338, line: 747, baseType: !194, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !362, file: !338, line: 750, baseType: !369, size: 128, offset: 512)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !370, line: 218, size: 128, elements: !371)
!370 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!371 = !{!372, !380, !381}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !370, line: 219, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !370, line: 219, size: 32, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !373, file: !370, line: 220, baseType: !174, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !373, file: !370, line: 221, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !370, line: 197, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 197, elements: !379)
!379 = !{}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !369, file: !370, line: 223, baseType: !7, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !369, file: !370, line: 224, baseType: !100, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !362, file: !338, line: 752, baseType: !383, size: 64, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!292, !325, !292, !292, !292, !292}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !362, file: !338, line: 756, baseType: !292, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !362, file: !338, line: 757, baseType: !292, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !362, file: !338, line: 760, baseType: !292, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !362, file: !338, line: 761, baseType: !292, size: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !362, file: !338, line: 763, baseType: !292, size: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !362, file: !338, line: 764, baseType: !392, size: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !327, line: 299, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !327, line: 299, size: 64, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !394, file: !327, line: 299, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !398, line: 18, baseType: !292)
!398 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !362, file: !338, line: 773, baseType: !194, size: 32, offset: 1088)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !362, file: !338, line: 785, baseType: !194, size: 32, offset: 1120)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !362, file: !338, line: 795, baseType: !402, size: 64, offset: 1152)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !338, line: 726, size: 128, elements: !404)
!404 = !{!405, !409}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !403, file: !338, line: 727, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !107, line: 23, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !109, line: 31, baseType: !408)
!408 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !403, file: !338, line: 728, baseType: !46, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !362, file: !338, line: 801, baseType: !292, size: 64, offset: 1216)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !362, file: !338, line: 804, baseType: !412, size: 64, offset: 1280)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !413, line: 13, baseType: !414)
!413 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !138, line: 181, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 179, size: 64, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !415, file: !138, line: 180, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !107, line: 22, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !109, line: 30, baseType: !330)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !362, file: !338, line: 806, baseType: !46, size: 32, offset: 1344)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !362, file: !338, line: 808, baseType: !174, size: 32, offset: 1376)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !362, file: !338, line: 823, baseType: !423, size: 320, offset: 1408)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !424, line: 48, size: 320, elements: !425)
!424 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!425 = !{!426, !427, !428, !433, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !423, file: !424, line: 49, baseType: !412, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !423, file: !424, line: 55, baseType: !412, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !423, file: !424, line: 57, baseType: !429, size: 32, offset: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !430, line: 15, size: 32, elements: !431)
!430 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !429, file: !430, line: 20, baseType: !194, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !423, file: !424, line: 59, baseType: !434, size: 32, offset: 160)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !183, line: 23, baseType: !182)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !423, file: !424, line: 60, baseType: !161, size: 128, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !362, file: !338, line: 825, baseType: !161, size: 128, offset: 1728)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !362, file: !338, line: 845, baseType: !46, size: 32, offset: 1856)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !362, file: !338, line: 849, baseType: !292, size: 64, offset: 1920)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !362, file: !338, line: 850, baseType: !292, size: 64, offset: 1984)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !362, file: !338, line: 852, baseType: !292, size: 64, offset: 2048)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !362, file: !338, line: 853, baseType: !292, size: 64, offset: 2112)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !362, file: !338, line: 854, baseType: !414, size: 64, offset: 2176)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !362, file: !338, line: 855, baseType: !292, size: 64, offset: 2240)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !362, file: !338, line: 856, baseType: !292, size: 64, offset: 2304)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !362, file: !338, line: 857, baseType: !292, size: 64, offset: 2368)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !362, file: !338, line: 858, baseType: !292, size: 64, offset: 2432)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !362, file: !338, line: 865, baseType: !448, size: 32, offset: 2496)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !449, line: 69, baseType: !450)
!449 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !449, line: 64, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !450, file: !449, line: 65, baseType: !7, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !362, file: !338, line: 867, baseType: !174, size: 32, offset: 2528)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !362, file: !338, line: 869, baseType: !292, size: 64, offset: 2560)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !362, file: !338, line: 869, baseType: !292, size: 64, offset: 2624)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !362, file: !338, line: 869, baseType: !292, size: 64, offset: 2688)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !362, file: !338, line: 869, baseType: !292, size: 64, offset: 2752)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !362, file: !338, line: 870, baseType: !292, size: 64, offset: 2816)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !362, file: !338, line: 870, baseType: !292, size: 64, offset: 2880)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !362, file: !338, line: 870, baseType: !292, size: 64, offset: 2944)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !362, file: !338, line: 871, baseType: !292, size: 64, offset: 3008)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !362, file: !338, line: 871, baseType: !292, size: 64, offset: 3072)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !362, file: !338, line: 871, baseType: !292, size: 64, offset: 3136)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !362, file: !338, line: 871, baseType: !292, size: 64, offset: 3200)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !362, file: !338, line: 873, baseType: !466, size: 3328, offset: 3264)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 3328, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 52)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !362, file: !338, line: 875, baseType: !470, size: 1280, offset: 6592)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 1280, elements: !481)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !472, line: 22, size: 320, elements: !473)
!472 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!473 = !{!474, !475, !476, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !472, line: 23, baseType: !434, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !472, line: 24, baseType: !418, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !471, file: !472, line: 26, baseType: !161, size: 128, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !471, file: !472, line: 28, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !107, line: 20, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !109, line: 26, baseType: !46)
!481 = !{!482}
!482 = !DISubrange(count: 4)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !362, file: !338, line: 877, baseType: !484, size: 64, offset: 7872)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !338, line: 877, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !362, file: !338, line: 880, baseType: !487, size: 1088, offset: 7936)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !488, line: 72, baseType: !489)
!488 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 23, size: 1088, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !498, !499, !507, !508, !533, !534, !535}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !489, file: !488, line: 28, baseType: !406, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !489, file: !488, line: 38, baseType: !414, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !489, file: !488, line: 40, baseType: !292, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !489, file: !488, line: 43, baseType: !423, size: 320, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !489, file: !488, line: 44, baseType: !496, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !488, line: 44, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !488, line: 48, baseType: !292, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !489, file: !488, line: 59, baseType: !500, size: 256, offset: 640)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !501, line: 66, size: 256, elements: !502)
!501 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!502 = !{!503, !504, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !500, file: !501, line: 67, baseType: !412, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !500, file: !501, line: 68, baseType: !434, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !500, file: !501, line: 70, baseType: !429, size: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !500, file: !501, line: 72, baseType: !161, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !489, file: !488, line: 60, baseType: !100, size: 64, offset: 896)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !489, file: !488, line: 61, baseType: !509, size: 64, offset: 960)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !512, line: 13, size: 1216, elements: !513)
!512 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !511, file: !512, line: 14, baseType: !100, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !511, file: !512, line: 15, baseType: !292, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !511, file: !512, line: 17, baseType: !292, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !511, file: !512, line: 17, baseType: !292, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !511, file: !512, line: 18, baseType: !292, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !511, file: !512, line: 18, baseType: !292, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !511, file: !512, line: 19, baseType: !146, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !511, file: !512, line: 21, baseType: !278, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !511, file: !512, line: 23, baseType: !278, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !511, file: !512, line: 24, baseType: !278, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !511, file: !512, line: 25, baseType: !278, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !511, file: !512, line: 26, baseType: !278, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !511, file: !512, line: 27, baseType: !278, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !511, file: !512, line: 28, baseType: !278, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !511, file: !512, line: 29, baseType: !278, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !511, file: !512, line: 30, baseType: !278, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !511, file: !512, line: 31, baseType: !278, size: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !511, file: !512, line: 32, baseType: !278, size: 64, offset: 1088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !511, file: !512, line: 33, baseType: !278, size: 64, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !489, file: !488, line: 63, baseType: !194, size: 32, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !489, file: !488, line: 69, baseType: !210, size: 16, offset: 1056)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !489, file: !488, line: 70, baseType: !536, size: 16, offset: 1072)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !107, line: 18, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !109, line: 23, baseType: !538)
!538 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !338, line: 882, baseType: !292, size: 64, offset: 9024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !362, file: !338, line: 885, baseType: !174, size: 32, offset: 9088)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !362, file: !338, line: 886, baseType: !542, size: 64, offset: 9152)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !338, line: 732, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !362, file: !338, line: 901, baseType: !545, size: 64, offset: 9216)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !338, line: 901, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !362, file: !338, line: 904, baseType: !325, size: 64, offset: 9280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !362, file: !338, line: 906, baseType: !549, size: 64, offset: 9344)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !338, line: 906, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !362, file: !338, line: 930, baseType: !194, size: 32, offset: 9408)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !362, file: !338, line: 933, baseType: !194, size: 32, offset: 9440)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !362, file: !338, line: 935, baseType: !554, size: 64, offset: 9472)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !555, line: 103, size: 64, elements: !556)
!555 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !554, file: !555, line: 104, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !555, line: 101, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !362, file: !338, line: 940, baseType: !412, size: 64, offset: 9536)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !362, file: !338, line: 942, baseType: !562, size: 256, offset: 9600)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !563, line: 98, size: 256, elements: !564)
!563 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!564 = !{!565, !566, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !562, file: !563, line: 99, baseType: !412, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !562, file: !563, line: 100, baseType: !161, size: 128, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !562, file: !563, line: 101, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !563, line: 21, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !359, file: !338, line: 986, baseType: !574, offset: 10240)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: -1)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !337, file: !338, line: 640, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !327, line: 297, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !327, line: 297, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !579, file: !327, line: 297, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !398, line: 19, baseType: !292)
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !338, line: 646, baseType: !584, size: 64, offset: 256)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !338, line: 646, size: 64, elements: !585)
!585 = !{!586, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !584, file: !338, line: 647, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !338, line: 542, baseType: !292)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !584, file: !338, line: 648, baseType: !588, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !337, file: !338, line: 666, baseType: !46, size: 32, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !337, file: !338, line: 667, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !338, line: 579, size: 320, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !593, file: !338, line: 580, baseType: !423, size: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !337, file: !338, line: 670, baseType: !137, size: 8, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !337, file: !338, line: 681, baseType: !598, size: 256, offset: 512)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !338, line: 678, size: 256, elements: !599)
!599 = !{!600, !608}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !598, file: !338, line: 679, baseType: !601, size: 192, align: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !602, line: 5, size: 192, align: 64, elements: !603)
!602 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!603 = !{!604, !605, !607}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !601, file: !602, line: 6, baseType: !292, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !601, file: !602, line: 7, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !601, file: !602, line: 8, baseType: !606, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !598, file: !338, line: 680, baseType: !292, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !337, file: !338, line: 689, baseType: !161, size: 128, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !337, file: !338, line: 691, baseType: !611, size: 64, offset: 896)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !338, line: 691, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !337, file: !338, line: 694, baseType: !614, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !338, line: 694, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !337, file: !338, line: 697, baseType: !292, size: 64, offset: 1024)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !337, file: !338, line: 699, baseType: !325, size: 64, offset: 1088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !337, file: !338, line: 700, baseType: !100, size: 64, offset: 1152)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !337, file: !338, line: 711, baseType: !412, size: 64, offset: 1216)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !337, file: !338, line: 717, baseType: !622, size: 64, offset: 1280)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !338, line: 717, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !337, file: !338, line: 722, baseType: !625, offset: 1344)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !338, line: 570, elements: !379)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !297, file: !268, line: 90, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !297, file: !268, line: 91, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !258, file: !154, line: 120, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!634, !225}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !637)
!637 = !{!638, !639, !643, !647, !653, !657}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !6, line: 40, baseType: !5, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !636, file: !6, line: 41, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!137}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !636, file: !6, line: 42, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!100}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !636, file: !6, line: 43, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!146, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !636, file: !6, line: 44, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!146}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !636, file: !6, line: 45, baseType: !658, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !100}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !258, file: !154, line: 121, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!146, !225}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !258, file: !154, line: 122, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !225, !669, !677}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !671, line: 23, baseType: !672)
!671 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 21, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !672, file: !671, line: 22, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !138, line: 37, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !276, line: 49, baseType: !7)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !671, line: 28, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 26, size: 32, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !679, file: !671, line: 27, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !138, line: 38, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !276, line: 50, baseType: !7)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !153, file: !154, line: 70, baseType: !685, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !687, line: 190, size: 1152, elements: !688)
!687 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !791, !792, !793, !794, !795, !798}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !686, file: !687, line: 191, baseType: !194, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !686, file: !687, line: 192, baseType: !194, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !686, file: !687, line: 202, baseType: !685, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !686, file: !687, line: 203, baseType: !157, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !686, file: !687, line: 205, baseType: !601, size: 192, align: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !686, file: !687, line: 207, baseType: !146, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !686, file: !687, line: 208, baseType: !7, size: 32, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 209, baseType: !697, size: 256, offset: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 209, size: 256, elements: !698)
!698 = !{!699, !711, !715}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !697, file: !687, line: 210, baseType: !700, size: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !687, line: 153, size: 256, elements: !701)
!701 = !{!702, !703, !707, !710}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !700, file: !687, line: 154, baseType: !292, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !700, file: !687, line: 156, baseType: !704, size: 64, offset: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !602, line: 12, size: 64, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !704, file: !602, line: 13, baseType: !606, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !700, file: !687, line: 162, baseType: !708, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !687, line: 162, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !700, file: !687, line: 167, baseType: !292, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !697, file: !687, line: 211, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !687, line: 170, size: 64, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !712, file: !687, line: 171, baseType: !685, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !697, file: !687, line: 212, baseType: !716, size: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !687, line: 174, size: 256, elements: !717)
!717 = !{!718, !786, !789, !790}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !716, file: !687, line: 175, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !687, line: 271, size: 768, elements: !722)
!722 = !{!723, !746, !750, !754, !759, !763, !767, !771, !772, !773, !774, !782}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !721, file: !687, line: 276, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!46, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !687, line: 251, size: 1216, elements: !729)
!729 = !{!730, !731, !732, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !728, file: !687, line: 253, baseType: !685, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !728, file: !687, line: 254, baseType: !325, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !728, file: !687, line: 255, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !735, line: 66, flags: DIFlagFwdDecl)
!735 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!736 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !728, file: !687, line: 256, baseType: !100, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !728, file: !687, line: 259, baseType: !500, size: 256, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !728, file: !687, line: 260, baseType: !500, size: 256, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !728, file: !687, line: 261, baseType: !46, size: 32, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !728, file: !687, line: 262, baseType: !161, size: 128, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !728, file: !687, line: 263, baseType: !242, size: 64, offset: 960)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !728, file: !687, line: 265, baseType: !289, size: 64, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !728, file: !687, line: 266, baseType: !137, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !728, file: !687, line: 267, baseType: !137, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !728, file: !687, line: 268, baseType: !614, size: 64, offset: 1152)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !721, file: !687, line: 277, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !727}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !721, file: !687, line: 290, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!46, !733, !100}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !721, file: !687, line: 292, baseType: !755, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!100, !733, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !721, file: !687, line: 293, baseType: !760, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!100, !733, !100, !758}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !721, file: !687, line: 294, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !733, !100}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !721, file: !687, line: 296, baseType: !768, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!274, !727, !242, !289, !328}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !721, file: !687, line: 306, baseType: !289, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !721, file: !687, line: 313, baseType: !137, size: 8, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !721, file: !687, line: 314, baseType: !768, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !721, file: !687, line: 317, baseType: !775, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!778, !727, !780}
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !779, line: 59, baseType: !7)
!779 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !687, line: 31, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !721, file: !687, line: 320, baseType: !783, size: 64, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!46, !727, !336}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !716, file: !687, line: 176, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !687, line: 35, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !716, file: !687, line: 177, baseType: !328, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !716, file: !687, line: 178, baseType: !685, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !686, file: !687, line: 215, baseType: !100, size: 64, offset: 768)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !686, file: !687, line: 221, baseType: !406, size: 64, offset: 832)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 223, baseType: !212, size: 16, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !686, file: !687, line: 224, baseType: !284, size: 16, offset: 912)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !686, file: !687, line: 225, baseType: !796, size: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !687, line: 36, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !686, file: !687, line: 227, baseType: !349, size: 128, align: 64, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !153, file: !154, line: 71, baseType: !800, size: 32, offset: 448)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !801, line: 19, size: 32, elements: !802)
!801 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !800, file: !801, line: 20, baseType: !804, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !805, line: 113, baseType: !806)
!805 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !805, line: 111, size: 32, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !806, file: !805, line: 112, baseType: !194, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !153, file: !154, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !153, file: !154, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !153, file: !154, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !153, file: !154, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !153, file: !154, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !150, file: !26, line: 707, baseType: !815, size: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !150, file: !26, line: 709, baseType: !817, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !150, file: !26, line: 711, baseType: !157, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !26, line: 712, baseType: !821, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !824)
!824 = !{!825, !826, !827, !831, !836, !840}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !823, file: !26, line: 90, baseType: !157, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !823, file: !26, line: 91, baseType: !294, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !823, file: !26, line: 92, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!46, !148, !237}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !823, file: !26, line: 93, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!242, !148, !835, !669, !677}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !823, file: !26, line: 95, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !815}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !823, file: !26, line: 97, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !844)
!844 = !{!845, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !843, file: !38, line: 287, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!46, !815}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !843, file: !38, line: 288, baseType: !837, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !843, file: !38, line: 289, baseType: !846, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !843, file: !38, line: 290, baseType: !846, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !843, file: !38, line: 291, baseType: !846, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !843, file: !38, line: 292, baseType: !846, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !843, file: !38, line: 293, baseType: !846, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !843, file: !38, line: 294, baseType: !846, size: 64, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !843, file: !38, line: 295, baseType: !846, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !843, file: !38, line: 296, baseType: !846, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !843, file: !38, line: 297, baseType: !846, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !843, file: !38, line: 298, baseType: !846, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !843, file: !38, line: 299, baseType: !846, size: 64, offset: 768)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !843, file: !38, line: 300, baseType: !846, size: 64, offset: 832)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !843, file: !38, line: 301, baseType: !846, size: 64, offset: 896)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !843, file: !38, line: 302, baseType: !846, size: 64, offset: 960)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !843, file: !38, line: 303, baseType: !846, size: 64, offset: 1024)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !843, file: !38, line: 304, baseType: !846, size: 64, offset: 1088)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !843, file: !38, line: 305, baseType: !846, size: 64, offset: 1152)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !843, file: !38, line: 306, baseType: !846, size: 64, offset: 1216)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !843, file: !38, line: 307, baseType: !846, size: 64, offset: 1280)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !843, file: !38, line: 308, baseType: !846, size: 64, offset: 1344)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !843, file: !38, line: 309, baseType: !846, size: 64, offset: 1408)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !150, file: !26, line: 714, baseType: !872, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !875, line: 80, size: 1344, elements: !876)
!875 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!876 = !{!877, !878, !879, !880, !881, !882, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1336}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !875, line: 81, baseType: !157, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !874, file: !875, line: 82, baseType: !157, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !874, file: !875, line: 83, baseType: !294, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !874, file: !875, line: 84, baseType: !294, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !874, file: !875, line: 85, baseType: !294, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !874, file: !875, line: 87, baseType: !883, size: 64, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!46, !815, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !888)
!888 = !{!889, !890, !891, !1267, !1268, !1269, !1270, !1286, !1299, !1300, !1301, !1302, !1303, !1311, !1312, !1313, !1314, !1315, !1316}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !887, file: !20, line: 97, baseType: !157, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !887, file: !20, line: 98, baseType: !872, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !887, file: !20, line: 100, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !894)
!894 = !{!895, !896, !897, !901, !922, !948, !949, !950, !951, !955, !958, !959, !960, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1023, !1027, !1047, !1065, !1066, !1067, !1068, !1077, !1100, !1101, !1104, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1118, !1119, !1225, !1233, !1234, !1235, !1237, !1241, !1242, !1246, !1247, !1248, !1249, !1251, !1252, !1253, !1260, !1261, !1262, !1266}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !893, file: !13, line: 403, baseType: !12, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !893, file: !13, line: 406, baseType: !161, size: 128, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !893, file: !13, line: 409, baseType: !898, size: 448, offset: 192)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 448, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 56)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !893, file: !13, line: 417, baseType: !902, size: 768, offset: 640)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !903)
!903 = !{!904, !905, !906, !907, !910}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !902, file: !13, line: 46, baseType: !153, size: 512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !902, file: !13, line: 47, baseType: !892, size: 64, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !902, file: !13, line: 48, baseType: !167, size: 64, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !902, file: !13, line: 49, baseType: !908, size: 64, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !902, file: !13, line: 50, baseType: !911, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !913, line: 26, size: 256, elements: !914)
!913 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !912, file: !913, line: 27, baseType: !7, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !912, file: !913, line: 28, baseType: !917, size: 192, offset: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !918, line: 43, size: 192, elements: !919)
!918 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !917, file: !918, line: 44, baseType: !434, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !917, file: !918, line: 45, baseType: !161, size: 128, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !893, file: !13, line: 418, baseType: !923, size: 64, offset: 1408)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !925)
!925 = !{!926, !927, !932, !936, !940, !944}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !924, file: !13, line: 54, baseType: !280, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !924, file: !13, line: 55, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!274, !923, !931, !242}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !924, file: !13, line: 57, baseType: !933, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!274, !923, !931, !157, !289}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !924, file: !13, line: 59, baseType: !937, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !892, !157}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !924, file: !13, line: 60, baseType: !941, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!46, !892}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !924, file: !13, line: 61, baseType: !945, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !892}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !893, file: !13, line: 419, baseType: !157, size: 64, offset: 1472)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !893, file: !13, line: 420, baseType: !157, size: 64, offset: 1536)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !893, file: !13, line: 421, baseType: !167, size: 64, offset: 1600)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !893, file: !13, line: 424, baseType: !952, size: 64, offset: 1664)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !893, file: !13, line: 425, baseType: !956, size: 64, offset: 1728)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !893, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !893, file: !13, line: 435, baseType: !500, size: 256, offset: 1856)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !893, file: !13, line: 437, baseType: !961, size: 64, offset: 2112)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !963, line: 69, size: 320, elements: !964)
!963 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!964 = !{!965, !966, !967, !984, !986, !990, !991}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !962, file: !963, line: 70, baseType: !157, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !962, file: !963, line: 71, baseType: !892, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !962, file: !963, line: 72, baseType: !968, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !963, line: 47, size: 256, elements: !971)
!971 = !{!972, !973, !979, !983}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !963, line: 49, baseType: !7, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !970, file: !963, line: 51, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!46, !157, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !970, file: !963, line: 53, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!46, !242, !977}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !970, file: !963, line: 55, baseType: !658, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !962, file: !963, line: 73, baseType: !985, size: 16, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !962, file: !963, line: 74, baseType: !987, size: 8, offset: 208)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !107, line: 16, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !109, line: 20, baseType: !989)
!989 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !963, line: 75, baseType: !202, size: 8, offset: 216)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !963, line: 76, baseType: !992, size: 64, offset: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !963, line: 76, size: 64, elements: !993)
!993 = !{!994, !995, !1002}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !992, file: !963, line: 77, baseType: !100, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !992, file: !963, line: 78, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !963, line: 86, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !998, file: !963, line: 87, baseType: !7, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !998, file: !963, line: 88, baseType: !242, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !992, file: !963, line: 79, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !963, line: 92, size: 256, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1011, !1012}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1005, file: !963, line: 94, baseType: !7, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1005, file: !963, line: 95, baseType: !7, size: 32, offset: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1005, file: !963, line: 96, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1005, file: !963, line: 97, baseType: !968, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1005, file: !963, line: 98, baseType: !100, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !893, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !893, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !893, file: !13, line: 442, baseType: !952, size: 64, offset: 2240)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !893, file: !13, line: 443, baseType: !956, size: 64, offset: 2304)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !893, file: !13, line: 444, baseType: !137, size: 8, offset: 2368)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !893, file: !13, line: 451, baseType: !137, size: 8, offset: 2376)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !893, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !893, file: !13, line: 455, baseType: !1021, size: 64, offset: 2432)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !893, file: !13, line: 458, baseType: !1024, size: 64, offset: 2496)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!46}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !893, file: !13, line: 460, baseType: !1028, size: 4032, align: 512, offset: 2560)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 4032, elements: !1045)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1029, file: !13, line: 363, baseType: !100, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1029, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1029, file: !13, line: 367, baseType: !1034, size: 448, offset: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1034, file: !13, line: 320, baseType: !892, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1034, file: !13, line: 321, baseType: !1038, size: 384, offset: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1039, line: 40, size: 384, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1038, file: !1039, line: 41, baseType: !1042, size: 384, align: 64)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 384, align: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DISubrange(count: 2)
!1045 = !{!1046}
!1046 = !DISubrange(count: 7)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !893, file: !13, line: 463, baseType: !1048, size: 192, offset: 6592)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1049, line: 8, size: 192, elements: !1050)
!1049 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1050 = !{!1051, !1052, !1054}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1048, file: !1049, line: 10, baseType: !7, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1048, file: !1049, line: 11, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1048, file: !1049, line: 12, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1057, line: 59, size: 48, elements: !1058)
!1057 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1056, file: !1057, line: 60, baseType: !536, size: 16)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1056, file: !1057, line: 61, baseType: !536, size: 16, offset: 16)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1056, file: !1057, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1056, file: !1057, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1056, file: !1057, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1056, file: !1057, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !893, file: !13, line: 465, baseType: !292, size: 64, offset: 6784)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !893, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !893, file: !13, line: 470, baseType: !161, size: 128, offset: 6912)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !893, file: !13, line: 471, baseType: !1069, size: 64, offset: 7040)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1071, line: 33, size: 96, elements: !1072)
!1071 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1072 = !{!1073, !1074, !1075, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1070, file: !1071, line: 37, baseType: !46, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1070, file: !1071, line: 43, baseType: !46, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1070, file: !1071, line: 45, baseType: !212, size: 16, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !1071, line: 47, baseType: !212, size: 16, offset: 80)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !893, file: !13, line: 476, baseType: !1078, size: 64, offset: 7104)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1080)
!1080 = !{!1081, !1097, !1098, !1099}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1079, file: !13, line: 379, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1084, line: 204, baseType: !1085)
!1084 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1084, line: 197, size: 192, elements: !1086)
!1086 = !{!1087, !1089, !1090, !1091, !1093, !1095}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1085, file: !1084, line: 198, baseType: !1088, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1084, line: 21, baseType: !108)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1085, file: !1084, line: 199, baseType: !204, size: 8, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1085, file: !1084, line: 200, baseType: !204, size: 8, offset: 40)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1085, file: !1084, line: 201, baseType: !1092, size: 16, offset: 48)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1084, line: 17, baseType: !211)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1085, file: !1084, line: 202, baseType: !1094, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1084, line: 16, baseType: !407)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1085, file: !1084, line: 203, baseType: !1096, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1084, line: 22, baseType: !407)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1079, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1079, file: !13, line: 381, baseType: !242, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1079, file: !13, line: 382, baseType: !242, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !893, file: !13, line: 477, baseType: !1079, size: 256, offset: 7168)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !893, file: !13, line: 480, baseType: !1102, size: 64, offset: 7424)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !893, file: !13, line: 483, baseType: !1105, size: 64, offset: 7488)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !893, file: !13, line: 488, baseType: !242, size: 64, offset: 7552)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !893, file: !13, line: 492, baseType: !100, size: 64, offset: 7616)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !893, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !893, file: !13, line: 495, baseType: !100, size: 64, offset: 7744)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !893, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !893, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !893, file: !13, line: 500, baseType: !1114, size: 64, offset: 7872)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1116, line: 45, baseType: !1117)
!1116 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !893, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !893, file: !13, line: 504, baseType: !1120, size: 64, offset: 8000)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1123, line: 96, size: 192, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1124 = !{!1125, !1126, !1186, !1189}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1122, file: !1123, line: 97, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1122, file: !1123, line: 98, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1123, line: 24, size: 3072, elements: !1129)
!1129 = !{!1130, !1132, !1133, !1134, !1135, !1149, !1150, !1151, !1152, !1170, !1171, !1172, !1183, !1184, !1185}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1128, file: !1123, line: 26, baseType: !1131, size: 128)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 128, elements: !1043)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1128, file: !1123, line: 27, baseType: !1131, size: 128, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1128, file: !1123, line: 28, baseType: !46, size: 32, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1128, file: !1123, line: 31, baseType: !174, size: 32, align: 512, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1128, file: !1123, line: 32, baseType: !1136, size: 960, offset: 576)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1137, line: 206, size: 960, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1138 = !{!1139, !1140, !1143, !1145, !1146, !1148}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1136, file: !1137, line: 207, baseType: !352, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1136, file: !1137, line: 208, baseType: !1141, size: 256, offset: 64)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 256, elements: !481)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1136, file: !1137, line: 209, baseType: !1144, size: 256, offset: 320)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !481)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1136, file: !1137, line: 213, baseType: !278, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1136, file: !1137, line: 215, baseType: !1147, size: 256, offset: 640)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !481)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !1137, line: 216, baseType: !202, size: 8, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1128, file: !1123, line: 33, baseType: !292, size: 64, offset: 1536)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1128, file: !1123, line: 34, baseType: !292, size: 64, offset: 1600)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1128, file: !1123, line: 35, baseType: !137, size: 8, offset: 1664)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1128, file: !1123, line: 36, baseType: !1153, size: 320, offset: 1728)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1154, line: 11, size: 320, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1155 = !{!1156, !1163, !1164, !1169}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1153, file: !1154, line: 16, baseType: !1157, size: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !138, line: 198, size: 128, elements: !1158)
!1158 = !{!1159, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1157, file: !138, line: 199, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1157, file: !138, line: 199, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1153, file: !1154, line: 17, baseType: !292, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1153, file: !1154, line: 18, baseType: !1165, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1154, line: 19, baseType: !106, size: 32, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1128, file: !1123, line: 37, baseType: !562, size: 256, offset: 2048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1128, file: !1123, line: 38, baseType: !349, size: 128, align: 64, offset: 2304)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1128, file: !1123, line: 39, baseType: !1173, size: 64, offset: 2432)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1123, line: 49, size: 768, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1174, file: !1123, line: 50, baseType: !174, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1174, file: !1123, line: 51, baseType: !1144, size: 256, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1174, file: !1123, line: 53, baseType: !1144, size: 256, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1174, file: !1123, line: 54, baseType: !292, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1174, file: !1123, line: 55, baseType: !1173, size: 64, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1174, file: !1123, line: 56, baseType: !46, size: 32, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1174, file: !1123, line: 57, baseType: !46, size: 32, offset: 736)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1128, file: !1123, line: 40, baseType: !292, size: 64, offset: 2496)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1128, file: !1123, line: 42, baseType: !46, size: 32, offset: 2560)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1128, file: !1123, line: 43, baseType: !1121, size: 64, offset: 2624)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1122, file: !1123, line: 99, baseType: !1187, offset: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1188, line: 211, elements: !379)
!1188 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1122, file: !1123, line: 100, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1123, line: 63, size: 3008, elements: !1192)
!1192 = !{!1193, !1194, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1224}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1191, file: !1123, line: 64, baseType: !1173, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1191, file: !1123, line: 65, baseType: !1195, size: 192, offset: 64)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 192, elements: !243)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1191, file: !1123, line: 67, baseType: !46, size: 32, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1191, file: !1123, line: 68, baseType: !500, size: 256, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !1123, line: 69, baseType: !174, size: 32, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1191, file: !1123, line: 70, baseType: !500, size: 256, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1191, file: !1123, line: 71, baseType: !292, size: 64, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1191, file: !1123, line: 72, baseType: !292, size: 64, offset: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1191, file: !1123, line: 73, baseType: !292, size: 64, offset: 1024)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1191, file: !1123, line: 74, baseType: !292, size: 64, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1191, file: !1123, line: 75, baseType: !292, size: 64, offset: 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1191, file: !1123, line: 76, baseType: !292, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1191, file: !1123, line: 77, baseType: !292, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1191, file: !1123, line: 78, baseType: !292, size: 64, offset: 1344)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1191, file: !1123, line: 79, baseType: !137, size: 8, offset: 1408)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1191, file: !1123, line: 80, baseType: !292, size: 64, offset: 1472)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1191, file: !1123, line: 81, baseType: !500, size: 256, offset: 1536)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1191, file: !1123, line: 82, baseType: !912, size: 256, offset: 1792)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1191, file: !1123, line: 84, baseType: !194, size: 32, offset: 2048)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1191, file: !1123, line: 87, baseType: !292, size: 64, offset: 2112)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1191, file: !1123, line: 88, baseType: !292, size: 64, offset: 2176)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1191, file: !1123, line: 89, baseType: !1216, size: 704, offset: 2240)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !563, line: 111, size: 704, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1216, file: !563, line: 112, baseType: !562, size: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1216, file: !563, line: 113, baseType: !1153, size: 320, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1216, file: !563, line: 116, baseType: !1221, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !563, line: 18, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1216, file: !563, line: 117, baseType: !46, size: 32, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1191, file: !1123, line: 90, baseType: !1121, size: 64, offset: 2944)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !893, file: !13, line: 515, baseType: !1226, size: 64, offset: 8064)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1228, line: 117, size: 128, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1229 = !{!1230, !1231, !1232}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1227, file: !1228, line: 118, baseType: !479, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1227, file: !1228, line: 119, baseType: !479, size: 32, offset: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1227, file: !1228, line: 120, baseType: !278, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !893, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !893, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !893, file: !13, line: 520, baseType: !1236, size: 64, offset: 8192)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !893, file: !13, line: 523, baseType: !1238, size: 64, offset: 8256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !893, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !893, file: !13, line: 525, baseType: !1243, size: 64, offset: 8384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !893, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !893, file: !13, line: 533, baseType: !100, size: 64, offset: 8512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !893, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !893, file: !13, line: 535, baseType: !1250, size: 64, offset: 8640)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !893, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !893, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !893, file: !13, line: 540, baseType: !1254, size: 64, offset: 8768)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1256, line: 32, size: 64, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1255, file: !1256, line: 33, baseType: !479, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1255, file: !1256, line: 34, baseType: !479, size: 32, offset: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !893, file: !13, line: 563, baseType: !161, size: 128, offset: 8832)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !893, file: !13, line: 565, baseType: !161, size: 128, offset: 8960)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !893, file: !13, line: 568, baseType: !1263, size: 64, offset: 9088)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !893, file: !13, line: 570, baseType: !194, size: 32, offset: 9152)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !887, file: !20, line: 101, baseType: !157, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !887, file: !20, line: 103, baseType: !137, size: 8, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !887, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !887, file: !20, line: 106, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1274, line: 282, size: 1600, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1275 = !{!1276, !1280, !1281, !1285}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1273, file: !1274, line: 283, baseType: !1277, size: 256)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1273, file: !1274, line: 284, baseType: !1277, size: 256, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1273, file: !1274, line: 285, baseType: !1282, size: 1024, offset: 512)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 1024, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1273, file: !1274, line: 286, baseType: !146, size: 64, offset: 1536)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !887, file: !20, line: 107, baseType: !1287, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1274, line: 217, size: 256, elements: !1290)
!1290 = !{!1291, !1295, !1297, !1298}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1289, file: !1274, line: 218, baseType: !1292, size: 128)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 16)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1289, file: !1274, line: 219, baseType: !1296, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1274, line: 15, baseType: !292)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1289, file: !1274, line: 220, baseType: !108, size: 32, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1289, file: !1274, line: 221, baseType: !108, size: 32, offset: 224)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !887, file: !20, line: 109, baseType: !846, size: 64, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !887, file: !20, line: 110, baseType: !837, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !887, file: !20, line: 111, baseType: !846, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !887, file: !20, line: 112, baseType: !837, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !887, file: !20, line: 113, baseType: !1304, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!46, !815, !1307}
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1308, file: !38, line: 59, baseType: !46, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !887, file: !20, line: 114, baseType: !846, size: 64, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !887, file: !20, line: 115, baseType: !294, size: 64, offset: 832)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !887, file: !20, line: 116, baseType: !294, size: 64, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !887, file: !20, line: 118, baseType: !841, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !887, file: !20, line: 119, baseType: !837, size: 64, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !887, file: !20, line: 121, baseType: !1317, size: 64, offset: 1088)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !874, file: !875, line: 88, baseType: !828, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !874, file: !875, line: 89, baseType: !846, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !874, file: !875, line: 90, baseType: !837, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !874, file: !875, line: 91, baseType: !837, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !874, file: !875, line: 92, baseType: !837, size: 64, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !874, file: !875, line: 94, baseType: !846, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !874, file: !875, line: 95, baseType: !846, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !874, file: !875, line: 97, baseType: !1304, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !874, file: !875, line: 98, baseType: !846, size: 64, offset: 896)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !874, file: !875, line: 100, baseType: !846, size: 64, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !874, file: !875, line: 102, baseType: !846, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !874, file: !875, line: 103, baseType: !837, size: 64, offset: 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !874, file: !875, line: 105, baseType: !841, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !874, file: !875, line: 107, baseType: !1333, size: 64, offset: 1216)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !875, line: 107, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !874, file: !875, line: 109, baseType: !137, size: 8, offset: 1280)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !150, file: !26, line: 715, baseType: !886, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !150, file: !26, line: 717, baseType: !100, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !150, file: !26, line: 719, baseType: !100, size: 64, offset: 960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !150, file: !26, line: 721, baseType: !500, size: 256, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !150, file: !26, line: 725, baseType: !1342, size: 448, offset: 1280)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1342, file: !26, line: 518, baseType: !161, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1342, file: !26, line: 519, baseType: !161, size: 128, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1342, file: !26, line: 520, baseType: !161, size: 128, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1342, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !150, file: !26, line: 726, baseType: !1349, size: 2496, offset: 1728)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1395, !1396, !1397, !1398, !1399, !1400, !1471, !1472, !1473, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1511, !1515}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1349, file: !38, line: 664, baseType: !1307, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1349, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1349, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1349, file: !38, line: 667, baseType: !137, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1349, file: !38, line: 668, baseType: !137, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1349, file: !38, line: 669, baseType: !137, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1349, file: !38, line: 670, baseType: !137, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1349, file: !38, line: 671, baseType: !137, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1349, file: !38, line: 672, baseType: !137, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1349, file: !38, line: 673, baseType: !137, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1349, file: !38, line: 674, baseType: !137, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1349, file: !38, line: 675, baseType: !106, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !38, line: 676, baseType: !174, size: 32, offset: 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1349, file: !38, line: 678, baseType: !161, size: 128, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1349, file: !38, line: 679, baseType: !912, size: 256, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1349, file: !38, line: 680, baseType: !1367, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1369, line: 43, size: 1536, elements: !1370)
!1369 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1370 = !{!1371, !1372, !1373, !1374, !1375, !1378, !1379, !1380, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1368, file: !1369, line: 44, baseType: !157, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1368, file: !1369, line: 45, baseType: !46, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1368, file: !1369, line: 46, baseType: !161, size: 128, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1368, file: !1369, line: 47, baseType: !174, size: 32, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1368, file: !1369, line: 48, baseType: !1376, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1368, file: !1369, line: 49, baseType: !1153, size: 320, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1368, file: !1369, line: 50, baseType: !292, size: 64, offset: 704)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1368, file: !1369, line: 51, baseType: !1381, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1382, line: 29, baseType: !418)
!1382 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1368, file: !1369, line: 52, baseType: !1381, size: 64, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1368, file: !1369, line: 53, baseType: !1381, size: 64, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1368, file: !1369, line: 54, baseType: !1381, size: 64, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1368, file: !1369, line: 55, baseType: !1381, size: 64, offset: 1024)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1368, file: !1369, line: 56, baseType: !292, size: 64, offset: 1088)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1368, file: !1369, line: 57, baseType: !292, size: 64, offset: 1152)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1368, file: !1369, line: 58, baseType: !292, size: 64, offset: 1216)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1368, file: !1369, line: 59, baseType: !292, size: 64, offset: 1280)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1368, file: !1369, line: 60, baseType: !292, size: 64, offset: 1344)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1368, file: !1369, line: 61, baseType: !815, size: 64, offset: 1408)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1368, file: !1369, line: 62, baseType: !137, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1368, file: !1369, line: 63, baseType: !137, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1349, file: !38, line: 681, baseType: !137, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1349, file: !38, line: 682, baseType: !137, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1349, file: !38, line: 683, baseType: !137, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1349, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1349, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1349, file: !38, line: 690, baseType: !1401, size: 512, offset: 640)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1402)
!1402 = !{!1403, !1409, !1410, !1415, !1467, !1468, !1469, !1470}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1401, file: !33, line: 119, baseType: !1404, size: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1405, line: 9, size: 256, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1404, file: !1405, line: 10, baseType: !601, size: 192, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1404, file: !1405, line: 11, baseType: !1381, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1401, file: !33, line: 120, baseType: !1381, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1401, file: !33, line: 121, baseType: !1411, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!32, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1401, file: !33, line: 122, baseType: !1416, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1418)
!1418 = !{!1419, !1444, !1445, !1448, !1453, !1454, !1462, !1466}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1417, file: !33, line: 160, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !33, line: 216, baseType: !434, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1421, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1421, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1421, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1421, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1421, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1421, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1421, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1421, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1421, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1421, file: !33, line: 227, baseType: !212, size: 16, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1421, file: !33, line: 228, baseType: !212, size: 16, offset: 208)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1421, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1421, file: !33, line: 235, baseType: !1381, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1421, file: !33, line: 236, baseType: !1414, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1421, file: !33, line: 237, baseType: !1381, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1421, file: !33, line: 238, baseType: !1414, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1421, file: !33, line: 239, baseType: !1441, size: 4096, align: 512, offset: 512)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 4096, align: 512, elements: !1442)
!1442 = !{!1443}
!1443 = !DISubrange(count: 8)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1417, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1417, file: !33, line: 162, baseType: !1446, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !138, line: 32, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !276, line: 96, baseType: !46)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1417, file: !33, line: 163, baseType: !1449, size: 32, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !449, line: 274, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !449, line: 274, size: 32, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1450, file: !449, line: 274, baseType: !448, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1417, file: !33, line: 164, baseType: !1414, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1417, file: !33, line: 165, baseType: !1455, size: 128, offset: 256)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1405, line: 14, size: 128, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1455, file: !1405, line: 15, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !602, line: 26, size: 128, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1458, file: !602, line: 27, baseType: !704, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1458, file: !602, line: 28, baseType: !606, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1417, file: !33, line: 166, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!1381}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1417, file: !33, line: 167, baseType: !1381, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1401, file: !33, line: 123, baseType: !202, size: 8, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1401, file: !33, line: 124, baseType: !202, size: 8, offset: 456)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1401, file: !33, line: 125, baseType: !202, size: 8, offset: 464)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1401, file: !33, line: 126, baseType: !202, size: 8, offset: 472)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1349, file: !38, line: 691, baseType: !406, size: 64, offset: 1152)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1349, file: !38, line: 692, baseType: !562, size: 256, offset: 1216)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1349, file: !38, line: 693, baseType: !1474, size: 192, offset: 1472)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1475, line: 41, baseType: !1476)
!1475 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1475, line: 37, size: 192, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1476, file: !1475, line: 38, baseType: !174, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1476, file: !1475, line: 39, baseType: !161, size: 128, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1349, file: !38, line: 694, baseType: !1376, size: 64, offset: 1664)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1349, file: !38, line: 695, baseType: !194, size: 32, offset: 1728)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1349, file: !38, line: 696, baseType: !194, size: 32, offset: 1760)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1349, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1349, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1349, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1349, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1349, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1349, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1349, file: !38, line: 703, baseType: !137, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1349, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1349, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1349, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1349, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1349, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1349, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1349, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1349, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1349, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1349, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1349, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1349, file: !38, line: 715, baseType: !406, size: 64, offset: 2048)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1349, file: !38, line: 716, baseType: !406, size: 64, offset: 2112)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1349, file: !38, line: 717, baseType: !406, size: 64, offset: 2176)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1349, file: !38, line: 718, baseType: !406, size: 64, offset: 2240)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1349, file: !38, line: 720, baseType: !1506, size: 64, offset: 2304)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !38, line: 633, baseType: !174, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1507, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1349, file: !38, line: 721, baseType: !1512, size: 64, offset: 2368)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !815, !479}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1349, file: !38, line: 722, baseType: !1516, size: 64, offset: 2432)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !150, file: !26, line: 727, baseType: !1519, size: 64, offset: 4224)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1528, !1529, !1530}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1520, file: !38, line: 743, baseType: !843, size: 1472)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1520, file: !38, line: 744, baseType: !846, size: 64, offset: 1472)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1520, file: !38, line: 745, baseType: !1525, size: 64, offset: 1536)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !815, !137}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1520, file: !38, line: 746, baseType: !846, size: 64, offset: 1600)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1520, file: !38, line: 747, baseType: !837, size: 64, offset: 1664)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1520, file: !38, line: 748, baseType: !837, size: 64, offset: 1728)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !150, file: !26, line: 736, baseType: !1532, size: 128, offset: 4288)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1533)
!1533 = !{!1534, !1538}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1532, file: !26, line: 531, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1537, line: 13, flags: DIFlagFwdDecl)
!1537 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1532, file: !26, line: 532, baseType: !1539, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !150, file: !26, line: 738, baseType: !1542, size: 64, offset: 4416)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !150, file: !26, line: 740, baseType: !1546, size: 64, offset: 4480)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !150, file: !26, line: 741, baseType: !406, size: 64, offset: 4544)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !150, file: !26, line: 746, baseType: !406, size: 64, offset: 4608)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !150, file: !26, line: 747, baseType: !1550, size: 64, offset: 4672)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !150, file: !26, line: 749, baseType: !1554, size: 64, offset: 4736)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1555, file: !26, line: 433, baseType: !7, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1555, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1555, file: !26, line: 435, baseType: !292, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !150, file: !26, line: 751, baseType: !161, size: 128, offset: 4800)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !150, file: !26, line: 762, baseType: !1562, size: 64, offset: 4928)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !150, file: !26, line: 770, baseType: !1565, offset: 4992)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1566, line: 5, elements: !379)
!1566 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !150, file: !26, line: 772, baseType: !1568, size: 64, offset: 4992)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1570, line: 18, flags: DIFlagFwdDecl)
!1570 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !150, file: !26, line: 773, baseType: !119, size: 64, offset: 5056)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !150, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !150, file: !26, line: 778, baseType: !1574, size: 32, offset: 5152)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !138, line: 21, baseType: !1575)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !138, line: 18, baseType: !106)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !150, file: !26, line: 779, baseType: !106, size: 32, offset: 5184)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !150, file: !26, line: 781, baseType: !174, size: 32, offset: 5216)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !150, file: !26, line: 782, baseType: !161, size: 128, offset: 5248)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !150, file: !26, line: 784, baseType: !1580, size: 64, offset: 5376)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1583, line: 52, size: 768, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1593, !1597, !1598, !1599, !1600, !1604, !1608}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1582, file: !1583, line: 53, baseType: !157, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1582, file: !1583, line: 55, baseType: !294, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1582, file: !1583, line: 56, baseType: !294, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1582, file: !1583, line: 58, baseType: !828, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1582, file: !1583, line: 59, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!242, !148, !835}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1582, file: !1583, line: 61, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1580}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1582, file: !1583, line: 62, baseType: !837, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1582, file: !1583, line: 64, baseType: !846, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1582, file: !1583, line: 66, baseType: !634, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1582, file: !1583, line: 67, baseType: !1601, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!146, !148}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1582, file: !1583, line: 69, baseType: !1605, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !148, !669, !677}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1582, file: !1583, line: 71, baseType: !841, size: 64, offset: 704)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !150, file: !26, line: 785, baseType: !294, size: 64, offset: 5440)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !150, file: !26, line: 787, baseType: !837, size: 64, offset: 5504)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !150, file: !26, line: 788, baseType: !1612, size: 64, offset: 5568)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !150, file: !26, line: 789, baseType: !1615, size: 64, offset: 5632)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !150, file: !26, line: 791, baseType: !1618, size: 64, offset: 5696)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1619, file: !26, line: 598, baseType: !53, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1619, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1619, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1619, file: !26, line: 601, baseType: !137, size: 8, offset: 96)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1619, file: !26, line: 602, baseType: !137, size: 8, offset: 104)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !150, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !150, file: !26, line: 795, baseType: !137, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !150, file: !26, line: 796, baseType: !137, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !150, file: !26, line: 797, baseType: !137, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !150, file: !26, line: 798, baseType: !137, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !150, file: !26, line: 799, baseType: !137, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !123, file: !116, line: 131, baseType: !134, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !123, file: !116, line: 133, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!78, !140}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !123, file: !116, line: 134, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!137, !140, !157}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !123, file: !116, line: 136, baseType: !1642, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!46, !140, !157, !7, !100, !289}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !123, file: !116, line: 141, baseType: !1646, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!46, !140, !157, !1236, !289}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !123, file: !116, line: 144, baseType: !1650, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!157, !140}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !123, file: !116, line: 145, baseType: !1650, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !123, file: !116, line: 146, baseType: !1655, size: 64, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!119, !140}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !123, file: !116, line: 148, baseType: !1659, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!119, !140, !119}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !123, file: !116, line: 151, baseType: !1663, size: 64, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!119, !140, !157}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !123, file: !116, line: 153, baseType: !1667, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!46, !140, !157, !157, !7, !7, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !116, line: 94, size: 640, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1671, file: !116, line: 95, baseType: !119, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1671, file: !116, line: 96, baseType: !7, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1671, file: !116, line: 97, baseType: !1676, size: 512, offset: 128)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 512, elements: !1442)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !123, file: !116, line: 158, baseType: !1659, size: 64, offset: 960)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !123, file: !116, line: 161, baseType: !1655, size: 64, offset: 1024)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !123, file: !116, line: 163, baseType: !126, size: 64, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !123, file: !116, line: 164, baseType: !1681, size: 64, offset: 1152)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!46, !140, !1684}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !116, line: 73, size: 128, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1685, file: !116, line: 74, baseType: !7, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1685, file: !116, line: 75, baseType: !7, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1685, file: !116, line: 76, baseType: !140, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !123, file: !116, line: 166, baseType: !1691, size: 64, offset: 1216)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!100, !119, !46}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !123, file: !116, line: 167, baseType: !1695, size: 64, offset: 1280)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!46, !140, !7}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !123, file: !116, line: 168, baseType: !1699, size: 64, offset: 1344)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!46, !119}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !115, file: !116, line: 44, baseType: !815, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !115, file: !116, line: 45, baseType: !161, size: 128, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !115, file: !116, line: 46, baseType: !161, size: 128, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !116, line: 47, baseType: !202, size: 8, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !102, file: !103, line: 372, baseType: !161, size: 128, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !102, file: !103, line: 373, baseType: !161, size: 128, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !102, file: !103, line: 374, baseType: !1709, size: 32, offset: 896)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !103, line: 181, size: 32, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1709, file: !103, line: 182, baseType: !106, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1709, file: !103, line: 183, baseType: !106, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1709, file: !103, line: 184, baseType: !106, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1709, file: !103, line: 185, baseType: !106, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1709, file: !103, line: 186, baseType: !106, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1709, file: !103, line: 187, baseType: !106, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !103, line: 375, baseType: !1718, size: 32, offset: 928)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !103, line: 192, size: 32, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1718, file: !103, line: 193, baseType: !106, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1718, file: !103, line: 194, baseType: !106, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1718, file: !103, line: 195, baseType: !106, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1718, file: !103, line: 196, baseType: !106, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1718, file: !103, line: 197, baseType: !106, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1718, file: !103, line: 198, baseType: !106, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1718, file: !103, line: 199, baseType: !106, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1718, file: !103, line: 200, baseType: !106, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1718, file: !103, line: 201, baseType: !106, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1718, file: !103, line: 202, baseType: !106, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1718, file: !103, line: 203, baseType: !106, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1718, file: !103, line: 204, baseType: !106, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1718, file: !103, line: 205, baseType: !106, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1718, file: !103, line: 206, baseType: !106, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1718, file: !103, line: 207, baseType: !106, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !102, file: !103, line: 376, baseType: !1736, size: 960, offset: 960)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !103, line: 238, size: 960, elements: !1737)
!1737 = !{!1738, !1741, !1742, !1750, !1752, !1753, !1754, !1759, !1764}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1736, file: !103, line: 239, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !103, line: 220, baseType: !1740)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !1442)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1736, file: !103, line: 240, baseType: !46, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1736, file: !103, line: 241, baseType: !1743, size: 32, offset: 96)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !103, line: 230, size: 32, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1743, file: !103, line: 231, baseType: !106, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1743, file: !103, line: 232, baseType: !106, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1743, file: !103, line: 233, baseType: !106, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1743, file: !103, line: 234, baseType: !106, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1743, file: !103, line: 235, baseType: !106, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1736, file: !103, line: 242, baseType: !1751, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !103, line: 221, baseType: !406)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1736, file: !103, line: 243, baseType: !242, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1736, file: !103, line: 244, baseType: !161, size: 128, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1736, file: !103, line: 245, baseType: !1755, size: 320, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !103, line: 222, baseType: !1756)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 320, elements: !1757)
!1757 = !{!1758}
!1758 = !DISubrange(count: 40)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1736, file: !103, line: 246, baseType: !1760, size: 160, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !103, line: 223, baseType: !1761)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 160, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 20)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1736, file: !103, line: 247, baseType: !1765, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !113, line: 908, size: 192, elements: !1767)
!1767 = !{!1768, !1770, !1775, !1781, !1788, !1794, !1800, !1808}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !113, line: 909, baseType: !1769, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !113, line: 644, baseType: !106)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1766, file: !113, line: 913, baseType: !1771, size: 128)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !113, line: 910, size: 128, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !113, line: 911, baseType: !1769, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1771, file: !113, line: 912, baseType: !406, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1766, file: !113, line: 919, baseType: !1776, size: 128)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !113, line: 915, size: 128, elements: !1777)
!1777 = !{!1778, !1779, !1780}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !113, line: 916, baseType: !1769, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1776, file: !113, line: 917, baseType: !106, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1776, file: !113, line: 918, baseType: !242, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1766, file: !113, line: 925, baseType: !1782, size: 128)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !113, line: 921, size: 128, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1782, file: !113, line: 922, baseType: !1769, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1782, file: !113, line: 923, baseType: !106, size: 32, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1782, file: !113, line: 924, baseType: !1787, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1766, file: !113, line: 931, baseType: !1789, size: 128)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !113, line: 927, size: 128, elements: !1790)
!1790 = !{!1791, !1792, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1789, file: !113, line: 928, baseType: !1769, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1789, file: !113, line: 929, baseType: !106, size: 32, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1789, file: !113, line: 930, baseType: !1765, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1766, file: !113, line: 937, baseType: !1795, size: 128)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !113, line: 933, size: 128, elements: !1796)
!1796 = !{!1797, !1798, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1795, file: !113, line: 934, baseType: !1769, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1795, file: !113, line: 935, baseType: !1769, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1795, file: !113, line: 936, baseType: !112, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1766, file: !113, line: 944, baseType: !1801, size: 192)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !113, line: 939, size: 192, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1807}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1801, file: !113, line: 940, baseType: !1769, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1801, file: !113, line: 941, baseType: !106, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1801, file: !113, line: 942, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !113, line: 128, baseType: !406)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1801, file: !113, line: 943, baseType: !106, size: 32, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1766, file: !113, line: 950, baseType: !1809, size: 96)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !113, line: 946, size: 96, elements: !1810)
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1809, file: !113, line: 947, baseType: !1769, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1809, file: !113, line: 948, baseType: !106, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1809, file: !113, line: 949, baseType: !106, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !102, file: !103, line: 377, baseType: !1815, size: 1408, offset: 1920)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !103, line: 280, size: 1408, elements: !1816)
!1816 = !{!1817, !1818, !1828, !1843}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1815, file: !103, line: 281, baseType: !46, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1815, file: !103, line: 282, baseType: !1819, size: 32, offset: 32)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !103, line: 259, size: 32, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1819, file: !103, line: 260, baseType: !106, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1819, file: !103, line: 261, baseType: !106, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1819, file: !103, line: 262, baseType: !106, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1819, file: !103, line: 263, baseType: !106, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1819, file: !103, line: 264, baseType: !106, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1819, file: !103, line: 265, baseType: !106, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1819, file: !103, line: 266, baseType: !106, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1815, file: !103, line: 283, baseType: !1829, size: 1280, offset: 64)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 1280, elements: !1841)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !103, line: 269, size: 256, elements: !1831)
!1831 = !{!1832, !1838, !1839, !1840}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1830, file: !103, line: 274, baseType: !1833, size: 8)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1830, file: !103, line: 270, size: 8, elements: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1833, file: !103, line: 271, baseType: !202, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1833, file: !103, line: 272, baseType: !202, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1833, file: !103, line: 273, baseType: !202, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1830, file: !103, line: 275, baseType: !46, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1830, file: !103, line: 276, baseType: !46, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1830, file: !103, line: 277, baseType: !161, size: 128, offset: 128)
!1841 = !{!1842}
!1842 = !DISubrange(count: 5)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1815, file: !103, line: 284, baseType: !202, size: 8, offset: 1344)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !102, file: !103, line: 378, baseType: !1845, size: 640, offset: 3328)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !103, line: 330, size: 640, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1856, !1865, !1866, !1867}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1845, file: !103, line: 331, baseType: !112, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1845, file: !103, line: 332, baseType: !406, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1845, file: !103, line: 333, baseType: !406, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1845, file: !103, line: 334, baseType: !161, size: 128, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !103, line: 335, baseType: !1852, size: 8, offset: 320)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !103, line: 320, size: 8, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1852, file: !103, line: 321, baseType: !202, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1852, file: !103, line: 322, baseType: !202, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1845, file: !103, line: 336, baseType: !1857, size: 128, offset: 384)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !103, line: 325, size: 128, elements: !1858)
!1858 = !{!1859, !1864}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1857, file: !103, line: 326, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1857, file: !103, line: 327, baseType: !815, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1845, file: !103, line: 337, baseType: !1367, size: 64, offset: 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1845, file: !103, line: 338, baseType: !46, size: 32, offset: 576)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1845, file: !103, line: 339, baseType: !46, size: 32, offset: 608)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !102, file: !103, line: 379, baseType: !1869, size: 192, offset: 3968)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !103, line: 312, size: 192, elements: !1870)
!1870 = !{!1871, !1872, !1876, !1877}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1869, file: !103, line: 313, baseType: !46, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !103, line: 314, baseType: !1873, size: 8, offset: 32)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !103, line: 298, size: 8, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1873, file: !103, line: 299, baseType: !202, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1869, file: !103, line: 315, baseType: !46, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1869, file: !103, line: 316, baseType: !1878, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !103, line: 302, size: 64, elements: !1880)
!1880 = !{!1881, !1886, !1887, !1888}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1879, file: !103, line: 306, baseType: !1882, size: 8)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !103, line: 303, size: 8, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1882, file: !103, line: 304, baseType: !202, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1882, file: !103, line: 305, baseType: !202, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1879, file: !103, line: 307, baseType: !202, size: 8, offset: 8)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1879, file: !103, line: 308, baseType: !202, size: 8, offset: 16)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1879, file: !103, line: 309, baseType: !46, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !102, file: !103, line: 380, baseType: !1890, size: 64, offset: 4160)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !103, line: 212, size: 64, elements: !1891)
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1890, file: !103, line: 213, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !103, line: 86, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !102, file: !103, line: 381, baseType: !1896, size: 384, offset: 4224)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !103, line: 357, size: 384, elements: !1897)
!1897 = !{!1898, !1901, !1902, !1903}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1896, file: !103, line: 358, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1896, file: !103, line: 359, baseType: !161, size: 128, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1896, file: !103, line: 360, baseType: !1899, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1896, file: !103, line: 361, baseType: !161, size: 128, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !102, file: !103, line: 382, baseType: !1905, size: 64, offset: 4608)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !103, line: 124, size: 1216, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1915, !1919, !1923, !1924, !1925}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1906, file: !103, line: 125, baseType: !1287, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1906, file: !103, line: 126, baseType: !161, size: 128, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1906, file: !103, line: 127, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!137, !157, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1906, file: !103, line: 128, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!46, !101, !1287}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1906, file: !103, line: 129, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !101}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1906, file: !103, line: 130, baseType: !837, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1906, file: !103, line: 131, baseType: !837, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1906, file: !103, line: 132, baseType: !1926, size: 704, offset: 512)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !103, line: 110, size: 704, elements: !1927)
!1927 = !{!1928, !1929, !1933, !1934, !1935}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1926, file: !103, line: 111, baseType: !153, size: 512)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1926, file: !103, line: 112, baseType: !1930, size: 64, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!46, !101}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1926, file: !103, line: 113, baseType: !1920, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1926, file: !103, line: 114, baseType: !137, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1926, file: !103, line: 115, baseType: !137, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !102, file: !103, line: 383, baseType: !1937, size: 64, offset: 4672)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !103, line: 140, size: 256, elements: !1939)
!1939 = !{!1940, !1941, !1945, !1949}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1938, file: !103, line: 141, baseType: !101, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1938, file: !103, line: 142, baseType: !1942, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!46, !101, !106}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1938, file: !103, line: 143, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !101, !106}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1938, file: !103, line: 144, baseType: !1920, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !102, file: !103, line: 384, baseType: !1951, size: 64, offset: 4736)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !103, line: 364, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !102, file: !103, line: 385, baseType: !100, size: 64, offset: 4800)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !102, file: !103, line: 386, baseType: !150, size: 5824, offset: 4864)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !102, file: !103, line: 387, baseType: !7, size: 32, offset: 10688)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !102, file: !103, line: 388, baseType: !7, size: 32, offset: 10720)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !102, file: !103, line: 389, baseType: !161, size: 128, offset: 10752)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !102, file: !103, line: 390, baseType: !500, size: 256, offset: 10880)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !102, file: !103, line: 391, baseType: !1920, size: 64, offset: 11136)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !138, line: 154, baseType: !7)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_wakeup_handler", file: !3, line: 15, size: 256, elements: !1964)
!1964 = !{!1965, !1966, !1970}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1963, file: !3, line: 16, baseType: !161, size: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1963, file: !3, line: 17, baseType: !1967, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!137, !100}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1963, file: !3, line: 18, baseType: !100, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!1973 = !{!1974, !1976, !1978, !0, !1983}
!1974 = !DIGlobalVariableExpression(var: !1975, expr: !DIExpression())
!1975 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_register_wakeup_handler206", scope: !2, file: !3, line: 136, type: !100, isLocal: true, isDefinition: true)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_unregister_wakeup_handler207", scope: !2, file: !3, line: 158, type: !100, isLocal: true, isDefinition: true)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(scope: null, file: !90, line: 480, type: !1980, isLocal: true, isDefinition: true)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 168, elements: !1981)
!1981 = !{!1982}
!1982 = !DISubrange(count: 21)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(name: "acpi_wakeup_handler_head", scope: !2, file: !3, line: 21, type: !161, isLocal: true, isDefinition: true)
!1985 = !{i32 7, !"Dwarf Version", i32 5}
!1986 = !{i32 2, !"Debug Info Version", i32 3}
!1987 = !{i32 1, !"wchar_size", i32 2}
!1988 = !{i32 8, !"cf-protection-branch", i32 1}
!1989 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1990 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1991 = !{i32 1, !"Code Model", i32 2}
!1992 = !{i32 1, !"override-stack-alignment", i32 8}
!1993 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1994 = distinct !DISubprogram(name: "acpi_enable_wakeup_devices", scope: !3, file: !3, line: 38, type: !1995, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !202}
!1997 = !{!1998, !1999, !2000, !2001, !2004, !2006}
!1998 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !1994, file: !3, line: 38, type: !202)
!1999 = !DILocalVariable(name: "dev", scope: !1994, file: !3, line: 40, type: !101)
!2000 = !DILocalVariable(name: "tmp", scope: !1994, file: !3, line: 40, type: !101)
!2001 = !DILocalVariable(name: "__mptr", scope: !2002, file: !3, line: 42, type: !100)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 42, column: 2)
!2003 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 42, column: 2)
!2004 = !DILocalVariable(name: "__mptr", scope: !2005, file: !3, line: 42, type: !100)
!2005 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 42, column: 2)
!2006 = !DILocalVariable(name: "__mptr", scope: !2007, file: !3, line: 42, type: !100)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 42, column: 2)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 42, column: 2)
!2009 = !DILocation(line: 38, column: 36, scope: !1994)
!2010 = !DILocation(line: 40, column: 2, scope: !1994)
!2011 = !DILocation(line: 40, column: 22, scope: !1994)
!2012 = !DILocation(line: 40, column: 28, scope: !1994)
!2013 = !DILocation(line: 42, column: 2, scope: !2002)
!2014 = !DILocation(line: 42, column: 2, scope: !2003)
!2015 = !DILocation(line: 42, column: 2, scope: !2005)
!2016 = !DILocation(line: 42, column: 2, scope: !2008)
!2017 = !DILocation(line: 44, column: 8, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 44, column: 7)
!2019 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 43, column: 19)
!2020 = !DILocation(line: 44, column: 13, scope: !2018)
!2021 = !DILocation(line: 44, column: 20, scope: !2018)
!2022 = !DILocation(line: 44, column: 26, scope: !2018)
!2023 = !DILocation(line: 45, column: 7, scope: !2018)
!2024 = !DILocation(line: 45, column: 10, scope: !2018)
!2025 = !DILocation(line: 45, column: 30, scope: !2018)
!2026 = !DILocation(line: 45, column: 35, scope: !2018)
!2027 = !DILocation(line: 45, column: 42, scope: !2018)
!2028 = !DILocation(line: 45, column: 24, scope: !2018)
!2029 = !DILocation(line: 45, column: 22, scope: !2018)
!2030 = !DILocation(line: 46, column: 7, scope: !2018)
!2031 = !DILocation(line: 46, column: 31, scope: !2018)
!2032 = !DILocation(line: 46, column: 36, scope: !2018)
!2033 = !DILocation(line: 46, column: 12, scope: !2018)
!2034 = !DILocation(line: 47, column: 5, scope: !2018)
!2035 = !DILocation(line: 47, column: 8, scope: !2018)
!2036 = !DILocation(line: 47, column: 13, scope: !2018)
!2037 = !DILocation(line: 47, column: 20, scope: !2018)
!2038 = !DILocation(line: 44, column: 7, scope: !2019)
!2039 = !DILocation(line: 48, column: 4, scope: !2018)
!2040 = !DILocation(line: 50, column: 26, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 50, column: 7)
!2042 = !DILocation(line: 50, column: 31, scope: !2041)
!2043 = !DILocation(line: 50, column: 7, scope: !2041)
!2044 = !DILocation(line: 50, column: 7, scope: !2019)
!2045 = !DILocation(line: 51, column: 36, scope: !2041)
!2046 = !DILocation(line: 51, column: 41, scope: !2041)
!2047 = !DILocation(line: 51, column: 4, scope: !2041)
!2048 = !DILocation(line: 54, column: 26, scope: !2019)
!2049 = !DILocation(line: 54, column: 31, scope: !2019)
!2050 = !DILocation(line: 54, column: 38, scope: !2019)
!2051 = !DILocation(line: 54, column: 50, scope: !2019)
!2052 = !DILocation(line: 54, column: 55, scope: !2019)
!2053 = !DILocation(line: 54, column: 62, scope: !2019)
!2054 = !DILocation(line: 54, column: 3, scope: !2019)
!2055 = !DILocation(line: 56, column: 2, scope: !2019)
!2056 = !DILocation(line: 42, column: 2, scope: !2007)
!2057 = distinct !{!2057, !2014, !2058, !2059, !2060}
!2058 = !DILocation(line: 56, column: 2, scope: !2003)
!2059 = !{!"llvm.loop.mustprogress"}
!2060 = !{!"llvm.loop.unroll.disable"}
!2061 = !DILocation(line: 57, column: 1, scope: !1994)
!2062 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1369, file: !1369, line: 82, type: !2063, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!137, !815}
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "dev", arg: 1, scope: !2062, file: !1369, line: 82, type: !815)
!2067 = !DILocation(line: 82, column: 53, scope: !2062)
!2068 = !DILocation(line: 84, column: 9, scope: !2062)
!2069 = !DILocation(line: 84, column: 14, scope: !2062)
!2070 = !DILocation(line: 84, column: 20, scope: !2062)
!2071 = !DILocation(line: 84, column: 31, scope: !2062)
!2072 = !DILocation(line: 84, column: 36, scope: !2062)
!2073 = !DILocation(line: 84, column: 41, scope: !2062)
!2074 = !DILocation(line: 84, column: 47, scope: !2062)
!2075 = !DILocation(line: 84, column: 35, scope: !2062)
!2076 = !DILocation(line: 84, column: 34, scope: !2062)
!2077 = !DILocation(line: 0, scope: !2062)
!2078 = !DILocation(line: 84, column: 2, scope: !2062)
!2079 = !DISubprogram(name: "acpi_enable_wakeup_device_power", scope: !103, file: !103, line: 647, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!46, !101, !46}
!2082 = !DISubprogram(name: "acpi_set_gpe_wake_mask", scope: !2083, file: !2083, line: 755, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!2086, !112, !106, !202}
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !113, line: 421, baseType: !106)
!2087 = distinct !DISubprogram(name: "acpi_disable_wakeup_devices", scope: !3, file: !3, line: 63, type: !1995, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2095, !2097}
!2089 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !2087, file: !3, line: 63, type: !202)
!2090 = !DILocalVariable(name: "dev", scope: !2087, file: !3, line: 65, type: !101)
!2091 = !DILocalVariable(name: "tmp", scope: !2087, file: !3, line: 65, type: !101)
!2092 = !DILocalVariable(name: "__mptr", scope: !2093, file: !3, line: 67, type: !100)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 67, column: 2)
!2094 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 67, column: 2)
!2095 = !DILocalVariable(name: "__mptr", scope: !2096, file: !3, line: 67, type: !100)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 67, column: 2)
!2097 = !DILocalVariable(name: "__mptr", scope: !2098, file: !3, line: 67, type: !100)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 67, column: 2)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 67, column: 2)
!2100 = !DILocation(line: 63, column: 37, scope: !2087)
!2101 = !DILocation(line: 65, column: 2, scope: !2087)
!2102 = !DILocation(line: 65, column: 22, scope: !2087)
!2103 = !DILocation(line: 65, column: 28, scope: !2087)
!2104 = !DILocation(line: 67, column: 2, scope: !2093)
!2105 = !DILocation(line: 67, column: 2, scope: !2094)
!2106 = !DILocation(line: 67, column: 2, scope: !2096)
!2107 = !DILocation(line: 67, column: 2, scope: !2099)
!2108 = !DILocation(line: 69, column: 8, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 69, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 68, column: 19)
!2111 = !DILocation(line: 69, column: 13, scope: !2109)
!2112 = !DILocation(line: 69, column: 20, scope: !2109)
!2113 = !DILocation(line: 69, column: 26, scope: !2109)
!2114 = !DILocation(line: 70, column: 7, scope: !2109)
!2115 = !DILocation(line: 70, column: 10, scope: !2109)
!2116 = !DILocation(line: 70, column: 30, scope: !2109)
!2117 = !DILocation(line: 70, column: 35, scope: !2109)
!2118 = !DILocation(line: 70, column: 42, scope: !2109)
!2119 = !DILocation(line: 70, column: 24, scope: !2109)
!2120 = !DILocation(line: 70, column: 22, scope: !2109)
!2121 = !DILocation(line: 71, column: 7, scope: !2109)
!2122 = !DILocation(line: 71, column: 31, scope: !2109)
!2123 = !DILocation(line: 71, column: 36, scope: !2109)
!2124 = !DILocation(line: 71, column: 12, scope: !2109)
!2125 = !DILocation(line: 72, column: 5, scope: !2109)
!2126 = !DILocation(line: 72, column: 8, scope: !2109)
!2127 = !DILocation(line: 72, column: 13, scope: !2109)
!2128 = !DILocation(line: 72, column: 20, scope: !2109)
!2129 = !DILocation(line: 69, column: 7, scope: !2110)
!2130 = !DILocation(line: 73, column: 4, scope: !2109)
!2131 = !DILocation(line: 75, column: 26, scope: !2110)
!2132 = !DILocation(line: 75, column: 31, scope: !2110)
!2133 = !DILocation(line: 75, column: 38, scope: !2110)
!2134 = !DILocation(line: 75, column: 50, scope: !2110)
!2135 = !DILocation(line: 75, column: 55, scope: !2110)
!2136 = !DILocation(line: 75, column: 62, scope: !2110)
!2137 = !DILocation(line: 75, column: 3, scope: !2110)
!2138 = !DILocation(line: 78, column: 26, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 78, column: 7)
!2140 = !DILocation(line: 78, column: 31, scope: !2139)
!2141 = !DILocation(line: 78, column: 7, scope: !2139)
!2142 = !DILocation(line: 78, column: 7, scope: !2110)
!2143 = !DILocation(line: 79, column: 37, scope: !2139)
!2144 = !DILocation(line: 79, column: 4, scope: !2139)
!2145 = !DILocation(line: 80, column: 2, scope: !2110)
!2146 = !DILocation(line: 67, column: 2, scope: !2098)
!2147 = distinct !{!2147, !2105, !2148, !2059, !2060}
!2148 = !DILocation(line: 80, column: 2, scope: !2094)
!2149 = !DILocation(line: 81, column: 1, scope: !2087)
!2150 = !DISubprogram(name: "acpi_disable_wakeup_device_power", scope: !103, file: !103, line: 648, type: !1931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = distinct !DISubprogram(name: "acpi_wakeup_device_init", scope: !3, file: !3, line: 83, type: !1025, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2152)
!2152 = !{!2153, !2154, !2155, !2158, !2160}
!2153 = !DILocalVariable(name: "dev", scope: !2151, file: !3, line: 85, type: !101)
!2154 = !DILocalVariable(name: "tmp", scope: !2151, file: !3, line: 85, type: !101)
!2155 = !DILocalVariable(name: "__mptr", scope: !2156, file: !3, line: 88, type: !100)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 88, column: 2)
!2157 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 88, column: 2)
!2158 = !DILocalVariable(name: "__mptr", scope: !2159, file: !3, line: 88, type: !100)
!2159 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 88, column: 2)
!2160 = !DILocalVariable(name: "__mptr", scope: !2161, file: !3, line: 88, type: !100)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 88, column: 2)
!2162 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 88, column: 2)
!2163 = !DILocation(line: 85, column: 2, scope: !2151)
!2164 = !DILocation(line: 85, column: 22, scope: !2151)
!2165 = !DILocation(line: 85, column: 28, scope: !2151)
!2166 = !DILocation(line: 87, column: 2, scope: !2151)
!2167 = !DILocation(line: 88, column: 2, scope: !2156)
!2168 = !DILocation(line: 88, column: 2, scope: !2157)
!2169 = !DILocation(line: 88, column: 2, scope: !2159)
!2170 = !DILocation(line: 88, column: 2, scope: !2162)
!2171 = !DILocation(line: 90, column: 26, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 90, column: 7)
!2173 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 89, column: 19)
!2174 = !DILocation(line: 90, column: 31, scope: !2172)
!2175 = !DILocation(line: 90, column: 7, scope: !2172)
!2176 = !DILocation(line: 90, column: 7, scope: !2173)
!2177 = !DILocation(line: 92, column: 20, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 90, column: 37)
!2179 = !DILocation(line: 92, column: 25, scope: !2178)
!2180 = !DILocation(line: 92, column: 32, scope: !2178)
!2181 = !DILocation(line: 93, column: 6, scope: !2178)
!2182 = !DILocation(line: 93, column: 11, scope: !2178)
!2183 = !DILocation(line: 93, column: 18, scope: !2178)
!2184 = !DILocation(line: 92, column: 4, scope: !2178)
!2185 = !DILocation(line: 94, column: 30, scope: !2178)
!2186 = !DILocation(line: 94, column: 35, scope: !2178)
!2187 = !DILocation(line: 94, column: 4, scope: !2178)
!2188 = !DILocation(line: 95, column: 3, scope: !2178)
!2189 = !DILocation(line: 96, column: 2, scope: !2173)
!2190 = !DILocation(line: 88, column: 2, scope: !2161)
!2191 = distinct !{!2191, !2168, !2192, !2059, !2060}
!2192 = !DILocation(line: 96, column: 2, scope: !2157)
!2193 = !DILocation(line: 97, column: 2, scope: !2151)
!2194 = !DILocation(line: 99, column: 1, scope: !2151)
!2195 = !DILocation(line: 98, column: 2, scope: !2151)
!2196 = !DISubprogram(name: "mutex_lock", scope: !501, file: !501, line: 227, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!2200 = distinct !DISubprogram(name: "device_can_wakeup", scope: !1369, file: !1369, line: 77, type: !2063, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "dev", arg: 1, scope: !2200, file: !1369, line: 77, type: !815)
!2203 = !DILocation(line: 77, column: 53, scope: !2200)
!2204 = !DILocation(line: 79, column: 9, scope: !2200)
!2205 = !DILocation(line: 79, column: 14, scope: !2200)
!2206 = !DILocation(line: 79, column: 20, scope: !2200)
!2207 = !DILocation(line: 79, column: 2, scope: !2200)
!2208 = !DISubprogram(name: "acpi_enable_gpe", scope: !2083, file: !2083, line: 722, type: !2209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2086, !112, !106}
!2211 = !DISubprogram(name: "device_set_wakeup_enable", scope: !1369, file: !1369, line: 112, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!46, !815, !137}
!2214 = !DISubprogram(name: "mutex_unlock", scope: !501, file: !501, line: 246, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2215 = distinct !DISubprogram(name: "acpi_register_wakeup_handler", scope: !3, file: !3, line: 111, type: !2216, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!46, !46, !1967, !100}
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DILocalVariable(name: "wake_irq", arg: 1, scope: !2215, file: !3, line: 111, type: !46)
!2220 = !DILocalVariable(name: "wakeup", arg: 2, scope: !2215, file: !3, line: 111, type: !1967)
!2221 = !DILocalVariable(name: "context", arg: 3, scope: !2215, file: !3, line: 112, type: !100)
!2222 = !DILocalVariable(name: "handler", scope: !2215, file: !3, line: 114, type: !1962)
!2223 = !DILocation(line: 111, column: 38, scope: !2215)
!2224 = !DILocation(line: 111, column: 55, scope: !2215)
!2225 = !DILocation(line: 112, column: 12, scope: !2215)
!2226 = !DILocation(line: 114, column: 2, scope: !2215)
!2227 = !DILocation(line: 114, column: 30, scope: !2215)
!2228 = !DILocation(line: 120, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 120, column: 6)
!2230 = !DILocation(line: 120, column: 28, scope: !2229)
!2231 = !DILocation(line: 120, column: 31, scope: !2229)
!2232 = !DILocation(line: 120, column: 43, scope: !2229)
!2233 = !DILocation(line: 120, column: 40, scope: !2229)
!2234 = !DILocation(line: 120, column: 6, scope: !2215)
!2235 = !DILocation(line: 121, column: 3, scope: !2229)
!2236 = !DILocation(line: 123, column: 12, scope: !2215)
!2237 = !DILocation(line: 123, column: 10, scope: !2215)
!2238 = !DILocation(line: 124, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 124, column: 6)
!2240 = !DILocation(line: 124, column: 6, scope: !2215)
!2241 = !DILocation(line: 125, column: 3, scope: !2239)
!2242 = !DILocation(line: 127, column: 20, scope: !2215)
!2243 = !DILocation(line: 127, column: 2, scope: !2215)
!2244 = !DILocation(line: 127, column: 11, scope: !2215)
!2245 = !DILocation(line: 127, column: 18, scope: !2215)
!2246 = !DILocation(line: 128, column: 21, scope: !2215)
!2247 = !DILocation(line: 128, column: 2, scope: !2215)
!2248 = !DILocation(line: 128, column: 11, scope: !2215)
!2249 = !DILocation(line: 128, column: 19, scope: !2215)
!2250 = !DILocation(line: 130, column: 2, scope: !2215)
!2251 = !DILocation(line: 131, column: 12, scope: !2215)
!2252 = !DILocation(line: 131, column: 21, scope: !2215)
!2253 = !DILocation(line: 131, column: 2, scope: !2215)
!2254 = !DILocation(line: 132, column: 2, scope: !2215)
!2255 = !DILocation(line: 134, column: 2, scope: !2215)
!2256 = !DILocation(line: 135, column: 1, scope: !2215)
!2257 = distinct !DISubprogram(name: "acpi_sci_irq_valid", scope: !2258, file: !2258, line: 339, type: !641, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2258 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2259 = !DILocation(line: 341, column: 9, scope: !2257)
!2260 = !DILocation(line: 341, column: 22, scope: !2257)
!2261 = !DILocation(line: 341, column: 2, scope: !2257)
!2262 = distinct !DISubprogram(name: "kmalloc", scope: !90, file: !90, line: 591, type: !2263, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!100, !289, !1961}
!2265 = !{!2266, !2267, !2268}
!2266 = !DILocalVariable(name: "size", arg: 1, scope: !2262, file: !90, line: 591, type: !289)
!2267 = !DILocalVariable(name: "flags", arg: 2, scope: !2262, file: !90, line: 591, type: !1961)
!2268 = !DILocalVariable(name: "index", scope: !2269, file: !90, line: 594, type: !7)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !90, line: 593, column: 42)
!2270 = distinct !DILexicalBlock(scope: !2262, file: !90, line: 593, column: 6)
!2271 = !DILocation(line: 591, column: 61, scope: !2262)
!2272 = !DILocation(line: 591, column: 73, scope: !2262)
!2273 = !DILocation(line: 593, column: 27, scope: !2270)
!2274 = !DILocation(line: 593, column: 6, scope: !2270)
!2275 = !DILocation(line: 593, column: 33, scope: !2270)
!2276 = !DILocation(line: 593, column: 36, scope: !2270)
!2277 = !DILocation(line: 593, column: 6, scope: !2262)
!2278 = !DILocation(line: 594, column: 3, scope: !2269)
!2279 = !DILocation(line: 594, column: 16, scope: !2269)
!2280 = !DILocation(line: 596, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2269, file: !90, line: 596, column: 7)
!2282 = !DILocation(line: 596, column: 12, scope: !2281)
!2283 = !DILocation(line: 596, column: 7, scope: !2269)
!2284 = !DILocation(line: 597, column: 25, scope: !2281)
!2285 = !DILocation(line: 597, column: 31, scope: !2281)
!2286 = !DILocation(line: 597, column: 11, scope: !2281)
!2287 = !DILocation(line: 597, column: 4, scope: !2281)
!2288 = !DILocation(line: 599, column: 11, scope: !2269)
!2289 = !DILocation(line: 599, column: 9, scope: !2269)
!2290 = !DILocation(line: 601, column: 33, scope: !2269)
!2291 = !DILocation(line: 601, column: 40, scope: !2269)
!2292 = !DILocation(line: 601, column: 20, scope: !2269)
!2293 = !DILocation(line: 601, column: 5, scope: !2269)
!2294 = !DILocation(line: 601, column: 51, scope: !2269)
!2295 = !DILocation(line: 602, column: 5, scope: !2269)
!2296 = !DILocation(line: 602, column: 12, scope: !2269)
!2297 = !DILocation(line: 600, column: 10, scope: !2269)
!2298 = !DILocation(line: 600, column: 3, scope: !2269)
!2299 = !DILocation(line: 603, column: 2, scope: !2270)
!2300 = !DILocation(line: 604, column: 19, scope: !2262)
!2301 = !DILocation(line: 604, column: 25, scope: !2262)
!2302 = !DILocation(line: 604, column: 9, scope: !2262)
!2303 = !DILocation(line: 604, column: 2, scope: !2262)
!2304 = !DILocation(line: 605, column: 1, scope: !2262)
!2305 = distinct !DISubprogram(name: "list_add", scope: !2306, file: !2306, line: 167, type: !2307, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2309)
!2306 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !164, !164}
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "new", arg: 1, scope: !2305, file: !2306, line: 167, type: !164)
!2311 = !DILocalVariable(name: "head", arg: 2, scope: !2305, file: !2306, line: 167, type: !164)
!2312 = !DILocation(line: 167, column: 47, scope: !2305)
!2313 = !DILocation(line: 167, column: 70, scope: !2305)
!2314 = !DILocation(line: 169, column: 13, scope: !2305)
!2315 = !DILocation(line: 169, column: 18, scope: !2305)
!2316 = !DILocation(line: 169, column: 24, scope: !2305)
!2317 = !DILocation(line: 169, column: 30, scope: !2305)
!2318 = !DILocation(line: 169, column: 2, scope: !2305)
!2319 = !DILocation(line: 170, column: 1, scope: !2305)
!2320 = distinct !DISubprogram(name: "acpi_unregister_wakeup_handler", scope: !3, file: !3, line: 143, type: !2321, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !1967, !100}
!2323 = !{!2324, !2325, !2326, !2327, !2330}
!2324 = !DILocalVariable(name: "wakeup", arg: 1, scope: !2320, file: !3, line: 143, type: !1967)
!2325 = !DILocalVariable(name: "context", arg: 2, scope: !2320, file: !3, line: 144, type: !100)
!2326 = !DILocalVariable(name: "handler", scope: !2320, file: !3, line: 146, type: !1962)
!2327 = !DILocalVariable(name: "__mptr", scope: !2328, file: !3, line: 149, type: !100)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 149, column: 2)
!2329 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 149, column: 2)
!2330 = !DILocalVariable(name: "__mptr", scope: !2331, file: !3, line: 149, type: !100)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 149, column: 2)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 149, column: 2)
!2333 = !DILocation(line: 143, column: 44, scope: !2320)
!2334 = !DILocation(line: 144, column: 15, scope: !2320)
!2335 = !DILocation(line: 146, column: 2, scope: !2320)
!2336 = !DILocation(line: 146, column: 30, scope: !2320)
!2337 = !DILocation(line: 148, column: 2, scope: !2320)
!2338 = !DILocation(line: 149, column: 2, scope: !2328)
!2339 = !DILocation(line: 149, column: 2, scope: !2329)
!2340 = !DILocation(line: 149, column: 2, scope: !2332)
!2341 = !DILocation(line: 150, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 150, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 149, column: 69)
!2344 = !DILocation(line: 150, column: 16, scope: !2342)
!2345 = !DILocation(line: 150, column: 26, scope: !2342)
!2346 = !DILocation(line: 150, column: 23, scope: !2342)
!2347 = !DILocation(line: 150, column: 33, scope: !2342)
!2348 = !DILocation(line: 150, column: 36, scope: !2342)
!2349 = !DILocation(line: 150, column: 45, scope: !2342)
!2350 = !DILocation(line: 150, column: 56, scope: !2342)
!2351 = !DILocation(line: 150, column: 53, scope: !2342)
!2352 = !DILocation(line: 150, column: 7, scope: !2343)
!2353 = !DILocation(line: 151, column: 14, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 150, column: 65)
!2355 = !DILocation(line: 151, column: 23, scope: !2354)
!2356 = !DILocation(line: 151, column: 4, scope: !2354)
!2357 = !DILocation(line: 152, column: 10, scope: !2354)
!2358 = !DILocation(line: 152, column: 4, scope: !2354)
!2359 = !DILocation(line: 153, column: 4, scope: !2354)
!2360 = !DILocation(line: 155, column: 2, scope: !2343)
!2361 = !DILocation(line: 149, column: 2, scope: !2331)
!2362 = distinct !{!2362, !2339, !2363, !2059, !2060}
!2363 = !DILocation(line: 155, column: 2, scope: !2329)
!2364 = !DILocation(line: 156, column: 2, scope: !2320)
!2365 = !DILocation(line: 157, column: 1, scope: !2320)
!2366 = distinct !DISubprogram(name: "list_del", scope: !2306, file: !2306, line: 227, type: !2367, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !164}
!2369 = !{!2370}
!2370 = !DILocalVariable(name: "entry", arg: 1, scope: !2366, file: !2306, line: 227, type: !164)
!2371 = !DILocation(line: 227, column: 47, scope: !2366)
!2372 = !DILocation(line: 229, column: 19, scope: !2366)
!2373 = !DILocation(line: 229, column: 2, scope: !2366)
!2374 = !DILocation(line: 230, column: 2, scope: !2366)
!2375 = !DILocation(line: 230, column: 9, scope: !2366)
!2376 = !DILocation(line: 230, column: 14, scope: !2366)
!2377 = !DILocation(line: 231, column: 2, scope: !2366)
!2378 = !DILocation(line: 231, column: 9, scope: !2366)
!2379 = !DILocation(line: 231, column: 14, scope: !2366)
!2380 = !DILocation(line: 232, column: 1, scope: !2366)
!2381 = !DISubprogram(name: "kfree", scope: !90, file: !90, line: 227, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !146}
!2384 = distinct !DISubprogram(name: "acpi_check_wakeup_handlers", scope: !3, file: !3, line: 160, type: !641, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2385)
!2385 = !{!2386, !2387, !2390}
!2386 = !DILocalVariable(name: "handler", scope: !2384, file: !3, line: 162, type: !1962)
!2387 = !DILocalVariable(name: "__mptr", scope: !2388, file: !3, line: 165, type: !100)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 165, column: 2)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 165, column: 2)
!2390 = !DILocalVariable(name: "__mptr", scope: !2391, file: !3, line: 165, type: !100)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 165, column: 2)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 165, column: 2)
!2393 = !DILocation(line: 162, column: 2, scope: !2384)
!2394 = !DILocation(line: 162, column: 30, scope: !2384)
!2395 = !DILocation(line: 165, column: 2, scope: !2388)
!2396 = !DILocation(line: 165, column: 2, scope: !2389)
!2397 = !DILocation(line: 165, column: 2, scope: !2392)
!2398 = !DILocation(line: 166, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 166, column: 7)
!2400 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 165, column: 69)
!2401 = !DILocation(line: 166, column: 16, scope: !2399)
!2402 = !DILocation(line: 166, column: 23, scope: !2399)
!2403 = !DILocation(line: 166, column: 32, scope: !2399)
!2404 = !DILocation(line: 166, column: 7, scope: !2400)
!2405 = !DILocation(line: 167, column: 4, scope: !2399)
!2406 = !DILocation(line: 168, column: 2, scope: !2400)
!2407 = !DILocation(line: 165, column: 2, scope: !2391)
!2408 = distinct !{!2408, !2396, !2409, !2059, !2060}
!2409 = !DILocation(line: 168, column: 2, scope: !2389)
!2410 = !DILocation(line: 170, column: 2, scope: !2384)
!2411 = !DILocation(line: 171, column: 1, scope: !2384)
!2412 = !DISubprogram(name: "kmalloc_large", scope: !90, file: !90, line: 531, type: !2263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2413 = distinct !DISubprogram(name: "__kmalloc_index", scope: !90, file: !90, line: 444, type: !2414, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!7, !289, !137}
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "size", arg: 1, scope: !2413, file: !90, line: 444, type: !289)
!2418 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2413, file: !90, line: 445, type: !137)
!2419 = !DILocation(line: 444, column: 60, scope: !2413)
!2420 = !DILocation(line: 445, column: 16, scope: !2413)
!2421 = !DILocation(line: 447, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 447, column: 6)
!2423 = !DILocation(line: 447, column: 6, scope: !2413)
!2424 = !DILocation(line: 448, column: 3, scope: !2422)
!2425 = !DILocation(line: 450, column: 6, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 450, column: 6)
!2427 = !DILocation(line: 450, column: 11, scope: !2426)
!2428 = !DILocation(line: 450, column: 6, scope: !2413)
!2429 = !DILocation(line: 451, column: 3, scope: !2426)
!2430 = !DILocation(line: 453, column: 32, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 453, column: 6)
!2432 = !DILocation(line: 453, column: 37, scope: !2431)
!2433 = !DILocation(line: 453, column: 42, scope: !2431)
!2434 = !DILocation(line: 453, column: 45, scope: !2431)
!2435 = !DILocation(line: 453, column: 50, scope: !2431)
!2436 = !DILocation(line: 453, column: 6, scope: !2413)
!2437 = !DILocation(line: 454, column: 3, scope: !2431)
!2438 = !DILocation(line: 455, column: 32, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 455, column: 6)
!2440 = !DILocation(line: 455, column: 37, scope: !2439)
!2441 = !DILocation(line: 455, column: 43, scope: !2439)
!2442 = !DILocation(line: 455, column: 46, scope: !2439)
!2443 = !DILocation(line: 455, column: 51, scope: !2439)
!2444 = !DILocation(line: 455, column: 6, scope: !2413)
!2445 = !DILocation(line: 456, column: 3, scope: !2439)
!2446 = !DILocation(line: 457, column: 6, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 457, column: 6)
!2448 = !DILocation(line: 457, column: 11, scope: !2447)
!2449 = !DILocation(line: 457, column: 6, scope: !2413)
!2450 = !DILocation(line: 457, column: 26, scope: !2447)
!2451 = !DILocation(line: 458, column: 6, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 458, column: 6)
!2453 = !DILocation(line: 458, column: 11, scope: !2452)
!2454 = !DILocation(line: 458, column: 6, scope: !2413)
!2455 = !DILocation(line: 458, column: 26, scope: !2452)
!2456 = !DILocation(line: 459, column: 6, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 459, column: 6)
!2458 = !DILocation(line: 459, column: 11, scope: !2457)
!2459 = !DILocation(line: 459, column: 6, scope: !2413)
!2460 = !DILocation(line: 459, column: 26, scope: !2457)
!2461 = !DILocation(line: 460, column: 6, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 460, column: 6)
!2463 = !DILocation(line: 460, column: 11, scope: !2462)
!2464 = !DILocation(line: 460, column: 6, scope: !2413)
!2465 = !DILocation(line: 460, column: 26, scope: !2462)
!2466 = !DILocation(line: 461, column: 6, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 461, column: 6)
!2468 = !DILocation(line: 461, column: 11, scope: !2467)
!2469 = !DILocation(line: 461, column: 6, scope: !2413)
!2470 = !DILocation(line: 461, column: 26, scope: !2467)
!2471 = !DILocation(line: 462, column: 6, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 462, column: 6)
!2473 = !DILocation(line: 462, column: 11, scope: !2472)
!2474 = !DILocation(line: 462, column: 6, scope: !2413)
!2475 = !DILocation(line: 462, column: 26, scope: !2472)
!2476 = !DILocation(line: 463, column: 6, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 463, column: 6)
!2478 = !DILocation(line: 463, column: 11, scope: !2477)
!2479 = !DILocation(line: 463, column: 6, scope: !2413)
!2480 = !DILocation(line: 463, column: 26, scope: !2477)
!2481 = !DILocation(line: 464, column: 6, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 464, column: 6)
!2483 = !DILocation(line: 464, column: 11, scope: !2482)
!2484 = !DILocation(line: 464, column: 6, scope: !2413)
!2485 = !DILocation(line: 464, column: 26, scope: !2482)
!2486 = !DILocation(line: 465, column: 6, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 465, column: 6)
!2488 = !DILocation(line: 465, column: 11, scope: !2487)
!2489 = !DILocation(line: 465, column: 6, scope: !2413)
!2490 = !DILocation(line: 465, column: 26, scope: !2487)
!2491 = !DILocation(line: 466, column: 6, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 466, column: 6)
!2493 = !DILocation(line: 466, column: 11, scope: !2492)
!2494 = !DILocation(line: 466, column: 6, scope: !2413)
!2495 = !DILocation(line: 466, column: 26, scope: !2492)
!2496 = !DILocation(line: 467, column: 6, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 467, column: 6)
!2498 = !DILocation(line: 467, column: 11, scope: !2497)
!2499 = !DILocation(line: 467, column: 6, scope: !2413)
!2500 = !DILocation(line: 467, column: 26, scope: !2497)
!2501 = !DILocation(line: 468, column: 6, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 468, column: 6)
!2503 = !DILocation(line: 468, column: 11, scope: !2502)
!2504 = !DILocation(line: 468, column: 6, scope: !2413)
!2505 = !DILocation(line: 468, column: 26, scope: !2502)
!2506 = !DILocation(line: 469, column: 6, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 469, column: 6)
!2508 = !DILocation(line: 469, column: 11, scope: !2507)
!2509 = !DILocation(line: 469, column: 6, scope: !2413)
!2510 = !DILocation(line: 469, column: 26, scope: !2507)
!2511 = !DILocation(line: 470, column: 6, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 470, column: 6)
!2513 = !DILocation(line: 470, column: 11, scope: !2512)
!2514 = !DILocation(line: 470, column: 6, scope: !2413)
!2515 = !DILocation(line: 470, column: 26, scope: !2512)
!2516 = !DILocation(line: 471, column: 6, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 471, column: 6)
!2518 = !DILocation(line: 471, column: 11, scope: !2517)
!2519 = !DILocation(line: 471, column: 6, scope: !2413)
!2520 = !DILocation(line: 471, column: 26, scope: !2517)
!2521 = !DILocation(line: 472, column: 6, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 472, column: 6)
!2523 = !DILocation(line: 472, column: 11, scope: !2522)
!2524 = !DILocation(line: 472, column: 6, scope: !2413)
!2525 = !DILocation(line: 472, column: 26, scope: !2522)
!2526 = !DILocation(line: 473, column: 6, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 473, column: 6)
!2528 = !DILocation(line: 473, column: 11, scope: !2527)
!2529 = !DILocation(line: 473, column: 6, scope: !2413)
!2530 = !DILocation(line: 473, column: 26, scope: !2527)
!2531 = !DILocation(line: 474, column: 6, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 474, column: 6)
!2533 = !DILocation(line: 474, column: 11, scope: !2532)
!2534 = !DILocation(line: 474, column: 6, scope: !2413)
!2535 = !DILocation(line: 474, column: 27, scope: !2532)
!2536 = !DILocation(line: 475, column: 6, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 475, column: 6)
!2538 = !DILocation(line: 475, column: 11, scope: !2537)
!2539 = !DILocation(line: 475, column: 6, scope: !2413)
!2540 = !DILocation(line: 475, column: 32, scope: !2537)
!2541 = !DILocation(line: 477, column: 50, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2413, file: !90, line: 477, column: 6)
!2543 = !{i8 0, i8 2}
!2544 = !DILocation(line: 477, column: 6, scope: !2413)
!2545 = !DILocation(line: 478, column: 3, scope: !2542)
!2546 = !DILocation(line: 478, column: 3, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !90, line: 478, column: 3)
!2548 = distinct !DILexicalBlock(scope: !2542, file: !90, line: 478, column: 3)
!2549 = !{i32 -2143465174}
!2550 = !DILocation(line: 478, column: 3, scope: !2548)
!2551 = !DILocation(line: 480, column: 3, scope: !2542)
!2552 = !DILocation(line: 480, column: 3, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2542, file: !90, line: 480, column: 3)
!2554 = !DILocation(line: 480, column: 3, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2553, file: !90, line: 480, column: 3)
!2556 = !DILocation(line: 480, column: 3, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !90, line: 480, column: 3)
!2558 = !{i64 2151502325, i64 2151502354, i64 2151502400, i64 2151502458, i64 2151502512, i64 2151502566, i64 2151502621, i64 2151502652}
!2559 = !DILocation(line: 483, column: 2, scope: !2413)
!2560 = !DILocation(line: 484, column: 1, scope: !2413)
!2561 = !DISubprogram(name: "kmalloc_trace", scope: !90, file: !90, line: 525, type: !2562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!100, !2564, !1961, !289}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2566, line: 11, flags: DIFlagFwdDecl)
!2566 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2567 = distinct !DISubprogram(name: "kmalloc_type", scope: !90, file: !90, line: 401, type: !2568, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!89, !1961, !292}
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "flags", arg: 1, scope: !2567, file: !90, line: 401, type: !1961)
!2572 = !DILocalVariable(name: "caller", arg: 2, scope: !2567, file: !90, line: 401, type: !292)
!2573 = !DILocation(line: 401, column: 67, scope: !2567)
!2574 = !DILocation(line: 401, column: 88, scope: !2567)
!2575 = !DILocation(line: 407, column: 6, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2567, file: !90, line: 407, column: 6)
!2577 = !DILocation(line: 407, column: 6, scope: !2567)
!2578 = !DILocation(line: 413, column: 3, scope: !2576)
!2579 = !DILocation(line: 423, column: 38, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2567, file: !90, line: 423, column: 6)
!2581 = !DILocation(line: 423, column: 44, scope: !2580)
!2582 = !DILocation(line: 423, column: 6, scope: !2567)
!2583 = !DILocation(line: 424, column: 3, scope: !2580)
!2584 = !DILocation(line: 426, column: 3, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2567, file: !90, line: 425, column: 6)
!2586 = !DILocation(line: 429, column: 1, scope: !2567)
!2587 = !DISubprogram(name: "__kmalloc", scope: !90, file: !90, line: 488, type: !2263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2588 = !DISubprogram(name: "__compiletime_assert_125", scope: !90, file: !90, line: 478, type: !1264, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2589 = distinct !DISubprogram(name: "__list_add", scope: !2306, file: !2306, line: 146, type: !2590, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !164, !164, !164}
!2592 = !{!2593, !2594, !2595}
!2593 = !DILocalVariable(name: "new", arg: 1, scope: !2589, file: !2306, line: 146, type: !164)
!2594 = !DILocalVariable(name: "prev", arg: 2, scope: !2589, file: !2306, line: 147, type: !164)
!2595 = !DILocalVariable(name: "next", arg: 3, scope: !2589, file: !2306, line: 148, type: !164)
!2596 = !DILocation(line: 146, column: 49, scope: !2589)
!2597 = !DILocation(line: 147, column: 28, scope: !2589)
!2598 = !DILocation(line: 148, column: 28, scope: !2589)
!2599 = !DILocation(line: 150, column: 24, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2589, file: !2306, line: 150, column: 6)
!2601 = !DILocation(line: 150, column: 29, scope: !2600)
!2602 = !DILocation(line: 150, column: 35, scope: !2600)
!2603 = !DILocation(line: 150, column: 7, scope: !2600)
!2604 = !DILocation(line: 150, column: 6, scope: !2589)
!2605 = !DILocation(line: 151, column: 3, scope: !2600)
!2606 = !DILocation(line: 153, column: 15, scope: !2589)
!2607 = !DILocation(line: 153, column: 2, scope: !2589)
!2608 = !DILocation(line: 153, column: 8, scope: !2589)
!2609 = !DILocation(line: 153, column: 13, scope: !2589)
!2610 = !DILocation(line: 154, column: 14, scope: !2589)
!2611 = !DILocation(line: 154, column: 2, scope: !2589)
!2612 = !DILocation(line: 154, column: 7, scope: !2589)
!2613 = !DILocation(line: 154, column: 12, scope: !2589)
!2614 = !DILocation(line: 155, column: 14, scope: !2589)
!2615 = !DILocation(line: 155, column: 2, scope: !2589)
!2616 = !DILocation(line: 155, column: 7, scope: !2589)
!2617 = !DILocation(line: 155, column: 12, scope: !2589)
!2618 = !DILocation(line: 156, column: 2, scope: !2589)
!2619 = !DILocation(line: 156, column: 2, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2589, file: !2306, line: 156, column: 2)
!2621 = !DILocation(line: 156, column: 2, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2620, file: !2306, line: 156, column: 2)
!2623 = !DILocation(line: 156, column: 2, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !2306, line: 156, column: 2)
!2625 = !DILocation(line: 157, column: 1, scope: !2589)
!2626 = distinct !DISubprogram(name: "__list_add_valid", scope: !2306, file: !2306, line: 128, type: !2627, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!137, !164, !164, !164}
!2629 = !{!2630, !2631, !2632}
!2630 = !DILocalVariable(name: "new", arg: 1, scope: !2626, file: !2306, line: 128, type: !164)
!2631 = !DILocalVariable(name: "prev", arg: 2, scope: !2626, file: !2306, line: 129, type: !164)
!2632 = !DILocalVariable(name: "next", arg: 3, scope: !2626, file: !2306, line: 130, type: !164)
!2633 = !DILocation(line: 128, column: 55, scope: !2626)
!2634 = !DILocation(line: 129, column: 23, scope: !2626)
!2635 = !DILocation(line: 130, column: 23, scope: !2626)
!2636 = !DILocation(line: 132, column: 2, scope: !2626)
!2637 = distinct !DISubprogram(name: "__list_del_entry", scope: !2306, file: !2306, line: 213, type: !2367, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2638)
!2638 = !{!2639}
!2639 = !DILocalVariable(name: "entry", arg: 1, scope: !2637, file: !2306, line: 213, type: !164)
!2640 = !DILocation(line: 213, column: 55, scope: !2637)
!2641 = !DILocation(line: 215, column: 30, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2637, file: !2306, line: 215, column: 6)
!2643 = !DILocation(line: 215, column: 7, scope: !2642)
!2644 = !DILocation(line: 215, column: 6, scope: !2637)
!2645 = !DILocation(line: 216, column: 3, scope: !2642)
!2646 = !DILocation(line: 218, column: 13, scope: !2637)
!2647 = !DILocation(line: 218, column: 20, scope: !2637)
!2648 = !DILocation(line: 218, column: 26, scope: !2637)
!2649 = !DILocation(line: 218, column: 33, scope: !2637)
!2650 = !DILocation(line: 218, column: 2, scope: !2637)
!2651 = !DILocation(line: 219, column: 1, scope: !2637)
!2652 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2306, file: !2306, line: 134, type: !2653, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!137, !164}
!2655 = !{!2656}
!2656 = !DILocalVariable(name: "entry", arg: 1, scope: !2652, file: !2306, line: 134, type: !164)
!2657 = !DILocation(line: 134, column: 61, scope: !2652)
!2658 = !DILocation(line: 136, column: 2, scope: !2652)
!2659 = distinct !DISubprogram(name: "__list_del", scope: !2306, file: !2306, line: 193, type: !2307, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2660)
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "prev", arg: 1, scope: !2659, file: !2306, line: 193, type: !164)
!2662 = !DILocalVariable(name: "next", arg: 2, scope: !2659, file: !2306, line: 193, type: !164)
!2663 = !DILocation(line: 193, column: 50, scope: !2659)
!2664 = !DILocation(line: 193, column: 75, scope: !2659)
!2665 = !DILocation(line: 195, column: 15, scope: !2659)
!2666 = !DILocation(line: 195, column: 2, scope: !2659)
!2667 = !DILocation(line: 195, column: 8, scope: !2659)
!2668 = !DILocation(line: 195, column: 13, scope: !2659)
!2669 = !DILocation(line: 196, column: 2, scope: !2659)
!2670 = !DILocation(line: 196, column: 2, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2659, file: !2306, line: 196, column: 2)
!2672 = !DILocation(line: 196, column: 2, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2671, file: !2306, line: 196, column: 2)
!2674 = !DILocation(line: 196, column: 2, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !2306, line: 196, column: 2)
!2676 = !DILocation(line: 197, column: 1, scope: !2659)
