; ModuleID = 'drivers/acpi/processor_perflib.c'
source_filename = "drivers/acpi/processor_perflib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_get_bios_limit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_get_bios_limit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_get_performance_info: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_get_performance_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_notify_smm: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_notify_smm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_get_psd: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_get_psd ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_preregister_performance: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_preregister_performance ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_register_performance: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_register_performance ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_unregister_performance: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_unregister_performance ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.cpuinfo_x86 = type { %union.anon.15, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.17, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { i64, [88 x i8] }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_buffer = type { i64, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.acpi_processor = type { ptr, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, ptr, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, ptr, ptr, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.3, i32 }
%union.anon.3 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_throttling = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, ptr, %struct.acpi_tsd_package, [1 x %struct.cpumask], ptr, ptr, i32, i8, i8, i8, i32, [16 x %struct.acpi_processor_tx] }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_tsd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_tx = type { i16, i16 }
%struct.acpi_processor_limit = type { %struct.acpi_processor_lx, %struct.acpi_processor_lx, %struct.acpi_processor_lx }
%struct.acpi_processor_lx = type { i32, i32 }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.acpi_processor_performance = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, ptr, %struct.acpi_psd_package, [1 x %struct.cpumask], i32 }
%struct.acpi_psd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%union.acpi_object = type { %struct.anon.23 }
%struct.anon.23 = type { i32, i32, i64, i32 }
%struct.anon.21 = type { i32, i32, ptr }
%struct.anon.20 = type { i32, i32, ptr }
%struct.anon.16 = type { i8, i8, i8, i8 }

@__param_str_ignore_ppc = internal constant [21 x i8] c"processor.ignore_ppc\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@ignore_ppc = internal global i32 -1, align 4, !dbg !2177
@__param_ignore_ppc = internal constant %struct.kernel_param { ptr @__param_str_ignore_ppc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.1 { ptr @ignore_ppc } }, section "__param", align 8, !dbg !2093
@__UNIQUE_ID_ignore_ppctype224 = internal constant [34 x i8] c"processor.parmtype=ignore_ppc:int\00", section ".modinfo", align 1, !dbg !2095
@__UNIQUE_ID_ignore_ppc225 = internal constant [105 x i8] c"processor.parm=ignore_ppc:If the frequency of your machine gets wronglylimited by BIOS, this should help\00", section ".modinfo", align 1, !dbg !2100
@processors = external dso_local global ptr, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable_acpi_processor_get_bios_limit226 = internal global ptr @acpi_processor_get_bios_limit, section ".discard.addressable", align 8, !dbg !2105
@.str = private unnamed_addr constant [54 x i8] c"\013ACPI: Failed to add freq constraint for CPU%d (%d)\0A\00", align 1, !dbg !2107
@.str.1 = private unnamed_addr constant [5 x i8] c"_PCT\00", align 1, !dbg !2112
@.str.2 = private unnamed_addr constant [5 x i8] c"_PPC\00", align 1, !dbg !2117
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"\014ACPI: [Firmware Bug]: BIOS needs update for CPU frequency support\0A\00", align 1, !dbg !2119
@__UNIQUE_ID___addressable_acpi_processor_get_performance_info227 = internal global ptr @acpi_processor_get_performance_info, section ".discard.addressable", align 8, !dbg !2124
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"\014ACPI: Failed to write pstate_control [0x%x] to smi_command [0x%x]: %s\0A\00", align 1, !dbg !2126
@acpi_processor_notify_smm.is_done = internal global i32 0, align 4, !dbg !2131
@acpi_processor_cpufreq_init = external dso_local global i8, align 1
@acpi_processor_ppc_in_use = internal global i8 0, align 1, !dbg !2175
@__UNIQUE_ID___addressable_acpi_processor_notify_smm228 = internal global ptr @acpi_processor_notify_smm, section ".discard.addressable", align 8, !dbg !2138
@__const.acpi_processor_get_psd.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"NNNNN\00", align 1, !dbg !2140
@__const.acpi_processor_get_psd.format = private unnamed_addr constant %struct.acpi_buffer { i64 6, ptr @.str.5 }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"_PSD\00", align 1, !dbg !2145
@.str.7 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _PSD data\0A\00", align 1, !dbg !2147
@.str.8 = private unnamed_addr constant [34 x i8] c"\013ACPI: Unknown _PSD:num_entries\0A\00", align 1, !dbg !2152
@.str.9 = private unnamed_addr constant [31 x i8] c"\013ACPI: Unknown _PSD:revision\0A\00", align 1, !dbg !2155
@.str.10 = private unnamed_addr constant [33 x i8] c"\013ACPI: Invalid _PSD:coord_type\0A\00", align 1, !dbg !2160
@__UNIQUE_ID___addressable_acpi_processor_get_psd229 = internal global ptr @acpi_processor_get_psd, section ".discard.addressable", align 8, !dbg !2165
@performance_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @performance_mutex, i64 16), ptr getelementptr (i8, ptr @performance_mutex, i64 16) } }, align 8, !dbg !2228
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_acpi_processor_preregister_performance230 = internal global ptr @acpi_processor_preregister_performance, section ".discard.addressable", align 8, !dbg !2167
@.str.11 = private unnamed_addr constant [33 x i8] c"drivers/acpi/processor_perflib.c\00", align 1, !dbg !2169
@__UNIQUE_ID___addressable_acpi_processor_register_performance231 = internal global ptr @acpi_processor_register_performance, section ".discard.addressable", align 8, !dbg !2171
@__UNIQUE_ID___addressable_acpi_processor_unregister_performance232 = internal global ptr @acpi_processor_unregister_performance, section ".discard.addressable", align 8, !dbg !2173
@.str.12 = private unnamed_addr constant [5 x i8] c"_OST\00", align 1, !dbg !2179
@.str.13 = private unnamed_addr constant [62 x i8] c"\014ACPI: Failed to update perflib freq constraint: CPU%d (%d)\0A\00", align 1, !dbg !2181
@__const.acpi_processor_get_performance_control.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@__const.acpi_processor_get_performance_control.obj = private unnamed_addr constant { i32, [20 x i8] } { i32 0, [20 x i8] undef }, align 8
@.str.14 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _PCT data\0A\00", align 1, !dbg !2186
@.str.15 = private unnamed_addr constant [46 x i8] c"\013ACPI: Invalid _PCT data (control_register)\0A\00", align 1, !dbg !2188
@.str.16 = private unnamed_addr constant [45 x i8] c"\013ACPI: Invalid _PCT data (status_register)\0A\00", align 1, !dbg !2193
@__const.acpi_processor_get_performance_states.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"NNNNNN\00", align 1, !dbg !2198
@__const.acpi_processor_get_performance_states.format = private unnamed_addr constant %struct.acpi_buffer { i64 7, ptr @.str.17 }, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"_PSS\00", align 1, !dbg !2201
@.str.19 = private unnamed_addr constant [27 x i8] c"\013ACPI: Invalid _PSS data\0A\00", align 1, !dbg !2203
@.str.20 = private unnamed_addr constant [3 x i8] c"\014\00", align 1, !dbg !2205
@.str.21 = private unnamed_addr constant [23 x i8] c"Invalid _PSS data: %s\0A\00", align 1, !dbg !2208
@.str.22 = private unnamed_addr constant [88 x i8] c"\013ACPI: [Firmware Bug]: Invalid BIOS _PSS frequency found for processor %d: 0x%llx MHz\0A\00", align 1, !dbg !2213
@.str.23 = private unnamed_addr constant [77 x i8] c"\013ACPI: [Firmware Bug]: No valid BIOS _PSS frequency found for processor %d\0A\00", align 1, !dbg !2218
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.24 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2223
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [10 x ptr] [ptr @__param_ignore_ppc, ptr @__UNIQUE_ID_ignore_ppctype224, ptr @__UNIQUE_ID_ignore_ppc225, ptr @__UNIQUE_ID___addressable_acpi_processor_get_bios_limit226, ptr @__UNIQUE_ID___addressable_acpi_processor_get_performance_info227, ptr @__UNIQUE_ID___addressable_acpi_processor_notify_smm228, ptr @__UNIQUE_ID___addressable_acpi_processor_get_psd229, ptr @__UNIQUE_ID___addressable_acpi_processor_preregister_performance230, ptr @__UNIQUE_ID___addressable_acpi_processor_register_performance231, ptr @__UNIQUE_ID___addressable_acpi_processor_unregister_performance232], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_ppc_has_changed(ptr noundef %pr, i32 noundef %event_flag) #0 align 16 !dbg !2240 {
entry:
  %pr.addr = alloca ptr, align 8
  %event_flag.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !2244, metadata !DIExpression()), !dbg !2247
  store i32 %event_flag, ptr %event_flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event_flag.addr, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2249
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2246, metadata !DIExpression()), !dbg !2250
  %0 = load i32, ptr @ignore_ppc, align 4, !dbg !2251
  %tobool = icmp ne i32 %0, 0, !dbg !2251
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2253

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !2254
  %performance = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 9, !dbg !2255
  %2 = load ptr, ptr %performance, align 8, !dbg !2255
  %tobool1 = icmp ne ptr %2, null, !dbg !2254
  br i1 %tobool1, label %if.end4, label %if.then, !dbg !2256

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, ptr %event_flag.addr, align 4, !dbg !2257
  %tobool2 = icmp ne i32 %3, 0, !dbg !2257
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2260

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %pr.addr, align 8, !dbg !2261
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %4, i32 0, i32 0, !dbg !2262
  %5 = load ptr, ptr %handle, align 8, !dbg !2262
  call void @acpi_processor_ppc_ost(ptr noundef %5, i32 noundef 1) #18, !dbg !2263
  br label %if.end, !dbg !2263

if.end:                                           ; preds = %if.then3, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2264

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pr.addr, align 8, !dbg !2265
  %call = call i32 @acpi_processor_get_platform_limit(ptr noundef %6) #18, !dbg !2266
  store i32 %call, ptr %ret, align 4, !dbg !2267
  %7 = load i32, ptr %event_flag.addr, align 4, !dbg !2268
  %tobool5 = icmp ne i32 %7, 0, !dbg !2268
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !2270

if.then6:                                         ; preds = %if.end4
  %8 = load i32, ptr %ret, align 4, !dbg !2271
  %cmp = icmp slt i32 %8, 0, !dbg !2274
  br i1 %cmp, label %if.then7, label %if.else, !dbg !2275

if.then7:                                         ; preds = %if.then6
  %9 = load ptr, ptr %pr.addr, align 8, !dbg !2276
  %handle8 = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 0, !dbg !2277
  %10 = load ptr, ptr %handle8, align 8, !dbg !2277
  call void @acpi_processor_ppc_ost(ptr noundef %10, i32 noundef 1) #18, !dbg !2278
  br label %if.end10, !dbg !2278

if.else:                                          ; preds = %if.then6
  %11 = load ptr, ptr %pr.addr, align 8, !dbg !2279
  %handle9 = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 0, !dbg !2280
  %12 = load ptr, ptr %handle9, align 8, !dbg !2280
  call void @acpi_processor_ppc_ost(ptr noundef %12, i32 noundef 0) #18, !dbg !2281
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  br label %if.end11, !dbg !2282

if.end11:                                         ; preds = %if.end10, %if.end4
  %13 = load i32, ptr %ret, align 4, !dbg !2283
  %cmp12 = icmp sge i32 %13, 0, !dbg !2285
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2286

if.then13:                                        ; preds = %if.end11
  %14 = load ptr, ptr %pr.addr, align 8, !dbg !2287
  %id = getelementptr inbounds %struct.acpi_processor, ptr %14, i32 0, i32 3, !dbg !2288
  %15 = load i32, ptr %id, align 8, !dbg !2288
  call void @cpufreq_update_limits(i32 noundef %15) #18, !dbg !2289
  br label %if.end14, !dbg !2289

if.end14:                                         ; preds = %if.then13, %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2290
  br label %cleanup, !dbg !2290

cleanup:                                          ; preds = %if.end14, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2290
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2290

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_processor_ppc_ost(ptr noundef %handle, i32 noundef %status) #0 align 16 !dbg !2291 {
entry:
  %handle.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2295, metadata !DIExpression()), !dbg !2297
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2296, metadata !DIExpression()), !dbg !2298
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2299
  %call = call zeroext i1 @acpi_has_method(ptr noundef %0, ptr noundef @.str.12) #18, !dbg !2301
  br i1 %call, label %if.then, label %if.end, !dbg !2302

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !2303
  %2 = load i32, ptr %status.addr, align 4, !dbg !2304
  %call1 = call i32 @acpi_evaluate_ost(ptr noundef %1, i32 noundef 128, i32 noundef %2, ptr noundef null) #18, !dbg !2305
  br label %if.end, !dbg !2305

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2306
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_platform_limit(ptr noundef %pr) #0 align 16 !dbg !2307 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %ppc = alloca i64, align 8
  %qos_value = alloca i32, align 4
  %index = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !2309, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #17, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2310, metadata !DIExpression()), !dbg !2317
  store i32 0, ptr %status, align 4, !dbg !2317
  call void @llvm.lifetime.start.p0(i64 8, ptr %ppc) #17, !dbg !2318
  call void @llvm.dbg.declare(metadata ptr %ppc, metadata !2311, metadata !DIExpression()), !dbg !2319
  store i64 0, ptr %ppc, align 8, !dbg !2319
  call void @llvm.lifetime.start.p0(i64 4, ptr %qos_value) #17, !dbg !2320
  call void @llvm.dbg.declare(metadata ptr %qos_value, metadata !2312, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2313, metadata !DIExpression()), !dbg !2323
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2324
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2314, metadata !DIExpression()), !dbg !2325
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !2326
  %tobool = icmp ne ptr %0, null, !dbg !2326
  br i1 %tobool, label %if.end, label %if.then, !dbg !2328

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2329

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !2330
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 0, !dbg !2331
  %2 = load ptr, ptr %handle, align 8, !dbg !2331
  %call = call i32 @acpi_evaluate_integer(ptr noundef %2, ptr noundef @.str.2, ptr noundef null, ptr noundef %ppc) #18, !dbg !2332
  store i32 %call, ptr %status, align 4, !dbg !2333
  %3 = load i32, ptr %status, align 4, !dbg !2334
  %cmp = icmp ne i32 %3, 5, !dbg !2336
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !2337

if.then1:                                         ; preds = %if.end
  store i8 1, ptr @acpi_processor_ppc_in_use, align 1, !dbg !2338
  %4 = load i32, ptr %status, align 4, !dbg !2340
  %tobool2 = icmp ne i32 %4, 0, !dbg !2340
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2342

if.then3:                                         ; preds = %if.then1
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !2343
  %handle4 = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 0, !dbg !2345
  %6 = load ptr, ptr %handle4, align 8, !dbg !2345
  %7 = load i32, ptr %status, align 4, !dbg !2346
  call void @acpi_evaluation_failure_warn(ptr noundef %6, ptr noundef @.str.2, i32 noundef %7) #18, !dbg !2347
  store i32 -19, ptr %retval, align 4, !dbg !2348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2348

if.end5:                                          ; preds = %if.then1
  br label %if.end6, !dbg !2349

if.end6:                                          ; preds = %if.end5, %if.end
  %8 = load i64, ptr %ppc, align 8, !dbg !2350
  %conv = trunc i64 %8 to i32, !dbg !2350
  store i32 %conv, ptr %index, align 4, !dbg !2351
  %9 = load ptr, ptr %pr.addr, align 8, !dbg !2352
  %performance_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 5, !dbg !2354
  %10 = load i32, ptr %performance_platform_limit, align 8, !dbg !2354
  %11 = load i32, ptr %index, align 4, !dbg !2355
  %cmp7 = icmp eq i32 %10, %11, !dbg !2356
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !2357

lor.lhs.false:                                    ; preds = %if.end6
  %12 = load i64, ptr %ppc, align 8, !dbg !2358
  %13 = load ptr, ptr %pr.addr, align 8, !dbg !2359
  %performance = getelementptr inbounds %struct.acpi_processor, ptr %13, i32 0, i32 9, !dbg !2360
  %14 = load ptr, ptr %performance, align 8, !dbg !2360
  %state_count = getelementptr inbounds %struct.acpi_processor_performance, ptr %14, i32 0, i32 4, !dbg !2361
  %15 = load i32, ptr %state_count, align 8, !dbg !2361
  %conv9 = zext i32 %15 to i64, !dbg !2359
  %cmp10 = icmp uge i64 %12, %conv9, !dbg !2362
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2363

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  store i32 0, ptr %retval, align 4, !dbg !2364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2364

if.end13:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %tmp, align 4, !dbg !2365
  %16 = load i32, ptr %tmp, align 4, !dbg !2368
  %17 = load i32, ptr %index, align 4, !dbg !2369
  %18 = load ptr, ptr %pr.addr, align 8, !dbg !2370
  %performance_platform_limit14 = getelementptr inbounds %struct.acpi_processor, ptr %18, i32 0, i32 5, !dbg !2371
  store i32 %17, ptr %performance_platform_limit14, align 8, !dbg !2372
  %19 = load ptr, ptr %pr.addr, align 8, !dbg !2373
  %perflib_req = getelementptr inbounds %struct.acpi_processor, ptr %19, i32 0, i32 14, !dbg !2373
  %call15 = call i32 @freq_qos_request_active(ptr noundef %perflib_req) #18, !dbg !2373
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2373
  %lnot = xor i1 %tobool16, true, !dbg !2373
  %lnot17 = xor i1 %lnot, true, !dbg !2373
  %lnot18 = xor i1 %lnot17, true, !dbg !2373
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !2373
  %conv19 = sext i32 %lnot.ext to i64, !dbg !2373
  %expval = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !2373
  %tobool20 = icmp ne i64 %expval, 0, !dbg !2373
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !2375

if.then21:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !2376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2376

if.end22:                                         ; preds = %if.end13
  %20 = load i32, ptr %index, align 4, !dbg !2377
  %cmp23 = icmp eq i32 %20, 0, !dbg !2379
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !2380

if.then25:                                        ; preds = %if.end22
  store i32 2147483647, ptr %qos_value, align 4, !dbg !2381
  br label %if.end28, !dbg !2382

if.else:                                          ; preds = %if.end22
  %21 = load ptr, ptr %pr.addr, align 8, !dbg !2383
  %performance26 = getelementptr inbounds %struct.acpi_processor, ptr %21, i32 0, i32 9, !dbg !2384
  %22 = load ptr, ptr %performance26, align 8, !dbg !2384
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %22, i32 0, i32 5, !dbg !2385
  %23 = load ptr, ptr %states, align 8, !dbg !2385
  %24 = load i32, ptr %index, align 4, !dbg !2386
  %idxprom = sext i32 %24 to i64, !dbg !2383
  %arrayidx = getelementptr %struct.acpi_processor_px, ptr %23, i64 %idxprom, !dbg !2383
  %core_frequency = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx, i32 0, i32 0, !dbg !2387
  %25 = load i64, ptr %core_frequency, align 8, !dbg !2387
  %mul = mul i64 %25, 1000, !dbg !2388
  %conv27 = trunc i64 %mul to i32, !dbg !2383
  store i32 %conv27, ptr %qos_value, align 4, !dbg !2389
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  %26 = load ptr, ptr %pr.addr, align 8, !dbg !2390
  %perflib_req29 = getelementptr inbounds %struct.acpi_processor, ptr %26, i32 0, i32 14, !dbg !2391
  %27 = load i32, ptr %qos_value, align 4, !dbg !2392
  %call30 = call i32 @freq_qos_update_request(ptr noundef %perflib_req29, i32 noundef %27) #18, !dbg !2393
  store i32 %call30, ptr %ret, align 4, !dbg !2394
  %28 = load i32, ptr %ret, align 4, !dbg !2395
  %cmp31 = icmp slt i32 %28, 0, !dbg !2397
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !2398

if.then33:                                        ; preds = %if.end28
  br label %do.body, !dbg !2399

do.body:                                          ; preds = %if.then33
  br label %do.cond, !dbg !2402

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2402

do.end:                                           ; preds = %do.cond
  %29 = load ptr, ptr %pr.addr, align 8, !dbg !2399
  %id = getelementptr inbounds %struct.acpi_processor, ptr %29, i32 0, i32 3, !dbg !2399
  %30 = load i32, ptr %id, align 8, !dbg !2399
  %31 = load i32, ptr %ret, align 4, !dbg !2399
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i32 noundef %30, i32 noundef %31) #19, !dbg !2399
  store i32 %call35, ptr %tmp34, align 4, !dbg !2402
  %32 = load i32, ptr %tmp34, align 4, !dbg !2399
  br label %if.end36, !dbg !2404

if.end36:                                         ; preds = %do.end, %if.end28
  store i32 0, ptr %retval, align 4, !dbg !2405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2405

cleanup:                                          ; preds = %if.end36, %if.then21, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2406
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !2406
  call void @llvm.lifetime.end.p0(i64 4, ptr %qos_value) #17, !dbg !2406
  call void @llvm.lifetime.end.p0(i64 8, ptr %ppc) #17, !dbg !2406
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #17, !dbg !2406
  %33 = load i32, ptr %retval, align 4, !dbg !2406
  ret i32 %33, !dbg !2406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2407 dso_local void @cpufreq_update_limits(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_get_bios_limit(i32 noundef %cpu, ptr noundef %limit) #0 align 16 !dbg !2410 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %limit.addr = alloca ptr, align 8
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2414, metadata !DIExpression()), !dbg !2422
  store ptr %limit, ptr %limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !2415, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #17, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !2416, metadata !DIExpression()), !dbg !2425
  br label %do.body, !dbg !2426

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2417, metadata !DIExpression()), !dbg !2427
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2427
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !2426
  br label %do.cond, !dbg !2427

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2427

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !2428
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2420, metadata !DIExpression()), !dbg !2428
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !2428
  %1 = load i64, ptr %__ptr, align 8, !dbg !2428
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2428
  %idxprom = sext i32 %2 to i64, !dbg !2428
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2428
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2428
  %add = add i64 %1, %3, !dbg !2428
  %4 = inttoptr i64 %add to ptr, !dbg !2428
  store ptr %4, ptr %tmp1, align 8, !dbg !2428
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !2426
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2428
  store ptr %5, ptr %tmp, align 8, !dbg !2427
  %6 = load ptr, ptr %tmp, align 8, !dbg !2426
  %7 = load ptr, ptr %6, align 8, !dbg !2429
  store ptr %7, ptr %pr, align 8, !dbg !2430
  %8 = load ptr, ptr %pr, align 8, !dbg !2431
  %tobool = icmp ne ptr %8, null, !dbg !2431
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2433

lor.lhs.false:                                    ; preds = %do.end
  %9 = load ptr, ptr %pr, align 8, !dbg !2434
  %performance = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 9, !dbg !2435
  %10 = load ptr, ptr %performance, align 8, !dbg !2435
  %tobool2 = icmp ne ptr %10, null, !dbg !2434
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !2436

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %pr, align 8, !dbg !2437
  %performance4 = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 9, !dbg !2438
  %12 = load ptr, ptr %performance4, align 8, !dbg !2438
  %state_count = getelementptr inbounds %struct.acpi_processor_performance, ptr %12, i32 0, i32 4, !dbg !2439
  %13 = load i32, ptr %state_count, align 8, !dbg !2439
  %tobool5 = icmp ne i32 %13, 0, !dbg !2437
  br i1 %tobool5, label %if.end, label %if.then, !dbg !2440

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %do.end
  store i32 -19, ptr %retval, align 4, !dbg !2441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2441

if.end:                                           ; preds = %lor.lhs.false3
  %14 = load ptr, ptr %pr, align 8, !dbg !2442
  %performance6 = getelementptr inbounds %struct.acpi_processor, ptr %14, i32 0, i32 9, !dbg !2443
  %15 = load ptr, ptr %performance6, align 8, !dbg !2443
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %15, i32 0, i32 5, !dbg !2444
  %16 = load ptr, ptr %states, align 8, !dbg !2444
  %17 = load ptr, ptr %pr, align 8, !dbg !2445
  %performance_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %17, i32 0, i32 5, !dbg !2446
  %18 = load i32, ptr %performance_platform_limit, align 8, !dbg !2446
  %idxprom7 = sext i32 %18 to i64, !dbg !2442
  %arrayidx8 = getelementptr %struct.acpi_processor_px, ptr %16, i64 %idxprom7, !dbg !2442
  %core_frequency = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx8, i32 0, i32 0, !dbg !2447
  %19 = load i64, ptr %core_frequency, align 8, !dbg !2447
  %mul = mul i64 %19, 1000, !dbg !2448
  %conv = trunc i64 %mul to i32, !dbg !2442
  %20 = load ptr, ptr %limit.addr, align 8, !dbg !2449
  store i32 %conv, ptr %20, align 4, !dbg !2450
  store i32 0, ptr %retval, align 4, !dbg !2451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2451

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #17, !dbg !2452
  %21 = load i32, ptr %retval, align 4, !dbg !2452
  ret i32 %21, !dbg !2452
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_ignore_ppc_init() #0 align 16 !dbg !2453 {
entry:
  %0 = load i32, ptr @ignore_ppc, align 4, !dbg !2454
  %cmp = icmp slt i32 %0, 0, !dbg !2456
  br i1 %cmp, label %if.then, label %if.end, !dbg !2457

if.then:                                          ; preds = %entry
  store i32 0, ptr @ignore_ppc, align 4, !dbg !2458
  br label %if.end, !dbg !2459

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_ppc_init(ptr noundef %policy) #0 align 16 !dbg !2461 {
entry:
  %policy.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3611, metadata !DIExpression()), !dbg !3623
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #17, !dbg !3624
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3612, metadata !DIExpression()), !dbg !3625
  store i32 0, ptr %cpu, align 4, !dbg !3626
  br label %for.cond, !dbg !3626

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3627
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1, !dbg !3627
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %related_cpus, i64 0, i64 0, !dbg !3627
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3627
  %arraydecay1 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3627
  %1 = load i32, ptr %cpu, align 4, !dbg !3627
  %conv = zext i32 %1 to i64, !dbg !3627
  %call = call i64 @find_next_bit(ptr noundef %arraydecay1, i64 noundef 64, i64 noundef %conv) #18, !dbg !3627
  %conv2 = trunc i64 %call to i32, !dbg !3627
  store i32 %conv2, ptr %cpu, align 4, !dbg !3627
  %2 = load i32, ptr %cpu, align 4, !dbg !3627
  %cmp = icmp ult i32 %2, 64, !dbg !3627
  br i1 %cmp, label %for.body, label %for.end, !dbg !3626

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #17, !dbg !3628
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3613, metadata !DIExpression()), !dbg !3629
  br label %do.body, !dbg !3630

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3631
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3617, metadata !DIExpression()), !dbg !3631
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3631
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3631
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3630
  br label %do.cond, !dbg !3631

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3631

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3632
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3620, metadata !DIExpression()), !dbg !3632
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !3632
  %4 = load i64, ptr %__ptr, align 8, !dbg !3632
  %5 = load i32, ptr %cpu, align 4, !dbg !3632
  %idxprom = zext i32 %5 to i64, !dbg !3632
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3632
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3632
  %add = add i64 %4, %6, !dbg !3632
  %7 = inttoptr i64 %add to ptr, !dbg !3632
  store ptr %7, ptr %tmp4, align 8, !dbg !3632
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3630
  %8 = load ptr, ptr %tmp4, align 8, !dbg !3632
  store ptr %8, ptr %tmp, align 8, !dbg !3631
  %9 = load ptr, ptr %tmp, align 8, !dbg !3630
  %10 = load ptr, ptr %9, align 8, !dbg !3633
  store ptr %10, ptr %pr, align 8, !dbg !3629
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3622, metadata !DIExpression()), !dbg !3635
  %11 = load ptr, ptr %pr, align 8, !dbg !3636
  %tobool = icmp ne ptr %11, null, !dbg !3636
  br i1 %tobool, label %if.end, label %if.then, !dbg !3638

if.then:                                          ; preds = %do.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3639

if.end:                                           ; preds = %do.end
  %12 = load ptr, ptr %pr, align 8, !dbg !3640
  %performance_platform_limit = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 5, !dbg !3641
  store i32 0, ptr %performance_platform_limit, align 8, !dbg !3642
  %13 = load ptr, ptr %policy.addr, align 8, !dbg !3643
  %constraints = getelementptr inbounds %struct.cpufreq_policy, ptr %13, i32 0, i32 17, !dbg !3644
  %14 = load ptr, ptr %pr, align 8, !dbg !3645
  %perflib_req = getelementptr inbounds %struct.acpi_processor, ptr %14, i32 0, i32 14, !dbg !3646
  %call5 = call i32 @freq_qos_add_request(ptr noundef %constraints, ptr noundef %perflib_req, i32 noundef 2, i32 noundef 2147483647) #18, !dbg !3647
  store i32 %call5, ptr %ret, align 4, !dbg !3648
  %15 = load i32, ptr %ret, align 4, !dbg !3649
  %cmp6 = icmp slt i32 %15, 0, !dbg !3651
  br i1 %cmp6, label %if.then8, label %if.end14, !dbg !3652

if.then8:                                         ; preds = %if.end
  br label %do.body9, !dbg !3653

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !3655

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3655

do.end11:                                         ; preds = %do.cond10
  %16 = load i32, ptr %cpu, align 4, !dbg !3653
  %17 = load i32, ptr %ret, align 4, !dbg !3653
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %16, i32 noundef %17) #19, !dbg !3653
  store i32 %call13, ptr %tmp12, align 4, !dbg !3655
  %18 = load i32, ptr %tmp12, align 4, !dbg !3653
  br label %if.end14, !dbg !3657

if.end14:                                         ; preds = %do.end11, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3658
  br label %cleanup, !dbg !3658

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !3658
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #17, !dbg !3658
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3659

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %19 = load i32, ptr %cpu, align 4, !dbg !3627
  %inc = add i32 %19, 1, !dbg !3627
  store i32 %inc, ptr %cpu, align 4, !dbg !3627
  br label %for.cond, !dbg !3627, !llvm.loop !3660

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #17, !dbg !3664
  ret void, !dbg !3664

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !3665 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3672, metadata !DIExpression()), !dbg !3678
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3673, metadata !DIExpression()), !dbg !3679
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3674, metadata !DIExpression()), !dbg !3680
  %0 = load i64, ptr %size.addr, align 8, !dbg !3681
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3681
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3681

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3681
  %cmp = icmp ule i64 %2, 64, !dbg !3681
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3681

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3681
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3681
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3682

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !3683
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3675, metadata !DIExpression()), !dbg !3684
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3685
  %5 = load i64, ptr %size.addr, align 8, !dbg !3685
  %cmp3 = icmp uge i64 %4, %5, !dbg !3685
  %lnot = xor i1 %cmp3, true, !dbg !3685
  %lnot4 = xor i1 %lnot, true, !dbg !3685
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3685
  %conv = sext i32 %lnot.ext to i64, !dbg !3685
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3685
  %tobool = icmp ne i64 %expval, 0, !dbg !3685
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3687

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3688
  store i64 %6, ptr %retval, align 8, !dbg !3689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3689

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3690
  %8 = load i64, ptr %7, align 8, !dbg !3691
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3692
  %shl = shl i64 1, %9, !dbg !3692
  %sub = sub i64 -1, %shl, !dbg !3692
  %add = add i64 %sub, 1, !dbg !3692
  %10 = load i64, ptr %size.addr, align 8, !dbg !3692
  %sub6 = sub i64 %10, 1, !dbg !3692
  %sub7 = sub i64 63, %sub6, !dbg !3692
  %shr = lshr i64 -1, %sub7, !dbg !3692
  %and = and i64 %add, %shr, !dbg !3692
  %add8 = add i64 0, %and, !dbg !3692
  %and9 = and i64 %8, %add8, !dbg !3693
  store i64 %and9, ptr %val, align 8, !dbg !3694
  %11 = load i64, ptr %val, align 8, !dbg !3695
  %tobool10 = icmp ne i64 %11, 0, !dbg !3695
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3695

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3696
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3696
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3696

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3696
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3696
  %cast = trunc i64 %15 to i32, !dbg !3696
  %conv12 = sext i32 %cast to i64, !dbg !3696
  br label %cond.end, !dbg !3696

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3696
  %call = call i64 @variable__ffs(i64 noundef %16) #18, !dbg !3696
  br label %cond.end, !dbg !3696

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3696
  br label %cond.end14, !dbg !3695

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3697
  br label %cond.end14, !dbg !3695

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3695
  store i64 %cond15, ptr %retval, align 8, !dbg !3698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3698

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !3699
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3700
  %19 = load i64, ptr %size.addr, align 8, !dbg !3701
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3702
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #18, !dbg !3703
  store i64 %call17, ptr %retval, align 8, !dbg !3704
  br label %return, !dbg !3704

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3705
  ret i64 %21, !dbg !3705
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3706 dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3709 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_ppc_exit(ptr noundef %policy) #0 align 16 !dbg !3713 {
entry:
  %policy.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3715, metadata !DIExpression()), !dbg !3726
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #17, !dbg !3727
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3716, metadata !DIExpression()), !dbg !3728
  store i32 0, ptr %cpu, align 4, !dbg !3729
  br label %for.cond, !dbg !3729

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3730
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1, !dbg !3730
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %related_cpus, i64 0, i64 0, !dbg !3730
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay, i32 0, i32 0, !dbg !3730
  %arraydecay1 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3730
  %1 = load i32, ptr %cpu, align 4, !dbg !3730
  %conv = zext i32 %1 to i64, !dbg !3730
  %call = call i64 @find_next_bit(ptr noundef %arraydecay1, i64 noundef 64, i64 noundef %conv) #18, !dbg !3730
  %conv2 = trunc i64 %call to i32, !dbg !3730
  store i32 %conv2, ptr %cpu, align 4, !dbg !3730
  %2 = load i32, ptr %cpu, align 4, !dbg !3730
  %cmp = icmp ult i32 %2, 64, !dbg !3730
  br i1 %cmp, label %for.body, label %for.end, !dbg !3729

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #17, !dbg !3731
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !3717, metadata !DIExpression()), !dbg !3732
  br label %do.body, !dbg !3733

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3734
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3721, metadata !DIExpression()), !dbg !3734
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3734
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !3734
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !3733
  br label %do.cond, !dbg !3734

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3734

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3724, metadata !DIExpression()), !dbg !3735
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !3735
  %4 = load i64, ptr %__ptr, align 8, !dbg !3735
  %5 = load i32, ptr %cpu, align 4, !dbg !3735
  %idxprom = zext i32 %5 to i64, !dbg !3735
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3735
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3735
  %add = add i64 %4, %6, !dbg !3735
  %7 = inttoptr i64 %add to ptr, !dbg !3735
  store ptr %7, ptr %tmp4, align 8, !dbg !3735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3733
  %8 = load ptr, ptr %tmp4, align 8, !dbg !3735
  store ptr %8, ptr %tmp, align 8, !dbg !3734
  %9 = load ptr, ptr %tmp, align 8, !dbg !3733
  %10 = load ptr, ptr %9, align 8, !dbg !3736
  store ptr %10, ptr %pr, align 8, !dbg !3732
  %11 = load ptr, ptr %pr, align 8, !dbg !3737
  %tobool = icmp ne ptr %11, null, !dbg !3737
  br i1 %tobool, label %if.then, label %if.end, !dbg !3739

if.then:                                          ; preds = %do.end
  %12 = load ptr, ptr %pr, align 8, !dbg !3740
  %perflib_req = getelementptr inbounds %struct.acpi_processor, ptr %12, i32 0, i32 14, !dbg !3741
  %call5 = call i32 @freq_qos_remove_request(ptr noundef %perflib_req) #18, !dbg !3742
  br label %if.end, !dbg !3742

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #17, !dbg !3743
  br label %for.inc, !dbg !3744

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %cpu, align 4, !dbg !3730
  %inc = add i32 %13, 1, !dbg !3730
  store i32 %inc, ptr %cpu, align 4, !dbg !3730
  br label %for.cond, !dbg !3730, !llvm.loop !3745

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #17, !dbg !3747
  ret void, !dbg !3747
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3748 dso_local i32 @freq_qos_remove_request(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_get_performance_info(ptr noundef %pr) #0 align 16 !dbg !3751 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3753, metadata !DIExpression()), !dbg !3756
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #17, !dbg !3757
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3754, metadata !DIExpression()), !dbg !3758
  store i32 0, ptr %result, align 4, !dbg !3758
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3759
  %tobool = icmp ne ptr %0, null, !dbg !3759
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3761

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pr.addr, align 8, !dbg !3762
  %performance = getelementptr inbounds %struct.acpi_processor, ptr %1, i32 0, i32 9, !dbg !3763
  %2 = load ptr, ptr %performance, align 8, !dbg !3763
  %tobool1 = icmp ne ptr %2, null, !dbg !3762
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !3764

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !3765
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 0, !dbg !3766
  %4 = load ptr, ptr %handle, align 8, !dbg !3766
  %tobool3 = icmp ne ptr %4, null, !dbg !3765
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3767

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3768

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %pr.addr, align 8, !dbg !3769
  %handle4 = getelementptr inbounds %struct.acpi_processor, ptr %5, i32 0, i32 0, !dbg !3771
  %6 = load ptr, ptr %handle4, align 8, !dbg !3771
  %call = call zeroext i1 @acpi_has_method(ptr noundef %6, ptr noundef @.str.1) #18, !dbg !3772
  br i1 %call, label %if.end6, label %if.then5, !dbg !3773

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !3774
  %7 = load i32, ptr %tmp, align 4, !dbg !3778
  store i32 -19, ptr %retval, align 4, !dbg !3779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3779

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %pr.addr, align 8, !dbg !3780
  %call7 = call i32 @acpi_processor_get_performance_control(ptr noundef %8) #18, !dbg !3781
  store i32 %call7, ptr %result, align 4, !dbg !3782
  %9 = load i32, ptr %result, align 4, !dbg !3783
  %tobool8 = icmp ne i32 %9, 0, !dbg !3783
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3785

if.then9:                                         ; preds = %if.end6
  br label %update_bios, !dbg !3786

if.end10:                                         ; preds = %if.end6
  %10 = load ptr, ptr %pr.addr, align 8, !dbg !3787
  %call11 = call i32 @acpi_processor_get_performance_states(ptr noundef %10) #18, !dbg !3788
  store i32 %call11, ptr %result, align 4, !dbg !3789
  %11 = load i32, ptr %result, align 4, !dbg !3790
  %tobool12 = icmp ne i32 %11, 0, !dbg !3790
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3792

if.then13:                                        ; preds = %if.end10
  br label %update_bios, !dbg !3793

if.end14:                                         ; preds = %if.end10
  %12 = load i32, ptr @ignore_ppc, align 4, !dbg !3794
  %cmp = icmp ne i32 %12, 1, !dbg !3796
  br i1 %cmp, label %if.then15, label %if.end17, !dbg !3797

if.then15:                                        ; preds = %if.end14
  %13 = load ptr, ptr %pr.addr, align 8, !dbg !3798
  %call16 = call i32 @acpi_processor_get_platform_limit(ptr noundef %13) #18, !dbg !3799
  store i32 %call16, ptr %result, align 4, !dbg !3800
  br label %if.end17, !dbg !3801

if.end17:                                         ; preds = %if.then15, %if.end14
  %14 = load i32, ptr %result, align 4, !dbg !3802
  store i32 %14, ptr %retval, align 4, !dbg !3803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3803

update_bios:                                      ; preds = %if.then13, %if.then9
  call void @llvm.dbg.label(metadata !3755), !dbg !3804
  %15 = load ptr, ptr %pr.addr, align 8, !dbg !3805
  %handle18 = getelementptr inbounds %struct.acpi_processor, ptr %15, i32 0, i32 0, !dbg !3807
  %16 = load ptr, ptr %handle18, align 8, !dbg !3807
  %call19 = call zeroext i1 @acpi_has_method(ptr noundef %16, ptr noundef @.str.2) #18, !dbg !3808
  br i1 %call19, label %if.then20, label %if.end26, !dbg !3809

if.then20:                                        ; preds = %update_bios
  br i1 false, label %cond.true, label %cond.false, !dbg !3810

cond.true:                                        ; preds = %if.then20
  br i1 true, label %if.then22, label %if.end25, !dbg !3812

cond.false:                                       ; preds = %if.then20
  %call21 = call zeroext i1 @arch_test_bit(i64 noundef 135, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #18, !dbg !3812
  br i1 %call21, label %if.then22, label %if.end25, !dbg !3810

if.then22:                                        ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !3814

do.body:                                          ; preds = %if.then22
  br label %do.cond, !dbg !3816

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3816

do.end:                                           ; preds = %do.cond
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #19, !dbg !3814
  store i32 %call24, ptr %tmp23, align 4, !dbg !3816
  %17 = load i32, ptr %tmp23, align 4, !dbg !3814
  br label %if.end25, !dbg !3818

if.end25:                                         ; preds = %do.end, %cond.false, %cond.true
  br label %if.end26, !dbg !3819

if.end26:                                         ; preds = %if.end25, %update_bios
  %18 = load i32, ptr %result, align 4, !dbg !3820
  store i32 %18, ptr %retval, align 4, !dbg !3821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3821

cleanup:                                          ; preds = %if.end26, %if.end17, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #17, !dbg !3822
  %19 = load i32, ptr %retval, align 4, !dbg !3822
  ret i32 %19, !dbg !3822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3823 dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_performance_control(ptr noundef %pr) #0 align 16 !dbg !3827 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %pct = alloca ptr, align 8
  %obj = alloca %union.acpi_object, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3829, metadata !DIExpression()), !dbg !3840
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #17, !dbg !3841
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3830, metadata !DIExpression()), !dbg !3842
  store i32 0, ptr %result, align 4, !dbg !3842
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #17, !dbg !3843
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3831, metadata !DIExpression()), !dbg !3844
  store i32 0, ptr %status, align 4, !dbg !3844
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #17, !dbg !3845
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !3832, metadata !DIExpression()), !dbg !3846
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_processor_get_performance_control.buffer, i64 16, i1 false), !dbg !3846
  call void @llvm.lifetime.start.p0(i64 8, ptr %pct) #17, !dbg !3847
  call void @llvm.dbg.declare(metadata ptr %pct, metadata !3837, metadata !DIExpression()), !dbg !3848
  store ptr null, ptr %pct, align 8, !dbg !3848
  call void @llvm.lifetime.start.p0(i64 24, ptr %obj) #17, !dbg !3849
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !3838, metadata !DIExpression()), !dbg !3850
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %obj, ptr align 8 @__const.acpi_processor_get_performance_control.obj, i64 24, i1 false), !dbg !3850
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3851
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 0, !dbg !3852
  %1 = load ptr, ptr %handle, align 8, !dbg !3852
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef @.str.1, ptr noundef null, ptr noundef %buffer) #18, !dbg !3853
  store i32 %call, ptr %status, align 4, !dbg !3854
  %2 = load i32, ptr %status, align 4, !dbg !3855
  %tobool = icmp ne i32 %2, 0, !dbg !3855
  br i1 %tobool, label %if.then, label %if.end, !dbg !3857

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !3858
  %handle1 = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 0, !dbg !3860
  %4 = load ptr, ptr %handle1, align 8, !dbg !3860
  %5 = load i32, ptr %status, align 4, !dbg !3861
  call void @acpi_evaluation_failure_warn(ptr noundef %4, ptr noundef @.str.1, i32 noundef %5) #18, !dbg !3862
  store i32 -19, ptr %retval, align 4, !dbg !3863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3863

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !3864
  %6 = load ptr, ptr %pointer, align 8, !dbg !3864
  store ptr %6, ptr %pct, align 8, !dbg !3865
  %7 = load ptr, ptr %pct, align 8, !dbg !3866
  %tobool2 = icmp ne ptr %7, null, !dbg !3866
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !3868

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %pct, align 8, !dbg !3869
  %9 = load i32, ptr %8, align 8, !dbg !3870
  %cmp = icmp ne i32 %9, 4, !dbg !3871
  br i1 %cmp, label %if.then5, label %lor.lhs.false3, !dbg !3872

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pct, align 8, !dbg !3873
  %count = getelementptr inbounds %struct.anon.21, ptr %10, i32 0, i32 1, !dbg !3874
  %11 = load i32, ptr %count, align 4, !dbg !3874
  %cmp4 = icmp ne i32 %11, 2, !dbg !3875
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !3876

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  br label %do.body, !dbg !3877

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !3880

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3880

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #19, !dbg !3877
  store i32 %call6, ptr %tmp, align 4, !dbg !3880
  %12 = load i32, ptr %tmp, align 4, !dbg !3877
  store i32 -14, ptr %result, align 4, !dbg !3882
  br label %end, !dbg !3883

if.end7:                                          ; preds = %lor.lhs.false3
  %13 = load ptr, ptr %pct, align 8, !dbg !3884
  %elements = getelementptr inbounds %struct.anon.21, ptr %13, i32 0, i32 2, !dbg !3885
  %14 = load ptr, ptr %elements, align 8, !dbg !3885
  %arrayidx = getelementptr %union.acpi_object, ptr %14, i64 0, !dbg !3884
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %obj, ptr align 8 %arrayidx, i64 24, i1 false), !dbg !3884
  %pointer8 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !3886
  %15 = load ptr, ptr %pointer8, align 8, !dbg !3886
  %tobool9 = icmp ne ptr %15, null, !dbg !3888
  br i1 %tobool9, label %lor.lhs.false10, label %if.then15, !dbg !3889

lor.lhs.false10:                                  ; preds = %if.end7
  %16 = load i32, ptr %obj, align 8, !dbg !3890
  %cmp11 = icmp ne i32 %16, 3, !dbg !3891
  br i1 %cmp11, label %if.then15, label %lor.lhs.false12, !dbg !3892

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %length = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 1, !dbg !3893
  %17 = load i32, ptr %length, align 4, !dbg !3893
  %conv = zext i32 %17 to i64, !dbg !3894
  %cmp13 = icmp ult i64 %conv, 15, !dbg !3895
  br i1 %cmp13, label %if.then15, label %if.end21, !dbg !3896

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false10, %if.end7
  br label %do.body16, !dbg !3897

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !3900

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3900

do.end18:                                         ; preds = %do.cond17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #19, !dbg !3897
  store i32 %call20, ptr %tmp19, align 4, !dbg !3900
  %18 = load i32, ptr %tmp19, align 4, !dbg !3897
  store i32 -14, ptr %result, align 4, !dbg !3902
  br label %end, !dbg !3903

if.end21:                                         ; preds = %lor.lhs.false12
  %19 = load ptr, ptr %pr.addr, align 8, !dbg !3904
  %performance = getelementptr inbounds %struct.acpi_processor, ptr %19, i32 0, i32 9, !dbg !3905
  %20 = load ptr, ptr %performance, align 8, !dbg !3905
  %control_register = getelementptr inbounds %struct.acpi_processor_performance, ptr %20, i32 0, i32 2, !dbg !3906
  %pointer22 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !3907
  %21 = load ptr, ptr %pointer22, align 8, !dbg !3907
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %control_register, ptr align 1 %21, i64 15, i1 false), !dbg !3908
  %22 = load ptr, ptr %pct, align 8, !dbg !3909
  %elements23 = getelementptr inbounds %struct.anon.21, ptr %22, i32 0, i32 2, !dbg !3910
  %23 = load ptr, ptr %elements23, align 8, !dbg !3910
  %arrayidx24 = getelementptr %union.acpi_object, ptr %23, i64 1, !dbg !3909
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %obj, ptr align 8 %arrayidx24, i64 24, i1 false), !dbg !3909
  %pointer25 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !3911
  %24 = load ptr, ptr %pointer25, align 8, !dbg !3911
  %tobool26 = icmp ne ptr %24, null, !dbg !3913
  br i1 %tobool26, label %lor.lhs.false27, label %if.then35, !dbg !3914

lor.lhs.false27:                                  ; preds = %if.end21
  %25 = load i32, ptr %obj, align 8, !dbg !3915
  %cmp28 = icmp ne i32 %25, 3, !dbg !3916
  br i1 %cmp28, label %if.then35, label %lor.lhs.false30, !dbg !3917

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %length31 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 1, !dbg !3918
  %26 = load i32, ptr %length31, align 4, !dbg !3918
  %conv32 = zext i32 %26 to i64, !dbg !3919
  %cmp33 = icmp ult i64 %conv32, 15, !dbg !3920
  br i1 %cmp33, label %if.then35, label %if.end41, !dbg !3921

if.then35:                                        ; preds = %lor.lhs.false30, %lor.lhs.false27, %if.end21
  br label %do.body36, !dbg !3922

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !3925

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !3925

do.end38:                                         ; preds = %do.cond37
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #19, !dbg !3922
  store i32 %call40, ptr %tmp39, align 4, !dbg !3925
  %27 = load i32, ptr %tmp39, align 4, !dbg !3922
  store i32 -14, ptr %result, align 4, !dbg !3927
  br label %end, !dbg !3928

if.end41:                                         ; preds = %lor.lhs.false30
  %28 = load ptr, ptr %pr.addr, align 8, !dbg !3929
  %performance42 = getelementptr inbounds %struct.acpi_processor, ptr %28, i32 0, i32 9, !dbg !3930
  %29 = load ptr, ptr %performance42, align 8, !dbg !3930
  %status_register = getelementptr inbounds %struct.acpi_processor_performance, ptr %29, i32 0, i32 3, !dbg !3931
  %pointer43 = getelementptr inbounds %struct.anon.20, ptr %obj, i32 0, i32 2, !dbg !3932
  %30 = load ptr, ptr %pointer43, align 8, !dbg !3932
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %status_register, ptr align 1 %30, i64 15, i1 false), !dbg !3933
  br label %end, !dbg !3933

end:                                              ; preds = %if.end41, %do.end38, %do.end18, %do.end
  call void @llvm.dbg.label(metadata !3839), !dbg !3934
  %pointer44 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !3935
  %31 = load ptr, ptr %pointer44, align 8, !dbg !3935
  call void @kfree(ptr noundef %31) #18, !dbg !3936
  %32 = load i32, ptr %result, align 4, !dbg !3937
  store i32 %32, ptr %retval, align 4, !dbg !3938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3938

cleanup:                                          ; preds = %end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %obj) #17, !dbg !3939
  call void @llvm.lifetime.end.p0(i64 8, ptr %pct) #17, !dbg !3939
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #17, !dbg !3939
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #17, !dbg !3939
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #17, !dbg !3939
  %33 = load i32, ptr %retval, align 4, !dbg !3939
  ret i32 %33, !dbg !3939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_get_performance_states(ptr noundef %pr) #0 align 16 !dbg !3940 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %state = alloca %struct.acpi_buffer, align 8
  %pss = alloca ptr, align 8
  %i = alloca i32, align 4
  %last_invalid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %px = alloca ptr, align 8
  %tmp22 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  store ptr %pr, ptr %pr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pr.addr, metadata !3942, metadata !DIExpression()), !dbg !3956
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #17, !dbg !3957
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3943, metadata !DIExpression()), !dbg !3958
  store i32 0, ptr %result, align 4, !dbg !3958
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #17, !dbg !3959
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3944, metadata !DIExpression()), !dbg !3960
  store i32 0, ptr %status, align 4, !dbg !3960
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #17, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !3945, metadata !DIExpression()), !dbg !3962
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_processor_get_performance_states.buffer, i64 16, i1 false), !dbg !3962
  call void @llvm.lifetime.start.p0(i64 16, ptr %format) #17, !dbg !3963
  call void @llvm.dbg.declare(metadata ptr %format, metadata !3946, metadata !DIExpression()), !dbg !3964
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %format, ptr align 8 @__const.acpi_processor_get_performance_states.format, i64 16, i1 false), !dbg !3964
  call void @llvm.lifetime.start.p0(i64 16, ptr %state) #17, !dbg !3965
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3947, metadata !DIExpression()), !dbg !3966
  call void @llvm.memset.p0.i64(ptr align 8 %state, i8 0, i64 16, i1 false), !dbg !3966
  call void @llvm.lifetime.start.p0(i64 8, ptr %pss) #17, !dbg !3967
  call void @llvm.dbg.declare(metadata ptr %pss, metadata !3948, metadata !DIExpression()), !dbg !3968
  store ptr null, ptr %pss, align 8, !dbg !3968
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3969
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3949, metadata !DIExpression()), !dbg !3970
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_invalid) #17, !dbg !3971
  call void @llvm.dbg.declare(metadata ptr %last_invalid, metadata !3950, metadata !DIExpression()), !dbg !3972
  store i32 -1, ptr %last_invalid, align 4, !dbg !3972
  %0 = load ptr, ptr %pr.addr, align 8, !dbg !3973
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %0, i32 0, i32 0, !dbg !3974
  %1 = load ptr, ptr %handle, align 8, !dbg !3974
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef @.str.18, ptr noundef null, ptr noundef %buffer) #18, !dbg !3975
  store i32 %call, ptr %status, align 4, !dbg !3976
  %2 = load i32, ptr %status, align 4, !dbg !3977
  %tobool = icmp ne i32 %2, 0, !dbg !3977
  br i1 %tobool, label %if.then, label %if.end, !dbg !3979

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pr.addr, align 8, !dbg !3980
  %handle1 = getelementptr inbounds %struct.acpi_processor, ptr %3, i32 0, i32 0, !dbg !3982
  %4 = load ptr, ptr %handle1, align 8, !dbg !3982
  %5 = load i32, ptr %status, align 4, !dbg !3983
  call void @acpi_evaluation_failure_warn(ptr noundef %4, ptr noundef @.str.18, i32 noundef %5) #18, !dbg !3984
  store i32 -19, ptr %retval, align 4, !dbg !3985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !3985

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !3986
  %6 = load ptr, ptr %pointer, align 8, !dbg !3986
  store ptr %6, ptr %pss, align 8, !dbg !3987
  %7 = load ptr, ptr %pss, align 8, !dbg !3988
  %tobool2 = icmp ne ptr %7, null, !dbg !3988
  br i1 %tobool2, label %lor.lhs.false, label %if.then3, !dbg !3990

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %pss, align 8, !dbg !3991
  %9 = load i32, ptr %8, align 8, !dbg !3992
  %cmp = icmp ne i32 %9, 4, !dbg !3993
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3994

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %do.body, !dbg !3995

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !3998

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3998

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19) #19, !dbg !3995
  store i32 %call4, ptr %tmp, align 4, !dbg !3998
  %10 = load i32, ptr %tmp, align 4, !dbg !3995
  store i32 -14, ptr %result, align 4, !dbg !4000
  br label %end, !dbg !4001

if.end5:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %tmp6, align 4, !dbg !4002
  %11 = load i32, ptr %tmp6, align 4, !dbg !4005
  %12 = load ptr, ptr %pss, align 8, !dbg !4006
  %count = getelementptr inbounds %struct.anon.21, ptr %12, i32 0, i32 1, !dbg !4007
  %13 = load i32, ptr %count, align 4, !dbg !4007
  %14 = load ptr, ptr %pr.addr, align 8, !dbg !4008
  %performance = getelementptr inbounds %struct.acpi_processor, ptr %14, i32 0, i32 9, !dbg !4009
  %15 = load ptr, ptr %performance, align 8, !dbg !4009
  %state_count = getelementptr inbounds %struct.acpi_processor_performance, ptr %15, i32 0, i32 4, !dbg !4010
  store i32 %13, ptr %state_count, align 8, !dbg !4011
  %16 = load ptr, ptr %pss, align 8, !dbg !4012
  %count7 = getelementptr inbounds %struct.anon.21, ptr %16, i32 0, i32 1, !dbg !4013
  %17 = load i32, ptr %count7, align 4, !dbg !4013
  %conv = zext i32 %17 to i64, !dbg !4012
  %call8 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 48, i32 noundef 3264) #20, !dbg !4014
  %18 = load ptr, ptr %pr.addr, align 8, !dbg !4015
  %performance9 = getelementptr inbounds %struct.acpi_processor, ptr %18, i32 0, i32 9, !dbg !4016
  %19 = load ptr, ptr %performance9, align 8, !dbg !4016
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %19, i32 0, i32 5, !dbg !4017
  store ptr %call8, ptr %states, align 8, !dbg !4018
  %20 = load ptr, ptr %pr.addr, align 8, !dbg !4019
  %performance10 = getelementptr inbounds %struct.acpi_processor, ptr %20, i32 0, i32 9, !dbg !4021
  %21 = load ptr, ptr %performance10, align 8, !dbg !4021
  %states11 = getelementptr inbounds %struct.acpi_processor_performance, ptr %21, i32 0, i32 5, !dbg !4022
  %22 = load ptr, ptr %states11, align 8, !dbg !4022
  %tobool12 = icmp ne ptr %22, null, !dbg !4019
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4023

if.then13:                                        ; preds = %if.end5
  store i32 -12, ptr %result, align 4, !dbg !4024
  br label %end, !dbg !4026

if.end14:                                         ; preds = %if.end5
  store i32 0, ptr %i, align 4, !dbg !4027
  br label %for.cond, !dbg !4028

for.cond:                                         ; preds = %for.inc, %if.end14
  %23 = load i32, ptr %i, align 4, !dbg !4029
  %24 = load ptr, ptr %pr.addr, align 8, !dbg !4030
  %performance15 = getelementptr inbounds %struct.acpi_processor, ptr %24, i32 0, i32 9, !dbg !4031
  %25 = load ptr, ptr %performance15, align 8, !dbg !4031
  %state_count16 = getelementptr inbounds %struct.acpi_processor_performance, ptr %25, i32 0, i32 4, !dbg !4032
  %26 = load i32, ptr %state_count16, align 8, !dbg !4032
  %cmp17 = icmp ult i32 %23, %26, !dbg !4033
  br i1 %cmp17, label %for.body, label %for.end, !dbg !4034

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %px) #17, !dbg !4035
  call void @llvm.dbg.declare(metadata ptr %px, metadata !3951, metadata !DIExpression()), !dbg !4036
  %27 = load ptr, ptr %pr.addr, align 8, !dbg !4037
  %performance19 = getelementptr inbounds %struct.acpi_processor, ptr %27, i32 0, i32 9, !dbg !4038
  %28 = load ptr, ptr %performance19, align 8, !dbg !4038
  %states20 = getelementptr inbounds %struct.acpi_processor_performance, ptr %28, i32 0, i32 5, !dbg !4039
  %29 = load ptr, ptr %states20, align 8, !dbg !4039
  %30 = load i32, ptr %i, align 4, !dbg !4040
  %idxprom = sext i32 %30 to i64, !dbg !4037
  %arrayidx = getelementptr %struct.acpi_processor_px, ptr %29, i64 %idxprom, !dbg !4037
  store ptr %arrayidx, ptr %px, align 8, !dbg !4036
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 0, !dbg !4041
  store i64 48, ptr %length, align 8, !dbg !4042
  %31 = load ptr, ptr %px, align 8, !dbg !4043
  %pointer21 = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 1, !dbg !4044
  store ptr %31, ptr %pointer21, align 8, !dbg !4045
  store i32 0, ptr %tmp22, align 4, !dbg !4046
  %32 = load i32, ptr %tmp22, align 4, !dbg !4049
  %33 = load ptr, ptr %pss, align 8, !dbg !4050
  %elements = getelementptr inbounds %struct.anon.21, ptr %33, i32 0, i32 2, !dbg !4051
  %34 = load ptr, ptr %elements, align 8, !dbg !4051
  %35 = load i32, ptr %i, align 4, !dbg !4052
  %idxprom23 = sext i32 %35 to i64, !dbg !4050
  %arrayidx24 = getelementptr %union.acpi_object, ptr %34, i64 %idxprom23, !dbg !4050
  %call25 = call i32 @acpi_extract_package(ptr noundef %arrayidx24, ptr noundef %format, ptr noundef %state) #18, !dbg !4053
  store i32 %call25, ptr %status, align 4, !dbg !4054
  %36 = load i32, ptr %status, align 4, !dbg !4055
  %tobool26 = icmp ne i32 %36, 0, !dbg !4055
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !4057

if.then27:                                        ; preds = %for.body
  %37 = load ptr, ptr %pr.addr, align 8, !dbg !4058
  %handle28 = getelementptr inbounds %struct.acpi_processor, ptr %37, i32 0, i32 0, !dbg !4058
  %38 = load ptr, ptr %handle28, align 8, !dbg !4058
  %39 = load i32, ptr %status, align 4, !dbg !4058
  %call29 = call ptr @acpi_format_exception(i32 noundef %39) #18, !dbg !4058
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.20, ptr noundef %38, ptr noundef @.str.21, ptr noundef %call29) #18, !dbg !4058
  store i32 -14, ptr %result, align 4, !dbg !4060
  %40 = load ptr, ptr %pr.addr, align 8, !dbg !4061
  %performance30 = getelementptr inbounds %struct.acpi_processor, ptr %40, i32 0, i32 9, !dbg !4062
  %41 = load ptr, ptr %performance30, align 8, !dbg !4062
  %states31 = getelementptr inbounds %struct.acpi_processor_performance, ptr %41, i32 0, i32 5, !dbg !4063
  %42 = load ptr, ptr %states31, align 8, !dbg !4063
  call void @kfree(ptr noundef %42) #18, !dbg !4064
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4065

if.end32:                                         ; preds = %for.body
  %43 = load ptr, ptr %px, align 8, !dbg !4066
  %44 = load i32, ptr %i, align 4, !dbg !4067
  call void @amd_fixup_frequency(ptr noundef %43, i32 noundef %44) #18, !dbg !4068
  store i32 0, ptr %tmp33, align 4, !dbg !4069
  %45 = load i32, ptr %tmp33, align 4, !dbg !4072
  %46 = load ptr, ptr %px, align 8, !dbg !4073
  %core_frequency = getelementptr inbounds %struct.acpi_processor_px, ptr %46, i32 0, i32 0, !dbg !4075
  %47 = load i64, ptr %core_frequency, align 8, !dbg !4075
  %tobool34 = icmp ne i64 %47, 0, !dbg !4073
  br i1 %tobool34, label %lor.lhs.false35, label %if.then43, !dbg !4076

lor.lhs.false35:                                  ; preds = %if.end32
  %48 = load ptr, ptr %px, align 8, !dbg !4077
  %core_frequency36 = getelementptr inbounds %struct.acpi_processor_px, ptr %48, i32 0, i32 0, !dbg !4078
  %49 = load i64, ptr %core_frequency36, align 8, !dbg !4078
  %mul = mul i64 %49, 1000, !dbg !4079
  %conv37 = trunc i64 %mul to i32, !dbg !4080
  %conv38 = zext i32 %conv37 to i64, !dbg !4080
  %50 = load ptr, ptr %px, align 8, !dbg !4081
  %core_frequency39 = getelementptr inbounds %struct.acpi_processor_px, ptr %50, i32 0, i32 0, !dbg !4082
  %51 = load i64, ptr %core_frequency39, align 8, !dbg !4082
  %mul40 = mul i64 %51, 1000, !dbg !4083
  %cmp41 = icmp ne i64 %conv38, %mul40, !dbg !4084
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !4085

if.then43:                                        ; preds = %lor.lhs.false35, %if.end32
  br label %do.body44, !dbg !4086

do.body44:                                        ; preds = %if.then43
  br label %do.cond45, !dbg !4089

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !4089

do.end46:                                         ; preds = %do.cond45
  %52 = load ptr, ptr %pr.addr, align 8, !dbg !4086
  %id = getelementptr inbounds %struct.acpi_processor, ptr %52, i32 0, i32 3, !dbg !4086
  %53 = load i32, ptr %id, align 8, !dbg !4086
  %54 = load ptr, ptr %px, align 8, !dbg !4086
  %core_frequency48 = getelementptr inbounds %struct.acpi_processor_px, ptr %54, i32 0, i32 0, !dbg !4086
  %55 = load i64, ptr %core_frequency48, align 8, !dbg !4086
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22, i32 noundef %53, i64 noundef %55) #19, !dbg !4086
  store i32 %call49, ptr %tmp47, align 4, !dbg !4089
  %56 = load i32, ptr %tmp47, align 4, !dbg !4086
  %57 = load i32, ptr %last_invalid, align 4, !dbg !4091
  %cmp50 = icmp eq i32 %57, -1, !dbg !4093
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !4094

if.then52:                                        ; preds = %do.end46
  %58 = load i32, ptr %i, align 4, !dbg !4095
  store i32 %58, ptr %last_invalid, align 4, !dbg !4096
  br label %if.end53, !dbg !4097

if.end53:                                         ; preds = %if.then52, %do.end46
  br label %if.end62, !dbg !4098

if.else:                                          ; preds = %lor.lhs.false35
  %59 = load i32, ptr %last_invalid, align 4, !dbg !4099
  %cmp54 = icmp ne i32 %59, -1, !dbg !4102
  br i1 %cmp54, label %if.then56, label %if.end61, !dbg !4103

if.then56:                                        ; preds = %if.else
  %60 = load ptr, ptr %pr.addr, align 8, !dbg !4104
  %performance57 = getelementptr inbounds %struct.acpi_processor, ptr %60, i32 0, i32 9, !dbg !4106
  %61 = load ptr, ptr %performance57, align 8, !dbg !4106
  %states58 = getelementptr inbounds %struct.acpi_processor_performance, ptr %61, i32 0, i32 5, !dbg !4107
  %62 = load ptr, ptr %states58, align 8, !dbg !4107
  %63 = load i32, ptr %last_invalid, align 4, !dbg !4108
  %idxprom59 = sext i32 %63 to i64, !dbg !4104
  %arrayidx60 = getelementptr %struct.acpi_processor_px, ptr %62, i64 %idxprom59, !dbg !4104
  %64 = load ptr, ptr %px, align 8, !dbg !4109
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx60, ptr align 8 %64, i64 48, i1 false), !dbg !4110
  %65 = load i32, ptr %last_invalid, align 4, !dbg !4111
  %inc = add i32 %65, 1, !dbg !4111
  store i32 %inc, ptr %last_invalid, align 4, !dbg !4111
  br label %if.end61, !dbg !4112

if.end61:                                         ; preds = %if.then56, %if.else
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end53
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4113
  br label %cleanup, !dbg !4113

cleanup:                                          ; preds = %if.then27, %if.end62
  call void @llvm.lifetime.end.p0(i64 8, ptr %px) #17, !dbg !4113
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup85 [
    i32 0, label %cleanup.cont
    i32 4, label %end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4114

for.inc:                                          ; preds = %cleanup.cont
  %66 = load i32, ptr %i, align 4, !dbg !4115
  %inc63 = add i32 %66, 1, !dbg !4115
  store i32 %inc63, ptr %i, align 4, !dbg !4115
  br label %for.cond, !dbg !4116, !llvm.loop !4117

for.end:                                          ; preds = %for.cond
  %67 = load i32, ptr %last_invalid, align 4, !dbg !4119
  %cmp64 = icmp eq i32 %67, 0, !dbg !4121
  br i1 %cmp64, label %if.then66, label %if.end77, !dbg !4122

if.then66:                                        ; preds = %for.end
  br label %do.body67, !dbg !4123

do.body67:                                        ; preds = %if.then66
  br label %do.cond68, !dbg !4126

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !4126

do.end69:                                         ; preds = %do.cond68
  %68 = load ptr, ptr %pr.addr, align 8, !dbg !4123
  %id71 = getelementptr inbounds %struct.acpi_processor, ptr %68, i32 0, i32 3, !dbg !4123
  %69 = load i32, ptr %id71, align 8, !dbg !4123
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, i32 noundef %69) #19, !dbg !4123
  store i32 %call72, ptr %tmp70, align 4, !dbg !4126
  %70 = load i32, ptr %tmp70, align 4, !dbg !4123
  store i32 -14, ptr %result, align 4, !dbg !4128
  %71 = load ptr, ptr %pr.addr, align 8, !dbg !4129
  %performance73 = getelementptr inbounds %struct.acpi_processor, ptr %71, i32 0, i32 9, !dbg !4130
  %72 = load ptr, ptr %performance73, align 8, !dbg !4130
  %states74 = getelementptr inbounds %struct.acpi_processor_performance, ptr %72, i32 0, i32 5, !dbg !4131
  %73 = load ptr, ptr %states74, align 8, !dbg !4131
  call void @kfree(ptr noundef %73) #18, !dbg !4132
  %74 = load ptr, ptr %pr.addr, align 8, !dbg !4133
  %performance75 = getelementptr inbounds %struct.acpi_processor, ptr %74, i32 0, i32 9, !dbg !4134
  %75 = load ptr, ptr %performance75, align 8, !dbg !4134
  %states76 = getelementptr inbounds %struct.acpi_processor_performance, ptr %75, i32 0, i32 5, !dbg !4135
  store ptr null, ptr %states76, align 8, !dbg !4136
  br label %if.end77, !dbg !4137

if.end77:                                         ; preds = %do.end69, %for.end
  %76 = load i32, ptr %last_invalid, align 4, !dbg !4138
  %cmp78 = icmp sgt i32 %76, 0, !dbg !4140
  br i1 %cmp78, label %if.then80, label %if.end83, !dbg !4141

if.then80:                                        ; preds = %if.end77
  %77 = load i32, ptr %last_invalid, align 4, !dbg !4142
  %78 = load ptr, ptr %pr.addr, align 8, !dbg !4143
  %performance81 = getelementptr inbounds %struct.acpi_processor, ptr %78, i32 0, i32 9, !dbg !4144
  %79 = load ptr, ptr %performance81, align 8, !dbg !4144
  %state_count82 = getelementptr inbounds %struct.acpi_processor_performance, ptr %79, i32 0, i32 4, !dbg !4145
  store i32 %77, ptr %state_count82, align 8, !dbg !4146
  br label %if.end83, !dbg !4143

if.end83:                                         ; preds = %if.then80, %if.end77
  br label %end, !dbg !4147

end:                                              ; preds = %if.end83, %cleanup, %if.then13, %do.end
  call void @llvm.dbg.label(metadata !3955), !dbg !4148
  %pointer84 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4149
  %80 = load ptr, ptr %pointer84, align 8, !dbg !4149
  call void @kfree(ptr noundef %80) #18, !dbg !4150
  %81 = load i32, ptr %result, align 4, !dbg !4151
  store i32 %81, ptr %retval, align 4, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !4152

cleanup85:                                        ; preds = %end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_invalid) #17, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %pss) #17, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 16, ptr %state) #17, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 16, ptr %format) #17, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #17, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #17, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #17, !dbg !4153
  %82 = load i32, ptr %retval, align 4, !dbg !4153
  ret i32 %82, !dbg !4153
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4154 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4162, metadata !DIExpression()), !dbg !4164
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4163, metadata !DIExpression()), !dbg !4165
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4166
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4167
  br i1 %1, label %cond.true, label %cond.false, !dbg !4167

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4168
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4169
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4170
  %conv = zext i1 %call to i32, !dbg !4170
  br label %cond.end, !dbg !4167

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4171
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4172
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !4173
  %conv2 = zext i1 %call1 to i32, !dbg !4173
  br label %cond.end, !dbg !4167

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4167
  %tobool = icmp ne i32 %cond, 0, !dbg !4167
  ret i1 %tobool, !dbg !4174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_pstate_control() #0 align 16 !dbg !4175 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #17, !dbg !4178
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4177, metadata !DIExpression()), !dbg !4179
  %0 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !4180
  %tobool = icmp ne i32 %0, 0, !dbg !4182
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4183

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 10), align 1, !dbg !4184
  %tobool1 = icmp ne i8 %1, 0, !dbg !4185
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4186

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !4187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4187

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %tmp, align 4, !dbg !4188
  %2 = load i32, ptr %tmp, align 4, !dbg !4191
  %3 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !4192
  %conv = zext i32 %3 to i64, !dbg !4193
  %4 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 10), align 1, !dbg !4194
  %conv2 = zext i8 %4 to i32, !dbg !4195
  %call = call i32 @acpi_os_write_port(i64 noundef %conv, i32 noundef %conv2, i32 noundef 8) #18, !dbg !4196
  store i32 %call, ptr %status, align 4, !dbg !4197
  %5 = load i32, ptr %status, align 4, !dbg !4198
  %tobool3 = icmp ne i32 %5, 0, !dbg !4198
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4200

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4201

if.end5:                                          ; preds = %if.end
  br label %do.body, !dbg !4202

do.body:                                          ; preds = %if.end5
  br label %do.cond, !dbg !4204

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4204

do.end:                                           ; preds = %do.cond
  %6 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 10), align 1, !dbg !4202
  %conv7 = zext i8 %6 to i32, !dbg !4202
  %7 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !4202
  %8 = load i32, ptr %status, align 4, !dbg !4202
  %call8 = call ptr @acpi_format_exception(i32 noundef %8) #18, !dbg !4202
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %conv7, i32 noundef %7, ptr noundef %call8) #19, !dbg !4202
  store i32 %call9, ptr %tmp6, align 4, !dbg !4204
  %9 = load i32, ptr %tmp6, align 4, !dbg !4202
  store i32 -5, ptr %retval, align 4, !dbg !4206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4206

cleanup:                                          ; preds = %do.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #17, !dbg !4207
  %10 = load i32, ptr %retval, align 4, !dbg !4207
  ret i32 %10, !dbg !4207
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4208 dso_local i32 @acpi_os_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4212 dso_local ptr @acpi_format_exception(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_notify_smm(ptr noundef %calling_module) #0 align 16 !dbg !2133 {
entry:
  %retval = alloca i32, align 4
  %calling_module.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %calling_module, ptr %calling_module.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %calling_module.addr, metadata !2135, metadata !DIExpression()), !dbg !4216
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #17, !dbg !4217
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2136, metadata !DIExpression()), !dbg !4218
  store i32 0, ptr %result, align 4, !dbg !4218
  %0 = load i8, ptr @acpi_processor_cpufreq_init, align 1, !dbg !4219, !range !4221, !noundef !378
  %tobool = trunc i8 %0 to i1, !dbg !4219
  br i1 %tobool, label %if.end, label %if.then, !dbg !4222

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !4223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4223

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %calling_module.addr, align 8, !dbg !4224
  %call = call zeroext i1 @try_module_get(ptr noundef %1) #18, !dbg !4226
  br i1 %call, label %if.end2, label %if.then1, !dbg !4227

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4228

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr @acpi_processor_notify_smm.is_done, align 4, !dbg !4229
  %cmp = icmp ne i32 %2, 0, !dbg !4231
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !4232

if.then3:                                         ; preds = %if.end2
  %3 = load i32, ptr @acpi_processor_notify_smm.is_done, align 4, !dbg !4233
  %cmp4 = icmp slt i32 %3, 0, !dbg !4236
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4237

if.then5:                                         ; preds = %if.then3
  %4 = load i32, ptr @acpi_processor_notify_smm.is_done, align 4, !dbg !4238
  store i32 %4, ptr %result, align 4, !dbg !4239
  br label %if.end6, !dbg !4240

if.end6:                                          ; preds = %if.then5, %if.then3
  br label %out_put, !dbg !4241

if.end7:                                          ; preds = %if.end2
  %call8 = call i32 @acpi_processor_pstate_control() #18, !dbg !4242
  store i32 %call8, ptr %result, align 4, !dbg !4243
  %5 = load i32, ptr %result, align 4, !dbg !4244
  %cmp9 = icmp sle i32 %5, 0, !dbg !4246
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !4247

if.then10:                                        ; preds = %if.end7
  %6 = load i32, ptr %result, align 4, !dbg !4248
  %tobool11 = icmp ne i32 %6, 0, !dbg !4248
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !4251

if.then12:                                        ; preds = %if.then10
  %7 = load i32, ptr %result, align 4, !dbg !4252
  store i32 %7, ptr @acpi_processor_notify_smm.is_done, align 4, !dbg !4254
  br label %if.end13, !dbg !4255

if.else:                                          ; preds = %if.then10
  store i32 0, ptr %tmp, align 4, !dbg !4256
  %8 = load i32, ptr %tmp, align 4, !dbg !4260
  store i32 1, ptr @acpi_processor_notify_smm.is_done, align 4, !dbg !4261
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  br label %out_put, !dbg !4262

if.end14:                                         ; preds = %if.end7
  store i32 1, ptr @acpi_processor_notify_smm.is_done, align 4, !dbg !4263
  %9 = load i8, ptr @acpi_processor_ppc_in_use, align 1, !dbg !4264, !range !4221, !noundef !378
  %tobool15 = trunc i8 %9 to i1, !dbg !4264
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4266

if.then16:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4, !dbg !4267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4267

if.end17:                                         ; preds = %if.end14
  br label %out_put, !dbg !4264

out_put:                                          ; preds = %if.end17, %if.end13, %if.end6
  call void @llvm.dbg.label(metadata !2137), !dbg !4268
  %10 = load ptr, ptr %calling_module.addr, align 8, !dbg !4269
  call void @module_put(ptr noundef %10) #18, !dbg !4270
  %11 = load i32, ptr %result, align 4, !dbg !4271
  store i32 %11, ptr %retval, align 4, !dbg !4272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4272

cleanup:                                          ; preds = %out_put, %if.then16, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #17, !dbg !4273
  %12 = load i32, ptr %retval, align 4, !dbg !4273
  ret i32 %12, !dbg !4273
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4274 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4277 dso_local void @module_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_get_psd(ptr noundef %handle, ptr noundef %pdomain) #0 align 16 !dbg !4278 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pdomain.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %state = alloca %struct.acpi_buffer, align 8
  %psd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4283, metadata !DIExpression()), !dbg !4292
  store ptr %pdomain, ptr %pdomain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdomain.addr, metadata !4284, metadata !DIExpression()), !dbg !4293
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #17, !dbg !4294
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4285, metadata !DIExpression()), !dbg !4295
  store i32 0, ptr %result, align 4, !dbg !4295
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #17, !dbg !4296
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4286, metadata !DIExpression()), !dbg !4297
  store i32 0, ptr %status, align 4, !dbg !4297
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #17, !dbg !4298
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4287, metadata !DIExpression()), !dbg !4299
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_processor_get_psd.buffer, i64 16, i1 false), !dbg !4299
  call void @llvm.lifetime.start.p0(i64 16, ptr %format) #17, !dbg !4300
  call void @llvm.dbg.declare(metadata ptr %format, metadata !4288, metadata !DIExpression()), !dbg !4301
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %format, ptr align 8 @__const.acpi_processor_get_psd.format, i64 16, i1 false), !dbg !4301
  call void @llvm.lifetime.start.p0(i64 16, ptr %state) #17, !dbg !4302
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4289, metadata !DIExpression()), !dbg !4303
  call void @llvm.memset.p0.i64(ptr align 8 %state, i8 0, i64 16, i1 false), !dbg !4303
  call void @llvm.lifetime.start.p0(i64 8, ptr %psd) #17, !dbg !4304
  call void @llvm.dbg.declare(metadata ptr %psd, metadata !4290, metadata !DIExpression()), !dbg !4305
  store ptr null, ptr %psd, align 8, !dbg !4305
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !4306
  %call = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef @.str.6, ptr noundef null, ptr noundef %buffer) #18, !dbg !4307
  store i32 %call, ptr %status, align 4, !dbg !4308
  %1 = load i32, ptr %status, align 4, !dbg !4309
  %tobool = icmp ne i32 %1, 0, !dbg !4309
  br i1 %tobool, label %if.then, label %if.end, !dbg !4311

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !4312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4312

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4314
  %2 = load ptr, ptr %pointer, align 8, !dbg !4314
  store ptr %2, ptr %psd, align 8, !dbg !4315
  %3 = load ptr, ptr %psd, align 8, !dbg !4316
  %tobool1 = icmp ne ptr %3, null, !dbg !4316
  br i1 %tobool1, label %lor.lhs.false, label %if.then2, !dbg !4318

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %psd, align 8, !dbg !4319
  %5 = load i32, ptr %4, align 8, !dbg !4320
  %cmp = icmp ne i32 %5, 4, !dbg !4321
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !4322

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  br label %do.body, !dbg !4323

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !4326

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4326

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #19, !dbg !4323
  store i32 %call3, ptr %tmp, align 4, !dbg !4326
  %6 = load i32, ptr %tmp, align 4, !dbg !4323
  store i32 -14, ptr %result, align 4, !dbg !4328
  br label %end, !dbg !4329

if.end4:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %psd, align 8, !dbg !4330
  %count = getelementptr inbounds %struct.anon.21, ptr %7, i32 0, i32 1, !dbg !4332
  %8 = load i32, ptr %count, align 4, !dbg !4332
  %cmp5 = icmp ne i32 %8, 1, !dbg !4333
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !4334

if.then6:                                         ; preds = %if.end4
  br label %do.body7, !dbg !4335

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !4338

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4338

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #19, !dbg !4335
  store i32 %call11, ptr %tmp10, align 4, !dbg !4338
  %9 = load i32, ptr %tmp10, align 4, !dbg !4335
  store i32 -14, ptr %result, align 4, !dbg !4340
  br label %end, !dbg !4341

if.end12:                                         ; preds = %if.end4
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 0, !dbg !4342
  store i64 40, ptr %length, align 8, !dbg !4343
  %10 = load ptr, ptr %pdomain.addr, align 8, !dbg !4344
  %pointer13 = getelementptr inbounds %struct.acpi_buffer, ptr %state, i32 0, i32 1, !dbg !4345
  store ptr %10, ptr %pointer13, align 8, !dbg !4346
  %11 = load ptr, ptr %psd, align 8, !dbg !4347
  %elements = getelementptr inbounds %struct.anon.21, ptr %11, i32 0, i32 2, !dbg !4348
  %12 = load ptr, ptr %elements, align 8, !dbg !4348
  %arrayidx = getelementptr %union.acpi_object, ptr %12, i64 0, !dbg !4347
  %call14 = call i32 @acpi_extract_package(ptr noundef %arrayidx, ptr noundef %format, ptr noundef %state) #18, !dbg !4349
  store i32 %call14, ptr %status, align 4, !dbg !4350
  %13 = load i32, ptr %status, align 4, !dbg !4351
  %tobool15 = icmp ne i32 %13, 0, !dbg !4351
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !4353

if.then16:                                        ; preds = %if.end12
  br label %do.body17, !dbg !4354

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !4357

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4357

do.end19:                                         ; preds = %do.cond18
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #19, !dbg !4354
  store i32 %call21, ptr %tmp20, align 4, !dbg !4357
  %14 = load i32, ptr %tmp20, align 4, !dbg !4354
  store i32 -14, ptr %result, align 4, !dbg !4359
  br label %end, !dbg !4360

if.end22:                                         ; preds = %if.end12
  %15 = load ptr, ptr %pdomain.addr, align 8, !dbg !4361
  %num_entries = getelementptr inbounds %struct.acpi_psd_package, ptr %15, i32 0, i32 0, !dbg !4363
  %16 = load i64, ptr %num_entries, align 1, !dbg !4363
  %cmp23 = icmp ne i64 %16, 5, !dbg !4364
  br i1 %cmp23, label %if.then24, label %if.end30, !dbg !4365

if.then24:                                        ; preds = %if.end22
  br label %do.body25, !dbg !4366

do.body25:                                        ; preds = %if.then24
  br label %do.cond26, !dbg !4369

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !4369

do.end27:                                         ; preds = %do.cond26
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #19, !dbg !4366
  store i32 %call29, ptr %tmp28, align 4, !dbg !4369
  %17 = load i32, ptr %tmp28, align 4, !dbg !4366
  store i32 -14, ptr %result, align 4, !dbg !4371
  br label %end, !dbg !4372

if.end30:                                         ; preds = %if.end22
  %18 = load ptr, ptr %pdomain.addr, align 8, !dbg !4373
  %revision = getelementptr inbounds %struct.acpi_psd_package, ptr %18, i32 0, i32 1, !dbg !4375
  %19 = load i64, ptr %revision, align 1, !dbg !4375
  %cmp31 = icmp ne i64 %19, 0, !dbg !4376
  br i1 %cmp31, label %if.then32, label %if.end38, !dbg !4377

if.then32:                                        ; preds = %if.end30
  br label %do.body33, !dbg !4378

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !4381

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4381

do.end35:                                         ; preds = %do.cond34
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #19, !dbg !4378
  store i32 %call37, ptr %tmp36, align 4, !dbg !4381
  %20 = load i32, ptr %tmp36, align 4, !dbg !4378
  store i32 -14, ptr %result, align 4, !dbg !4383
  br label %end, !dbg !4384

if.end38:                                         ; preds = %if.end30
  %21 = load ptr, ptr %pdomain.addr, align 8, !dbg !4385
  %coord_type = getelementptr inbounds %struct.acpi_psd_package, ptr %21, i32 0, i32 3, !dbg !4387
  %22 = load i64, ptr %coord_type, align 1, !dbg !4387
  %cmp39 = icmp ne i64 %22, 252, !dbg !4388
  br i1 %cmp39, label %land.lhs.true, label %if.end51, !dbg !4389

land.lhs.true:                                    ; preds = %if.end38
  %23 = load ptr, ptr %pdomain.addr, align 8, !dbg !4390
  %coord_type40 = getelementptr inbounds %struct.acpi_psd_package, ptr %23, i32 0, i32 3, !dbg !4391
  %24 = load i64, ptr %coord_type40, align 1, !dbg !4391
  %cmp41 = icmp ne i64 %24, 253, !dbg !4392
  br i1 %cmp41, label %land.lhs.true42, label %if.end51, !dbg !4393

land.lhs.true42:                                  ; preds = %land.lhs.true
  %25 = load ptr, ptr %pdomain.addr, align 8, !dbg !4394
  %coord_type43 = getelementptr inbounds %struct.acpi_psd_package, ptr %25, i32 0, i32 3, !dbg !4395
  %26 = load i64, ptr %coord_type43, align 1, !dbg !4395
  %cmp44 = icmp ne i64 %26, 254, !dbg !4396
  br i1 %cmp44, label %if.then45, label %if.end51, !dbg !4397

if.then45:                                        ; preds = %land.lhs.true42
  br label %do.body46, !dbg !4398

do.body46:                                        ; preds = %if.then45
  br label %do.cond47, !dbg !4401

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !4401

do.end48:                                         ; preds = %do.cond47
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #19, !dbg !4398
  store i32 %call50, ptr %tmp49, align 4, !dbg !4401
  %27 = load i32, ptr %tmp49, align 4, !dbg !4398
  store i32 -14, ptr %result, align 4, !dbg !4403
  br label %end, !dbg !4404

if.end51:                                         ; preds = %land.lhs.true42, %land.lhs.true, %if.end38
  br label %end, !dbg !4405

end:                                              ; preds = %if.end51, %do.end48, %do.end35, %do.end27, %do.end19, %do.end9, %do.end
  call void @llvm.dbg.label(metadata !4291), !dbg !4406
  %pointer52 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !4407
  %28 = load ptr, ptr %pointer52, align 8, !dbg !4407
  call void @kfree(ptr noundef %28) #18, !dbg !4408
  %29 = load i32, ptr %result, align 4, !dbg !4409
  store i32 %29, ptr %retval, align 4, !dbg !4410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4410

cleanup:                                          ; preds = %end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %psd) #17, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 16, ptr %state) #17, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 16, ptr %format) #17, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #17, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #17, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #17, !dbg !4411
  %30 = load i32, ptr %retval, align 4, !dbg !4411
  ret i32 %30, !dbg !4411
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4412 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4422 dso_local i32 @acpi_extract_package(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4425 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_preregister_performance(ptr noundef %performance) #0 align 16 !dbg !4428 {
entry:
  %retval = alloca i32, align 4
  %performance.addr = alloca ptr, align 8
  %count_target = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %covered_cpus = alloca [1 x %struct.cpumask], align 8
  %pr = alloca ptr, align 8
  %pdomain = alloca ptr, align 8
  %match_pr = alloca ptr, align 8
  %match_pdomain = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %__vpp_verify14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__ptr18 = alloca i64, align 8
  %tmp19 = alloca ptr, align 8
  %__vpp_verify34 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  %__ptr38 = alloca i64, align 8
  %tmp39 = alloca ptr, align 8
  %__vpp_verify47 = alloca ptr, align 8
  %tmp50 = alloca ptr, align 8
  %__ptr51 = alloca i64, align 8
  %tmp52 = alloca ptr, align 8
  %__vpp_verify76 = alloca ptr, align 8
  %tmp79 = alloca ptr, align 8
  %__ptr80 = alloca i64, align 8
  %tmp81 = alloca ptr, align 8
  %__vpp_verify134 = alloca ptr, align 8
  %tmp137 = alloca ptr, align 8
  %__ptr138 = alloca i64, align 8
  %tmp139 = alloca ptr, align 8
  %__vpp_verify184 = alloca ptr, align 8
  %tmp187 = alloca ptr, align 8
  %__ptr188 = alloca i64, align 8
  %tmp189 = alloca ptr, align 8
  %__vpp_verify228 = alloca ptr, align 8
  %tmp231 = alloca ptr, align 8
  %__ptr232 = alloca i64, align 8
  %tmp233 = alloca ptr, align 8
  store ptr %performance, ptr %performance.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %performance.addr, metadata !4432, metadata !DIExpression()), !dbg !4503
  call void @llvm.lifetime.start.p0(i64 4, ptr %count_target) #17, !dbg !4504
  call void @llvm.dbg.declare(metadata ptr %count_target, metadata !4433, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !4506
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4434, metadata !DIExpression()), !dbg !4507
  store i32 0, ptr %retval1, align 4, !dbg !4507
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4435, metadata !DIExpression()), !dbg !4509
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4436, metadata !DIExpression()), !dbg !4510
  call void @llvm.lifetime.start.p0(i64 8, ptr %covered_cpus) #17, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %covered_cpus, metadata !4437, metadata !DIExpression()), !dbg !4512
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #17, !dbg !4513
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4438, metadata !DIExpression()), !dbg !4514
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdomain) #17, !dbg !4515
  call void @llvm.dbg.declare(metadata ptr %pdomain, metadata !4439, metadata !DIExpression()), !dbg !4516
  call void @llvm.lifetime.start.p0(i64 8, ptr %match_pr) #17, !dbg !4517
  call void @llvm.dbg.declare(metadata ptr %match_pr, metadata !4440, metadata !DIExpression()), !dbg !4518
  call void @llvm.lifetime.start.p0(i64 8, ptr %match_pdomain) #17, !dbg !4519
  call void @llvm.dbg.declare(metadata ptr %match_pdomain, metadata !4441, metadata !DIExpression()), !dbg !4520
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef %covered_cpus, i32 noundef 3264) #18, !dbg !4521
  br i1 %call, label %if.end, label %if.then, !dbg !4523

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4524

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @performance_mutex) #18, !dbg !4525
  store i32 0, ptr %i, align 4, !dbg !4526
  br label %for.cond, !dbg !4526

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !dbg !4527
  %conv = zext i32 %0 to i64, !dbg !4527
  %call2 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #18, !dbg !4527
  %conv3 = trunc i64 %call2 to i32, !dbg !4527
  store i32 %conv3, ptr %i, align 4, !dbg !4527
  %1 = load i32, ptr %i, align 4, !dbg !4527
  %cmp = icmp ult i32 %1, 64, !dbg !4527
  br i1 %cmp, label %for.body, label %for.end, !dbg !4526

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4528

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4529
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4442, metadata !DIExpression()), !dbg !4529
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4529
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !4529
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4528
  br label %do.cond, !dbg !4529

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4529

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4530
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4448, metadata !DIExpression()), !dbg !4530
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !4530
  %3 = load i64, ptr %__ptr, align 8, !dbg !4530
  %4 = load i32, ptr %i, align 4, !dbg !4530
  %idxprom = zext i32 %4 to i64, !dbg !4530
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4530
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4530
  %add = add i64 %3, %5, !dbg !4530
  %6 = inttoptr i64 %add to ptr, !dbg !4530
  store ptr %6, ptr %tmp5, align 8, !dbg !4530
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4528
  %7 = load ptr, ptr %tmp5, align 8, !dbg !4530
  store ptr %7, ptr %tmp, align 8, !dbg !4529
  %8 = load ptr, ptr %tmp, align 8, !dbg !4528
  %9 = load ptr, ptr %8, align 8, !dbg !4531
  store ptr %9, ptr %pr, align 8, !dbg !4532
  %10 = load ptr, ptr %pr, align 8, !dbg !4533
  %tobool = icmp ne ptr %10, null, !dbg !4533
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !4535

if.then6:                                         ; preds = %do.end
  br label %for.inc, !dbg !4536

if.end7:                                          ; preds = %do.end
  %11 = load ptr, ptr %pr, align 8, !dbg !4538
  %performance8 = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 9, !dbg !4540
  %12 = load ptr, ptr %performance8, align 8, !dbg !4540
  %tobool9 = icmp ne ptr %12, null, !dbg !4538
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4541

if.then10:                                        ; preds = %if.end7
  store i32 -16, ptr %retval1, align 4, !dbg !4542
  br label %err_out, !dbg !4544

if.end11:                                         ; preds = %if.end7
  %13 = load ptr, ptr %performance.addr, align 8, !dbg !4545
  %tobool12 = icmp ne ptr %13, null, !dbg !4545
  br i1 %tobool12, label %lor.lhs.false, label %if.then24, !dbg !4546

lor.lhs.false:                                    ; preds = %if.end11
  br label %do.body13, !dbg !4547

do.body13:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #17, !dbg !4548
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !4450, metadata !DIExpression()), !dbg !4548
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !4548
  %14 = load ptr, ptr %__vpp_verify14, align 8, !dbg !4548
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #17, !dbg !4547
  br label %do.cond15, !dbg !4548

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !4548

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr18) #17, !dbg !4549
  call void @llvm.dbg.declare(metadata ptr %__ptr18, metadata !4454, metadata !DIExpression()), !dbg !4549
  %15 = load ptr, ptr %performance.addr, align 8, !dbg !4549
  %16 = ptrtoint ptr %15 to i64, !dbg !4549
  store i64 %16, ptr %__ptr18, align 8, !dbg !4549
  %17 = load i64, ptr %__ptr18, align 8, !dbg !4549
  %18 = load i32, ptr %i, align 4, !dbg !4549
  %idxprom20 = zext i32 %18 to i64, !dbg !4549
  %arrayidx21 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom20, !dbg !4549
  %19 = load i64, ptr %arrayidx21, align 8, !dbg !4549
  %add22 = add i64 %17, %19, !dbg !4549
  %20 = inttoptr i64 %add22 to ptr, !dbg !4549
  store ptr %20, ptr %tmp19, align 8, !dbg !4549
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr18) #17, !dbg !4547
  %21 = load ptr, ptr %tmp19, align 8, !dbg !4549
  store ptr %21, ptr %tmp17, align 8, !dbg !4548
  %22 = load ptr, ptr %tmp17, align 8, !dbg !4547
  %tobool23 = icmp ne ptr %22, null, !dbg !4550
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !4551

if.then24:                                        ; preds = %do.end16, %if.end11
  store i32 -22, ptr %retval1, align 4, !dbg !4552
  br label %err_out, !dbg !4554

if.end25:                                         ; preds = %do.end16
  br label %for.inc, !dbg !4555

for.inc:                                          ; preds = %if.end25, %if.then6
  %23 = load i32, ptr %i, align 4, !dbg !4527
  %inc = add i32 %23, 1, !dbg !4527
  store i32 %inc, ptr %i, align 4, !dbg !4527
  br label %for.cond, !dbg !4527, !llvm.loop !4556

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !4558
  br label %for.cond26, !dbg !4558

for.cond26:                                       ; preds = %for.inc62, %for.end
  %24 = load i32, ptr %i, align 4, !dbg !4559
  %conv27 = zext i32 %24 to i64, !dbg !4559
  %call28 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv27) #18, !dbg !4559
  %conv29 = trunc i64 %call28 to i32, !dbg !4559
  store i32 %conv29, ptr %i, align 4, !dbg !4559
  %25 = load i32, ptr %i, align 4, !dbg !4559
  %cmp30 = icmp ult i32 %25, 64, !dbg !4559
  br i1 %cmp30, label %for.body32, label %for.end64, !dbg !4558

for.body32:                                       ; preds = %for.cond26
  br label %do.body33, !dbg !4560

do.body33:                                        ; preds = %for.body32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify34) #17, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify34, metadata !4456, metadata !DIExpression()), !dbg !4561
  store ptr null, ptr %__vpp_verify34, align 8, !dbg !4561
  %26 = load ptr, ptr %__vpp_verify34, align 8, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify34) #17, !dbg !4560
  br label %do.cond35, !dbg !4561

do.cond35:                                        ; preds = %do.body33
  br label %do.end36, !dbg !4561

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr38) #17, !dbg !4562
  call void @llvm.dbg.declare(metadata ptr %__ptr38, metadata !4462, metadata !DIExpression()), !dbg !4562
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr38, align 8, !dbg !4562
  %27 = load i64, ptr %__ptr38, align 8, !dbg !4562
  %28 = load i32, ptr %i, align 4, !dbg !4562
  %idxprom40 = zext i32 %28 to i64, !dbg !4562
  %arrayidx41 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom40, !dbg !4562
  %29 = load i64, ptr %arrayidx41, align 8, !dbg !4562
  %add42 = add i64 %27, %29, !dbg !4562
  %30 = inttoptr i64 %add42 to ptr, !dbg !4562
  store ptr %30, ptr %tmp39, align 8, !dbg !4562
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr38) #17, !dbg !4560
  %31 = load ptr, ptr %tmp39, align 8, !dbg !4562
  store ptr %31, ptr %tmp37, align 8, !dbg !4561
  %32 = load ptr, ptr %tmp37, align 8, !dbg !4560
  %33 = load ptr, ptr %32, align 8, !dbg !4563
  store ptr %33, ptr %pr, align 8, !dbg !4564
  %34 = load ptr, ptr %pr, align 8, !dbg !4565
  %tobool43 = icmp ne ptr %34, null, !dbg !4565
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !4567

if.then44:                                        ; preds = %do.end36
  br label %for.inc62, !dbg !4568

if.end45:                                         ; preds = %do.end36
  br label %do.body46, !dbg !4569

do.body46:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify47) #17, !dbg !4570
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify47, metadata !4464, metadata !DIExpression()), !dbg !4570
  store ptr null, ptr %__vpp_verify47, align 8, !dbg !4570
  %35 = load ptr, ptr %__vpp_verify47, align 8, !dbg !4570
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify47) #17, !dbg !4569
  br label %do.cond48, !dbg !4570

do.cond48:                                        ; preds = %do.body46
  br label %do.end49, !dbg !4570

do.end49:                                         ; preds = %do.cond48
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr51) #17, !dbg !4571
  call void @llvm.dbg.declare(metadata ptr %__ptr51, metadata !4467, metadata !DIExpression()), !dbg !4571
  %36 = load ptr, ptr %performance.addr, align 8, !dbg !4571
  %37 = ptrtoint ptr %36 to i64, !dbg !4571
  store i64 %37, ptr %__ptr51, align 8, !dbg !4571
  %38 = load i64, ptr %__ptr51, align 8, !dbg !4571
  %39 = load i32, ptr %i, align 4, !dbg !4571
  %idxprom53 = zext i32 %39 to i64, !dbg !4571
  %arrayidx54 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom53, !dbg !4571
  %40 = load i64, ptr %arrayidx54, align 8, !dbg !4571
  %add55 = add i64 %38, %40, !dbg !4571
  %41 = inttoptr i64 %add55 to ptr, !dbg !4571
  store ptr %41, ptr %tmp52, align 8, !dbg !4571
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr51) #17, !dbg !4569
  %42 = load ptr, ptr %tmp52, align 8, !dbg !4571
  store ptr %42, ptr %tmp50, align 8, !dbg !4570
  %43 = load ptr, ptr %tmp50, align 8, !dbg !4569
  %44 = load ptr, ptr %pr, align 8, !dbg !4572
  %performance56 = getelementptr inbounds %struct.acpi_processor, ptr %44, i32 0, i32 9, !dbg !4573
  store ptr %43, ptr %performance56, align 8, !dbg !4574
  %45 = load ptr, ptr %pr, align 8, !dbg !4575
  %performance57 = getelementptr inbounds %struct.acpi_processor, ptr %45, i32 0, i32 9, !dbg !4576
  %46 = load ptr, ptr %performance57, align 8, !dbg !4576
  %domain_info = getelementptr inbounds %struct.acpi_processor_performance, ptr %46, i32 0, i32 6, !dbg !4577
  store ptr %domain_info, ptr %pdomain, align 8, !dbg !4578
  %47 = load ptr, ptr %pr, align 8, !dbg !4579
  %handle = getelementptr inbounds %struct.acpi_processor, ptr %47, i32 0, i32 0, !dbg !4581
  %48 = load ptr, ptr %handle, align 8, !dbg !4581
  %49 = load ptr, ptr %pdomain, align 8, !dbg !4582
  %call58 = call i32 @acpi_processor_get_psd(ptr noundef %48, ptr noundef %49) #18, !dbg !4583
  %tobool59 = icmp ne i32 %call58, 0, !dbg !4583
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !4584

if.then60:                                        ; preds = %do.end49
  store i32 -22, ptr %retval1, align 4, !dbg !4585
  br label %for.inc62, !dbg !4587

if.end61:                                         ; preds = %do.end49
  br label %for.inc62, !dbg !4588

for.inc62:                                        ; preds = %if.end61, %if.then60, %if.then44
  %50 = load i32, ptr %i, align 4, !dbg !4559
  %inc63 = add i32 %50, 1, !dbg !4559
  store i32 %inc63, ptr %i, align 4, !dbg !4559
  br label %for.cond26, !dbg !4559, !llvm.loop !4589

for.end64:                                        ; preds = %for.cond26
  %51 = load i32, ptr %retval1, align 4, !dbg !4591
  %tobool65 = icmp ne i32 %51, 0, !dbg !4591
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !4593

if.then66:                                        ; preds = %for.end64
  br label %err_ret, !dbg !4594

if.end67:                                         ; preds = %for.end64
  store i32 0, ptr %i, align 4, !dbg !4595
  br label %for.cond68, !dbg !4595

for.cond68:                                       ; preds = %for.inc217, %if.end67
  %52 = load i32, ptr %i, align 4, !dbg !4596
  %conv69 = zext i32 %52 to i64, !dbg !4596
  %call70 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv69) #18, !dbg !4596
  %conv71 = trunc i64 %call70 to i32, !dbg !4596
  store i32 %conv71, ptr %i, align 4, !dbg !4596
  %53 = load i32, ptr %i, align 4, !dbg !4596
  %cmp72 = icmp ult i32 %53, 64, !dbg !4596
  br i1 %cmp72, label %for.body74, label %for.end219, !dbg !4595

for.body74:                                       ; preds = %for.cond68
  br label %do.body75, !dbg !4597

do.body75:                                        ; preds = %for.body74
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify76) #17, !dbg !4598
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify76, metadata !4469, metadata !DIExpression()), !dbg !4598
  store ptr null, ptr %__vpp_verify76, align 8, !dbg !4598
  %54 = load ptr, ptr %__vpp_verify76, align 8, !dbg !4598
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify76) #17, !dbg !4597
  br label %do.cond77, !dbg !4598

do.cond77:                                        ; preds = %do.body75
  br label %do.end78, !dbg !4598

do.end78:                                         ; preds = %do.cond77
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr80) #17, !dbg !4599
  call void @llvm.dbg.declare(metadata ptr %__ptr80, metadata !4475, metadata !DIExpression()), !dbg !4599
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr80, align 8, !dbg !4599
  %55 = load i64, ptr %__ptr80, align 8, !dbg !4599
  %56 = load i32, ptr %i, align 4, !dbg !4599
  %idxprom82 = zext i32 %56 to i64, !dbg !4599
  %arrayidx83 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom82, !dbg !4599
  %57 = load i64, ptr %arrayidx83, align 8, !dbg !4599
  %add84 = add i64 %55, %57, !dbg !4599
  %58 = inttoptr i64 %add84 to ptr, !dbg !4599
  store ptr %58, ptr %tmp81, align 8, !dbg !4599
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr80) #17, !dbg !4597
  %59 = load ptr, ptr %tmp81, align 8, !dbg !4599
  store ptr %59, ptr %tmp79, align 8, !dbg !4598
  %60 = load ptr, ptr %tmp79, align 8, !dbg !4597
  %61 = load ptr, ptr %60, align 8, !dbg !4600
  store ptr %61, ptr %pr, align 8, !dbg !4601
  %62 = load ptr, ptr %pr, align 8, !dbg !4602
  %tobool85 = icmp ne ptr %62, null, !dbg !4602
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !4604

if.then86:                                        ; preds = %do.end78
  br label %for.inc217, !dbg !4605

if.end87:                                         ; preds = %do.end78
  %63 = load i32, ptr %i, align 4, !dbg !4606
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !4608
  %call88 = call zeroext i1 @cpumask_test_cpu(i32 noundef %63, ptr noundef %arraydecay) #18, !dbg !4609
  br i1 %call88, label %if.then89, label %if.end90, !dbg !4610

if.then89:                                        ; preds = %if.end87
  br label %for.inc217, !dbg !4611

if.end90:                                         ; preds = %if.end87
  %64 = load ptr, ptr %pr, align 8, !dbg !4612
  %performance91 = getelementptr inbounds %struct.acpi_processor, ptr %64, i32 0, i32 9, !dbg !4613
  %65 = load ptr, ptr %performance91, align 8, !dbg !4613
  %domain_info92 = getelementptr inbounds %struct.acpi_processor_performance, ptr %65, i32 0, i32 6, !dbg !4614
  store ptr %domain_info92, ptr %pdomain, align 8, !dbg !4615
  %66 = load i32, ptr %i, align 4, !dbg !4616
  %67 = load ptr, ptr %pr, align 8, !dbg !4617
  %performance93 = getelementptr inbounds %struct.acpi_processor, ptr %67, i32 0, i32 9, !dbg !4618
  %68 = load ptr, ptr %performance93, align 8, !dbg !4618
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_performance, ptr %68, i32 0, i32 7, !dbg !4619
  %arraydecay94 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map, i64 0, i64 0, !dbg !4617
  call void @cpumask_set_cpu(i32 noundef %66, ptr noundef %arraydecay94) #18, !dbg !4620
  %69 = load i32, ptr %i, align 4, !dbg !4621
  %arraydecay95 = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !4622
  call void @cpumask_set_cpu(i32 noundef %69, ptr noundef %arraydecay95) #18, !dbg !4623
  %70 = load ptr, ptr %pdomain, align 8, !dbg !4624
  %num_processors = getelementptr inbounds %struct.acpi_psd_package, ptr %70, i32 0, i32 4, !dbg !4626
  %71 = load i64, ptr %num_processors, align 1, !dbg !4626
  %cmp96 = icmp ule i64 %71, 1, !dbg !4627
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !4628

if.then98:                                        ; preds = %if.end90
  br label %for.inc217, !dbg !4629

if.end99:                                         ; preds = %if.end90
  %72 = load ptr, ptr %pdomain, align 8, !dbg !4630
  %num_processors100 = getelementptr inbounds %struct.acpi_psd_package, ptr %72, i32 0, i32 4, !dbg !4631
  %73 = load i64, ptr %num_processors100, align 1, !dbg !4631
  %conv101 = trunc i64 %73 to i32, !dbg !4630
  store i32 %conv101, ptr %count_target, align 4, !dbg !4632
  %74 = load ptr, ptr %pdomain, align 8, !dbg !4633
  %coord_type = getelementptr inbounds %struct.acpi_psd_package, ptr %74, i32 0, i32 3, !dbg !4635
  %75 = load i64, ptr %coord_type, align 1, !dbg !4635
  %cmp102 = icmp eq i64 %75, 252, !dbg !4636
  br i1 %cmp102, label %if.then104, label %if.else, !dbg !4637

if.then104:                                       ; preds = %if.end99
  %76 = load ptr, ptr %pr, align 8, !dbg !4638
  %performance105 = getelementptr inbounds %struct.acpi_processor, ptr %76, i32 0, i32 9, !dbg !4639
  %77 = load ptr, ptr %performance105, align 8, !dbg !4639
  %shared_type = getelementptr inbounds %struct.acpi_processor_performance, ptr %77, i32 0, i32 8, !dbg !4640
  store i32 2, ptr %shared_type, align 8, !dbg !4641
  br label %if.end121, !dbg !4638

if.else:                                          ; preds = %if.end99
  %78 = load ptr, ptr %pdomain, align 8, !dbg !4642
  %coord_type106 = getelementptr inbounds %struct.acpi_psd_package, ptr %78, i32 0, i32 3, !dbg !4644
  %79 = load i64, ptr %coord_type106, align 1, !dbg !4644
  %cmp107 = icmp eq i64 %79, 254, !dbg !4645
  br i1 %cmp107, label %if.then109, label %if.else112, !dbg !4646

if.then109:                                       ; preds = %if.else
  %80 = load ptr, ptr %pr, align 8, !dbg !4647
  %performance110 = getelementptr inbounds %struct.acpi_processor, ptr %80, i32 0, i32 9, !dbg !4648
  %81 = load ptr, ptr %performance110, align 8, !dbg !4648
  %shared_type111 = getelementptr inbounds %struct.acpi_processor_performance, ptr %81, i32 0, i32 8, !dbg !4649
  store i32 1, ptr %shared_type111, align 8, !dbg !4650
  br label %if.end120, !dbg !4647

if.else112:                                       ; preds = %if.else
  %82 = load ptr, ptr %pdomain, align 8, !dbg !4651
  %coord_type113 = getelementptr inbounds %struct.acpi_psd_package, ptr %82, i32 0, i32 3, !dbg !4653
  %83 = load i64, ptr %coord_type113, align 1, !dbg !4653
  %cmp114 = icmp eq i64 %83, 253, !dbg !4654
  br i1 %cmp114, label %if.then116, label %if.end119, !dbg !4655

if.then116:                                       ; preds = %if.else112
  %84 = load ptr, ptr %pr, align 8, !dbg !4656
  %performance117 = getelementptr inbounds %struct.acpi_processor, ptr %84, i32 0, i32 9, !dbg !4657
  %85 = load ptr, ptr %performance117, align 8, !dbg !4657
  %shared_type118 = getelementptr inbounds %struct.acpi_processor_performance, ptr %85, i32 0, i32 8, !dbg !4658
  store i32 3, ptr %shared_type118, align 8, !dbg !4659
  br label %if.end119, !dbg !4656

if.end119:                                        ; preds = %if.then116, %if.else112
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then109
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then104
  store i32 0, ptr %j, align 4, !dbg !4660
  br label %for.cond122, !dbg !4660

for.cond122:                                      ; preds = %for.inc169, %if.end121
  %86 = load i32, ptr %j, align 4, !dbg !4661
  %conv123 = zext i32 %86 to i64, !dbg !4661
  %call124 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv123) #18, !dbg !4661
  %conv125 = trunc i64 %call124 to i32, !dbg !4661
  store i32 %conv125, ptr %j, align 4, !dbg !4661
  %87 = load i32, ptr %j, align 4, !dbg !4661
  %cmp126 = icmp ult i32 %87, 64, !dbg !4661
  br i1 %cmp126, label %for.body128, label %for.end171, !dbg !4660

for.body128:                                      ; preds = %for.cond122
  %88 = load i32, ptr %i, align 4, !dbg !4662
  %89 = load i32, ptr %j, align 4, !dbg !4664
  %cmp129 = icmp eq i32 %88, %89, !dbg !4665
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !4666

if.then131:                                       ; preds = %for.body128
  br label %for.inc169, !dbg !4667

if.end132:                                        ; preds = %for.body128
  br label %do.body133, !dbg !4668

do.body133:                                       ; preds = %if.end132
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify134) #17, !dbg !4669
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify134, metadata !4477, metadata !DIExpression()), !dbg !4669
  store ptr null, ptr %__vpp_verify134, align 8, !dbg !4669
  %90 = load ptr, ptr %__vpp_verify134, align 8, !dbg !4669
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify134) #17, !dbg !4668
  br label %do.cond135, !dbg !4669

do.cond135:                                       ; preds = %do.body133
  br label %do.end136, !dbg !4669

do.end136:                                        ; preds = %do.cond135
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr138) #17, !dbg !4670
  call void @llvm.dbg.declare(metadata ptr %__ptr138, metadata !4483, metadata !DIExpression()), !dbg !4670
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr138, align 8, !dbg !4670
  %91 = load i64, ptr %__ptr138, align 8, !dbg !4670
  %92 = load i32, ptr %j, align 4, !dbg !4670
  %idxprom140 = zext i32 %92 to i64, !dbg !4670
  %arrayidx141 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom140, !dbg !4670
  %93 = load i64, ptr %arrayidx141, align 8, !dbg !4670
  %add142 = add i64 %91, %93, !dbg !4670
  %94 = inttoptr i64 %add142 to ptr, !dbg !4670
  store ptr %94, ptr %tmp139, align 8, !dbg !4670
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr138) #17, !dbg !4668
  %95 = load ptr, ptr %tmp139, align 8, !dbg !4670
  store ptr %95, ptr %tmp137, align 8, !dbg !4669
  %96 = load ptr, ptr %tmp137, align 8, !dbg !4668
  %97 = load ptr, ptr %96, align 8, !dbg !4671
  store ptr %97, ptr %match_pr, align 8, !dbg !4672
  %98 = load ptr, ptr %match_pr, align 8, !dbg !4673
  %tobool143 = icmp ne ptr %98, null, !dbg !4673
  br i1 %tobool143, label %if.end145, label %if.then144, !dbg !4675

if.then144:                                       ; preds = %do.end136
  br label %for.inc169, !dbg !4676

if.end145:                                        ; preds = %do.end136
  %99 = load ptr, ptr %match_pr, align 8, !dbg !4677
  %performance146 = getelementptr inbounds %struct.acpi_processor, ptr %99, i32 0, i32 9, !dbg !4678
  %100 = load ptr, ptr %performance146, align 8, !dbg !4678
  %domain_info147 = getelementptr inbounds %struct.acpi_processor_performance, ptr %100, i32 0, i32 6, !dbg !4679
  store ptr %domain_info147, ptr %match_pdomain, align 8, !dbg !4680
  %101 = load ptr, ptr %match_pdomain, align 8, !dbg !4681
  %domain = getelementptr inbounds %struct.acpi_psd_package, ptr %101, i32 0, i32 2, !dbg !4683
  %102 = load i64, ptr %domain, align 1, !dbg !4683
  %103 = load ptr, ptr %pdomain, align 8, !dbg !4684
  %domain148 = getelementptr inbounds %struct.acpi_psd_package, ptr %103, i32 0, i32 2, !dbg !4685
  %104 = load i64, ptr %domain148, align 1, !dbg !4685
  %cmp149 = icmp ne i64 %102, %104, !dbg !4686
  br i1 %cmp149, label %if.then151, label %if.end152, !dbg !4687

if.then151:                                       ; preds = %if.end145
  br label %for.inc169, !dbg !4688

if.end152:                                        ; preds = %if.end145
  %105 = load ptr, ptr %match_pdomain, align 8, !dbg !4689
  %num_processors153 = getelementptr inbounds %struct.acpi_psd_package, ptr %105, i32 0, i32 4, !dbg !4691
  %106 = load i64, ptr %num_processors153, align 1, !dbg !4691
  %107 = load i32, ptr %count_target, align 4, !dbg !4692
  %conv154 = sext i32 %107 to i64, !dbg !4692
  %cmp155 = icmp ne i64 %106, %conv154, !dbg !4693
  br i1 %cmp155, label %if.then157, label %if.end158, !dbg !4694

if.then157:                                       ; preds = %if.end152
  store i32 -22, ptr %retval1, align 4, !dbg !4695
  br label %err_ret, !dbg !4697

if.end158:                                        ; preds = %if.end152
  %108 = load ptr, ptr %pdomain, align 8, !dbg !4698
  %coord_type159 = getelementptr inbounds %struct.acpi_psd_package, ptr %108, i32 0, i32 3, !dbg !4700
  %109 = load i64, ptr %coord_type159, align 1, !dbg !4700
  %110 = load ptr, ptr %match_pdomain, align 8, !dbg !4701
  %coord_type160 = getelementptr inbounds %struct.acpi_psd_package, ptr %110, i32 0, i32 3, !dbg !4702
  %111 = load i64, ptr %coord_type160, align 1, !dbg !4702
  %cmp161 = icmp ne i64 %109, %111, !dbg !4703
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !4704

if.then163:                                       ; preds = %if.end158
  store i32 -22, ptr %retval1, align 4, !dbg !4705
  br label %err_ret, !dbg !4707

if.end164:                                        ; preds = %if.end158
  %112 = load i32, ptr %j, align 4, !dbg !4708
  %arraydecay165 = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !4709
  call void @cpumask_set_cpu(i32 noundef %112, ptr noundef %arraydecay165) #18, !dbg !4710
  %113 = load i32, ptr %j, align 4, !dbg !4711
  %114 = load ptr, ptr %pr, align 8, !dbg !4712
  %performance166 = getelementptr inbounds %struct.acpi_processor, ptr %114, i32 0, i32 9, !dbg !4713
  %115 = load ptr, ptr %performance166, align 8, !dbg !4713
  %shared_cpu_map167 = getelementptr inbounds %struct.acpi_processor_performance, ptr %115, i32 0, i32 7, !dbg !4714
  %arraydecay168 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map167, i64 0, i64 0, !dbg !4712
  call void @cpumask_set_cpu(i32 noundef %113, ptr noundef %arraydecay168) #18, !dbg !4715
  br label %for.inc169, !dbg !4716

for.inc169:                                       ; preds = %if.end164, %if.then151, %if.then144, %if.then131
  %116 = load i32, ptr %j, align 4, !dbg !4661
  %inc170 = add i32 %116, 1, !dbg !4661
  store i32 %inc170, ptr %j, align 4, !dbg !4661
  br label %for.cond122, !dbg !4661, !llvm.loop !4717

for.end171:                                       ; preds = %for.cond122
  store i32 0, ptr %j, align 4, !dbg !4719
  br label %for.cond172, !dbg !4719

for.cond172:                                      ; preds = %for.inc214, %for.end171
  %117 = load i32, ptr %j, align 4, !dbg !4720
  %conv173 = zext i32 %117 to i64, !dbg !4720
  %call174 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv173) #18, !dbg !4720
  %conv175 = trunc i64 %call174 to i32, !dbg !4720
  store i32 %conv175, ptr %j, align 4, !dbg !4720
  %118 = load i32, ptr %j, align 4, !dbg !4720
  %cmp176 = icmp ult i32 %118, 64, !dbg !4720
  br i1 %cmp176, label %for.body178, label %for.end216, !dbg !4719

for.body178:                                      ; preds = %for.cond172
  %119 = load i32, ptr %i, align 4, !dbg !4721
  %120 = load i32, ptr %j, align 4, !dbg !4723
  %cmp179 = icmp eq i32 %119, %120, !dbg !4724
  br i1 %cmp179, label %if.then181, label %if.end182, !dbg !4725

if.then181:                                       ; preds = %for.body178
  br label %for.inc214, !dbg !4726

if.end182:                                        ; preds = %for.body178
  br label %do.body183, !dbg !4727

do.body183:                                       ; preds = %if.end182
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify184) #17, !dbg !4728
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify184, metadata !4485, metadata !DIExpression()), !dbg !4728
  store ptr null, ptr %__vpp_verify184, align 8, !dbg !4728
  %121 = load ptr, ptr %__vpp_verify184, align 8, !dbg !4728
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify184) #17, !dbg !4727
  br label %do.cond185, !dbg !4728

do.cond185:                                       ; preds = %do.body183
  br label %do.end186, !dbg !4728

do.end186:                                        ; preds = %do.cond185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr188) #17, !dbg !4729
  call void @llvm.dbg.declare(metadata ptr %__ptr188, metadata !4491, metadata !DIExpression()), !dbg !4729
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr188, align 8, !dbg !4729
  %122 = load i64, ptr %__ptr188, align 8, !dbg !4729
  %123 = load i32, ptr %j, align 4, !dbg !4729
  %idxprom190 = zext i32 %123 to i64, !dbg !4729
  %arrayidx191 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom190, !dbg !4729
  %124 = load i64, ptr %arrayidx191, align 8, !dbg !4729
  %add192 = add i64 %122, %124, !dbg !4729
  %125 = inttoptr i64 %add192 to ptr, !dbg !4729
  store ptr %125, ptr %tmp189, align 8, !dbg !4729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr188) #17, !dbg !4727
  %126 = load ptr, ptr %tmp189, align 8, !dbg !4729
  store ptr %126, ptr %tmp187, align 8, !dbg !4728
  %127 = load ptr, ptr %tmp187, align 8, !dbg !4727
  %128 = load ptr, ptr %127, align 8, !dbg !4730
  store ptr %128, ptr %match_pr, align 8, !dbg !4731
  %129 = load ptr, ptr %match_pr, align 8, !dbg !4732
  %tobool193 = icmp ne ptr %129, null, !dbg !4732
  br i1 %tobool193, label %if.end195, label %if.then194, !dbg !4734

if.then194:                                       ; preds = %do.end186
  br label %for.inc214, !dbg !4735

if.end195:                                        ; preds = %do.end186
  %130 = load ptr, ptr %match_pr, align 8, !dbg !4736
  %performance196 = getelementptr inbounds %struct.acpi_processor, ptr %130, i32 0, i32 9, !dbg !4737
  %131 = load ptr, ptr %performance196, align 8, !dbg !4737
  %domain_info197 = getelementptr inbounds %struct.acpi_processor_performance, ptr %131, i32 0, i32 6, !dbg !4738
  store ptr %domain_info197, ptr %match_pdomain, align 8, !dbg !4739
  %132 = load ptr, ptr %match_pdomain, align 8, !dbg !4740
  %domain198 = getelementptr inbounds %struct.acpi_psd_package, ptr %132, i32 0, i32 2, !dbg !4742
  %133 = load i64, ptr %domain198, align 1, !dbg !4742
  %134 = load ptr, ptr %pdomain, align 8, !dbg !4743
  %domain199 = getelementptr inbounds %struct.acpi_psd_package, ptr %134, i32 0, i32 2, !dbg !4744
  %135 = load i64, ptr %domain199, align 1, !dbg !4744
  %cmp200 = icmp ne i64 %133, %135, !dbg !4745
  br i1 %cmp200, label %if.then202, label %if.end203, !dbg !4746

if.then202:                                       ; preds = %if.end195
  br label %for.inc214, !dbg !4747

if.end203:                                        ; preds = %if.end195
  %136 = load ptr, ptr %pr, align 8, !dbg !4748
  %performance204 = getelementptr inbounds %struct.acpi_processor, ptr %136, i32 0, i32 9, !dbg !4749
  %137 = load ptr, ptr %performance204, align 8, !dbg !4749
  %shared_type205 = getelementptr inbounds %struct.acpi_processor_performance, ptr %137, i32 0, i32 8, !dbg !4750
  %138 = load i32, ptr %shared_type205, align 8, !dbg !4750
  %139 = load ptr, ptr %match_pr, align 8, !dbg !4751
  %performance206 = getelementptr inbounds %struct.acpi_processor, ptr %139, i32 0, i32 9, !dbg !4752
  %140 = load ptr, ptr %performance206, align 8, !dbg !4752
  %shared_type207 = getelementptr inbounds %struct.acpi_processor_performance, ptr %140, i32 0, i32 8, !dbg !4753
  store i32 %138, ptr %shared_type207, align 8, !dbg !4754
  %141 = load ptr, ptr %match_pr, align 8, !dbg !4755
  %performance208 = getelementptr inbounds %struct.acpi_processor, ptr %141, i32 0, i32 9, !dbg !4756
  %142 = load ptr, ptr %performance208, align 8, !dbg !4756
  %shared_cpu_map209 = getelementptr inbounds %struct.acpi_processor_performance, ptr %142, i32 0, i32 7, !dbg !4757
  %arraydecay210 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map209, i64 0, i64 0, !dbg !4755
  %143 = load ptr, ptr %pr, align 8, !dbg !4758
  %performance211 = getelementptr inbounds %struct.acpi_processor, ptr %143, i32 0, i32 9, !dbg !4759
  %144 = load ptr, ptr %performance211, align 8, !dbg !4759
  %shared_cpu_map212 = getelementptr inbounds %struct.acpi_processor_performance, ptr %144, i32 0, i32 7, !dbg !4760
  %arraydecay213 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map212, i64 0, i64 0, !dbg !4758
  call void @cpumask_copy(ptr noundef %arraydecay210, ptr noundef %arraydecay213) #18, !dbg !4761
  br label %for.inc214, !dbg !4762

for.inc214:                                       ; preds = %if.end203, %if.then202, %if.then194, %if.then181
  %145 = load i32, ptr %j, align 4, !dbg !4720
  %inc215 = add i32 %145, 1, !dbg !4720
  store i32 %inc215, ptr %j, align 4, !dbg !4720
  br label %for.cond172, !dbg !4720, !llvm.loop !4763

for.end216:                                       ; preds = %for.cond172
  br label %for.inc217, !dbg !4765

for.inc217:                                       ; preds = %for.end216, %if.then98, %if.then89, %if.then86
  %146 = load i32, ptr %i, align 4, !dbg !4596
  %inc218 = add i32 %146, 1, !dbg !4596
  store i32 %inc218, ptr %i, align 4, !dbg !4596
  br label %for.cond68, !dbg !4596, !llvm.loop !4766

for.end219:                                       ; preds = %for.cond68
  br label %err_ret, !dbg !4767

err_ret:                                          ; preds = %for.end219, %if.then163, %if.then157, %if.then66
  call void @llvm.dbg.label(metadata !4493), !dbg !4768
  store i32 0, ptr %i, align 4, !dbg !4769
  br label %for.cond220, !dbg !4769

for.cond220:                                      ; preds = %for.inc255, %err_ret
  %147 = load i32, ptr %i, align 4, !dbg !4770
  %conv221 = zext i32 %147 to i64, !dbg !4770
  %call222 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv221) #18, !dbg !4770
  %conv223 = trunc i64 %call222 to i32, !dbg !4770
  store i32 %conv223, ptr %i, align 4, !dbg !4770
  %148 = load i32, ptr %i, align 4, !dbg !4770
  %cmp224 = icmp ult i32 %148, 64, !dbg !4770
  br i1 %cmp224, label %for.body226, label %for.end257, !dbg !4769

for.body226:                                      ; preds = %for.cond220
  br label %do.body227, !dbg !4771

do.body227:                                       ; preds = %for.body226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify228) #17, !dbg !4772
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify228, metadata !4494, metadata !DIExpression()), !dbg !4772
  store ptr null, ptr %__vpp_verify228, align 8, !dbg !4772
  %149 = load ptr, ptr %__vpp_verify228, align 8, !dbg !4772
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify228) #17, !dbg !4771
  br label %do.cond229, !dbg !4772

do.cond229:                                       ; preds = %do.body227
  br label %do.end230, !dbg !4772

do.end230:                                        ; preds = %do.cond229
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr232) #17, !dbg !4773
  call void @llvm.dbg.declare(metadata ptr %__ptr232, metadata !4500, metadata !DIExpression()), !dbg !4773
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr232, align 8, !dbg !4773
  %150 = load i64, ptr %__ptr232, align 8, !dbg !4773
  %151 = load i32, ptr %i, align 4, !dbg !4773
  %idxprom234 = zext i32 %151 to i64, !dbg !4773
  %arrayidx235 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom234, !dbg !4773
  %152 = load i64, ptr %arrayidx235, align 8, !dbg !4773
  %add236 = add i64 %150, %152, !dbg !4773
  %153 = inttoptr i64 %add236 to ptr, !dbg !4773
  store ptr %153, ptr %tmp233, align 8, !dbg !4773
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr232) #17, !dbg !4771
  %154 = load ptr, ptr %tmp233, align 8, !dbg !4773
  store ptr %154, ptr %tmp231, align 8, !dbg !4772
  %155 = load ptr, ptr %tmp231, align 8, !dbg !4771
  %156 = load ptr, ptr %155, align 8, !dbg !4774
  store ptr %156, ptr %pr, align 8, !dbg !4775
  %157 = load ptr, ptr %pr, align 8, !dbg !4776
  %tobool237 = icmp ne ptr %157, null, !dbg !4776
  br i1 %tobool237, label %lor.lhs.false238, label %if.then241, !dbg !4778

lor.lhs.false238:                                 ; preds = %do.end230
  %158 = load ptr, ptr %pr, align 8, !dbg !4779
  %performance239 = getelementptr inbounds %struct.acpi_processor, ptr %158, i32 0, i32 9, !dbg !4780
  %159 = load ptr, ptr %performance239, align 8, !dbg !4780
  %tobool240 = icmp ne ptr %159, null, !dbg !4779
  br i1 %tobool240, label %if.end242, label %if.then241, !dbg !4781

if.then241:                                       ; preds = %lor.lhs.false238, %do.end230
  br label %for.inc255, !dbg !4782

if.end242:                                        ; preds = %lor.lhs.false238
  %160 = load i32, ptr %retval1, align 4, !dbg !4783
  %tobool243 = icmp ne i32 %160, 0, !dbg !4783
  br i1 %tobool243, label %if.then244, label %if.end253, !dbg !4785

if.then244:                                       ; preds = %if.end242
  %161 = load ptr, ptr %pr, align 8, !dbg !4786
  %performance245 = getelementptr inbounds %struct.acpi_processor, ptr %161, i32 0, i32 9, !dbg !4788
  %162 = load ptr, ptr %performance245, align 8, !dbg !4788
  %shared_cpu_map246 = getelementptr inbounds %struct.acpi_processor_performance, ptr %162, i32 0, i32 7, !dbg !4789
  %arraydecay247 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map246, i64 0, i64 0, !dbg !4786
  call void @cpumask_clear(ptr noundef %arraydecay247) #18, !dbg !4790
  %163 = load i32, ptr %i, align 4, !dbg !4791
  %164 = load ptr, ptr %pr, align 8, !dbg !4792
  %performance248 = getelementptr inbounds %struct.acpi_processor, ptr %164, i32 0, i32 9, !dbg !4793
  %165 = load ptr, ptr %performance248, align 8, !dbg !4793
  %shared_cpu_map249 = getelementptr inbounds %struct.acpi_processor_performance, ptr %165, i32 0, i32 7, !dbg !4794
  %arraydecay250 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map249, i64 0, i64 0, !dbg !4792
  call void @cpumask_set_cpu(i32 noundef %163, ptr noundef %arraydecay250) #18, !dbg !4795
  %166 = load ptr, ptr %pr, align 8, !dbg !4796
  %performance251 = getelementptr inbounds %struct.acpi_processor, ptr %166, i32 0, i32 9, !dbg !4797
  %167 = load ptr, ptr %performance251, align 8, !dbg !4797
  %shared_type252 = getelementptr inbounds %struct.acpi_processor_performance, ptr %167, i32 0, i32 8, !dbg !4798
  store i32 0, ptr %shared_type252, align 8, !dbg !4799
  br label %if.end253, !dbg !4800

if.end253:                                        ; preds = %if.then244, %if.end242
  %168 = load ptr, ptr %pr, align 8, !dbg !4801
  %performance254 = getelementptr inbounds %struct.acpi_processor, ptr %168, i32 0, i32 9, !dbg !4802
  store ptr null, ptr %performance254, align 8, !dbg !4803
  br label %for.inc255, !dbg !4804

for.inc255:                                       ; preds = %if.end253, %if.then241
  %169 = load i32, ptr %i, align 4, !dbg !4770
  %inc256 = add i32 %169, 1, !dbg !4770
  store i32 %inc256, ptr %i, align 4, !dbg !4770
  br label %for.cond220, !dbg !4770, !llvm.loop !4805

for.end257:                                       ; preds = %for.cond220
  br label %err_out, !dbg !4806

err_out:                                          ; preds = %for.end257, %if.then24, %if.then10
  call void @llvm.dbg.label(metadata !4502), !dbg !4807
  call void @mutex_unlock(ptr noundef @performance_mutex) #18, !dbg !4808
  %arraydecay258 = getelementptr inbounds [1 x %struct.cpumask], ptr %covered_cpus, i64 0, i64 0, !dbg !4809
  call void @free_cpumask_var(ptr noundef %arraydecay258) #18, !dbg !4810
  %170 = load i32, ptr %retval1, align 4, !dbg !4811
  store i32 %170, ptr %retval, align 4, !dbg !4812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4812

cleanup:                                          ; preds = %err_out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %match_pdomain) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr %match_pr) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdomain) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr %covered_cpus) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 4, ptr %count_target) #17, !dbg !4813
  %171 = load i32, ptr %retval, align 4, !dbg !4813
  ret i32 %171, !dbg !4813
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !4814 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4819, metadata !DIExpression()), !dbg !4821
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4820, metadata !DIExpression()), !dbg !4822
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !4823
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !4824
  call void @cpumask_clear(ptr noundef %arraydecay) #18, !dbg !4825
  ret i1 true, !dbg !4826
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4827 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !4831 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4835, metadata !DIExpression()), !dbg !4837
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4836, metadata !DIExpression()), !dbg !4838
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4839
  %call = call i32 @cpumask_check(i32 noundef %0) #18, !dbg !4839
  %conv = zext i32 %call to i64, !dbg !4839
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !4839
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4839
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4839
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #18, !dbg !4839
  ret i1 %call1, !dbg !4840
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #6 align 16 !dbg !4841 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4846, metadata !DIExpression()), !dbg !4848
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4847, metadata !DIExpression()), !dbg !4849
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4850
  %call = call i32 @cpumask_check(i32 noundef %0) #18, !dbg !4851
  %conv = zext i32 %call to i64, !dbg !4851
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !4852
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4852
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4852
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #18, !dbg !4853
  ret void, !dbg !4854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #4 align 16 !dbg !4855 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4859, metadata !DIExpression()), !dbg !4861
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4860, metadata !DIExpression()), !dbg !4862
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !4863
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4863
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4863
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !4864
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4864
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !4864
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #18, !dbg !4865
  ret void, !dbg !4866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #4 align 16 !dbg !4867 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !4873
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4873
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4873
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #18, !dbg !4874
  ret void, !dbg !4875
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4876 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #4 align 16 !dbg !4877 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4879, metadata !DIExpression()), !dbg !4880
  ret void, !dbg !4881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_register_performance(ptr noundef %performance, i32 noundef %cpu) #0 align 16 !dbg !4882 {
entry:
  %retval = alloca i32, align 4
  %performance.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %pr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp32 = alloca i64, align 8
  store ptr %performance, ptr %performance.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %performance.addr, metadata !4886, metadata !DIExpression()), !dbg !4899
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4887, metadata !DIExpression()), !dbg !4900
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #17, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4888, metadata !DIExpression()), !dbg !4902
  %0 = load i8, ptr @acpi_processor_cpufreq_init, align 1, !dbg !4903, !range !4221, !noundef !378
  %tobool = trunc i8 %0 to i1, !dbg !4903
  br i1 %tobool, label %if.end, label %if.then, !dbg !4905

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4906

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @performance_mutex) #18, !dbg !4907
  br label %do.body, !dbg !4908

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4889, metadata !DIExpression()), !dbg !4909
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4909
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4908
  br label %do.cond, !dbg !4909

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4909

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4910
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4892, metadata !DIExpression()), !dbg !4910
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !4910
  %2 = load i64, ptr %__ptr, align 8, !dbg !4910
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !4910
  %idxprom = zext i32 %3 to i64, !dbg !4910
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4910
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4910
  %add = add i64 %2, %4, !dbg !4910
  %5 = inttoptr i64 %add to ptr, !dbg !4910
  store ptr %5, ptr %tmp1, align 8, !dbg !4910
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4908
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4910
  store ptr %6, ptr %tmp, align 8, !dbg !4909
  %7 = load ptr, ptr %tmp, align 8, !dbg !4908
  %8 = load ptr, ptr %7, align 8, !dbg !4911
  store ptr %8, ptr %pr, align 8, !dbg !4912
  %9 = load ptr, ptr %pr, align 8, !dbg !4913
  %tobool2 = icmp ne ptr %9, null, !dbg !4913
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4915

if.then3:                                         ; preds = %do.end
  call void @mutex_unlock(ptr noundef @performance_mutex) #18, !dbg !4916
  store i32 -19, ptr %retval, align 4, !dbg !4918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4918

if.end4:                                          ; preds = %do.end
  %10 = load ptr, ptr %pr, align 8, !dbg !4919
  %performance5 = getelementptr inbounds %struct.acpi_processor, ptr %10, i32 0, i32 9, !dbg !4921
  %11 = load ptr, ptr %performance5, align 8, !dbg !4921
  %tobool6 = icmp ne ptr %11, null, !dbg !4919
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4922

if.then7:                                         ; preds = %if.end4
  call void @mutex_unlock(ptr noundef @performance_mutex) #18, !dbg !4923
  store i32 -16, ptr %retval, align 4, !dbg !4925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4925

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4926
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4894, metadata !DIExpression()), !dbg !4926
  %12 = load ptr, ptr %performance.addr, align 8, !dbg !4926
  %tobool9 = icmp ne ptr %12, null, !dbg !4926
  %lnot = xor i1 %tobool9, true, !dbg !4926
  %lnot10 = xor i1 %lnot, true, !dbg !4926
  %lnot11 = xor i1 %lnot10, true, !dbg !4926
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !4926
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4926
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !4927
  %tobool12 = icmp ne i32 %13, 0, !dbg !4927
  %lnot13 = xor i1 %tobool12, true, !dbg !4927
  %lnot15 = xor i1 %lnot13, true, !dbg !4927
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !4927
  %conv = sext i32 %lnot.ext16 to i64, !dbg !4927
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4927
  %tobool17 = icmp ne i64 %expval, 0, !dbg !4927
  br i1 %tobool17, label %if.then18, label %if.end31, !dbg !4926

if.then18:                                        ; preds = %if.end8
  br label %do.body19, !dbg !4927

do.body19:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4928
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4896, metadata !DIExpression()), !dbg !4928
  store i32 2305, ptr %__flags, align 4, !dbg !4928
  br label %do.body20, !dbg !4928

do.body20:                                        ; preds = %do.body19
  br label %do.cond21, !dbg !4929

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !4929

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !4928

do.body23:                                        ; preds = %do.end22
  %14 = load i32, ptr %__flags, align 4, !dbg !4931
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 757, i32 %14, i64 12) #17, !dbg !4931, !srcloc !4933
  br label %do.cond24, !dbg !4931

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !4931

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !4928

do.body26:                                        ; preds = %do.end25
  br label %do.cond27, !dbg !4934

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !4934

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4927
  br label %do.cond29, !dbg !4928

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !4928

do.end30:                                         ; preds = %do.cond29
  br label %if.end31, !dbg !4928

if.end31:                                         ; preds = %do.end30, %if.end8
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !4926
  %tobool33 = icmp ne i32 %15, 0, !dbg !4926
  %lnot34 = xor i1 %tobool33, true, !dbg !4926
  %lnot36 = xor i1 %lnot34, true, !dbg !4926
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !4926
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !4926
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !4926
  store i64 %expval39, ptr %tmp32, align 8, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4936
  %16 = load i64, ptr %tmp32, align 8, !dbg !4926
  %17 = load ptr, ptr %performance.addr, align 8, !dbg !4937
  %18 = load ptr, ptr %pr, align 8, !dbg !4938
  %performance40 = getelementptr inbounds %struct.acpi_processor, ptr %18, i32 0, i32 9, !dbg !4939
  store ptr %17, ptr %performance40, align 8, !dbg !4940
  %19 = load ptr, ptr %pr, align 8, !dbg !4941
  %call = call i32 @acpi_processor_get_performance_info(ptr noundef %19) #18, !dbg !4943
  %tobool41 = icmp ne i32 %call, 0, !dbg !4943
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !4944

if.then42:                                        ; preds = %if.end31
  %20 = load ptr, ptr %pr, align 8, !dbg !4945
  %performance43 = getelementptr inbounds %struct.acpi_processor, ptr %20, i32 0, i32 9, !dbg !4947
  store ptr null, ptr %performance43, align 8, !dbg !4948
  call void @mutex_unlock(ptr noundef @performance_mutex) #18, !dbg !4949
  store i32 -5, ptr %retval, align 4, !dbg !4950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4950

if.end44:                                         ; preds = %if.end31
  call void @mutex_unlock(ptr noundef @performance_mutex) #18, !dbg !4951
  store i32 0, ptr %retval, align 4, !dbg !4952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4952

cleanup:                                          ; preds = %if.end44, %if.then42, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #17, !dbg !4953
  %21 = load i32, ptr %retval, align 4, !dbg !4953
  ret i32 %21, !dbg !4953
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_unregister_performance(i32 noundef %cpu) #0 align 16 !dbg !4954 {
entry:
  %cpu.addr = alloca i32, align 4
  %pr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4956, metadata !DIExpression()), !dbg !4964
  call void @llvm.lifetime.start.p0(i64 8, ptr %pr) #17, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %pr, metadata !4957, metadata !DIExpression()), !dbg !4966
  call void @mutex_lock(ptr noundef @performance_mutex) #18, !dbg !4967
  br label %do.body, !dbg !4968

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4969
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4958, metadata !DIExpression()), !dbg !4969
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4969
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4969
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4968
  br label %do.cond, !dbg !4969

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4969

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4970
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4961, metadata !DIExpression()), !dbg !4970
  store i64 ptrtoint (ptr @processors to i64), ptr %__ptr, align 8, !dbg !4970
  %1 = load i64, ptr %__ptr, align 8, !dbg !4970
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !4970
  %idxprom = zext i32 %2 to i64, !dbg !4970
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4970
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4970
  %add = add i64 %1, %3, !dbg !4970
  %4 = inttoptr i64 %add to ptr, !dbg !4970
  store ptr %4, ptr %tmp1, align 8, !dbg !4970
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4968
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4970
  store ptr %5, ptr %tmp, align 8, !dbg !4969
  %6 = load ptr, ptr %tmp, align 8, !dbg !4968
  %7 = load ptr, ptr %6, align 8, !dbg !4971
  store ptr %7, ptr %pr, align 8, !dbg !4972
  %8 = load ptr, ptr %pr, align 8, !dbg !4973
  %tobool = icmp ne ptr %8, null, !dbg !4973
  br i1 %tobool, label %if.end, label %if.then, !dbg !4975

if.then:                                          ; preds = %do.end
  br label %unlock, !dbg !4976

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %pr, align 8, !dbg !4977
  %performance = getelementptr inbounds %struct.acpi_processor, ptr %9, i32 0, i32 9, !dbg !4979
  %10 = load ptr, ptr %performance, align 8, !dbg !4979
  %tobool2 = icmp ne ptr %10, null, !dbg !4977
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4980

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %pr, align 8, !dbg !4981
  %performance4 = getelementptr inbounds %struct.acpi_processor, ptr %11, i32 0, i32 9, !dbg !4982
  %12 = load ptr, ptr %performance4, align 8, !dbg !4982
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %12, i32 0, i32 5, !dbg !4983
  %13 = load ptr, ptr %states, align 8, !dbg !4983
  call void @kfree(ptr noundef %13) #18, !dbg !4984
  br label %if.end5, !dbg !4984

if.end5:                                          ; preds = %if.then3, %if.end
  %14 = load ptr, ptr %pr, align 8, !dbg !4985
  %performance6 = getelementptr inbounds %struct.acpi_processor, ptr %14, i32 0, i32 9, !dbg !4986
  store ptr null, ptr %performance6, align 8, !dbg !4987
  br label %unlock, !dbg !4985

unlock:                                           ; preds = %if.end5, %if.then
  call void @llvm.dbg.label(metadata !4963), !dbg !4988
  call void @mutex_unlock(ptr noundef @performance_mutex) #18, !dbg !4989
  call void @llvm.lifetime.end.p0(i64 8, ptr %pr) #17, !dbg !4990
  ret void, !dbg !4990
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4991 dso_local i32 @acpi_evaluate_ost(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4994 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4998 dso_local void @acpi_evaluation_failure_warn(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @freq_qos_request_active(ptr noundef %req) #4 align 16 !dbg !5001 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5005
  %qos = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 2, !dbg !5006
  %1 = load ptr, ptr %qos, align 8, !dbg !5006
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %1) #18, !dbg !5007
  %lnot = xor i1 %call, true, !dbg !5008
  %lnot.ext = zext i1 %lnot to i32, !dbg !5008
  ret i32 %lnot.ext, !dbg !5009
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5010 dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !5013 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5020
  %tobool = icmp ne ptr %0, null, !dbg !5020
  %lnot = xor i1 %tobool, true, !dbg !5020
  %lnot1 = xor i1 %lnot, true, !dbg !5020
  %lnot2 = xor i1 %lnot1, true, !dbg !5020
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5020
  %conv = sext i32 %lnot.ext to i64, !dbg !5020
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5020
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5020
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5021

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5022
  %2 = ptrtoint ptr %1 to i64, !dbg !5022
  %3 = inttoptr i64 %2 to ptr, !dbg !5022
  %4 = ptrtoint ptr %3 to i64, !dbg !5022
  %cmp = icmp uge i64 %4, -4095, !dbg !5022
  %lnot5 = xor i1 %cmp, true, !dbg !5022
  %lnot7 = xor i1 %lnot5, true, !dbg !5022
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5022
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5022
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5022
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !5021
  br label %lor.end, !dbg !5021

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !5023
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !5024 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  %0 = load i64, ptr %word.addr, align 8, !dbg !5030
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !5031, !srcloc !5032
  store i64 %1, ptr %word.addr, align 8, !dbg !5031
  %2 = load i64, ptr %word.addr, align 8, !dbg !5033
  ret i64 %2, !dbg !5034
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5035 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5036 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5040, metadata !DIExpression()), !dbg !5044
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5041, metadata !DIExpression()), !dbg !5045
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5042, metadata !DIExpression()), !dbg !5046
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5043, metadata !DIExpression()), !dbg !5048
  %0 = load i64, ptr %n.addr, align 8, !dbg !5049
  %1 = load i64, ptr %size.addr, align 8, !dbg !5049
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5049
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5049
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5049
  store i64 %4, ptr %bytes, align 8, !dbg !5049
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5049
  %lnot = xor i1 %call, true, !dbg !5049
  %lnot1 = xor i1 %lnot, true, !dbg !5049
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5049
  %conv = sext i32 %lnot.ext to i64, !dbg !5049
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5049
  %tobool = icmp ne i64 %expval, 0, !dbg !5049
  br i1 %tobool, label %if.then, label %if.end, !dbg !5051

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5052

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5053
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5055
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5056

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5057
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5058
  br i1 %8, label %if.then2, label %if.end4, !dbg !5059

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5060
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5061
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #22, !dbg !5062
  store ptr %call3, ptr %retval, align 8, !dbg !5063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5063

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5064
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5065
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #22, !dbg !5066
  store ptr %call5, ptr %retval, align 8, !dbg !5067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5067

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5068
  %13 = load ptr, ptr %retval, align 8, !dbg !5068
  ret ptr %13, !dbg !5068
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5069 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_fixup_frequency(ptr noundef %px, i32 noundef %i) #0 align 16 !dbg !5072 {
entry:
  %px.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  %fid = alloca i32, align 4
  %did = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__val = alloca i64, align 8
  store ptr %px, ptr %px.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %px.addr, metadata !5076, metadata !DIExpression()), !dbg !5087
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5077, metadata !DIExpression()), !dbg !5088
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #17, !dbg !5089
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !5078, metadata !DIExpression()), !dbg !5090
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #17, !dbg !5089
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !5079, metadata !DIExpression()), !dbg !5091
  call void @llvm.lifetime.start.p0(i64 4, ptr %fid) #17, !dbg !5089
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5080, metadata !DIExpression()), !dbg !5092
  call void @llvm.lifetime.start.p0(i64 4, ptr %did) #17, !dbg !5089
  call void @llvm.dbg.declare(metadata ptr %did, metadata !5081, metadata !DIExpression()), !dbg !5093
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5082, metadata !DIExpression()), !dbg !5095
  %0 = load ptr, ptr %px.addr, align 8, !dbg !5096
  %control = getelementptr inbounds %struct.acpi_processor_px, ptr %0, i32 0, i32 4, !dbg !5097
  %1 = load i64, ptr %control, align 8, !dbg !5097
  %and = and i64 %1, 7, !dbg !5098
  %conv = trunc i64 %and to i32, !dbg !5096
  store i32 %conv, ptr %index, align 4, !dbg !5095
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.16, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5099
  %conv1 = zext i8 %2 to i32, !dbg !5101
  %cmp = icmp ne i32 %conv1, 2, !dbg !5102
  br i1 %cmp, label %if.then, label %if.end, !dbg !5103

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5104

if.end:                                           ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds (%struct.anon.16, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5105
  %conv3 = zext i8 %3 to i32, !dbg !5106
  %cmp4 = icmp eq i32 %conv3, 16, !dbg !5107
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false, !dbg !5108

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8, ptr @boot_cpu_data, align 8, !dbg !5109
  %conv6 = zext i8 %4 to i32, !dbg !5110
  %cmp7 = icmp slt i32 %conv6, 10, !dbg !5111
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !5112

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %5 = load i8, ptr getelementptr inbounds (%struct.anon.16, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5113
  %conv9 = zext i8 %5 to i32, !dbg !5114
  %cmp10 = icmp eq i32 %conv9, 17, !dbg !5115
  br i1 %cmp10, label %if.then12, label %if.end35, !dbg !5116

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body, !dbg !5117

do.body:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #17, !dbg !5118
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !5083, metadata !DIExpression()), !dbg !5118
  %6 = load i32, ptr %index, align 4, !dbg !5118
  %add = add i32 -1073676188, %6, !dbg !5118
  %call = call i64 @native_read_msr(i32 noundef %add) #18, !dbg !5118
  store i64 %call, ptr %__val, align 8, !dbg !5118
  %7 = load i64, ptr %__val, align 8, !dbg !5118
  %conv13 = trunc i64 %7 to i32, !dbg !5118
  store i32 %conv13, ptr %lo, align 4, !dbg !5118
  %8 = load i64, ptr %__val, align 8, !dbg !5118
  %shr = lshr i64 %8, 32, !dbg !5118
  %conv14 = trunc i64 %shr to i32, !dbg !5118
  store i32 %conv14, ptr %hi, align 4, !dbg !5118
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #17, !dbg !5117
  br label %do.cond, !dbg !5118

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5118

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %hi, align 4, !dbg !5119
  %conv15 = zext i32 %9 to i64, !dbg !5119
  %and16 = and i64 %conv15, 2147483648, !dbg !5121
  %tobool = icmp ne i64 %and16, 0, !dbg !5121
  br i1 %tobool, label %if.end18, label %if.then17, !dbg !5122

if.then17:                                        ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

if.end18:                                         ; preds = %do.end
  %10 = load i32, ptr %lo, align 4, !dbg !5124
  %and19 = and i32 %10, 63, !dbg !5125
  store i32 %and19, ptr %fid, align 4, !dbg !5126
  %11 = load i32, ptr %lo, align 4, !dbg !5127
  %shr20 = lshr i32 %11, 6, !dbg !5128
  %and21 = and i32 %shr20, 7, !dbg !5129
  store i32 %and21, ptr %did, align 4, !dbg !5130
  %12 = load i8, ptr getelementptr inbounds (%struct.anon.16, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5131
  %conv22 = zext i8 %12 to i32, !dbg !5133
  %cmp23 = icmp eq i32 %conv22, 16, !dbg !5134
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !5135

if.then25:                                        ; preds = %if.end18
  %13 = load i32, ptr %fid, align 4, !dbg !5136
  %add26 = add i32 %13, 16, !dbg !5137
  %mul = mul i32 100, %add26, !dbg !5138
  %14 = load i32, ptr %did, align 4, !dbg !5139
  %shr27 = lshr i32 %mul, %14, !dbg !5140
  %conv28 = zext i32 %shr27 to i64, !dbg !5141
  %15 = load ptr, ptr %px.addr, align 8, !dbg !5142
  %core_frequency = getelementptr inbounds %struct.acpi_processor_px, ptr %15, i32 0, i32 0, !dbg !5143
  store i64 %conv28, ptr %core_frequency, align 8, !dbg !5144
  br label %if.end34, !dbg !5142

if.else:                                          ; preds = %if.end18
  %16 = load i32, ptr %fid, align 4, !dbg !5145
  %add29 = add i32 %16, 8, !dbg !5146
  %mul30 = mul i32 100, %add29, !dbg !5147
  %17 = load i32, ptr %did, align 4, !dbg !5148
  %shr31 = lshr i32 %mul30, %17, !dbg !5149
  %conv32 = zext i32 %shr31 to i64, !dbg !5150
  %18 = load ptr, ptr %px.addr, align 8, !dbg !5151
  %core_frequency33 = getelementptr inbounds %struct.acpi_processor_px, ptr %18, i32 0, i32 0, !dbg !5152
  store i64 %conv32, ptr %core_frequency33, align 8, !dbg !5153
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then25
  br label %if.end35, !dbg !5154

if.end35:                                         ; preds = %if.end34, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5155
  br label %cleanup, !dbg !5155

cleanup:                                          ; preds = %if.end35, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %did) #17, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %fid) #17, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #17, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #17, !dbg !5155
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5155

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !5156 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5163, !range !4221, !noundef !378
  %tobool = trunc i8 %0 to i1, !dbg !5163
  %lnot = xor i1 %tobool, true, !dbg !5163
  %lnot1 = xor i1 %lnot, true, !dbg !5163
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5163
  %conv = sext i32 %lnot.ext to i64, !dbg !5163
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5163
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5163
  ret i1 %tobool2, !dbg !5164
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !5165 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5169, metadata !DIExpression()), !dbg !5174
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5170, metadata !DIExpression()), !dbg !5175
  %0 = load i64, ptr %size.addr, align 8, !dbg !5176
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5177
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5178

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5179
  %tobool = icmp ne i64 %2, 0, !dbg !5179
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5180

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5171, metadata !DIExpression()), !dbg !5182
  %3 = load i64, ptr %size.addr, align 8, !dbg !5183
  %cmp = icmp ugt i64 %3, 8192, !dbg !5185
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5186

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5187
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5188
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !5189
  store ptr %call, ptr %retval, align 8, !dbg !5190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5190

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5191
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5191
  store i32 %call2, ptr %index, align 4, !dbg !5192
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5193
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5194
  %9 = ptrtoint ptr %8 to i64, !dbg !5194
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5195
  %idxprom = zext i32 %call3 to i64, !dbg !5196
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5196
  %10 = load i32, ptr %index, align 4, !dbg !5197
  %idxprom4 = zext i32 %10 to i64, !dbg !5196
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5196
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5196
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5198
  %13 = load i64, ptr %size.addr, align 8, !dbg !5199
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !5200
  store ptr %call6, ptr %retval, align 8, !dbg !5201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5201

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5202
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5203
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5204
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !5205
  store ptr %call8, ptr %retval, align 8, !dbg !5206
  br label %return, !dbg !5206

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5207
  ret ptr %16, !dbg !5207
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5208 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5209 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !5210 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5214, metadata !DIExpression()), !dbg !5216
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5215, metadata !DIExpression()), !dbg !5217
  %0 = load i64, ptr %size.addr, align 8, !dbg !5218
  %tobool = icmp ne i64 %0, 0, !dbg !5218
  br i1 %tobool, label %if.end, label %if.then, !dbg !5220

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5221
  br label %return, !dbg !5221

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5222
  %cmp = icmp ule i64 %1, 8, !dbg !5224
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5225

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5226
  br label %return, !dbg !5226

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5227
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5229
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5230

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5231
  %cmp4 = icmp ule i64 %3, 96, !dbg !5232
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5233

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5234
  br label %return, !dbg !5234

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5235
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5237
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5238

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5239
  %cmp9 = icmp ule i64 %5, 192, !dbg !5240
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5241

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5242
  br label %return, !dbg !5242

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5243
  %cmp12 = icmp ule i64 %6, 8, !dbg !5245
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5246

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5248
  %cmp15 = icmp ule i64 %7, 16, !dbg !5250
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5251

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5252
  br label %return, !dbg !5252

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5253
  %cmp18 = icmp ule i64 %8, 32, !dbg !5255
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5256

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5257
  br label %return, !dbg !5257

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5258
  %cmp21 = icmp ule i64 %9, 64, !dbg !5260
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5261

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5262
  br label %return, !dbg !5262

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5263
  %cmp24 = icmp ule i64 %10, 128, !dbg !5265
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5266

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5267
  br label %return, !dbg !5267

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5268
  %cmp27 = icmp ule i64 %11, 256, !dbg !5270
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5271

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5272
  br label %return, !dbg !5272

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5273
  %cmp30 = icmp ule i64 %12, 512, !dbg !5275
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5276

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5277
  br label %return, !dbg !5277

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5278
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5280
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5281

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5282
  br label %return, !dbg !5282

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5283
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5285
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5286

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5287
  br label %return, !dbg !5287

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5288
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5290
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5291

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5292
  br label %return, !dbg !5292

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5293
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5295
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5296

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5297
  br label %return, !dbg !5297

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5298
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5300
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5301

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5302
  br label %return, !dbg !5302

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5303
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5305
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5306

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5307
  br label %return, !dbg !5307

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5308
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5310
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5311

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5312
  br label %return, !dbg !5312

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5313
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5315
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5316

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5317
  br label %return, !dbg !5317

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5318
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5320
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5321

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5322
  br label %return, !dbg !5322

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5323
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5325
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5326

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5327
  br label %return, !dbg !5327

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5328
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5330
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5331

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5332
  br label %return, !dbg !5332

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5333
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5335
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5336

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5337
  br label %return, !dbg !5337

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5338, !range !4221, !noundef !378
  %tobool69 = trunc i8 %25 to i1, !dbg !5338
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5340

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5341

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_222() #24, !dbg !5342, !srcloc !5345
  unreachable, !dbg !5342

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5346

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5347

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5348

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5350

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5348

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.24, i32 480, i32 0, i64 12) #17, !dbg !5352, !srcloc !5354
  br label %do.end75, !dbg !5352

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5348

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5355
  br label %return, !dbg !5355

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5356
  ret i32 %26, !dbg !5356
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5357 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !5363 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5367, metadata !DIExpression()), !dbg !5369
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5368, metadata !DIExpression()), !dbg !5370
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5371
  %and = and i32 %0, 17, !dbg !5371
  %cmp = icmp eq i32 %and, 0, !dbg !5371
  %lnot = xor i1 %cmp, true, !dbg !5371
  %lnot1 = xor i1 %lnot, true, !dbg !5371
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5371
  %conv = sext i32 %lnot.ext to i64, !dbg !5371
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5371
  %tobool = icmp ne i64 %expval, 0, !dbg !5371
  br i1 %tobool, label %if.then, label %if.end, !dbg !5373

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5374
  br label %return, !dbg !5374

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5375
  %and2 = and i32 %1, 1, !dbg !5377
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5377
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5378

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5380
  br label %return, !dbg !5380

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5382
  ret i32 %2, !dbg !5382
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5383 dso_local void @__compiletime_assert_222() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !5384 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5389, metadata !DIExpression()), !dbg !5391
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5390, metadata !DIExpression()), !dbg !5393
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5394
  %call = call i64 @__rdmsr(i32 noundef %0) #18, !dbg !5395
  store i64 %call, ptr %val, align 8, !dbg !5396
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #18, !dbg !5397
  br i1 %call1, label %if.then, label %if.end, !dbg !5399

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !5400
  %2 = load i64, ptr %val, align 8, !dbg !5401
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #18, !dbg !5402
  br label %if.end, !dbg !5402

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !5403
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !5404
  ret i64 %3, !dbg !5405
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #6 align 16 !dbg !5406 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5408, metadata !DIExpression()), !dbg !5411
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #17, !dbg !5412
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5409, metadata !DIExpression()), !dbg !5412
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #17, !dbg !5412
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5410, metadata !DIExpression()), !dbg !5412
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5413
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #17, !dbg !5414, !srcloc !5415
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !5414
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !5414
  store i64 %asmresult, ptr %low, align 8, !dbg !5414
  store i64 %asmresult1, ptr %high, align 8, !dbg !5414
  %2 = load i64, ptr %low, align 8, !dbg !5416
  %3 = load i64, ptr %high, align 8, !dbg !5416
  %shl = shl i64 %3, 32, !dbg !5416
  %or = or i64 %2, %shl, !dbg !5416
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #17, !dbg !5417
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #17, !dbg !5417
  ret i64 %or, !dbg !5418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !5419 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5437
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #18, !dbg !5438
  ret i1 %call, !dbg !5439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5440 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !5443 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5448, metadata !DIExpression()), !dbg !5451
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5449, metadata !DIExpression()), !dbg !5452
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5453
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5454, !range !4221, !noundef !378
  %tobool = trunc i8 %1 to i1, !dbg !5454
  %conv = zext i1 %tobool to i32, !dbg !5454
  %or = or i32 2, %conv, !dbg !5455
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #17
          to label %asm.fallthrough [label %l_yes], !dbg !5456, !srcloc !5457

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5458
  br label %return, !dbg !5458

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5450), !dbg !5459
  store i1 true, ptr %retval, align 1, !dbg !5460
  br label %return, !dbg !5460

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5461
  ret i1 %2, !dbg !5461
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5462 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5466, metadata !DIExpression()), !dbg !5468
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5467, metadata !DIExpression()), !dbg !5469
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5470
  %and = and i64 %0, 63, !dbg !5471
  %shl = shl i64 1, %and, !dbg !5472
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5473
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5474
  %shr = ashr i64 %2, 6, !dbg !5475
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5473
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5473
  %and1 = and i64 %shl, %3, !dbg !5476
  %cmp = icmp ne i64 %and1, 0, !dbg !5477
  ret i1 %cmp, !dbg !5478
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5479 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5481, metadata !DIExpression()), !dbg !5484
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5482, metadata !DIExpression()), !dbg !5485
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5483, metadata !DIExpression()), !dbg !5487
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5488
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5489
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5490, !srcloc !5491
  %3 = icmp ult i8 %2, 2, !dbg !5490
  call void @llvm.assume(i1 %3), !dbg !5490
  store i8 %2, ptr %oldbit, align 1, !dbg !5490
  %4 = load i8, ptr %oldbit, align 1, !dbg !5492, !range !4221, !noundef !378
  %tobool = trunc i8 %4 to i1, !dbg !5492
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !5493
  ret i1 %tobool, !dbg !5494
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5495 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5498, metadata !DIExpression()), !dbg !5500
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5499, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5502
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5503
  %div = udiv i64 %1, 64, !dbg !5503
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5504
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5505
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5506
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5507
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5508
  ret i1 %call, !dbg !5509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !5510 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5516
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #18, !dbg !5517
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5518
  ret i32 %1, !dbg !5519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5520 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5528, metadata !DIExpression()), !dbg !5530
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5529, metadata !DIExpression()), !dbg !5531
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5532
  %1 = load i64, ptr %size.addr, align 8, !dbg !5533
  %conv = trunc i64 %1 to i32, !dbg !5533
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !5534
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5535
  %3 = load i64, ptr %size.addr, align 8, !dbg !5535
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !5535
  ret void, !dbg !5536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5537 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5542, metadata !DIExpression()), !dbg !5544
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5543, metadata !DIExpression()), !dbg !5545
  ret i1 true, !dbg !5546
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5547 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5552, metadata !DIExpression()), !dbg !5555
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5553, metadata !DIExpression()), !dbg !5556
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5554, metadata !DIExpression()), !dbg !5557
  ret void, !dbg !5558
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !5559 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5564, metadata !DIExpression()), !dbg !5566
  ret void, !dbg !5567
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5568 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5574, metadata !DIExpression()), !dbg !5576
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5575, metadata !DIExpression()), !dbg !5577
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5578
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5579
  %div = sdiv i64 %1, 64, !dbg !5579
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5580
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5581
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5582
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5583
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5584
  ret void, !dbg !5585
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5586 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5588, metadata !DIExpression()), !dbg !5590
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5589, metadata !DIExpression()), !dbg !5591
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5592
  %1 = load i64, ptr %size.addr, align 8, !dbg !5593
  %conv = trunc i64 %1 to i32, !dbg !5593
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5594
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5595
  %3 = load i64, ptr %size.addr, align 8, !dbg !5595
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !5595
  ret void, !dbg !5596
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5597 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5599, metadata !DIExpression()), !dbg !5601
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5600, metadata !DIExpression()), !dbg !5602
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5603
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5605
  br i1 %1, label %if.then, label %if.else, !dbg !5606

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5607
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5607
  %shr = ashr i64 %3, 3, !dbg !5607
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5607
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5609
  %and = and i64 %4, 7, !dbg !5609
  %sh_prom = trunc i64 %and to i32, !dbg !5609
  %shl = shl i32 1, %sh_prom, !dbg !5609
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #17, !dbg !5610, !srcloc !5611
  br label %if.end, !dbg !5612

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5613
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5615
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #17, !dbg !5616, !srcloc !5617
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5619 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5621, metadata !DIExpression()), !dbg !5623
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5622, metadata !DIExpression()), !dbg !5624
  ret i1 true, !dbg !5625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !5626 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5631, metadata !DIExpression()), !dbg !5635
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5632, metadata !DIExpression()), !dbg !5636
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5633, metadata !DIExpression()), !dbg !5637
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !5638
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5634, metadata !DIExpression()), !dbg !5639
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5640
  %add = add i32 %0, 63, !dbg !5640
  %and = and i32 %add, -64, !dbg !5640
  %div = udiv i32 %and, 8, !dbg !5640
  store i32 %div, ptr %len, align 4, !dbg !5639
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5641
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5641
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5641

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5641
  %cmp = icmp ule i32 %3, 64, !dbg !5641
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5641

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5641
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5641
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5643

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5644
  %6 = load i64, ptr %5, align 8, !dbg !5645
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5646
  store i64 %6, ptr %7, align 8, !dbg !5647
  br label %if.end, !dbg !5648

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5649
  %9 = load ptr, ptr %src.addr, align 8, !dbg !5650
  %10 = load i32, ptr %len, align 4, !dbg !5651
  %conv = zext i32 %10 to i64, !dbg !5651
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !5652
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !5653
  ret void, !dbg !5653
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #4 align 16 !dbg !5654 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5658, metadata !DIExpression()), !dbg !5661
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5659, metadata !DIExpression()), !dbg !5662
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5660, metadata !DIExpression()), !dbg !5664
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5665
  %add = add i32 %0, 63, !dbg !5665
  %and = and i32 %add, -64, !dbg !5665
  %div = udiv i32 %and, 8, !dbg !5665
  store i32 %div, ptr %len, align 4, !dbg !5664
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5666
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5666
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5666

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5666
  %cmp = icmp ule i32 %3, 64, !dbg !5666
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5666

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5666
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5666
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5668

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !5669
  store i64 0, ptr %5, align 8, !dbg !5670
  br label %if.end, !dbg !5671

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5672
  %7 = load i32, ptr %len, align 4, !dbg !5673
  %conv = zext i32 %7 to i64, !dbg !5673
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !5674
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !5675
  ret void, !dbg !5675
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0,1) }
attributes #21 = { nounwind memory(read) }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!llvm.ident = !{!2239}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_ignore_ppc", scope: !2, file: !3, line: 46, type: !2230, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.processor_perflib.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/processor\22 -D KBUILD_BASENAME=\22processor_perflib\22 -D KBUILD_MODNAME=\22processor\22 -D __KBUILD_MODNAME=kmod_processor -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/processor_perflib.ll drivers/acpi/processor_perflib.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !135, globals: !2092, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/processor_perflib.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d676ec53ea7886cfa7be88cf0f6eee0")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !59, !66, !70, !76, !85, !90, !95, !101, !107, !113, !120, !125}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !54, line: 41, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!57 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!58 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !54, line: 99, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!62 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!63 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!64 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!65 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !54, line: 80, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!69 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !71, line: 30, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!74 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!75 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!79 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!80 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!81 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!82 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!83 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!84 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!88 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!89 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!93 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!94 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!98 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!99 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!100 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !102, line: 41, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!105 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!106 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !108, line: 16, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "TT_NONE", value: 0)
!111 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!112 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !114, line: 51, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!117 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!118 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!119 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 10, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "false", value: 0)
!124 = !DIEnumerator(name: "true", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !126, line: 364, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!127 = !{!128, !129, !130, !131, !132, !133, !134}
!128 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!129 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!130 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!131 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!132 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!133 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!134 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!135 = !{!136, !1180, !313, !291, !7, !478, !1082, !46, !1163, !2034, !2035, !2036, !2037, !1250, !2039, !2088, !2090}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !138)
!138 = !{!139, !140, !147, !152, !833, !859, !860, !861, !862, !866, !869, !870, !871, !924, !925, !926, !927, !928, !929, !930, !931, !934, !938, !958, !976, !977, !978, !979, !988, !1012, !1013, !1016, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1030, !1031, !1138, !1146, !1147, !1148, !1150, !1154, !1155, !1159, !1160, !1161, !1162, !1164, !1165, !1166, !1173, !1174, !1175, !1179}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !137, file: !6, line: 403, baseType: !5, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !137, file: !6, line: 406, baseType: !141, size: 128, offset: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !142, line: 190, size: 128, elements: !143)
!142 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !142, line: 191, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !141, file: !142, line: 191, baseType: !145, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !6, line: 409, baseType: !148, size: 448, offset: 192)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 448, elements: !150)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !{!151}
!151 = !DISubrange(count: 56)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !137, file: !6, line: 417, baseType: !153, size: 768, offset: 640)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !154)
!154 = !{!155, !816, !817, !818, !821}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !153, file: !6, line: 46, baseType: !156, size: 512)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !157, line: 64, size: 512, elements: !158)
!157 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!158 = !{!159, !162, !163, !165, !254, !686, !801, !811, !812, !813, !814, !815}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !157, line: 65, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !156, file: !157, line: 66, baseType: !141, size: 128, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !157, line: 67, baseType: !164, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !156, file: !157, line: 68, baseType: !166, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !157, line: 168, size: 768, elements: !168)
!168 = !{!169, !170, !213, !214}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !167, file: !157, line: 169, baseType: !141, size: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !167, file: !157, line: 170, baseType: !171, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !172, line: 29, baseType: !173)
!172 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !172, line: 17, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !172, line: 18, baseType: !176, size: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !172, line: 18, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !176, file: !172, line: 19, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !180, line: 14, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !179, file: !180, line: 15, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !184, line: 44, baseType: !185)
!184 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !184, line: 14, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !184, line: 15, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !184, line: 15, size: 32, elements: !189)
!189 = !{!190, !195, !205}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !188, file: !184, line: 16, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !142, line: 174, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 172, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !142, line: 173, baseType: !46, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 24, baseType: !196, size: 16)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 24, size: 16, elements: !197)
!197 = !{!198, !204}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !196, file: !184, line: 25, baseType: !199, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !200, line: 17, baseType: !201)
!200 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !202, line: 21, baseType: !203)
!202 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!203 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !196, file: !184, line: 26, baseType: !199, size: 8, offset: 8)
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 28, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 28, size: 32, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !206, file: !184, line: 29, baseType: !209, size: 16)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !200, line: 19, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !202, line: 24, baseType: !211)
!211 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !206, file: !184, line: 30, baseType: !209, size: 16, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !167, file: !157, line: 171, baseType: !156, size: 512, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !167, file: !157, line: 172, baseType: !215, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !157, line: 133, size: 192, elements: !218)
!218 = !{!219, !226, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !217, file: !157, line: 134, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!46, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !157, line: 135, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!160, !224}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !217, file: !157, line: 136, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!46, !224, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !157, line: 125, size: 20736, elements: !238)
!238 = !{!239, !244, !248, !249, !253}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !237, file: !157, line: 126, baseType: !240, size: 192)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 192, elements: !242)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!242 = !{!243}
!243 = !DISubrange(count: 3)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !237, file: !157, line: 127, baseType: !245, size: 4096, offset: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 4096, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !237, file: !157, line: 128, baseType: !46, size: 32, offset: 4288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !157, line: 129, baseType: !250, size: 16384, offset: 4320)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16384, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 2048)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !237, file: !157, line: 130, baseType: !46, size: 32, offset: 20704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !156, file: !157, line: 69, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !157, line: 116, size: 384, elements: !258)
!258 = !{!259, !263, !292, !633, !664, !668}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !257, file: !157, line: 117, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !164}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !257, file: !157, line: 118, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !267, line: 254, size: 128, elements: !268)
!267 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!268 = !{!269, !284}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !266, file: !267, line: 255, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !164, !278, !241}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !142, line: 66, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !275, line: 73, baseType: !276)
!275 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !275, line: 15, baseType: !277)
!277 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !267, line: 30, size: 128, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !267, line: 31, baseType: !160, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !279, file: !267, line: 32, baseType: !283, size: 16, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !142, line: 24, baseType: !211)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !266, file: !267, line: 256, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!273, !164, !278, !160, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 61, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !275, line: 72, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !275, line: 16, baseType: !291)
!291 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !257, file: !157, line: 119, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !267, line: 84, size: 320, elements: !297)
!297 = !{!298, !299, !303, !629, !631}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !267, line: 85, baseType: !160, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !296, file: !267, line: 86, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!283, !164, !278, !46}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !296, file: !267, line: 88, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!283, !164, !307, !46}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !267, line: 175, size: 512, elements: !309)
!309 = !{!310, !311, !312, !314, !321, !331, !332}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !308, file: !267, line: 176, baseType: !279, size: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !267, line: 177, baseType: !288, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !308, file: !267, line: 178, baseType: !313, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !308, file: !267, line: 179, baseType: !315, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !320, line: 32, flags: DIFlagFwdDecl)
!320 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !308, file: !267, line: 180, baseType: !322, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!273, !325, !164, !307, !241, !328, !288}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !327, line: 537, flags: DIFlagFwdDecl)
!327 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !142, line: 52, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !275, line: 88, baseType: !330)
!330 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !308, file: !267, line: 182, baseType: !322, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !308, file: !267, line: 184, baseType: !333, size: 64, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!46, !325, !164, !307, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !320, line: 625, size: 1344, elements: !338)
!338 = !{!339, !356, !578, !584, !591, !592, !597, !600, !612, !613, !616, !620, !621, !622, !623, !624, !627}
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !320, line: 628, baseType: !340, size: 128)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !320, line: 628, size: 128, elements: !341)
!341 = !{!342, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !320, line: 629, baseType: !343, size: 128)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !320, line: 629, size: 128, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !343, file: !320, line: 631, baseType: !291, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !343, file: !320, line: 632, baseType: !291, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !340, file: !320, line: 635, baseType: !348, size: 128, align: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !142, line: 232, size: 128, align: 64, elements: !349)
!349 = !{!350, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !142, line: 233, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !348, file: !142, line: 234, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !351}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !337, file: !320, line: 639, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !320, line: 733, size: 10240, elements: !359)
!359 = !{!360, !574}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !320, line: 734, baseType: !361, size: 10240)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !320, line: 734, size: 10240, elements: !362)
!362 = !{!363, !367, !381, !385, !386, !387, !388, !389, !390, !398, !399, !400, !409, !410, !419, !420, !421, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !468, !482, !485, !540, !541, !542, !545, !549, !550, !553, !554, !555, !561, !562}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !320, line: 739, baseType: !364, size: 512, align: 512)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !320, line: 739, size: 512, align: 512, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !364, file: !320, line: 747, baseType: !191, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !361, file: !320, line: 750, baseType: !368, size: 128, offset: 512)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !369, line: 218, size: 128, elements: !370)
!369 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!370 = !{!371, !379, !380}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !369, line: 219, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !369, line: 219, size: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !372, file: !369, line: 220, baseType: !171, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !372, file: !369, line: 221, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !369, line: 197, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 197, elements: !378)
!378 = !{}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !368, file: !369, line: 223, baseType: !7, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !368, file: !369, line: 224, baseType: !313, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !361, file: !320, line: 752, baseType: !382, size: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!291, !325, !291, !291, !291, !291}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !361, file: !320, line: 756, baseType: !291, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !361, file: !320, line: 757, baseType: !291, size: 64, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !361, file: !320, line: 760, baseType: !291, size: 64, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !361, file: !320, line: 761, baseType: !291, size: 64, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !361, file: !320, line: 763, baseType: !291, size: 64, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !361, file: !320, line: 764, baseType: !391, size: 64, offset: 1024)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !327, line: 299, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !327, line: 299, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !393, file: !327, line: 299, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !397, line: 18, baseType: !291)
!397 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!398 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !361, file: !320, line: 773, baseType: !191, size: 32, offset: 1088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !361, file: !320, line: 785, baseType: !191, size: 32, offset: 1120)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !361, file: !320, line: 795, baseType: !401, size: 64, offset: 1152)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !320, line: 726, size: 128, elements: !403)
!403 = !{!404, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !402, file: !320, line: 727, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !200, line: 23, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !202, line: 31, baseType: !407)
!407 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !402, file: !320, line: 728, baseType: !46, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !361, file: !320, line: 801, baseType: !291, size: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !361, file: !320, line: 804, baseType: !411, size: 64, offset: 1280)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !412, line: 13, baseType: !413)
!412 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !142, line: 181, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 179, size: 64, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !414, file: !142, line: 180, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !200, line: 22, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !202, line: 30, baseType: !330)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !361, file: !320, line: 806, baseType: !46, size: 32, offset: 1344)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !361, file: !320, line: 808, baseType: !171, size: 32, offset: 1376)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !361, file: !320, line: 823, baseType: !422, size: 320, offset: 1408)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !423, line: 48, size: 320, elements: !424)
!423 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!424 = !{!425, !426, !427, !432, !434}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !422, file: !423, line: 49, baseType: !411, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !422, file: !423, line: 55, baseType: !411, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !422, file: !423, line: 57, baseType: !428, size: 32, offset: 128)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !429, line: 15, size: 32, elements: !430)
!429 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !428, file: !429, line: 20, baseType: !191, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !422, file: !423, line: 59, baseType: !433, size: 32, offset: 160)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !180, line: 23, baseType: !179)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !422, file: !423, line: 60, baseType: !141, size: 128, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !361, file: !320, line: 825, baseType: !141, size: 128, offset: 1728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !361, file: !320, line: 845, baseType: !46, size: 32, offset: 1856)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !361, file: !320, line: 849, baseType: !291, size: 64, offset: 1920)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !361, file: !320, line: 850, baseType: !291, size: 64, offset: 1984)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !361, file: !320, line: 852, baseType: !291, size: 64, offset: 2048)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !361, file: !320, line: 853, baseType: !291, size: 64, offset: 2112)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !361, file: !320, line: 854, baseType: !413, size: 64, offset: 2176)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !361, file: !320, line: 855, baseType: !291, size: 64, offset: 2240)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !361, file: !320, line: 856, baseType: !291, size: 64, offset: 2304)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !361, file: !320, line: 857, baseType: !291, size: 64, offset: 2368)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !361, file: !320, line: 858, baseType: !291, size: 64, offset: 2432)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !361, file: !320, line: 865, baseType: !447, size: 32, offset: 2496)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !448, line: 69, baseType: !449)
!448 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !448, line: 64, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !449, file: !448, line: 65, baseType: !7, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !361, file: !320, line: 867, baseType: !171, size: 32, offset: 2528)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !361, file: !320, line: 869, baseType: !291, size: 64, offset: 2560)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !361, file: !320, line: 869, baseType: !291, size: 64, offset: 2624)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !361, file: !320, line: 869, baseType: !291, size: 64, offset: 2688)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !361, file: !320, line: 869, baseType: !291, size: 64, offset: 2752)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !361, file: !320, line: 870, baseType: !291, size: 64, offset: 2816)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !361, file: !320, line: 870, baseType: !291, size: 64, offset: 2880)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !361, file: !320, line: 870, baseType: !291, size: 64, offset: 2944)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !361, file: !320, line: 871, baseType: !291, size: 64, offset: 3008)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !361, file: !320, line: 871, baseType: !291, size: 64, offset: 3072)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !361, file: !320, line: 871, baseType: !291, size: 64, offset: 3136)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !361, file: !320, line: 871, baseType: !291, size: 64, offset: 3200)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !361, file: !320, line: 873, baseType: !465, size: 3328, offset: 3264)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 3328, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 52)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !361, file: !320, line: 875, baseType: !469, size: 1280, offset: 6592)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 1280, elements: !480)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !471, line: 22, size: 320, elements: !472)
!471 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!472 = !{!473, !474, !475, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !471, line: 23, baseType: !433, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !470, file: !471, line: 24, baseType: !417, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !470, file: !471, line: 26, baseType: !141, size: 128, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !470, file: !471, line: 28, baseType: !477, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !200, line: 20, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !202, line: 26, baseType: !46)
!480 = !{!481}
!481 = !DISubrange(count: 4)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !361, file: !320, line: 877, baseType: !483, size: 64, offset: 7872)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !320, line: 877, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !361, file: !320, line: 880, baseType: !486, size: 1088, offset: 7936)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !487, line: 72, baseType: !488)
!487 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 23, size: 1088, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !497, !498, !506, !507, !534, !535, !536}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !488, file: !487, line: 28, baseType: !405, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !488, file: !487, line: 38, baseType: !413, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !488, file: !487, line: 40, baseType: !291, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !488, file: !487, line: 43, baseType: !422, size: 320, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !488, file: !487, line: 44, baseType: !495, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !487, line: 44, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !487, line: 48, baseType: !291, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !488, file: !487, line: 59, baseType: !499, size: 256, offset: 640)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !500, line: 66, size: 256, elements: !501)
!500 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!501 = !{!502, !503, !504, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !499, file: !500, line: 67, baseType: !411, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !499, file: !500, line: 68, baseType: !433, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !499, file: !500, line: 70, baseType: !428, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !499, file: !500, line: 72, baseType: !141, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !488, file: !487, line: 60, baseType: !313, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !488, file: !487, line: 61, baseType: !508, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !511, line: 13, size: 1216, elements: !512)
!511 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!512 = !{!513, !514, !515, !516, !517, !518, !519, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !510, file: !511, line: 14, baseType: !313, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !510, file: !511, line: 15, baseType: !291, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !510, file: !511, line: 17, baseType: !291, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !510, file: !511, line: 17, baseType: !291, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !510, file: !511, line: 18, baseType: !291, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !510, file: !511, line: 18, baseType: !291, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !510, file: !511, line: 19, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !510, file: !511, line: 21, baseType: !277, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !510, file: !511, line: 23, baseType: !277, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !510, file: !511, line: 24, baseType: !277, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !510, file: !511, line: 25, baseType: !277, size: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !510, file: !511, line: 26, baseType: !277, size: 64, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !510, file: !511, line: 27, baseType: !277, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !510, file: !511, line: 28, baseType: !277, size: 64, offset: 832)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !510, file: !511, line: 29, baseType: !277, size: 64, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !510, file: !511, line: 30, baseType: !277, size: 64, offset: 960)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !510, file: !511, line: 31, baseType: !277, size: 64, offset: 1024)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !510, file: !511, line: 32, baseType: !277, size: 64, offset: 1088)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !510, file: !511, line: 33, baseType: !277, size: 64, offset: 1152)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !488, file: !487, line: 63, baseType: !191, size: 32, offset: 1024)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !488, file: !487, line: 69, baseType: !209, size: 16, offset: 1056)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !488, file: !487, line: 70, baseType: !537, size: 16, offset: 1072)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !200, line: 18, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !202, line: 23, baseType: !539)
!539 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !320, line: 882, baseType: !291, size: 64, offset: 9024)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !361, file: !320, line: 885, baseType: !171, size: 32, offset: 9088)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !361, file: !320, line: 886, baseType: !543, size: 64, offset: 9152)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !320, line: 732, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !361, file: !320, line: 901, baseType: !546, size: 64, offset: 9216)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !548, line: 18, flags: DIFlagFwdDecl)
!548 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!549 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !361, file: !320, line: 904, baseType: !325, size: 64, offset: 9280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !361, file: !320, line: 906, baseType: !551, size: 64, offset: 9344)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !320, line: 906, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !361, file: !320, line: 930, baseType: !191, size: 32, offset: 9408)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !361, file: !320, line: 933, baseType: !191, size: 32, offset: 9440)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !361, file: !320, line: 935, baseType: !556, size: 64, offset: 9472)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !114, line: 103, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !556, file: !114, line: 104, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !114, line: 101, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !361, file: !320, line: 940, baseType: !411, size: 64, offset: 9536)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !361, file: !320, line: 942, baseType: !563, size: 256, offset: 9600)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !564, line: 98, size: 256, elements: !565)
!564 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!565 = !{!566, !567, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !563, file: !564, line: 99, baseType: !411, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !563, file: !564, line: 100, baseType: !141, size: 128, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !563, file: !564, line: 101, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !564, line: 21, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !358, file: !320, line: 986, baseType: !575, offset: 10240)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: -1)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !337, file: !320, line: 640, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !327, line: 297, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !327, line: 297, size: 64, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !580, file: !327, line: 297, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !397, line: 19, baseType: !291)
!584 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !320, line: 646, baseType: !585, size: 64, offset: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !320, line: 646, size: 64, elements: !586)
!586 = !{!587, !590}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !585, file: !320, line: 647, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !320, line: 542, baseType: !291)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !585, file: !320, line: 648, baseType: !589, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !337, file: !320, line: 666, baseType: !46, size: 32, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !337, file: !320, line: 667, baseType: !593, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !320, line: 579, size: 320, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !594, file: !320, line: 580, baseType: !422, size: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !337, file: !320, line: 670, baseType: !598, size: 8, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !142, line: 35, baseType: !599)
!599 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !337, file: !320, line: 681, baseType: !601, size: 256, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !320, line: 678, size: 256, elements: !602)
!602 = !{!603, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !601, file: !320, line: 679, baseType: !604, size: 192, align: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !605, line: 5, size: 192, align: 64, elements: !606)
!605 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!606 = !{!607, !608, !610}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !604, file: !605, line: 6, baseType: !291, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !604, file: !605, line: 7, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !604, file: !605, line: 8, baseType: !609, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !601, file: !320, line: 680, baseType: !291, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !337, file: !320, line: 689, baseType: !141, size: 128, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !337, file: !320, line: 691, baseType: !614, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !320, line: 691, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !337, file: !320, line: 694, baseType: !617, size: 64, offset: 960)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !320, line: 694, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !337, file: !320, line: 697, baseType: !291, size: 64, offset: 1024)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !337, file: !320, line: 699, baseType: !325, size: 64, offset: 1088)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !337, file: !320, line: 700, baseType: !313, size: 64, offset: 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !337, file: !320, line: 711, baseType: !411, size: 64, offset: 1216)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !337, file: !320, line: 717, baseType: !625, size: 64, offset: 1280)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !320, line: 717, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !337, file: !320, line: 722, baseType: !628, offset: 1344)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !320, line: 570, elements: !378)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !296, file: !267, line: 90, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !296, file: !267, line: 91, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !257, file: !157, line: 120, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !224}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !640)
!640 = !{!641, !642, !646, !650, !656, !660}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !14, line: 40, baseType: !13, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !639, file: !14, line: 41, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!598}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !639, file: !14, line: 42, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!313}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !639, file: !14, line: 43, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!520, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !639, file: !14, line: 44, baseType: !657, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!520}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !639, file: !14, line: 45, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !313}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !257, file: !157, line: 121, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!520, !224}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !257, file: !157, line: 122, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !224, !672, !679}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !548, line: 23, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 21, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !548, line: 22, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !142, line: 37, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !275, line: 49, baseType: !7)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !548, line: 28, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 26, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !548, line: 27, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !142, line: 38, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !275, line: 50, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !156, file: !157, line: 70, baseType: !687, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !689, line: 190, size: 1152, elements: !690)
!689 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !793, !794, !795, !796, !797, !800}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !688, file: !689, line: 191, baseType: !191, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !688, file: !689, line: 192, baseType: !191, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !688, file: !689, line: 202, baseType: !687, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !688, file: !689, line: 203, baseType: !160, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !688, file: !689, line: 205, baseType: !604, size: 192, align: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !688, file: !689, line: 207, baseType: !520, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !688, file: !689, line: 208, baseType: !7, size: 32, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !689, line: 209, baseType: !699, size: 256, offset: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !689, line: 209, size: 256, elements: !700)
!700 = !{!701, !713, !717}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !699, file: !689, line: 210, baseType: !702, size: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !689, line: 153, size: 256, elements: !703)
!703 = !{!704, !705, !709, !712}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !702, file: !689, line: 154, baseType: !291, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !702, file: !689, line: 156, baseType: !706, size: 64, offset: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !605, line: 12, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !706, file: !605, line: 13, baseType: !609, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !702, file: !689, line: 162, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !689, line: 162, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !702, file: !689, line: 167, baseType: !291, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !699, file: !689, line: 211, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !689, line: 170, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !714, file: !689, line: 171, baseType: !687, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !699, file: !689, line: 212, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !689, line: 174, size: 256, elements: !719)
!719 = !{!720, !788, !791, !792}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !718, file: !689, line: 175, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !689, line: 271, size: 768, elements: !724)
!724 = !{!725, !748, !752, !756, !761, !765, !769, !773, !774, !775, !776, !784}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !723, file: !689, line: 276, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!46, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !689, line: 251, size: 1216, elements: !731)
!731 = !{!732, !733, !734, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !730, file: !689, line: 253, baseType: !687, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !730, file: !689, line: 254, baseType: !325, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !730, file: !689, line: 255, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !737, line: 66, flags: DIFlagFwdDecl)
!737 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!738 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !730, file: !689, line: 256, baseType: !313, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !730, file: !689, line: 259, baseType: !499, size: 256, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !730, file: !689, line: 260, baseType: !499, size: 256, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !730, file: !689, line: 261, baseType: !46, size: 32, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !730, file: !689, line: 262, baseType: !141, size: 128, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !730, file: !689, line: 263, baseType: !241, size: 64, offset: 960)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !730, file: !689, line: 265, baseType: !288, size: 64, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !730, file: !689, line: 266, baseType: !598, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !730, file: !689, line: 267, baseType: !598, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !730, file: !689, line: 268, baseType: !617, size: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !723, file: !689, line: 277, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !729}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !723, file: !689, line: 290, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!46, !735, !313}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !723, file: !689, line: 292, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!313, !735, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !723, file: !689, line: 293, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!313, !735, !313, !760}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !723, file: !689, line: 294, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !735, !313}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !723, file: !689, line: 296, baseType: !770, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!273, !729, !241, !288, !328}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !723, file: !689, line: 306, baseType: !288, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !723, file: !689, line: 313, baseType: !598, size: 8, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !723, file: !689, line: 314, baseType: !770, size: 64, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !723, file: !689, line: 317, baseType: !777, size: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !729, !782}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !781, line: 59, baseType: !7)
!781 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !689, line: 31, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !723, file: !689, line: 320, baseType: !785, size: 64, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!46, !729, !336}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !718, file: !689, line: 176, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !689, line: 35, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !718, file: !689, line: 177, baseType: !328, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !718, file: !689, line: 178, baseType: !687, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !688, file: !689, line: 215, baseType: !313, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !688, file: !689, line: 221, baseType: !405, size: 64, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !689, line: 223, baseType: !211, size: 16, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !688, file: !689, line: 224, baseType: !283, size: 16, offset: 912)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !688, file: !689, line: 225, baseType: !798, size: 64, offset: 960)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !689, line: 36, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !688, file: !689, line: 227, baseType: !348, size: 128, align: 64, offset: 1024)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !156, file: !157, line: 71, baseType: !802, size: 32, offset: 448)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !803, line: 19, size: 32, elements: !804)
!803 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !802, file: !803, line: 20, baseType: !806, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !807, line: 113, baseType: !808)
!807 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !807, line: 111, size: 32, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !808, file: !807, line: 112, baseType: !191, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !156, file: !157, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !156, file: !157, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !156, file: !157, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !156, file: !157, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !156, file: !157, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !153, file: !6, line: 47, baseType: !136, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !153, file: !6, line: 48, baseType: !164, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !153, file: !6, line: 49, baseType: !819, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !153, file: !6, line: 50, baseType: !822, size: 64, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !824, line: 26, size: 256, elements: !825)
!824 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !823, file: !824, line: 27, baseType: !7, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !823, file: !824, line: 28, baseType: !828, size: 192, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !829, line: 43, size: 192, elements: !830)
!829 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !828, file: !829, line: 44, baseType: !433, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !828, file: !829, line: 45, baseType: !141, size: 128, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !137, file: !6, line: 418, baseType: !834, size: 64, offset: 1408)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !836)
!836 = !{!837, !838, !843, !847, !851, !855}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !835, file: !6, line: 54, baseType: !279, size: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !835, file: !6, line: 55, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!273, !834, !842, !241}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !835, file: !6, line: 57, baseType: !844, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!273, !834, !842, !160, !288}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !835, file: !6, line: 59, baseType: !848, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !136, !160}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !835, file: !6, line: 60, baseType: !852, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!46, !136}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !835, file: !6, line: 61, baseType: !856, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !136}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !137, file: !6, line: 419, baseType: !160, size: 64, offset: 1472)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !137, file: !6, line: 420, baseType: !160, size: 64, offset: 1536)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !137, file: !6, line: 421, baseType: !164, size: 64, offset: 1600)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !137, file: !6, line: 424, baseType: !863, size: 64, offset: 1664)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !137, file: !6, line: 425, baseType: !867, size: 64, offset: 1728)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !137, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !137, file: !6, line: 435, baseType: !499, size: 256, offset: 1856)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !137, file: !6, line: 437, baseType: !872, size: 64, offset: 2112)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !874, line: 69, size: 320, elements: !875)
!874 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!875 = !{!876, !877, !878, !895, !897, !901, !902}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !873, file: !874, line: 70, baseType: !160, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !873, file: !874, line: 71, baseType: !136, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !873, file: !874, line: 72, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !874, line: 47, size: 256, elements: !882)
!882 = !{!883, !884, !890, !894}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !881, file: !874, line: 49, baseType: !7, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !881, file: !874, line: 51, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!46, !160, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !881, file: !874, line: 53, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!46, !241, !888}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !881, file: !874, line: 55, baseType: !661, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !873, file: !874, line: 73, baseType: !896, size: 16, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !873, file: !874, line: 74, baseType: !898, size: 8, offset: 208)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !200, line: 16, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !202, line: 20, baseType: !900)
!900 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !873, file: !874, line: 75, baseType: !199, size: 8, offset: 216)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !874, line: 76, baseType: !903, size: 64, offset: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !874, line: 76, size: 64, elements: !904)
!904 = !{!905, !906, !913}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !903, file: !874, line: 77, baseType: !313, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !903, file: !874, line: 78, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !874, line: 86, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !909, file: !874, line: 87, baseType: !7, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !909, file: !874, line: 88, baseType: !241, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !903, file: !874, line: 79, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !874, line: 92, size: 256, elements: !917)
!917 = !{!918, !919, !920, !922, !923}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !916, file: !874, line: 94, baseType: !7, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !916, file: !874, line: 95, baseType: !7, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !916, file: !874, line: 96, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !916, file: !874, line: 97, baseType: !879, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !916, file: !874, line: 98, baseType: !313, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !137, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !137, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !137, file: !6, line: 442, baseType: !863, size: 64, offset: 2240)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !137, file: !6, line: 443, baseType: !867, size: 64, offset: 2304)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !137, file: !6, line: 444, baseType: !598, size: 8, offset: 2368)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !137, file: !6, line: 451, baseType: !598, size: 8, offset: 2376)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !137, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !137, file: !6, line: 455, baseType: !932, size: 64, offset: 2432)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !137, file: !6, line: 458, baseType: !935, size: 64, offset: 2496)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!46}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !137, file: !6, line: 460, baseType: !939, size: 4032, align: 512, offset: 2560)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 4032, elements: !956)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !940, file: !6, line: 363, baseType: !313, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !940, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !940, file: !6, line: 367, baseType: !945, size: 448, offset: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !945, file: !6, line: 320, baseType: !136, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !945, file: !6, line: 321, baseType: !949, size: 384, offset: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !950, line: 40, size: 384, elements: !951)
!950 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !949, file: !950, line: 41, baseType: !953, size: 384, align: 64)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 384, align: 64, elements: !954)
!954 = !{!955}
!955 = !DISubrange(count: 2)
!956 = !{!957}
!957 = !DISubrange(count: 7)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !137, file: !6, line: 463, baseType: !959, size: 192, offset: 6592)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !960, line: 8, size: 192, elements: !961)
!960 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!961 = !{!962, !963, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !959, file: !960, line: 10, baseType: !7, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !959, file: !960, line: 11, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !959, file: !960, line: 12, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !968, line: 59, size: 48, elements: !969)
!968 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!969 = !{!970, !971, !972, !973, !974, !975}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !967, file: !968, line: 60, baseType: !537, size: 16)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !967, file: !968, line: 61, baseType: !537, size: 16, offset: 16)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !967, file: !968, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !967, file: !968, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !967, file: !968, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !967, file: !968, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !137, file: !6, line: 465, baseType: !291, size: 64, offset: 6784)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !137, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !137, file: !6, line: 470, baseType: !141, size: 128, offset: 6912)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !137, file: !6, line: 471, baseType: !980, size: 64, offset: 7040)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !982, line: 33, size: 96, elements: !983)
!982 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!983 = !{!984, !985, !986, !987}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !981, file: !982, line: 37, baseType: !46, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !981, file: !982, line: 43, baseType: !46, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !981, file: !982, line: 45, baseType: !211, size: 16, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !982, line: 47, baseType: !211, size: 16, offset: 80)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !137, file: !6, line: 476, baseType: !989, size: 64, offset: 7104)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !991)
!991 = !{!992, !1009, !1010, !1011}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !990, file: !6, line: 379, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !995, line: 204, baseType: !996)
!995 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !995, line: 197, size: 192, elements: !997)
!997 = !{!998, !1001, !1002, !1003, !1005, !1007}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !996, file: !995, line: 198, baseType: !999, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !995, line: 21, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !202, line: 27, baseType: !7)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !996, file: !995, line: 199, baseType: !203, size: 8, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !996, file: !995, line: 200, baseType: !203, size: 8, offset: 40)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !996, file: !995, line: 201, baseType: !1004, size: 16, offset: 48)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !995, line: 17, baseType: !210)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !996, file: !995, line: 202, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !995, line: 16, baseType: !406)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !996, file: !995, line: 203, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !995, line: 22, baseType: !406)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !990, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !990, file: !6, line: 381, baseType: !241, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !990, file: !6, line: 382, baseType: !241, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !137, file: !6, line: 477, baseType: !990, size: 256, offset: 7168)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !137, file: !6, line: 480, baseType: !1014, size: 64, offset: 7424)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !137, file: !6, line: 483, baseType: !1017, size: 64, offset: 7488)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !137, file: !6, line: 488, baseType: !241, size: 64, offset: 7552)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !137, file: !6, line: 492, baseType: !313, size: 64, offset: 7616)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !137, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !137, file: !6, line: 495, baseType: !313, size: 64, offset: 7744)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !137, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !137, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !137, file: !6, line: 500, baseType: !1026, size: 64, offset: 7872)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1028, line: 45, baseType: !1029)
!1028 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !137, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !137, file: !6, line: 504, baseType: !1032, size: 64, offset: 8000)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1035, line: 96, size: 192, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1036 = !{!1037, !1038, !1099, !1102}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1034, file: !1035, line: 97, baseType: !7, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1034, file: !1035, line: 98, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1035, line: 24, size: 3072, elements: !1041)
!1041 = !{!1042, !1044, !1045, !1046, !1047, !1061, !1062, !1063, !1064, !1083, !1084, !1085, !1096, !1097, !1098}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1040, file: !1035, line: 26, baseType: !1043, size: 128)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 128, elements: !954)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1040, file: !1035, line: 27, baseType: !1043, size: 128, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1040, file: !1035, line: 28, baseType: !46, size: 32, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1035, line: 31, baseType: !171, size: 32, align: 512, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1040, file: !1035, line: 32, baseType: !1048, size: 960, offset: 576)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1049, line: 206, size: 960, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1050 = !{!1051, !1052, !1055, !1057, !1058, !1060}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1048, file: !1049, line: 207, baseType: !351, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1048, file: !1049, line: 208, baseType: !1053, size: 256, offset: 64)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1054, size: 256, elements: !480)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1048, file: !1049, line: 209, baseType: !1056, size: 256, offset: 320)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !480)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1048, file: !1049, line: 213, baseType: !277, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1048, file: !1049, line: 215, baseType: !1059, size: 256, offset: 640)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !480)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !1049, line: 216, baseType: !199, size: 8, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1040, file: !1035, line: 33, baseType: !291, size: 64, offset: 1536)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1040, file: !1035, line: 34, baseType: !291, size: 64, offset: 1600)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1040, file: !1035, line: 35, baseType: !598, size: 8, offset: 1664)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1040, file: !1035, line: 36, baseType: !1065, size: 320, offset: 1728)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1066, line: 11, size: 320, elements: !1067)
!1066 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1067 = !{!1068, !1075, !1076, !1081}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1065, file: !1066, line: 16, baseType: !1069, size: 128)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !142, line: 198, size: 128, elements: !1070)
!1070 = !{!1071, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1069, file: !142, line: 199, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1069, file: !142, line: 199, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1065, file: !1066, line: 17, baseType: !291, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1065, file: !1066, line: 18, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !1066, line: 19, baseType: !1082, size: 32, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !200, line: 21, baseType: !1000)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1040, file: !1035, line: 37, baseType: !563, size: 256, offset: 2048)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1040, file: !1035, line: 38, baseType: !348, size: 128, align: 64, offset: 2304)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1040, file: !1035, line: 39, baseType: !1086, size: 64, offset: 2432)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1035, line: 49, size: 768, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1087, file: !1035, line: 50, baseType: !171, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1087, file: !1035, line: 51, baseType: !1056, size: 256, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1087, file: !1035, line: 53, baseType: !1056, size: 256, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1087, file: !1035, line: 54, baseType: !291, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1087, file: !1035, line: 55, baseType: !1086, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1087, file: !1035, line: 56, baseType: !46, size: 32, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1087, file: !1035, line: 57, baseType: !46, size: 32, offset: 736)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1040, file: !1035, line: 40, baseType: !291, size: 64, offset: 2496)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1040, file: !1035, line: 42, baseType: !46, size: 32, offset: 2560)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1040, file: !1035, line: 43, baseType: !1033, size: 64, offset: 2624)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1034, file: !1035, line: 99, baseType: !1100, offset: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1101, line: 211, elements: !378)
!1101 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1034, file: !1035, line: 100, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1035, line: 63, size: 3008, elements: !1105)
!1105 = !{!1106, !1107, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1137}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1104, file: !1035, line: 64, baseType: !1086, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1104, file: !1035, line: 65, baseType: !1108, size: 192, offset: 64)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 192, elements: !242)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1104, file: !1035, line: 67, baseType: !46, size: 32, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1104, file: !1035, line: 68, baseType: !499, size: 256, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1104, file: !1035, line: 69, baseType: !171, size: 32, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1104, file: !1035, line: 70, baseType: !499, size: 256, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1104, file: !1035, line: 71, baseType: !291, size: 64, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1104, file: !1035, line: 72, baseType: !291, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1104, file: !1035, line: 73, baseType: !291, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1104, file: !1035, line: 74, baseType: !291, size: 64, offset: 1088)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1104, file: !1035, line: 75, baseType: !291, size: 64, offset: 1152)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1104, file: !1035, line: 76, baseType: !291, size: 64, offset: 1216)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1104, file: !1035, line: 77, baseType: !291, size: 64, offset: 1280)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1104, file: !1035, line: 78, baseType: !291, size: 64, offset: 1344)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1104, file: !1035, line: 79, baseType: !598, size: 8, offset: 1408)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1104, file: !1035, line: 80, baseType: !291, size: 64, offset: 1472)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1104, file: !1035, line: 81, baseType: !499, size: 256, offset: 1536)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1104, file: !1035, line: 82, baseType: !823, size: 256, offset: 1792)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1104, file: !1035, line: 84, baseType: !191, size: 32, offset: 2048)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1104, file: !1035, line: 87, baseType: !291, size: 64, offset: 2112)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1104, file: !1035, line: 88, baseType: !291, size: 64, offset: 2176)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1104, file: !1035, line: 89, baseType: !1129, size: 704, offset: 2240)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !564, line: 111, size: 704, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1136}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1129, file: !564, line: 112, baseType: !563, size: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1129, file: !564, line: 113, baseType: !1065, size: 320, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1129, file: !564, line: 116, baseType: !1134, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !564, line: 18, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1129, file: !564, line: 117, baseType: !46, size: 32, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1104, file: !1035, line: 90, baseType: !1033, size: 64, offset: 2944)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !137, file: !6, line: 515, baseType: !1139, size: 64, offset: 8064)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1141, line: 117, size: 128, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1142 = !{!1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1140, file: !1141, line: 118, baseType: !478, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1140, file: !1141, line: 119, baseType: !478, size: 32, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1140, file: !1141, line: 120, baseType: !277, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !137, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !137, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !137, file: !6, line: 520, baseType: !1149, size: 64, offset: 8192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !137, file: !6, line: 523, baseType: !1151, size: 64, offset: 8256)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !137, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !137, file: !6, line: 525, baseType: !1156, size: 64, offset: 8384)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !137, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !137, file: !6, line: 533, baseType: !313, size: 64, offset: 8512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !137, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !137, file: !6, line: 535, baseType: !1163, size: 64, offset: 8640)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !137, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !137, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !137, file: !6, line: 540, baseType: !1167, size: 64, offset: 8768)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1169, line: 32, size: 64, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1168, file: !1169, line: 33, baseType: !478, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1168, file: !1169, line: 34, baseType: !478, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !137, file: !6, line: 563, baseType: !141, size: 128, offset: 8832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !137, file: !6, line: 565, baseType: !141, size: 128, offset: 8960)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !137, file: !6, line: 568, baseType: !1176, size: 64, offset: 9088)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !137, file: !6, line: 570, baseType: !191, size: 32, offset: 9152)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !1183, line: 223, size: 7936, elements: !1184)
!1183 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5439c2680e180b2809cf646c46c358d2")
!1184 = !{!1185, !1188, !1189, !1192, !1193, !1194, !1195, !1196, !1210, !1249, !1296, !1343, !1353, !2031, !2032, !2033}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1182, file: !1183, line: 224, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !1187, line: 424, baseType: !313)
!1187 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !1182, file: !1183, line: 225, baseType: !1082, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !1182, file: !1183, line: 226, baseType: !1190, size: 32, offset: 96)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !1191, line: 287, baseType: !1082)
!1191 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1182, file: !1183, line: 227, baseType: !1082, size: 32, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !1182, file: !1183, line: 228, baseType: !1082, size: 32, offset: 160)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !1182, file: !1183, line: 229, baseType: !46, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !1182, file: !1183, line: 230, baseType: !46, size: 32, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !1183, line: 233, baseType: !1197, size: 16, offset: 256)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !1183, line: 209, size: 16, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1197, file: !1183, line: 210, baseType: !199, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1197, file: !1183, line: 211, baseType: !199, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !1197, file: !1183, line: 212, baseType: !199, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1197, file: !1183, line: 213, baseType: !199, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !1197, file: !1183, line: 214, baseType: !199, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !1197, file: !1183, line: 215, baseType: !199, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !1197, file: !1183, line: 216, baseType: !199, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !1197, file: !1183, line: 217, baseType: !199, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !1197, file: !1183, line: 218, baseType: !199, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !1197, file: !1183, line: 219, baseType: !199, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !1197, file: !1183, line: 220, baseType: !199, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1182, file: !1183, line: 234, baseType: !1211, size: 4736, offset: 320)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !1183, line: 92, size: 4736, elements: !1212)
!1212 = !{!1213, !1214, !1248}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1211, file: !1183, line: 93, baseType: !46, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1183, line: 94, baseType: !1215, size: 4608, offset: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1183, line: 94, size: 4608, elements: !1216)
!1216 = !{!1217, !1234}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1215, file: !1183, line: 95, baseType: !1218, size: 3328)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 3328, elements: !1232)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !1183, line: 68, size: 416, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1219, file: !1183, line: 69, baseType: !199, size: 8)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1219, file: !1183, line: 70, baseType: !199, size: 8, offset: 8)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1219, file: !1183, line: 71, baseType: !1082, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !1219, file: !1183, line: 72, baseType: !199, size: 8, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1219, file: !1183, line: 73, baseType: !199, size: 8, offset: 72)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1219, file: !1183, line: 74, baseType: !1082, size: 32, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !1219, file: !1183, line: 75, baseType: !199, size: 8, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1219, file: !1183, line: 76, baseType: !1229, size: 256, offset: 136)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 32)
!1232 = !{!1233}
!1233 = !DISubrange(count: 8)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !1215, file: !1183, line: 96, baseType: !1235, size: 4608)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, size: 4608, elements: !1232)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !1183, line: 79, size: 576, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !1236, file: !1183, line: 80, baseType: !1082, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !1236, file: !1183, line: 81, baseType: !1082, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !1183, line: 82, baseType: !1082, size: 32, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !1236, file: !1183, line: 83, baseType: !1082, size: 32, offset: 96)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !1236, file: !1183, line: 84, baseType: !1082, size: 32, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !1236, file: !1183, line: 85, baseType: !1082, size: 32, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1236, file: !1183, line: 86, baseType: !405, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1236, file: !1183, line: 87, baseType: !199, size: 8, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !1236, file: !1183, line: 88, baseType: !199, size: 8, offset: 264)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1236, file: !1183, line: 89, baseType: !1229, size: 256, offset: 272)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !1211, file: !1183, line: 98, baseType: !46, size: 32, offset: 4672)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1182, file: !1183, line: 235, baseType: !1250, size: 64, offset: 5056)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !1183, line: 130, size: 896, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1265, !1266, !1267, !1277, !1285, !1295}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1251, file: !1183, line: 131, baseType: !7, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !1251, file: !1183, line: 132, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !1251, file: !1183, line: 133, baseType: !1256, size: 120, offset: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !1183, line: 111, size: 120, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !1256, file: !1183, line: 112, baseType: !199, size: 8)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1256, file: !1183, line: 113, baseType: !209, size: 16, offset: 8)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1256, file: !1183, line: 114, baseType: !199, size: 8, offset: 24)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1256, file: !1183, line: 115, baseType: !199, size: 8, offset: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1256, file: !1183, line: 116, baseType: !199, size: 8, offset: 40)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1256, file: !1183, line: 117, baseType: !199, size: 8, offset: 48)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1256, file: !1183, line: 118, baseType: !405, size: 64, offset: 56)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !1251, file: !1183, line: 134, baseType: !1256, size: 120, offset: 184)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1251, file: !1183, line: 135, baseType: !7, size: 32, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1251, file: !1183, line: 136, baseType: !1268, size: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !1183, line: 121, size: 384, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !1269, file: !1183, line: 122, baseType: !405, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1269, file: !1183, line: 123, baseType: !405, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !1269, file: !1183, line: 124, baseType: !405, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !1269, file: !1183, line: 125, baseType: !405, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1269, file: !1183, line: 126, baseType: !405, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1269, file: !1183, line: 127, baseType: !405, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !1251, file: !1183, line: 137, baseType: !1278, size: 320, offset: 448)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !1183, line: 103, size: 320, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !1278, file: !1183, line: 104, baseType: !405, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1278, file: !1183, line: 105, baseType: !405, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1278, file: !1183, line: 106, baseType: !405, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !1278, file: !1183, line: 107, baseType: !405, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !1278, file: !1183, line: 108, baseType: !405, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !1251, file: !1183, line: 138, baseType: !1286, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1287, line: 913, baseType: !1288)
!1287 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 64, elements: !1293)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1287, line: 19, size: 64, elements: !1290)
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1289, file: !1287, line: 19, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 64, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 1)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !1251, file: !1183, line: 139, baseType: !7, size: 32, offset: 832)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !1182, file: !1183, line: 236, baseType: !1297, size: 1600, offset: 5120)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !1183, line: 175, size: 1600, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1313, !1321, !1322, !1326, !1330, !1331, !1332, !1333, !1334, !1335}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1297, file: !1183, line: 176, baseType: !7, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !1297, file: !1183, line: 177, baseType: !7, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !1297, file: !1183, line: 178, baseType: !1256, size: 120, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !1297, file: !1183, line: 179, baseType: !1256, size: 120, offset: 184)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1297, file: !1183, line: 180, baseType: !7, size: 32, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !1297, file: !1183, line: 181, baseType: !1305, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !1183, line: 162, size: 320, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311, !1312}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !1306, file: !1183, line: 163, baseType: !405, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1306, file: !1183, line: 164, baseType: !405, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !1306, file: !1183, line: 165, baseType: !405, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1306, file: !1183, line: 166, baseType: !405, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1306, file: !1183, line: 167, baseType: !405, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !1297, file: !1183, line: 182, baseType: !1314, size: 320, offset: 448)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !1183, line: 144, size: 320, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !1314, file: !1183, line: 145, baseType: !405, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1314, file: !1183, line: 146, baseType: !405, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1314, file: !1183, line: 147, baseType: !405, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !1314, file: !1183, line: 148, baseType: !405, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !1314, file: !1183, line: 149, baseType: !405, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !1297, file: !1183, line: 183, baseType: !1286, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !1297, file: !1183, line: 184, baseType: !1323, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!46, !1181}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !1297, file: !1183, line: 185, baseType: !1327, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!46, !1181, !46, !598}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1297, file: !1183, line: 188, baseType: !1082, size: 32, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !1297, file: !1183, line: 189, baseType: !199, size: 8, offset: 992)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !1297, file: !1183, line: 190, baseType: !199, size: 8, offset: 1000)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !1297, file: !1183, line: 191, baseType: !199, size: 8, offset: 1008)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !1297, file: !1183, line: 192, baseType: !7, size: 32, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1297, file: !1183, line: 193, baseType: !1336, size: 512, offset: 1056)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 512, elements: !1341)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !1183, line: 169, size: 32, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1337, file: !1183, line: 170, baseType: !209, size: 16)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1337, file: !1183, line: 171, baseType: !209, size: 16, offset: 16)
!1341 = !{!1342}
!1342 = !DISubrange(count: 16)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1182, file: !1183, line: 237, baseType: !1344, size: 192, offset: 6720)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !1183, line: 203, size: 192, elements: !1345)
!1345 = !{!1346, !1351, !1352}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1344, file: !1183, line: 204, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !1183, line: 198, size: 64, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !1347, file: !1183, line: 199, baseType: !46, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !1347, file: !1183, line: 200, baseType: !46, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !1344, file: !1183, line: 205, baseType: !1347, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1344, file: !1183, line: 206, baseType: !1347, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !1182, file: !1183, line: 238, baseType: !1354, size: 64, offset: 6912)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !1356, line: 98, size: 6848, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!1357 = !{!1358, !1359, !1360, !1361, !1997, !1998, !1999, !2000, !2027, !2028, !2029, !2030}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1355, file: !1356, line: 99, baseType: !46, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1355, file: !1356, line: 100, baseType: !241, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !1355, file: !1356, line: 101, baseType: !291, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1355, file: !1356, line: 102, baseType: !1362, size: 5824, offset: 192)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1363)
!1363 = !{!1364, !1365, !1367, !1370, !1371, !1424, !1510, !1511, !1512, !1513, !1514, !1521, !1761, !1774, !1784, !1788, !1790, !1791, !1792, !1796, !1803, !1804, !1807, !1810, !1936, !1937, !1938, !1941, !1942, !1943, !1944, !1974, !1975, !1976, !1979, !1982, !1991, !1992, !1993, !1994, !1995, !1996}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1362, file: !26, line: 706, baseType: !156, size: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1362, file: !26, line: 707, baseType: !1366, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1362, file: !26, line: 709, baseType: !1368, size: 64, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1362, file: !26, line: 711, baseType: !160, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1362, file: !26, line: 712, baseType: !1372, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1384, !1389, !1393}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1374, file: !26, line: 90, baseType: !160, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1374, file: !26, line: 91, baseType: !293, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1374, file: !26, line: 92, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!46, !1382, !236}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1374, file: !26, line: 93, baseType: !1385, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!241, !1382, !1388, !672, !679}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1374, file: !26, line: 95, baseType: !1390, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1366}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1374, file: !26, line: 97, baseType: !1394, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1397)
!1397 = !{!1398, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1396, file: !38, line: 287, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!46, !1366}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1396, file: !38, line: 288, baseType: !1390, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1396, file: !38, line: 289, baseType: !1399, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1396, file: !38, line: 290, baseType: !1399, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1396, file: !38, line: 291, baseType: !1399, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1396, file: !38, line: 292, baseType: !1399, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1396, file: !38, line: 293, baseType: !1399, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1396, file: !38, line: 294, baseType: !1399, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1396, file: !38, line: 295, baseType: !1399, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1396, file: !38, line: 296, baseType: !1399, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1396, file: !38, line: 297, baseType: !1399, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1396, file: !38, line: 298, baseType: !1399, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1396, file: !38, line: 299, baseType: !1399, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1396, file: !38, line: 300, baseType: !1399, size: 64, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1396, file: !38, line: 301, baseType: !1399, size: 64, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1396, file: !38, line: 302, baseType: !1399, size: 64, offset: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1396, file: !38, line: 303, baseType: !1399, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1396, file: !38, line: 304, baseType: !1399, size: 64, offset: 1088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1396, file: !38, line: 305, baseType: !1399, size: 64, offset: 1152)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1396, file: !38, line: 306, baseType: !1399, size: 64, offset: 1216)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1396, file: !38, line: 307, baseType: !1399, size: 64, offset: 1280)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1396, file: !38, line: 308, baseType: !1399, size: 64, offset: 1344)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1396, file: !38, line: 309, baseType: !1399, size: 64, offset: 1408)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1362, file: !26, line: 714, baseType: !1425, size: 64, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1428, line: 80, size: 1344, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1509}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1427, file: !1428, line: 81, baseType: !160, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1427, file: !1428, line: 82, baseType: !160, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1427, file: !1428, line: 83, baseType: !293, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1427, file: !1428, line: 84, baseType: !293, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1427, file: !1428, line: 85, baseType: !293, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1427, file: !1428, line: 87, baseType: !1436, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!46, !1366, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1461, !1472, !1473, !1474, !1475, !1476, !1484, !1485, !1486, !1487, !1488, !1489}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1440, file: !20, line: 97, baseType: !160, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1440, file: !20, line: 98, baseType: !1425, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1440, file: !20, line: 100, baseType: !136, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1440, file: !20, line: 101, baseType: !160, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1440, file: !20, line: 103, baseType: !598, size: 8, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1440, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1440, file: !20, line: 106, baseType: !1449, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1452, line: 282, size: 1600, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1453 = !{!1454, !1455, !1456, !1460}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1451, file: !1452, line: 283, baseType: !1229, size: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1451, file: !1452, line: 284, baseType: !1229, size: 256, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1451, file: !1452, line: 285, baseType: !1457, size: 1024, offset: 512)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1451, file: !1452, line: 286, baseType: !520, size: 64, offset: 1536)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1440, file: !20, line: 107, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1452, line: 217, size: 256, elements: !1465)
!1465 = !{!1466, !1468, !1470, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1464, file: !1452, line: 218, baseType: !1467, size: 128)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 128, elements: !1341)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1464, file: !1452, line: 219, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1452, line: 15, baseType: !291)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1464, file: !1452, line: 220, baseType: !1000, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1464, file: !1452, line: 221, baseType: !1000, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1440, file: !20, line: 109, baseType: !1399, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1440, file: !20, line: 110, baseType: !1390, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1440, file: !20, line: 111, baseType: !1399, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1440, file: !20, line: 112, baseType: !1390, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1440, file: !20, line: 113, baseType: !1477, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!46, !1366, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1482)
!1482 = !{!1483}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1481, file: !38, line: 59, baseType: !46, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1440, file: !20, line: 114, baseType: !1399, size: 64, offset: 768)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1440, file: !20, line: 115, baseType: !293, size: 64, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1440, file: !20, line: 116, baseType: !293, size: 64, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1440, file: !20, line: 118, baseType: !1394, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1440, file: !20, line: 119, baseType: !1390, size: 64, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1440, file: !20, line: 121, baseType: !1490, size: 64, offset: 1088)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1427, file: !1428, line: 88, baseType: !1379, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1427, file: !1428, line: 89, baseType: !1399, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1427, file: !1428, line: 90, baseType: !1390, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1427, file: !1428, line: 91, baseType: !1390, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1427, file: !1428, line: 92, baseType: !1390, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1427, file: !1428, line: 94, baseType: !1399, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1427, file: !1428, line: 95, baseType: !1399, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1427, file: !1428, line: 97, baseType: !1477, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1427, file: !1428, line: 98, baseType: !1399, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1427, file: !1428, line: 100, baseType: !1399, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1427, file: !1428, line: 102, baseType: !1399, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1427, file: !1428, line: 103, baseType: !1390, size: 64, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1427, file: !1428, line: 105, baseType: !1394, size: 64, offset: 1152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1427, file: !1428, line: 107, baseType: !1506, size: 64, offset: 1216)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1428, line: 107, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1427, file: !1428, line: 109, baseType: !598, size: 8, offset: 1280)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1362, file: !26, line: 715, baseType: !1439, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1362, file: !26, line: 717, baseType: !313, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1362, file: !26, line: 719, baseType: !313, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1362, file: !26, line: 721, baseType: !499, size: 256, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1362, file: !26, line: 725, baseType: !1515, size: 448, offset: 1280)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1515, file: !26, line: 518, baseType: !141, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1515, file: !26, line: 519, baseType: !141, size: 128, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1515, file: !26, line: 520, baseType: !141, size: 128, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1515, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1362, file: !26, line: 726, baseType: !1522, size: 2496, offset: 1728)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1568, !1569, !1570, !1571, !1572, !1573, !1642, !1643, !1644, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1682, !1686}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1522, file: !38, line: 664, baseType: !1480, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1522, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1522, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1522, file: !38, line: 667, baseType: !598, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1522, file: !38, line: 668, baseType: !598, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1522, file: !38, line: 669, baseType: !598, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1522, file: !38, line: 670, baseType: !598, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1522, file: !38, line: 671, baseType: !598, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1522, file: !38, line: 672, baseType: !598, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1522, file: !38, line: 673, baseType: !598, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1522, file: !38, line: 674, baseType: !598, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1522, file: !38, line: 675, baseType: !1082, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !38, line: 676, baseType: !171, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1522, file: !38, line: 678, baseType: !141, size: 128, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1522, file: !38, line: 679, baseType: !823, size: 256, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1522, file: !38, line: 680, baseType: !1540, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1542, line: 43, size: 1536, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1551, !1552, !1553, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1541, file: !1542, line: 44, baseType: !160, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1541, file: !1542, line: 45, baseType: !46, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1541, file: !1542, line: 46, baseType: !141, size: 128, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1541, file: !1542, line: 47, baseType: !171, size: 32, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1541, file: !1542, line: 48, baseType: !1549, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1541, file: !1542, line: 49, baseType: !1065, size: 320, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1541, file: !1542, line: 50, baseType: !291, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1541, file: !1542, line: 51, baseType: !1554, size: 64, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1555, line: 29, baseType: !417)
!1555 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1541, file: !1542, line: 52, baseType: !1554, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1541, file: !1542, line: 53, baseType: !1554, size: 64, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1541, file: !1542, line: 54, baseType: !1554, size: 64, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1541, file: !1542, line: 55, baseType: !1554, size: 64, offset: 1024)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1541, file: !1542, line: 56, baseType: !291, size: 64, offset: 1088)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1541, file: !1542, line: 57, baseType: !291, size: 64, offset: 1152)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1541, file: !1542, line: 58, baseType: !291, size: 64, offset: 1216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1541, file: !1542, line: 59, baseType: !291, size: 64, offset: 1280)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1541, file: !1542, line: 60, baseType: !291, size: 64, offset: 1344)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1541, file: !1542, line: 61, baseType: !1366, size: 64, offset: 1408)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1541, file: !1542, line: 62, baseType: !598, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1541, file: !1542, line: 63, baseType: !598, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1522, file: !38, line: 681, baseType: !598, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1522, file: !38, line: 682, baseType: !598, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1522, file: !38, line: 683, baseType: !598, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1522, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1522, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1522, file: !38, line: 690, baseType: !1574, size: 512, offset: 640)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1575)
!1575 = !{!1576, !1582, !1583, !1588, !1638, !1639, !1640, !1641}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1574, file: !33, line: 119, baseType: !1577, size: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1578, line: 9, size: 256, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1577, file: !1578, line: 10, baseType: !604, size: 192, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1577, file: !1578, line: 11, baseType: !1554, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1574, file: !33, line: 120, baseType: !1554, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1574, file: !33, line: 121, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!32, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1574, file: !33, line: 122, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1591)
!1591 = !{!1592, !1615, !1616, !1619, !1624, !1625, !1633, !1637}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1590, file: !33, line: 160, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1594, file: !33, line: 216, baseType: !433, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1594, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1594, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1594, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1594, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1594, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1594, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1594, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1594, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1594, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1594, file: !33, line: 227, baseType: !211, size: 16, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1594, file: !33, line: 228, baseType: !211, size: 16, offset: 208)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1594, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1594, file: !33, line: 235, baseType: !1554, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1594, file: !33, line: 236, baseType: !1587, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1594, file: !33, line: 237, baseType: !1554, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1594, file: !33, line: 238, baseType: !1587, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1594, file: !33, line: 239, baseType: !1614, size: 4096, align: 512, offset: 512)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1590, size: 4096, align: 512, elements: !1232)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1590, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1590, file: !33, line: 162, baseType: !1617, size: 32, offset: 96)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !142, line: 32, baseType: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !275, line: 96, baseType: !46)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1590, file: !33, line: 163, baseType: !1620, size: 32, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !448, line: 274, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !448, line: 274, size: 32, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1621, file: !448, line: 274, baseType: !447, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1590, file: !33, line: 164, baseType: !1587, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1590, file: !33, line: 165, baseType: !1626, size: 128, offset: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1578, line: 14, size: 128, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1626, file: !1578, line: 15, baseType: !1629, size: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !605, line: 26, size: 128, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1629, file: !605, line: 27, baseType: !706, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1629, file: !605, line: 28, baseType: !609, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1590, file: !33, line: 166, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!1554}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1590, file: !33, line: 167, baseType: !1554, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1574, file: !33, line: 123, baseType: !199, size: 8, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1574, file: !33, line: 124, baseType: !199, size: 8, offset: 456)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1574, file: !33, line: 125, baseType: !199, size: 8, offset: 464)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1574, file: !33, line: 126, baseType: !199, size: 8, offset: 472)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1522, file: !38, line: 691, baseType: !405, size: 64, offset: 1152)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1522, file: !38, line: 692, baseType: !563, size: 256, offset: 1216)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1522, file: !38, line: 693, baseType: !1645, size: 192, offset: 1472)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1646, line: 41, baseType: !1647)
!1646 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1646, line: 37, size: 192, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1647, file: !1646, line: 38, baseType: !171, size: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1647, file: !1646, line: 39, baseType: !141, size: 128, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1522, file: !38, line: 694, baseType: !1549, size: 64, offset: 1664)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1522, file: !38, line: 695, baseType: !191, size: 32, offset: 1728)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1522, file: !38, line: 696, baseType: !191, size: 32, offset: 1760)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1522, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1522, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1522, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1522, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1522, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1522, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1522, file: !38, line: 703, baseType: !598, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1522, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1522, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1522, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1522, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1522, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1522, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1522, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1522, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1522, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1522, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1522, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1522, file: !38, line: 715, baseType: !405, size: 64, offset: 2048)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1522, file: !38, line: 716, baseType: !405, size: 64, offset: 2112)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1522, file: !38, line: 717, baseType: !405, size: 64, offset: 2176)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1522, file: !38, line: 718, baseType: !405, size: 64, offset: 2240)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1522, file: !38, line: 720, baseType: !1677, size: 64, offset: 2304)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1678, file: !38, line: 633, baseType: !171, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1678, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1522, file: !38, line: 721, baseType: !1683, size: 64, offset: 2368)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !1366, !478}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1522, file: !38, line: 722, baseType: !1687, size: 64, offset: 2432)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1689)
!1689 = !{!1690, !1719, !1720, !1727, !1732, !1759, !1760}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1688, file: !54, line: 118, baseType: !1691, size: 320)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1692)
!1692 = !{!1693, !1698, !1699, !1700, !1701, !1702}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1691, file: !54, line: 53, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1695, line: 82, size: 128, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1694, file: !1695, line: 83, baseType: !141, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1691, file: !54, line: 54, baseType: !478, size: 32, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1691, file: !54, line: 55, baseType: !478, size: 32, offset: 160)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1691, file: !54, line: 56, baseType: !478, size: 32, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1691, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1691, file: !54, line: 58, baseType: !1703, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1705, line: 65, size: 384, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1704, file: !1705, line: 66, baseType: !422, size: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1704, file: !1705, line: 67, baseType: !1709, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1705, line: 54, size: 192, elements: !1711)
!1711 = !{!1712, !1717, !1718}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1710, file: !1705, line: 55, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1705, line: 51, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!46, !1709, !291, !313}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1710, file: !1705, line: 56, baseType: !1709, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1710, file: !1705, line: 57, baseType: !46, size: 32, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1688, file: !54, line: 119, baseType: !1691, size: 320, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1688, file: !54, line: 120, baseType: !1721, size: 1408, offset: 640)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1721, file: !54, line: 86, baseType: !1691, size: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1721, file: !54, line: 87, baseType: !1704, size: 384, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1721, file: !54, line: 88, baseType: !1691, size: 320, offset: 704)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1721, file: !54, line: 89, baseType: !1704, size: 384, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1688, file: !54, line: 121, baseType: !1728, size: 192, offset: 2048)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1728, file: !54, line: 72, baseType: !141, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1728, file: !54, line: 73, baseType: !478, size: 32, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1688, file: !54, line: 122, baseType: !1733, size: 64, offset: 2240)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1735)
!1735 = !{!1736, !1737, !1758}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1734, file: !54, line: 108, baseType: !59, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1734, file: !54, line: 113, baseType: !1738, size: 448, offset: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1734, file: !54, line: 109, size: 448, elements: !1739)
!1739 = !{!1740, !1746, !1751}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1738, file: !54, line: 110, baseType: !1741, size: 320)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1695, line: 86, size: 320, elements: !1742)
!1742 = !{!1743, !1744, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1741, file: !1695, line: 87, baseType: !46, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1741, file: !1695, line: 88, baseType: !141, size: 128, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1741, file: !1695, line: 89, baseType: !141, size: 128, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1738, file: !54, line: 111, baseType: !1747, size: 192)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1747, file: !54, line: 67, baseType: !141, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1747, file: !54, line: 68, baseType: !478, size: 32, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1738, file: !54, line: 112, baseType: !1752, size: 448)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1752, file: !54, line: 93, baseType: !66, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1752, file: !54, line: 94, baseType: !1741, size: 320, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1752, file: !54, line: 95, baseType: !1757, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1734, file: !54, line: 114, baseType: !1366, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1688, file: !54, line: 123, baseType: !1733, size: 64, offset: 2304)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1688, file: !54, line: 124, baseType: !1733, size: 64, offset: 2368)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1362, file: !26, line: 727, baseType: !1762, size: 64, offset: 4224)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1771, !1772, !1773}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1763, file: !38, line: 743, baseType: !1396, size: 1472)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1763, file: !38, line: 744, baseType: !1399, size: 64, offset: 1472)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1763, file: !38, line: 745, baseType: !1768, size: 64, offset: 1536)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1366, !598}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1763, file: !38, line: 746, baseType: !1399, size: 64, offset: 1600)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1763, file: !38, line: 747, baseType: !1390, size: 64, offset: 1664)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1763, file: !38, line: 748, baseType: !1390, size: 64, offset: 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1362, file: !26, line: 736, baseType: !1775, size: 128, offset: 4288)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1776)
!1776 = !{!1777, !1781}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1775, file: !26, line: 531, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1780, line: 13, flags: DIFlagFwdDecl)
!1780 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1775, file: !26, line: 532, baseType: !1782, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1362, file: !26, line: 738, baseType: !1785, size: 64, offset: 4416)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1362, file: !26, line: 740, baseType: !1789, size: 64, offset: 4480)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1362, file: !26, line: 741, baseType: !405, size: 64, offset: 4544)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1362, file: !26, line: 746, baseType: !405, size: 64, offset: 4608)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1362, file: !26, line: 747, baseType: !1793, size: 64, offset: 4672)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1795)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1362, file: !26, line: 749, baseType: !1797, size: 64, offset: 4736)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1798, file: !26, line: 433, baseType: !7, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1798, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1798, file: !26, line: 435, baseType: !291, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1362, file: !26, line: 751, baseType: !141, size: 128, offset: 4800)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1362, file: !26, line: 762, baseType: !1805, size: 64, offset: 4928)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1362, file: !26, line: 770, baseType: !1808, offset: 4992)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1809, line: 5, elements: !378)
!1809 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1362, file: !26, line: 772, baseType: !1811, size: 64, offset: 4992)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1813, line: 48, size: 1152, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1814 = !{!1815, !1816, !1818, !1819, !1922, !1930, !1931, !1932, !1933, !1934, !1935}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1813, line: 49, baseType: !160, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1812, file: !1813, line: 50, baseType: !1817, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1813, line: 25, baseType: !1082)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1812, file: !1813, line: 51, baseType: !160, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1812, file: !1813, line: 52, baseType: !1820, size: 512, offset: 192)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1821, line: 41, size: 512, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1822 = !{!1823, !1825, !1918, !1919, !1920, !1921}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1820, file: !1821, line: 42, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1820, file: !1821, line: 43, baseType: !1826, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1821, line: 125, size: 1408, elements: !1829)
!1829 = !{!1830, !1834, !1838, !1844, !1848, !1849, !1853, !1857, !1861, !1865, !1869, !1870, !1874, !1878, !1882, !1893, !1894, !1895, !1896, !1906, !1910, !1914}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1828, file: !1821, line: 126, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!1824, !1824}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1828, file: !1821, line: 127, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1824}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1828, file: !1821, line: 128, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!598, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1828, file: !1821, line: 129, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!520, !1842, !1382}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1828, file: !1821, line: 131, baseType: !1839, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1828, file: !1821, line: 133, baseType: !1850, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!70, !1842}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1828, file: !1821, line: 134, baseType: !1854, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!598, !1842, !160}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1828, file: !1821, line: 136, baseType: !1858, size: 64, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!46, !1842, !160, !7, !313, !288}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1828, file: !1821, line: 141, baseType: !1862, size: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!46, !1842, !160, !1149, !288}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1828, file: !1821, line: 144, baseType: !1866, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!160, !1842}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1828, file: !1821, line: 145, baseType: !1866, size: 64, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1828, file: !1821, line: 146, baseType: !1871, size: 64, offset: 704)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1824, !1842}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1828, file: !1821, line: 148, baseType: !1875, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1824, !1842, !1824}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1828, file: !1821, line: 151, baseType: !1879, size: 64, offset: 832)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1824, !1842, !160}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1828, file: !1821, line: 153, baseType: !1883, size: 64, offset: 896)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!46, !1842, !160, !160, !7, !7, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1821, line: 94, size: 640, elements: !1888)
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1887, file: !1821, line: 95, baseType: !1824, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1887, file: !1821, line: 96, baseType: !7, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1887, file: !1821, line: 97, baseType: !1892, size: 512, offset: 128)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 512, elements: !1232)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1828, file: !1821, line: 158, baseType: !1875, size: 64, offset: 960)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1828, file: !1821, line: 161, baseType: !1871, size: 64, offset: 1024)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1828, file: !1821, line: 163, baseType: !1831, size: 64, offset: 1088)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1828, file: !1821, line: 164, baseType: !1897, size: 64, offset: 1152)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!46, !1842, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1821, line: 73, size: 128, elements: !1902)
!1902 = !{!1903, !1904, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1901, file: !1821, line: 74, baseType: !7, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1901, file: !1821, line: 75, baseType: !7, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1901, file: !1821, line: 76, baseType: !1842, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1828, file: !1821, line: 166, baseType: !1907, size: 64, offset: 1216)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!313, !1824, !46}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1828, file: !1821, line: 167, baseType: !1911, size: 64, offset: 1280)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!46, !1842, !7}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1828, file: !1821, line: 168, baseType: !1915, size: 64, offset: 1344)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!46, !1824}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1820, file: !1821, line: 44, baseType: !1366, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1820, file: !1821, line: 45, baseType: !141, size: 128, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1820, file: !1821, line: 46, baseType: !141, size: 128, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !1821, line: 47, baseType: !199, size: 8, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1812, file: !1813, line: 54, baseType: !1923, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1813, line: 28, size: 256, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1924, file: !1813, line: 29, baseType: !241, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1924, file: !1813, line: 30, baseType: !46, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1924, file: !1813, line: 31, baseType: !313, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1924, file: !1813, line: 32, baseType: !1923, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1812, file: !1813, line: 55, baseType: !1923, size: 64, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1812, file: !1813, line: 56, baseType: !1811, size: 64, offset: 832)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1812, file: !1813, line: 57, baseType: !1811, size: 64, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1812, file: !1813, line: 58, baseType: !1811, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1812, file: !1813, line: 62, baseType: !291, size: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1812, file: !1813, line: 63, baseType: !313, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1362, file: !26, line: 773, baseType: !1824, size: 64, offset: 5056)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1362, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1362, file: !26, line: 778, baseType: !1939, size: 32, offset: 5152)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !142, line: 21, baseType: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !142, line: 18, baseType: !1082)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1362, file: !26, line: 779, baseType: !1082, size: 32, offset: 5184)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1362, file: !26, line: 781, baseType: !171, size: 32, offset: 5216)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1362, file: !26, line: 782, baseType: !141, size: 128, offset: 5248)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1362, file: !26, line: 784, baseType: !1945, size: 64, offset: 5376)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1948, line: 52, size: 768, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1958, !1962, !1963, !1964, !1965, !1969, !1973}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1947, file: !1948, line: 53, baseType: !160, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1947, file: !1948, line: 55, baseType: !293, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1947, file: !1948, line: 56, baseType: !293, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1947, file: !1948, line: 58, baseType: !1379, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1947, file: !1948, line: 59, baseType: !1955, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!241, !1382, !1388}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1947, file: !1948, line: 61, baseType: !1959, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1945}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1947, file: !1948, line: 62, baseType: !1390, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1947, file: !1948, line: 64, baseType: !1399, size: 64, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1947, file: !1948, line: 66, baseType: !637, size: 64, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1947, file: !1948, line: 67, baseType: !1966, size: 64, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!520, !1382}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1947, file: !1948, line: 69, baseType: !1970, size: 64, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1382, !672, !679}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1947, file: !1948, line: 71, baseType: !1394, size: 64, offset: 704)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1362, file: !26, line: 785, baseType: !293, size: 64, offset: 5440)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1362, file: !26, line: 787, baseType: !1390, size: 64, offset: 5504)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1362, file: !26, line: 788, baseType: !1977, size: 64, offset: 5568)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1362, file: !26, line: 789, baseType: !1980, size: 64, offset: 5632)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1362, file: !26, line: 791, baseType: !1983, size: 64, offset: 5696)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1984, file: !26, line: 598, baseType: !76, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1984, file: !26, line: 599, baseType: !85, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1984, file: !26, line: 600, baseType: !90, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1984, file: !26, line: 601, baseType: !598, size: 8, offset: 96)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1984, file: !26, line: 602, baseType: !598, size: 8, offset: 104)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1362, file: !26, line: 793, baseType: !95, size: 32, offset: 5760)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1362, file: !26, line: 795, baseType: !598, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1362, file: !26, line: 796, baseType: !598, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1362, file: !26, line: 797, baseType: !598, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1362, file: !26, line: 798, baseType: !598, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1362, file: !26, line: 799, baseType: !598, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1355, file: !1356, line: 103, baseType: !1811, size: 64, offset: 6016)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !1355, file: !1356, line: 104, baseType: !313, size: 64, offset: 6080)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1355, file: !1356, line: 105, baseType: !313, size: 64, offset: 6144)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1355, file: !1356, line: 106, baseType: !2001, size: 64, offset: 6208)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !1356, line: 89, size: 384, elements: !2004)
!2004 = !{!2005, !2009, !2010, !2014, !2019, !2023}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2003, file: !1356, line: 90, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!46, !1354, !1163}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2003, file: !1356, line: 91, baseType: !2006, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2003, file: !1356, line: 92, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!46, !1354, !291}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2003, file: !1356, line: 93, baseType: !2015, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!46, !1354, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2003, file: !1356, line: 94, baseType: !2020, size: 64, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!46, !1354, !291, !2018}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2003, file: !1356, line: 95, baseType: !2024, size: 64, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!46, !1354, !1082, !1163}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !1355, file: !1356, line: 107, baseType: !598, size: 8, offset: 6272)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !1356, line: 108, baseType: !499, size: 256, offset: 6336)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !1355, file: !1356, line: 109, baseType: !141, size: 128, offset: 6592)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1355, file: !1356, line: 110, baseType: !141, size: 128, offset: 6720)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1182, file: !1183, line: 239, baseType: !1366, size: 64, offset: 6976)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !1182, file: !1183, line: 240, baseType: !1752, size: 448, offset: 7040)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !1182, file: !1183, line: 241, baseType: !1752, size: 448, offset: 7488)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1187, line: 421, baseType: !1082)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !1187, line: 127, baseType: !405)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !142, line: 154, baseType: !7)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !1187, line: 908, size: 192, elements: !2041)
!2041 = !{!2042, !2044, !2049, !2055, !2062, !2068, !2074, !2082}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2040, file: !1187, line: 909, baseType: !2043, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !1187, line: 644, baseType: !1082)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2040, file: !1187, line: 913, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1187, line: 910, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2045, file: !1187, line: 911, baseType: !2043, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2045, file: !1187, line: 912, baseType: !405, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2040, file: !1187, line: 919, baseType: !2050, size: 128)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1187, line: 915, size: 128, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2050, file: !1187, line: 916, baseType: !2043, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2050, file: !1187, line: 917, baseType: !1082, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2050, file: !1187, line: 918, baseType: !241, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2040, file: !1187, line: 925, baseType: !2056, size: 128)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1187, line: 921, size: 128, elements: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2056, file: !1187, line: 922, baseType: !2043, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2056, file: !1187, line: 923, baseType: !1082, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2056, file: !1187, line: 924, baseType: !2061, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2040, file: !1187, line: 931, baseType: !2063, size: 128)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1187, line: 927, size: 128, elements: !2064)
!2064 = !{!2065, !2066, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2063, file: !1187, line: 928, baseType: !2043, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2063, file: !1187, line: 929, baseType: !1082, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2063, file: !1187, line: 930, baseType: !2039, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2040, file: !1187, line: 937, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1187, line: 933, size: 128, elements: !2070)
!2070 = !{!2071, !2072, !2073}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2069, file: !1187, line: 934, baseType: !2043, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2069, file: !1187, line: 935, baseType: !2043, size: 32, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2069, file: !1187, line: 936, baseType: !1186, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2040, file: !1187, line: 944, baseType: !2075, size: 192)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1187, line: 939, size: 192, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2081}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2075, file: !1187, line: 940, baseType: !2043, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2075, file: !1187, line: 941, baseType: !1082, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2075, file: !1187, line: 942, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1187, line: 128, baseType: !405)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2075, file: !1187, line: 943, baseType: !1082, size: 32, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2040, file: !1187, line: 950, baseType: !2083, size: 96)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1187, line: 946, size: 96, elements: !2084)
!2084 = !{!2085, !2086, !2087}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2083, file: !1187, line: 947, baseType: !2043, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2083, file: !1187, line: 948, baseType: !1082, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2083, file: !1187, line: 949, baseType: !1082, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !149)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !277)
!2092 = !{!2093, !2095, !2100, !2105, !2107, !2112, !2117, !2119, !2124, !2126, !2131, !2138, !2140, !2145, !2147, !2152, !2155, !2160, !2165, !2167, !2169, !2171, !2173, !2175, !0, !2177, !2179, !2181, !2186, !2188, !2193, !2198, !2201, !2203, !2205, !2208, !2213, !2218, !2223, !2228}
!2093 = !DIGlobalVariableExpression(var: !2094, expr: !DIExpression())
!2094 = distinct !DIGlobalVariable(name: "__param_ignore_ppc", scope: !2, file: !3, line: 46, type: !889, isLocal: true, isDefinition: true, align: 64)
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ignore_ppctype224", scope: !2, file: !3, line: 46, type: !2097, isLocal: true, isDefinition: true, align: 8)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 272, elements: !2098)
!2098 = !{!2099}
!2099 = !DISubrange(count: 34)
!2100 = !DIGlobalVariableExpression(var: !2101, expr: !DIExpression())
!2101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ignore_ppc225", scope: !2, file: !3, line: 47, type: !2102, isLocal: true, isDefinition: true, align: 8)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 840, elements: !2103)
!2103 = !{!2104}
!2104 = !DISubrange(count: 105)
!2105 = !DIGlobalVariableExpression(var: !2106, expr: !DIExpression())
!2106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_get_bios_limit226", scope: !2, file: !3, line: 165, type: !313, isLocal: true, isDefinition: true)
!2107 = !DIGlobalVariableExpression(var: !2108, expr: !DIExpression())
!2108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !2109, isLocal: true, isDefinition: true)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 432, elements: !2110)
!2110 = !{!2111}
!2111 = !DISubrange(count: 54)
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 418, type: !2114, isLocal: true, isDefinition: true)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 40, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 5)
!2117 = !DIGlobalVariableExpression(var: !2118, expr: !DIExpression())
!2118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 444, type: !2114, isLocal: true, isDefinition: true)
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 446, type: !2121, isLocal: true, isDefinition: true)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 552, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 69)
!2124 = !DIGlobalVariableExpression(var: !2125, expr: !DIExpression())
!2125 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_get_performance_info227", scope: !2, file: !3, line: 452, type: !313, isLocal: true, isDefinition: true)
!2126 = !DIGlobalVariableExpression(var: !2127, expr: !DIExpression())
!2127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !2128, isLocal: true, isDefinition: true)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 584, elements: !2129)
!2129 = !{!2130}
!2130 = !DISubrange(count: 73)
!2131 = !DIGlobalVariableExpression(var: !2132, expr: !DIExpression())
!2132 = distinct !DIGlobalVariable(name: "is_done", scope: !2133, file: !3, line: 477, type: !46, isLocal: true, isDefinition: true)
!2133 = distinct !DISubprogram(name: "acpi_processor_notify_smm", scope: !3, file: !3, line: 475, type: !853, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2134 = !{!2135, !2136, !2137}
!2135 = !DILocalVariable(name: "calling_module", arg: 1, scope: !2133, file: !3, line: 475, type: !136)
!2136 = !DILocalVariable(name: "result", scope: !2133, file: !3, line: 478, type: !46)
!2137 = !DILabel(scope: !2133, name: "out_put", file: !3, line: 517)
!2138 = !DIGlobalVariableExpression(var: !2139, expr: !DIExpression())
!2139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_notify_smm228", scope: !2, file: !3, line: 521, type: !313, isLocal: true, isDefinition: true)
!2140 = !DIGlobalVariableExpression(var: !2141, expr: !DIExpression())
!2141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 528, type: !2142, isLocal: true, isDefinition: true)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 48, elements: !2143)
!2143 = !{!2144}
!2144 = !DISubrange(count: 6)
!2145 = !DIGlobalVariableExpression(var: !2146, expr: !DIExpression())
!2146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !2114, isLocal: true, isDefinition: true)
!2147 = !DIGlobalVariableExpression(var: !2148, expr: !DIExpression())
!2148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 539, type: !2149, isLocal: true, isDefinition: true)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 216, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 27)
!2152 = !DIGlobalVariableExpression(var: !2153, expr: !DIExpression())
!2153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !2154, isLocal: true, isDefinition: true)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 272, elements: !2098)
!2155 = !DIGlobalVariableExpression(var: !2156, expr: !DIExpression())
!2156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !2157, isLocal: true, isDefinition: true)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 248, elements: !2158)
!2158 = !{!2159}
!2159 = !DISubrange(count: 31)
!2160 = !DIGlobalVariableExpression(var: !2161, expr: !DIExpression())
!2161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 575, type: !2162, isLocal: true, isDefinition: true)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 264, elements: !2163)
!2163 = !{!2164}
!2164 = !DISubrange(count: 33)
!2165 = !DIGlobalVariableExpression(var: !2166, expr: !DIExpression())
!2166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_get_psd229", scope: !2, file: !3, line: 583, type: !313, isLocal: true, isDefinition: true)
!2167 = !DIGlobalVariableExpression(var: !2168, expr: !DIExpression())
!2168 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_preregister_performance230", scope: !2, file: !3, line: 734, type: !313, isLocal: true, isDefinition: true)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 757, type: !2162, isLocal: true, isDefinition: true)
!2171 = !DIGlobalVariableExpression(var: !2172, expr: !DIExpression())
!2172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_register_performance231", scope: !2, file: !3, line: 770, type: !313, isLocal: true, isDefinition: true)
!2173 = !DIGlobalVariableExpression(var: !2174, expr: !DIExpression())
!2174 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_unregister_performance232", scope: !2, file: !3, line: 790, type: !313, isLocal: true, isDefinition: true)
!2175 = !DIGlobalVariableExpression(var: !2176, expr: !DIExpression())
!2176 = distinct !DIGlobalVariable(name: "acpi_processor_ppc_in_use", scope: !2, file: !3, line: 50, type: !598, isLocal: true, isDefinition: true)
!2177 = !DIGlobalVariableExpression(var: !2178, expr: !DIExpression())
!2178 = distinct !DIGlobalVariable(name: "ignore_ppc", scope: !2, file: !3, line: 45, type: !46, isLocal: true, isDefinition: true)
!2179 = !DIGlobalVariableExpression(var: !2180, expr: !DIExpression())
!2180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !2114, isLocal: true, isDefinition: true)
!2181 = !DIGlobalVariableExpression(var: !2182, expr: !DIExpression())
!2182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !2183, isLocal: true, isDefinition: true)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 496, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 62)
!2186 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression())
!2187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !2149, isLocal: true, isDefinition: true)
!2188 = !DIGlobalVariableExpression(var: !2189, expr: !DIExpression())
!2189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !2190, isLocal: true, isDefinition: true)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 368, elements: !2191)
!2191 = !{!2192}
!2192 = !DISubrange(count: 46)
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 256, type: !2195, isLocal: true, isDefinition: true)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 360, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 45)
!2198 = !DIGlobalVariableExpression(var: !2199, expr: !DIExpression())
!2199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 310, type: !2200, isLocal: true, isDefinition: true)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 56, elements: !956)
!2201 = !DIGlobalVariableExpression(var: !2202, expr: !DIExpression())
!2202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !2114, isLocal: true, isDefinition: true)
!2203 = !DIGlobalVariableExpression(var: !2204, expr: !DIExpression())
!2204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !2149, isLocal: true, isDefinition: true)
!2205 = !DIGlobalVariableExpression(var: !2206, expr: !DIExpression())
!2206 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !2207, isLocal: true, isDefinition: true)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 24, elements: !242)
!2208 = !DIGlobalVariableExpression(var: !2209, expr: !DIExpression())
!2209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !2210, isLocal: true, isDefinition: true)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 184, elements: !2211)
!2211 = !{!2212}
!2212 = !DISubrange(count: 23)
!2213 = !DIGlobalVariableExpression(var: !2214, expr: !DIExpression())
!2214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !2215, isLocal: true, isDefinition: true)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 704, elements: !2216)
!2216 = !{!2217}
!2217 = !DISubrange(count: 88)
!2218 = !DIGlobalVariableExpression(var: !2219, expr: !DIExpression())
!2219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 395, type: !2220, isLocal: true, isDefinition: true)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 616, elements: !2221)
!2221 = !{!2222}
!2222 = !DISubrange(count: 77)
!2223 = !DIGlobalVariableExpression(var: !2224, expr: !DIExpression())
!2224 = distinct !DIGlobalVariable(scope: null, file: !126, line: 480, type: !2225, isLocal: true, isDefinition: true)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 168, elements: !2226)
!2226 = !{!2227}
!2227 = !DISubrange(count: 21)
!2228 = !DIGlobalVariableExpression(var: !2229, expr: !DIExpression())
!2229 = distinct !DIGlobalVariable(name: "performance_mutex", scope: !2, file: !3, line: 27, type: !499, isLocal: true, isDefinition: true)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 168, elements: !2226)
!2231 = !{i32 7, !"Dwarf Version", i32 5}
!2232 = !{i32 2, !"Debug Info Version", i32 3}
!2233 = !{i32 1, !"wchar_size", i32 2}
!2234 = !{i32 8, !"cf-protection-branch", i32 1}
!2235 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2236 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2237 = !{i32 1, !"Code Model", i32 2}
!2238 = !{i32 1, !"override-stack-alignment", i32 8}
!2239 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2240 = distinct !DISubprogram(name: "acpi_processor_ppc_has_changed", scope: !3, file: !3, line: 124, type: !2241, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !1181, !46}
!2243 = !{!2244, !2245, !2246}
!2244 = !DILocalVariable(name: "pr", arg: 1, scope: !2240, file: !3, line: 124, type: !1181)
!2245 = !DILocalVariable(name: "event_flag", arg: 2, scope: !2240, file: !3, line: 124, type: !46)
!2246 = !DILocalVariable(name: "ret", scope: !2240, file: !3, line: 126, type: !46)
!2247 = !DILocation(line: 124, column: 60, scope: !2240)
!2248 = !DILocation(line: 124, column: 68, scope: !2240)
!2249 = !DILocation(line: 126, column: 2, scope: !2240)
!2250 = !DILocation(line: 126, column: 6, scope: !2240)
!2251 = !DILocation(line: 128, column: 6, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 128, column: 6)
!2253 = !DILocation(line: 128, column: 17, scope: !2252)
!2254 = !DILocation(line: 128, column: 21, scope: !2252)
!2255 = !DILocation(line: 128, column: 25, scope: !2252)
!2256 = !DILocation(line: 128, column: 6, scope: !2240)
!2257 = !DILocation(line: 133, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 133, column: 7)
!2259 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 128, column: 38)
!2260 = !DILocation(line: 133, column: 7, scope: !2259)
!2261 = !DILocation(line: 134, column: 27, scope: !2258)
!2262 = !DILocation(line: 134, column: 31, scope: !2258)
!2263 = !DILocation(line: 134, column: 4, scope: !2258)
!2264 = !DILocation(line: 135, column: 3, scope: !2259)
!2265 = !DILocation(line: 138, column: 42, scope: !2240)
!2266 = !DILocation(line: 138, column: 8, scope: !2240)
!2267 = !DILocation(line: 138, column: 6, scope: !2240)
!2268 = !DILocation(line: 143, column: 6, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 143, column: 6)
!2270 = !DILocation(line: 143, column: 6, scope: !2240)
!2271 = !DILocation(line: 144, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 144, column: 7)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 143, column: 18)
!2274 = !DILocation(line: 144, column: 11, scope: !2272)
!2275 = !DILocation(line: 144, column: 7, scope: !2273)
!2276 = !DILocation(line: 145, column: 27, scope: !2272)
!2277 = !DILocation(line: 145, column: 31, scope: !2272)
!2278 = !DILocation(line: 145, column: 4, scope: !2272)
!2279 = !DILocation(line: 147, column: 27, scope: !2272)
!2280 = !DILocation(line: 147, column: 31, scope: !2272)
!2281 = !DILocation(line: 147, column: 4, scope: !2272)
!2282 = !DILocation(line: 148, column: 2, scope: !2273)
!2283 = !DILocation(line: 149, column: 6, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 149, column: 6)
!2285 = !DILocation(line: 149, column: 10, scope: !2284)
!2286 = !DILocation(line: 149, column: 6, scope: !2240)
!2287 = !DILocation(line: 150, column: 25, scope: !2284)
!2288 = !DILocation(line: 150, column: 29, scope: !2284)
!2289 = !DILocation(line: 150, column: 3, scope: !2284)
!2290 = !DILocation(line: 151, column: 1, scope: !2240)
!2291 = distinct !DISubprogram(name: "acpi_processor_ppc_ost", scope: !3, file: !3, line: 117, type: !2292, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !1186, !46}
!2294 = !{!2295, !2296}
!2295 = !DILocalVariable(name: "handle", arg: 1, scope: !2291, file: !3, line: 117, type: !1186)
!2296 = !DILocalVariable(name: "status", arg: 2, scope: !2291, file: !3, line: 117, type: !46)
!2297 = !DILocation(line: 117, column: 48, scope: !2291)
!2298 = !DILocation(line: 117, column: 60, scope: !2291)
!2299 = !DILocation(line: 119, column: 22, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 119, column: 6)
!2301 = !DILocation(line: 119, column: 6, scope: !2300)
!2302 = !DILocation(line: 119, column: 6, scope: !2291)
!2303 = !DILocation(line: 120, column: 21, scope: !2300)
!2304 = !DILocation(line: 121, column: 7, scope: !2300)
!2305 = !DILocation(line: 120, column: 3, scope: !2300)
!2306 = !DILocation(line: 122, column: 1, scope: !2291)
!2307 = distinct !DISubprogram(name: "acpi_processor_get_platform_limit", scope: !3, file: !3, line: 52, type: !1324, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314}
!2309 = !DILocalVariable(name: "pr", arg: 1, scope: !2307, file: !3, line: 52, type: !1181)
!2310 = !DILocalVariable(name: "status", scope: !2307, file: !3, line: 54, type: !2034)
!2311 = !DILocalVariable(name: "ppc", scope: !2307, file: !3, line: 55, type: !407)
!2312 = !DILocalVariable(name: "qos_value", scope: !2307, file: !3, line: 56, type: !478)
!2313 = !DILocalVariable(name: "index", scope: !2307, file: !3, line: 57, type: !46)
!2314 = !DILocalVariable(name: "ret", scope: !2307, file: !3, line: 58, type: !46)
!2315 = !DILocation(line: 52, column: 69, scope: !2307)
!2316 = !DILocation(line: 54, column: 2, scope: !2307)
!2317 = !DILocation(line: 54, column: 14, scope: !2307)
!2318 = !DILocation(line: 55, column: 2, scope: !2307)
!2319 = !DILocation(line: 55, column: 21, scope: !2307)
!2320 = !DILocation(line: 56, column: 2, scope: !2307)
!2321 = !DILocation(line: 56, column: 6, scope: !2307)
!2322 = !DILocation(line: 57, column: 2, scope: !2307)
!2323 = !DILocation(line: 57, column: 6, scope: !2307)
!2324 = !DILocation(line: 58, column: 2, scope: !2307)
!2325 = !DILocation(line: 58, column: 6, scope: !2307)
!2326 = !DILocation(line: 60, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 60, column: 6)
!2328 = !DILocation(line: 60, column: 6, scope: !2307)
!2329 = !DILocation(line: 61, column: 3, scope: !2327)
!2330 = !DILocation(line: 67, column: 33, scope: !2307)
!2331 = !DILocation(line: 67, column: 37, scope: !2307)
!2332 = !DILocation(line: 67, column: 11, scope: !2307)
!2333 = !DILocation(line: 67, column: 9, scope: !2307)
!2334 = !DILocation(line: 68, column: 6, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 68, column: 6)
!2336 = !DILocation(line: 68, column: 13, scope: !2335)
!2337 = !DILocation(line: 68, column: 6, scope: !2307)
!2338 = !DILocation(line: 69, column: 29, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 68, column: 30)
!2340 = !DILocation(line: 71, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 71, column: 7)
!2342 = !DILocation(line: 71, column: 7, scope: !2339)
!2343 = !DILocation(line: 72, column: 33, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 71, column: 29)
!2345 = !DILocation(line: 72, column: 37, scope: !2344)
!2346 = !DILocation(line: 72, column: 53, scope: !2344)
!2347 = !DILocation(line: 72, column: 4, scope: !2344)
!2348 = !DILocation(line: 73, column: 4, scope: !2344)
!2349 = !DILocation(line: 75, column: 2, scope: !2339)
!2350 = !DILocation(line: 77, column: 10, scope: !2307)
!2351 = !DILocation(line: 77, column: 8, scope: !2307)
!2352 = !DILocation(line: 79, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 79, column: 6)
!2354 = !DILocation(line: 79, column: 10, scope: !2353)
!2355 = !DILocation(line: 79, column: 40, scope: !2353)
!2356 = !DILocation(line: 79, column: 37, scope: !2353)
!2357 = !DILocation(line: 79, column: 46, scope: !2353)
!2358 = !DILocation(line: 80, column: 6, scope: !2353)
!2359 = !DILocation(line: 80, column: 13, scope: !2353)
!2360 = !DILocation(line: 80, column: 17, scope: !2353)
!2361 = !DILocation(line: 80, column: 30, scope: !2353)
!2362 = !DILocation(line: 80, column: 10, scope: !2353)
!2363 = !DILocation(line: 79, column: 6, scope: !2307)
!2364 = !DILocation(line: 81, column: 3, scope: !2353)
!2365 = !DILocation(line: 83, column: 2, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 83, column: 2)
!2367 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 83, column: 2)
!2368 = !DILocation(line: 83, column: 2, scope: !2367)
!2369 = !DILocation(line: 86, column: 35, scope: !2307)
!2370 = !DILocation(line: 86, column: 2, scope: !2307)
!2371 = !DILocation(line: 86, column: 6, scope: !2307)
!2372 = !DILocation(line: 86, column: 33, scope: !2307)
!2373 = !DILocation(line: 88, column: 6, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 88, column: 6)
!2375 = !DILocation(line: 88, column: 6, scope: !2307)
!2376 = !DILocation(line: 89, column: 3, scope: !2374)
!2377 = !DILocation(line: 95, column: 6, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 95, column: 6)
!2379 = !DILocation(line: 95, column: 12, scope: !2378)
!2380 = !DILocation(line: 95, column: 6, scope: !2307)
!2381 = !DILocation(line: 96, column: 13, scope: !2378)
!2382 = !DILocation(line: 96, column: 3, scope: !2378)
!2383 = !DILocation(line: 98, column: 15, scope: !2378)
!2384 = !DILocation(line: 98, column: 19, scope: !2378)
!2385 = !DILocation(line: 98, column: 32, scope: !2378)
!2386 = !DILocation(line: 98, column: 39, scope: !2378)
!2387 = !DILocation(line: 98, column: 46, scope: !2378)
!2388 = !DILocation(line: 98, column: 61, scope: !2378)
!2389 = !DILocation(line: 98, column: 13, scope: !2378)
!2390 = !DILocation(line: 100, column: 33, scope: !2307)
!2391 = !DILocation(line: 100, column: 37, scope: !2307)
!2392 = !DILocation(line: 100, column: 50, scope: !2307)
!2393 = !DILocation(line: 100, column: 8, scope: !2307)
!2394 = !DILocation(line: 100, column: 6, scope: !2307)
!2395 = !DILocation(line: 101, column: 6, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 101, column: 6)
!2397 = !DILocation(line: 101, column: 10, scope: !2396)
!2398 = !DILocation(line: 101, column: 6, scope: !2307)
!2399 = !DILocation(line: 102, column: 3, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 102, column: 3)
!2401 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 101, column: 15)
!2402 = !DILocation(line: 102, column: 3, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 102, column: 3)
!2404 = !DILocation(line: 104, column: 2, scope: !2401)
!2405 = !DILocation(line: 106, column: 2, scope: !2307)
!2406 = !DILocation(line: 107, column: 1, scope: !2307)
!2407 = !DISubprogram(name: "cpufreq_update_limits", scope: !102, file: !102, line: 237, type: !2408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !7}
!2410 = distinct !DISubprogram(name: "acpi_processor_get_bios_limit", scope: !3, file: !3, line: 153, type: !2411, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!46, !46, !921}
!2413 = !{!2414, !2415, !2416, !2417, !2420}
!2414 = !DILocalVariable(name: "cpu", arg: 1, scope: !2410, file: !3, line: 153, type: !46)
!2415 = !DILocalVariable(name: "limit", arg: 2, scope: !2410, file: !3, line: 153, type: !921)
!2416 = !DILocalVariable(name: "pr", scope: !2410, file: !3, line: 155, type: !1181)
!2417 = !DILocalVariable(name: "__vpp_verify", scope: !2418, file: !3, line: 157, type: !520)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 157, column: 7)
!2419 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 157, column: 7)
!2420 = !DILocalVariable(name: "__ptr", scope: !2421, file: !3, line: 157, type: !291)
!2421 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 157, column: 7)
!2422 = !DILocation(line: 153, column: 39, scope: !2410)
!2423 = !DILocation(line: 153, column: 58, scope: !2410)
!2424 = !DILocation(line: 155, column: 2, scope: !2410)
!2425 = !DILocation(line: 155, column: 25, scope: !2410)
!2426 = !DILocation(line: 157, column: 7, scope: !2419)
!2427 = !DILocation(line: 157, column: 7, scope: !2418)
!2428 = !DILocation(line: 157, column: 7, scope: !2421)
!2429 = !DILocation(line: 157, column: 7, scope: !2410)
!2430 = !DILocation(line: 157, column: 5, scope: !2410)
!2431 = !DILocation(line: 158, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 158, column: 6)
!2433 = !DILocation(line: 158, column: 10, scope: !2432)
!2434 = !DILocation(line: 158, column: 14, scope: !2432)
!2435 = !DILocation(line: 158, column: 18, scope: !2432)
!2436 = !DILocation(line: 158, column: 30, scope: !2432)
!2437 = !DILocation(line: 158, column: 34, scope: !2432)
!2438 = !DILocation(line: 158, column: 38, scope: !2432)
!2439 = !DILocation(line: 158, column: 51, scope: !2432)
!2440 = !DILocation(line: 158, column: 6, scope: !2410)
!2441 = !DILocation(line: 159, column: 3, scope: !2432)
!2442 = !DILocation(line: 161, column: 11, scope: !2410)
!2443 = !DILocation(line: 161, column: 15, scope: !2410)
!2444 = !DILocation(line: 161, column: 28, scope: !2410)
!2445 = !DILocation(line: 161, column: 35, scope: !2410)
!2446 = !DILocation(line: 161, column: 39, scope: !2410)
!2447 = !DILocation(line: 162, column: 3, scope: !2410)
!2448 = !DILocation(line: 162, column: 18, scope: !2410)
!2449 = !DILocation(line: 161, column: 3, scope: !2410)
!2450 = !DILocation(line: 161, column: 9, scope: !2410)
!2451 = !DILocation(line: 163, column: 2, scope: !2410)
!2452 = !DILocation(line: 164, column: 1, scope: !2410)
!2453 = distinct !DISubprogram(name: "acpi_processor_ignore_ppc_init", scope: !3, file: !3, line: 167, type: !1177, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2454 = !DILocation(line: 169, column: 6, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 169, column: 6)
!2456 = !DILocation(line: 169, column: 17, scope: !2455)
!2457 = !DILocation(line: 169, column: 6, scope: !2453)
!2458 = !DILocation(line: 170, column: 14, scope: !2455)
!2459 = !DILocation(line: 170, column: 3, scope: !2455)
!2460 = !DILocation(line: 171, column: 1, scope: !2453)
!2461 = distinct !DISubprogram(name: "acpi_processor_ppc_init", scope: !3, file: !3, line: 173, type: !2462, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3610)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !102, line: 55, size: 5120, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2476, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2514, !2515, !2516, !2517, !2518, !2520, !2521, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !3603, !3606, !3607, !3608, !3609}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !2465, file: !102, line: 57, baseType: !1286, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !2465, file: !102, line: 58, baseType: !1286, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !2465, file: !102, line: 59, baseType: !1286, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2465, file: !102, line: 61, baseType: !7, size: 32, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2465, file: !102, line: 63, baseType: !7, size: 32, offset: 224)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2465, file: !102, line: 65, baseType: !2473, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2475, line: 17, flags: DIFlagFwdDecl)
!2475 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !2465, file: !102, line: 66, baseType: !2477, size: 96, offset: 320)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !102, line: 47, size: 96, elements: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2477, file: !102, line: 48, baseType: !7, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2477, file: !102, line: 49, baseType: !7, size: 32, offset: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2477, file: !102, line: 52, baseType: !7, size: 32, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2465, file: !102, line: 68, baseType: !7, size: 32, offset: 416)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2465, file: !102, line: 69, baseType: !7, size: 32, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2465, file: !102, line: 70, baseType: !7, size: 32, offset: 480)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !2465, file: !102, line: 72, baseType: !7, size: 32, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2465, file: !102, line: 74, baseType: !7, size: 32, offset: 544)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !2465, file: !102, line: 75, baseType: !7, size: 32, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2465, file: !102, line: 76, baseType: !2489, size: 64, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !102, line: 577, size: 832, elements: !2491)
!2491 = !{!2492, !2494, !2498, !2500, !2501, !2502, !2503, !2507, !2511, !2512, !2513}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2490, file: !102, line: 578, baseType: !2493, size: 128)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, elements: !1341)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2490, file: !102, line: 579, baseType: !2495, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!46, !2464}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2490, file: !102, line: 580, baseType: !2499, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2490, file: !102, line: 581, baseType: !2495, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2490, file: !102, line: 582, baseType: !2499, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2490, file: !102, line: 583, baseType: !2499, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !2490, file: !102, line: 584, baseType: !2504, size: 64, offset: 448)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!273, !2464, !241}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !2490, file: !102, line: 586, baseType: !2508, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!46, !2464, !7}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2490, file: !102, line: 588, baseType: !141, size: 128, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2490, file: !102, line: 589, baseType: !136, size: 64, offset: 704)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2490, file: !102, line: 590, baseType: !199, size: 8, offset: 768)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2465, file: !102, line: 77, baseType: !313, size: 64, offset: 704)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !2465, file: !102, line: 78, baseType: !2493, size: 128, offset: 768)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !2465, file: !102, line: 80, baseType: !563, size: 256, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !2465, file: !102, line: 83, baseType: !1721, size: 1408, offset: 1152)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !2465, file: !102, line: 84, baseType: !2519, size: 64, offset: 2560)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !2465, file: !102, line: 85, baseType: !2519, size: 64, offset: 2624)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !2465, file: !102, line: 87, baseType: !2522, size: 64, offset: 2688)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !102, line: 690, size: 96, elements: !2524)
!2524 = !{!2525, !2526, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2523, file: !102, line: 691, baseType: !7, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2523, file: !102, line: 692, baseType: !7, size: 32, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2523, file: !102, line: 693, baseType: !7, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !2465, file: !102, line: 88, baseType: !101, size: 32, offset: 2752)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !2465, file: !102, line: 90, baseType: !141, size: 128, offset: 2816)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2465, file: !102, line: 91, baseType: !156, size: 512, offset: 2944)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !2465, file: !102, line: 92, baseType: !823, size: 256, offset: 3456)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2465, file: !102, line: 102, baseType: !422, size: 320, offset: 3712)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !2465, file: !102, line: 112, baseType: !598, size: 8, offset: 4032)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !2465, file: !102, line: 113, baseType: !598, size: 8, offset: 4040)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !2465, file: !102, line: 119, baseType: !598, size: 8, offset: 4048)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !2465, file: !102, line: 126, baseType: !598, size: 8, offset: 4056)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !2465, file: !102, line: 133, baseType: !7, size: 32, offset: 4064)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !2465, file: !102, line: 142, baseType: !598, size: 8, offset: 4096)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !2465, file: !102, line: 145, baseType: !598, size: 8, offset: 4104)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !2465, file: !102, line: 148, baseType: !7, size: 32, offset: 4128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !2465, file: !102, line: 149, baseType: !7, size: 32, offset: 4160)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !2465, file: !102, line: 152, baseType: !598, size: 8, offset: 4192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !2465, file: !102, line: 153, baseType: !171, size: 32, offset: 4224)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !2465, file: !102, line: 154, baseType: !1645, size: 192, offset: 4288)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !2465, file: !102, line: 155, baseType: !2546, size: 64, offset: 4480)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !737, line: 746, size: 58368, elements: !2548)
!2548 = !{!2549, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2634, !2645, !2665, !2669, !2672, !2703, !2704, !2705, !2706, !2710, !2712, !2713, !2714, !2715, !2716, !2717, !2728, !2729, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2828, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2864, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2899, !2905, !2910, !2911, !2912, !2915, !2916, !2919, !2926, !2931, !2934, !2937, !2940, !2944, !2947, !2950, !2956, !2957, !2958, !2964, !2965, !2966, !2967, !2968, !2971, !2972, !2973, !2982, !2990, !2991, !2992, !2993, !2994, !2999, !3000, !3001, !3004, !3005, !3008, !3011, !3014, !3017, !3020, !3021, !3107, !3118, !3119, !3120, !3121, !3127, !3132, !3133, !3134, !3137, !3138, !3141, !3144, !3145, !3148, !3149, !3150, !3153, !3154, !3155, !3156, !3157, !3158, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3190, !3193, !3259, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3271, !3343, !3345, !3346, !3347, !3348, !3349, !3350, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3380, !3381, !3382}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2547, file: !737, line: 752, baseType: !2550, size: 192)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2551, line: 56, size: 192, elements: !2552)
!2551 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2552 = !{!2553, !2554, !2555, !2556}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2550, file: !2551, line: 57, baseType: !291, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2550, file: !2551, line: 58, baseType: !291, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2550, file: !2551, line: 59, baseType: !1082, size: 32, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2550, file: !2551, line: 61, baseType: !1082, size: 32, offset: 160)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2547, file: !737, line: 754, baseType: !7, size: 32, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2547, file: !737, line: 767, baseType: !313, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2547, file: !737, line: 768, baseType: !806, size: 32, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2547, file: !737, line: 770, baseType: !7, size: 32, offset: 352)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2547, file: !737, line: 771, baseType: !7, size: 32, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2547, file: !737, line: 774, baseType: !46, size: 32, offset: 416)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2547, file: !737, line: 775, baseType: !2564, size: 128, offset: 448)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2565, line: 58, size: 128, elements: !2566)
!2565 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2566 = !{!2567, !2573, !2578, !2579}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2564, file: !2565, line: 59, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2569, line: 60, size: 64, elements: !2570)
!2569 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2568, file: !2569, line: 61, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !2565, line: 60, baseType: !2574, size: 32, offset: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2564, file: !2565, line: 60, size: 32, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2574, file: !2565, line: 61, baseType: !7, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2574, file: !2565, line: 62, baseType: !191, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2564, file: !2565, line: 65, baseType: !209, size: 16, offset: 96)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2564, file: !2565, line: 65, baseType: !209, size: 16, offset: 112)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2547, file: !737, line: 776, baseType: !7, size: 32, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2547, file: !737, line: 777, baseType: !291, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2547, file: !737, line: 778, baseType: !2546, size: 64, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2547, file: !737, line: 787, baseType: !46, size: 32, offset: 768)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2547, file: !737, line: 788, baseType: !46, size: 32, offset: 800)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2547, file: !737, line: 790, baseType: !46, size: 32, offset: 832)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2547, file: !737, line: 792, baseType: !46, size: 32, offset: 864)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2547, file: !737, line: 793, baseType: !46, size: 32, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2547, file: !737, line: 794, baseType: !46, size: 32, offset: 928)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2547, file: !737, line: 795, baseType: !7, size: 32, offset: 960)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2547, file: !737, line: 797, baseType: !2591, size: 2048, offset: 1024)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !737, line: 551, size: 2048, elements: !2592)
!2592 = !{!2593, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2613, !2616, !2617, !2618}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2591, file: !737, line: 553, baseType: !2594, size: 128)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !737, line: 411, size: 128, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2594, file: !737, line: 412, baseType: !291, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2594, file: !737, line: 413, baseType: !1082, size: 32, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2591, file: !737, line: 554, baseType: !604, size: 192, align: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2591, file: !737, line: 555, baseType: !405, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2591, file: !737, line: 556, baseType: !405, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2591, file: !737, line: 558, baseType: !141, size: 128, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2591, file: !737, line: 559, baseType: !7, size: 32, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2591, file: !737, line: 561, baseType: !405, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2591, file: !737, line: 562, baseType: !405, size: 64, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2591, file: !737, line: 563, baseType: !405, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2591, file: !737, line: 564, baseType: !405, size: 64, offset: 832)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2591, file: !737, line: 565, baseType: !417, size: 64, offset: 896)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2591, file: !737, line: 566, baseType: !405, size: 64, offset: 960)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2591, file: !737, line: 568, baseType: !405, size: 64, offset: 1024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2591, file: !737, line: 571, baseType: !46, size: 32, offset: 1088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2591, file: !737, line: 572, baseType: !2612, size: 64, offset: 1152)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2591, file: !737, line: 574, baseType: !2614, size: 64, offset: 1216)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !737, line: 49, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2591, file: !737, line: 576, baseType: !2614, size: 64, offset: 1280)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2591, file: !737, line: 578, baseType: !291, size: 64, offset: 1344)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2591, file: !737, line: 588, baseType: !2619, size: 512, align: 512, offset: 1536)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !737, line: 497, size: 512, align: 512, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2619, file: !737, line: 498, baseType: !405, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2619, file: !737, line: 499, baseType: !405, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2619, file: !737, line: 500, baseType: !405, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2619, file: !737, line: 501, baseType: !1082, size: 32, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2619, file: !737, line: 502, baseType: !1082, size: 32, offset: 224)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2619, file: !737, line: 503, baseType: !291, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2619, file: !737, line: 504, baseType: !291, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2619, file: !737, line: 505, baseType: !291, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2619, file: !737, line: 506, baseType: !2630, size: 64, align: 64, offset: 448)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !737, line: 445, size: 64, align: 64, elements: !2631)
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2630, file: !737, line: 446, baseType: !7, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2630, file: !737, line: 447, baseType: !7, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2547, file: !737, line: 798, baseType: !2635, size: 384, offset: 3072)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !737, line: 592, size: 384, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2635, file: !737, line: 593, baseType: !141, size: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2635, file: !737, line: 594, baseType: !291, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2635, file: !737, line: 595, baseType: !291, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2635, file: !737, line: 596, baseType: !7, size: 32, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2635, file: !737, line: 597, baseType: !211, size: 16, offset: 288)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2635, file: !737, line: 598, baseType: !211, size: 16, offset: 304)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2635, file: !737, line: 600, baseType: !2644, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2547, file: !737, line: 799, baseType: !2646, size: 1792, offset: 3456)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !737, line: 610, size: 1792, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2646, file: !737, line: 611, baseType: !604, size: 192, align: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2646, file: !737, line: 618, baseType: !405, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2646, file: !737, line: 619, baseType: !405, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2646, file: !737, line: 620, baseType: !405, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2646, file: !737, line: 621, baseType: !405, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2646, file: !737, line: 622, baseType: !405, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2646, file: !737, line: 629, baseType: !417, size: 64, offset: 512)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2646, file: !737, line: 630, baseType: !405, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2646, file: !737, line: 631, baseType: !7, size: 32, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2646, file: !737, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2646, file: !737, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2646, file: !737, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2646, file: !737, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2646, file: !737, line: 662, baseType: !1574, size: 512, offset: 704)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2646, file: !737, line: 671, baseType: !1574, size: 512, offset: 1216)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2646, file: !737, line: 679, baseType: !2664, size: 64, offset: 1728)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2547, file: !737, line: 800, baseType: !2666, size: 64, offset: 5248)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2668)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !737, line: 800, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2547, file: !737, line: 809, baseType: !2670, size: 64, offset: 5312)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !737, line: 70, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2547, file: !737, line: 825, baseType: !2673, size: 2048, align: 512, offset: 5632)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !737, line: 509, size: 2048, align: 512, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2673, file: !737, line: 511, baseType: !405, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2673, file: !737, line: 512, baseType: !405, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2673, file: !737, line: 513, baseType: !405, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2673, file: !737, line: 514, baseType: !405, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2673, file: !737, line: 515, baseType: !405, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2673, file: !737, line: 516, baseType: !405, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2673, file: !737, line: 518, baseType: !405, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2673, file: !737, line: 519, baseType: !405, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2673, file: !737, line: 520, baseType: !417, size: 64, offset: 512)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2673, file: !737, line: 522, baseType: !405, size: 64, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2673, file: !737, line: 523, baseType: !405, size: 64, offset: 640)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2673, file: !737, line: 524, baseType: !417, size: 64, offset: 704)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2673, file: !737, line: 526, baseType: !417, size: 64, offset: 768)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2673, file: !737, line: 527, baseType: !405, size: 64, offset: 832)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2673, file: !737, line: 529, baseType: !405, size: 64, offset: 896)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2673, file: !737, line: 530, baseType: !405, size: 64, offset: 960)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2673, file: !737, line: 531, baseType: !405, size: 64, offset: 1024)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2673, file: !737, line: 532, baseType: !405, size: 64, offset: 1088)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2673, file: !737, line: 533, baseType: !405, size: 64, offset: 1152)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2673, file: !737, line: 535, baseType: !405, size: 64, offset: 1216)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2673, file: !737, line: 536, baseType: !405, size: 64, offset: 1280)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2673, file: !737, line: 537, baseType: !405, size: 64, offset: 1344)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2673, file: !737, line: 538, baseType: !405, size: 64, offset: 1408)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2673, file: !737, line: 539, baseType: !405, size: 64, offset: 1472)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2673, file: !737, line: 540, baseType: !405, size: 64, offset: 1536)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2673, file: !737, line: 541, baseType: !405, size: 64, offset: 1600)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2673, file: !737, line: 542, baseType: !405, size: 64, offset: 1664)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2673, file: !737, line: 543, baseType: !405, size: 64, offset: 1728)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2547, file: !737, line: 833, baseType: !7, size: 32, offset: 7680)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2547, file: !737, line: 836, baseType: !7, size: 32, offset: 7712)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2547, file: !737, line: 837, baseType: !46, size: 32, offset: 7744)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2547, file: !737, line: 838, baseType: !2707, size: 64, offset: 7808)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1287, line: 19, baseType: !1289)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2547, file: !737, line: 839, baseType: !2711, size: 64, offset: 7872)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2547, file: !737, line: 840, baseType: !2709, size: 64, offset: 7936)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2547, file: !737, line: 841, baseType: !313, size: 64, offset: 8000)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2547, file: !737, line: 843, baseType: !211, size: 16, offset: 8064)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2547, file: !737, line: 845, baseType: !211, size: 16, offset: 8080)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2547, file: !737, line: 848, baseType: !46, size: 32, offset: 8096)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2547, file: !737, line: 849, baseType: !2718, size: 32, offset: 8128)
!2718 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !737, line: 718, size: 32, elements: !2719)
!2719 = !{!2720, !2727}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2718, file: !737, line: 724, baseType: !2721, size: 32)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !737, line: 719, size: 32, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2726}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2721, file: !737, line: 720, baseType: !199, size: 8)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2721, file: !737, line: 721, baseType: !199, size: 8, offset: 8)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2721, file: !737, line: 722, baseType: !199, size: 8, offset: 16)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2721, file: !737, line: 723, baseType: !199, size: 8, offset: 24)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2718, file: !737, line: 725, baseType: !1082, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2547, file: !737, line: 850, baseType: !141, size: 128, offset: 8192)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2547, file: !737, line: 851, baseType: !2730, size: 64, offset: 8320)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !737, line: 60, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2547, file: !737, line: 855, baseType: !291, size: 64, offset: 8384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2547, file: !737, line: 856, baseType: !199, size: 8, offset: 8448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2547, file: !737, line: 857, baseType: !199, size: 8, offset: 8456)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2547, file: !737, line: 858, baseType: !46, size: 32, offset: 8480)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2547, file: !737, line: 859, baseType: !141, size: 128, offset: 8512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2547, file: !737, line: 860, baseType: !46, size: 32, offset: 8640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2547, file: !737, line: 861, baseType: !141, size: 128, offset: 8704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2547, file: !737, line: 873, baseType: !2740, size: 256, offset: 8832)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !737, line: 376, size: 256, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2740, file: !737, line: 381, baseType: !291, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2740, file: !737, line: 384, baseType: !407, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2740, file: !737, line: 389, baseType: !407, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2740, file: !737, line: 392, baseType: !407, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2547, file: !737, line: 875, baseType: !141, size: 128, offset: 9088)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2547, file: !737, line: 877, baseType: !1741, size: 320, offset: 9216)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2547, file: !737, line: 878, baseType: !604, size: 192, align: 64, offset: 9536)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2547, file: !737, line: 881, baseType: !357, size: 64, offset: 9728)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2547, file: !737, line: 882, baseType: !357, size: 64, offset: 9792)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2547, file: !737, line: 884, baseType: !46, size: 32, offset: 9856)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2547, file: !737, line: 885, baseType: !46, size: 32, offset: 9888)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2547, file: !737, line: 886, baseType: !46, size: 32, offset: 9920)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2547, file: !737, line: 888, baseType: !46, size: 32, offset: 9952)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2547, file: !737, line: 890, baseType: !291, size: 64, offset: 9984)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2547, file: !737, line: 893, baseType: !7, size: 32, offset: 10048)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2547, file: !737, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2547, file: !737, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2547, file: !737, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2547, file: !737, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2547, file: !737, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2547, file: !737, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2547, file: !737, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2547, file: !737, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2547, file: !737, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2547, file: !737, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2547, file: !737, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2547, file: !737, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2547, file: !737, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2547, file: !737, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2547, file: !737, line: 969, baseType: !291, size: 64, offset: 10176)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2547, file: !737, line: 971, baseType: !2773, size: 448, offset: 10240)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !108, line: 25, size: 448, elements: !2774)
!2774 = !{!2775, !2776, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2773, file: !108, line: 26, baseType: !291, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2773, file: !108, line: 27, baseType: !2777, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!277, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !108, line: 28, baseType: !2782, size: 320, offset: 128)
!2782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2773, file: !108, line: 28, size: 320, elements: !2783)
!2783 = !{!2784, !2793, !2818}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2782, file: !108, line: 37, baseType: !2785, size: 320)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !108, line: 30, size: 320, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790, !2791, !2792}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2785, file: !108, line: 31, baseType: !2018, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2785, file: !108, line: 32, baseType: !1082, size: 32, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2785, file: !108, line: 33, baseType: !1082, size: 32, offset: 96)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2785, file: !108, line: 34, baseType: !1082, size: 32, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2785, file: !108, line: 35, baseType: !405, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2785, file: !108, line: 36, baseType: !2018, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2782, file: !108, line: 47, baseType: !2794, size: 192)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !108, line: 39, size: 192, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2817}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2794, file: !108, line: 40, baseType: !1617, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2794, file: !108, line: 41, baseType: !107, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, scope: !2794, file: !108, line: 42, baseType: !2799, size: 64, offset: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2794, file: !108, line: 42, size: 64, elements: !2800)
!2800 = !{!2801, !2809}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2799, file: !108, line: 43, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2804, line: 7, size: 128, elements: !2805)
!2804 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2805 = !{!2806, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2803, file: !2804, line: 8, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !275, line: 93, baseType: !330)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2803, file: !2804, line: 9, baseType: !330, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2799, file: !108, line: 44, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2812, line: 7, size: 64, elements: !2813)
!2812 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2813 = !{!2814, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2811, file: !2812, line: 8, baseType: !2815, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2812, line: 5, baseType: !478)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2811, file: !2812, line: 9, baseType: !478, size: 32, offset: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2794, file: !108, line: 46, baseType: !405, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2782, file: !108, line: 55, baseType: !2819, size: 256)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !108, line: 49, size: 256, elements: !2820)
!2820 = !{!2821, !2824, !2825, !2826, !2827}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2819, file: !108, line: 50, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !108, line: 14, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2819, file: !108, line: 51, baseType: !46, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2819, file: !108, line: 52, baseType: !46, size: 32, offset: 96)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2819, file: !108, line: 53, baseType: !291, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2819, file: !108, line: 54, baseType: !291, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2547, file: !737, line: 973, baseType: !2829, size: 32, offset: 10688)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !142, line: 27, baseType: !2830)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !275, line: 28, baseType: !46)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2547, file: !737, line: 974, baseType: !2829, size: 32, offset: 10720)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2547, file: !737, line: 978, baseType: !291, size: 64, offset: 10752)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2547, file: !737, line: 987, baseType: !2546, size: 64, offset: 10816)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2547, file: !737, line: 990, baseType: !2546, size: 64, offset: 10880)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2547, file: !737, line: 995, baseType: !141, size: 128, offset: 10944)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2547, file: !737, line: 996, baseType: !141, size: 128, offset: 11072)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2547, file: !737, line: 997, baseType: !2546, size: 64, offset: 11200)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2547, file: !737, line: 1005, baseType: !141, size: 128, offset: 11264)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2547, file: !737, line: 1006, baseType: !141, size: 128, offset: 11392)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2547, file: !737, line: 1009, baseType: !2841, size: 64, offset: 11520)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !2843, line: 59, size: 768, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!2844 = !{!2845, !2846, !2847, !2848, !2853, !2854, !2855, !2856}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2842, file: !2843, line: 61, baseType: !806, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2842, file: !2843, line: 62, baseType: !7, size: 32, offset: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2842, file: !2843, line: 63, baseType: !171, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2842, file: !2843, line: 65, baseType: !2849, size: 256, offset: 128)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2850, size: 256, elements: !480)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !142, line: 194, size: 64, elements: !2851)
!2851 = !{!2852}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2850, file: !142, line: 195, baseType: !1072, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2842, file: !2843, line: 66, baseType: !2850, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2842, file: !2843, line: 68, baseType: !1645, size: 192, offset: 448)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2842, file: !2843, line: 69, baseType: !348, size: 128, align: 64, offset: 640)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2842, file: !2843, line: 70, baseType: !2857, offset: 768)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2858, elements: !576)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !2843, line: 54, size: 128, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2858, file: !2843, line: 55, baseType: !46, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2858, file: !2843, line: 56, baseType: !2862, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2843, line: 56, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2547, file: !737, line: 1010, baseType: !2865, size: 512, offset: 11584)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 512, elements: !480)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2547, file: !737, line: 1011, baseType: !141, size: 128, offset: 12096)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2547, file: !737, line: 1012, baseType: !141, size: 128, offset: 12224)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2547, file: !737, line: 1014, baseType: !822, size: 64, offset: 12352)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2547, file: !737, line: 1017, baseType: !964, size: 64, offset: 12416)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2547, file: !737, line: 1020, baseType: !964, size: 64, offset: 12480)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2547, file: !737, line: 1023, baseType: !313, size: 64, offset: 12544)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2547, file: !737, line: 1025, baseType: !405, size: 64, offset: 12608)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2547, file: !737, line: 1026, baseType: !405, size: 64, offset: 12672)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2547, file: !737, line: 1031, baseType: !405, size: 64, offset: 12736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2547, file: !737, line: 1032, baseType: !2876, size: 192, offset: 12800)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !737, line: 324, size: 192, elements: !2877)
!2877 = !{!2878, !2879, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2876, file: !737, line: 326, baseType: !405, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2876, file: !737, line: 327, baseType: !405, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2876, file: !737, line: 328, baseType: !433, size: 32, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2547, file: !737, line: 1041, baseType: !291, size: 64, offset: 12992)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2547, file: !737, line: 1042, baseType: !291, size: 64, offset: 13056)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2547, file: !737, line: 1045, baseType: !405, size: 64, offset: 13120)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2547, file: !737, line: 1048, baseType: !405, size: 64, offset: 13184)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2547, file: !737, line: 1051, baseType: !291, size: 64, offset: 13248)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2547, file: !737, line: 1052, baseType: !291, size: 64, offset: 13312)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2547, file: !737, line: 1055, baseType: !2888, size: 640, offset: 13376)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2889, line: 132, size: 640, elements: !2890)
!2889 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2890 = !{!2891, !2897, !2898}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2888, file: !2889, line: 133, baseType: !2892, size: 576)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 576, elements: !242)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2889, line: 117, size: 192, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2893, file: !2889, line: 118, baseType: !405, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2893, file: !2889, line: 119, baseType: !1626, size: 128, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2888, file: !2889, line: 134, baseType: !7, size: 32, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2888, file: !2889, line: 135, baseType: !7, size: 32, offset: 608)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2547, file: !737, line: 1058, baseType: !2900, size: 448, offset: 14016)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2889, line: 144, size: 448, elements: !2901)
!2901 = !{!2902, !2903, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2900, file: !2889, line: 145, baseType: !348, size: 128, align: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2900, file: !2889, line: 146, baseType: !499, size: 256, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2900, file: !2889, line: 147, baseType: !7, size: 32, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2547, file: !737, line: 1064, baseType: !2906, size: 64, offset: 14464)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2908)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2909, line: 11, flags: DIFlagFwdDecl)
!2909 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2547, file: !737, line: 1067, baseType: !2906, size: 64, offset: 14528)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2547, file: !737, line: 1070, baseType: !2906, size: 64, offset: 14592)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2547, file: !737, line: 1074, baseType: !2913, size: 64, offset: 14656)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !737, line: 1074, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2547, file: !737, line: 1084, baseType: !2493, size: 128, offset: 14720)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2547, file: !737, line: 1086, baseType: !2917, size: 64, offset: 14848)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !737, line: 55, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2547, file: !737, line: 1089, baseType: !2920, size: 64, offset: 14912)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2921, line: 12, size: 64, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2922 = !{!2923}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2920, file: !2921, line: 13, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2921, line: 8, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2547, file: !737, line: 1090, baseType: !2927, size: 128, offset: 14976)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2928, line: 13, size: 128, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2927, file: !2928, line: 14, baseType: !141, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2547, file: !737, line: 1097, baseType: !2932, size: 64, offset: 15104)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !737, line: 50, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2547, file: !737, line: 1100, baseType: !2935, size: 64, offset: 15168)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !737, line: 1100, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2547, file: !737, line: 1103, baseType: !2938, size: 64, offset: 15232)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !737, line: 53, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2547, file: !737, line: 1107, baseType: !2941, size: 64, offset: 15296)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2943, line: 35, flags: DIFlagFwdDecl)
!2943 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2547, file: !737, line: 1110, baseType: !2945, size: 64, offset: 15360)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2889, line: 236, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2547, file: !737, line: 1111, baseType: !2948, size: 64, offset: 15424)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !737, line: 67, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2547, file: !737, line: 1112, baseType: !2951, size: 64, offset: 15488)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2952, line: 25, baseType: !2953)
!2952 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2952, line: 23, size: 64, elements: !2954)
!2954 = !{!2955}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2953, file: !2952, line: 24, baseType: !1292, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2547, file: !737, line: 1113, baseType: !2951, size: 64, offset: 15552)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2547, file: !737, line: 1115, baseType: !2951, size: 64, offset: 15616)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2547, file: !737, line: 1116, baseType: !2959, size: 192, offset: 15680)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2960, line: 32, size: 192, elements: !2961)
!2960 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2959, file: !2960, line: 33, baseType: !141, size: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2959, file: !2960, line: 34, baseType: !2951, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2547, file: !737, line: 1117, baseType: !291, size: 64, offset: 15872)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2547, file: !737, line: 1118, baseType: !288, size: 64, offset: 15936)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2547, file: !737, line: 1119, baseType: !7, size: 32, offset: 16000)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2547, file: !737, line: 1121, baseType: !351, size: 64, offset: 16064)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2547, file: !737, line: 1125, baseType: !2969, size: 64, offset: 16128)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !737, line: 43, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2547, file: !737, line: 1127, baseType: !673, size: 32, offset: 16192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2547, file: !737, line: 1128, baseType: !7, size: 32, offset: 16224)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2547, file: !737, line: 1130, baseType: !2974, size: 128, offset: 16256)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2975, line: 37, size: 128, elements: !2976)
!2975 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2974, file: !2975, line: 38, baseType: !46, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2974, file: !2975, line: 39, baseType: !191, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2974, file: !2975, line: 40, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2975, line: 24, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2547, file: !737, line: 1131, baseType: !2983, size: 256, offset: 16384)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2984, line: 12, size: 256, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2983, file: !2984, line: 13, baseType: !241, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2983, file: !2984, line: 14, baseType: !291, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2983, file: !2984, line: 15, baseType: !291, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2983, file: !2984, line: 16, baseType: !598, size: 8, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2547, file: !737, line: 1134, baseType: !405, size: 64, offset: 16640)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2547, file: !737, line: 1135, baseType: !405, size: 64, offset: 16704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2547, file: !737, line: 1138, baseType: !171, size: 32, offset: 16768)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2547, file: !737, line: 1141, baseType: !433, size: 32, offset: 16800)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2547, file: !737, line: 1143, baseType: !2995, size: 64, offset: 16832)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !737, line: 735, size: 64, elements: !2996)
!2996 = !{!2997}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2995, file: !737, line: 736, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2547, file: !737, line: 1147, baseType: !1629, size: 128, offset: 16896)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2547, file: !737, line: 1149, baseType: !2546, size: 64, offset: 17024)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2547, file: !737, line: 1151, baseType: !3002, size: 64, offset: 17088)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !737, line: 1151, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2547, file: !737, line: 1188, baseType: !313, size: 64, offset: 17152)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2547, file: !737, line: 1191, baseType: !3006, size: 64, offset: 17216)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !737, line: 44, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2547, file: !737, line: 1194, baseType: !3009, size: 64, offset: 17280)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !737, line: 45, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2547, file: !737, line: 1197, baseType: !3012, size: 64, offset: 17344)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !737, line: 61, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2547, file: !737, line: 1199, baseType: !3015, size: 64, offset: 17408)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !737, line: 52, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2547, file: !737, line: 1202, baseType: !3018, size: 64, offset: 17472)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !737, line: 48, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2547, file: !737, line: 1205, baseType: !291, size: 64, offset: 17536)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2547, file: !737, line: 1206, baseType: !3022, size: 64, offset: 17600)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2960, line: 14, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2960, line: 12, size: 384, elements: !3025)
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !2960, line: 13, baseType: !3027, size: 384)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3024, file: !2960, line: 13, size: 384, elements: !3028)
!3028 = !{!3029, !3030, !3031, !3032}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3027, file: !2960, line: 13, baseType: !46, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3027, file: !2960, line: 13, baseType: !46, size: 32, offset: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3027, file: !2960, line: 13, baseType: !46, size: 32, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3027, file: !2960, line: 13, baseType: !3033, size: 256, offset: 128)
!3033 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3034, line: 37, size: 256, elements: !3035)
!3034 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3035 = !{!3036, !3041, !3054, !3060, !3069, !3096, !3101}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3033, file: !3034, line: 42, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !3034, line: 39, size: 64, elements: !3038)
!3038 = !{!3039, !3040}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3037, file: !3034, line: 40, baseType: !2830, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3037, file: !3034, line: 41, baseType: !678, size: 32, offset: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3033, file: !3034, line: 50, baseType: !3042, size: 192)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !3034, line: 45, size: 192, elements: !3043)
!3043 = !{!3044, !3046, !3047, !3053}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3042, file: !3034, line: 46, baseType: !3045, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !275, line: 95, baseType: !46)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3042, file: !3034, line: 47, baseType: !46, size: 32, offset: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3042, file: !3034, line: 48, baseType: !3048, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3034, line: 11, baseType: !3049)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3034, line: 8, size: 64, elements: !3050)
!3050 = !{!3051, !3052}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3049, file: !3034, line: 9, baseType: !46, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3049, file: !3034, line: 10, baseType: !313, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3042, file: !3034, line: 49, baseType: !46, size: 32, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3033, file: !3034, line: 57, baseType: !3055, size: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !3034, line: 53, size: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3055, file: !3034, line: 54, baseType: !2830, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3055, file: !3034, line: 55, baseType: !678, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3055, file: !3034, line: 56, baseType: !3048, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3033, file: !3034, line: 66, baseType: !3061, size: 256)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !3034, line: 60, size: 256, elements: !3062)
!3062 = !{!3063, !3064, !3065, !3066, !3068}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3061, file: !3034, line: 61, baseType: !2830, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3061, file: !3034, line: 62, baseType: !678, size: 32, offset: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3061, file: !3034, line: 63, baseType: !46, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3061, file: !3034, line: 64, baseType: !3067, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !275, line: 94, baseType: !276)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3061, file: !3034, line: 65, baseType: !3067, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3033, file: !3034, line: 105, baseType: !3070, size: 256)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !3034, line: 69, size: 256, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3070, file: !3034, line: 70, baseType: !313, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !3070, file: !3034, line: 79, baseType: !3074, size: 192, offset: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3070, file: !3034, line: 79, size: 192, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3085, !3090}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3074, file: !3034, line: 81, baseType: !46, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3074, file: !3034, line: 86, baseType: !539, size: 16)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3074, file: !3034, line: 92, baseType: !3079, size: 192)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3034, line: 88, size: 192, elements: !3080)
!3080 = !{!3081, !3083, !3084}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3079, file: !3034, line: 89, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !1232)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3079, file: !3034, line: 90, baseType: !313, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3079, file: !3034, line: 91, baseType: !313, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3074, file: !3034, line: 97, baseType: !3086, size: 96)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3034, line: 94, size: 96, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3086, file: !3034, line: 95, baseType: !3082, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3086, file: !3034, line: 96, baseType: !1000, size: 32, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3074, file: !3034, line: 103, baseType: !3091, size: 128)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3034, line: 99, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3091, file: !3034, line: 100, baseType: !291, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3091, file: !3034, line: 101, baseType: !1000, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3091, file: !3034, line: 102, baseType: !1000, size: 32, offset: 96)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3033, file: !3034, line: 111, baseType: !3097, size: 128)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !3034, line: 108, size: 128, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3097, file: !3034, line: 109, baseType: !277, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3097, file: !3034, line: 110, baseType: !46, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3033, file: !3034, line: 118, baseType: !3102, size: 128)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !3034, line: 114, size: 128, elements: !3103)
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3102, file: !3034, line: 115, baseType: !313, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3102, file: !3034, line: 116, baseType: !46, size: 32, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3102, file: !3034, line: 117, baseType: !7, size: 32, offset: 96)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2547, file: !737, line: 1208, baseType: !3108, size: 448, offset: 17664)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3109, line: 12, size: 448, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3108, file: !3109, line: 15, baseType: !405, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3108, file: !3109, line: 17, baseType: !405, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3108, file: !3109, line: 19, baseType: !405, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3108, file: !3109, line: 21, baseType: !405, size: 64, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3108, file: !3109, line: 29, baseType: !405, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3108, file: !3109, line: 35, baseType: !405, size: 64, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3108, file: !3109, line: 44, baseType: !405, size: 64, offset: 384)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2547, file: !737, line: 1215, baseType: !405, size: 64, offset: 18112)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2547, file: !737, line: 1217, baseType: !405, size: 64, offset: 18176)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2547, file: !737, line: 1219, baseType: !405, size: 64, offset: 18240)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2547, file: !737, line: 1223, baseType: !3122, size: 64, offset: 18304)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3123, line: 99, baseType: !3124)
!3123 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3123, line: 99, size: 64, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3124, file: !3123, line: 99, baseType: !1292, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2547, file: !737, line: 1225, baseType: !3128, size: 32, offset: 18368)
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !448, line: 275, baseType: !3129)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !448, line: 275, size: 32, elements: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3129, file: !448, line: 275, baseType: !447, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2547, file: !737, line: 1226, baseType: !46, size: 32, offset: 18400)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2547, file: !737, line: 1227, baseType: !46, size: 32, offset: 18432)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2547, file: !737, line: 1231, baseType: !3135, size: 64, offset: 18496)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !737, line: 1231, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2547, file: !737, line: 1233, baseType: !141, size: 128, offset: 18560)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2547, file: !737, line: 1240, baseType: !3139, size: 64, offset: 18688)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !737, line: 62, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2547, file: !737, line: 1242, baseType: !3142, size: 64, offset: 18752)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !737, line: 1242, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2547, file: !737, line: 1244, baseType: !141, size: 128, offset: 18816)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2547, file: !737, line: 1245, baseType: !3146, size: 64, offset: 18944)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !737, line: 51, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2547, file: !737, line: 1246, baseType: !499, size: 256, offset: 19008)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2547, file: !737, line: 1247, baseType: !7, size: 32, offset: 19264)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2547, file: !737, line: 1250, baseType: !3151, size: 64, offset: 19328)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !737, line: 57, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2547, file: !737, line: 1251, baseType: !499, size: 256, offset: 19392)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2547, file: !737, line: 1252, baseType: !141, size: 128, offset: 19648)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2547, file: !737, line: 1259, baseType: !625, size: 64, offset: 19776)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2547, file: !737, line: 1260, baseType: !539, size: 16, offset: 19840)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2547, file: !737, line: 1261, baseType: !539, size: 16, offset: 19856)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2547, file: !737, line: 1314, baseType: !3159, size: 64, offset: 19904)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3161, line: 62, size: 256, align: 256, elements: !3162)
!3161 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3160, file: !3161, line: 75, baseType: !1000, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3160, file: !3161, line: 90, baseType: !1000, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3160, file: !3161, line: 112, baseType: !406, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3160, file: !3161, line: 132, baseType: !1000, size: 32, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3160, file: !3161, line: 140, baseType: !1000, size: 32, offset: 160)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3160, file: !3161, line: 149, baseType: !1000, size: 32, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3160, file: !3161, line: 154, baseType: !3170, offset: 224)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !576)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2547, file: !737, line: 1315, baseType: !1082, size: 32, offset: 19968)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2547, file: !737, line: 1316, baseType: !1082, size: 32, offset: 20000)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2547, file: !737, line: 1321, baseType: !291, size: 64, offset: 20032)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2547, file: !737, line: 1325, baseType: !46, size: 32, offset: 20096)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2547, file: !737, line: 1326, baseType: !46, size: 32, offset: 20128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2547, file: !737, line: 1327, baseType: !46, size: 32, offset: 20160)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2547, file: !737, line: 1328, baseType: !46, size: 32, offset: 20192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2547, file: !737, line: 1329, baseType: !348, size: 128, align: 64, offset: 20224)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2547, file: !737, line: 1332, baseType: !3180, size: 128, offset: 20352)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3181, line: 51, size: 128, elements: !3182)
!3181 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3182 = !{!3183, !3188, !3189}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3180, file: !3181, line: 60, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3185, line: 7, size: 64, elements: !3186)
!3185 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3186 = !{!3187}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3184, file: !3185, line: 12, baseType: !1289, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3180, file: !3181, line: 63, baseType: !598, size: 8, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3180, file: !3181, line: 70, baseType: !598, size: 8, offset: 72)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2547, file: !737, line: 1335, baseType: !3191, size: 64, offset: 20480)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !737, line: 59, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2547, file: !737, line: 1337, baseType: !3194, size: 128, offset: 20544)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3181, line: 39, size: 128, elements: !3195)
!3195 = !{!3196, !3257, !3258}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3194, file: !3181, line: 40, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !320, line: 74, size: 512, align: 128, elements: !3199)
!3199 = !{!3200, !3201, !3251, !3256}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3198, file: !320, line: 75, baseType: !291, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !320, line: 83, baseType: !3202, size: 320, offset: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3198, file: !320, line: 83, size: 320, elements: !3203)
!3203 = !{!3204, !3225, !3239, !3243, !3250}
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3202, file: !320, line: 84, baseType: !3205, size: 320)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !320, line: 84, size: 320, elements: !3206)
!3206 = !{!3207, !3218, !3219, !3224}
!3207 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !320, line: 90, baseType: !3208, size: 128)
!3208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !320, line: 90, size: 128, elements: !3209)
!3209 = !{!3210, !3211, !3216, !3217}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3208, file: !320, line: 91, baseType: !141, size: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !320, line: 94, baseType: !3212, size: 128)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3208, file: !320, line: 94, size: 128, elements: !3213)
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3212, file: !320, line: 96, baseType: !313, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3212, file: !320, line: 98, baseType: !7, size: 32, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !3208, file: !320, line: 102, baseType: !141, size: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !3208, file: !320, line: 103, baseType: !141, size: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3205, file: !320, line: 106, baseType: !318, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !320, line: 107, baseType: !3220, size: 64, offset: 192)
!3220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !320, line: 107, size: 64, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3220, file: !320, line: 108, baseType: !291, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3220, file: !320, line: 109, baseType: !291, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3205, file: !320, line: 117, baseType: !291, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3202, file: !320, line: 119, baseType: !3226, size: 320)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !320, line: 119, size: 320, elements: !3227)
!3227 = !{!3228, !3229, !3232, !3233, !3234}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3226, file: !320, line: 124, baseType: !291, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3226, file: !320, line: 125, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !320, line: 125, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3226, file: !320, line: 126, baseType: !291, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3226, file: !320, line: 127, baseType: !291, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3226, file: !320, line: 128, baseType: !3235, size: 64, offset: 256)
!3235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3226, file: !320, line: 128, size: 64, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3235, file: !320, line: 133, baseType: !291, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3235, file: !320, line: 138, baseType: !411, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3202, file: !320, line: 141, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !320, line: 141, size: 64, elements: !3241)
!3241 = !{!3242}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3240, file: !320, line: 142, baseType: !291, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !3202, file: !320, line: 144, baseType: !3244, size: 128)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !320, line: 144, size: 128, elements: !3245)
!3245 = !{!3246, !3249}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3244, file: !320, line: 146, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !320, line: 146, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3244, file: !320, line: 147, baseType: !313, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3202, file: !320, line: 161, baseType: !348, size: 128, align: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !320, line: 164, baseType: !3252, size: 32, offset: 384)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3198, file: !320, line: 164, size: 32, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3252, file: !320, line: 169, baseType: !191, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3252, file: !320, line: 177, baseType: !7, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3198, file: !320, line: 181, baseType: !191, size: 32, offset: 416)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3194, file: !3181, line: 42, baseType: !1000, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3194, file: !3181, line: 43, baseType: !1000, size: 32, offset: 96)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2547, file: !737, line: 1340, baseType: !3260, size: 64, offset: 20672)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !737, line: 69, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2547, file: !737, line: 1351, baseType: !46, size: 32, offset: 20736)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2547, file: !737, line: 1352, baseType: !46, size: 32, offset: 20768)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2547, file: !737, line: 1354, baseType: !291, size: 64, offset: 20800)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2547, file: !737, line: 1364, baseType: !405, size: 64, offset: 20864)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2547, file: !737, line: 1365, baseType: !405, size: 64, offset: 20928)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2547, file: !737, line: 1412, baseType: !291, size: 64, offset: 20992)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2547, file: !737, line: 1453, baseType: !3269, size: 64, offset: 21056)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !737, line: 1453, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2547, file: !737, line: 1457, baseType: !3272, size: 64, offset: 21120)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !114, line: 61, size: 576, elements: !3274)
!3274 = !{!3275, !3276, !3295, !3298, !3299, !3332, !3342}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3273, file: !114, line: 62, baseType: !113, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3273, file: !114, line: 64, baseType: !3277, size: 192, offset: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3273, file: !114, line: 64, size: 192, elements: !3278)
!3278 = !{!3279, !3290}
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !114, line: 65, baseType: !3280, size: 192)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !114, line: 65, size: 192, elements: !3281)
!3281 = !{!3282, !3289}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3280, file: !114, line: 66, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3284, line: 50, size: 128, elements: !3285)
!3284 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3283, file: !3284, line: 52, baseType: !291, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3283, file: !3284, line: 54, baseType: !7, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3283, file: !3284, line: 55, baseType: !7, size: 32, offset: 96)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3280, file: !114, line: 67, baseType: !291, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !114, line: 70, baseType: !3291, size: 192)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !114, line: 70, size: 192, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3291, file: !114, line: 71, baseType: !348, size: 128, align: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3291, file: !114, line: 72, baseType: !291, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3273, file: !114, line: 76, baseType: !3296, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !114, line: 76, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3273, file: !114, line: 77, baseType: !291, size: 64, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3273, file: !114, line: 79, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3284, line: 25, size: 256, elements: !3302)
!3302 = !{!3303, !3309, !3313}
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !3284, line: 26, baseType: !3304, size: 128)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !3284, line: 26, size: 128, elements: !3305)
!3305 = !{!3306, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3304, file: !3284, line: 27, baseType: !3307, size: 128)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 128, elements: !1341)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3304, file: !3284, line: 28, baseType: !3307, size: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3301, file: !3284, line: 31, baseType: !3310, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3284, line: 23, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !3284, line: 33, baseType: !3314, size: 64, offset: 192)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !3284, line: 33, size: 64, elements: !3315)
!3315 = !{!3316, !3322, !3327}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3314, file: !3284, line: 38, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 34, size: 64, elements: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3317, file: !3284, line: 35, baseType: !478, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3317, file: !3284, line: 36, baseType: !199, size: 8, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3317, file: !3284, line: 37, baseType: !199, size: 8, offset: 40)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3314, file: !3284, line: 42, baseType: !3323, size: 16)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 39, size: 16, elements: !3324)
!3324 = !{!3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3323, file: !3284, line: 40, baseType: !199, size: 8)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3323, file: !3284, line: 41, baseType: !199, size: 8, offset: 8)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3314, file: !3284, line: 46, baseType: !3328, size: 16)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 43, size: 16, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3328, file: !3284, line: 44, baseType: !199, size: 8)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3328, file: !3284, line: 45, baseType: !199, size: 8, offset: 8)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3273, file: !114, line: 81, baseType: !3333, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !114, line: 85, size: 384, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3334, file: !114, line: 86, baseType: !3296, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3334, file: !114, line: 87, baseType: !291, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3334, file: !114, line: 88, baseType: !291, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3334, file: !114, line: 89, baseType: !291, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3334, file: !114, line: 90, baseType: !598, size: 8, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3334, file: !114, line: 92, baseType: !3333, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3273, file: !114, line: 82, baseType: !7, size: 32, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2547, file: !737, line: 1463, baseType: !3344, offset: 21184)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !737, line: 739, elements: !378)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2547, file: !737, line: 1470, baseType: !348, size: 128, align: 64, offset: 21184)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2547, file: !737, line: 1471, baseType: !806, size: 32, offset: 21312)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2547, file: !737, line: 1472, baseType: !46, size: 32, offset: 21344)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2547, file: !737, line: 1474, baseType: !2546, size: 64, offset: 21376)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2547, file: !737, line: 1475, baseType: !1065, size: 320, offset: 21440)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2547, file: !737, line: 1478, baseType: !3351, size: 64, offset: 21760)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3353, line: 49, size: 512, elements: !3354)
!3353 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3361, !3362, !3363, !3365}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3352, file: !3353, line: 50, baseType: !3351, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3352, file: !3353, line: 51, baseType: !313, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3352, file: !3353, line: 52, baseType: !291, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3352, file: !3353, line: 53, baseType: !291, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3352, file: !3353, line: 54, baseType: !3360, size: 64, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3352, file: !3353, line: 56, baseType: !7, size: 32, offset: 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3352, file: !3353, line: 58, baseType: !7, size: 32, offset: 352)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3352, file: !3353, line: 59, baseType: !3364, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !142, line: 159, baseType: !405)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3352, file: !3353, line: 60, baseType: !520, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2547, file: !737, line: 1482, baseType: !806, size: 32, offset: 21824)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2547, file: !737, line: 1489, baseType: !313, size: 64, offset: 21888)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2547, file: !737, line: 1504, baseType: !313, size: 64, offset: 21952)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2547, file: !737, line: 1505, baseType: !406, size: 64, offset: 22016)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2547, file: !737, line: 1506, baseType: !405, size: 64, offset: 22080)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2547, file: !737, line: 1507, baseType: !406, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2547, file: !737, line: 1508, baseType: !406, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2547, file: !737, line: 1509, baseType: !406, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2547, file: !737, line: 1510, baseType: !348, size: 128, align: 64, offset: 22208)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2547, file: !737, line: 1511, baseType: !46, size: 32, offset: 22336)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2547, file: !737, line: 1515, baseType: !3377, size: 64, offset: 22400)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2569, line: 56, size: 64, elements: !3378)
!3378 = !{!3379}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3377, file: !2569, line: 57, baseType: !2572, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2547, file: !737, line: 1518, baseType: !3377, size: 64, offset: 22464)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2547, file: !737, line: 1528, baseType: !348, size: 128, align: 64, offset: 22528)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2547, file: !737, line: 1552, baseType: !3383, size: 35328, offset: 23040)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3384, line: 430, size: 35328, elements: !3385)
!3384 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3385 = !{!3386, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3415, !3416, !3417, !3418, !3419, !3420, !3423, !3424, !3425, !3426}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3383, file: !3384, line: 432, baseType: !3387, size: 192)
!3387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3388, size: 192, elements: !242)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3389, line: 16, size: 64, elements: !3390)
!3389 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3388, file: !3389, line: 17, baseType: !209, size: 16)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3388, file: !3389, line: 18, baseType: !209, size: 16, offset: 16)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3388, file: !3389, line: 19, baseType: !209, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3388, file: !3389, line: 19, baseType: !209, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3388, file: !3389, line: 19, baseType: !209, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3388, file: !3389, line: 19, baseType: !209, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3388, file: !3389, line: 19, baseType: !209, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3388, file: !3389, line: 20, baseType: !209, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3388, file: !3389, line: 20, baseType: !209, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3388, file: !3389, line: 20, baseType: !209, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3388, file: !3389, line: 20, baseType: !209, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3388, file: !3389, line: 20, baseType: !209, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3388, file: !3389, line: 20, baseType: !209, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3383, file: !3384, line: 436, baseType: !291, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3383, file: !3384, line: 440, baseType: !211, size: 16, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3383, file: !3384, line: 441, baseType: !211, size: 16, offset: 272)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3383, file: !3384, line: 442, baseType: !211, size: 16, offset: 288)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3383, file: !3384, line: 443, baseType: !211, size: 16, offset: 304)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3383, file: !3384, line: 447, baseType: !291, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3383, file: !3384, line: 448, baseType: !291, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3383, file: !3384, line: 459, baseType: !3412, size: 256, offset: 448)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3413, size: 256, elements: !480)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3384, line: 428, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3383, file: !3384, line: 461, baseType: !291, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3383, file: !3384, line: 463, baseType: !291, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3383, file: !3384, line: 465, baseType: !291, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3383, file: !3384, line: 466, baseType: !291, size: 64, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3383, file: !3384, line: 467, baseType: !291, size: 64, offset: 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3383, file: !3384, line: 473, baseType: !3421, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3384, line: 10, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3383, file: !3384, line: 480, baseType: !291, size: 64, offset: 1088)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3383, file: !3384, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3383, file: !3384, line: 491, baseType: !1082, size: 32, offset: 1184)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3383, file: !3384, line: 501, baseType: !3427, size: 33792, offset: 1536)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3428, line: 448, size: 33792, elements: !3429)
!3428 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3429 = !{!3430, !3431, !3432, !3594, !3595, !3601, !3602}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3427, file: !3428, line: 461, baseType: !7, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3427, file: !3428, line: 468, baseType: !291, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3427, file: !3428, line: 476, baseType: !3433, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3428, line: 356, size: 33280, align: 512, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3434, file: !3428, line: 358, baseType: !7, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3434, file: !3428, line: 361, baseType: !7, size: 32, offset: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3434, file: !3428, line: 364, baseType: !405, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3434, file: !3428, line: 367, baseType: !405, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3434, file: !3428, line: 370, baseType: !405, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3434, file: !3428, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3434, file: !3428, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3434, file: !3428, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3434, file: !3428, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3434, file: !3428, line: 397, baseType: !3446, size: 32768, offset: 512)
!3446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3428, line: 348, size: 32768, elements: !3447)
!3447 = !{!3448, !3463, !3500, !3577, !3590}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3446, file: !3428, line: 349, baseType: !3449, size: 896)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3428, line: 12, size: 896, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3462}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3449, file: !3428, line: 13, baseType: !1082, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3449, file: !3428, line: 14, baseType: !1082, size: 32, offset: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3449, file: !3428, line: 15, baseType: !1082, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3449, file: !3428, line: 16, baseType: !1082, size: 32, offset: 96)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3449, file: !3428, line: 17, baseType: !1082, size: 32, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3449, file: !3428, line: 18, baseType: !1082, size: 32, offset: 160)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3449, file: !3428, line: 19, baseType: !1082, size: 32, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3449, file: !3428, line: 22, baseType: !3459, size: 640, offset: 224)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 640, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 20)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3449, file: !3428, line: 25, baseType: !1082, size: 32, offset: 864)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3446, file: !3428, line: 350, baseType: !3464, size: 4096, align: 128)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3428, line: 34, size: 4096, align: 128, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3485, !3486, !3487, !3489, !3491, !3495}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3464, file: !3428, line: 35, baseType: !209, size: 16)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3464, file: !3428, line: 36, baseType: !209, size: 16, offset: 16)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3464, file: !3428, line: 37, baseType: !209, size: 16, offset: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3464, file: !3428, line: 38, baseType: !209, size: 16, offset: 48)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !3428, line: 39, baseType: !3471, size: 128, offset: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !3428, line: 39, size: 128, elements: !3472)
!3472 = !{!3473, !3478}
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !3428, line: 40, baseType: !3474, size: 128)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3471, file: !3428, line: 40, size: 128, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3474, file: !3428, line: 41, baseType: !405, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3474, file: !3428, line: 42, baseType: !405, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !3428, line: 44, baseType: !3479, size: 128)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3471, file: !3428, line: 44, size: 128, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3479, file: !3428, line: 45, baseType: !1082, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3479, file: !3428, line: 46, baseType: !1082, size: 32, offset: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3479, file: !3428, line: 47, baseType: !1082, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3479, file: !3428, line: 48, baseType: !1082, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3464, file: !3428, line: 51, baseType: !1082, size: 32, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3464, file: !3428, line: 52, baseType: !1082, size: 32, offset: 224)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3464, file: !3428, line: 55, baseType: !3488, size: 1024, offset: 256)
!3488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 1024, elements: !1230)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3464, file: !3428, line: 58, baseType: !3490, size: 2048, offset: 1280)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 2048, elements: !246)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3464, file: !3428, line: 60, baseType: !3492, size: 384, offset: 3328)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 384, elements: !3493)
!3493 = !{!3494}
!3494 = !DISubrange(count: 12)
!3495 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !3428, line: 62, baseType: !3496, size: 384, offset: 3712)
!3496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !3428, line: 62, size: 384, elements: !3497)
!3497 = !{!3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3496, file: !3428, line: 63, baseType: !3492, size: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3496, file: !3428, line: 64, baseType: !3492, size: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3446, file: !3428, line: 351, baseType: !3501, size: 1088)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3428, line: 79, size: 1088, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3576}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3501, file: !3428, line: 80, baseType: !1082, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3501, file: !3428, line: 81, baseType: !1082, size: 32, offset: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3501, file: !3428, line: 82, baseType: !1082, size: 32, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3501, file: !3428, line: 83, baseType: !1082, size: 32, offset: 96)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3501, file: !3428, line: 84, baseType: !1082, size: 32, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3501, file: !3428, line: 85, baseType: !1082, size: 32, offset: 160)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3501, file: !3428, line: 86, baseType: !1082, size: 32, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3501, file: !3428, line: 88, baseType: !3459, size: 640, offset: 224)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3501, file: !3428, line: 89, baseType: !199, size: 8, offset: 864)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3501, file: !3428, line: 90, baseType: !199, size: 8, offset: 872)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3501, file: !3428, line: 91, baseType: !199, size: 8, offset: 880)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3501, file: !3428, line: 92, baseType: !199, size: 8, offset: 888)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3501, file: !3428, line: 93, baseType: !199, size: 8, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3501, file: !3428, line: 94, baseType: !199, size: 8, offset: 904)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3501, file: !3428, line: 95, baseType: !3518, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3520, line: 11, size: 128, elements: !3521)
!3520 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3521 = !{!3522, !3523}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3519, file: !3520, line: 12, baseType: !277, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3519, file: !3520, line: 13, baseType: !3524, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3526, line: 103, size: 1344, elements: !3527)
!3526 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3556, !3557, !3558}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3525, file: !3526, line: 109, baseType: !291, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3525, file: !3526, line: 110, baseType: !291, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3525, file: !3526, line: 111, baseType: !291, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3525, file: !3526, line: 112, baseType: !291, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3525, file: !3526, line: 113, baseType: !291, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3525, file: !3526, line: 114, baseType: !291, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3525, file: !3526, line: 117, baseType: !291, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3525, file: !3526, line: 118, baseType: !291, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3525, file: !3526, line: 119, baseType: !291, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3525, file: !3526, line: 120, baseType: !291, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3525, file: !3526, line: 121, baseType: !291, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3525, file: !3526, line: 122, baseType: !291, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3525, file: !3526, line: 123, baseType: !291, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3525, file: !3526, line: 124, baseType: !291, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3525, file: !3526, line: 125, baseType: !291, size: 64, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3525, file: !3526, line: 139, baseType: !291, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3525, file: !3526, line: 142, baseType: !291, size: 64, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, scope: !3525, file: !3526, line: 144, baseType: !3546, size: 64, offset: 1088)
!3546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3525, file: !3526, line: 144, size: 64, elements: !3547)
!3547 = !{!3548, !3549, !3550}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3546, file: !3526, line: 146, baseType: !209, size: 16)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3546, file: !3526, line: 148, baseType: !405, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3546, file: !3526, line: 150, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3526, line: 59, size: 64, elements: !3552)
!3552 = !{!3553, !3554, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3551, file: !3526, line: 61, baseType: !405, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3551, file: !3526, line: 63, baseType: !405, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3551, file: !3526, line: 65, baseType: !405, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3525, file: !3526, line: 153, baseType: !291, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3525, file: !3526, line: 154, baseType: !291, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3525, file: !3526, line: 156, baseType: !3559, size: 64, offset: 1280)
!3559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3525, file: !3526, line: 156, size: 64, elements: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3559, file: !3526, line: 158, baseType: !209, size: 16)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3559, file: !3526, line: 160, baseType: !405, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3559, file: !3526, line: 162, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3526, line: 69, size: 64, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3564, file: !3526, line: 71, baseType: !405, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3564, file: !3526, line: 73, baseType: !405, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3564, file: !3526, line: 75, baseType: !405, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3564, file: !3526, line: 77, baseType: !405, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3564, file: !3526, line: 80, baseType: !405, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3564, file: !3526, line: 83, baseType: !405, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3564, file: !3526, line: 86, baseType: !405, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3564, file: !3526, line: 88, baseType: !405, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3564, file: !3526, line: 93, baseType: !405, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3564, file: !3526, line: 100, baseType: !405, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3501, file: !3428, line: 96, baseType: !1082, size: 32, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3446, file: !3428, line: 352, baseType: !3578, size: 4608, align: 512)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3428, line: 333, size: 4608, align: 512, elements: !3579)
!3579 = !{!3580, !3581, !3588}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3578, file: !3428, line: 334, baseType: !3464, size: 4096, align: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3578, file: !3428, line: 335, baseType: !3582, size: 512, offset: 4096)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3428, line: 312, size: 512, elements: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3582, file: !3428, line: 313, baseType: !405, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3582, file: !3428, line: 314, baseType: !405, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3582, file: !3428, line: 315, baseType: !3587, size: 384, offset: 128)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 384, elements: !2143)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3578, file: !3428, line: 336, baseType: !3589, offset: 4608)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !576)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3446, file: !3428, line: 353, baseType: !3591, size: 32768)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 32768, elements: !3592)
!3592 = !{!3593}
!3593 = !DISubrange(count: 4096)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3427, file: !3428, line: 484, baseType: !3433, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3427, file: !3428, line: 491, baseType: !3596, size: 128, offset: 256)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3428, line: 404, size: 128, elements: !3597)
!3597 = !{!3598, !3599, !3600}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3596, file: !3428, line: 424, baseType: !405, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3596, file: !3428, line: 432, baseType: !7, size: 32, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3596, file: !3428, line: 440, baseType: !7, size: 32, offset: 96)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3427, file: !3428, line: 498, baseType: !3596, size: 128, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3427, file: !3428, line: 508, baseType: !3434, size: 33280, align: 512, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2465, file: !102, line: 158, baseType: !3604, size: 64, offset: 4544)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !102, line: 158, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2465, file: !102, line: 161, baseType: !313, size: 64, offset: 4608)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2465, file: !102, line: 164, baseType: !1354, size: 64, offset: 4672)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !2465, file: !102, line: 166, baseType: !1710, size: 192, offset: 4736)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !2465, file: !102, line: 167, baseType: !1710, size: 192, offset: 4928)
!3610 = !{!3611, !3612, !3613, !3617, !3620, !3622}
!3611 = !DILocalVariable(name: "policy", arg: 1, scope: !2461, file: !3, line: 173, type: !2464)
!3612 = !DILocalVariable(name: "cpu", scope: !2461, file: !3, line: 175, type: !7)
!3613 = !DILocalVariable(name: "pr", scope: !3614, file: !3, line: 178, type: !1181)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 177, column: 42)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 177, column: 2)
!3616 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 177, column: 2)
!3617 = !DILocalVariable(name: "__vpp_verify", scope: !3618, file: !3, line: 178, type: !520)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 178, column: 31)
!3619 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 178, column: 31)
!3620 = !DILocalVariable(name: "__ptr", scope: !3621, file: !3, line: 178, type: !291)
!3621 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 178, column: 31)
!3622 = !DILocalVariable(name: "ret", scope: !3614, file: !3, line: 179, type: !46)
!3623 = !DILocation(line: 173, column: 53, scope: !2461)
!3624 = !DILocation(line: 175, column: 2, scope: !2461)
!3625 = !DILocation(line: 175, column: 15, scope: !2461)
!3626 = !DILocation(line: 177, column: 2, scope: !3616)
!3627 = !DILocation(line: 177, column: 2, scope: !3615)
!3628 = !DILocation(line: 178, column: 3, scope: !3614)
!3629 = !DILocation(line: 178, column: 26, scope: !3614)
!3630 = !DILocation(line: 178, column: 31, scope: !3619)
!3631 = !DILocation(line: 178, column: 31, scope: !3618)
!3632 = !DILocation(line: 178, column: 31, scope: !3621)
!3633 = !DILocation(line: 178, column: 31, scope: !3614)
!3634 = !DILocation(line: 179, column: 3, scope: !3614)
!3635 = !DILocation(line: 179, column: 7, scope: !3614)
!3636 = !DILocation(line: 181, column: 8, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 181, column: 7)
!3638 = !DILocation(line: 181, column: 7, scope: !3614)
!3639 = !DILocation(line: 182, column: 4, scope: !3637)
!3640 = !DILocation(line: 189, column: 3, scope: !3614)
!3641 = !DILocation(line: 189, column: 7, scope: !3614)
!3642 = !DILocation(line: 189, column: 34, scope: !3614)
!3643 = !DILocation(line: 191, column: 31, scope: !3614)
!3644 = !DILocation(line: 191, column: 39, scope: !3614)
!3645 = !DILocation(line: 192, column: 10, scope: !3614)
!3646 = !DILocation(line: 192, column: 14, scope: !3614)
!3647 = !DILocation(line: 191, column: 9, scope: !3614)
!3648 = !DILocation(line: 191, column: 7, scope: !3614)
!3649 = !DILocation(line: 194, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 194, column: 7)
!3651 = !DILocation(line: 194, column: 11, scope: !3650)
!3652 = !DILocation(line: 194, column: 7, scope: !3614)
!3653 = !DILocation(line: 195, column: 4, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 195, column: 4)
!3655 = !DILocation(line: 195, column: 4, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 195, column: 4)
!3657 = !DILocation(line: 195, column: 4, scope: !3650)
!3658 = !DILocation(line: 197, column: 2, scope: !3615)
!3659 = !DILocation(line: 197, column: 2, scope: !3614)
!3660 = distinct !{!3660, !3626, !3661, !3662, !3663}
!3661 = !DILocation(line: 197, column: 2, scope: !3616)
!3662 = !{!"llvm.loop.mustprogress"}
!3663 = !{!"llvm.loop.unroll.disable"}
!3664 = !DILocation(line: 198, column: 1, scope: !2461)
!3665 = distinct !DISubprogram(name: "find_next_bit", scope: !3666, file: !3666, line: 54, type: !3667, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3671)
!3666 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!291, !3669, !291, !291}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!3671 = !{!3672, !3673, !3674, !3675}
!3672 = !DILocalVariable(name: "addr", arg: 1, scope: !3665, file: !3666, line: 54, type: !3669)
!3673 = !DILocalVariable(name: "size", arg: 2, scope: !3665, file: !3666, line: 54, type: !291)
!3674 = !DILocalVariable(name: "offset", arg: 3, scope: !3665, file: !3666, line: 55, type: !291)
!3675 = !DILocalVariable(name: "val", scope: !3676, file: !3666, line: 58, type: !291)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !3666, line: 57, column: 31)
!3677 = distinct !DILexicalBlock(scope: !3665, file: !3666, line: 57, column: 6)
!3678 = !DILocation(line: 54, column: 50, scope: !3665)
!3679 = !DILocation(line: 54, column: 70, scope: !3665)
!3680 = !DILocation(line: 55, column: 22, scope: !3665)
!3681 = !DILocation(line: 57, column: 6, scope: !3677)
!3682 = !DILocation(line: 57, column: 6, scope: !3665)
!3683 = !DILocation(line: 58, column: 3, scope: !3676)
!3684 = !DILocation(line: 58, column: 17, scope: !3676)
!3685 = !DILocation(line: 60, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3676, file: !3666, line: 60, column: 7)
!3687 = !DILocation(line: 60, column: 7, scope: !3676)
!3688 = !DILocation(line: 61, column: 11, scope: !3686)
!3689 = !DILocation(line: 61, column: 4, scope: !3686)
!3690 = !DILocation(line: 63, column: 10, scope: !3676)
!3691 = !DILocation(line: 63, column: 9, scope: !3676)
!3692 = !DILocation(line: 63, column: 17, scope: !3676)
!3693 = !DILocation(line: 63, column: 15, scope: !3676)
!3694 = !DILocation(line: 63, column: 7, scope: !3676)
!3695 = !DILocation(line: 64, column: 10, scope: !3676)
!3696 = !DILocation(line: 64, column: 16, scope: !3676)
!3697 = !DILocation(line: 64, column: 29, scope: !3676)
!3698 = !DILocation(line: 64, column: 3, scope: !3676)
!3699 = !DILocation(line: 65, column: 2, scope: !3677)
!3700 = !DILocation(line: 67, column: 24, scope: !3665)
!3701 = !DILocation(line: 67, column: 30, scope: !3665)
!3702 = !DILocation(line: 67, column: 36, scope: !3665)
!3703 = !DILocation(line: 67, column: 9, scope: !3665)
!3704 = !DILocation(line: 67, column: 2, scope: !3665)
!3705 = !DILocation(line: 68, column: 1, scope: !3665)
!3706 = !DISubprogram(name: "freq_qos_add_request", scope: !54, file: !54, line: 304, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!46, !1757, !2519, !66, !478}
!3709 = !DISubprogram(name: "_printk", scope: !3710, file: !3710, line: 153, type: !3711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3710 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!46, !160, null}
!3713 = distinct !DISubprogram(name: "acpi_processor_ppc_exit", scope: !3, file: !3, line: 200, type: !2462, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3714)
!3714 = !{!3715, !3716, !3717, !3721, !3724}
!3715 = !DILocalVariable(name: "policy", arg: 1, scope: !3713, file: !3, line: 200, type: !2464)
!3716 = !DILocalVariable(name: "cpu", scope: !3713, file: !3, line: 202, type: !7)
!3717 = !DILocalVariable(name: "pr", scope: !3718, file: !3, line: 205, type: !1181)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 204, column: 42)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 204, column: 2)
!3720 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 204, column: 2)
!3721 = !DILocalVariable(name: "__vpp_verify", scope: !3722, file: !3, line: 205, type: !520)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 205, column: 31)
!3723 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 205, column: 31)
!3724 = !DILocalVariable(name: "__ptr", scope: !3725, file: !3, line: 205, type: !291)
!3725 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 205, column: 31)
!3726 = !DILocation(line: 200, column: 53, scope: !3713)
!3727 = !DILocation(line: 202, column: 2, scope: !3713)
!3728 = !DILocation(line: 202, column: 15, scope: !3713)
!3729 = !DILocation(line: 204, column: 2, scope: !3720)
!3730 = !DILocation(line: 204, column: 2, scope: !3719)
!3731 = !DILocation(line: 205, column: 3, scope: !3718)
!3732 = !DILocation(line: 205, column: 26, scope: !3718)
!3733 = !DILocation(line: 205, column: 31, scope: !3723)
!3734 = !DILocation(line: 205, column: 31, scope: !3722)
!3735 = !DILocation(line: 205, column: 31, scope: !3725)
!3736 = !DILocation(line: 205, column: 31, scope: !3718)
!3737 = !DILocation(line: 207, column: 7, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 207, column: 7)
!3739 = !DILocation(line: 207, column: 7, scope: !3718)
!3740 = !DILocation(line: 208, column: 29, scope: !3738)
!3741 = !DILocation(line: 208, column: 33, scope: !3738)
!3742 = !DILocation(line: 208, column: 4, scope: !3738)
!3743 = !DILocation(line: 209, column: 2, scope: !3719)
!3744 = !DILocation(line: 209, column: 2, scope: !3718)
!3745 = distinct !{!3745, !3729, !3746, !3662, !3663}
!3746 = !DILocation(line: 209, column: 2, scope: !3720)
!3747 = !DILocation(line: 210, column: 1, scope: !3713)
!3748 = !DISubprogram(name: "freq_qos_remove_request", scope: !54, file: !54, line: 308, type: !3749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!46, !2519}
!3751 = distinct !DISubprogram(name: "acpi_processor_get_performance_info", scope: !3, file: !3, line: 411, type: !1324, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DILocalVariable(name: "pr", arg: 1, scope: !3751, file: !3, line: 411, type: !1181)
!3754 = !DILocalVariable(name: "result", scope: !3751, file: !3, line: 413, type: !46)
!3755 = !DILabel(scope: !3751, name: "update_bios", file: !3, line: 442)
!3756 = !DILocation(line: 411, column: 64, scope: !3751)
!3757 = !DILocation(line: 413, column: 2, scope: !3751)
!3758 = !DILocation(line: 413, column: 6, scope: !3751)
!3759 = !DILocation(line: 415, column: 7, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 415, column: 6)
!3761 = !DILocation(line: 415, column: 10, scope: !3760)
!3762 = !DILocation(line: 415, column: 14, scope: !3760)
!3763 = !DILocation(line: 415, column: 18, scope: !3760)
!3764 = !DILocation(line: 415, column: 30, scope: !3760)
!3765 = !DILocation(line: 415, column: 34, scope: !3760)
!3766 = !DILocation(line: 415, column: 38, scope: !3760)
!3767 = !DILocation(line: 415, column: 6, scope: !3751)
!3768 = !DILocation(line: 416, column: 3, scope: !3760)
!3769 = !DILocation(line: 418, column: 23, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 418, column: 6)
!3771 = !DILocation(line: 418, column: 27, scope: !3770)
!3772 = !DILocation(line: 418, column: 7, scope: !3770)
!3773 = !DILocation(line: 418, column: 6, scope: !3751)
!3774 = !DILocation(line: 419, column: 3, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 419, column: 3)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 419, column: 3)
!3777 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 418, column: 44)
!3778 = !DILocation(line: 419, column: 3, scope: !3776)
!3779 = !DILocation(line: 421, column: 3, scope: !3777)
!3780 = !DILocation(line: 424, column: 50, scope: !3751)
!3781 = !DILocation(line: 424, column: 11, scope: !3751)
!3782 = !DILocation(line: 424, column: 9, scope: !3751)
!3783 = !DILocation(line: 425, column: 6, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 425, column: 6)
!3785 = !DILocation(line: 425, column: 6, scope: !3751)
!3786 = !DILocation(line: 426, column: 3, scope: !3784)
!3787 = !DILocation(line: 428, column: 49, scope: !3751)
!3788 = !DILocation(line: 428, column: 11, scope: !3751)
!3789 = !DILocation(line: 428, column: 9, scope: !3751)
!3790 = !DILocation(line: 429, column: 6, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 429, column: 6)
!3792 = !DILocation(line: 429, column: 6, scope: !3751)
!3793 = !DILocation(line: 430, column: 3, scope: !3791)
!3794 = !DILocation(line: 433, column: 6, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 433, column: 6)
!3796 = !DILocation(line: 433, column: 17, scope: !3795)
!3797 = !DILocation(line: 433, column: 6, scope: !3751)
!3798 = !DILocation(line: 434, column: 46, scope: !3795)
!3799 = !DILocation(line: 434, column: 12, scope: !3795)
!3800 = !DILocation(line: 434, column: 10, scope: !3795)
!3801 = !DILocation(line: 434, column: 3, scope: !3795)
!3802 = !DILocation(line: 436, column: 9, scope: !3751)
!3803 = !DILocation(line: 436, column: 2, scope: !3751)
!3804 = !DILocation(line: 442, column: 2, scope: !3751)
!3805 = !DILocation(line: 444, column: 22, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 444, column: 6)
!3807 = !DILocation(line: 444, column: 26, scope: !3806)
!3808 = !DILocation(line: 444, column: 6, scope: !3806)
!3809 = !DILocation(line: 444, column: 6, scope: !3751)
!3810 = !DILocation(line: 445, column: 6, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 444, column: 43)
!3812 = !DILocation(line: 445, column: 6, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 445, column: 6)
!3814 = !DILocation(line: 446, column: 4, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 446, column: 4)
!3816 = !DILocation(line: 446, column: 4, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 446, column: 4)
!3818 = !DILocation(line: 446, column: 4, scope: !3813)
!3819 = !DILocation(line: 448, column: 2, scope: !3811)
!3820 = !DILocation(line: 450, column: 9, scope: !3751)
!3821 = !DILocation(line: 450, column: 2, scope: !3751)
!3822 = !DILocation(line: 451, column: 1, scope: !3751)
!3823 = !DISubprogram(name: "acpi_has_method", scope: !3824, file: !3824, line: 42, type: !3825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3824 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!598, !1186, !241}
!3827 = distinct !DISubprogram(name: "acpi_processor_get_performance_control", scope: !3, file: !3, line: 212, type: !1324, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3837, !3838, !3839}
!3829 = !DILocalVariable(name: "pr", arg: 1, scope: !3827, file: !3, line: 212, type: !1181)
!3830 = !DILocalVariable(name: "result", scope: !3827, file: !3, line: 214, type: !46)
!3831 = !DILocalVariable(name: "status", scope: !3827, file: !3, line: 215, type: !2034)
!3832 = !DILocalVariable(name: "buffer", scope: !3827, file: !3, line: 216, type: !3833)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !1187, line: 978, size: 128, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3833, file: !1187, line: 979, baseType: !2035, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3833, file: !1187, line: 980, baseType: !313, size: 64, offset: 64)
!3837 = !DILocalVariable(name: "pct", scope: !3827, file: !3, line: 217, type: !2039)
!3838 = !DILocalVariable(name: "obj", scope: !3827, file: !3, line: 218, type: !2040)
!3839 = !DILabel(scope: !3827, name: "end", file: !3, line: 264)
!3840 = !DILocation(line: 212, column: 74, scope: !3827)
!3841 = !DILocation(line: 214, column: 2, scope: !3827)
!3842 = !DILocation(line: 214, column: 6, scope: !3827)
!3843 = !DILocation(line: 215, column: 2, scope: !3827)
!3844 = !DILocation(line: 215, column: 14, scope: !3827)
!3845 = !DILocation(line: 216, column: 2, scope: !3827)
!3846 = !DILocation(line: 216, column: 21, scope: !3827)
!3847 = !DILocation(line: 217, column: 2, scope: !3827)
!3848 = !DILocation(line: 217, column: 21, scope: !3827)
!3849 = !DILocation(line: 218, column: 2, scope: !3827)
!3850 = !DILocation(line: 218, column: 20, scope: !3827)
!3851 = !DILocation(line: 220, column: 32, scope: !3827)
!3852 = !DILocation(line: 220, column: 36, scope: !3827)
!3853 = !DILocation(line: 220, column: 11, scope: !3827)
!3854 = !DILocation(line: 220, column: 9, scope: !3827)
!3855 = !DILocation(line: 221, column: 6, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 221, column: 6)
!3857 = !DILocation(line: 221, column: 6, scope: !3827)
!3858 = !DILocation(line: 222, column: 32, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 221, column: 28)
!3860 = !DILocation(line: 222, column: 36, scope: !3859)
!3861 = !DILocation(line: 222, column: 52, scope: !3859)
!3862 = !DILocation(line: 222, column: 3, scope: !3859)
!3863 = !DILocation(line: 223, column: 3, scope: !3859)
!3864 = !DILocation(line: 226, column: 36, scope: !3827)
!3865 = !DILocation(line: 226, column: 6, scope: !3827)
!3866 = !DILocation(line: 227, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 227, column: 6)
!3868 = !DILocation(line: 227, column: 11, scope: !3867)
!3869 = !DILocation(line: 227, column: 14, scope: !3867)
!3870 = !DILocation(line: 227, column: 19, scope: !3867)
!3871 = !DILocation(line: 227, column: 24, scope: !3867)
!3872 = !DILocation(line: 227, column: 45, scope: !3867)
!3873 = !DILocation(line: 227, column: 48, scope: !3867)
!3874 = !DILocation(line: 227, column: 61, scope: !3867)
!3875 = !DILocation(line: 227, column: 67, scope: !3867)
!3876 = !DILocation(line: 227, column: 6, scope: !3827)
!3877 = !DILocation(line: 228, column: 3, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 228, column: 3)
!3879 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 227, column: 73)
!3880 = !DILocation(line: 228, column: 3, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 228, column: 3)
!3882 = !DILocation(line: 229, column: 10, scope: !3879)
!3883 = !DILocation(line: 230, column: 3, scope: !3879)
!3884 = !DILocation(line: 237, column: 8, scope: !3827)
!3885 = !DILocation(line: 237, column: 21, scope: !3827)
!3886 = !DILocation(line: 239, column: 18, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 239, column: 6)
!3888 = !DILocation(line: 239, column: 7, scope: !3887)
!3889 = !DILocation(line: 239, column: 26, scope: !3887)
!3890 = !DILocation(line: 239, column: 33, scope: !3887)
!3891 = !DILocation(line: 239, column: 38, scope: !3887)
!3892 = !DILocation(line: 239, column: 58, scope: !3887)
!3893 = !DILocation(line: 240, column: 17, scope: !3887)
!3894 = !DILocation(line: 240, column: 6, scope: !3887)
!3895 = !DILocation(line: 240, column: 24, scope: !3887)
!3896 = !DILocation(line: 239, column: 6, scope: !3827)
!3897 = !DILocation(line: 241, column: 3, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 241, column: 3)
!3899 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 240, column: 60)
!3900 = !DILocation(line: 241, column: 3, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 241, column: 3)
!3902 = !DILocation(line: 242, column: 10, scope: !3899)
!3903 = !DILocation(line: 243, column: 3, scope: !3899)
!3904 = !DILocation(line: 245, column: 10, scope: !3827)
!3905 = !DILocation(line: 245, column: 14, scope: !3827)
!3906 = !DILocation(line: 245, column: 27, scope: !3827)
!3907 = !DILocation(line: 245, column: 56, scope: !3827)
!3908 = !DILocation(line: 245, column: 2, scope: !3827)
!3909 = !DILocation(line: 252, column: 8, scope: !3827)
!3910 = !DILocation(line: 252, column: 21, scope: !3827)
!3911 = !DILocation(line: 254, column: 18, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 254, column: 6)
!3913 = !DILocation(line: 254, column: 7, scope: !3912)
!3914 = !DILocation(line: 254, column: 26, scope: !3912)
!3915 = !DILocation(line: 254, column: 33, scope: !3912)
!3916 = !DILocation(line: 254, column: 38, scope: !3912)
!3917 = !DILocation(line: 254, column: 58, scope: !3912)
!3918 = !DILocation(line: 255, column: 17, scope: !3912)
!3919 = !DILocation(line: 255, column: 6, scope: !3912)
!3920 = !DILocation(line: 255, column: 24, scope: !3912)
!3921 = !DILocation(line: 254, column: 6, scope: !3827)
!3922 = !DILocation(line: 256, column: 3, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 256, column: 3)
!3924 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 255, column: 60)
!3925 = !DILocation(line: 256, column: 3, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 256, column: 3)
!3927 = !DILocation(line: 257, column: 10, scope: !3924)
!3928 = !DILocation(line: 258, column: 3, scope: !3924)
!3929 = !DILocation(line: 261, column: 10, scope: !3827)
!3930 = !DILocation(line: 261, column: 14, scope: !3827)
!3931 = !DILocation(line: 261, column: 27, scope: !3827)
!3932 = !DILocation(line: 261, column: 55, scope: !3827)
!3933 = !DILocation(line: 261, column: 2, scope: !3827)
!3934 = !DILocation(line: 264, column: 1, scope: !3827)
!3935 = !DILocation(line: 265, column: 15, scope: !3827)
!3936 = !DILocation(line: 265, column: 2, scope: !3827)
!3937 = !DILocation(line: 267, column: 9, scope: !3827)
!3938 = !DILocation(line: 267, column: 2, scope: !3827)
!3939 = !DILocation(line: 268, column: 1, scope: !3827)
!3940 = distinct !DISubprogram(name: "acpi_processor_get_performance_states", scope: !3, file: !3, line: 305, type: !1324, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3955}
!3942 = !DILocalVariable(name: "pr", arg: 1, scope: !3940, file: !3, line: 305, type: !1181)
!3943 = !DILocalVariable(name: "result", scope: !3940, file: !3, line: 307, type: !46)
!3944 = !DILocalVariable(name: "status", scope: !3940, file: !3, line: 308, type: !2034)
!3945 = !DILocalVariable(name: "buffer", scope: !3940, file: !3, line: 309, type: !3833)
!3946 = !DILocalVariable(name: "format", scope: !3940, file: !3, line: 310, type: !3833)
!3947 = !DILocalVariable(name: "state", scope: !3940, file: !3, line: 311, type: !3833)
!3948 = !DILocalVariable(name: "pss", scope: !3940, file: !3, line: 312, type: !2039)
!3949 = !DILocalVariable(name: "i", scope: !3940, file: !3, line: 313, type: !46)
!3950 = !DILocalVariable(name: "last_invalid", scope: !3940, file: !3, line: 314, type: !46)
!3951 = !DILocalVariable(name: "px", scope: !3952, file: !3, line: 344, type: !1268)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 342, column: 53)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 342, column: 2)
!3954 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 342, column: 2)
!3955 = !DILabel(scope: !3940, name: "end", file: !3, line: 405)
!3956 = !DILocation(line: 305, column: 73, scope: !3940)
!3957 = !DILocation(line: 307, column: 2, scope: !3940)
!3958 = !DILocation(line: 307, column: 6, scope: !3940)
!3959 = !DILocation(line: 308, column: 2, scope: !3940)
!3960 = !DILocation(line: 308, column: 14, scope: !3940)
!3961 = !DILocation(line: 309, column: 2, scope: !3940)
!3962 = !DILocation(line: 309, column: 21, scope: !3940)
!3963 = !DILocation(line: 310, column: 2, scope: !3940)
!3964 = !DILocation(line: 310, column: 21, scope: !3940)
!3965 = !DILocation(line: 311, column: 2, scope: !3940)
!3966 = !DILocation(line: 311, column: 21, scope: !3940)
!3967 = !DILocation(line: 312, column: 2, scope: !3940)
!3968 = !DILocation(line: 312, column: 21, scope: !3940)
!3969 = !DILocation(line: 313, column: 2, scope: !3940)
!3970 = !DILocation(line: 313, column: 6, scope: !3940)
!3971 = !DILocation(line: 314, column: 2, scope: !3940)
!3972 = !DILocation(line: 314, column: 6, scope: !3940)
!3973 = !DILocation(line: 316, column: 32, scope: !3940)
!3974 = !DILocation(line: 316, column: 36, scope: !3940)
!3975 = !DILocation(line: 316, column: 11, scope: !3940)
!3976 = !DILocation(line: 316, column: 9, scope: !3940)
!3977 = !DILocation(line: 317, column: 6, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 317, column: 6)
!3979 = !DILocation(line: 317, column: 6, scope: !3940)
!3980 = !DILocation(line: 318, column: 32, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 317, column: 28)
!3982 = !DILocation(line: 318, column: 36, scope: !3981)
!3983 = !DILocation(line: 318, column: 52, scope: !3981)
!3984 = !DILocation(line: 318, column: 3, scope: !3981)
!3985 = !DILocation(line: 319, column: 3, scope: !3981)
!3986 = !DILocation(line: 322, column: 15, scope: !3940)
!3987 = !DILocation(line: 322, column: 6, scope: !3940)
!3988 = !DILocation(line: 323, column: 7, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 323, column: 6)
!3990 = !DILocation(line: 323, column: 11, scope: !3989)
!3991 = !DILocation(line: 323, column: 14, scope: !3989)
!3992 = !DILocation(line: 323, column: 19, scope: !3989)
!3993 = !DILocation(line: 323, column: 24, scope: !3989)
!3994 = !DILocation(line: 323, column: 6, scope: !3940)
!3995 = !DILocation(line: 324, column: 3, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 324, column: 3)
!3997 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 323, column: 46)
!3998 = !DILocation(line: 324, column: 3, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 324, column: 3)
!4000 = !DILocation(line: 325, column: 10, scope: !3997)
!4001 = !DILocation(line: 326, column: 3, scope: !3997)
!4002 = !DILocation(line: 329, column: 2, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 329, column: 2)
!4004 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 329, column: 2)
!4005 = !DILocation(line: 329, column: 2, scope: !4004)
!4006 = !DILocation(line: 332, column: 33, scope: !3940)
!4007 = !DILocation(line: 332, column: 46, scope: !3940)
!4008 = !DILocation(line: 332, column: 2, scope: !3940)
!4009 = !DILocation(line: 332, column: 6, scope: !3940)
!4010 = !DILocation(line: 332, column: 19, scope: !3940)
!4011 = !DILocation(line: 332, column: 31, scope: !3940)
!4012 = !DILocation(line: 334, column: 20, scope: !3940)
!4013 = !DILocation(line: 334, column: 33, scope: !3940)
!4014 = !DILocation(line: 334, column: 6, scope: !3940)
!4015 = !DILocation(line: 333, column: 2, scope: !3940)
!4016 = !DILocation(line: 333, column: 6, scope: !3940)
!4017 = !DILocation(line: 333, column: 19, scope: !3940)
!4018 = !DILocation(line: 333, column: 26, scope: !3940)
!4019 = !DILocation(line: 337, column: 7, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 337, column: 6)
!4021 = !DILocation(line: 337, column: 11, scope: !4020)
!4022 = !DILocation(line: 337, column: 24, scope: !4020)
!4023 = !DILocation(line: 337, column: 6, scope: !3940)
!4024 = !DILocation(line: 338, column: 10, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 337, column: 32)
!4026 = !DILocation(line: 339, column: 3, scope: !4025)
!4027 = !DILocation(line: 342, column: 9, scope: !3954)
!4028 = !DILocation(line: 342, column: 7, scope: !3954)
!4029 = !DILocation(line: 342, column: 14, scope: !3953)
!4030 = !DILocation(line: 342, column: 18, scope: !3953)
!4031 = !DILocation(line: 342, column: 22, scope: !3953)
!4032 = !DILocation(line: 342, column: 35, scope: !3953)
!4033 = !DILocation(line: 342, column: 16, scope: !3953)
!4034 = !DILocation(line: 342, column: 2, scope: !3954)
!4035 = !DILocation(line: 344, column: 3, scope: !3952)
!4036 = !DILocation(line: 344, column: 29, scope: !3952)
!4037 = !DILocation(line: 344, column: 36, scope: !3952)
!4038 = !DILocation(line: 344, column: 40, scope: !3952)
!4039 = !DILocation(line: 344, column: 53, scope: !3952)
!4040 = !DILocation(line: 344, column: 60, scope: !3952)
!4041 = !DILocation(line: 346, column: 9, scope: !3952)
!4042 = !DILocation(line: 346, column: 16, scope: !3952)
!4043 = !DILocation(line: 347, column: 19, scope: !3952)
!4044 = !DILocation(line: 347, column: 9, scope: !3952)
!4045 = !DILocation(line: 347, column: 17, scope: !3952)
!4046 = !DILocation(line: 349, column: 3, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 349, column: 3)
!4048 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 349, column: 3)
!4049 = !DILocation(line: 349, column: 3, scope: !4048)
!4050 = !DILocation(line: 351, column: 35, scope: !3952)
!4051 = !DILocation(line: 351, column: 48, scope: !3952)
!4052 = !DILocation(line: 351, column: 57, scope: !3952)
!4053 = !DILocation(line: 351, column: 12, scope: !3952)
!4054 = !DILocation(line: 351, column: 10, scope: !3952)
!4055 = !DILocation(line: 353, column: 7, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 353, column: 7)
!4057 = !DILocation(line: 353, column: 7, scope: !3952)
!4058 = !DILocation(line: 354, column: 4, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 353, column: 29)
!4060 = !DILocation(line: 356, column: 11, scope: !4059)
!4061 = !DILocation(line: 357, column: 10, scope: !4059)
!4062 = !DILocation(line: 357, column: 14, scope: !4059)
!4063 = !DILocation(line: 357, column: 27, scope: !4059)
!4064 = !DILocation(line: 357, column: 4, scope: !4059)
!4065 = !DILocation(line: 358, column: 4, scope: !4059)
!4066 = !DILocation(line: 361, column: 23, scope: !3952)
!4067 = !DILocation(line: 361, column: 27, scope: !3952)
!4068 = !DILocation(line: 361, column: 3, scope: !3952)
!4069 = !DILocation(line: 363, column: 3, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 363, column: 3)
!4071 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 363, column: 3)
!4072 = !DILocation(line: 363, column: 3, scope: !4071)
!4073 = !DILocation(line: 375, column: 8, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 375, column: 7)
!4075 = !DILocation(line: 375, column: 12, scope: !4074)
!4076 = !DILocation(line: 375, column: 27, scope: !4074)
!4077 = !DILocation(line: 376, column: 13, scope: !4074)
!4078 = !DILocation(line: 376, column: 17, scope: !4074)
!4079 = !DILocation(line: 376, column: 32, scope: !4074)
!4080 = !DILocation(line: 376, column: 7, scope: !4074)
!4081 = !DILocation(line: 376, column: 43, scope: !4074)
!4082 = !DILocation(line: 376, column: 47, scope: !4074)
!4083 = !DILocation(line: 376, column: 62, scope: !4074)
!4084 = !DILocation(line: 376, column: 40, scope: !4074)
!4085 = !DILocation(line: 375, column: 7, scope: !3952)
!4086 = !DILocation(line: 377, column: 4, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 377, column: 4)
!4088 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 376, column: 70)
!4089 = !DILocation(line: 377, column: 4, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 377, column: 4)
!4091 = !DILocation(line: 380, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 380, column: 8)
!4093 = !DILocation(line: 380, column: 21, scope: !4092)
!4094 = !DILocation(line: 380, column: 8, scope: !4088)
!4095 = !DILocation(line: 381, column: 20, scope: !4092)
!4096 = !DILocation(line: 381, column: 18, scope: !4092)
!4097 = !DILocation(line: 381, column: 5, scope: !4092)
!4098 = !DILocation(line: 382, column: 3, scope: !4088)
!4099 = !DILocation(line: 383, column: 8, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 383, column: 8)
!4101 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 382, column: 10)
!4102 = !DILocation(line: 383, column: 21, scope: !4100)
!4103 = !DILocation(line: 383, column: 8, scope: !4101)
!4104 = !DILocation(line: 387, column: 14, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 383, column: 28)
!4106 = !DILocation(line: 387, column: 18, scope: !4105)
!4107 = !DILocation(line: 387, column: 31, scope: !4105)
!4108 = !DILocation(line: 387, column: 38, scope: !4105)
!4109 = !DILocation(line: 388, column: 12, scope: !4105)
!4110 = !DILocation(line: 387, column: 5, scope: !4105)
!4111 = !DILocation(line: 389, column: 5, scope: !4105)
!4112 = !DILocation(line: 390, column: 4, scope: !4105)
!4113 = !DILocation(line: 392, column: 2, scope: !3953)
!4114 = !DILocation(line: 392, column: 2, scope: !3952)
!4115 = !DILocation(line: 342, column: 49, scope: !3953)
!4116 = !DILocation(line: 342, column: 2, scope: !3953)
!4117 = distinct !{!4117, !4034, !4118, !3662, !3663}
!4118 = !DILocation(line: 392, column: 2, scope: !3954)
!4119 = !DILocation(line: 394, column: 6, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 394, column: 6)
!4121 = !DILocation(line: 394, column: 19, scope: !4120)
!4122 = !DILocation(line: 394, column: 6, scope: !3940)
!4123 = !DILocation(line: 395, column: 3, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 395, column: 3)
!4125 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 394, column: 25)
!4126 = !DILocation(line: 395, column: 3, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 395, column: 3)
!4128 = !DILocation(line: 397, column: 10, scope: !4125)
!4129 = !DILocation(line: 398, column: 9, scope: !4125)
!4130 = !DILocation(line: 398, column: 13, scope: !4125)
!4131 = !DILocation(line: 398, column: 26, scope: !4125)
!4132 = !DILocation(line: 398, column: 3, scope: !4125)
!4133 = !DILocation(line: 399, column: 3, scope: !4125)
!4134 = !DILocation(line: 399, column: 7, scope: !4125)
!4135 = !DILocation(line: 399, column: 20, scope: !4125)
!4136 = !DILocation(line: 399, column: 27, scope: !4125)
!4137 = !DILocation(line: 400, column: 2, scope: !4125)
!4138 = !DILocation(line: 402, column: 6, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 402, column: 6)
!4140 = !DILocation(line: 402, column: 19, scope: !4139)
!4141 = !DILocation(line: 402, column: 6, scope: !3940)
!4142 = !DILocation(line: 403, column: 34, scope: !4139)
!4143 = !DILocation(line: 403, column: 3, scope: !4139)
!4144 = !DILocation(line: 403, column: 7, scope: !4139)
!4145 = !DILocation(line: 403, column: 20, scope: !4139)
!4146 = !DILocation(line: 403, column: 32, scope: !4139)
!4147 = !DILocation(line: 402, column: 21, scope: !4139)
!4148 = !DILocation(line: 405, column: 1, scope: !3940)
!4149 = !DILocation(line: 406, column: 15, scope: !3940)
!4150 = !DILocation(line: 406, column: 2, scope: !3940)
!4151 = !DILocation(line: 408, column: 9, scope: !3940)
!4152 = !DILocation(line: 408, column: 2, scope: !3940)
!4153 = !DILocation(line: 409, column: 1, scope: !3940)
!4154 = distinct !DISubprogram(name: "arch_test_bit", scope: !4155, file: !4155, line: 237, type: !4156, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4161)
!4155 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!598, !291, !4158}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4160)
!4160 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !291)
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "nr", arg: 1, scope: !4154, file: !4155, line: 237, type: !291)
!4163 = !DILocalVariable(name: "addr", arg: 2, scope: !4154, file: !4155, line: 237, type: !4158)
!4164 = !DILocation(line: 237, column: 29, scope: !4154)
!4165 = !DILocation(line: 237, column: 63, scope: !4154)
!4166 = !DILocation(line: 239, column: 30, scope: !4154)
!4167 = !DILocation(line: 239, column: 9, scope: !4154)
!4168 = !DILocation(line: 239, column: 54, scope: !4154)
!4169 = !DILocation(line: 239, column: 58, scope: !4154)
!4170 = !DILocation(line: 239, column: 36, scope: !4154)
!4171 = !DILocation(line: 240, column: 26, scope: !4154)
!4172 = !DILocation(line: 240, column: 30, scope: !4154)
!4173 = !DILocation(line: 240, column: 8, scope: !4154)
!4174 = !DILocation(line: 239, column: 2, scope: !4154)
!4175 = distinct !DISubprogram(name: "acpi_processor_pstate_control", scope: !3, file: !3, line: 454, type: !936, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4176)
!4176 = !{!4177}
!4177 = !DILocalVariable(name: "status", scope: !4175, file: !3, line: 456, type: !2034)
!4178 = !DILocation(line: 456, column: 2, scope: !4175)
!4179 = !DILocation(line: 456, column: 14, scope: !4175)
!4180 = !DILocation(line: 458, column: 21, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 458, column: 6)
!4182 = !DILocation(line: 458, column: 7, scope: !4181)
!4183 = !DILocation(line: 458, column: 33, scope: !4181)
!4184 = !DILocation(line: 458, column: 51, scope: !4181)
!4185 = !DILocation(line: 458, column: 37, scope: !4181)
!4186 = !DILocation(line: 458, column: 6, scope: !4175)
!4187 = !DILocation(line: 459, column: 3, scope: !4181)
!4188 = !DILocation(line: 461, column: 2, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 461, column: 2)
!4190 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 461, column: 2)
!4191 = !DILocation(line: 461, column: 2, scope: !4190)
!4192 = !DILocation(line: 464, column: 44, scope: !4175)
!4193 = !DILocation(line: 464, column: 30, scope: !4175)
!4194 = !DILocation(line: 465, column: 28, scope: !4175)
!4195 = !DILocation(line: 465, column: 9, scope: !4175)
!4196 = !DILocation(line: 464, column: 11, scope: !4175)
!4197 = !DILocation(line: 464, column: 9, scope: !4175)
!4198 = !DILocation(line: 466, column: 6, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 466, column: 6)
!4200 = !DILocation(line: 466, column: 6, scope: !4175)
!4201 = !DILocation(line: 467, column: 3, scope: !4199)
!4202 = !DILocation(line: 469, column: 2, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 469, column: 2)
!4204 = !DILocation(line: 469, column: 2, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 469, column: 2)
!4206 = !DILocation(line: 472, column: 2, scope: !4175)
!4207 = !DILocation(line: 473, column: 1, scope: !4175)
!4208 = !DISubprogram(name: "acpi_os_write_port", scope: !4209, file: !4209, line: 271, type: !4210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4209 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!2034, !2080, !1082, !1082}
!4212 = !DISubprogram(name: "acpi_format_exception", scope: !4213, file: !4213, line: 430, type: !4214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4213 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!160, !2034}
!4216 = !DILocation(line: 475, column: 46, scope: !2133)
!4217 = !DILocation(line: 478, column: 2, scope: !2133)
!4218 = !DILocation(line: 478, column: 6, scope: !2133)
!4219 = !DILocation(line: 480, column: 7, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 480, column: 6)
!4221 = !{i8 0, i8 2}
!4222 = !DILocation(line: 480, column: 6, scope: !2133)
!4223 = !DILocation(line: 481, column: 3, scope: !4220)
!4224 = !DILocation(line: 483, column: 22, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 483, column: 6)
!4226 = !DILocation(line: 483, column: 7, scope: !4225)
!4227 = !DILocation(line: 483, column: 6, scope: !2133)
!4228 = !DILocation(line: 484, column: 3, scope: !4225)
!4229 = !DILocation(line: 491, column: 6, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 491, column: 6)
!4231 = !DILocation(line: 491, column: 14, scope: !4230)
!4232 = !DILocation(line: 491, column: 6, scope: !2133)
!4233 = !DILocation(line: 492, column: 7, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 492, column: 7)
!4235 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 491, column: 20)
!4236 = !DILocation(line: 492, column: 15, scope: !4234)
!4237 = !DILocation(line: 492, column: 7, scope: !4235)
!4238 = !DILocation(line: 493, column: 13, scope: !4234)
!4239 = !DILocation(line: 493, column: 11, scope: !4234)
!4240 = !DILocation(line: 493, column: 4, scope: !4234)
!4241 = !DILocation(line: 495, column: 3, scope: !4235)
!4242 = !DILocation(line: 498, column: 11, scope: !2133)
!4243 = !DILocation(line: 498, column: 9, scope: !2133)
!4244 = !DILocation(line: 499, column: 6, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 499, column: 6)
!4246 = !DILocation(line: 499, column: 13, scope: !4245)
!4247 = !DILocation(line: 499, column: 6, scope: !2133)
!4248 = !DILocation(line: 500, column: 7, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 500, column: 7)
!4250 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 499, column: 19)
!4251 = !DILocation(line: 500, column: 7, scope: !4250)
!4252 = !DILocation(line: 501, column: 14, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 500, column: 15)
!4254 = !DILocation(line: 501, column: 12, scope: !4253)
!4255 = !DILocation(line: 502, column: 3, scope: !4253)
!4256 = !DILocation(line: 503, column: 4, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 503, column: 4)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 503, column: 4)
!4259 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 502, column: 10)
!4260 = !DILocation(line: 503, column: 4, scope: !4258)
!4261 = !DILocation(line: 504, column: 12, scope: !4259)
!4262 = !DILocation(line: 506, column: 3, scope: !4250)
!4263 = !DILocation(line: 509, column: 10, scope: !2133)
!4264 = !DILocation(line: 514, column: 6, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 514, column: 6)
!4266 = !DILocation(line: 514, column: 6, scope: !2133)
!4267 = !DILocation(line: 515, column: 3, scope: !4265)
!4268 = !DILocation(line: 517, column: 1, scope: !2133)
!4269 = !DILocation(line: 518, column: 13, scope: !2133)
!4270 = !DILocation(line: 518, column: 2, scope: !2133)
!4271 = !DILocation(line: 519, column: 9, scope: !2133)
!4272 = !DILocation(line: 519, column: 2, scope: !2133)
!4273 = !DILocation(line: 520, column: 1, scope: !2133)
!4274 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !4275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!598, !136}
!4277 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4278 = distinct !DISubprogram(name: "acpi_processor_get_psd", scope: !3, file: !3, line: 523, type: !4279, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4282)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!46, !1186, !4281}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291}
!4283 = !DILocalVariable(name: "handle", arg: 1, scope: !4278, file: !3, line: 523, type: !1186)
!4284 = !DILocalVariable(name: "pdomain", arg: 2, scope: !4278, file: !3, line: 523, type: !4281)
!4285 = !DILocalVariable(name: "result", scope: !4278, file: !3, line: 525, type: !46)
!4286 = !DILocalVariable(name: "status", scope: !4278, file: !3, line: 526, type: !2034)
!4287 = !DILocalVariable(name: "buffer", scope: !4278, file: !3, line: 527, type: !3833)
!4288 = !DILocalVariable(name: "format", scope: !4278, file: !3, line: 528, type: !3833)
!4289 = !DILocalVariable(name: "state", scope: !4278, file: !3, line: 529, type: !3833)
!4290 = !DILocalVariable(name: "psd", scope: !4278, file: !3, line: 530, type: !2039)
!4291 = !DILabel(scope: !4278, name: "end", file: !3, line: 579)
!4292 = !DILocation(line: 523, column: 40, scope: !4278)
!4293 = !DILocation(line: 523, column: 73, scope: !4278)
!4294 = !DILocation(line: 525, column: 2, scope: !4278)
!4295 = !DILocation(line: 525, column: 6, scope: !4278)
!4296 = !DILocation(line: 526, column: 2, scope: !4278)
!4297 = !DILocation(line: 526, column: 14, scope: !4278)
!4298 = !DILocation(line: 527, column: 2, scope: !4278)
!4299 = !DILocation(line: 527, column: 21, scope: !4278)
!4300 = !DILocation(line: 528, column: 2, scope: !4278)
!4301 = !DILocation(line: 528, column: 21, scope: !4278)
!4302 = !DILocation(line: 529, column: 2, scope: !4278)
!4303 = !DILocation(line: 529, column: 21, scope: !4278)
!4304 = !DILocation(line: 530, column: 2, scope: !4278)
!4305 = !DILocation(line: 530, column: 22, scope: !4278)
!4306 = !DILocation(line: 532, column: 32, scope: !4278)
!4307 = !DILocation(line: 532, column: 11, scope: !4278)
!4308 = !DILocation(line: 532, column: 9, scope: !4278)
!4309 = !DILocation(line: 533, column: 6, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 533, column: 6)
!4311 = !DILocation(line: 533, column: 6, scope: !4278)
!4312 = !DILocation(line: 534, column: 3, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 533, column: 28)
!4314 = !DILocation(line: 537, column: 15, scope: !4278)
!4315 = !DILocation(line: 537, column: 6, scope: !4278)
!4316 = !DILocation(line: 538, column: 7, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 538, column: 6)
!4318 = !DILocation(line: 538, column: 11, scope: !4317)
!4319 = !DILocation(line: 538, column: 14, scope: !4317)
!4320 = !DILocation(line: 538, column: 19, scope: !4317)
!4321 = !DILocation(line: 538, column: 24, scope: !4317)
!4322 = !DILocation(line: 538, column: 6, scope: !4278)
!4323 = !DILocation(line: 539, column: 3, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 539, column: 3)
!4325 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 538, column: 46)
!4326 = !DILocation(line: 539, column: 3, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 539, column: 3)
!4328 = !DILocation(line: 540, column: 10, scope: !4325)
!4329 = !DILocation(line: 541, column: 3, scope: !4325)
!4330 = !DILocation(line: 544, column: 6, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 544, column: 6)
!4332 = !DILocation(line: 544, column: 19, scope: !4331)
!4333 = !DILocation(line: 544, column: 25, scope: !4331)
!4334 = !DILocation(line: 544, column: 6, scope: !4278)
!4335 = !DILocation(line: 545, column: 3, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 545, column: 3)
!4337 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 544, column: 31)
!4338 = !DILocation(line: 545, column: 3, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 545, column: 3)
!4340 = !DILocation(line: 546, column: 10, scope: !4337)
!4341 = !DILocation(line: 547, column: 3, scope: !4337)
!4342 = !DILocation(line: 550, column: 8, scope: !4278)
!4343 = !DILocation(line: 550, column: 15, scope: !4278)
!4344 = !DILocation(line: 551, column: 18, scope: !4278)
!4345 = !DILocation(line: 551, column: 8, scope: !4278)
!4346 = !DILocation(line: 551, column: 16, scope: !4278)
!4347 = !DILocation(line: 553, column: 34, scope: !4278)
!4348 = !DILocation(line: 553, column: 47, scope: !4278)
!4349 = !DILocation(line: 553, column: 11, scope: !4278)
!4350 = !DILocation(line: 553, column: 9, scope: !4278)
!4351 = !DILocation(line: 554, column: 6, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 554, column: 6)
!4353 = !DILocation(line: 554, column: 6, scope: !4278)
!4354 = !DILocation(line: 555, column: 3, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 555, column: 3)
!4356 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 554, column: 28)
!4357 = !DILocation(line: 555, column: 3, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 555, column: 3)
!4359 = !DILocation(line: 556, column: 10, scope: !4356)
!4360 = !DILocation(line: 557, column: 3, scope: !4356)
!4361 = !DILocation(line: 560, column: 6, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 560, column: 6)
!4363 = !DILocation(line: 560, column: 15, scope: !4362)
!4364 = !DILocation(line: 560, column: 27, scope: !4362)
!4365 = !DILocation(line: 560, column: 6, scope: !4278)
!4366 = !DILocation(line: 561, column: 3, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 561, column: 3)
!4368 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 560, column: 53)
!4369 = !DILocation(line: 561, column: 3, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 561, column: 3)
!4371 = !DILocation(line: 562, column: 10, scope: !4368)
!4372 = !DILocation(line: 563, column: 3, scope: !4368)
!4373 = !DILocation(line: 566, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 566, column: 6)
!4375 = !DILocation(line: 566, column: 15, scope: !4374)
!4376 = !DILocation(line: 566, column: 24, scope: !4374)
!4377 = !DILocation(line: 566, column: 6, scope: !4278)
!4378 = !DILocation(line: 567, column: 3, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 567, column: 3)
!4380 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 566, column: 51)
!4381 = !DILocation(line: 567, column: 3, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 567, column: 3)
!4383 = !DILocation(line: 568, column: 10, scope: !4380)
!4384 = !DILocation(line: 569, column: 3, scope: !4380)
!4385 = !DILocation(line: 572, column: 6, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 572, column: 6)
!4387 = !DILocation(line: 572, column: 15, scope: !4386)
!4388 = !DILocation(line: 572, column: 26, scope: !4386)
!4389 = !DILocation(line: 572, column: 54, scope: !4386)
!4390 = !DILocation(line: 573, column: 6, scope: !4386)
!4391 = !DILocation(line: 573, column: 15, scope: !4386)
!4392 = !DILocation(line: 573, column: 26, scope: !4386)
!4393 = !DILocation(line: 573, column: 54, scope: !4386)
!4394 = !DILocation(line: 574, column: 6, scope: !4386)
!4395 = !DILocation(line: 574, column: 15, scope: !4386)
!4396 = !DILocation(line: 574, column: 26, scope: !4386)
!4397 = !DILocation(line: 572, column: 6, scope: !4278)
!4398 = !DILocation(line: 575, column: 3, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 575, column: 3)
!4400 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 574, column: 55)
!4401 = !DILocation(line: 575, column: 3, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 575, column: 3)
!4403 = !DILocation(line: 576, column: 10, scope: !4400)
!4404 = !DILocation(line: 577, column: 3, scope: !4400)
!4405 = !DILocation(line: 574, column: 29, scope: !4386)
!4406 = !DILocation(line: 579, column: 1, scope: !4278)
!4407 = !DILocation(line: 580, column: 15, scope: !4278)
!4408 = !DILocation(line: 580, column: 2, scope: !4278)
!4409 = !DILocation(line: 581, column: 9, scope: !4278)
!4410 = !DILocation(line: 581, column: 2, scope: !4278)
!4411 = !DILocation(line: 582, column: 1, scope: !4278)
!4412 = !DISubprogram(name: "acpi_evaluate_object", scope: !4213, file: !4213, line: 549, type: !4413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!2034, !1186, !4415, !4416, !4421}
!4415 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1187, line: 423, baseType: !241)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !1187, line: 956, size: 128, elements: !4418)
!4418 = !{!4419, !4420}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4417, file: !1187, line: 957, baseType: !1082, size: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4417, file: !1187, line: 958, baseType: !2039, size: 64, offset: 64)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!4422 = !DISubprogram(name: "acpi_extract_package", scope: !3824, file: !3824, line: 24, type: !4423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!2034, !2039, !4421, !4421}
!4425 = !DISubprogram(name: "kfree", scope: !126, file: !126, line: 227, type: !4426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !520}
!4428 = distinct !DISubprogram(name: "acpi_processor_preregister_performance", scope: !3, file: !3, line: 585, type: !4429, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!46, !1250}
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4448, !4450, !4454, !4456, !4462, !4464, !4467, !4469, !4475, !4477, !4483, !4485, !4491, !4493, !4494, !4500, !4502}
!4432 = !DILocalVariable(name: "performance", arg: 1, scope: !4428, file: !3, line: 586, type: !1250)
!4433 = !DILocalVariable(name: "count_target", scope: !4428, file: !3, line: 588, type: !46)
!4434 = !DILocalVariable(name: "retval", scope: !4428, file: !3, line: 589, type: !46)
!4435 = !DILocalVariable(name: "i", scope: !4428, file: !3, line: 590, type: !7)
!4436 = !DILocalVariable(name: "j", scope: !4428, file: !3, line: 590, type: !7)
!4437 = !DILocalVariable(name: "covered_cpus", scope: !4428, file: !3, line: 591, type: !1286)
!4438 = !DILocalVariable(name: "pr", scope: !4428, file: !3, line: 592, type: !1181)
!4439 = !DILocalVariable(name: "pdomain", scope: !4428, file: !3, line: 593, type: !4281)
!4440 = !DILocalVariable(name: "match_pr", scope: !4428, file: !3, line: 594, type: !1181)
!4441 = !DILocalVariable(name: "match_pdomain", scope: !4428, file: !3, line: 595, type: !4281)
!4442 = !DILocalVariable(name: "__vpp_verify", scope: !4443, file: !3, line: 607, type: !520)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 607, column: 8)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 607, column: 8)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 606, column: 27)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 606, column: 2)
!4447 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 606, column: 2)
!4448 = !DILocalVariable(name: "__ptr", scope: !4449, file: !3, line: 607, type: !291)
!4449 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 607, column: 8)
!4450 = !DILocalVariable(name: "__vpp_verify", scope: !4451, file: !3, line: 618, type: !520)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 618, column: 24)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 618, column: 24)
!4453 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 618, column: 7)
!4454 = !DILocalVariable(name: "__ptr", scope: !4455, file: !3, line: 618, type: !291)
!4455 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 618, column: 24)
!4456 = !DILocalVariable(name: "__vpp_verify", scope: !4457, file: !3, line: 626, type: !520)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 626, column: 8)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 626, column: 8)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 625, column: 27)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 625, column: 2)
!4461 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 625, column: 2)
!4462 = !DILocalVariable(name: "__ptr", scope: !4463, file: !3, line: 626, type: !291)
!4463 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 626, column: 8)
!4464 = !DILocalVariable(name: "__vpp_verify", scope: !4465, file: !3, line: 630, type: !520)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 630, column: 21)
!4466 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 630, column: 21)
!4467 = !DILocalVariable(name: "__ptr", scope: !4468, file: !3, line: 630, type: !291)
!4468 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 630, column: 21)
!4469 = !DILocalVariable(name: "__vpp_verify", scope: !4470, file: !3, line: 645, type: !520)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 645, column: 8)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 645, column: 8)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 644, column: 27)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 644, column: 2)
!4474 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 644, column: 2)
!4475 = !DILocalVariable(name: "__ptr", scope: !4476, file: !3, line: 645, type: !291)
!4476 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 645, column: 8)
!4477 = !DILocalVariable(name: "__vpp_verify", scope: !4478, file: !3, line: 671, type: !520)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 671, column: 15)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 671, column: 15)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 667, column: 28)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 667, column: 3)
!4482 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 667, column: 3)
!4483 = !DILocalVariable(name: "__ptr", scope: !4484, file: !3, line: 671, type: !291)
!4484 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 671, column: 15)
!4485 = !DILocalVariable(name: "__vpp_verify", scope: !4486, file: !3, line: 699, type: !520)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 699, column: 15)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 699, column: 15)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 695, column: 28)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 695, column: 3)
!4490 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 695, column: 3)
!4491 = !DILocalVariable(name: "__ptr", scope: !4492, file: !3, line: 699, type: !291)
!4492 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 699, column: 15)
!4493 = !DILabel(scope: !4428, name: "err_ret", file: !3, line: 714)
!4494 = !DILocalVariable(name: "__vpp_verify", scope: !4495, file: !3, line: 716, type: !520)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 716, column: 8)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 716, column: 8)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 715, column: 27)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 715, column: 2)
!4499 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 715, column: 2)
!4500 = !DILocalVariable(name: "__ptr", scope: !4501, file: !3, line: 716, type: !291)
!4501 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 716, column: 8)
!4502 = !DILabel(scope: !4428, name: "err_out", file: !3, line: 729)
!4503 = !DILocation(line: 586, column: 47, scope: !4428)
!4504 = !DILocation(line: 588, column: 2, scope: !4428)
!4505 = !DILocation(line: 588, column: 6, scope: !4428)
!4506 = !DILocation(line: 589, column: 2, scope: !4428)
!4507 = !DILocation(line: 589, column: 6, scope: !4428)
!4508 = !DILocation(line: 590, column: 2, scope: !4428)
!4509 = !DILocation(line: 590, column: 15, scope: !4428)
!4510 = !DILocation(line: 590, column: 18, scope: !4428)
!4511 = !DILocation(line: 591, column: 2, scope: !4428)
!4512 = !DILocation(line: 591, column: 16, scope: !4428)
!4513 = !DILocation(line: 592, column: 2, scope: !4428)
!4514 = !DILocation(line: 592, column: 25, scope: !4428)
!4515 = !DILocation(line: 593, column: 2, scope: !4428)
!4516 = !DILocation(line: 593, column: 27, scope: !4428)
!4517 = !DILocation(line: 594, column: 2, scope: !4428)
!4518 = !DILocation(line: 594, column: 25, scope: !4428)
!4519 = !DILocation(line: 595, column: 2, scope: !4428)
!4520 = !DILocation(line: 595, column: 27, scope: !4428)
!4521 = !DILocation(line: 597, column: 7, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 597, column: 6)
!4523 = !DILocation(line: 597, column: 6, scope: !4428)
!4524 = !DILocation(line: 598, column: 3, scope: !4522)
!4525 = !DILocation(line: 600, column: 2, scope: !4428)
!4526 = !DILocation(line: 606, column: 2, scope: !4447)
!4527 = !DILocation(line: 606, column: 2, scope: !4446)
!4528 = !DILocation(line: 607, column: 8, scope: !4444)
!4529 = !DILocation(line: 607, column: 8, scope: !4443)
!4530 = !DILocation(line: 607, column: 8, scope: !4449)
!4531 = !DILocation(line: 607, column: 8, scope: !4445)
!4532 = !DILocation(line: 607, column: 6, scope: !4445)
!4533 = !DILocation(line: 608, column: 8, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 608, column: 7)
!4535 = !DILocation(line: 608, column: 7, scope: !4445)
!4536 = !DILocation(line: 610, column: 4, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 608, column: 12)
!4538 = !DILocation(line: 613, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 613, column: 7)
!4540 = !DILocation(line: 613, column: 11, scope: !4539)
!4541 = !DILocation(line: 613, column: 7, scope: !4445)
!4542 = !DILocation(line: 614, column: 11, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 613, column: 24)
!4544 = !DILocation(line: 615, column: 4, scope: !4543)
!4545 = !DILocation(line: 618, column: 8, scope: !4453)
!4546 = !DILocation(line: 618, column: 20, scope: !4453)
!4547 = !DILocation(line: 618, column: 24, scope: !4452)
!4548 = !DILocation(line: 618, column: 24, scope: !4451)
!4549 = !DILocation(line: 618, column: 24, scope: !4455)
!4550 = !DILocation(line: 618, column: 24, scope: !4453)
!4551 = !DILocation(line: 618, column: 7, scope: !4445)
!4552 = !DILocation(line: 619, column: 11, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 618, column: 53)
!4554 = !DILocation(line: 620, column: 4, scope: !4553)
!4555 = !DILocation(line: 622, column: 2, scope: !4445)
!4556 = distinct !{!4556, !4526, !4557, !3662, !3663}
!4557 = !DILocation(line: 622, column: 2, scope: !4447)
!4558 = !DILocation(line: 625, column: 2, scope: !4461)
!4559 = !DILocation(line: 625, column: 2, scope: !4460)
!4560 = !DILocation(line: 626, column: 8, scope: !4458)
!4561 = !DILocation(line: 626, column: 8, scope: !4457)
!4562 = !DILocation(line: 626, column: 8, scope: !4463)
!4563 = !DILocation(line: 626, column: 8, scope: !4459)
!4564 = !DILocation(line: 626, column: 6, scope: !4459)
!4565 = !DILocation(line: 627, column: 8, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 627, column: 7)
!4567 = !DILocation(line: 627, column: 7, scope: !4459)
!4568 = !DILocation(line: 628, column: 4, scope: !4566)
!4569 = !DILocation(line: 630, column: 21, scope: !4466)
!4570 = !DILocation(line: 630, column: 21, scope: !4465)
!4571 = !DILocation(line: 630, column: 21, scope: !4468)
!4572 = !DILocation(line: 630, column: 3, scope: !4459)
!4573 = !DILocation(line: 630, column: 7, scope: !4459)
!4574 = !DILocation(line: 630, column: 19, scope: !4459)
!4575 = !DILocation(line: 631, column: 15, scope: !4459)
!4576 = !DILocation(line: 631, column: 19, scope: !4459)
!4577 = !DILocation(line: 631, column: 32, scope: !4459)
!4578 = !DILocation(line: 631, column: 11, scope: !4459)
!4579 = !DILocation(line: 632, column: 30, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 632, column: 7)
!4581 = !DILocation(line: 632, column: 34, scope: !4580)
!4582 = !DILocation(line: 632, column: 42, scope: !4580)
!4583 = !DILocation(line: 632, column: 7, scope: !4580)
!4584 = !DILocation(line: 632, column: 7, scope: !4459)
!4585 = !DILocation(line: 633, column: 11, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 632, column: 52)
!4587 = !DILocation(line: 634, column: 4, scope: !4586)
!4588 = !DILocation(line: 636, column: 2, scope: !4459)
!4589 = distinct !{!4589, !4558, !4590, !3662, !3663}
!4590 = !DILocation(line: 636, column: 2, scope: !4461)
!4591 = !DILocation(line: 637, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 637, column: 6)
!4593 = !DILocation(line: 637, column: 6, scope: !4428)
!4594 = !DILocation(line: 638, column: 3, scope: !4592)
!4595 = !DILocation(line: 644, column: 2, scope: !4474)
!4596 = !DILocation(line: 644, column: 2, scope: !4473)
!4597 = !DILocation(line: 645, column: 8, scope: !4471)
!4598 = !DILocation(line: 645, column: 8, scope: !4470)
!4599 = !DILocation(line: 645, column: 8, scope: !4476)
!4600 = !DILocation(line: 645, column: 8, scope: !4472)
!4601 = !DILocation(line: 645, column: 6, scope: !4472)
!4602 = !DILocation(line: 646, column: 8, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 646, column: 7)
!4604 = !DILocation(line: 646, column: 7, scope: !4472)
!4605 = !DILocation(line: 647, column: 4, scope: !4603)
!4606 = !DILocation(line: 649, column: 24, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 649, column: 7)
!4608 = !DILocation(line: 649, column: 27, scope: !4607)
!4609 = !DILocation(line: 649, column: 7, scope: !4607)
!4610 = !DILocation(line: 649, column: 7, scope: !4472)
!4611 = !DILocation(line: 650, column: 4, scope: !4607)
!4612 = !DILocation(line: 652, column: 15, scope: !4472)
!4613 = !DILocation(line: 652, column: 19, scope: !4472)
!4614 = !DILocation(line: 652, column: 32, scope: !4472)
!4615 = !DILocation(line: 652, column: 11, scope: !4472)
!4616 = !DILocation(line: 653, column: 19, scope: !4472)
!4617 = !DILocation(line: 653, column: 22, scope: !4472)
!4618 = !DILocation(line: 653, column: 26, scope: !4472)
!4619 = !DILocation(line: 653, column: 39, scope: !4472)
!4620 = !DILocation(line: 653, column: 3, scope: !4472)
!4621 = !DILocation(line: 654, column: 19, scope: !4472)
!4622 = !DILocation(line: 654, column: 22, scope: !4472)
!4623 = !DILocation(line: 654, column: 3, scope: !4472)
!4624 = !DILocation(line: 655, column: 7, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 655, column: 7)
!4626 = !DILocation(line: 655, column: 16, scope: !4625)
!4627 = !DILocation(line: 655, column: 31, scope: !4625)
!4628 = !DILocation(line: 655, column: 7, scope: !4472)
!4629 = !DILocation(line: 656, column: 4, scope: !4625)
!4630 = !DILocation(line: 659, column: 18, scope: !4472)
!4631 = !DILocation(line: 659, column: 27, scope: !4472)
!4632 = !DILocation(line: 659, column: 16, scope: !4472)
!4633 = !DILocation(line: 660, column: 7, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 660, column: 7)
!4635 = !DILocation(line: 660, column: 16, scope: !4634)
!4636 = !DILocation(line: 660, column: 27, scope: !4634)
!4637 = !DILocation(line: 660, column: 7, scope: !4472)
!4638 = !DILocation(line: 661, column: 4, scope: !4634)
!4639 = !DILocation(line: 661, column: 8, scope: !4634)
!4640 = !DILocation(line: 661, column: 21, scope: !4634)
!4641 = !DILocation(line: 661, column: 33, scope: !4634)
!4642 = !DILocation(line: 662, column: 12, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 662, column: 12)
!4644 = !DILocation(line: 662, column: 21, scope: !4643)
!4645 = !DILocation(line: 662, column: 32, scope: !4643)
!4646 = !DILocation(line: 662, column: 12, scope: !4634)
!4647 = !DILocation(line: 663, column: 4, scope: !4643)
!4648 = !DILocation(line: 663, column: 8, scope: !4643)
!4649 = !DILocation(line: 663, column: 21, scope: !4643)
!4650 = !DILocation(line: 663, column: 33, scope: !4643)
!4651 = !DILocation(line: 664, column: 12, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 664, column: 12)
!4653 = !DILocation(line: 664, column: 21, scope: !4652)
!4654 = !DILocation(line: 664, column: 32, scope: !4652)
!4655 = !DILocation(line: 664, column: 12, scope: !4643)
!4656 = !DILocation(line: 665, column: 4, scope: !4652)
!4657 = !DILocation(line: 665, column: 8, scope: !4652)
!4658 = !DILocation(line: 665, column: 21, scope: !4652)
!4659 = !DILocation(line: 665, column: 33, scope: !4652)
!4660 = !DILocation(line: 667, column: 3, scope: !4482)
!4661 = !DILocation(line: 667, column: 3, scope: !4481)
!4662 = !DILocation(line: 668, column: 8, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 668, column: 8)
!4664 = !DILocation(line: 668, column: 13, scope: !4663)
!4665 = !DILocation(line: 668, column: 10, scope: !4663)
!4666 = !DILocation(line: 668, column: 8, scope: !4480)
!4667 = !DILocation(line: 669, column: 5, scope: !4663)
!4668 = !DILocation(line: 671, column: 15, scope: !4479)
!4669 = !DILocation(line: 671, column: 15, scope: !4478)
!4670 = !DILocation(line: 671, column: 15, scope: !4484)
!4671 = !DILocation(line: 671, column: 15, scope: !4480)
!4672 = !DILocation(line: 671, column: 13, scope: !4480)
!4673 = !DILocation(line: 672, column: 9, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 672, column: 8)
!4675 = !DILocation(line: 672, column: 8, scope: !4480)
!4676 = !DILocation(line: 673, column: 5, scope: !4674)
!4677 = !DILocation(line: 675, column: 22, scope: !4480)
!4678 = !DILocation(line: 675, column: 32, scope: !4480)
!4679 = !DILocation(line: 675, column: 45, scope: !4480)
!4680 = !DILocation(line: 675, column: 18, scope: !4480)
!4681 = !DILocation(line: 676, column: 8, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 676, column: 8)
!4683 = !DILocation(line: 676, column: 23, scope: !4682)
!4684 = !DILocation(line: 676, column: 33, scope: !4682)
!4685 = !DILocation(line: 676, column: 42, scope: !4682)
!4686 = !DILocation(line: 676, column: 30, scope: !4682)
!4687 = !DILocation(line: 676, column: 8, scope: !4480)
!4688 = !DILocation(line: 677, column: 5, scope: !4682)
!4689 = !DILocation(line: 681, column: 8, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 681, column: 8)
!4691 = !DILocation(line: 681, column: 23, scope: !4690)
!4692 = !DILocation(line: 681, column: 41, scope: !4690)
!4693 = !DILocation(line: 681, column: 38, scope: !4690)
!4694 = !DILocation(line: 681, column: 8, scope: !4480)
!4695 = !DILocation(line: 682, column: 12, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 681, column: 55)
!4697 = !DILocation(line: 683, column: 5, scope: !4696)
!4698 = !DILocation(line: 686, column: 8, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 686, column: 8)
!4700 = !DILocation(line: 686, column: 17, scope: !4699)
!4701 = !DILocation(line: 686, column: 31, scope: !4699)
!4702 = !DILocation(line: 686, column: 46, scope: !4699)
!4703 = !DILocation(line: 686, column: 28, scope: !4699)
!4704 = !DILocation(line: 686, column: 8, scope: !4480)
!4705 = !DILocation(line: 687, column: 12, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 686, column: 58)
!4707 = !DILocation(line: 688, column: 5, scope: !4706)
!4708 = !DILocation(line: 691, column: 20, scope: !4480)
!4709 = !DILocation(line: 691, column: 23, scope: !4480)
!4710 = !DILocation(line: 691, column: 4, scope: !4480)
!4711 = !DILocation(line: 692, column: 20, scope: !4480)
!4712 = !DILocation(line: 692, column: 23, scope: !4480)
!4713 = !DILocation(line: 692, column: 27, scope: !4480)
!4714 = !DILocation(line: 692, column: 40, scope: !4480)
!4715 = !DILocation(line: 692, column: 4, scope: !4480)
!4716 = !DILocation(line: 693, column: 3, scope: !4480)
!4717 = distinct !{!4717, !4660, !4718, !3662, !3663}
!4718 = !DILocation(line: 693, column: 3, scope: !4482)
!4719 = !DILocation(line: 695, column: 3, scope: !4490)
!4720 = !DILocation(line: 695, column: 3, scope: !4489)
!4721 = !DILocation(line: 696, column: 8, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 696, column: 8)
!4723 = !DILocation(line: 696, column: 13, scope: !4722)
!4724 = !DILocation(line: 696, column: 10, scope: !4722)
!4725 = !DILocation(line: 696, column: 8, scope: !4488)
!4726 = !DILocation(line: 697, column: 5, scope: !4722)
!4727 = !DILocation(line: 699, column: 15, scope: !4487)
!4728 = !DILocation(line: 699, column: 15, scope: !4486)
!4729 = !DILocation(line: 699, column: 15, scope: !4492)
!4730 = !DILocation(line: 699, column: 15, scope: !4488)
!4731 = !DILocation(line: 699, column: 13, scope: !4488)
!4732 = !DILocation(line: 700, column: 9, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 700, column: 8)
!4734 = !DILocation(line: 700, column: 8, scope: !4488)
!4735 = !DILocation(line: 701, column: 5, scope: !4733)
!4736 = !DILocation(line: 703, column: 22, scope: !4488)
!4737 = !DILocation(line: 703, column: 32, scope: !4488)
!4738 = !DILocation(line: 703, column: 45, scope: !4488)
!4739 = !DILocation(line: 703, column: 18, scope: !4488)
!4740 = !DILocation(line: 704, column: 8, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 704, column: 8)
!4742 = !DILocation(line: 704, column: 23, scope: !4741)
!4743 = !DILocation(line: 704, column: 33, scope: !4741)
!4744 = !DILocation(line: 704, column: 42, scope: !4741)
!4745 = !DILocation(line: 704, column: 30, scope: !4741)
!4746 = !DILocation(line: 704, column: 8, scope: !4488)
!4747 = !DILocation(line: 705, column: 5, scope: !4741)
!4748 = !DILocation(line: 708, column: 6, scope: !4488)
!4749 = !DILocation(line: 708, column: 10, scope: !4488)
!4750 = !DILocation(line: 708, column: 23, scope: !4488)
!4751 = !DILocation(line: 707, column: 4, scope: !4488)
!4752 = !DILocation(line: 707, column: 14, scope: !4488)
!4753 = !DILocation(line: 707, column: 27, scope: !4488)
!4754 = !DILocation(line: 707, column: 39, scope: !4488)
!4755 = !DILocation(line: 709, column: 17, scope: !4488)
!4756 = !DILocation(line: 709, column: 27, scope: !4488)
!4757 = !DILocation(line: 709, column: 40, scope: !4488)
!4758 = !DILocation(line: 710, column: 10, scope: !4488)
!4759 = !DILocation(line: 710, column: 14, scope: !4488)
!4760 = !DILocation(line: 710, column: 27, scope: !4488)
!4761 = !DILocation(line: 709, column: 4, scope: !4488)
!4762 = !DILocation(line: 711, column: 3, scope: !4488)
!4763 = distinct !{!4763, !4719, !4764, !3662, !3663}
!4764 = !DILocation(line: 711, column: 3, scope: !4490)
!4765 = !DILocation(line: 712, column: 2, scope: !4472)
!4766 = distinct !{!4766, !4595, !4767, !3662, !3663}
!4767 = !DILocation(line: 712, column: 2, scope: !4474)
!4768 = !DILocation(line: 714, column: 1, scope: !4428)
!4769 = !DILocation(line: 715, column: 2, scope: !4499)
!4770 = !DILocation(line: 715, column: 2, scope: !4498)
!4771 = !DILocation(line: 716, column: 8, scope: !4496)
!4772 = !DILocation(line: 716, column: 8, scope: !4495)
!4773 = !DILocation(line: 716, column: 8, scope: !4501)
!4774 = !DILocation(line: 716, column: 8, scope: !4497)
!4775 = !DILocation(line: 716, column: 6, scope: !4497)
!4776 = !DILocation(line: 717, column: 8, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 717, column: 7)
!4778 = !DILocation(line: 717, column: 11, scope: !4777)
!4779 = !DILocation(line: 717, column: 15, scope: !4777)
!4780 = !DILocation(line: 717, column: 19, scope: !4777)
!4781 = !DILocation(line: 717, column: 7, scope: !4497)
!4782 = !DILocation(line: 718, column: 4, scope: !4777)
!4783 = !DILocation(line: 721, column: 7, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 721, column: 7)
!4785 = !DILocation(line: 721, column: 7, scope: !4497)
!4786 = !DILocation(line: 722, column: 18, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 721, column: 15)
!4788 = !DILocation(line: 722, column: 22, scope: !4787)
!4789 = !DILocation(line: 722, column: 35, scope: !4787)
!4790 = !DILocation(line: 722, column: 4, scope: !4787)
!4791 = !DILocation(line: 723, column: 20, scope: !4787)
!4792 = !DILocation(line: 723, column: 23, scope: !4787)
!4793 = !DILocation(line: 723, column: 27, scope: !4787)
!4794 = !DILocation(line: 723, column: 40, scope: !4787)
!4795 = !DILocation(line: 723, column: 4, scope: !4787)
!4796 = !DILocation(line: 724, column: 4, scope: !4787)
!4797 = !DILocation(line: 724, column: 8, scope: !4787)
!4798 = !DILocation(line: 724, column: 21, scope: !4787)
!4799 = !DILocation(line: 724, column: 33, scope: !4787)
!4800 = !DILocation(line: 725, column: 3, scope: !4787)
!4801 = !DILocation(line: 726, column: 3, scope: !4497)
!4802 = !DILocation(line: 726, column: 7, scope: !4497)
!4803 = !DILocation(line: 726, column: 19, scope: !4497)
!4804 = !DILocation(line: 727, column: 2, scope: !4497)
!4805 = distinct !{!4805, !4769, !4806, !3662, !3663}
!4806 = !DILocation(line: 727, column: 2, scope: !4499)
!4807 = !DILocation(line: 729, column: 1, scope: !4428)
!4808 = !DILocation(line: 730, column: 2, scope: !4428)
!4809 = !DILocation(line: 731, column: 19, scope: !4428)
!4810 = !DILocation(line: 731, column: 2, scope: !4428)
!4811 = !DILocation(line: 732, column: 9, scope: !4428)
!4812 = !DILocation(line: 732, column: 2, scope: !4428)
!4813 = !DILocation(line: 733, column: 1, scope: !4428)
!4814 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !1287, file: !1287, line: 929, type: !4815, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4818)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!598, !4817, !2036}
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!4818 = !{!4819, !4820}
!4819 = !DILocalVariable(name: "mask", arg: 1, scope: !4814, file: !1287, line: 929, type: !4817)
!4820 = !DILocalVariable(name: "flags", arg: 2, scope: !4814, file: !1287, line: 929, type: !2036)
!4821 = !DILocation(line: 929, column: 54, scope: !4814)
!4822 = !DILocation(line: 929, column: 66, scope: !4814)
!4823 = !DILocation(line: 931, column: 17, scope: !4814)
!4824 = !DILocation(line: 931, column: 16, scope: !4814)
!4825 = !DILocation(line: 931, column: 2, scope: !4814)
!4826 = !DILocation(line: 932, column: 2, scope: !4814)
!4827 = !DISubprogram(name: "mutex_lock", scope: !500, file: !500, line: 227, type: !4828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{null, !4830}
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!4831 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !1287, file: !1287, line: 502, type: !4832, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4834)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!598, !46, !2037}
!4834 = !{!4835, !4836}
!4835 = !DILocalVariable(name: "cpu", arg: 1, scope: !4831, file: !1287, line: 502, type: !46)
!4836 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4831, file: !1287, line: 502, type: !2037)
!4837 = !DILocation(line: 502, column: 50, scope: !4831)
!4838 = !DILocation(line: 502, column: 77, scope: !4831)
!4839 = !DILocation(line: 504, column: 9, scope: !4831)
!4840 = !DILocation(line: 504, column: 2, scope: !4831)
!4841 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !1287, file: !1287, line: 469, type: !4842, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4845)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{null, !7, !4844}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!4845 = !{!4846, !4847}
!4846 = !DILocalVariable(name: "cpu", arg: 1, scope: !4841, file: !1287, line: 469, type: !7)
!4847 = !DILocalVariable(name: "dstp", arg: 2, scope: !4841, file: !1287, line: 469, type: !4844)
!4848 = !DILocation(line: 469, column: 58, scope: !4841)
!4849 = !DILocation(line: 469, column: 79, scope: !4841)
!4850 = !DILocation(line: 471, column: 24, scope: !4841)
!4851 = !DILocation(line: 471, column: 10, scope: !4841)
!4852 = !DILocation(line: 471, column: 30, scope: !4841)
!4853 = !DILocation(line: 471, column: 2, scope: !4841)
!4854 = !DILocation(line: 472, column: 1, scope: !4841)
!4855 = distinct !DISubprogram(name: "cpumask_copy", scope: !1287, file: !1287, line: 737, type: !4856, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4858)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !4844, !2037}
!4858 = !{!4859, !4860}
!4859 = !DILocalVariable(name: "dstp", arg: 1, scope: !4855, file: !1287, line: 737, type: !4844)
!4860 = !DILocalVariable(name: "srcp", arg: 2, scope: !4855, file: !1287, line: 738, type: !2037)
!4861 = !DILocation(line: 737, column: 49, scope: !4855)
!4862 = !DILocation(line: 738, column: 27, scope: !4855)
!4863 = !DILocation(line: 740, column: 14, scope: !4855)
!4864 = !DILocation(line: 740, column: 34, scope: !4855)
!4865 = !DILocation(line: 740, column: 2, scope: !4855)
!4866 = !DILocation(line: 741, column: 1, scope: !4855)
!4867 = distinct !DISubprogram(name: "cpumask_clear", scope: !1287, file: !1287, line: 552, type: !4868, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4870)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{null, !4844}
!4870 = !{!4871}
!4871 = !DILocalVariable(name: "dstp", arg: 1, scope: !4867, file: !1287, line: 552, type: !4844)
!4872 = !DILocation(line: 552, column: 50, scope: !4867)
!4873 = !DILocation(line: 554, column: 14, scope: !4867)
!4874 = !DILocation(line: 554, column: 2, scope: !4867)
!4875 = !DILocation(line: 555, column: 1, scope: !4867)
!4876 = !DISubprogram(name: "mutex_unlock", scope: !500, file: !500, line: 246, type: !4828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4877 = distinct !DISubprogram(name: "free_cpumask_var", scope: !1287, file: !1287, line: 946, type: !4868, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4878)
!4878 = !{!4879}
!4879 = !DILocalVariable(name: "mask", arg: 1, scope: !4877, file: !1287, line: 946, type: !4844)
!4880 = !DILocation(line: 946, column: 51, scope: !4877)
!4881 = !DILocation(line: 948, column: 1, scope: !4877)
!4882 = distinct !DISubprogram(name: "acpi_processor_register_performance", scope: !3, file: !3, line: 736, type: !4883, scopeLine: 738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!46, !1250, !7}
!4885 = !{!4886, !4887, !4888, !4889, !4892, !4894, !4896}
!4886 = !DILocalVariable(name: "performance", arg: 1, scope: !4882, file: !3, line: 737, type: !1250)
!4887 = !DILocalVariable(name: "cpu", arg: 2, scope: !4882, file: !3, line: 737, type: !7)
!4888 = !DILocalVariable(name: "pr", scope: !4882, file: !3, line: 739, type: !1181)
!4889 = !DILocalVariable(name: "__vpp_verify", scope: !4890, file: !3, line: 746, type: !520)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 746, column: 7)
!4891 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 746, column: 7)
!4892 = !DILocalVariable(name: "__ptr", scope: !4893, file: !3, line: 746, type: !291)
!4893 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 746, column: 7)
!4894 = !DILocalVariable(name: "__ret_warn_on", scope: !4895, file: !3, line: 757, type: !46)
!4895 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 757, column: 2)
!4896 = !DILocalVariable(name: "__flags", scope: !4897, file: !3, line: 757, type: !46)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 757, column: 2)
!4898 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 757, column: 2)
!4899 = !DILocation(line: 737, column: 7, scope: !4882)
!4900 = !DILocation(line: 737, column: 33, scope: !4882)
!4901 = !DILocation(line: 739, column: 2, scope: !4882)
!4902 = !DILocation(line: 739, column: 25, scope: !4882)
!4903 = !DILocation(line: 741, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 741, column: 6)
!4905 = !DILocation(line: 741, column: 6, scope: !4882)
!4906 = !DILocation(line: 742, column: 3, scope: !4904)
!4907 = !DILocation(line: 744, column: 2, scope: !4882)
!4908 = !DILocation(line: 746, column: 7, scope: !4891)
!4909 = !DILocation(line: 746, column: 7, scope: !4890)
!4910 = !DILocation(line: 746, column: 7, scope: !4893)
!4911 = !DILocation(line: 746, column: 7, scope: !4882)
!4912 = !DILocation(line: 746, column: 5, scope: !4882)
!4913 = !DILocation(line: 747, column: 7, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 747, column: 6)
!4915 = !DILocation(line: 747, column: 6, scope: !4882)
!4916 = !DILocation(line: 748, column: 3, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 747, column: 11)
!4918 = !DILocation(line: 749, column: 3, scope: !4917)
!4919 = !DILocation(line: 752, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 752, column: 6)
!4921 = !DILocation(line: 752, column: 10, scope: !4920)
!4922 = !DILocation(line: 752, column: 6, scope: !4882)
!4923 = !DILocation(line: 753, column: 3, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 752, column: 23)
!4925 = !DILocation(line: 754, column: 3, scope: !4924)
!4926 = !DILocation(line: 757, column: 2, scope: !4895)
!4927 = !DILocation(line: 757, column: 2, scope: !4898)
!4928 = !DILocation(line: 757, column: 2, scope: !4897)
!4929 = !DILocation(line: 757, column: 2, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 757, column: 2)
!4931 = !DILocation(line: 757, column: 2, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 757, column: 2)
!4933 = !{i64 2153946433, i64 2153946462, i64 2153946508, i64 2153946566, i64 2153946620, i64 2153946674, i64 2153946729, i64 2153946760, i64 2153947068, i64 2153947074, i64 2153947121, i64 2153947144, i64 2153947170}
!4934 = !DILocation(line: 757, column: 2, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 757, column: 2)
!4936 = !DILocation(line: 757, column: 2, scope: !4882)
!4937 = !DILocation(line: 759, column: 20, scope: !4882)
!4938 = !DILocation(line: 759, column: 2, scope: !4882)
!4939 = !DILocation(line: 759, column: 6, scope: !4882)
!4940 = !DILocation(line: 759, column: 18, scope: !4882)
!4941 = !DILocation(line: 761, column: 42, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 761, column: 6)
!4943 = !DILocation(line: 761, column: 6, scope: !4942)
!4944 = !DILocation(line: 761, column: 6, scope: !4882)
!4945 = !DILocation(line: 762, column: 3, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 761, column: 47)
!4947 = !DILocation(line: 762, column: 7, scope: !4946)
!4948 = !DILocation(line: 762, column: 19, scope: !4946)
!4949 = !DILocation(line: 763, column: 3, scope: !4946)
!4950 = !DILocation(line: 764, column: 3, scope: !4946)
!4951 = !DILocation(line: 767, column: 2, scope: !4882)
!4952 = !DILocation(line: 768, column: 2, scope: !4882)
!4953 = !DILocation(line: 769, column: 1, scope: !4882)
!4954 = distinct !DISubprogram(name: "acpi_processor_unregister_performance", scope: !3, file: !3, line: 772, type: !2408, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4955)
!4955 = !{!4956, !4957, !4958, !4961, !4963}
!4956 = !DILocalVariable(name: "cpu", arg: 1, scope: !4954, file: !3, line: 772, type: !7)
!4957 = !DILocalVariable(name: "pr", scope: !4954, file: !3, line: 774, type: !1181)
!4958 = !DILocalVariable(name: "__vpp_verify", scope: !4959, file: !3, line: 778, type: !520)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 778, column: 7)
!4960 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 778, column: 7)
!4961 = !DILocalVariable(name: "__ptr", scope: !4962, file: !3, line: 778, type: !291)
!4962 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 778, column: 7)
!4963 = !DILabel(scope: !4954, name: "unlock", file: !3, line: 787)
!4964 = !DILocation(line: 772, column: 57, scope: !4954)
!4965 = !DILocation(line: 774, column: 2, scope: !4954)
!4966 = !DILocation(line: 774, column: 25, scope: !4954)
!4967 = !DILocation(line: 776, column: 2, scope: !4954)
!4968 = !DILocation(line: 778, column: 7, scope: !4960)
!4969 = !DILocation(line: 778, column: 7, scope: !4959)
!4970 = !DILocation(line: 778, column: 7, scope: !4962)
!4971 = !DILocation(line: 778, column: 7, scope: !4954)
!4972 = !DILocation(line: 778, column: 5, scope: !4954)
!4973 = !DILocation(line: 779, column: 7, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 779, column: 6)
!4975 = !DILocation(line: 779, column: 6, scope: !4954)
!4976 = !DILocation(line: 780, column: 3, scope: !4974)
!4977 = !DILocation(line: 782, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 782, column: 6)
!4979 = !DILocation(line: 782, column: 10, scope: !4978)
!4980 = !DILocation(line: 782, column: 6, scope: !4954)
!4981 = !DILocation(line: 783, column: 9, scope: !4978)
!4982 = !DILocation(line: 783, column: 13, scope: !4978)
!4983 = !DILocation(line: 783, column: 26, scope: !4978)
!4984 = !DILocation(line: 783, column: 3, scope: !4978)
!4985 = !DILocation(line: 785, column: 2, scope: !4954)
!4986 = !DILocation(line: 785, column: 6, scope: !4954)
!4987 = !DILocation(line: 785, column: 18, scope: !4954)
!4988 = !DILocation(line: 787, column: 1, scope: !4954)
!4989 = !DILocation(line: 788, column: 2, scope: !4954)
!4990 = !DILocation(line: 789, column: 1, scope: !4954)
!4991 = !DISubprogram(name: "acpi_evaluate_ost", scope: !3824, file: !3824, line: 36, type: !4992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!2034, !1186, !1082, !1082, !4421}
!4994 = !DISubprogram(name: "acpi_evaluate_integer", scope: !3824, file: !3824, line: 27, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!2034, !1186, !4415, !4416, !4997}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!4998 = !DISubprogram(name: "acpi_evaluation_failure_warn", scope: !1191, file: !1191, line: 1182, type: !4999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{null, !1186, !160, !2034}
!5001 = distinct !DISubprogram(name: "freq_qos_request_active", scope: !54, file: !54, line: 294, type: !3749, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5002)
!5002 = !{!5003}
!5003 = !DILocalVariable(name: "req", arg: 1, scope: !5001, file: !54, line: 294, type: !2519)
!5004 = !DILocation(line: 294, column: 68, scope: !5001)
!5005 = !DILocation(line: 296, column: 25, scope: !5001)
!5006 = !DILocation(line: 296, column: 30, scope: !5001)
!5007 = !DILocation(line: 296, column: 10, scope: !5001)
!5008 = !DILocation(line: 296, column: 9, scope: !5001)
!5009 = !DILocation(line: 296, column: 2, scope: !5001)
!5010 = !DISubprogram(name: "freq_qos_update_request", scope: !54, file: !54, line: 307, type: !5011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!46, !2519, !478}
!5013 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5014, file: !5014, line: 70, type: !5015, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5017)
!5014 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!598, !520}
!5017 = !{!5018}
!5018 = !DILocalVariable(name: "ptr", arg: 1, scope: !5013, file: !5014, line: 70, type: !520)
!5019 = !DILocation(line: 70, column: 68, scope: !5013)
!5020 = !DILocation(line: 72, column: 9, scope: !5013)
!5021 = !DILocation(line: 72, column: 24, scope: !5013)
!5022 = !DILocation(line: 72, column: 27, scope: !5013)
!5023 = !DILocation(line: 72, column: 2, scope: !5013)
!5024 = distinct !DISubprogram(name: "variable__ffs", scope: !4155, file: !4155, line: 250, type: !5025, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!291, !291}
!5027 = !{!5028}
!5028 = !DILocalVariable(name: "word", arg: 1, scope: !5024, file: !4155, line: 250, type: !291)
!5029 = !DILocation(line: 250, column: 66, scope: !5024)
!5030 = !DILocation(line: 254, column: 11, scope: !5024)
!5031 = !DILocation(line: 252, column: 2, scope: !5024)
!5032 = !{i64 312641}
!5033 = !DILocation(line: 255, column: 9, scope: !5024)
!5034 = !DILocation(line: 255, column: 2, scope: !5024)
!5035 = !DISubprogram(name: "_find_next_bit", scope: !3666, file: !3666, line: 11, type: !3667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5036 = distinct !DISubprogram(name: "kmalloc_array", scope: !126, file: !126, line: 629, type: !5037, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5039)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!313, !288, !288, !2036}
!5039 = !{!5040, !5041, !5042, !5043}
!5040 = !DILocalVariable(name: "n", arg: 1, scope: !5036, file: !126, line: 629, type: !288)
!5041 = !DILocalVariable(name: "size", arg: 2, scope: !5036, file: !126, line: 629, type: !288)
!5042 = !DILocalVariable(name: "flags", arg: 3, scope: !5036, file: !126, line: 629, type: !2036)
!5043 = !DILocalVariable(name: "bytes", scope: !5036, file: !126, line: 631, type: !288)
!5044 = !DILocation(line: 629, column: 61, scope: !5036)
!5045 = !DILocation(line: 629, column: 71, scope: !5036)
!5046 = !DILocation(line: 629, column: 83, scope: !5036)
!5047 = !DILocation(line: 631, column: 2, scope: !5036)
!5048 = !DILocation(line: 631, column: 9, scope: !5036)
!5049 = !DILocation(line: 633, column: 6, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5036, file: !126, line: 633, column: 6)
!5051 = !DILocation(line: 633, column: 6, scope: !5036)
!5052 = !DILocation(line: 634, column: 3, scope: !5050)
!5053 = !DILocation(line: 635, column: 27, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5036, file: !126, line: 635, column: 6)
!5055 = !DILocation(line: 635, column: 6, scope: !5054)
!5056 = !DILocation(line: 635, column: 30, scope: !5054)
!5057 = !DILocation(line: 635, column: 54, scope: !5054)
!5058 = !DILocation(line: 635, column: 33, scope: !5054)
!5059 = !DILocation(line: 635, column: 6, scope: !5036)
!5060 = !DILocation(line: 636, column: 18, scope: !5054)
!5061 = !DILocation(line: 636, column: 25, scope: !5054)
!5062 = !DILocation(line: 636, column: 10, scope: !5054)
!5063 = !DILocation(line: 636, column: 3, scope: !5054)
!5064 = !DILocation(line: 637, column: 19, scope: !5036)
!5065 = !DILocation(line: 637, column: 26, scope: !5036)
!5066 = !DILocation(line: 637, column: 9, scope: !5036)
!5067 = !DILocation(line: 637, column: 2, scope: !5036)
!5068 = !DILocation(line: 638, column: 1, scope: !5036)
!5069 = !DISubprogram(name: "acpi_handle_printk", scope: !1191, file: !1191, line: 1180, type: !5070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{null, !160, !1186, !160, null}
!5072 = distinct !DISubprogram(name: "amd_fixup_frequency", scope: !3, file: !3, line: 275, type: !5073, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5075)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{null, !1268, !46}
!5075 = !{!5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083}
!5076 = !DILocalVariable(name: "px", arg: 1, scope: !5072, file: !3, line: 275, type: !1268)
!5077 = !DILocalVariable(name: "i", arg: 2, scope: !5072, file: !3, line: 275, type: !46)
!5078 = !DILocalVariable(name: "hi", scope: !5072, file: !3, line: 277, type: !1082)
!5079 = !DILocalVariable(name: "lo", scope: !5072, file: !3, line: 277, type: !1082)
!5080 = !DILocalVariable(name: "fid", scope: !5072, file: !3, line: 277, type: !1082)
!5081 = !DILocalVariable(name: "did", scope: !5072, file: !3, line: 277, type: !1082)
!5082 = !DILocalVariable(name: "index", scope: !5072, file: !3, line: 278, type: !46)
!5083 = !DILocalVariable(name: "__val", scope: !5084, file: !3, line: 285, type: !405)
!5084 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 285, column: 3)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 284, column: 33)
!5086 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 283, column: 6)
!5087 = !DILocation(line: 275, column: 59, scope: !5072)
!5088 = !DILocation(line: 275, column: 67, scope: !5072)
!5089 = !DILocation(line: 277, column: 2, scope: !5072)
!5090 = !DILocation(line: 277, column: 6, scope: !5072)
!5091 = !DILocation(line: 277, column: 10, scope: !5072)
!5092 = !DILocation(line: 277, column: 14, scope: !5072)
!5093 = !DILocation(line: 277, column: 19, scope: !5072)
!5094 = !DILocation(line: 278, column: 2, scope: !5072)
!5095 = !DILocation(line: 278, column: 6, scope: !5072)
!5096 = !DILocation(line: 278, column: 14, scope: !5072)
!5097 = !DILocation(line: 278, column: 18, scope: !5072)
!5098 = !DILocation(line: 278, column: 26, scope: !5072)
!5099 = !DILocation(line: 280, column: 20, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 280, column: 6)
!5101 = !DILocation(line: 280, column: 6, scope: !5100)
!5102 = !DILocation(line: 280, column: 31, scope: !5100)
!5103 = !DILocation(line: 280, column: 6, scope: !5072)
!5104 = !DILocation(line: 281, column: 3, scope: !5100)
!5105 = !DILocation(line: 283, column: 21, scope: !5086)
!5106 = !DILocation(line: 283, column: 7, scope: !5086)
!5107 = !DILocation(line: 283, column: 25, scope: !5086)
!5108 = !DILocation(line: 283, column: 33, scope: !5086)
!5109 = !DILocation(line: 283, column: 50, scope: !5086)
!5110 = !DILocation(line: 283, column: 36, scope: !5086)
!5111 = !DILocation(line: 283, column: 60, scope: !5086)
!5112 = !DILocation(line: 283, column: 66, scope: !5086)
!5113 = !DILocation(line: 284, column: 20, scope: !5086)
!5114 = !DILocation(line: 284, column: 6, scope: !5086)
!5115 = !DILocation(line: 284, column: 24, scope: !5086)
!5116 = !DILocation(line: 283, column: 6, scope: !5072)
!5117 = !DILocation(line: 285, column: 3, scope: !5085)
!5118 = !DILocation(line: 285, column: 3, scope: !5084)
!5119 = !DILocation(line: 290, column: 9, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 290, column: 7)
!5121 = !DILocation(line: 290, column: 12, scope: !5120)
!5122 = !DILocation(line: 290, column: 7, scope: !5085)
!5123 = !DILocation(line: 291, column: 4, scope: !5120)
!5124 = !DILocation(line: 293, column: 9, scope: !5085)
!5125 = !DILocation(line: 293, column: 12, scope: !5085)
!5126 = !DILocation(line: 293, column: 7, scope: !5085)
!5127 = !DILocation(line: 294, column: 10, scope: !5085)
!5128 = !DILocation(line: 294, column: 13, scope: !5085)
!5129 = !DILocation(line: 294, column: 19, scope: !5085)
!5130 = !DILocation(line: 294, column: 7, scope: !5085)
!5131 = !DILocation(line: 295, column: 21, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 295, column: 7)
!5133 = !DILocation(line: 295, column: 7, scope: !5132)
!5134 = !DILocation(line: 295, column: 25, scope: !5132)
!5135 = !DILocation(line: 295, column: 7, scope: !5085)
!5136 = !DILocation(line: 296, column: 33, scope: !5132)
!5137 = !DILocation(line: 296, column: 37, scope: !5132)
!5138 = !DILocation(line: 296, column: 30, scope: !5132)
!5139 = !DILocation(line: 296, column: 49, scope: !5132)
!5140 = !DILocation(line: 296, column: 46, scope: !5132)
!5141 = !DILocation(line: 296, column: 25, scope: !5132)
!5142 = !DILocation(line: 296, column: 4, scope: !5132)
!5143 = !DILocation(line: 296, column: 8, scope: !5132)
!5144 = !DILocation(line: 296, column: 23, scope: !5132)
!5145 = !DILocation(line: 298, column: 33, scope: !5132)
!5146 = !DILocation(line: 298, column: 37, scope: !5132)
!5147 = !DILocation(line: 298, column: 30, scope: !5132)
!5148 = !DILocation(line: 298, column: 46, scope: !5132)
!5149 = !DILocation(line: 298, column: 43, scope: !5132)
!5150 = !DILocation(line: 298, column: 25, scope: !5132)
!5151 = !DILocation(line: 298, column: 4, scope: !5132)
!5152 = !DILocation(line: 298, column: 8, scope: !5132)
!5153 = !DILocation(line: 298, column: 23, scope: !5132)
!5154 = !DILocation(line: 299, column: 2, scope: !5085)
!5155 = !DILocation(line: 300, column: 1, scope: !5072)
!5156 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5157, file: !5157, line: 51, type: !5158, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5160)
!5157 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!598, !598}
!5160 = !{!5161}
!5161 = !DILocalVariable(name: "overflow", arg: 1, scope: !5156, file: !5157, line: 51, type: !598)
!5162 = !DILocation(line: 51, column: 60, scope: !5156)
!5163 = !DILocation(line: 53, column: 9, scope: !5156)
!5164 = !DILocation(line: 53, column: 2, scope: !5156)
!5165 = distinct !DISubprogram(name: "kmalloc", scope: !126, file: !126, line: 591, type: !5166, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5168)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!313, !288, !2036}
!5168 = !{!5169, !5170, !5171}
!5169 = !DILocalVariable(name: "size", arg: 1, scope: !5165, file: !126, line: 591, type: !288)
!5170 = !DILocalVariable(name: "flags", arg: 2, scope: !5165, file: !126, line: 591, type: !2036)
!5171 = !DILocalVariable(name: "index", scope: !5172, file: !126, line: 594, type: !7)
!5172 = distinct !DILexicalBlock(scope: !5173, file: !126, line: 593, column: 42)
!5173 = distinct !DILexicalBlock(scope: !5165, file: !126, line: 593, column: 6)
!5174 = !DILocation(line: 591, column: 61, scope: !5165)
!5175 = !DILocation(line: 591, column: 73, scope: !5165)
!5176 = !DILocation(line: 593, column: 27, scope: !5173)
!5177 = !DILocation(line: 593, column: 6, scope: !5173)
!5178 = !DILocation(line: 593, column: 33, scope: !5173)
!5179 = !DILocation(line: 593, column: 36, scope: !5173)
!5180 = !DILocation(line: 593, column: 6, scope: !5165)
!5181 = !DILocation(line: 594, column: 3, scope: !5172)
!5182 = !DILocation(line: 594, column: 16, scope: !5172)
!5183 = !DILocation(line: 596, column: 7, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5172, file: !126, line: 596, column: 7)
!5185 = !DILocation(line: 596, column: 12, scope: !5184)
!5186 = !DILocation(line: 596, column: 7, scope: !5172)
!5187 = !DILocation(line: 597, column: 25, scope: !5184)
!5188 = !DILocation(line: 597, column: 31, scope: !5184)
!5189 = !DILocation(line: 597, column: 11, scope: !5184)
!5190 = !DILocation(line: 597, column: 4, scope: !5184)
!5191 = !DILocation(line: 599, column: 11, scope: !5172)
!5192 = !DILocation(line: 599, column: 9, scope: !5172)
!5193 = !DILocation(line: 601, column: 33, scope: !5172)
!5194 = !DILocation(line: 601, column: 40, scope: !5172)
!5195 = !DILocation(line: 601, column: 20, scope: !5172)
!5196 = !DILocation(line: 601, column: 5, scope: !5172)
!5197 = !DILocation(line: 601, column: 51, scope: !5172)
!5198 = !DILocation(line: 602, column: 5, scope: !5172)
!5199 = !DILocation(line: 602, column: 12, scope: !5172)
!5200 = !DILocation(line: 600, column: 10, scope: !5172)
!5201 = !DILocation(line: 600, column: 3, scope: !5172)
!5202 = !DILocation(line: 603, column: 2, scope: !5173)
!5203 = !DILocation(line: 604, column: 19, scope: !5165)
!5204 = !DILocation(line: 604, column: 25, scope: !5165)
!5205 = !DILocation(line: 604, column: 9, scope: !5165)
!5206 = !DILocation(line: 604, column: 2, scope: !5165)
!5207 = !DILocation(line: 605, column: 1, scope: !5165)
!5208 = !DISubprogram(name: "__kmalloc", scope: !126, file: !126, line: 488, type: !5166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5209 = !DISubprogram(name: "kmalloc_large", scope: !126, file: !126, line: 531, type: !5166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5210 = distinct !DISubprogram(name: "__kmalloc_index", scope: !126, file: !126, line: 444, type: !5211, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5213)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!7, !288, !598}
!5213 = !{!5214, !5215}
!5214 = !DILocalVariable(name: "size", arg: 1, scope: !5210, file: !126, line: 444, type: !288)
!5215 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5210, file: !126, line: 445, type: !598)
!5216 = !DILocation(line: 444, column: 60, scope: !5210)
!5217 = !DILocation(line: 445, column: 16, scope: !5210)
!5218 = !DILocation(line: 447, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 447, column: 6)
!5220 = !DILocation(line: 447, column: 6, scope: !5210)
!5221 = !DILocation(line: 448, column: 3, scope: !5219)
!5222 = !DILocation(line: 450, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 450, column: 6)
!5224 = !DILocation(line: 450, column: 11, scope: !5223)
!5225 = !DILocation(line: 450, column: 6, scope: !5210)
!5226 = !DILocation(line: 451, column: 3, scope: !5223)
!5227 = !DILocation(line: 453, column: 32, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 453, column: 6)
!5229 = !DILocation(line: 453, column: 37, scope: !5228)
!5230 = !DILocation(line: 453, column: 42, scope: !5228)
!5231 = !DILocation(line: 453, column: 45, scope: !5228)
!5232 = !DILocation(line: 453, column: 50, scope: !5228)
!5233 = !DILocation(line: 453, column: 6, scope: !5210)
!5234 = !DILocation(line: 454, column: 3, scope: !5228)
!5235 = !DILocation(line: 455, column: 32, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 455, column: 6)
!5237 = !DILocation(line: 455, column: 37, scope: !5236)
!5238 = !DILocation(line: 455, column: 43, scope: !5236)
!5239 = !DILocation(line: 455, column: 46, scope: !5236)
!5240 = !DILocation(line: 455, column: 51, scope: !5236)
!5241 = !DILocation(line: 455, column: 6, scope: !5210)
!5242 = !DILocation(line: 456, column: 3, scope: !5236)
!5243 = !DILocation(line: 457, column: 6, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 457, column: 6)
!5245 = !DILocation(line: 457, column: 11, scope: !5244)
!5246 = !DILocation(line: 457, column: 6, scope: !5210)
!5247 = !DILocation(line: 457, column: 26, scope: !5244)
!5248 = !DILocation(line: 458, column: 6, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 458, column: 6)
!5250 = !DILocation(line: 458, column: 11, scope: !5249)
!5251 = !DILocation(line: 458, column: 6, scope: !5210)
!5252 = !DILocation(line: 458, column: 26, scope: !5249)
!5253 = !DILocation(line: 459, column: 6, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 459, column: 6)
!5255 = !DILocation(line: 459, column: 11, scope: !5254)
!5256 = !DILocation(line: 459, column: 6, scope: !5210)
!5257 = !DILocation(line: 459, column: 26, scope: !5254)
!5258 = !DILocation(line: 460, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 460, column: 6)
!5260 = !DILocation(line: 460, column: 11, scope: !5259)
!5261 = !DILocation(line: 460, column: 6, scope: !5210)
!5262 = !DILocation(line: 460, column: 26, scope: !5259)
!5263 = !DILocation(line: 461, column: 6, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 461, column: 6)
!5265 = !DILocation(line: 461, column: 11, scope: !5264)
!5266 = !DILocation(line: 461, column: 6, scope: !5210)
!5267 = !DILocation(line: 461, column: 26, scope: !5264)
!5268 = !DILocation(line: 462, column: 6, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 462, column: 6)
!5270 = !DILocation(line: 462, column: 11, scope: !5269)
!5271 = !DILocation(line: 462, column: 6, scope: !5210)
!5272 = !DILocation(line: 462, column: 26, scope: !5269)
!5273 = !DILocation(line: 463, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 463, column: 6)
!5275 = !DILocation(line: 463, column: 11, scope: !5274)
!5276 = !DILocation(line: 463, column: 6, scope: !5210)
!5277 = !DILocation(line: 463, column: 26, scope: !5274)
!5278 = !DILocation(line: 464, column: 6, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 464, column: 6)
!5280 = !DILocation(line: 464, column: 11, scope: !5279)
!5281 = !DILocation(line: 464, column: 6, scope: !5210)
!5282 = !DILocation(line: 464, column: 26, scope: !5279)
!5283 = !DILocation(line: 465, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 465, column: 6)
!5285 = !DILocation(line: 465, column: 11, scope: !5284)
!5286 = !DILocation(line: 465, column: 6, scope: !5210)
!5287 = !DILocation(line: 465, column: 26, scope: !5284)
!5288 = !DILocation(line: 466, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 466, column: 6)
!5290 = !DILocation(line: 466, column: 11, scope: !5289)
!5291 = !DILocation(line: 466, column: 6, scope: !5210)
!5292 = !DILocation(line: 466, column: 26, scope: !5289)
!5293 = !DILocation(line: 467, column: 6, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 467, column: 6)
!5295 = !DILocation(line: 467, column: 11, scope: !5294)
!5296 = !DILocation(line: 467, column: 6, scope: !5210)
!5297 = !DILocation(line: 467, column: 26, scope: !5294)
!5298 = !DILocation(line: 468, column: 6, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 468, column: 6)
!5300 = !DILocation(line: 468, column: 11, scope: !5299)
!5301 = !DILocation(line: 468, column: 6, scope: !5210)
!5302 = !DILocation(line: 468, column: 26, scope: !5299)
!5303 = !DILocation(line: 469, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 469, column: 6)
!5305 = !DILocation(line: 469, column: 11, scope: !5304)
!5306 = !DILocation(line: 469, column: 6, scope: !5210)
!5307 = !DILocation(line: 469, column: 26, scope: !5304)
!5308 = !DILocation(line: 470, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 470, column: 6)
!5310 = !DILocation(line: 470, column: 11, scope: !5309)
!5311 = !DILocation(line: 470, column: 6, scope: !5210)
!5312 = !DILocation(line: 470, column: 26, scope: !5309)
!5313 = !DILocation(line: 471, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 471, column: 6)
!5315 = !DILocation(line: 471, column: 11, scope: !5314)
!5316 = !DILocation(line: 471, column: 6, scope: !5210)
!5317 = !DILocation(line: 471, column: 26, scope: !5314)
!5318 = !DILocation(line: 472, column: 6, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 472, column: 6)
!5320 = !DILocation(line: 472, column: 11, scope: !5319)
!5321 = !DILocation(line: 472, column: 6, scope: !5210)
!5322 = !DILocation(line: 472, column: 26, scope: !5319)
!5323 = !DILocation(line: 473, column: 6, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 473, column: 6)
!5325 = !DILocation(line: 473, column: 11, scope: !5324)
!5326 = !DILocation(line: 473, column: 6, scope: !5210)
!5327 = !DILocation(line: 473, column: 26, scope: !5324)
!5328 = !DILocation(line: 474, column: 6, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 474, column: 6)
!5330 = !DILocation(line: 474, column: 11, scope: !5329)
!5331 = !DILocation(line: 474, column: 6, scope: !5210)
!5332 = !DILocation(line: 474, column: 27, scope: !5329)
!5333 = !DILocation(line: 475, column: 6, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 475, column: 6)
!5335 = !DILocation(line: 475, column: 11, scope: !5334)
!5336 = !DILocation(line: 475, column: 6, scope: !5210)
!5337 = !DILocation(line: 475, column: 32, scope: !5334)
!5338 = !DILocation(line: 477, column: 50, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5210, file: !126, line: 477, column: 6)
!5340 = !DILocation(line: 477, column: 6, scope: !5210)
!5341 = !DILocation(line: 478, column: 3, scope: !5339)
!5342 = !DILocation(line: 478, column: 3, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !126, line: 478, column: 3)
!5344 = distinct !DILexicalBlock(scope: !5339, file: !126, line: 478, column: 3)
!5345 = !{i32 -2141861821}
!5346 = !DILocation(line: 478, column: 3, scope: !5344)
!5347 = !DILocation(line: 480, column: 3, scope: !5339)
!5348 = !DILocation(line: 480, column: 3, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5339, file: !126, line: 480, column: 3)
!5350 = !DILocation(line: 480, column: 3, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5349, file: !126, line: 480, column: 3)
!5352 = !DILocation(line: 480, column: 3, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5349, file: !126, line: 480, column: 3)
!5354 = !{i64 2153105678, i64 2153105707, i64 2153105753, i64 2153105811, i64 2153105865, i64 2153105919, i64 2153105974, i64 2153106005}
!5355 = !DILocation(line: 483, column: 2, scope: !5210)
!5356 = !DILocation(line: 484, column: 1, scope: !5210)
!5357 = !DISubprogram(name: "kmalloc_trace", scope: !126, file: !126, line: 525, type: !5358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!313, !5360, !2036, !288}
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5362, line: 11, flags: DIFlagFwdDecl)
!5362 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5363 = distinct !DISubprogram(name: "kmalloc_type", scope: !126, file: !126, line: 401, type: !5364, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5366)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!125, !2036, !291}
!5366 = !{!5367, !5368}
!5367 = !DILocalVariable(name: "flags", arg: 1, scope: !5363, file: !126, line: 401, type: !2036)
!5368 = !DILocalVariable(name: "caller", arg: 2, scope: !5363, file: !126, line: 401, type: !291)
!5369 = !DILocation(line: 401, column: 67, scope: !5363)
!5370 = !DILocation(line: 401, column: 88, scope: !5363)
!5371 = !DILocation(line: 407, column: 6, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5363, file: !126, line: 407, column: 6)
!5373 = !DILocation(line: 407, column: 6, scope: !5363)
!5374 = !DILocation(line: 413, column: 3, scope: !5372)
!5375 = !DILocation(line: 423, column: 38, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5363, file: !126, line: 423, column: 6)
!5377 = !DILocation(line: 423, column: 44, scope: !5376)
!5378 = !DILocation(line: 423, column: 6, scope: !5363)
!5379 = !DILocation(line: 424, column: 3, scope: !5376)
!5380 = !DILocation(line: 426, column: 3, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5363, file: !126, line: 425, column: 6)
!5382 = !DILocation(line: 429, column: 1, scope: !5363)
!5383 = !DISubprogram(name: "__compiletime_assert_222", scope: !126, file: !126, line: 478, type: !1177, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5384 = distinct !DISubprogram(name: "native_read_msr", scope: !5385, file: !5385, line: 114, type: !5386, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5385 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!407, !7}
!5388 = !{!5389, !5390}
!5389 = !DILocalVariable(name: "msr", arg: 1, scope: !5384, file: !5385, line: 114, type: !7)
!5390 = !DILocalVariable(name: "val", scope: !5384, file: !5385, line: 116, type: !407)
!5391 = !DILocation(line: 114, column: 63, scope: !5384)
!5392 = !DILocation(line: 116, column: 2, scope: !5384)
!5393 = !DILocation(line: 116, column: 21, scope: !5384)
!5394 = !DILocation(line: 118, column: 16, scope: !5384)
!5395 = !DILocation(line: 118, column: 8, scope: !5384)
!5396 = !DILocation(line: 118, column: 6, scope: !5384)
!5397 = !DILocation(line: 120, column: 6, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5384, file: !5385, line: 120, column: 6)
!5399 = !DILocation(line: 120, column: 6, scope: !5384)
!5400 = !DILocation(line: 121, column: 21, scope: !5398)
!5401 = !DILocation(line: 121, column: 26, scope: !5398)
!5402 = !DILocation(line: 121, column: 3, scope: !5398)
!5403 = !DILocation(line: 123, column: 9, scope: !5384)
!5404 = !DILocation(line: 124, column: 1, scope: !5384)
!5405 = !DILocation(line: 123, column: 2, scope: !5384)
!5406 = distinct !DISubprogram(name: "__rdmsr", scope: !5385, file: !5385, line: 80, type: !5386, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5407)
!5407 = !{!5408, !5409, !5410}
!5408 = !DILocalVariable(name: "msr", arg: 1, scope: !5406, file: !5385, line: 80, type: !7)
!5409 = !DILocalVariable(name: "low", scope: !5406, file: !5385, line: 82, type: !291)
!5410 = !DILocalVariable(name: "high", scope: !5406, file: !5385, line: 82, type: !291)
!5411 = !DILocation(line: 80, column: 64, scope: !5406)
!5412 = !DILocation(line: 82, column: 2, scope: !5406)
!5413 = !DILocation(line: 87, column: 45, scope: !5406)
!5414 = !DILocation(line: 84, column: 2, scope: !5406)
!5415 = !{i64 1127568, i64 1127589, i64 2149347904, i64 2149347948, i64 2149347971, i64 2149348004, i64 2149348035, i64 2149348074}
!5416 = !DILocation(line: 89, column: 9, scope: !5406)
!5417 = !DILocation(line: 90, column: 1, scope: !5406)
!5418 = !DILocation(line: 89, column: 2, scope: !5406)
!5419 = distinct !DISubprogram(name: "static_key_false", scope: !1141, file: !1141, line: 205, type: !5420, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5434)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!598, !5422}
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1141, line: 85, size: 128, elements: !5424)
!5424 = !{!5425, !5426}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5423, file: !1141, line: 86, baseType: !191, size: 32)
!5426 = !DIDerivedType(tag: DW_TAG_member, scope: !5423, file: !1141, line: 101, baseType: !5427, size: 64, offset: 64)
!5427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5423, file: !1141, line: 101, size: 64, elements: !5428)
!5428 = !{!5429, !5430, !5431}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5427, file: !1141, line: 102, baseType: !291, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5427, file: !1141, line: 103, baseType: !1139, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5427, file: !1141, line: 104, baseType: !5432, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1141, line: 104, flags: DIFlagFwdDecl)
!5434 = !{!5435}
!5435 = !DILocalVariable(name: "key", arg: 1, scope: !5419, file: !1141, line: 205, type: !5422)
!5436 = !DILocation(line: 205, column: 65, scope: !5419)
!5437 = !DILocation(line: 207, column: 28, scope: !5419)
!5438 = !DILocation(line: 207, column: 9, scope: !5419)
!5439 = !DILocation(line: 207, column: 2, scope: !5419)
!5440 = !DISubprogram(name: "do_trace_read_msr", scope: !5385, file: !5385, line: 65, type: !5441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{null, !7, !405, !46}
!5443 = distinct !DISubprogram(name: "arch_static_branch", scope: !5444, file: !5444, line: 25, type: !5445, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5444 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!598, !5422, !598}
!5447 = !{!5448, !5449, !5450}
!5448 = !DILocalVariable(name: "key", arg: 1, scope: !5443, file: !5444, line: 25, type: !5422)
!5449 = !DILocalVariable(name: "branch", arg: 2, scope: !5443, file: !5444, line: 25, type: !598)
!5450 = !DILabel(scope: !5443, name: "l_yes", file: !5444, line: 33)
!5451 = !DILocation(line: 25, column: 67, scope: !5443)
!5452 = !DILocation(line: 25, column: 77, scope: !5443)
!5453 = !DILocation(line: 30, column: 13, scope: !5443)
!5454 = !DILocation(line: 30, column: 28, scope: !5443)
!5455 = !DILocation(line: 30, column: 26, scope: !5443)
!5456 = !DILocation(line: 27, column: 2, scope: !5443)
!5457 = !{i64 948915, i64 948959, i64 2148433642, i64 2148433663, i64 2148433689, i64 2148433722, i64 2148433756, i64 2148433780}
!5458 = !DILocation(line: 32, column: 2, scope: !5443)
!5459 = !DILocation(line: 33, column: 1, scope: !5443)
!5460 = !DILocation(line: 34, column: 2, scope: !5443)
!5461 = !DILocation(line: 35, column: 1, scope: !5443)
!5462 = distinct !DISubprogram(name: "constant_test_bit", scope: !4155, file: !4155, line: 204, type: !5463, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!598, !277, !4158}
!5465 = !{!5466, !5467}
!5466 = !DILocalVariable(name: "nr", arg: 1, scope: !5462, file: !4155, line: 204, type: !277)
!5467 = !DILocalVariable(name: "addr", arg: 2, scope: !5462, file: !4155, line: 204, type: !4158)
!5468 = !DILocation(line: 204, column: 52, scope: !5462)
!5469 = !DILocation(line: 204, column: 86, scope: !5462)
!5470 = !DILocation(line: 206, column: 19, scope: !5462)
!5471 = !DILocation(line: 206, column: 22, scope: !5462)
!5472 = !DILocation(line: 206, column: 15, scope: !5462)
!5473 = !DILocation(line: 207, column: 4, scope: !5462)
!5474 = !DILocation(line: 207, column: 9, scope: !5462)
!5475 = !DILocation(line: 207, column: 12, scope: !5462)
!5476 = !DILocation(line: 206, column: 44, scope: !5462)
!5477 = !DILocation(line: 207, column: 37, scope: !5462)
!5478 = !DILocation(line: 206, column: 2, scope: !5462)
!5479 = distinct !DISubprogram(name: "variable_test_bit", scope: !4155, file: !4155, line: 224, type: !5463, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5480)
!5480 = !{!5481, !5482, !5483}
!5481 = !DILocalVariable(name: "nr", arg: 1, scope: !5479, file: !4155, line: 224, type: !277)
!5482 = !DILocalVariable(name: "addr", arg: 2, scope: !5479, file: !4155, line: 224, type: !4158)
!5483 = !DILocalVariable(name: "oldbit", scope: !5479, file: !4155, line: 226, type: !598)
!5484 = !DILocation(line: 224, column: 52, scope: !5479)
!5485 = !DILocation(line: 224, column: 86, scope: !5479)
!5486 = !DILocation(line: 226, column: 2, scope: !5479)
!5487 = !DILocation(line: 226, column: 7, scope: !5479)
!5488 = !DILocation(line: 231, column: 33, scope: !5479)
!5489 = !DILocation(line: 231, column: 46, scope: !5479)
!5490 = !DILocation(line: 228, column: 2, scope: !5479)
!5491 = !{i64 2147817566, i64 2147817640}
!5492 = !DILocation(line: 233, column: 9, scope: !5479)
!5493 = !DILocation(line: 234, column: 1, scope: !5479)
!5494 = !DILocation(line: 233, column: 2, scope: !5479)
!5495 = distinct !DISubprogram(name: "_test_bit", scope: !5496, file: !5496, line: 139, type: !4156, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5497)
!5496 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5497 = !{!5498, !5499}
!5498 = !DILocalVariable(name: "nr", arg: 1, scope: !5495, file: !5496, line: 139, type: !291)
!5499 = !DILocalVariable(name: "addr", arg: 2, scope: !5495, file: !5496, line: 139, type: !4158)
!5500 = !DILocation(line: 139, column: 25, scope: !5495)
!5501 = !DILocation(line: 139, column: 59, scope: !5495)
!5502 = !DILocation(line: 141, column: 25, scope: !5495)
!5503 = !DILocation(line: 141, column: 32, scope: !5495)
!5504 = !DILocation(line: 141, column: 30, scope: !5495)
!5505 = !DILocation(line: 141, column: 2, scope: !5495)
!5506 = !DILocation(line: 142, column: 23, scope: !5495)
!5507 = !DILocation(line: 142, column: 27, scope: !5495)
!5508 = !DILocation(line: 142, column: 9, scope: !5495)
!5509 = !DILocation(line: 142, column: 2, scope: !5495)
!5510 = distinct !DISubprogram(name: "cpumask_check", scope: !1287, file: !1287, line: 148, type: !5511, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5513)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!7, !7}
!5513 = !{!5514}
!5514 = !DILocalVariable(name: "cpu", arg: 1, scope: !5510, file: !1287, line: 148, type: !7)
!5515 = !DILocation(line: 148, column: 64, scope: !5510)
!5516 = !DILocation(line: 150, column: 20, scope: !5510)
!5517 = !DILocation(line: 150, column: 2, scope: !5510)
!5518 = !DILocation(line: 151, column: 9, scope: !5510)
!5519 = !DILocation(line: 151, column: 2, scope: !5510)
!5520 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5521, file: !5521, line: 66, type: !5522, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5527)
!5521 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5522 = !DISubroutineType(types: !5523)
!5523 = !{null, !5524, !288}
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5526)
!5526 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5527 = !{!5528, !5529}
!5528 = !DILocalVariable(name: "v", arg: 1, scope: !5520, file: !5521, line: 66, type: !5524)
!5529 = !DILocalVariable(name: "size", arg: 2, scope: !5520, file: !5521, line: 66, type: !288)
!5530 = !DILocation(line: 66, column: 73, scope: !5520)
!5531 = !DILocation(line: 66, column: 83, scope: !5520)
!5532 = !DILocation(line: 68, column: 19, scope: !5520)
!5533 = !DILocation(line: 68, column: 22, scope: !5520)
!5534 = !DILocation(line: 68, column: 2, scope: !5520)
!5535 = !DILocation(line: 69, column: 2, scope: !5520)
!5536 = !DILocation(line: 70, column: 1, scope: !5520)
!5537 = distinct !DISubprogram(name: "kasan_check_read", scope: !5538, file: !5538, line: 40, type: !5539, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5541)
!5538 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!598, !5524, !7}
!5541 = !{!5542, !5543}
!5542 = !DILocalVariable(name: "p", arg: 1, scope: !5537, file: !5538, line: 40, type: !5524)
!5543 = !DILocalVariable(name: "size", arg: 2, scope: !5537, file: !5538, line: 40, type: !7)
!5544 = !DILocation(line: 40, column: 58, scope: !5537)
!5545 = !DILocation(line: 40, column: 74, scope: !5537)
!5546 = !DILocation(line: 42, column: 2, scope: !5537)
!5547 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5548, file: !5548, line: 229, type: !5549, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5551)
!5548 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5549 = !DISubroutineType(types: !5550)
!5550 = !{null, !5524, !288, !46}
!5551 = !{!5552, !5553, !5554}
!5552 = !DILocalVariable(name: "ptr", arg: 1, scope: !5547, file: !5548, line: 229, type: !5524)
!5553 = !DILocalVariable(name: "size", arg: 2, scope: !5547, file: !5548, line: 229, type: !288)
!5554 = !DILocalVariable(name: "type", arg: 3, scope: !5547, file: !5548, line: 230, type: !46)
!5555 = !DILocation(line: 229, column: 60, scope: !5547)
!5556 = !DILocation(line: 229, column: 72, scope: !5547)
!5557 = !DILocation(line: 230, column: 15, scope: !5547)
!5558 = !DILocation(line: 230, column: 23, scope: !5547)
!5559 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1287, file: !1287, line: 140, type: !5560, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{null, !7, !7}
!5562 = !{!5563, !5564}
!5563 = !DILocalVariable(name: "cpu", arg: 1, scope: !5559, file: !1287, line: 140, type: !7)
!5564 = !DILocalVariable(name: "bits", arg: 2, scope: !5559, file: !1287, line: 140, type: !7)
!5565 = !DILocation(line: 140, column: 60, scope: !5559)
!5566 = !DILocation(line: 140, column: 78, scope: !5559)
!5567 = !DILocation(line: 145, column: 1, scope: !5559)
!5568 = distinct !DISubprogram(name: "set_bit", scope: !5569, file: !5569, line: 26, type: !5570, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5573)
!5569 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5570 = !DISubroutineType(types: !5571)
!5571 = !{null, !277, !5572}
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!5573 = !{!5574, !5575}
!5574 = !DILocalVariable(name: "nr", arg: 1, scope: !5568, file: !5569, line: 26, type: !277)
!5575 = !DILocalVariable(name: "addr", arg: 2, scope: !5568, file: !5569, line: 26, type: !5572)
!5576 = !DILocation(line: 26, column: 42, scope: !5568)
!5577 = !DILocation(line: 26, column: 70, scope: !5568)
!5578 = !DILocation(line: 28, column: 26, scope: !5568)
!5579 = !DILocation(line: 28, column: 33, scope: !5568)
!5580 = !DILocation(line: 28, column: 31, scope: !5568)
!5581 = !DILocation(line: 28, column: 2, scope: !5568)
!5582 = !DILocation(line: 29, column: 15, scope: !5568)
!5583 = !DILocation(line: 29, column: 19, scope: !5568)
!5584 = !DILocation(line: 29, column: 2, scope: !5568)
!5585 = !DILocation(line: 30, column: 1, scope: !5568)
!5586 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5521, file: !5521, line: 80, type: !5522, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5587)
!5587 = !{!5588, !5589}
!5588 = !DILocalVariable(name: "v", arg: 1, scope: !5586, file: !5521, line: 80, type: !5524)
!5589 = !DILocalVariable(name: "size", arg: 2, scope: !5586, file: !5521, line: 80, type: !288)
!5590 = !DILocation(line: 80, column: 74, scope: !5586)
!5591 = !DILocation(line: 80, column: 84, scope: !5586)
!5592 = !DILocation(line: 82, column: 20, scope: !5586)
!5593 = !DILocation(line: 82, column: 23, scope: !5586)
!5594 = !DILocation(line: 82, column: 2, scope: !5586)
!5595 = !DILocation(line: 83, column: 2, scope: !5586)
!5596 = !DILocation(line: 84, column: 1, scope: !5586)
!5597 = distinct !DISubprogram(name: "arch_set_bit", scope: !4155, file: !4155, line: 52, type: !5570, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5598)
!5598 = !{!5599, !5600}
!5599 = !DILocalVariable(name: "nr", arg: 1, scope: !5597, file: !4155, line: 52, type: !277)
!5600 = !DILocalVariable(name: "addr", arg: 2, scope: !5597, file: !4155, line: 52, type: !5572)
!5601 = !DILocation(line: 52, column: 19, scope: !5597)
!5602 = !DILocation(line: 52, column: 47, scope: !5597)
!5603 = !DILocation(line: 54, column: 27, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5597, file: !4155, line: 54, column: 6)
!5605 = !DILocation(line: 54, column: 6, scope: !5604)
!5606 = !DILocation(line: 54, column: 6, scope: !5597)
!5607 = !DILocation(line: 56, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5604, file: !4155, line: 54, column: 32)
!5609 = !DILocation(line: 57, column: 12, scope: !5608)
!5610 = !DILocation(line: 55, column: 3, scope: !5608)
!5611 = !{i64 2147803954, i64 2147803993, i64 2147804014, i64 2147804051, i64 2147804074, i64 2147803944}
!5612 = !DILocation(line: 59, column: 2, scope: !5608)
!5613 = !DILocation(line: 61, column: 8, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5604, file: !4155, line: 59, column: 9)
!5615 = !DILocation(line: 61, column: 32, scope: !5614)
!5616 = !DILocation(line: 60, column: 3, scope: !5614)
!5617 = !{i64 2147804239, i64 2147804278, i64 2147804299, i64 2147804336, i64 2147804359, i64 2147804229}
!5618 = !DILocation(line: 63, column: 1, scope: !5597)
!5619 = distinct !DISubprogram(name: "kasan_check_write", scope: !5538, file: !5538, line: 44, type: !5539, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5620)
!5620 = !{!5621, !5622}
!5621 = !DILocalVariable(name: "p", arg: 1, scope: !5619, file: !5538, line: 44, type: !5524)
!5622 = !DILocalVariable(name: "size", arg: 2, scope: !5619, file: !5538, line: 44, type: !7)
!5623 = !DILocation(line: 44, column: 59, scope: !5619)
!5624 = !DILocation(line: 44, column: 75, scope: !5619)
!5625 = !DILocation(line: 46, column: 2, scope: !5619)
!5626 = distinct !DISubprogram(name: "bitmap_copy", scope: !5627, file: !5627, line: 266, type: !5628, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5630)
!5627 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5628 = !DISubroutineType(types: !5629)
!5629 = !{null, !1163, !3669, !7}
!5630 = !{!5631, !5632, !5633, !5634}
!5631 = !DILocalVariable(name: "dst", arg: 1, scope: !5626, file: !5627, line: 266, type: !1163)
!5632 = !DILocalVariable(name: "src", arg: 2, scope: !5626, file: !5627, line: 266, type: !3669)
!5633 = !DILocalVariable(name: "nbits", arg: 3, scope: !5626, file: !5627, line: 267, type: !7)
!5634 = !DILocalVariable(name: "len", scope: !5626, file: !5627, line: 269, type: !7)
!5635 = !DILocation(line: 266, column: 47, scope: !5626)
!5636 = !DILocation(line: 266, column: 73, scope: !5626)
!5637 = !DILocation(line: 267, column: 17, scope: !5626)
!5638 = !DILocation(line: 269, column: 2, scope: !5626)
!5639 = !DILocation(line: 269, column: 15, scope: !5626)
!5640 = !DILocation(line: 269, column: 21, scope: !5626)
!5641 = !DILocation(line: 271, column: 6, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5626, file: !5627, line: 271, column: 6)
!5643 = !DILocation(line: 271, column: 6, scope: !5626)
!5644 = !DILocation(line: 272, column: 11, scope: !5642)
!5645 = !DILocation(line: 272, column: 10, scope: !5642)
!5646 = !DILocation(line: 272, column: 4, scope: !5642)
!5647 = !DILocation(line: 272, column: 8, scope: !5642)
!5648 = !DILocation(line: 272, column: 3, scope: !5642)
!5649 = !DILocation(line: 274, column: 10, scope: !5642)
!5650 = !DILocation(line: 274, column: 15, scope: !5642)
!5651 = !DILocation(line: 274, column: 20, scope: !5642)
!5652 = !DILocation(line: 274, column: 3, scope: !5642)
!5653 = !DILocation(line: 275, column: 1, scope: !5626)
!5654 = distinct !DISubprogram(name: "bitmap_zero", scope: !5627, file: !5627, line: 246, type: !5655, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5657)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{null, !1163, !7}
!5657 = !{!5658, !5659, !5660}
!5658 = !DILocalVariable(name: "dst", arg: 1, scope: !5654, file: !5627, line: 246, type: !1163)
!5659 = !DILocalVariable(name: "nbits", arg: 2, scope: !5654, file: !5627, line: 246, type: !7)
!5660 = !DILocalVariable(name: "len", scope: !5654, file: !5627, line: 248, type: !7)
!5661 = !DILocation(line: 246, column: 47, scope: !5654)
!5662 = !DILocation(line: 246, column: 65, scope: !5654)
!5663 = !DILocation(line: 248, column: 2, scope: !5654)
!5664 = !DILocation(line: 248, column: 15, scope: !5654)
!5665 = !DILocation(line: 248, column: 21, scope: !5654)
!5666 = !DILocation(line: 250, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5654, file: !5627, line: 250, column: 6)
!5668 = !DILocation(line: 250, column: 6, scope: !5654)
!5669 = !DILocation(line: 251, column: 4, scope: !5667)
!5670 = !DILocation(line: 251, column: 8, scope: !5667)
!5671 = !DILocation(line: 251, column: 3, scope: !5667)
!5672 = !DILocation(line: 253, column: 10, scope: !5667)
!5673 = !DILocation(line: 253, column: 18, scope: !5667)
!5674 = !DILocation(line: 253, column: 3, scope: !5667)
!5675 = !DILocation(line: 254, column: 1, scope: !5654)
