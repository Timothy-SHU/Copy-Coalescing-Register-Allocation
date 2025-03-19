; ModuleID = 'drivers/pnp/pnpacpi/core.c'
source_filename = "drivers/pnp/pnpacpi/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnpacpi_protocol: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnpacpi_protocol ; .previous"
module asm ".section\09\22.initcall5.init..kmod_pnp__209_317_pnpacpi_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pnp__209_317_pnpacpi_init5:\09\09\09"
module asm ".long\09__initstub__kmod_pnp__209_317_pnpacpi_init5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.pnp_protocol = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, ptr, ptr }
%struct.acpi_buffer = type { i64, ptr }
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
%struct.acpi_hardware_id = type { %struct.list_head, ptr }

@.str = private unnamed_addr constant [19 x i8] c"Plug and Play ACPI\00", align 1, !dbg !0
@pnpacpi_protocol = hidden global %struct.pnp_protocol { %struct.list_head zeroinitializer, ptr @.str, ptr @pnpacpi_get_resources, ptr @pnpacpi_set_resources, ptr @pnpacpi_disable_resources, ptr @pnpacpi_can_wakeup, ptr @pnpacpi_suspend, ptr @pnpacpi_resume, i8 0, %struct.device zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8, !dbg !7
@__UNIQUE_ID___addressable_pnpacpi_protocol208 = internal global ptr @pnpacpi_protocol, section ".discard.addressable", align 8, !dbg !1963
@__UNIQUE_ID___addressable___initstub__kmod_pnp__209_317_pnpacpi_init5210 = internal global ptr @__initstub__kmod_pnp__209_317_pnpacpi_init5, section ".discard.addressable", align 8, !dbg !1965
@__setup_str_pnpacpi_setup = internal constant [9 x i8] c"pnpacpi=\00", section ".init.rodata", align 1, !dbg !2016
@__setup_pnpacpi_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pnpacpi_setup, ptr @pnpacpi_setup, i32 0 }, section ".init.setup", align 8, !dbg !1967
@pnpacpi_disabled = hidden global i32 0, section ".init.data", align 4, !dbg !1978
@pnp_debug = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !1980
@.str.2 = private unnamed_addr constant [15 x i8] c"get resources\0A\00", align 1, !dbg !1983
@.str.3 = private unnamed_addr constant [15 x i8] c"set resources\0A\00", align 1, !dbg !1988
@.str.4 = private unnamed_addr constant [27 x i8] c"drivers/pnp/pnpacpi/core.c\00", align 1, !dbg !1990
@.str.5 = private unnamed_addr constant [5 x i8] c"_SRS\00", align 1, !dbg !1995
@.str.6 = private unnamed_addr constant [5 x i8] c"_DIS\00", align 1, !dbg !1998
@acpi_disabled = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"\016pnp: PnP ACPI: disabled\0A\00", align 1, !dbg !2000
@.str.8 = private unnamed_addr constant [22 x i8] c"\016pnp: PnP ACPI init\0A\00", align 1, !dbg !2002
@.str.9 = private unnamed_addr constant [35 x i8] c"\016pnp: PnP ACPI: found %d devices\0A\00", align 1, !dbg !2007
@num = internal global i32 0, align 4, !dbg !2014
@pnp_platform_devices = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !2012
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !2021
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_pnpacpi_protocol208, ptr @__UNIQUE_ID___addressable___initstub__kmod_pnp__209_317_pnpacpi_init5210, ptr @__setup_pnpacpi_setup], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnpacpi_get_resources(ptr noundef %dev) #0 align 16 !dbg !2174 {
entry:
  %dev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2176, metadata !DIExpression()), !dbg !2177
  %0 = load i32, ptr @pnp_debug, align 4, !dbg !2178
  %tobool = icmp ne i32 %0, 0, !dbg !2178
  br i1 %tobool, label %if.then, label %if.end, !dbg !2181

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2182

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2184

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2182
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 0, !dbg !2182
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.1, ptr noundef %dev1, ptr noundef @.str.2) #8, !dbg !2182
  br label %if.end, !dbg !2178

if.end:                                           ; preds = %do.end, %entry
  store i32 0, ptr %tmp, align 4, !dbg !2178
  %2 = load i32, ptr %tmp, align 4, !dbg !2181
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2186
  %call = call i32 @pnpacpi_parse_allocated_resource(ptr noundef %3) #9, !dbg !2187
  ret i32 %call, !dbg !2188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnpacpi_set_resources(ptr noundef %dev) #0 align 16 !dbg !2189 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp29 = alloca i64, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2191, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #10, !dbg !2217
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !2192, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #10, !dbg !2219
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2193, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2221
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2194, metadata !DIExpression()), !dbg !2222
  store i32 0, ptr %ret, align 4, !dbg !2222
  %0 = load i32, ptr @pnp_debug, align 4, !dbg !2223
  %tobool = icmp ne i32 %0, 0, !dbg !2223
  br i1 %tobool, label %if.then, label %if.end, !dbg !2226

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2227

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2229

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2229

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2227
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 0, !dbg !2227
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.1, ptr noundef %dev1, ptr noundef @.str.3) #8, !dbg !2227
  br label %if.end, !dbg !2223

if.end:                                           ; preds = %do.end, %entry
  store i32 0, ptr %tmp, align 4, !dbg !2223
  %2 = load i32, ptr %tmp, align 4, !dbg !2226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2195, metadata !DIExpression()), !dbg !2231
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2231
  %dev2 = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 0, !dbg !2231
  %fwnode = getelementptr inbounds %struct.device, ptr %dev2, i32 0, i32 24, !dbg !2231
  %4 = load ptr, ptr %fwnode, align 8, !dbg !2231
  store ptr %4, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2231
  %5 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2231
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %5) #9, !dbg !2231
  br i1 %call, label %cond.true, label %cond.false, !dbg !2231

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2197, metadata !DIExpression()), !dbg !2232
  %6 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2232
  store ptr %6, ptr %__mptr, align 8, !dbg !2232
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2232
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !2232
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !2232
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2231
  %8 = load ptr, ptr %tmp4, align 8, !dbg !2232
  br label %cond.end, !dbg !2231

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2231

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !2231
  store ptr %cond, ptr %tmp3, align 8, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2233
  %9 = load ptr, ptr %tmp3, align 8, !dbg !2231
  store ptr %9, ptr %acpi_dev, align 8, !dbg !2234
  %10 = load ptr, ptr %acpi_dev, align 8, !dbg !2235
  %tobool5 = icmp ne ptr %10, null, !dbg !2235
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2237

if.then6:                                         ; preds = %cond.end
  store i32 -19, ptr %retval, align 4, !dbg !2238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !2238

if.end7:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2199, metadata !DIExpression()), !dbg !2240
  %11 = load ptr, ptr %acpi_dev, align 8, !dbg !2240
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2240
  %data = getelementptr inbounds %struct.pnp_dev, ptr %12, i32 0, i32 21, !dbg !2240
  %13 = load ptr, ptr %data, align 8, !dbg !2240
  %cmp = icmp ne ptr %11, %13, !dbg !2240
  %lnot = xor i1 %cmp, true, !dbg !2240
  %lnot8 = xor i1 %lnot, true, !dbg !2240
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !2240
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2240
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !2241
  %tobool9 = icmp ne i32 %14, 0, !dbg !2241
  %lnot10 = xor i1 %tobool9, true, !dbg !2241
  %lnot12 = xor i1 %lnot10, true, !dbg !2241
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !2241
  %conv = sext i32 %lnot.ext13 to i64, !dbg !2241
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2241
  %tobool14 = icmp ne i64 %expval, 0, !dbg !2241
  br i1 %tobool14, label %if.then15, label %if.end28, !dbg !2240

if.then15:                                        ; preds = %if.end7
  br label %do.body16, !dbg !2241

do.body16:                                        ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !2242
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2202, metadata !DIExpression()), !dbg !2242
  store i32 2307, ptr %__flags, align 4, !dbg !2242
  br label %do.body17, !dbg !2242

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !2243

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2243

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !2242

do.body20:                                        ; preds = %do.end19
  %15 = load i32, ptr %__flags, align 4, !dbg !2245
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 63, i32 %15, i64 12) #10, !dbg !2245, !srcloc !2247
  br label %do.cond21, !dbg !2245

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !2245

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !2242

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !2248

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !2248

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !2241
  br label %do.cond26, !dbg !2242

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !2242

do.end27:                                         ; preds = %do.cond26
  br label %if.end28, !dbg !2242

if.end28:                                         ; preds = %do.end27, %if.end7
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !2240
  %tobool30 = icmp ne i32 %16, 0, !dbg !2240
  %lnot31 = xor i1 %tobool30, true, !dbg !2240
  %lnot33 = xor i1 %lnot31, true, !dbg !2240
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !2240
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !2240
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !2240
  store i64 %expval36, ptr %tmp29, align 8, !dbg !2241
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2250
  %17 = load i64, ptr %tmp29, align 8, !dbg !2240
  %tobool37 = icmp ne i64 %17, 0, !dbg !2250
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2251

if.then38:                                        ; preds = %if.end28
  %18 = load ptr, ptr %acpi_dev, align 8, !dbg !2252
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !2253
  %data39 = getelementptr inbounds %struct.pnp_dev, ptr %19, i32 0, i32 21, !dbg !2254
  store ptr %18, ptr %data39, align 8, !dbg !2255
  br label %if.end40, !dbg !2253

if.end40:                                         ; preds = %if.then38, %if.end28
  %20 = load ptr, ptr %acpi_dev, align 8, !dbg !2256
  %handle41 = getelementptr inbounds %struct.acpi_device, ptr %20, i32 0, i32 2, !dbg !2257
  %21 = load ptr, ptr %handle41, align 8, !dbg !2257
  store ptr %21, ptr %handle, align 8, !dbg !2258
  %22 = load ptr, ptr %handle, align 8, !dbg !2259
  %call42 = call zeroext i1 @acpi_has_method(ptr noundef %22, ptr noundef @.str.5) #9, !dbg !2260
  br i1 %call42, label %if.then43, label %if.end56, !dbg !2261

if.then43:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #10, !dbg !2262
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2205, metadata !DIExpression()), !dbg !2263
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2264
  %call44 = call i32 @pnpacpi_build_resource_template(ptr noundef %23, ptr noundef %buffer) #9, !dbg !2265
  store i32 %call44, ptr %ret, align 4, !dbg !2266
  %24 = load i32, ptr %ret, align 4, !dbg !2267
  %tobool45 = icmp ne i32 %24, 0, !dbg !2267
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !2269

if.then46:                                        ; preds = %if.then43
  %25 = load i32, ptr %ret, align 4, !dbg !2270
  store i32 %25, ptr %retval, align 4, !dbg !2271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2271

if.end47:                                         ; preds = %if.then43
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !2272
  %call48 = call i32 @pnpacpi_encode_resources(ptr noundef %26, ptr noundef %buffer) #9, !dbg !2273
  store i32 %call48, ptr %ret, align 4, !dbg !2274
  %27 = load i32, ptr %ret, align 4, !dbg !2275
  %tobool49 = icmp ne i32 %27, 0, !dbg !2275
  br i1 %tobool49, label %if.end55, label %if.then50, !dbg !2276

if.then50:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2213, metadata !DIExpression()), !dbg !2278
  %28 = load ptr, ptr %handle, align 8, !dbg !2279
  %call51 = call i32 @acpi_set_current_resources(ptr noundef %28, ptr noundef %buffer) #9, !dbg !2280
  store i32 %call51, ptr %status, align 4, !dbg !2281
  %29 = load i32, ptr %status, align 4, !dbg !2282
  %tobool52 = icmp ne i32 %29, 0, !dbg !2282
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !2284

if.then53:                                        ; preds = %if.then50
  store i32 -5, ptr %ret, align 4, !dbg !2285
  br label %if.end54, !dbg !2286

if.end54:                                         ; preds = %if.then53, %if.then50
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !2287
  br label %if.end55, !dbg !2288

if.end55:                                         ; preds = %if.end54, %if.end47
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2289
  %30 = load ptr, ptr %pointer, align 8, !dbg !2289
  call void @kfree(ptr noundef %30) #9, !dbg !2290
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2291
  br label %cleanup, !dbg !2291

cleanup:                                          ; preds = %if.end55, %if.then46
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #10, !dbg !2291
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end56, !dbg !2292

if.end56:                                         ; preds = %cleanup.cont, %if.end40
  %31 = load i32, ptr %ret, align 4, !dbg !2293
  %tobool57 = icmp ne i32 %31, 0, !dbg !2293
  br i1 %tobool57, label %if.end62, label %land.lhs.true, !dbg !2295

land.lhs.true:                                    ; preds = %if.end56
  %32 = load ptr, ptr %acpi_dev, align 8, !dbg !2296
  %call58 = call zeroext i1 @acpi_device_power_manageable(ptr noundef %32) #9, !dbg !2297
  br i1 %call58, label %if.then60, label %if.end62, !dbg !2298

if.then60:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %acpi_dev, align 8, !dbg !2299
  %call61 = call i32 @acpi_device_set_power(ptr noundef %33, i32 noundef 0) #9, !dbg !2300
  store i32 %call61, ptr %ret, align 4, !dbg !2301
  br label %if.end62, !dbg !2302

if.end62:                                         ; preds = %if.then60, %land.lhs.true, %if.end56
  %34 = load i32, ptr %ret, align 4, !dbg !2303
  store i32 %34, ptr %retval, align 4, !dbg !2304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !2304

cleanup63:                                        ; preds = %if.end62, %cleanup, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2305
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #10, !dbg !2305
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #10, !dbg !2305
  %35 = load i32, ptr %retval, align 4, !dbg !2305
  ret i32 %35, !dbg !2305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnpacpi_disable_resources(ptr noundef %dev) #0 align 16 !dbg !2306 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %status = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2308, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #10, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !2309, metadata !DIExpression()), !dbg !2317
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !2318
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2310, metadata !DIExpression()), !dbg !2319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2320
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2311, metadata !DIExpression()), !dbg !2320
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2320
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 0, !dbg !2320
  %fwnode = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 24, !dbg !2320
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2320
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2320
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2320
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #9, !dbg !2320
  br i1 %call, label %cond.true, label %cond.false, !dbg !2320

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2321
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2313, metadata !DIExpression()), !dbg !2321
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2321
  store ptr %3, ptr %__mptr, align 8, !dbg !2321
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2321
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !2321
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2321
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2320
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2321
  br label %cond.end, !dbg !2320

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2320

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !2320
  store ptr %cond, ptr %tmp, align 8, !dbg !2320
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2322
  %6 = load ptr, ptr %tmp, align 8, !dbg !2320
  store ptr %6, ptr %acpi_dev, align 8, !dbg !2323
  %7 = load ptr, ptr %acpi_dev, align 8, !dbg !2324
  %tobool = icmp ne ptr %7, null, !dbg !2324
  br i1 %tobool, label %if.end, label %if.then, !dbg !2326

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !2327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2327

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %acpi_dev, align 8, !dbg !2329
  %call3 = call zeroext i1 @acpi_device_power_manageable(ptr noundef %8) #9, !dbg !2331
  br i1 %call3, label %if.then4, label %if.end6, !dbg !2332

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %acpi_dev, align 8, !dbg !2333
  %call5 = call i32 @acpi_device_set_power(ptr noundef %9, i32 noundef 4) #9, !dbg !2334
  br label %if.end6, !dbg !2334

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load ptr, ptr %acpi_dev, align 8, !dbg !2335
  %handle = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 2, !dbg !2336
  %11 = load ptr, ptr %handle, align 8, !dbg !2336
  %call7 = call i32 @acpi_evaluate_object(ptr noundef %11, ptr noundef @.str.6, ptr noundef null, ptr noundef null) #9, !dbg !2337
  store i32 %call7, ptr %status, align 4, !dbg !2338
  %12 = load i32, ptr %status, align 4, !dbg !2339
  %tobool8 = icmp ne i32 %12, 0, !dbg !2339
  br i1 %tobool8, label %land.lhs.true, label %if.end10, !dbg !2341

land.lhs.true:                                    ; preds = %if.end6
  %13 = load i32, ptr %status, align 4, !dbg !2342
  %cmp = icmp ne i32 %13, 5, !dbg !2343
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !2344

if.then9:                                         ; preds = %land.lhs.true
  store i32 -19, ptr %retval, align 4, !dbg !2345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2345

if.end10:                                         ; preds = %land.lhs.true, %if.end6
  store i32 0, ptr %retval, align 4, !dbg !2346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2346

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !2347
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #10, !dbg !2347
  %14 = load i32, ptr %retval, align 4, !dbg !2347
  ret i32 %14, !dbg !2347
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pnpacpi_can_wakeup(ptr noundef %dev) #0 align 16 !dbg !2348 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2350, metadata !DIExpression()), !dbg !2356
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #10, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !2351, metadata !DIExpression()), !dbg !2358
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2359
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2352, metadata !DIExpression()), !dbg !2359
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2359
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 0, !dbg !2359
  %fwnode = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 24, !dbg !2359
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2359
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2359
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2359
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #9, !dbg !2359
  br i1 %call, label %cond.true, label %cond.false, !dbg !2359

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2360
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2354, metadata !DIExpression()), !dbg !2360
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2360
  store ptr %3, ptr %__mptr, align 8, !dbg !2360
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2360
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !2360
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2359
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2360
  br label %cond.end, !dbg !2359

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2359

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !2359
  store ptr %cond, ptr %tmp, align 8, !dbg !2359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2361
  %6 = load ptr, ptr %tmp, align 8, !dbg !2359
  store ptr %6, ptr %acpi_dev, align 8, !dbg !2358
  %7 = load ptr, ptr %acpi_dev, align 8, !dbg !2362
  %tobool = icmp ne ptr %7, null, !dbg !2362
  br i1 %tobool, label %if.end, label %if.then, !dbg !2364

if.then:                                          ; preds = %cond.end
  store i1 false, ptr %retval, align 1, !dbg !2365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2365

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %acpi_dev, align 8, !dbg !2367
  %handle = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 2, !dbg !2368
  %9 = load ptr, ptr %handle, align 8, !dbg !2368
  %call3 = call zeroext i1 @acpi_bus_can_wakeup(ptr noundef %9) #9, !dbg !2369
  store i1 %call3, ptr %retval, align 1, !dbg !2370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2370

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #10, !dbg !2371
  %10 = load i1, ptr %retval, align 1, !dbg !2371
  ret i1 %10, !dbg !2371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnpacpi_suspend(ptr noundef %dev, i32 %state.coerce) #0 align 16 !dbg !2372 {
entry:
  %retval = alloca i32, align 4
  %state = alloca %struct.pm_message, align 4
  %dev.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %power_state = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0
  store i32 %state.coerce, ptr %coerce.dive, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2374, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2375, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #10, !dbg !2387
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !2376, metadata !DIExpression()), !dbg !2388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2377, metadata !DIExpression()), !dbg !2389
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2389
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 0, !dbg !2389
  %fwnode = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 24, !dbg !2389
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2389
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2389
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2389
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #9, !dbg !2389
  br i1 %call, label %cond.true, label %cond.false, !dbg !2389

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2379, metadata !DIExpression()), !dbg !2390
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2390
  store ptr %3, ptr %__mptr, align 8, !dbg !2390
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2390
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !2390
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2390
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2389
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2390
  br label %cond.end, !dbg !2389

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2389

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !2389
  store ptr %cond, ptr %tmp, align 8, !dbg !2389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2391
  %6 = load ptr, ptr %tmp, align 8, !dbg !2389
  store ptr %6, ptr %acpi_dev, align 8, !dbg !2388
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !2392
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2381, metadata !DIExpression()), !dbg !2393
  store i32 0, ptr %error, align 4, !dbg !2393
  %7 = load ptr, ptr %acpi_dev, align 8, !dbg !2394
  %tobool = icmp ne ptr %7, null, !dbg !2394
  br i1 %tobool, label %if.end, label %if.then, !dbg !2396

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !2397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2397

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2399
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %8, i32 0, i32 0, !dbg !2401
  %call4 = call zeroext i1 @device_can_wakeup(ptr noundef %dev3) #9, !dbg !2402
  br i1 %call4, label %if.then5, label %if.end13, !dbg !2403

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2404
  %dev6 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 0, !dbg !2406
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2407
  %dev7 = getelementptr inbounds %struct.pnp_dev, ptr %10, i32 0, i32 0, !dbg !2408
  %call8 = call zeroext i1 @device_may_wakeup(ptr noundef %dev7) #9, !dbg !2409
  %call9 = call i32 @acpi_pm_set_device_wakeup(ptr noundef %dev6, i1 noundef zeroext %call8) #9, !dbg !2410
  store i32 %call9, ptr %error, align 4, !dbg !2411
  %11 = load i32, ptr %error, align 4, !dbg !2412
  %tobool10 = icmp ne i32 %11, 0, !dbg !2412
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2414

if.then11:                                        ; preds = %if.then5
  %12 = load i32, ptr %error, align 4, !dbg !2415
  store i32 %12, ptr %retval, align 4, !dbg !2416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2416

if.end12:                                         ; preds = %if.then5
  br label %if.end13, !dbg !2417

if.end13:                                         ; preds = %if.end12, %if.end
  %13 = load ptr, ptr %acpi_dev, align 8, !dbg !2418
  %call14 = call zeroext i1 @acpi_device_power_manageable(ptr noundef %13) #9, !dbg !2419
  br i1 %call14, label %if.then15, label %if.end23, !dbg !2420

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr %power_state) #10, !dbg !2421
  call void @llvm.dbg.declare(metadata ptr %power_state, metadata !2382, metadata !DIExpression()), !dbg !2422
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2423
  %dev16 = getelementptr inbounds %struct.pnp_dev, ptr %14, i32 0, i32 0, !dbg !2424
  %call17 = call i32 @acpi_pm_device_sleep_state(ptr noundef %dev16, ptr noundef null, i32 noundef 4) #9, !dbg !2425
  store i32 %call17, ptr %power_state, align 4, !dbg !2422
  %15 = load i32, ptr %power_state, align 4, !dbg !2426
  %cmp = icmp slt i32 %15, 0, !dbg !2428
  br i1 %cmp, label %if.then18, label %if.end21, !dbg !2429

if.then18:                                        ; preds = %if.then15
  %event = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0, !dbg !2430
  %16 = load i32, ptr %event, align 4, !dbg !2430
  %cmp19 = icmp eq i32 %16, 0, !dbg !2431
  %17 = zext i1 %cmp19 to i64, !dbg !2432
  %cond20 = select i1 %cmp19, i32 0, i32 4, !dbg !2432
  store i32 %cond20, ptr %power_state, align 4, !dbg !2433
  br label %if.end21, !dbg !2434

if.end21:                                         ; preds = %if.then18, %if.then15
  %18 = load ptr, ptr %acpi_dev, align 8, !dbg !2435
  %19 = load i32, ptr %power_state, align 4, !dbg !2436
  %call22 = call i32 @acpi_device_set_power(ptr noundef %18, i32 noundef %19) #9, !dbg !2437
  store i32 %call22, ptr %error, align 4, !dbg !2438
  call void @llvm.lifetime.end.p0(i64 4, ptr %power_state) #10, !dbg !2439
  br label %if.end23, !dbg !2440

if.end23:                                         ; preds = %if.end21, %if.end13
  %20 = load i32, ptr %error, align 4, !dbg !2441
  store i32 %20, ptr %retval, align 4, !dbg !2442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2442

cleanup:                                          ; preds = %if.end23, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !2443
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #10, !dbg !2443
  %21 = load i32, ptr %retval, align 4, !dbg !2443
  ret i32 %21, !dbg !2443
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnpacpi_resume(ptr noundef %dev) #0 align 16 !dbg !2444 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2446, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #10, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !2447, metadata !DIExpression()), !dbg !2455
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2456
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2448, metadata !DIExpression()), !dbg !2456
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2456
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 0, !dbg !2456
  %fwnode = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 24, !dbg !2456
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2456
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2456
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2456
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #9, !dbg !2456
  br i1 %call, label %cond.true, label %cond.false, !dbg !2456

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2450, metadata !DIExpression()), !dbg !2457
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2457
  store ptr %3, ptr %__mptr, align 8, !dbg !2457
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2457
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !2457
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2456
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2457
  br label %cond.end, !dbg !2456

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2456

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !2456
  store ptr %cond, ptr %tmp, align 8, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2458
  %6 = load ptr, ptr %tmp, align 8, !dbg !2456
  store ptr %6, ptr %acpi_dev, align 8, !dbg !2455
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2452, metadata !DIExpression()), !dbg !2460
  store i32 0, ptr %error, align 4, !dbg !2460
  %7 = load ptr, ptr %acpi_dev, align 8, !dbg !2461
  %tobool = icmp ne ptr %7, null, !dbg !2461
  br i1 %tobool, label %if.end, label %if.then, !dbg !2463

if.then:                                          ; preds = %cond.end
  store i32 -19, ptr %retval, align 4, !dbg !2464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2464

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2466
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %8, i32 0, i32 0, !dbg !2468
  %call4 = call zeroext i1 @device_may_wakeup(ptr noundef %dev3) #9, !dbg !2469
  br i1 %call4, label %if.then5, label %if.end8, !dbg !2470

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2471
  %dev6 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 0, !dbg !2472
  %call7 = call i32 @acpi_pm_set_device_wakeup(ptr noundef %dev6, i1 noundef zeroext false) #9, !dbg !2473
  br label %if.end8, !dbg !2473

if.end8:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %acpi_dev, align 8, !dbg !2474
  %call9 = call zeroext i1 @acpi_device_power_manageable(ptr noundef %10) #9, !dbg !2476
  br i1 %call9, label %if.then10, label %if.end12, !dbg !2477

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %acpi_dev, align 8, !dbg !2478
  %call11 = call i32 @acpi_device_set_power(ptr noundef %11, i32 noundef 0) #9, !dbg !2479
  store i32 %call11, ptr %error, align 4, !dbg !2480
  br label %if.end12, !dbg !2481

if.end12:                                         ; preds = %if.then10, %if.end8
  %12 = load i32, ptr %error, align 4, !dbg !2482
  store i32 %12, ptr %retval, align 4, !dbg !2483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2483

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !2484
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #10, !dbg !2484
  %13 = load i32, ptr %retval, align 4, !dbg !2484
  ret i32 %13, !dbg !2484
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pnp__209_317_pnpacpi_init5() #1 section ".init.text" align 16 !dbg !2485 {
entry:
  %call = call i32 @pnpacpi_init() #8, !dbg !2486
  ret i32 %call, !dbg !2486
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pnpacpi_init() #1 section ".init.text" align 16 !dbg !2487 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !2488
  %tobool = icmp ne i32 %0, 0, !dbg !2488
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2490

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @pnpacpi_disabled, align 4, !dbg !2491
  %tobool1 = icmp ne i32 %1, 0, !dbg !2491
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2492

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !2493

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2496

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #8, !dbg !2493
  store i32 %call, ptr %tmp, align 4, !dbg !2496
  %2 = load i32, ptr %tmp, align 4, !dbg !2493
  store i32 0, ptr %retval, align 4, !dbg !2498
  br label %return, !dbg !2498

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body2, !dbg !2499

do.body2:                                         ; preds = %if.end
  br label %do.end3, !dbg !2501

do.end3:                                          ; preds = %do.body2
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #8, !dbg !2499
  store i32 %call5, ptr %tmp4, align 4, !dbg !2501
  %3 = load i32, ptr %tmp4, align 4, !dbg !2499
  %call6 = call i32 @pnp_register_protocol(ptr noundef @pnpacpi_protocol) #9, !dbg !2503
  %call7 = call i32 @acpi_get_devices(ptr noundef null, ptr noundef @pnpacpi_add_device_handler, ptr noundef null, ptr noundef null) #9, !dbg !2504
  br label %do.body8, !dbg !2505

do.body8:                                         ; preds = %do.end3
  br label %do.end9, !dbg !2507

do.end9:                                          ; preds = %do.body8
  %4 = load i32, ptr @num, align 4, !dbg !2505
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, i32 noundef %4) #8, !dbg !2505
  store i32 %call11, ptr %tmp10, align 4, !dbg !2507
  %5 = load i32, ptr %tmp10, align 4, !dbg !2505
  store i32 1, ptr @pnp_platform_devices, align 4, !dbg !2509
  store i32 0, ptr %retval, align 4, !dbg !2510
  br label %return, !dbg !2510

return:                                           ; preds = %do.end9, %do.end
  %6 = load i32, ptr %retval, align 4, !dbg !2511
  ret i32 %6, !dbg !2511
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pnpacpi_setup(ptr noundef %str) #1 section ".init.text" align 16 !dbg !2512 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2514, metadata !DIExpression()), !dbg !2515
  %0 = load ptr, ptr %str.addr, align 8, !dbg !2516
  %cmp = icmp eq ptr %0, null, !dbg !2518
  br i1 %cmp, label %if.then, label %if.end, !dbg !2519

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2520
  br label %return, !dbg !2520

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !2521
  %call = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.11, i64 noundef 3) #9, !dbg !2523
  %tobool = icmp ne i32 %call, 0, !dbg !2523
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2524

if.then1:                                         ; preds = %if.end
  store i32 1, ptr @pnpacpi_disabled, align 4, !dbg !2525
  br label %if.end2, !dbg !2526

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 1, ptr %retval, align 4, !dbg !2527
  br label %return, !dbg !2527

return:                                           ; preds = %if.end2, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2528
  ret i32 %2, !dbg !2528
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2529 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2533 dso_local i32 @pnpacpi_parse_allocated_resource(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2535 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2536 dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2539 dso_local i32 @pnpacpi_build_resource_template(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2543 dso_local i32 @pnpacpi_encode_resources(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2544 dso_local i32 @acpi_set_current_resources(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2548 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_device_power_manageable(ptr noundef %adev) #7 align 16 !dbg !2552 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2556, metadata !DIExpression()), !dbg !2557
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2558
  %flags = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 7, !dbg !2559
  %bf.load = load i32, ptr %flags, align 4, !dbg !2560
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !2560
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2560
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2558
  ret i1 %tobool, !dbg !2561
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2562 dso_local i32 @acpi_device_set_power(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2565 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2574 dso_local zeroext i1 @acpi_bus_can_wakeup(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_can_wakeup(ptr noundef %dev) #7 align 16 !dbg !2577 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2581, metadata !DIExpression()), !dbg !2582
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2583
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2584
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !2585
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !2585
  %bf.clear = and i16 %bf.load, 1, !dbg !2585
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2585
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2583
  ret i1 %tobool, !dbg !2586
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2587 dso_local i32 @acpi_pm_set_device_wakeup(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_may_wakeup(ptr noundef %dev) #7 align 16 !dbg !2590 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2594
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2595
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !2596
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !2596
  %bf.clear = and i16 %bf.load, 1, !dbg !2596
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2596
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2594
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2597

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2598
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2599
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2600
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2600
  %tobool2 = icmp ne ptr %2, null, !dbg !2601
  %lnot = xor i1 %tobool2, true, !dbg !2601
  %lnot3 = xor i1 %lnot, true, !dbg !2602
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !2603
  ret i1 %3, !dbg !2604
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2605 dso_local i32 @acpi_pm_device_sleep_state(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2608 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2612 dso_local i32 @pnp_register_protocol(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2616 dso_local i32 @acpi_get_devices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pnpacpi_add_device_handler(ptr noundef %handle, i32 noundef %lvl, ptr noundef %context, ptr noundef %rv) #1 section ".init.text" align 16 !dbg !2624 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %rv.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2626, metadata !DIExpression()), !dbg !2631
  store i32 %lvl, ptr %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lvl.addr, metadata !2627, metadata !DIExpression()), !dbg !2632
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2628, metadata !DIExpression()), !dbg !2633
  store ptr %rv, ptr %rv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rv.addr, metadata !2629, metadata !DIExpression()), !dbg !2634
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %device, metadata !2630, metadata !DIExpression()), !dbg !2636
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2637
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #9, !dbg !2638
  store ptr %call, ptr %device, align 8, !dbg !2636
  %1 = load ptr, ptr %device, align 8, !dbg !2639
  %tobool = icmp ne ptr %1, null, !dbg !2639
  br i1 %tobool, label %if.end, label %if.then, !dbg !2641

if.then:                                          ; preds = %entry
  store i32 16390, ptr %retval, align 4, !dbg !2642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2642

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %device, align 8, !dbg !2643
  %call1 = call zeroext i1 @acpi_is_pnp_device(ptr noundef %2) #9, !dbg !2645
  br i1 %call1, label %if.then2, label %if.end4, !dbg !2646

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %device, align 8, !dbg !2647
  %call3 = call i32 @pnpacpi_add_device(ptr noundef %3) #8, !dbg !2648
  br label %if.end4, !dbg !2648

if.end4:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %retval, align 4, !dbg !2649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2649

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !2650
  %4 = load i32, ptr %retval, align 4, !dbg !2650
  ret i32 %4, !dbg !2650
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2651 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2654 dso_local zeroext i1 @acpi_is_pnp_device(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pnpacpi_add_device(ptr noundef %device) #1 section ".init.text" align 16 !dbg !2656 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %pnpid = alloca ptr, align 8
  %id = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr91 = alloca ptr, align 8
  %tmp94 = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2658, metadata !DIExpression()), !dbg !2669
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !2670
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2659, metadata !DIExpression()), !dbg !2671
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnpid) #10, !dbg !2672
  call void @llvm.dbg.declare(metadata ptr %pnpid, metadata !2660, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #10, !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %id, metadata !2661, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !2676
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2662, metadata !DIExpression()), !dbg !2677
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2678
  %physical_node_count = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 19, !dbg !2680
  %1 = load i32, ptr %physical_node_count, align 8, !dbg !2680
  %tobool = icmp ne i32 %1, 0, !dbg !2678
  br i1 %tobool, label %if.then, label %if.end, !dbg !2681

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2682

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %device.addr, align 8, !dbg !2683
  %handle = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 2, !dbg !2685
  %3 = load ptr, ptr %handle, align 8, !dbg !2685
  %call = call zeroext i1 @acpi_has_method(ptr noundef %3, ptr noundef @.str.10) #9, !dbg !2686
  br i1 %call, label %if.end2, label %if.then1, !dbg !2687

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2688

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %device.addr, align 8, !dbg !2689
  %call3 = call ptr @pnpacpi_get_id(ptr noundef %4) #8, !dbg !2690
  store ptr %call3, ptr %pnpid, align 8, !dbg !2691
  %5 = load ptr, ptr %pnpid, align 8, !dbg !2692
  %tobool4 = icmp ne ptr %5, null, !dbg !2692
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2694

if.then5:                                         ; preds = %if.end2
  store i32 0, ptr %retval, align 4, !dbg !2695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2695

if.end6:                                          ; preds = %if.end2
  %6 = load ptr, ptr %device.addr, align 8, !dbg !2696
  %status = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 6, !dbg !2698
  %bf.load = load i32, ptr %status, align 8, !dbg !2699
  %bf.clear = and i32 %bf.load, 1, !dbg !2699
  %tobool7 = icmp ne i32 %bf.clear, 0, !dbg !2696
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2700

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !2701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2701

if.end9:                                          ; preds = %if.end6
  %7 = load i32, ptr @num, align 4, !dbg !2702
  %8 = load ptr, ptr %pnpid, align 8, !dbg !2703
  %call10 = call ptr @pnp_alloc_dev(ptr noundef @pnpacpi_protocol, i32 noundef %7, ptr noundef %8) #9, !dbg !2704
  store ptr %call10, ptr %dev, align 8, !dbg !2705
  %9 = load ptr, ptr %dev, align 8, !dbg !2706
  %tobool11 = icmp ne ptr %9, null, !dbg !2706
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2708

if.then12:                                        ; preds = %if.end9
  store i32 -12, ptr %retval, align 4, !dbg !2709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2709

if.end13:                                         ; preds = %if.end9
  %10 = load ptr, ptr %dev, align 8, !dbg !2710
  %dev14 = getelementptr inbounds %struct.pnp_dev, ptr %10, i32 0, i32 0, !dbg !2710
  %11 = load ptr, ptr %device.addr, align 8, !dbg !2710
  %tobool15 = icmp ne ptr %11, null, !dbg !2710
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !2710

cond.true:                                        ; preds = %if.end13
  %12 = load ptr, ptr %device.addr, align 8, !dbg !2710
  %call16 = call ptr @acpi_fwnode_handle(ptr noundef %12) #9, !dbg !2710
  br label %cond.end, !dbg !2710

cond.false:                                       ; preds = %if.end13
  br label %cond.end, !dbg !2710

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call16, %cond.true ], [ null, %cond.false ], !dbg !2710
  call void @set_primary_fwnode(ptr noundef %dev14, ptr noundef %cond) #9, !dbg !2710
  %13 = load ptr, ptr %device.addr, align 8, !dbg !2711
  %14 = load ptr, ptr %dev, align 8, !dbg !2712
  %data = getelementptr inbounds %struct.pnp_dev, ptr %14, i32 0, i32 21, !dbg !2713
  store ptr %13, ptr %data, align 8, !dbg !2714
  %15 = load ptr, ptr %device.addr, align 8, !dbg !2715
  %status17 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 6, !dbg !2716
  %bf.load18 = load i32, ptr %status17, align 8, !dbg !2717
  %bf.lshr = lshr i32 %bf.load18, 1, !dbg !2717
  %bf.clear19 = and i32 %bf.lshr, 1, !dbg !2717
  %16 = load ptr, ptr %dev, align 8, !dbg !2718
  %active = getelementptr inbounds %struct.pnp_dev, ptr %16, i32 0, i32 13, !dbg !2719
  store i32 %bf.clear19, ptr %active, align 8, !dbg !2720
  %17 = load ptr, ptr %device.addr, align 8, !dbg !2721
  %handle20 = getelementptr inbounds %struct.acpi_device, ptr %17, i32 0, i32 2, !dbg !2723
  %18 = load ptr, ptr %handle20, align 8, !dbg !2723
  %call21 = call zeroext i1 @acpi_has_method(ptr noundef %18, ptr noundef @.str.5) #9, !dbg !2724
  br i1 %call21, label %if.then22, label %if.end23, !dbg !2725

if.then22:                                        ; preds = %cond.end
  %19 = load ptr, ptr %dev, align 8, !dbg !2726
  %capabilities = getelementptr inbounds %struct.pnp_dev, ptr %19, i32 0, i32 14, !dbg !2727
  %20 = load i32, ptr %capabilities, align 4, !dbg !2728
  %or = or i32 %20, 8, !dbg !2728
  store i32 %or, ptr %capabilities, align 4, !dbg !2728
  br label %if.end23, !dbg !2726

if.end23:                                         ; preds = %if.then22, %cond.end
  %21 = load ptr, ptr %dev, align 8, !dbg !2729
  %capabilities24 = getelementptr inbounds %struct.pnp_dev, ptr %21, i32 0, i32 14, !dbg !2730
  %22 = load i32, ptr %capabilities24, align 4, !dbg !2731
  %or25 = or i32 %22, 1, !dbg !2731
  store i32 %or25, ptr %capabilities24, align 4, !dbg !2731
  %23 = load ptr, ptr %device.addr, align 8, !dbg !2732
  %flags = getelementptr inbounds %struct.acpi_device, ptr %23, i32 0, i32 7, !dbg !2734
  %bf.load26 = load i32, ptr %flags, align 4, !dbg !2735
  %bf.clear27 = and i32 %bf.load26, 1, !dbg !2735
  %tobool28 = icmp ne i32 %bf.clear27, 0, !dbg !2732
  br i1 %tobool28, label %land.lhs.true, label %if.end34, !dbg !2736

land.lhs.true:                                    ; preds = %if.end23
  %24 = load ptr, ptr %dev, align 8, !dbg !2737
  %capabilities29 = getelementptr inbounds %struct.pnp_dev, ptr %24, i32 0, i32 14, !dbg !2738
  %25 = load i32, ptr %capabilities29, align 4, !dbg !2738
  %and = and i32 %25, 8, !dbg !2739
  %tobool30 = icmp ne i32 %and, 0, !dbg !2739
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !2740

if.then31:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %dev, align 8, !dbg !2741
  %capabilities32 = getelementptr inbounds %struct.pnp_dev, ptr %26, i32 0, i32 14, !dbg !2742
  %27 = load i32, ptr %capabilities32, align 4, !dbg !2743
  %or33 = or i32 %27, 2, !dbg !2743
  store i32 %or33, ptr %capabilities32, align 4, !dbg !2743
  br label %if.end34, !dbg !2741

if.end34:                                         ; preds = %if.then31, %land.lhs.true, %if.end23
  %28 = load ptr, ptr %device.addr, align 8, !dbg !2744
  %flags35 = getelementptr inbounds %struct.acpi_device, ptr %28, i32 0, i32 7, !dbg !2746
  %bf.load36 = load i32, ptr %flags35, align 4, !dbg !2747
  %bf.lshr37 = lshr i32 %bf.load36, 1, !dbg !2747
  %bf.clear38 = and i32 %bf.lshr37, 1, !dbg !2747
  %tobool39 = icmp ne i32 %bf.clear38, 0, !dbg !2744
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !2748

if.then40:                                        ; preds = %if.end34
  %29 = load ptr, ptr %dev, align 8, !dbg !2749
  %capabilities41 = getelementptr inbounds %struct.pnp_dev, ptr %29, i32 0, i32 14, !dbg !2750
  %30 = load i32, ptr %capabilities41, align 4, !dbg !2751
  %or42 = or i32 %30, 16, !dbg !2751
  store i32 %or42, ptr %capabilities41, align 4, !dbg !2751
  br label %if.end43, !dbg !2749

if.end43:                                         ; preds = %if.then40, %if.end34
  %31 = load ptr, ptr %device.addr, align 8, !dbg !2752
  %handle44 = getelementptr inbounds %struct.acpi_device, ptr %31, i32 0, i32 2, !dbg !2754
  %32 = load ptr, ptr %handle44, align 8, !dbg !2754
  %call45 = call zeroext i1 @acpi_has_method(ptr noundef %32, ptr noundef @.str.6) #9, !dbg !2755
  br i1 %call45, label %if.then46, label %if.end49, !dbg !2756

if.then46:                                        ; preds = %if.end43
  %33 = load ptr, ptr %dev, align 8, !dbg !2757
  %capabilities47 = getelementptr inbounds %struct.pnp_dev, ptr %33, i32 0, i32 14, !dbg !2758
  %34 = load i32, ptr %capabilities47, align 4, !dbg !2759
  %or48 = or i32 %34, 4, !dbg !2759
  store i32 %or48, ptr %capabilities47, align 4, !dbg !2759
  br label %if.end49, !dbg !2757

if.end49:                                         ; preds = %if.then46, %if.end43
  %35 = load ptr, ptr %device.addr, align 8, !dbg !2760
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %35, i32 0, i32 8, !dbg !2760
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 6, !dbg !2760
  %arraydecay = getelementptr inbounds [40 x i8], ptr %device_name, i64 0, i64 0, !dbg !2760
  %call50 = call i64 @strlen(ptr noundef %arraydecay) #9, !dbg !2762
  %tobool51 = icmp ne i64 %call50, 0, !dbg !2762
  br i1 %tobool51, label %if.then52, label %if.else, !dbg !2763

if.then52:                                        ; preds = %if.end49
  %36 = load ptr, ptr %dev, align 8, !dbg !2764
  %name = getelementptr inbounds %struct.pnp_dev, ptr %36, i32 0, i32 18, !dbg !2765
  %arraydecay53 = getelementptr inbounds [50 x i8], ptr %name, i64 0, i64 0, !dbg !2764
  %37 = load ptr, ptr %device.addr, align 8, !dbg !2766
  %pnp54 = getelementptr inbounds %struct.acpi_device, ptr %37, i32 0, i32 8, !dbg !2766
  %device_name55 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp54, i32 0, i32 6, !dbg !2766
  %arraydecay56 = getelementptr inbounds [40 x i8], ptr %device_name55, i64 0, i64 0, !dbg !2766
  %call57 = call ptr @strncpy(ptr noundef %arraydecay53, ptr noundef %arraydecay56, i64 noundef 50) #9, !dbg !2767
  br label %if.end63, !dbg !2767

if.else:                                          ; preds = %if.end49
  %38 = load ptr, ptr %dev, align 8, !dbg !2768
  %name58 = getelementptr inbounds %struct.pnp_dev, ptr %38, i32 0, i32 18, !dbg !2769
  %arraydecay59 = getelementptr inbounds [50 x i8], ptr %name58, i64 0, i64 0, !dbg !2768
  %39 = load ptr, ptr %device.addr, align 8, !dbg !2770
  %pnp60 = getelementptr inbounds %struct.acpi_device, ptr %39, i32 0, i32 8, !dbg !2770
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp60, i32 0, i32 0, !dbg !2770
  %arraydecay61 = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !2770
  %call62 = call ptr @strncpy(ptr noundef %arraydecay59, ptr noundef %arraydecay61, i64 noundef 50) #9, !dbg !2771
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then52
  %40 = load ptr, ptr %dev, align 8, !dbg !2772
  %name64 = getelementptr inbounds %struct.pnp_dev, ptr %40, i32 0, i32 18, !dbg !2773
  %arrayidx = getelementptr [50 x i8], ptr %name64, i64 0, i64 49, !dbg !2772
  store i8 0, ptr %arrayidx, align 1, !dbg !2774
  %41 = load ptr, ptr %dev, align 8, !dbg !2775
  %active65 = getelementptr inbounds %struct.pnp_dev, ptr %41, i32 0, i32 13, !dbg !2777
  %42 = load i32, ptr %active65, align 8, !dbg !2777
  %tobool66 = icmp ne i32 %42, 0, !dbg !2775
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !2778

if.then67:                                        ; preds = %if.end63
  %43 = load ptr, ptr %dev, align 8, !dbg !2779
  %call68 = call i32 @pnpacpi_parse_allocated_resource(ptr noundef %43) #9, !dbg !2780
  br label %if.end69, !dbg !2780

if.end69:                                         ; preds = %if.then67, %if.end63
  %44 = load ptr, ptr %dev, align 8, !dbg !2781
  %capabilities70 = getelementptr inbounds %struct.pnp_dev, ptr %44, i32 0, i32 14, !dbg !2783
  %45 = load i32, ptr %capabilities70, align 4, !dbg !2783
  %and71 = and i32 %45, 8, !dbg !2784
  %tobool72 = icmp ne i32 %and71, 0, !dbg !2784
  br i1 %tobool72, label %if.then73, label %if.end75, !dbg !2785

if.then73:                                        ; preds = %if.end69
  %46 = load ptr, ptr %dev, align 8, !dbg !2786
  %call74 = call i32 @pnpacpi_parse_resource_option_data(ptr noundef %46) #9, !dbg !2787
  br label %if.end75, !dbg !2787

if.end75:                                         ; preds = %if.then73, %if.end69
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2788
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2663, metadata !DIExpression()), !dbg !2788
  %47 = load ptr, ptr %device.addr, align 8, !dbg !2788
  %pnp76 = getelementptr inbounds %struct.acpi_device, ptr %47, i32 0, i32 8, !dbg !2788
  %ids = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp76, i32 0, i32 5, !dbg !2788
  %next = getelementptr inbounds %struct.list_head, ptr %ids, i32 0, i32 0, !dbg !2788
  %48 = load ptr, ptr %next, align 8, !dbg !2788
  store ptr %48, ptr %__mptr, align 8, !dbg !2788
  %49 = load ptr, ptr %__mptr, align 8, !dbg !2788
  %add.ptr = getelementptr i8, ptr %49, i64 0, !dbg !2788
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2789
  %50 = load ptr, ptr %tmp, align 8, !dbg !2788
  store ptr %50, ptr %id, align 8, !dbg !2789
  br label %for.cond, !dbg !2789

for.cond:                                         ; preds = %for.inc, %if.end75
  %51 = load ptr, ptr %id, align 8, !dbg !2790
  %list = getelementptr inbounds %struct.acpi_hardware_id, ptr %51, i32 0, i32 0, !dbg !2790
  %52 = load ptr, ptr %device.addr, align 8, !dbg !2790
  %pnp77 = getelementptr inbounds %struct.acpi_device, ptr %52, i32 0, i32 8, !dbg !2790
  %ids78 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp77, i32 0, i32 5, !dbg !2790
  %cmp = icmp eq ptr %list, %ids78, !dbg !2790
  %lnot = xor i1 %cmp, true, !dbg !2790
  br i1 %lnot, label %for.body, label %for.end, !dbg !2789

for.body:                                         ; preds = %for.cond
  %53 = load ptr, ptr %id, align 8, !dbg !2791
  %id79 = getelementptr inbounds %struct.acpi_hardware_id, ptr %53, i32 0, i32 1, !dbg !2794
  %54 = load ptr, ptr %id79, align 8, !dbg !2794
  %55 = load ptr, ptr %pnpid, align 8, !dbg !2795
  %call80 = call i32 @strcmp(ptr noundef %54, ptr noundef %55) #9, !dbg !2796
  %tobool81 = icmp ne i32 %call80, 0, !dbg !2796
  br i1 %tobool81, label %if.end83, label %if.then82, !dbg !2797

if.then82:                                        ; preds = %for.body
  br label %for.inc, !dbg !2798

if.end83:                                         ; preds = %for.body
  %56 = load ptr, ptr %id, align 8, !dbg !2799
  %id84 = getelementptr inbounds %struct.acpi_hardware_id, ptr %56, i32 0, i32 1, !dbg !2801
  %57 = load ptr, ptr %id84, align 8, !dbg !2801
  %call85 = call i32 @ispnpidacpi(ptr noundef %57) #8, !dbg !2802
  %tobool86 = icmp ne i32 %call85, 0, !dbg !2802
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !2803

if.then87:                                        ; preds = %if.end83
  br label %for.inc, !dbg !2804

if.end88:                                         ; preds = %if.end83
  %58 = load ptr, ptr %dev, align 8, !dbg !2805
  %59 = load ptr, ptr %id, align 8, !dbg !2806
  %id89 = getelementptr inbounds %struct.acpi_hardware_id, ptr %59, i32 0, i32 1, !dbg !2807
  %60 = load ptr, ptr %id89, align 8, !dbg !2807
  %call90 = call ptr @pnp_add_id(ptr noundef %58, ptr noundef %60) #9, !dbg !2808
  br label %for.inc, !dbg !2809

for.inc:                                          ; preds = %if.end88, %if.then87, %if.then82
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr91) #10, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %__mptr91, metadata !2666, metadata !DIExpression()), !dbg !2810
  %61 = load ptr, ptr %id, align 8, !dbg !2810
  %list92 = getelementptr inbounds %struct.acpi_hardware_id, ptr %61, i32 0, i32 0, !dbg !2810
  %next93 = getelementptr inbounds %struct.list_head, ptr %list92, i32 0, i32 0, !dbg !2810
  %62 = load ptr, ptr %next93, align 8, !dbg !2810
  store ptr %62, ptr %__mptr91, align 8, !dbg !2810
  %63 = load ptr, ptr %__mptr91, align 8, !dbg !2810
  %add.ptr95 = getelementptr i8, ptr %63, i64 0, !dbg !2810
  store ptr %add.ptr95, ptr %tmp94, align 8, !dbg !2810
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr91) #10, !dbg !2790
  %64 = load ptr, ptr %tmp94, align 8, !dbg !2810
  store ptr %64, ptr %id, align 8, !dbg !2790
  br label %for.cond, !dbg !2790, !llvm.loop !2811

for.end:                                          ; preds = %for.cond
  %65 = load ptr, ptr %dev, align 8, !dbg !2815
  %active96 = getelementptr inbounds %struct.pnp_dev, ptr %65, i32 0, i32 13, !dbg !2817
  %66 = load i32, ptr %active96, align 8, !dbg !2817
  %tobool97 = icmp ne i32 %66, 0, !dbg !2815
  br i1 %tobool97, label %if.end99, label %if.then98, !dbg !2818

if.then98:                                        ; preds = %for.end
  %67 = load ptr, ptr %dev, align 8, !dbg !2819
  call void @pnp_init_resources(ptr noundef %67) #9, !dbg !2820
  br label %if.end99, !dbg !2820

if.end99:                                         ; preds = %if.then98, %for.end
  %68 = load ptr, ptr %dev, align 8, !dbg !2821
  %call100 = call i32 @pnp_add_device(ptr noundef %68) #9, !dbg !2822
  store i32 %call100, ptr %error, align 4, !dbg !2823
  %69 = load i32, ptr %error, align 4, !dbg !2824
  %tobool101 = icmp ne i32 %69, 0, !dbg !2824
  br i1 %tobool101, label %if.then102, label %if.end104, !dbg !2826

if.then102:                                       ; preds = %if.end99
  %70 = load ptr, ptr %dev, align 8, !dbg !2827
  %dev103 = getelementptr inbounds %struct.pnp_dev, ptr %70, i32 0, i32 0, !dbg !2829
  call void @put_device(ptr noundef %dev103) #9, !dbg !2830
  %71 = load i32, ptr %error, align 4, !dbg !2831
  store i32 %71, ptr %retval, align 4, !dbg !2832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2832

if.end104:                                        ; preds = %if.end99
  %72 = load i32, ptr @num, align 4, !dbg !2833
  %inc = add i32 %72, 1, !dbg !2833
  store i32 %inc, ptr @num, align 4, !dbg !2833
  store i32 0, ptr %retval, align 4, !dbg !2834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2834

cleanup:                                          ; preds = %if.end104, %if.then102, %if.then12, %if.then8, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #10, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnpid) #10, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !2835
  %73 = load i32, ptr %retval, align 4, !dbg !2835
  ret i32 %73, !dbg !2835
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @pnpacpi_get_id(ptr noundef %device) #1 section ".init.text" align 16 !dbg !2836 {
entry:
  %retval = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %id = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2840, metadata !DIExpression()), !dbg !2848
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #10, !dbg !2849
  call void @llvm.dbg.declare(metadata ptr %id, metadata !2841, metadata !DIExpression()), !dbg !2850
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2842, metadata !DIExpression()), !dbg !2851
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2851
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 8, !dbg !2851
  %ids = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 5, !dbg !2851
  %next = getelementptr inbounds %struct.list_head, ptr %ids, i32 0, i32 0, !dbg !2851
  %1 = load ptr, ptr %next, align 8, !dbg !2851
  store ptr %1, ptr %__mptr, align 8, !dbg !2851
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2851
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2851
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2852
  %3 = load ptr, ptr %tmp, align 8, !dbg !2851
  store ptr %3, ptr %id, align 8, !dbg !2852
  br label %for.cond, !dbg !2852

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %id, align 8, !dbg !2853
  %list = getelementptr inbounds %struct.acpi_hardware_id, ptr %4, i32 0, i32 0, !dbg !2853
  %5 = load ptr, ptr %device.addr, align 8, !dbg !2853
  %pnp1 = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 8, !dbg !2853
  %ids2 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp1, i32 0, i32 5, !dbg !2853
  %cmp = icmp eq ptr %list, %ids2, !dbg !2853
  %lnot = xor i1 %cmp, true, !dbg !2853
  br i1 %lnot, label %for.body, label %for.end, !dbg !2852

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %id, align 8, !dbg !2854
  %id3 = getelementptr inbounds %struct.acpi_hardware_id, ptr %6, i32 0, i32 1, !dbg !2857
  %7 = load ptr, ptr %id3, align 8, !dbg !2857
  %call = call i32 @ispnpidacpi(ptr noundef %7) #8, !dbg !2858
  %tobool = icmp ne i32 %call, 0, !dbg !2858
  br i1 %tobool, label %if.then, label %if.end, !dbg !2859

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %id, align 8, !dbg !2860
  %id4 = getelementptr inbounds %struct.acpi_hardware_id, ptr %8, i32 0, i32 1, !dbg !2861
  %9 = load ptr, ptr %id4, align 8, !dbg !2861
  store ptr %9, ptr %retval, align 8, !dbg !2862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2862

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2863

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #10, !dbg !2864
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !2845, metadata !DIExpression()), !dbg !2864
  %10 = load ptr, ptr %id, align 8, !dbg !2864
  %list6 = getelementptr inbounds %struct.acpi_hardware_id, ptr %10, i32 0, i32 0, !dbg !2864
  %next7 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !2864
  %11 = load ptr, ptr %next7, align 8, !dbg !2864
  store ptr %11, ptr %__mptr5, align 8, !dbg !2864
  %12 = load ptr, ptr %__mptr5, align 8, !dbg !2864
  %add.ptr9 = getelementptr i8, ptr %12, i64 0, !dbg !2864
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !2864
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #10, !dbg !2853
  %13 = load ptr, ptr %tmp8, align 8, !dbg !2864
  store ptr %13, ptr %id, align 8, !dbg !2853
  br label %for.cond, !dbg !2853, !llvm.loop !2865

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2867

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #10, !dbg !2868
  %14 = load ptr, ptr %retval, align 8, !dbg !2868
  ret ptr %14, !dbg !2868
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2869 dso_local ptr @pnp_alloc_dev(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2872 dso_local void @set_primary_fwnode(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_handle(ptr noundef %adev) #7 align 16 !dbg !2875 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2879, metadata !DIExpression()), !dbg !2880
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2881
  %fwnode = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 3, !dbg !2882
  ret ptr %fwnode, !dbg !2883
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2884 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2888 dso_local ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2891 dso_local i32 @pnpacpi_parse_resource_option_data(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2892 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ispnpidacpi(ptr noundef %id) #1 section ".init.text" align 16 !dbg !2895 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2899, metadata !DIExpression()), !dbg !2900
  %0 = load ptr, ptr %id.addr, align 8, !dbg !2901
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !2901
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2901
  %conv = zext i8 %1 to i32, !dbg !2901
  %cmp = icmp sle i32 65, %conv, !dbg !2901
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !2901

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %id.addr, align 8, !dbg !2901
  %arrayidx2 = getelementptr i8, ptr %2, i64 0, !dbg !2901
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !2901
  %conv3 = zext i8 %3 to i32, !dbg !2901
  %cmp4 = icmp sle i32 %conv3, 90, !dbg !2901
  br i1 %cmp4, label %if.end, label %if.then, !dbg !2903

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !2901
  br label %return, !dbg !2901

if.end:                                           ; preds = %land.lhs.true
  %4 = load ptr, ptr %id.addr, align 8, !dbg !2904
  %arrayidx6 = getelementptr i8, ptr %4, i64 1, !dbg !2904
  %5 = load i8, ptr %arrayidx6, align 1, !dbg !2904
  %conv7 = zext i8 %5 to i32, !dbg !2904
  %cmp8 = icmp sle i32 65, %conv7, !dbg !2904
  br i1 %cmp8, label %land.lhs.true10, label %if.then15, !dbg !2904

land.lhs.true10:                                  ; preds = %if.end
  %6 = load ptr, ptr %id.addr, align 8, !dbg !2904
  %arrayidx11 = getelementptr i8, ptr %6, i64 1, !dbg !2904
  %7 = load i8, ptr %arrayidx11, align 1, !dbg !2904
  %conv12 = zext i8 %7 to i32, !dbg !2904
  %cmp13 = icmp sle i32 %conv12, 90, !dbg !2904
  br i1 %cmp13, label %if.end16, label %if.then15, !dbg !2906

if.then15:                                        ; preds = %land.lhs.true10, %if.end
  store i32 0, ptr %retval, align 4, !dbg !2904
  br label %return, !dbg !2904

if.end16:                                         ; preds = %land.lhs.true10
  %8 = load ptr, ptr %id.addr, align 8, !dbg !2907
  %arrayidx17 = getelementptr i8, ptr %8, i64 2, !dbg !2907
  %9 = load i8, ptr %arrayidx17, align 1, !dbg !2907
  %conv18 = zext i8 %9 to i32, !dbg !2907
  %cmp19 = icmp sle i32 65, %conv18, !dbg !2907
  br i1 %cmp19, label %land.lhs.true21, label %if.then26, !dbg !2907

land.lhs.true21:                                  ; preds = %if.end16
  %10 = load ptr, ptr %id.addr, align 8, !dbg !2907
  %arrayidx22 = getelementptr i8, ptr %10, i64 2, !dbg !2907
  %11 = load i8, ptr %arrayidx22, align 1, !dbg !2907
  %conv23 = zext i8 %11 to i32, !dbg !2907
  %cmp24 = icmp sle i32 %conv23, 90, !dbg !2907
  br i1 %cmp24, label %if.end27, label %if.then26, !dbg !2909

if.then26:                                        ; preds = %land.lhs.true21, %if.end16
  store i32 0, ptr %retval, align 4, !dbg !2907
  br label %return, !dbg !2907

if.end27:                                         ; preds = %land.lhs.true21
  %12 = load ptr, ptr %id.addr, align 8, !dbg !2910
  %arrayidx28 = getelementptr i8, ptr %12, i64 3, !dbg !2910
  %13 = load i8, ptr %arrayidx28, align 1, !dbg !2910
  %conv29 = zext i8 %13 to i32, !dbg !2910
  %cmp30 = icmp sle i32 48, %conv29, !dbg !2910
  br i1 %cmp30, label %land.lhs.true32, label %lor.lhs.false, !dbg !2910

land.lhs.true32:                                  ; preds = %if.end27
  %14 = load ptr, ptr %id.addr, align 8, !dbg !2910
  %arrayidx33 = getelementptr i8, ptr %14, i64 3, !dbg !2910
  %15 = load i8, ptr %arrayidx33, align 1, !dbg !2910
  %conv34 = zext i8 %15 to i32, !dbg !2910
  %cmp35 = icmp sle i32 %conv34, 57, !dbg !2910
  br i1 %cmp35, label %if.end47, label %lor.lhs.false, !dbg !2910

lor.lhs.false:                                    ; preds = %land.lhs.true32, %if.end27
  %16 = load ptr, ptr %id.addr, align 8, !dbg !2910
  %arrayidx37 = getelementptr i8, ptr %16, i64 3, !dbg !2910
  %17 = load i8, ptr %arrayidx37, align 1, !dbg !2910
  %conv38 = zext i8 %17 to i32, !dbg !2910
  %cmp39 = icmp sle i32 65, %conv38, !dbg !2910
  br i1 %cmp39, label %land.lhs.true41, label %if.then46, !dbg !2910

land.lhs.true41:                                  ; preds = %lor.lhs.false
  %18 = load ptr, ptr %id.addr, align 8, !dbg !2910
  %arrayidx42 = getelementptr i8, ptr %18, i64 3, !dbg !2910
  %19 = load i8, ptr %arrayidx42, align 1, !dbg !2910
  %conv43 = zext i8 %19 to i32, !dbg !2910
  %cmp44 = icmp sle i32 %conv43, 70, !dbg !2910
  br i1 %cmp44, label %if.end47, label %if.then46, !dbg !2912

if.then46:                                        ; preds = %land.lhs.true41, %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !2910
  br label %return, !dbg !2910

if.end47:                                         ; preds = %land.lhs.true41, %land.lhs.true32
  %20 = load ptr, ptr %id.addr, align 8, !dbg !2913
  %arrayidx48 = getelementptr i8, ptr %20, i64 4, !dbg !2913
  %21 = load i8, ptr %arrayidx48, align 1, !dbg !2913
  %conv49 = zext i8 %21 to i32, !dbg !2913
  %cmp50 = icmp sle i32 48, %conv49, !dbg !2913
  br i1 %cmp50, label %land.lhs.true52, label %lor.lhs.false57, !dbg !2913

land.lhs.true52:                                  ; preds = %if.end47
  %22 = load ptr, ptr %id.addr, align 8, !dbg !2913
  %arrayidx53 = getelementptr i8, ptr %22, i64 4, !dbg !2913
  %23 = load i8, ptr %arrayidx53, align 1, !dbg !2913
  %conv54 = zext i8 %23 to i32, !dbg !2913
  %cmp55 = icmp sle i32 %conv54, 57, !dbg !2913
  br i1 %cmp55, label %if.end68, label %lor.lhs.false57, !dbg !2913

lor.lhs.false57:                                  ; preds = %land.lhs.true52, %if.end47
  %24 = load ptr, ptr %id.addr, align 8, !dbg !2913
  %arrayidx58 = getelementptr i8, ptr %24, i64 4, !dbg !2913
  %25 = load i8, ptr %arrayidx58, align 1, !dbg !2913
  %conv59 = zext i8 %25 to i32, !dbg !2913
  %cmp60 = icmp sle i32 65, %conv59, !dbg !2913
  br i1 %cmp60, label %land.lhs.true62, label %if.then67, !dbg !2913

land.lhs.true62:                                  ; preds = %lor.lhs.false57
  %26 = load ptr, ptr %id.addr, align 8, !dbg !2913
  %arrayidx63 = getelementptr i8, ptr %26, i64 4, !dbg !2913
  %27 = load i8, ptr %arrayidx63, align 1, !dbg !2913
  %conv64 = zext i8 %27 to i32, !dbg !2913
  %cmp65 = icmp sle i32 %conv64, 70, !dbg !2913
  br i1 %cmp65, label %if.end68, label %if.then67, !dbg !2915

if.then67:                                        ; preds = %land.lhs.true62, %lor.lhs.false57
  store i32 0, ptr %retval, align 4, !dbg !2913
  br label %return, !dbg !2913

if.end68:                                         ; preds = %land.lhs.true62, %land.lhs.true52
  %28 = load ptr, ptr %id.addr, align 8, !dbg !2916
  %arrayidx69 = getelementptr i8, ptr %28, i64 5, !dbg !2916
  %29 = load i8, ptr %arrayidx69, align 1, !dbg !2916
  %conv70 = zext i8 %29 to i32, !dbg !2916
  %cmp71 = icmp sle i32 48, %conv70, !dbg !2916
  br i1 %cmp71, label %land.lhs.true73, label %lor.lhs.false78, !dbg !2916

land.lhs.true73:                                  ; preds = %if.end68
  %30 = load ptr, ptr %id.addr, align 8, !dbg !2916
  %arrayidx74 = getelementptr i8, ptr %30, i64 5, !dbg !2916
  %31 = load i8, ptr %arrayidx74, align 1, !dbg !2916
  %conv75 = zext i8 %31 to i32, !dbg !2916
  %cmp76 = icmp sle i32 %conv75, 57, !dbg !2916
  br i1 %cmp76, label %if.end89, label %lor.lhs.false78, !dbg !2916

lor.lhs.false78:                                  ; preds = %land.lhs.true73, %if.end68
  %32 = load ptr, ptr %id.addr, align 8, !dbg !2916
  %arrayidx79 = getelementptr i8, ptr %32, i64 5, !dbg !2916
  %33 = load i8, ptr %arrayidx79, align 1, !dbg !2916
  %conv80 = zext i8 %33 to i32, !dbg !2916
  %cmp81 = icmp sle i32 65, %conv80, !dbg !2916
  br i1 %cmp81, label %land.lhs.true83, label %if.then88, !dbg !2916

land.lhs.true83:                                  ; preds = %lor.lhs.false78
  %34 = load ptr, ptr %id.addr, align 8, !dbg !2916
  %arrayidx84 = getelementptr i8, ptr %34, i64 5, !dbg !2916
  %35 = load i8, ptr %arrayidx84, align 1, !dbg !2916
  %conv85 = zext i8 %35 to i32, !dbg !2916
  %cmp86 = icmp sle i32 %conv85, 70, !dbg !2916
  br i1 %cmp86, label %if.end89, label %if.then88, !dbg !2918

if.then88:                                        ; preds = %land.lhs.true83, %lor.lhs.false78
  store i32 0, ptr %retval, align 4, !dbg !2916
  br label %return, !dbg !2916

if.end89:                                         ; preds = %land.lhs.true83, %land.lhs.true73
  %36 = load ptr, ptr %id.addr, align 8, !dbg !2919
  %arrayidx90 = getelementptr i8, ptr %36, i64 6, !dbg !2919
  %37 = load i8, ptr %arrayidx90, align 1, !dbg !2919
  %conv91 = zext i8 %37 to i32, !dbg !2919
  %cmp92 = icmp sle i32 48, %conv91, !dbg !2919
  br i1 %cmp92, label %land.lhs.true94, label %lor.lhs.false99, !dbg !2919

land.lhs.true94:                                  ; preds = %if.end89
  %38 = load ptr, ptr %id.addr, align 8, !dbg !2919
  %arrayidx95 = getelementptr i8, ptr %38, i64 6, !dbg !2919
  %39 = load i8, ptr %arrayidx95, align 1, !dbg !2919
  %conv96 = zext i8 %39 to i32, !dbg !2919
  %cmp97 = icmp sle i32 %conv96, 57, !dbg !2919
  br i1 %cmp97, label %if.end110, label %lor.lhs.false99, !dbg !2919

lor.lhs.false99:                                  ; preds = %land.lhs.true94, %if.end89
  %40 = load ptr, ptr %id.addr, align 8, !dbg !2919
  %arrayidx100 = getelementptr i8, ptr %40, i64 6, !dbg !2919
  %41 = load i8, ptr %arrayidx100, align 1, !dbg !2919
  %conv101 = zext i8 %41 to i32, !dbg !2919
  %cmp102 = icmp sle i32 65, %conv101, !dbg !2919
  br i1 %cmp102, label %land.lhs.true104, label %if.then109, !dbg !2919

land.lhs.true104:                                 ; preds = %lor.lhs.false99
  %42 = load ptr, ptr %id.addr, align 8, !dbg !2919
  %arrayidx105 = getelementptr i8, ptr %42, i64 6, !dbg !2919
  %43 = load i8, ptr %arrayidx105, align 1, !dbg !2919
  %conv106 = zext i8 %43 to i32, !dbg !2919
  %cmp107 = icmp sle i32 %conv106, 70, !dbg !2919
  br i1 %cmp107, label %if.end110, label %if.then109, !dbg !2921

if.then109:                                       ; preds = %land.lhs.true104, %lor.lhs.false99
  store i32 0, ptr %retval, align 4, !dbg !2919
  br label %return, !dbg !2919

if.end110:                                        ; preds = %land.lhs.true104, %land.lhs.true94
  %44 = load ptr, ptr %id.addr, align 8, !dbg !2922
  %arrayidx111 = getelementptr i8, ptr %44, i64 7, !dbg !2922
  %45 = load i8, ptr %arrayidx111, align 1, !dbg !2922
  %conv112 = zext i8 %45 to i32, !dbg !2922
  %cmp113 = icmp ne i32 %conv112, 0, !dbg !2924
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !2925

if.then115:                                       ; preds = %if.end110
  store i32 0, ptr %retval, align 4, !dbg !2926
  br label %return, !dbg !2926

if.end116:                                        ; preds = %if.end110
  store i32 1, ptr %retval, align 4, !dbg !2927
  br label %return, !dbg !2927

return:                                           ; preds = %if.end116, %if.then115, %if.then109, %if.then88, %if.then67, %if.then46, %if.then26, %if.then15, %if.then
  %46 = load i32, ptr %retval, align 4, !dbg !2928
  ret i32 %46, !dbg !2928
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2929 dso_local ptr @pnp_add_id(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2932 dso_local void @pnp_init_resources(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2933 dso_local i32 @pnp_add_device(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2934 dso_local void @put_device(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2935 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172}
!llvm.ident = !{!2173}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/pnp/pnpacpi/core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61bb4997c61ff8166556d4f32b8ba072")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 19)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "pnpacpi_protocol", scope: !9, file: !2, line: 184, type: !2024, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/pnpacpi/.core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnpacpi/pnp\22 -D KBUILD_BASENAME=\22core\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/pnpacpi/core.ll drivers/pnp/pnpacpi/core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !95, globals: !1962, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !25, !31, !38, !43, !51, !59, !65, !74, !79, !84, !90}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !19, line: 312, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!22 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!23 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!24 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !26, line: 45, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!29 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!30 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !32, line: 487, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!33 = !{!34, !35, !36, !37}
!34 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!35 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!36 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!37 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 620, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!47 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!48 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!49 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!50 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 597, baseType: !52, size: 32, elements: !53)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!55 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!56 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!57 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!58 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !60, line: 30, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!63 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!64 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !32, line: 547, baseType: !13, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!68 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!69 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!70 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!71 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!72 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!73 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !32, line: 564, baseType: !13, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!77 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!78 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !32, line: 577, baseType: !13, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!82 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !32, line: 503, baseType: !13, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!87 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!88 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!89 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 10, baseType: !13, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "false", value: 0)
!94 = !DIEnumerator(name: "true", value: 1)
!95 = !{!96, !97, !197, !1956, !1957}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !99, line: 367, size: 11200, elements: !100)
!99 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!100 = !{!101, !106, !107, !110, !1701, !1702, !1703, !1712, !1730, !1809, !1839, !1863, !1884, !1890, !1899, !1931, !1945, !1949, !1950, !1951, !1952, !1953, !1954, !1955}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !98, file: !99, line: 368, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !103, line: 21, baseType: !104)
!103 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !105, line: 27, baseType: !13)
!105 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !98, file: !99, line: 369, baseType: !52, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !98, file: !99, line: 370, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !109, line: 424, baseType: !96)
!109 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !98, file: !99, line: 371, baseType: !111, size: 512, offset: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !112, line: 41, size: 512, elements: !113)
!112 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!113 = !{!114, !116, !1697, !1698, !1699, !1700}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !111, file: !112, line: 42, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !111, file: !112, line: 43, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !112, line: 125, size: 1408, elements: !120)
!120 = !{!121, !125, !129, !138, !1627, !1628, !1632, !1636, !1640, !1644, !1648, !1649, !1653, !1657, !1661, !1672, !1673, !1674, !1675, !1685, !1689, !1693}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !119, file: !112, line: 126, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!115, !115}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !119, file: !112, line: 127, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !115}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !119, file: !112, line: 128, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !136}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !134, line: 35, baseType: !135)
!134 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!135 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !119, file: !112, line: 129, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !136, !144}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !32, line: 705, size: 5824, elements: !147)
!147 = !{!148, !809, !811, !814, !815, !866, !1332, !1333, !1334, !1335, !1336, !1343, !1513, !1526, !1536, !1540, !1542, !1543, !1544, !1548, !1555, !1556, !1559, !1562, !1566, !1567, !1568, !1571, !1572, !1573, !1574, !1604, !1605, !1606, !1609, !1612, !1621, !1622, !1623, !1624, !1625, !1626}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !146, file: !32, line: 706, baseType: !149, size: 512)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !150, line: 64, size: 512, elements: !151)
!150 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!151 = !{!152, !155, !161, !163, !250, !679, !794, !804, !805, !806, !807, !808}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !150, line: 65, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !149, file: !150, line: 66, baseType: !156, size: 128, offset: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !134, line: 190, size: 128, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !134, line: 191, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !134, line: 191, baseType: !159, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !149, file: !150, line: 67, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !149, file: !150, line: 68, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !150, line: 168, size: 768, elements: !166)
!166 = !{!167, !168, !209, !210}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !150, line: 169, baseType: !156, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !165, file: !150, line: 170, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 29, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 17, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 18, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 18, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 19, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !178, line: 14, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !178, line: 15, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !182, line: 44, baseType: !183)
!182 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !182, line: 14, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !182, line: 15, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !182, line: 15, size: 32, elements: !187)
!187 = !{!188, !193, !201}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !182, line: 16, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !134, line: 174, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 172, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !190, file: !134, line: 173, baseType: !52, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 24, baseType: !194, size: 16)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 24, size: 16, elements: !195)
!195 = !{!196, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !194, file: !182, line: 25, baseType: !197, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !103, line: 17, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !105, line: 21, baseType: !199)
!199 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !194, file: !182, line: 26, baseType: !197, size: 8, offset: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 28, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 28, size: 32, elements: !203)
!203 = !{!204, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !202, file: !182, line: 29, baseType: !205, size: 16)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !103, line: 19, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !105, line: 24, baseType: !207)
!207 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !202, file: !182, line: 30, baseType: !205, size: 16, offset: 16)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !150, line: 171, baseType: !149, size: 512, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !165, file: !150, line: 172, baseType: !211, size: 64, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !150, line: 133, size: 192, elements: !214)
!214 = !{!215, !222, !227}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !213, file: !150, line: 134, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!52, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !150, line: 135, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!153, !220}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !213, file: !150, line: 136, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!52, !220, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !150, line: 125, size: 20736, elements: !234)
!234 = !{!235, !240, !244, !245, !249}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !233, file: !150, line: 126, baseType: !236, size: 192)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 192, elements: !238)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!238 = !{!239}
!239 = !DISubrange(count: 3)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !233, file: !150, line: 127, baseType: !241, size: 4096, offset: 192)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 4096, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !233, file: !150, line: 128, baseType: !52, size: 32, offset: 4288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !233, file: !150, line: 129, baseType: !246, size: 16384, offset: 4320)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 2048)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !233, file: !150, line: 130, baseType: !52, size: 32, offset: 20704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !149, file: !150, line: 69, baseType: !251, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !150, line: 116, size: 384, elements: !254)
!254 = !{!255, !259, !288, !625, !656, !660}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !253, file: !150, line: 117, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !162}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !253, file: !150, line: 118, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !263, line: 254, size: 128, elements: !264)
!263 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!264 = !{!265, !280}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !262, file: !263, line: 255, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !162, !274, !237}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 66, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !271, line: 73, baseType: !272)
!271 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !271, line: 15, baseType: !273)
!273 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !263, line: 30, size: 128, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !263, line: 31, baseType: !153, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !275, file: !263, line: 32, baseType: !279, size: 16, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !134, line: 24, baseType: !207)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !262, file: !263, line: 256, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!269, !162, !274, !153, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 61, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !271, line: 72, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !271, line: 16, baseType: !287)
!287 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !253, file: !150, line: 119, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !263, line: 84, size: 320, elements: !293)
!293 = !{!294, !295, !299, !621, !623}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !263, line: 85, baseType: !153, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !292, file: !263, line: 86, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!279, !162, !274, !52}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !292, file: !263, line: 88, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!279, !162, !303, !52}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !263, line: 175, size: 512, elements: !305)
!305 = !{!306, !307, !308, !309, !316, !326, !327}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !304, file: !263, line: 176, baseType: !275, size: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !304, file: !263, line: 177, baseType: !284, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !304, file: !263, line: 178, baseType: !96, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !304, file: !263, line: 179, baseType: !310, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !315, line: 351, flags: DIFlagFwdDecl)
!315 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !304, file: !263, line: 180, baseType: !317, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!269, !320, !162, !303, !237, !323, !284}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !322, line: 537, flags: DIFlagFwdDecl)
!322 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !134, line: 52, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !271, line: 88, baseType: !325)
!325 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !304, file: !263, line: 182, baseType: !317, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !304, file: !263, line: 184, baseType: !328, size: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!52, !320, !162, !303, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !333, line: 625, size: 1344, elements: !334)
!333 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!334 = !{!335, !352, !572, !578, !585, !586, !591, !592, !604, !605, !608, !612, !613, !614, !615, !616, !619}
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !333, line: 628, baseType: !336, size: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 628, size: 128, elements: !337)
!337 = !{!338, !343}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !333, line: 629, baseType: !339, size: 128)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !333, line: 629, size: 128, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !339, file: !333, line: 631, baseType: !287, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !339, file: !333, line: 632, baseType: !287, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !336, file: !333, line: 635, baseType: !344, size: 128, align: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !134, line: 232, size: 128, align: 64, elements: !345)
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !134, line: 233, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !344, file: !134, line: 234, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !347}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !332, file: !333, line: 639, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !333, line: 733, size: 10240, elements: !355)
!355 = !{!356, !568}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !333, line: 734, baseType: !357, size: 10240)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !333, line: 734, size: 10240, elements: !358)
!358 = !{!359, !363, !377, !381, !382, !383, !384, !385, !386, !394, !395, !396, !405, !406, !415, !416, !417, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !464, !478, !481, !534, !535, !536, !539, !542, !543, !546, !547, !548, !555, !556}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !333, line: 739, baseType: !360, size: 512, align: 512)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !333, line: 739, size: 512, align: 512, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !360, file: !333, line: 747, baseType: !189, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !357, file: !333, line: 750, baseType: !364, size: 128, offset: 512)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !365, line: 218, size: 128, elements: !366)
!365 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!366 = !{!367, !375, !376}
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !365, line: 219, baseType: !368, size: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !365, line: 219, size: 32, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !368, file: !365, line: 220, baseType: !169, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !368, file: !365, line: 221, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !365, line: 197, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 197, elements: !374)
!374 = !{}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !364, file: !365, line: 223, baseType: !13, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !364, file: !365, line: 224, baseType: !96, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !357, file: !333, line: 752, baseType: !378, size: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!287, !320, !287, !287, !287, !287}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !357, file: !333, line: 756, baseType: !287, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !357, file: !333, line: 757, baseType: !287, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !357, file: !333, line: 760, baseType: !287, size: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !357, file: !333, line: 761, baseType: !287, size: 64, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !357, file: !333, line: 763, baseType: !287, size: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !357, file: !333, line: 764, baseType: !387, size: 64, offset: 1024)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !322, line: 299, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 299, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !389, file: !322, line: 299, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !393, line: 18, baseType: !287)
!393 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!394 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !357, file: !333, line: 773, baseType: !189, size: 32, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !357, file: !333, line: 785, baseType: !189, size: 32, offset: 1120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !357, file: !333, line: 795, baseType: !397, size: 64, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !333, line: 726, size: 128, elements: !399)
!399 = !{!400, !404}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !398, file: !333, line: 727, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !103, line: 23, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !105, line: 31, baseType: !403)
!403 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !398, file: !333, line: 728, baseType: !52, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !357, file: !333, line: 801, baseType: !287, size: 64, offset: 1216)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !357, file: !333, line: 804, baseType: !407, size: 64, offset: 1280)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !408, line: 13, baseType: !409)
!408 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !134, line: 181, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 179, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !410, file: !134, line: 180, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !103, line: 22, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !105, line: 30, baseType: !325)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !357, file: !333, line: 806, baseType: !52, size: 32, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !357, file: !333, line: 808, baseType: !169, size: 32, offset: 1376)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !357, file: !333, line: 823, baseType: !418, size: 320, offset: 1408)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !419, line: 48, size: 320, elements: !420)
!419 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!420 = !{!421, !422, !423, !428, !430}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !418, file: !419, line: 49, baseType: !407, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !418, file: !419, line: 55, baseType: !407, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !418, file: !419, line: 57, baseType: !424, size: 32, offset: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !425, line: 15, size: 32, elements: !426)
!425 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !424, file: !425, line: 20, baseType: !189, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !418, file: !419, line: 59, baseType: !429, size: 32, offset: 160)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !178, line: 23, baseType: !177)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !418, file: !419, line: 60, baseType: !156, size: 128, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !357, file: !333, line: 825, baseType: !156, size: 128, offset: 1728)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !357, file: !333, line: 845, baseType: !52, size: 32, offset: 1856)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !357, file: !333, line: 849, baseType: !287, size: 64, offset: 1920)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !357, file: !333, line: 850, baseType: !287, size: 64, offset: 1984)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !357, file: !333, line: 852, baseType: !287, size: 64, offset: 2048)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !357, file: !333, line: 853, baseType: !287, size: 64, offset: 2112)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !357, file: !333, line: 854, baseType: !409, size: 64, offset: 2176)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !357, file: !333, line: 855, baseType: !287, size: 64, offset: 2240)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !357, file: !333, line: 856, baseType: !287, size: 64, offset: 2304)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !357, file: !333, line: 857, baseType: !287, size: 64, offset: 2368)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !357, file: !333, line: 858, baseType: !287, size: 64, offset: 2432)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !357, file: !333, line: 865, baseType: !443, size: 32, offset: 2496)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !444, line: 69, baseType: !445)
!444 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !444, line: 64, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !445, file: !444, line: 65, baseType: !13, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !357, file: !333, line: 867, baseType: !169, size: 32, offset: 2528)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !357, file: !333, line: 869, baseType: !287, size: 64, offset: 2560)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !357, file: !333, line: 869, baseType: !287, size: 64, offset: 2624)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !357, file: !333, line: 869, baseType: !287, size: 64, offset: 2688)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !357, file: !333, line: 869, baseType: !287, size: 64, offset: 2752)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !357, file: !333, line: 870, baseType: !287, size: 64, offset: 2816)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !357, file: !333, line: 870, baseType: !287, size: 64, offset: 2880)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !357, file: !333, line: 870, baseType: !287, size: 64, offset: 2944)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !357, file: !333, line: 871, baseType: !287, size: 64, offset: 3008)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !357, file: !333, line: 871, baseType: !287, size: 64, offset: 3072)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !357, file: !333, line: 871, baseType: !287, size: 64, offset: 3136)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !357, file: !333, line: 871, baseType: !287, size: 64, offset: 3200)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !357, file: !333, line: 873, baseType: !461, size: 3328, offset: 3264)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 3328, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 52)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !357, file: !333, line: 875, baseType: !465, size: 1280, offset: 6592)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 1280, elements: !476)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !467, line: 22, size: 320, elements: !468)
!467 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!468 = !{!469, !470, !471, !472}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !467, line: 23, baseType: !429, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !467, line: 24, baseType: !413, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !466, file: !467, line: 26, baseType: !156, size: 128, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !466, file: !467, line: 28, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !103, line: 20, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !105, line: 26, baseType: !52)
!476 = !{!477}
!477 = !DISubrange(count: 4)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !357, file: !333, line: 877, baseType: !479, size: 64, offset: 7872)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !333, line: 877, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !357, file: !333, line: 880, baseType: !482, size: 1088, offset: 7936)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !483, line: 72, baseType: !484)
!483 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !483, line: 23, size: 1088, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !493, !494, !502, !503, !528, !529, !530}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !484, file: !483, line: 28, baseType: !401, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !484, file: !483, line: 38, baseType: !409, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !484, file: !483, line: 40, baseType: !287, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !484, file: !483, line: 43, baseType: !418, size: 320, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !484, file: !483, line: 44, baseType: !491, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !483, line: 44, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !483, line: 48, baseType: !287, size: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !484, file: !483, line: 59, baseType: !495, size: 256, offset: 640)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !496, line: 66, size: 256, elements: !497)
!496 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!497 = !{!498, !499, !500, !501}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !495, file: !496, line: 67, baseType: !407, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !495, file: !496, line: 68, baseType: !429, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !495, file: !496, line: 70, baseType: !424, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !495, file: !496, line: 72, baseType: !156, size: 128, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !484, file: !483, line: 60, baseType: !96, size: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !484, file: !483, line: 61, baseType: !504, size: 64, offset: 960)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !507, line: 13, size: 1216, elements: !508)
!507 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !506, file: !507, line: 14, baseType: !96, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !506, file: !507, line: 15, baseType: !287, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !506, file: !507, line: 17, baseType: !287, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !506, file: !507, line: 17, baseType: !287, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !506, file: !507, line: 18, baseType: !287, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !506, file: !507, line: 18, baseType: !287, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !506, file: !507, line: 19, baseType: !142, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !506, file: !507, line: 21, baseType: !273, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !506, file: !507, line: 23, baseType: !273, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !506, file: !507, line: 24, baseType: !273, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !506, file: !507, line: 25, baseType: !273, size: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !506, file: !507, line: 26, baseType: !273, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !506, file: !507, line: 27, baseType: !273, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !506, file: !507, line: 28, baseType: !273, size: 64, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !506, file: !507, line: 29, baseType: !273, size: 64, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !506, file: !507, line: 30, baseType: !273, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !506, file: !507, line: 31, baseType: !273, size: 64, offset: 1024)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !506, file: !507, line: 32, baseType: !273, size: 64, offset: 1088)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !506, file: !507, line: 33, baseType: !273, size: 64, offset: 1152)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !484, file: !483, line: 63, baseType: !189, size: 32, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !484, file: !483, line: 69, baseType: !205, size: 16, offset: 1056)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !484, file: !483, line: 70, baseType: !531, size: 16, offset: 1072)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !103, line: 18, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !105, line: 23, baseType: !533)
!533 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !333, line: 882, baseType: !287, size: 64, offset: 9024)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !357, file: !333, line: 885, baseType: !169, size: 32, offset: 9088)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !357, file: !333, line: 886, baseType: !537, size: 64, offset: 9152)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !333, line: 732, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !357, file: !333, line: 901, baseType: !540, size: 64, offset: 9216)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !333, line: 901, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !357, file: !333, line: 904, baseType: !320, size: 64, offset: 9280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !357, file: !333, line: 906, baseType: !544, size: 64, offset: 9344)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !333, line: 906, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !357, file: !333, line: 930, baseType: !189, size: 32, offset: 9408)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !357, file: !333, line: 933, baseType: !189, size: 32, offset: 9440)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !357, file: !333, line: 935, baseType: !549, size: 64, offset: 9472)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !550, line: 103, size: 64, elements: !551)
!550 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !549, file: !550, line: 104, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !550, line: 101, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !357, file: !333, line: 940, baseType: !407, size: 64, offset: 9536)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !357, file: !333, line: 942, baseType: !557, size: 256, offset: 9600)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !558, line: 98, size: 256, elements: !559)
!558 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!559 = !{!560, !561, !562}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !557, file: !558, line: 99, baseType: !407, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !557, file: !558, line: 100, baseType: !156, size: 128, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !557, file: !558, line: 101, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !558, line: 21, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !354, file: !333, line: 986, baseType: !569, offset: 10240)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: -1)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !332, file: !333, line: 640, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !322, line: 297, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !322, line: 297, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !574, file: !322, line: 297, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !393, line: 19, baseType: !287)
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !333, line: 646, baseType: !579, size: 64, offset: 256)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 646, size: 64, elements: !580)
!580 = !{!581, !584}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !579, file: !333, line: 647, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !333, line: 542, baseType: !287)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !579, file: !333, line: 648, baseType: !583, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !332, file: !333, line: 666, baseType: !52, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !332, file: !333, line: 667, baseType: !587, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !333, line: 579, size: 320, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !588, file: !333, line: 580, baseType: !418, size: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !332, file: !333, line: 670, baseType: !133, size: 8, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !332, file: !333, line: 681, baseType: !593, size: 256, offset: 512)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !333, line: 678, size: 256, elements: !594)
!594 = !{!595, !603}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !593, file: !333, line: 679, baseType: !596, size: 192, align: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !597, line: 5, size: 192, align: 64, elements: !598)
!597 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!598 = !{!599, !600, !602}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !596, file: !597, line: 6, baseType: !287, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !596, file: !597, line: 7, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !596, file: !597, line: 8, baseType: !601, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !593, file: !333, line: 680, baseType: !287, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !332, file: !333, line: 689, baseType: !156, size: 128, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !332, file: !333, line: 691, baseType: !606, size: 64, offset: 896)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !333, line: 691, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !332, file: !333, line: 694, baseType: !609, size: 64, offset: 960)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !333, line: 694, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !332, file: !333, line: 697, baseType: !287, size: 64, offset: 1024)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !332, file: !333, line: 699, baseType: !320, size: 64, offset: 1088)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !332, file: !333, line: 700, baseType: !96, size: 64, offset: 1152)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !332, file: !333, line: 711, baseType: !407, size: 64, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !332, file: !333, line: 717, baseType: !617, size: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !333, line: 717, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !332, file: !333, line: 722, baseType: !620, offset: 1344)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !333, line: 570, elements: !374)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !292, file: !263, line: 90, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !292, file: !263, line: 91, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !253, file: !150, line: 120, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !220}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !632)
!632 = !{!633, !634, !638, !642, !648, !652}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !12, line: 40, baseType: !11, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !631, file: !12, line: 41, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!133}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !631, file: !12, line: 42, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!96}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !631, file: !12, line: 43, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!142, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !631, file: !12, line: 44, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!142}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !631, file: !12, line: 45, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !96}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !253, file: !150, line: 121, baseType: !657, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!142, !220}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !253, file: !150, line: 122, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !220, !664, !672}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !666, line: 23, baseType: !667)
!666 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 21, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !667, file: !666, line: 22, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !134, line: 37, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !271, line: 49, baseType: !13)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !666, line: 28, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 26, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !666, line: 27, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !134, line: 38, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !271, line: 50, baseType: !13)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !149, file: !150, line: 70, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !682, line: 190, size: 1152, elements: !683)
!682 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !786, !787, !788, !789, !790, !793}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !681, file: !682, line: 191, baseType: !189, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !681, file: !682, line: 192, baseType: !189, size: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !681, file: !682, line: 202, baseType: !680, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !681, file: !682, line: 203, baseType: !153, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !681, file: !682, line: 205, baseType: !596, size: 192, align: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !681, file: !682, line: 207, baseType: !142, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !681, file: !682, line: 208, baseType: !13, size: 32, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !682, line: 209, baseType: !692, size: 256, offset: 512)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !682, line: 209, size: 256, elements: !693)
!693 = !{!694, !706, !710}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !692, file: !682, line: 210, baseType: !695, size: 256)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !682, line: 153, size: 256, elements: !696)
!696 = !{!697, !698, !702, !705}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !695, file: !682, line: 154, baseType: !287, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !695, file: !682, line: 156, baseType: !699, size: 64, offset: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !597, line: 12, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !699, file: !597, line: 13, baseType: !601, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !695, file: !682, line: 162, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !682, line: 162, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !695, file: !682, line: 167, baseType: !287, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !692, file: !682, line: 211, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !682, line: 170, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !707, file: !682, line: 171, baseType: !680, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !692, file: !682, line: 212, baseType: !711, size: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !682, line: 174, size: 256, elements: !712)
!712 = !{!713, !781, !784, !785}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !711, file: !682, line: 175, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !682, line: 271, size: 768, elements: !717)
!717 = !{!718, !741, !745, !749, !754, !758, !762, !766, !767, !768, !769, !777}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !716, file: !682, line: 276, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!52, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !682, line: 251, size: 1216, elements: !724)
!724 = !{!725, !726, !727, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !723, file: !682, line: 253, baseType: !680, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !723, file: !682, line: 254, baseType: !320, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !723, file: !682, line: 255, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !730, line: 66, flags: DIFlagFwdDecl)
!730 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!731 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !723, file: !682, line: 256, baseType: !96, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !723, file: !682, line: 259, baseType: !495, size: 256, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !723, file: !682, line: 260, baseType: !495, size: 256, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !723, file: !682, line: 261, baseType: !52, size: 32, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !723, file: !682, line: 262, baseType: !156, size: 128, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !723, file: !682, line: 263, baseType: !237, size: 64, offset: 960)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !723, file: !682, line: 265, baseType: !284, size: 64, offset: 1024)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !723, file: !682, line: 266, baseType: !133, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !723, file: !682, line: 267, baseType: !133, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !723, file: !682, line: 268, baseType: !609, size: 64, offset: 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !716, file: !682, line: 277, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !722}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !716, file: !682, line: 290, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!52, !728, !96}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !716, file: !682, line: 292, baseType: !750, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!96, !728, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !716, file: !682, line: 293, baseType: !755, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!96, !728, !96, !753}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !716, file: !682, line: 294, baseType: !759, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !728, !96}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !716, file: !682, line: 296, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!269, !722, !237, !284, !323}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !716, file: !682, line: 306, baseType: !284, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !716, file: !682, line: 313, baseType: !133, size: 8, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !716, file: !682, line: 314, baseType: !763, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !716, file: !682, line: 317, baseType: !770, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !722, !775}
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !774, line: 59, baseType: !13)
!774 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !682, line: 31, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !716, file: !682, line: 320, baseType: !778, size: 64, offset: 704)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!52, !722, !331}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !711, file: !682, line: 176, baseType: !782, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !682, line: 35, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !711, file: !682, line: 177, baseType: !323, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !711, file: !682, line: 178, baseType: !680, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !681, file: !682, line: 215, baseType: !96, size: 64, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !681, file: !682, line: 221, baseType: !401, size: 64, offset: 832)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !682, line: 223, baseType: !207, size: 16, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !681, file: !682, line: 224, baseType: !279, size: 16, offset: 912)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !681, file: !682, line: 225, baseType: !791, size: 64, offset: 960)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !682, line: 36, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !681, file: !682, line: 227, baseType: !344, size: 128, align: 64, offset: 1024)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !149, file: !150, line: 71, baseType: !795, size: 32, offset: 448)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !796, line: 19, size: 32, elements: !797)
!796 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !795, file: !796, line: 20, baseType: !799, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !800, line: 113, baseType: !801)
!800 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !800, line: 111, size: 32, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !801, file: !800, line: 112, baseType: !189, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !149, file: !150, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !149, file: !150, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !149, file: !150, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !149, file: !150, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !149, file: !150, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !32, line: 707, baseType: !810, size: 64, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !146, file: !32, line: 709, baseType: !812, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !32, line: 37, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !146, file: !32, line: 711, baseType: !153, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !32, line: 712, baseType: !816, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !32, line: 89, size: 384, elements: !819)
!819 = !{!820, !821, !822, !826, !831, !835}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !818, file: !32, line: 90, baseType: !153, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !818, file: !32, line: 91, baseType: !289, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !818, file: !32, line: 92, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!52, !144, !232}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !818, file: !32, line: 93, baseType: !827, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!237, !144, !830, !664, !672}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !818, file: !32, line: 95, baseType: !832, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !810}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !818, file: !32, line: 97, baseType: !836, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 286, size: 1472, elements: !839)
!839 = !{!840, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !838, file: !44, line: 287, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!52, !810}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !838, file: !44, line: 288, baseType: !832, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !838, file: !44, line: 289, baseType: !841, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !838, file: !44, line: 290, baseType: !841, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !838, file: !44, line: 291, baseType: !841, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !838, file: !44, line: 292, baseType: !841, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !838, file: !44, line: 293, baseType: !841, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !838, file: !44, line: 294, baseType: !841, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !838, file: !44, line: 295, baseType: !841, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !838, file: !44, line: 296, baseType: !841, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !838, file: !44, line: 297, baseType: !841, size: 64, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !838, file: !44, line: 298, baseType: !841, size: 64, offset: 704)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !838, file: !44, line: 299, baseType: !841, size: 64, offset: 768)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !838, file: !44, line: 300, baseType: !841, size: 64, offset: 832)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !838, file: !44, line: 301, baseType: !841, size: 64, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !838, file: !44, line: 302, baseType: !841, size: 64, offset: 960)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !838, file: !44, line: 303, baseType: !841, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !838, file: !44, line: 304, baseType: !841, size: 64, offset: 1088)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !838, file: !44, line: 305, baseType: !841, size: 64, offset: 1152)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !838, file: !44, line: 306, baseType: !841, size: 64, offset: 1216)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !838, file: !44, line: 307, baseType: !841, size: 64, offset: 1280)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !838, file: !44, line: 308, baseType: !841, size: 64, offset: 1344)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !838, file: !44, line: 309, baseType: !841, size: 64, offset: 1408)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !146, file: !32, line: 714, baseType: !867, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !870, line: 80, size: 1344, elements: !871)
!870 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!871 = !{!872, !873, !874, !875, !876, !877, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1331}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !869, file: !870, line: 81, baseType: !153, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !869, file: !870, line: 82, baseType: !153, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !869, file: !870, line: 83, baseType: !289, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !869, file: !870, line: 84, baseType: !289, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !869, file: !870, line: 85, baseType: !289, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !869, file: !870, line: 87, baseType: !878, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!52, !810, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !26, line: 96, size: 1152, elements: !883)
!883 = !{!884, !885, !886, !1262, !1263, !1264, !1265, !1281, !1294, !1295, !1296, !1297, !1298, !1306, !1307, !1308, !1309, !1310, !1311}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !882, file: !26, line: 97, baseType: !153, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !882, file: !26, line: 98, baseType: !867, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !882, file: !26, line: 100, baseType: !887, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !889)
!889 = !{!890, !891, !892, !896, !917, !943, !944, !945, !946, !950, !953, !954, !955, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1018, !1022, !1042, !1060, !1061, !1062, !1063, !1072, !1095, !1096, !1099, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1113, !1114, !1220, !1228, !1229, !1230, !1232, !1236, !1237, !1241, !1242, !1243, !1244, !1246, !1247, !1248, !1255, !1256, !1257, !1261}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !888, file: !19, line: 403, baseType: !18, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !888, file: !19, line: 406, baseType: !156, size: 128, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !888, file: !19, line: 409, baseType: !893, size: 448, offset: 192)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 56)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !888, file: !19, line: 417, baseType: !897, size: 768, offset: 640)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !898)
!898 = !{!899, !900, !901, !902, !905}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !897, file: !19, line: 46, baseType: !149, size: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !897, file: !19, line: 47, baseType: !887, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !897, file: !19, line: 48, baseType: !162, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !897, file: !19, line: 49, baseType: !903, size: 64, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !897, file: !19, line: 50, baseType: !906, size: 64, offset: 704)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !908, line: 26, size: 256, elements: !909)
!908 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !907, file: !908, line: 27, baseType: !13, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !907, file: !908, line: 28, baseType: !912, size: 192, offset: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !913, line: 43, size: 192, elements: !914)
!913 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !913, line: 44, baseType: !429, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !912, file: !913, line: 45, baseType: !156, size: 128, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !888, file: !19, line: 418, baseType: !918, size: 64, offset: 1408)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !920)
!920 = !{!921, !922, !927, !931, !935, !939}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !919, file: !19, line: 54, baseType: !275, size: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !919, file: !19, line: 55, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!269, !918, !926, !237}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !919, file: !19, line: 57, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!269, !918, !926, !153, !284}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !919, file: !19, line: 59, baseType: !932, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !887, !153}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !919, file: !19, line: 60, baseType: !936, size: 64, offset: 320)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!52, !887}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !919, file: !19, line: 61, baseType: !940, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !887}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !888, file: !19, line: 419, baseType: !153, size: 64, offset: 1472)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !888, file: !19, line: 420, baseType: !153, size: 64, offset: 1536)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !888, file: !19, line: 421, baseType: !162, size: 64, offset: 1600)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !888, file: !19, line: 424, baseType: !947, size: 64, offset: 1664)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !888, file: !19, line: 425, baseType: !951, size: 64, offset: 1728)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !888, file: !19, line: 426, baseType: !13, size: 32, offset: 1792)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !888, file: !19, line: 435, baseType: !495, size: 256, offset: 1856)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !888, file: !19, line: 437, baseType: !956, size: 64, offset: 2112)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !958, line: 69, size: 320, elements: !959)
!958 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!959 = !{!960, !961, !962, !979, !981, !985, !986}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !957, file: !958, line: 70, baseType: !153, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !957, file: !958, line: 71, baseType: !887, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !957, file: !958, line: 72, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !958, line: 47, size: 256, elements: !966)
!966 = !{!967, !968, !974, !978}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !965, file: !958, line: 49, baseType: !13, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !965, file: !958, line: 51, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!52, !153, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !965, file: !958, line: 53, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!52, !237, !972}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !965, file: !958, line: 55, baseType: !653, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !957, file: !958, line: 73, baseType: !980, size: 16, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !957, file: !958, line: 74, baseType: !982, size: 8, offset: 208)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !103, line: 16, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !105, line: 20, baseType: !984)
!984 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !958, line: 75, baseType: !197, size: 8, offset: 216)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !958, line: 76, baseType: !987, size: 64, offset: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !958, line: 76, size: 64, elements: !988)
!988 = !{!989, !990, !997}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !987, file: !958, line: 77, baseType: !96, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !987, file: !958, line: 78, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !958, line: 86, size: 128, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !993, file: !958, line: 87, baseType: !13, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !993, file: !958, line: 88, baseType: !237, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !987, file: !958, line: 79, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !958, line: 92, size: 256, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1006, !1007}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1000, file: !958, line: 94, baseType: !13, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1000, file: !958, line: 95, baseType: !13, size: 32, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1000, file: !958, line: 96, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1000, file: !958, line: 97, baseType: !963, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1000, file: !958, line: 98, baseType: !96, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !888, file: !19, line: 438, baseType: !13, size: 32, offset: 2176)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !888, file: !19, line: 441, baseType: !13, size: 32, offset: 2208)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !888, file: !19, line: 442, baseType: !947, size: 64, offset: 2240)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !888, file: !19, line: 443, baseType: !951, size: 64, offset: 2304)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !888, file: !19, line: 444, baseType: !133, size: 8, offset: 2368)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !888, file: !19, line: 451, baseType: !133, size: 8, offset: 2376)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !888, file: !19, line: 454, baseType: !13, size: 32, offset: 2400)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !888, file: !19, line: 455, baseType: !1016, size: 64, offset: 2432)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !19, line: 43, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !888, file: !19, line: 458, baseType: !1019, size: 64, offset: 2496)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!52}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !888, file: !19, line: 460, baseType: !1023, size: 4032, align: 512, offset: 2560)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1024, size: 4032, elements: !1040)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1024, file: !19, line: 363, baseType: !96, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1024, file: !19, line: 364, baseType: !13, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1024, file: !19, line: 367, baseType: !1029, size: 448, offset: 128)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1029, file: !19, line: 320, baseType: !887, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1029, file: !19, line: 321, baseType: !1033, size: 384, offset: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1034, line: 40, size: 384, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1033, file: !1034, line: 41, baseType: !1037, size: 384, align: 64)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 384, align: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 2)
!1040 = !{!1041}
!1041 = !DISubrange(count: 7)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !888, file: !19, line: 463, baseType: !1043, size: 192, offset: 6592)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1044, line: 8, size: 192, elements: !1045)
!1044 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1045 = !{!1046, !1047, !1049}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1043, file: !1044, line: 10, baseType: !13, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1043, file: !1044, line: 11, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1043, file: !1044, line: 12, baseType: !1050, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1052, line: 59, size: 48, elements: !1053)
!1052 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1051, file: !1052, line: 60, baseType: !531, size: 16)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1051, file: !1052, line: 61, baseType: !531, size: 16, offset: 16)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1051, file: !1052, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1051, file: !1052, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1051, file: !1052, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1051, file: !1052, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !888, file: !19, line: 465, baseType: !287, size: 64, offset: 6784)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !888, file: !19, line: 469, baseType: !13, size: 32, offset: 6848)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !888, file: !19, line: 470, baseType: !156, size: 128, offset: 6912)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !888, file: !19, line: 471, baseType: !1064, size: 64, offset: 7040)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1066, line: 33, size: 96, elements: !1067)
!1066 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1067 = !{!1068, !1069, !1070, !1071}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1065, file: !1066, line: 37, baseType: !52, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1065, file: !1066, line: 43, baseType: !52, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1065, file: !1066, line: 45, baseType: !207, size: 16, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !1066, line: 47, baseType: !207, size: 16, offset: 80)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !888, file: !19, line: 476, baseType: !1073, size: 64, offset: 7104)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !1075)
!1075 = !{!1076, !1092, !1093, !1094}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1074, file: !19, line: 379, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1079, line: 204, baseType: !1080)
!1079 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1079, line: 197, size: 192, elements: !1081)
!1081 = !{!1082, !1084, !1085, !1086, !1088, !1090}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1080, file: !1079, line: 198, baseType: !1083, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1079, line: 21, baseType: !104)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1080, file: !1079, line: 199, baseType: !199, size: 8, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1080, file: !1079, line: 200, baseType: !199, size: 8, offset: 40)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1080, file: !1079, line: 201, baseType: !1087, size: 16, offset: 48)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1079, line: 17, baseType: !206)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1080, file: !1079, line: 202, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1079, line: 16, baseType: !402)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1080, file: !1079, line: 203, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1079, line: 22, baseType: !402)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1074, file: !19, line: 380, baseType: !13, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1074, file: !19, line: 381, baseType: !237, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1074, file: !19, line: 382, baseType: !237, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !888, file: !19, line: 477, baseType: !1074, size: 256, offset: 7168)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !888, file: !19, line: 480, baseType: !1097, size: 64, offset: 7424)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !888, file: !19, line: 483, baseType: !1100, size: 64, offset: 7488)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !888, file: !19, line: 488, baseType: !237, size: 64, offset: 7552)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !888, file: !19, line: 492, baseType: !96, size: 64, offset: 7616)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !888, file: !19, line: 493, baseType: !13, size: 32, offset: 7680)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !888, file: !19, line: 495, baseType: !96, size: 64, offset: 7744)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !888, file: !19, line: 496, baseType: !13, size: 32, offset: 7808)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !888, file: !19, line: 499, baseType: !13, size: 32, offset: 7840)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !888, file: !19, line: 500, baseType: !1109, size: 64, offset: 7872)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1111, line: 45, baseType: !1112)
!1111 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !888, file: !19, line: 503, baseType: !13, size: 32, offset: 7936)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !888, file: !19, line: 504, baseType: !1115, size: 64, offset: 8000)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1118, line: 96, size: 192, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1119 = !{!1120, !1121, !1181, !1184}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1117, file: !1118, line: 97, baseType: !13, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1117, file: !1118, line: 98, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1118, line: 24, size: 3072, elements: !1124)
!1124 = !{!1125, !1127, !1128, !1129, !1130, !1144, !1145, !1146, !1147, !1165, !1166, !1167, !1178, !1179, !1180}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1123, file: !1118, line: 26, baseType: !1126, size: 128)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 128, elements: !1038)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1123, file: !1118, line: 27, baseType: !1126, size: 128, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1123, file: !1118, line: 28, baseType: !52, size: 32, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1123, file: !1118, line: 31, baseType: !169, size: 32, align: 512, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1123, file: !1118, line: 32, baseType: !1131, size: 960, offset: 576)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1132, line: 206, size: 960, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1133 = !{!1134, !1135, !1138, !1140, !1141, !1143}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1131, file: !1132, line: 207, baseType: !347, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1131, file: !1132, line: 208, baseType: !1136, size: 256, offset: 64)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 256, elements: !476)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1131, file: !1132, line: 209, baseType: !1139, size: 256, offset: 320)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !476)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1131, file: !1132, line: 213, baseType: !273, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1131, file: !1132, line: 215, baseType: !1142, size: 256, offset: 640)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !476)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !1132, line: 216, baseType: !197, size: 8, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1123, file: !1118, line: 33, baseType: !287, size: 64, offset: 1536)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1123, file: !1118, line: 34, baseType: !287, size: 64, offset: 1600)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1123, file: !1118, line: 35, baseType: !133, size: 8, offset: 1664)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1123, file: !1118, line: 36, baseType: !1148, size: 320, offset: 1728)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1149, line: 11, size: 320, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1150 = !{!1151, !1158, !1159, !1164}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1148, file: !1149, line: 16, baseType: !1152, size: 128)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !134, line: 198, size: 128, elements: !1153)
!1153 = !{!1154, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1152, file: !134, line: 199, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1152, file: !134, line: 199, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1148, file: !1149, line: 17, baseType: !287, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1148, file: !1149, line: 18, baseType: !1160, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !1149, line: 19, baseType: !102, size: 32, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1123, file: !1118, line: 37, baseType: !557, size: 256, offset: 2048)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1123, file: !1118, line: 38, baseType: !344, size: 128, align: 64, offset: 2304)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1123, file: !1118, line: 39, baseType: !1168, size: 64, offset: 2432)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1118, line: 49, size: 768, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !1118, line: 50, baseType: !169, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1169, file: !1118, line: 51, baseType: !1139, size: 256, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1169, file: !1118, line: 53, baseType: !1139, size: 256, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1169, file: !1118, line: 54, baseType: !287, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1169, file: !1118, line: 55, baseType: !1168, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1169, file: !1118, line: 56, baseType: !52, size: 32, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1169, file: !1118, line: 57, baseType: !52, size: 32, offset: 736)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1123, file: !1118, line: 40, baseType: !287, size: 64, offset: 2496)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1123, file: !1118, line: 42, baseType: !52, size: 32, offset: 2560)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1123, file: !1118, line: 43, baseType: !1116, size: 64, offset: 2624)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1117, file: !1118, line: 99, baseType: !1182, offset: 128)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1183, line: 211, elements: !374)
!1183 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1117, file: !1118, line: 100, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1118, line: 63, size: 3008, elements: !1187)
!1187 = !{!1188, !1189, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1219}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1186, file: !1118, line: 64, baseType: !1168, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1186, file: !1118, line: 65, baseType: !1190, size: 192, offset: 64)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1168, size: 192, elements: !238)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1186, file: !1118, line: 67, baseType: !52, size: 32, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1186, file: !1118, line: 68, baseType: !495, size: 256, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1186, file: !1118, line: 69, baseType: !169, size: 32, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1186, file: !1118, line: 70, baseType: !495, size: 256, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1186, file: !1118, line: 71, baseType: !287, size: 64, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1186, file: !1118, line: 72, baseType: !287, size: 64, offset: 960)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1186, file: !1118, line: 73, baseType: !287, size: 64, offset: 1024)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1186, file: !1118, line: 74, baseType: !287, size: 64, offset: 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1186, file: !1118, line: 75, baseType: !287, size: 64, offset: 1152)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1186, file: !1118, line: 76, baseType: !287, size: 64, offset: 1216)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1186, file: !1118, line: 77, baseType: !287, size: 64, offset: 1280)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1186, file: !1118, line: 78, baseType: !287, size: 64, offset: 1344)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1186, file: !1118, line: 79, baseType: !133, size: 8, offset: 1408)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1186, file: !1118, line: 80, baseType: !287, size: 64, offset: 1472)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1186, file: !1118, line: 81, baseType: !495, size: 256, offset: 1536)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1186, file: !1118, line: 82, baseType: !907, size: 256, offset: 1792)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1186, file: !1118, line: 84, baseType: !189, size: 32, offset: 2048)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1186, file: !1118, line: 87, baseType: !287, size: 64, offset: 2112)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1186, file: !1118, line: 88, baseType: !287, size: 64, offset: 2176)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1186, file: !1118, line: 89, baseType: !1211, size: 704, offset: 2240)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !558, line: 111, size: 704, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1218}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1211, file: !558, line: 112, baseType: !557, size: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1211, file: !558, line: 113, baseType: !1148, size: 320, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1211, file: !558, line: 116, baseType: !1216, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !558, line: 18, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1211, file: !558, line: 117, baseType: !52, size: 32, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1186, file: !1118, line: 90, baseType: !1116, size: 64, offset: 2944)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !888, file: !19, line: 515, baseType: !1221, size: 64, offset: 8064)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1223, line: 117, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1224 = !{!1225, !1226, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1222, file: !1223, line: 118, baseType: !474, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1222, file: !1223, line: 119, baseType: !474, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1222, file: !1223, line: 120, baseType: !273, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !888, file: !19, line: 516, baseType: !13, size: 32, offset: 8128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !888, file: !19, line: 519, baseType: !13, size: 32, offset: 8160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !888, file: !19, line: 520, baseType: !1231, size: 64, offset: 8192)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !888, file: !19, line: 523, baseType: !1233, size: 64, offset: 8256)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !888, file: !19, line: 524, baseType: !13, size: 32, offset: 8320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !888, file: !19, line: 525, baseType: !1238, size: 64, offset: 8384)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !888, file: !19, line: 526, baseType: !13, size: 32, offset: 8448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !888, file: !19, line: 533, baseType: !96, size: 64, offset: 8512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !888, file: !19, line: 534, baseType: !13, size: 32, offset: 8576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !888, file: !19, line: 535, baseType: !1245, size: 64, offset: 8640)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !888, file: !19, line: 536, baseType: !13, size: 32, offset: 8704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !888, file: !19, line: 539, baseType: !52, size: 32, offset: 8736)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !888, file: !19, line: 540, baseType: !1249, size: 64, offset: 8768)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1251, line: 32, size: 64, elements: !1252)
!1251 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1250, file: !1251, line: 33, baseType: !474, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1250, file: !1251, line: 34, baseType: !474, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !888, file: !19, line: 563, baseType: !156, size: 128, offset: 8832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !888, file: !19, line: 565, baseType: !156, size: 128, offset: 8960)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !888, file: !19, line: 568, baseType: !1258, size: 64, offset: 9088)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !888, file: !19, line: 570, baseType: !189, size: 32, offset: 9152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !882, file: !26, line: 101, baseType: !153, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !882, file: !26, line: 103, baseType: !133, size: 8, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !882, file: !26, line: 104, baseType: !25, size: 32, offset: 288)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !882, file: !26, line: 106, baseType: !1266, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1269, line: 282, size: 1600, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1270 = !{!1271, !1275, !1276, !1280}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1268, file: !1269, line: 283, baseType: !1272, size: 256)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1273)
!1273 = !{!1274}
!1274 = !DISubrange(count: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1268, file: !1269, line: 284, baseType: !1272, size: 256, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1268, file: !1269, line: 285, baseType: !1277, size: 1024, offset: 512)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1268, file: !1269, line: 286, baseType: !142, size: 64, offset: 1536)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !882, file: !26, line: 107, baseType: !1282, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1269, line: 217, size: 256, elements: !1285)
!1285 = !{!1286, !1290, !1292, !1293}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1284, file: !1269, line: 218, baseType: !1287, size: 128)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 16)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1284, file: !1269, line: 219, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1269, line: 15, baseType: !287)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1284, file: !1269, line: 220, baseType: !104, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1284, file: !1269, line: 221, baseType: !104, size: 32, offset: 224)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !882, file: !26, line: 109, baseType: !841, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !882, file: !26, line: 110, baseType: !832, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !882, file: !26, line: 111, baseType: !841, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !882, file: !26, line: 112, baseType: !832, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !882, file: !26, line: 113, baseType: !1299, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!52, !810, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 60, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 58, size: 32, elements: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1303, file: !44, line: 59, baseType: !52, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !882, file: !26, line: 114, baseType: !841, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !882, file: !26, line: 115, baseType: !289, size: 64, offset: 832)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !882, file: !26, line: 116, baseType: !289, size: 64, offset: 896)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !882, file: !26, line: 118, baseType: !836, size: 64, offset: 960)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !882, file: !26, line: 119, baseType: !832, size: 64, offset: 1024)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !882, file: !26, line: 121, baseType: !1312, size: 64, offset: 1088)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !26, line: 121, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !869, file: !870, line: 88, baseType: !823, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !869, file: !870, line: 89, baseType: !841, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !869, file: !870, line: 90, baseType: !832, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !869, file: !870, line: 91, baseType: !832, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !869, file: !870, line: 92, baseType: !832, size: 64, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !869, file: !870, line: 94, baseType: !841, size: 64, offset: 704)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !869, file: !870, line: 95, baseType: !841, size: 64, offset: 768)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !869, file: !870, line: 97, baseType: !1299, size: 64, offset: 832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !869, file: !870, line: 98, baseType: !841, size: 64, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !869, file: !870, line: 100, baseType: !841, size: 64, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !869, file: !870, line: 102, baseType: !841, size: 64, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !869, file: !870, line: 103, baseType: !832, size: 64, offset: 1088)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !869, file: !870, line: 105, baseType: !836, size: 64, offset: 1152)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !869, file: !870, line: 107, baseType: !1328, size: 64, offset: 1216)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !870, line: 107, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !869, file: !870, line: 109, baseType: !133, size: 8, offset: 1280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !146, file: !32, line: 715, baseType: !881, size: 64, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !146, file: !32, line: 717, baseType: !96, size: 64, offset: 896)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !146, file: !32, line: 719, baseType: !96, size: 64, offset: 960)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !146, file: !32, line: 721, baseType: !495, size: 256, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !146, file: !32, line: 725, baseType: !1337, size: 448, offset: 1280)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !32, line: 517, size: 448, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1337, file: !32, line: 518, baseType: !156, size: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1337, file: !32, line: 519, baseType: !156, size: 128, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1337, file: !32, line: 520, baseType: !156, size: 128, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1337, file: !32, line: 521, baseType: !31, size: 32, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !146, file: !32, line: 726, baseType: !1344, size: 2496, offset: 1728)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 663, size: 2496, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1390, !1391, !1392, !1393, !1394, !1395, !1466, !1467, !1468, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1506, !1510}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1344, file: !44, line: 664, baseType: !1302, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1344, file: !44, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1344, file: !44, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1344, file: !44, line: 667, baseType: !133, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1344, file: !44, line: 668, baseType: !133, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1344, file: !44, line: 669, baseType: !133, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1344, file: !44, line: 670, baseType: !133, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1344, file: !44, line: 671, baseType: !133, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1344, file: !44, line: 672, baseType: !133, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1344, file: !44, line: 673, baseType: !133, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1344, file: !44, line: 674, baseType: !133, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1344, file: !44, line: 675, baseType: !102, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1344, file: !44, line: 676, baseType: !169, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1344, file: !44, line: 678, baseType: !156, size: 128, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1344, file: !44, line: 679, baseType: !907, size: 256, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1344, file: !44, line: 680, baseType: !1362, size: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1364, line: 43, size: 1536, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1373, !1374, !1375, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1363, file: !1364, line: 44, baseType: !153, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1363, file: !1364, line: 45, baseType: !52, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1363, file: !1364, line: 46, baseType: !156, size: 128, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1363, file: !1364, line: 47, baseType: !169, size: 32, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1363, file: !1364, line: 48, baseType: !1371, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 629, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1363, file: !1364, line: 49, baseType: !1148, size: 320, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1363, file: !1364, line: 50, baseType: !287, size: 64, offset: 704)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1363, file: !1364, line: 51, baseType: !1376, size: 64, offset: 768)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1377, line: 29, baseType: !413)
!1377 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1363, file: !1364, line: 52, baseType: !1376, size: 64, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1363, file: !1364, line: 53, baseType: !1376, size: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1363, file: !1364, line: 54, baseType: !1376, size: 64, offset: 960)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1363, file: !1364, line: 55, baseType: !1376, size: 64, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1363, file: !1364, line: 56, baseType: !287, size: 64, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1363, file: !1364, line: 57, baseType: !287, size: 64, offset: 1152)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1363, file: !1364, line: 58, baseType: !287, size: 64, offset: 1216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1363, file: !1364, line: 59, baseType: !287, size: 64, offset: 1280)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1363, file: !1364, line: 60, baseType: !287, size: 64, offset: 1344)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1363, file: !1364, line: 61, baseType: !810, size: 64, offset: 1408)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1363, file: !1364, line: 62, baseType: !133, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1363, file: !1364, line: 63, baseType: !133, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1344, file: !44, line: 681, baseType: !133, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1344, file: !44, line: 682, baseType: !133, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1344, file: !44, line: 683, baseType: !133, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1344, file: !44, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1344, file: !44, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1344, file: !44, line: 690, baseType: !1396, size: 512, offset: 640)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1397)
!1397 = !{!1398, !1404, !1405, !1410, !1462, !1463, !1464, !1465}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1396, file: !39, line: 119, baseType: !1399, size: 256)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1400, line: 9, size: 256, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1399, file: !1400, line: 10, baseType: !596, size: 192, align: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1399, file: !1400, line: 11, baseType: !1376, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1396, file: !39, line: 120, baseType: !1376, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1396, file: !39, line: 121, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!38, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1396, file: !39, line: 122, baseType: !1411, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1413)
!1413 = !{!1414, !1439, !1440, !1443, !1448, !1449, !1457, !1461}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1412, file: !39, line: 160, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1416, file: !39, line: 216, baseType: !429, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1416, file: !39, line: 217, baseType: !13, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1416, file: !39, line: 218, baseType: !13, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1416, file: !39, line: 219, baseType: !13, size: 32, offset: 96)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1416, file: !39, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1416, file: !39, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1416, file: !39, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1416, file: !39, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1416, file: !39, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1416, file: !39, line: 226, baseType: !13, size: 32, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1416, file: !39, line: 227, baseType: !207, size: 16, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1416, file: !39, line: 228, baseType: !207, size: 16, offset: 208)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1416, file: !39, line: 229, baseType: !13, size: 32, offset: 224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1416, file: !39, line: 235, baseType: !1376, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1416, file: !39, line: 236, baseType: !1409, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1416, file: !39, line: 237, baseType: !1376, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1416, file: !39, line: 238, baseType: !1409, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1416, file: !39, line: 239, baseType: !1436, size: 4096, align: 512, offset: 512)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 4096, align: 512, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 8)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1412, file: !39, line: 161, baseType: !13, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1412, file: !39, line: 162, baseType: !1441, size: 32, offset: 96)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !134, line: 32, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !271, line: 96, baseType: !52)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1412, file: !39, line: 163, baseType: !1444, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !444, line: 274, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !444, line: 274, size: 32, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1445, file: !444, line: 274, baseType: !443, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1412, file: !39, line: 164, baseType: !1409, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1412, file: !39, line: 165, baseType: !1450, size: 128, offset: 256)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1400, line: 14, size: 128, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1450, file: !1400, line: 15, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !597, line: 26, size: 128, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1453, file: !597, line: 27, baseType: !699, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1453, file: !597, line: 28, baseType: !601, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1412, file: !39, line: 166, baseType: !1458, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1376}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1412, file: !39, line: 167, baseType: !1376, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1396, file: !39, line: 123, baseType: !197, size: 8, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1396, file: !39, line: 124, baseType: !197, size: 8, offset: 456)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1396, file: !39, line: 125, baseType: !197, size: 8, offset: 464)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1396, file: !39, line: 126, baseType: !197, size: 8, offset: 472)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1344, file: !44, line: 691, baseType: !401, size: 64, offset: 1152)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1344, file: !44, line: 692, baseType: !557, size: 256, offset: 1216)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1344, file: !44, line: 693, baseType: !1469, size: 192, offset: 1472)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1470, line: 41, baseType: !1471)
!1470 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1470, line: 37, size: 192, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1471, file: !1470, line: 38, baseType: !169, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1471, file: !1470, line: 39, baseType: !156, size: 128, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1344, file: !44, line: 694, baseType: !1371, size: 64, offset: 1664)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1344, file: !44, line: 695, baseType: !189, size: 32, offset: 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1344, file: !44, line: 696, baseType: !189, size: 32, offset: 1760)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1344, file: !44, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1344, file: !44, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1344, file: !44, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1344, file: !44, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1344, file: !44, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1344, file: !44, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1344, file: !44, line: 703, baseType: !133, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1344, file: !44, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1344, file: !44, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1344, file: !44, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1344, file: !44, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1344, file: !44, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1344, file: !44, line: 709, baseType: !13, size: 32, offset: 1824)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1344, file: !44, line: 710, baseType: !43, size: 32, offset: 1856)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1344, file: !44, line: 711, baseType: !51, size: 32, offset: 1888)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1344, file: !44, line: 712, baseType: !51, size: 32, offset: 1920)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1344, file: !44, line: 713, baseType: !52, size: 32, offset: 1952)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1344, file: !44, line: 714, baseType: !52, size: 32, offset: 1984)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1344, file: !44, line: 715, baseType: !401, size: 64, offset: 2048)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1344, file: !44, line: 716, baseType: !401, size: 64, offset: 2112)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1344, file: !44, line: 717, baseType: !401, size: 64, offset: 2176)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1344, file: !44, line: 718, baseType: !401, size: 64, offset: 2240)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1344, file: !44, line: 720, baseType: !1501, size: 64, offset: 2304)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 632, size: 64, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !44, line: 633, baseType: !169, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1502, file: !44, line: 634, baseType: !13, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1344, file: !44, line: 721, baseType: !1507, size: 64, offset: 2368)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !810, !474}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1344, file: !44, line: 722, baseType: !1511, size: 64, offset: 2432)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 722, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !146, file: !32, line: 727, baseType: !1514, size: 64, offset: 4224)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 742, size: 1792, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1523, !1524, !1525}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1515, file: !44, line: 743, baseType: !838, size: 1472)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1515, file: !44, line: 744, baseType: !841, size: 64, offset: 1472)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1515, file: !44, line: 745, baseType: !1520, size: 64, offset: 1536)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !810, !133}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1515, file: !44, line: 746, baseType: !841, size: 64, offset: 1600)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1515, file: !44, line: 747, baseType: !832, size: 64, offset: 1664)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1515, file: !44, line: 748, baseType: !832, size: 64, offset: 1728)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !146, file: !32, line: 736, baseType: !1527, size: 128, offset: 4288)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !32, line: 529, size: 128, elements: !1528)
!1528 = !{!1529, !1533}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1527, file: !32, line: 531, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1532, line: 13, flags: DIFlagFwdDecl)
!1532 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1527, file: !32, line: 532, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !32, line: 49, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !146, file: !32, line: 738, baseType: !1537, size: 64, offset: 4416)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !32, line: 738, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !146, file: !32, line: 740, baseType: !1541, size: 64, offset: 4480)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !146, file: !32, line: 741, baseType: !401, size: 64, offset: 4544)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !146, file: !32, line: 746, baseType: !401, size: 64, offset: 4608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !146, file: !32, line: 747, baseType: !1545, size: 64, offset: 4672)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !32, line: 747, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !146, file: !32, line: 749, baseType: !1549, size: 64, offset: 4736)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !32, line: 428, size: 128, elements: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1550, file: !32, line: 433, baseType: !13, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1550, file: !32, line: 434, baseType: !13, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1550, file: !32, line: 435, baseType: !287, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !146, file: !32, line: 751, baseType: !156, size: 128, offset: 4800)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !146, file: !32, line: 762, baseType: !1557, size: 64, offset: 4928)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !32, line: 762, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !146, file: !32, line: 770, baseType: !1560, offset: 4992)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1561, line: 5, elements: !374)
!1561 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !146, file: !32, line: 772, baseType: !1563, size: 64, offset: 4992)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1565, line: 18, flags: DIFlagFwdDecl)
!1565 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !146, file: !32, line: 773, baseType: !115, size: 64, offset: 5056)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !146, file: !32, line: 776, baseType: !52, size: 32, offset: 5120)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !146, file: !32, line: 778, baseType: !1569, size: 32, offset: 5152)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !134, line: 21, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !134, line: 18, baseType: !102)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !146, file: !32, line: 779, baseType: !102, size: 32, offset: 5184)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !146, file: !32, line: 781, baseType: !169, size: 32, offset: 5216)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !146, file: !32, line: 782, baseType: !156, size: 128, offset: 5248)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !146, file: !32, line: 784, baseType: !1575, size: 64, offset: 5376)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1578, line: 52, size: 768, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1588, !1592, !1593, !1594, !1595, !1599, !1603}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1577, file: !1578, line: 53, baseType: !153, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1577, file: !1578, line: 55, baseType: !289, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1577, file: !1578, line: 56, baseType: !289, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1577, file: !1578, line: 58, baseType: !823, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1577, file: !1578, line: 59, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!237, !144, !830}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1577, file: !1578, line: 61, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1575}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1577, file: !1578, line: 62, baseType: !832, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1577, file: !1578, line: 64, baseType: !841, size: 64, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1577, file: !1578, line: 66, baseType: !629, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1577, file: !1578, line: 67, baseType: !1596, size: 64, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!142, !144}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1577, file: !1578, line: 69, baseType: !1600, size: 64, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !144, !664, !672}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1577, file: !1578, line: 71, baseType: !836, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !146, file: !32, line: 785, baseType: !289, size: 64, offset: 5440)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !146, file: !32, line: 787, baseType: !832, size: 64, offset: 5504)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !146, file: !32, line: 788, baseType: !1607, size: 64, offset: 5568)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !32, line: 46, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !146, file: !32, line: 789, baseType: !1610, size: 64, offset: 5632)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !32, line: 48, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !146, file: !32, line: 791, baseType: !1613, size: 64, offset: 5696)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !32, line: 597, size: 128, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1619, !1620}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1614, file: !32, line: 598, baseType: !65, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1614, file: !32, line: 599, baseType: !74, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1614, file: !32, line: 600, baseType: !79, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1614, file: !32, line: 601, baseType: !133, size: 8, offset: 96)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1614, file: !32, line: 602, baseType: !133, size: 8, offset: 104)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !146, file: !32, line: 793, baseType: !84, size: 32, offset: 5760)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !146, file: !32, line: 795, baseType: !133, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !146, file: !32, line: 796, baseType: !133, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !146, file: !32, line: 797, baseType: !133, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !146, file: !32, line: 798, baseType: !133, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !146, file: !32, line: 799, baseType: !133, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !119, file: !112, line: 131, baseType: !130, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !119, file: !112, line: 133, baseType: !1629, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!59, !136}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !119, file: !112, line: 134, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!133, !136, !153}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !119, file: !112, line: 136, baseType: !1637, size: 64, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!52, !136, !153, !13, !96, !284}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !119, file: !112, line: 141, baseType: !1641, size: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!52, !136, !153, !1231, !284}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !119, file: !112, line: 144, baseType: !1645, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!153, !136}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !119, file: !112, line: 145, baseType: !1645, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !119, file: !112, line: 146, baseType: !1650, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!115, !136}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !119, file: !112, line: 148, baseType: !1654, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!115, !136, !115}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !119, file: !112, line: 151, baseType: !1658, size: 64, offset: 832)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!115, !136, !153}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !119, file: !112, line: 153, baseType: !1662, size: 64, offset: 896)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!52, !136, !153, !153, !13, !13, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !112, line: 94, size: 640, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1666, file: !112, line: 95, baseType: !115, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1666, file: !112, line: 96, baseType: !13, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1666, file: !112, line: 97, baseType: !1671, size: 512, offset: 128)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 512, elements: !1437)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !119, file: !112, line: 158, baseType: !1654, size: 64, offset: 960)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !119, file: !112, line: 161, baseType: !1650, size: 64, offset: 1024)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !119, file: !112, line: 163, baseType: !122, size: 64, offset: 1088)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !119, file: !112, line: 164, baseType: !1676, size: 64, offset: 1152)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!52, !136, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !112, line: 73, size: 128, elements: !1681)
!1681 = !{!1682, !1683, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1680, file: !112, line: 74, baseType: !13, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1680, file: !112, line: 75, baseType: !13, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1680, file: !112, line: 76, baseType: !136, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !119, file: !112, line: 166, baseType: !1686, size: 64, offset: 1216)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!96, !115, !52}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !119, file: !112, line: 167, baseType: !1690, size: 64, offset: 1280)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!52, !136, !13}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !119, file: !112, line: 168, baseType: !1694, size: 64, offset: 1344)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!52, !115}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !111, file: !112, line: 44, baseType: !810, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !111, file: !112, line: 45, baseType: !156, size: 128, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !111, file: !112, line: 46, baseType: !156, size: 128, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !112, line: 47, baseType: !197, size: 8, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !98, file: !99, line: 372, baseType: !156, size: 128, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !98, file: !99, line: 373, baseType: !156, size: 128, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !98, file: !99, line: 374, baseType: !1704, size: 32, offset: 896)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !99, line: 181, size: 32, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1704, file: !99, line: 182, baseType: !102, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1704, file: !99, line: 183, baseType: !102, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1704, file: !99, line: 184, baseType: !102, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1704, file: !99, line: 185, baseType: !102, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1704, file: !99, line: 186, baseType: !102, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1704, file: !99, line: 187, baseType: !102, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !99, line: 375, baseType: !1713, size: 32, offset: 928)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !99, line: 192, size: 32, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1713, file: !99, line: 193, baseType: !102, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1713, file: !99, line: 194, baseType: !102, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1713, file: !99, line: 195, baseType: !102, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1713, file: !99, line: 196, baseType: !102, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1713, file: !99, line: 197, baseType: !102, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1713, file: !99, line: 198, baseType: !102, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1713, file: !99, line: 199, baseType: !102, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1713, file: !99, line: 200, baseType: !102, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1713, file: !99, line: 201, baseType: !102, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1713, file: !99, line: 202, baseType: !102, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1713, file: !99, line: 203, baseType: !102, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1713, file: !99, line: 204, baseType: !102, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1713, file: !99, line: 205, baseType: !102, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1713, file: !99, line: 206, baseType: !102, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1713, file: !99, line: 207, baseType: !102, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !98, file: !99, line: 376, baseType: !1731, size: 960, offset: 960)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !99, line: 238, size: 960, elements: !1732)
!1732 = !{!1733, !1736, !1737, !1745, !1747, !1748, !1749, !1754, !1759}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1731, file: !99, line: 239, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !99, line: 220, baseType: !1735)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1437)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1731, file: !99, line: 240, baseType: !52, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1731, file: !99, line: 241, baseType: !1738, size: 32, offset: 96)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !99, line: 230, size: 32, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1738, file: !99, line: 231, baseType: !102, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1738, file: !99, line: 232, baseType: !102, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1738, file: !99, line: 233, baseType: !102, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1738, file: !99, line: 234, baseType: !102, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1738, file: !99, line: 235, baseType: !102, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1731, file: !99, line: 242, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !99, line: 221, baseType: !401)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1731, file: !99, line: 243, baseType: !237, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1731, file: !99, line: 244, baseType: !156, size: 128, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1731, file: !99, line: 245, baseType: !1750, size: 320, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !99, line: 222, baseType: !1751)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: 40)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1731, file: !99, line: 246, baseType: !1755, size: 160, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !99, line: 223, baseType: !1756)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1757)
!1757 = !{!1758}
!1758 = !DISubrange(count: 20)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1731, file: !99, line: 247, baseType: !1760, size: 64, offset: 896)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !109, line: 908, size: 192, elements: !1762)
!1762 = !{!1763, !1765, !1770, !1776, !1783, !1789, !1795, !1803}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1761, file: !109, line: 909, baseType: !1764, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !109, line: 644, baseType: !102)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1761, file: !109, line: 913, baseType: !1766, size: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !109, line: 910, size: 128, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !109, line: 911, baseType: !1764, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1766, file: !109, line: 912, baseType: !401, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1761, file: !109, line: 919, baseType: !1771, size: 128)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !109, line: 915, size: 128, elements: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !109, line: 916, baseType: !1764, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1771, file: !109, line: 917, baseType: !102, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1771, file: !109, line: 918, baseType: !237, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1761, file: !109, line: 925, baseType: !1777, size: 128)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !109, line: 921, size: 128, elements: !1778)
!1778 = !{!1779, !1780, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1777, file: !109, line: 922, baseType: !1764, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1777, file: !109, line: 923, baseType: !102, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1777, file: !109, line: 924, baseType: !1782, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1761, file: !109, line: 931, baseType: !1784, size: 128)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !109, line: 927, size: 128, elements: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1784, file: !109, line: 928, baseType: !1764, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1784, file: !109, line: 929, baseType: !102, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1784, file: !109, line: 930, baseType: !1760, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1761, file: !109, line: 937, baseType: !1790, size: 128)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !109, line: 933, size: 128, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1790, file: !109, line: 934, baseType: !1764, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1790, file: !109, line: 935, baseType: !1764, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1790, file: !109, line: 936, baseType: !108, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1761, file: !109, line: 944, baseType: !1796, size: 192)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !109, line: 939, size: 192, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1802}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1796, file: !109, line: 940, baseType: !1764, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1796, file: !109, line: 941, baseType: !102, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1796, file: !109, line: 942, baseType: !1801, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !109, line: 128, baseType: !401)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1796, file: !109, line: 943, baseType: !102, size: 32, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1761, file: !109, line: 950, baseType: !1804, size: 96)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !109, line: 946, size: 96, elements: !1805)
!1805 = !{!1806, !1807, !1808}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1804, file: !109, line: 947, baseType: !1764, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1804, file: !109, line: 948, baseType: !102, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1804, file: !109, line: 949, baseType: !102, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !98, file: !99, line: 377, baseType: !1810, size: 1408, offset: 1920)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !99, line: 280, size: 1408, elements: !1811)
!1811 = !{!1812, !1813, !1823, !1838}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1810, file: !99, line: 281, baseType: !52, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1810, file: !99, line: 282, baseType: !1814, size: 32, offset: 32)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !99, line: 259, size: 32, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1814, file: !99, line: 260, baseType: !102, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1814, file: !99, line: 261, baseType: !102, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1814, file: !99, line: 262, baseType: !102, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1814, file: !99, line: 263, baseType: !102, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1814, file: !99, line: 264, baseType: !102, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1814, file: !99, line: 265, baseType: !102, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1814, file: !99, line: 266, baseType: !102, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1810, file: !99, line: 283, baseType: !1824, size: 1280, offset: 64)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1825, size: 1280, elements: !1836)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !99, line: 269, size: 256, elements: !1826)
!1826 = !{!1827, !1833, !1834, !1835}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1825, file: !99, line: 274, baseType: !1828, size: 8)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !99, line: 270, size: 8, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1828, file: !99, line: 271, baseType: !197, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1828, file: !99, line: 272, baseType: !197, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1828, file: !99, line: 273, baseType: !197, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1825, file: !99, line: 275, baseType: !52, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1825, file: !99, line: 276, baseType: !52, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1825, file: !99, line: 277, baseType: !156, size: 128, offset: 128)
!1836 = !{!1837}
!1837 = !DISubrange(count: 5)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1810, file: !99, line: 284, baseType: !197, size: 8, offset: 1344)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !98, file: !99, line: 378, baseType: !1840, size: 640, offset: 3328)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !99, line: 330, size: 640, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1851, !1860, !1861, !1862}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1840, file: !99, line: 331, baseType: !108, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1840, file: !99, line: 332, baseType: !401, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1840, file: !99, line: 333, baseType: !401, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1840, file: !99, line: 334, baseType: !156, size: 128, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1840, file: !99, line: 335, baseType: !1847, size: 8, offset: 320)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !99, line: 320, size: 8, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1847, file: !99, line: 321, baseType: !197, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1847, file: !99, line: 322, baseType: !197, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1840, file: !99, line: 336, baseType: !1852, size: 128, offset: 384)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !99, line: 325, size: 128, elements: !1853)
!1853 = !{!1854, !1859}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1852, file: !99, line: 326, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1852, file: !99, line: 327, baseType: !810, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1840, file: !99, line: 337, baseType: !1362, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1840, file: !99, line: 338, baseType: !52, size: 32, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1840, file: !99, line: 339, baseType: !52, size: 32, offset: 608)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !98, file: !99, line: 379, baseType: !1864, size: 192, offset: 3968)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !99, line: 312, size: 192, elements: !1865)
!1865 = !{!1866, !1867, !1871, !1872}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1864, file: !99, line: 313, baseType: !52, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !99, line: 314, baseType: !1868, size: 8, offset: 32)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !99, line: 298, size: 8, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1868, file: !99, line: 299, baseType: !197, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1864, file: !99, line: 315, baseType: !52, size: 32, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1864, file: !99, line: 316, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !99, line: 302, size: 64, elements: !1875)
!1875 = !{!1876, !1881, !1882, !1883}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1874, file: !99, line: 306, baseType: !1877, size: 8)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !99, line: 303, size: 8, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1877, file: !99, line: 304, baseType: !197, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1877, file: !99, line: 305, baseType: !197, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1874, file: !99, line: 307, baseType: !197, size: 8, offset: 8)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1874, file: !99, line: 308, baseType: !197, size: 8, offset: 16)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1874, file: !99, line: 309, baseType: !52, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !98, file: !99, line: 380, baseType: !1885, size: 64, offset: 4160)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !99, line: 212, size: 64, elements: !1886)
!1886 = !{!1887}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1885, file: !99, line: 213, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !99, line: 86, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !98, file: !99, line: 381, baseType: !1891, size: 384, offset: 4224)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !99, line: 357, size: 384, elements: !1892)
!1892 = !{!1893, !1896, !1897, !1898}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1891, file: !99, line: 358, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1891, file: !99, line: 359, baseType: !156, size: 128, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1891, file: !99, line: 360, baseType: !1894, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1891, file: !99, line: 361, baseType: !156, size: 128, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !98, file: !99, line: 382, baseType: !1900, size: 64, offset: 4608)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !99, line: 124, size: 1216, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1910, !1914, !1918, !1919, !1920}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1901, file: !99, line: 125, baseType: !1282, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1901, file: !99, line: 126, baseType: !156, size: 128, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1901, file: !99, line: 127, baseType: !1906, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!133, !153, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1901, file: !99, line: 128, baseType: !1911, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!52, !97, !1282}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1901, file: !99, line: 129, baseType: !1915, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !97}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1901, file: !99, line: 130, baseType: !832, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1901, file: !99, line: 131, baseType: !832, size: 64, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1901, file: !99, line: 132, baseType: !1921, size: 704, offset: 512)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !99, line: 110, size: 704, elements: !1922)
!1922 = !{!1923, !1924, !1928, !1929, !1930}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1921, file: !99, line: 111, baseType: !149, size: 512)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1921, file: !99, line: 112, baseType: !1925, size: 64, offset: 512)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!52, !97}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1921, file: !99, line: 113, baseType: !1915, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1921, file: !99, line: 114, baseType: !133, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1921, file: !99, line: 115, baseType: !133, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !98, file: !99, line: 383, baseType: !1932, size: 64, offset: 4672)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !99, line: 140, size: 256, elements: !1934)
!1934 = !{!1935, !1936, !1940, !1944}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1933, file: !99, line: 141, baseType: !97, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1933, file: !99, line: 142, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!52, !97, !102}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1933, file: !99, line: 143, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !97, !102}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1933, file: !99, line: 144, baseType: !1915, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !98, file: !99, line: 384, baseType: !1946, size: 64, offset: 4736)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1948)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !99, line: 364, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !98, file: !99, line: 385, baseType: !96, size: 64, offset: 4800)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !98, file: !99, line: 386, baseType: !146, size: 5824, offset: 4864)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !98, file: !99, line: 387, baseType: !13, size: 32, offset: 10688)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !98, file: !99, line: 388, baseType: !13, size: 32, offset: 10720)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !98, file: !99, line: 389, baseType: !156, size: 128, offset: 10752)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !98, file: !99, line: 390, baseType: !495, size: 256, offset: 10880)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !98, file: !99, line: 391, baseType: !1915, size: 64, offset: 11136)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !109, line: 421, baseType: !102)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hardware_id", file: !99, line: 225, size: 192, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1958, file: !99, line: 226, baseType: !156, size: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1958, file: !99, line: 227, baseType: !153, size: 64, offset: 128)
!1962 = !{!0, !7, !1963, !1965, !1967, !1978, !1980, !1983, !1988, !1990, !1995, !1998, !2000, !2002, !2007, !2012, !2014, !2016, !2021}
!1963 = !DIGlobalVariableExpression(var: !1964, expr: !DIExpression())
!1964 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnpacpi_protocol208", scope: !9, file: !2, line: 195, type: !96, isLocal: true, isDefinition: true)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pnp__209_317_pnpacpi_init5210", scope: !9, file: !2, line: 317, type: !96, isLocal: true, isDefinition: true)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(name: "__setup_pnpacpi_setup", scope: !9, file: !2, line: 328, type: !1969, isLocal: true, isDefinition: true, align: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !1970, line: 324, size: 192, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1971 = !{!1972, !1973, !1977}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1969, file: !1970, line: 325, baseType: !153, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !1969, file: !1970, line: 326, baseType: !1974, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!52, !237}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !1969, file: !1970, line: 327, baseType: !52, size: 32, offset: 128)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(name: "pnpacpi_disabled", scope: !9, file: !2, line: 302, type: !52, isLocal: false, isDefinition: true)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !1982, isLocal: true, isDefinition: true)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !238)
!1983 = !DIGlobalVariableExpression(var: !1984, expr: !DIExpression())
!1984 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !1985, isLocal: true, isDefinition: true)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !1986)
!1986 = !{!1987}
!1987 = !DISubrange(count: 15)
!1988 = !DIGlobalVariableExpression(var: !1989, expr: !DIExpression())
!1989 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !1985, isLocal: true, isDefinition: true)
!1990 = !DIGlobalVariableExpression(var: !1991, expr: !DIExpression())
!1991 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !1992, isLocal: true, isDefinition: true)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !1993)
!1993 = !{!1994}
!1994 = !DISubrange(count: 27)
!1995 = !DIGlobalVariableExpression(var: !1996, expr: !DIExpression())
!1996 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !1997, isLocal: true, isDefinition: true)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1836)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !1997, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !1992, isLocal: true, isDefinition: true)
!2002 = !DIGlobalVariableExpression(var: !2003, expr: !DIExpression())
!2003 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !2004, isLocal: true, isDefinition: true)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 22)
!2007 = !DIGlobalVariableExpression(var: !2008, expr: !DIExpression())
!2008 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !2009, isLocal: true, isDefinition: true)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !2010)
!2010 = !{!2011}
!2011 = !DISubrange(count: 35)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !1997, isLocal: true, isDefinition: true)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(name: "num", scope: !9, file: !2, line: 18, type: !52, isLocal: true, isDefinition: true)
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(name: "__setup_str_pnpacpi_setup", scope: !9, file: !2, line: 328, type: !2018, isLocal: true, isDefinition: true, align: 8)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 72, elements: !2019)
!2019 = !{!2020}
!2020 = !DISubrange(count: 9)
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(scope: null, file: !2, line: 323, type: !2023, isLocal: true, isDefinition: true)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !476)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !2025, line: 411, size: 6720, elements: !2026)
!2025 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!2026 = !{!2027, !2028, !2029, !2153, !2154, !2155, !2159, !2160, !2161, !2162, !2163, !2164}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2024, file: !2025, line: 412, baseType: !156, size: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2024, file: !2025, line: 413, baseType: !237, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2024, file: !2025, line: 416, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!52, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !2025, line: 243, size: 7744, elements: !2035)
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2046, !2071, !2100, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2034, file: !2025, line: 244, baseType: !146, size: 5824)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2034, file: !2025, line: 245, baseType: !401, size: 64, offset: 5824)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2034, file: !2025, line: 246, baseType: !13, size: 32, offset: 5888)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2034, file: !2025, line: 247, baseType: !52, size: 32, offset: 5920)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2034, file: !2025, line: 249, baseType: !156, size: 128, offset: 5952)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2034, file: !2025, line: 250, baseType: !156, size: 128, offset: 6080)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !2034, file: !2025, line: 251, baseType: !156, size: 128, offset: 6208)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !2034, file: !2025, line: 252, baseType: !156, size: 128, offset: 6336)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2034, file: !2025, line: 254, baseType: !2045, size: 64, offset: 6464)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2034, file: !2025, line: 255, baseType: !2047, size: 64, offset: 6528)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !2025, line: 202, size: 6976, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2062, !2066, !2067, !2068, !2069, !2070}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2048, file: !2025, line: 203, baseType: !146, size: 5824)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2048, file: !2025, line: 204, baseType: !199, size: 8, offset: 5824)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2048, file: !2025, line: 205, baseType: !156, size: 128, offset: 5888)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2048, file: !2025, line: 206, baseType: !156, size: 128, offset: 6016)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2048, file: !2025, line: 207, baseType: !156, size: 128, offset: 6144)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2048, file: !2025, line: 209, baseType: !2045, size: 64, offset: 6272)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2048, file: !2025, line: 210, baseType: !2057, size: 64, offset: 6336)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !2025, line: 369, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2058, file: !2025, line: 370, baseType: !1735, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2058, file: !2025, line: 371, baseType: !2057, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2048, file: !2025, line: 212, baseType: !2063, size: 400, offset: 6400)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 50)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !2048, file: !2025, line: 213, baseType: !199, size: 8, offset: 6800)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !2048, file: !2025, line: 214, baseType: !199, size: 8, offset: 6808)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2048, file: !2025, line: 215, baseType: !13, size: 32, offset: 6816)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2048, file: !2025, line: 216, baseType: !199, size: 8, offset: 6848)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !2048, file: !2025, line: 217, baseType: !1888, size: 64, offset: 6912)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2034, file: !2025, line: 256, baseType: !2072, size: 64, offset: 6592)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !2025, line: 374, size: 1664, elements: !2074)
!2074 = !{!2075, !2076, !2084, !2085, !2089, !2093, !2094, !2098, !2099}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2073, file: !2025, line: 375, baseType: !153, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2073, file: !2025, line: 376, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1269, line: 240, size: 128, elements: !2080)
!2080 = !{!2081, !2083}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2079, file: !1269, line: 241, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !1437)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2079, file: !1269, line: 242, baseType: !1291, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2073, file: !2025, line: 377, baseType: !13, size: 32, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2073, file: !2025, line: 378, baseType: !2086, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!52, !2033, !2077}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2073, file: !2025, line: 379, baseType: !2090, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !2033}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2073, file: !2025, line: 380, baseType: !2090, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2073, file: !2025, line: 381, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!52, !2033, !1302}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2073, file: !2025, line: 382, baseType: !2030, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2073, file: !2025, line: 383, baseType: !882, size: 1152, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !2034, file: !2025, line: 257, baseType: !2101, size: 64, offset: 6656)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !2025, line: 226, size: 256, elements: !2103)
!2103 = !{!2104, !2105, !2141, !2142}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2102, file: !2025, line: 227, baseType: !2047, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2102, file: !2025, line: 228, baseType: !2106, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !2025, line: 388, size: 2240, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2123, !2124, !2128, !2132, !2136, !2140}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2107, file: !2025, line: 389, baseType: !156, size: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2107, file: !2025, line: 390, baseType: !237, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2107, file: !2025, line: 391, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1269, line: 245, size: 640, elements: !2115)
!2115 = !{!2116, !2117, !2118}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2114, file: !1269, line: 246, baseType: !2082, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2114, file: !1269, line: 247, baseType: !1291, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !2114, file: !1269, line: 250, baseType: !2119, size: 512, offset: 128)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2120, size: 512, elements: !1437)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !1269, line: 248, size: 64, elements: !2121)
!2121 = !{!2122}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2120, file: !1269, line: 249, baseType: !2082, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !2025, line: 392, baseType: !13, size: 32, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2107, file: !2025, line: 393, baseType: !2125, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!52, !2101, !2112}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2107, file: !2025, line: 395, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !2101}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2107, file: !2025, line: 396, baseType: !2133, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!52, !2101, !1302}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2107, file: !2025, line: 397, baseType: !2137, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!52, !2101}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2107, file: !2025, line: 398, baseType: !2073, size: 1664, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2102, file: !2025, line: 229, baseType: !96, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !2102, file: !2025, line: 230, baseType: !1302, size: 32, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2034, file: !2025, line: 259, baseType: !2057, size: 64, offset: 6720)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2034, file: !2025, line: 261, baseType: !52, size: 32, offset: 6784)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2034, file: !2025, line: 262, baseType: !52, size: 32, offset: 6816)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !2034, file: !2025, line: 263, baseType: !13, size: 32, offset: 6848)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2034, file: !2025, line: 264, baseType: !156, size: 128, offset: 6912)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2034, file: !2025, line: 265, baseType: !156, size: 128, offset: 7040)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2034, file: !2025, line: 267, baseType: !2063, size: 400, offset: 7168)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2034, file: !2025, line: 268, baseType: !52, size: 32, offset: 7584)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !2034, file: !2025, line: 269, baseType: !1888, size: 64, offset: 7616)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2034, file: !2025, line: 270, baseType: !96, size: 64, offset: 7680)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2024, file: !2025, line: 417, baseType: !2030, size: 64, offset: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2024, file: !2025, line: 418, baseType: !2030, size: 64, offset: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2024, file: !2025, line: 421, baseType: !2156, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!133, !2033}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2024, file: !2025, line: 422, baseType: !2095, size: 64, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2024, file: !2025, line: 423, baseType: !2030, size: 64, offset: 512)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2024, file: !2025, line: 426, baseType: !199, size: 8, offset: 576)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2024, file: !2025, line: 427, baseType: !146, size: 5824, offset: 640)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !2024, file: !2025, line: 428, baseType: !156, size: 128, offset: 6464)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2024, file: !2025, line: 429, baseType: !156, size: 128, offset: 6592)
!2165 = !{i32 7, !"Dwarf Version", i32 5}
!2166 = !{i32 2, !"Debug Info Version", i32 3}
!2167 = !{i32 1, !"wchar_size", i32 2}
!2168 = !{i32 8, !"cf-protection-branch", i32 1}
!2169 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2170 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2171 = !{i32 1, !"Code Model", i32 2}
!2172 = !{i32 1, !"override-stack-alignment", i32 8}
!2173 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2174 = distinct !DISubprogram(name: "pnpacpi_get_resources", scope: !2, file: !2, line: 43, type: !2031, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2175)
!2175 = !{!2176}
!2176 = !DILocalVariable(name: "dev", arg: 1, scope: !2174, file: !2, line: 43, type: !2033)
!2177 = !DILocation(line: 43, column: 50, scope: !2174)
!2178 = !DILocation(line: 45, column: 2, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !2, line: 45, column: 2)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 45, column: 2)
!2181 = !DILocation(line: 45, column: 2, scope: !2180)
!2182 = !DILocation(line: 45, column: 2, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 45, column: 2)
!2184 = !DILocation(line: 45, column: 2, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 45, column: 2)
!2186 = !DILocation(line: 46, column: 42, scope: !2174)
!2187 = !DILocation(line: 46, column: 9, scope: !2174)
!2188 = !DILocation(line: 46, column: 2, scope: !2174)
!2189 = distinct !DISubprogram(name: "pnpacpi_set_resources", scope: !2, file: !2, line: 49, type: !2031, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2197, !2199, !2202, !2205, !2213}
!2191 = !DILocalVariable(name: "dev", arg: 1, scope: !2189, file: !2, line: 49, type: !2033)
!2192 = !DILocalVariable(name: "acpi_dev", scope: !2189, file: !2, line: 51, type: !97)
!2193 = !DILocalVariable(name: "handle", scope: !2189, file: !2, line: 52, type: !108)
!2194 = !DILocalVariable(name: "ret", scope: !2189, file: !2, line: 53, type: !52)
!2195 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2196, file: !2, line: 57, type: !115)
!2196 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 57, column: 13)
!2197 = !DILocalVariable(name: "__mptr", scope: !2198, file: !2, line: 57, type: !96)
!2198 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 57, column: 13)
!2199 = !DILocalVariable(name: "__ret_warn_on", scope: !2200, file: !2, line: 63, type: !52)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 63, column: 6)
!2201 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 63, column: 6)
!2202 = !DILocalVariable(name: "__flags", scope: !2203, file: !2, line: 63, type: !52)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !2, line: 63, column: 6)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 63, column: 6)
!2205 = !DILocalVariable(name: "buffer", scope: !2206, file: !2, line: 68, type: !2208)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 67, column: 49)
!2207 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 67, column: 6)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !109, line: 978, size: 128, elements: !2209)
!2209 = !{!2210, !2212}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2208, file: !109, line: 979, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !109, line: 127, baseType: !401)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2208, file: !109, line: 980, baseType: !96, size: 64, offset: 64)
!2213 = !DILocalVariable(name: "status", scope: !2214, file: !2, line: 76, type: !1956)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 75, column: 13)
!2215 = distinct !DILexicalBlock(scope: !2206, file: !2, line: 75, column: 7)
!2216 = !DILocation(line: 49, column: 50, scope: !2189)
!2217 = !DILocation(line: 51, column: 2, scope: !2189)
!2218 = !DILocation(line: 51, column: 22, scope: !2189)
!2219 = !DILocation(line: 52, column: 2, scope: !2189)
!2220 = !DILocation(line: 52, column: 14, scope: !2189)
!2221 = !DILocation(line: 53, column: 2, scope: !2189)
!2222 = !DILocation(line: 53, column: 6, scope: !2189)
!2223 = !DILocation(line: 55, column: 2, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 55, column: 2)
!2225 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 55, column: 2)
!2226 = !DILocation(line: 55, column: 2, scope: !2225)
!2227 = !DILocation(line: 55, column: 2, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 55, column: 2)
!2229 = !DILocation(line: 55, column: 2, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 55, column: 2)
!2231 = !DILocation(line: 57, column: 13, scope: !2196)
!2232 = !DILocation(line: 57, column: 13, scope: !2198)
!2233 = !DILocation(line: 57, column: 13, scope: !2189)
!2234 = !DILocation(line: 57, column: 11, scope: !2189)
!2235 = !DILocation(line: 58, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 58, column: 6)
!2237 = !DILocation(line: 58, column: 6, scope: !2189)
!2238 = !DILocation(line: 60, column: 3, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 58, column: 17)
!2240 = !DILocation(line: 63, column: 6, scope: !2200)
!2241 = !DILocation(line: 63, column: 6, scope: !2204)
!2242 = !DILocation(line: 63, column: 6, scope: !2203)
!2243 = !DILocation(line: 63, column: 6, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 63, column: 6)
!2245 = !DILocation(line: 63, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 63, column: 6)
!2247 = !{i64 2153524686, i64 2153524715, i64 2153524761, i64 2153524819, i64 2153524873, i64 2153524927, i64 2153524982, i64 2153525013, i64 2153525321, i64 2153525327, i64 2153525374, i64 2153525397, i64 2153525423}
!2248 = !DILocation(line: 63, column: 6, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 63, column: 6)
!2250 = !DILocation(line: 63, column: 6, scope: !2201)
!2251 = !DILocation(line: 63, column: 6, scope: !2189)
!2252 = !DILocation(line: 64, column: 15, scope: !2201)
!2253 = !DILocation(line: 64, column: 3, scope: !2201)
!2254 = !DILocation(line: 64, column: 8, scope: !2201)
!2255 = !DILocation(line: 64, column: 13, scope: !2201)
!2256 = !DILocation(line: 66, column: 11, scope: !2189)
!2257 = !DILocation(line: 66, column: 21, scope: !2189)
!2258 = !DILocation(line: 66, column: 9, scope: !2189)
!2259 = !DILocation(line: 67, column: 22, scope: !2207)
!2260 = !DILocation(line: 67, column: 6, scope: !2207)
!2261 = !DILocation(line: 67, column: 6, scope: !2189)
!2262 = !DILocation(line: 68, column: 3, scope: !2206)
!2263 = !DILocation(line: 68, column: 22, scope: !2206)
!2264 = !DILocation(line: 70, column: 41, scope: !2206)
!2265 = !DILocation(line: 70, column: 9, scope: !2206)
!2266 = !DILocation(line: 70, column: 7, scope: !2206)
!2267 = !DILocation(line: 71, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2206, file: !2, line: 71, column: 7)
!2269 = !DILocation(line: 71, column: 7, scope: !2206)
!2270 = !DILocation(line: 72, column: 11, scope: !2268)
!2271 = !DILocation(line: 72, column: 4, scope: !2268)
!2272 = !DILocation(line: 74, column: 34, scope: !2206)
!2273 = !DILocation(line: 74, column: 9, scope: !2206)
!2274 = !DILocation(line: 74, column: 7, scope: !2206)
!2275 = !DILocation(line: 75, column: 8, scope: !2215)
!2276 = !DILocation(line: 75, column: 7, scope: !2206)
!2277 = !DILocation(line: 76, column: 4, scope: !2214)
!2278 = !DILocation(line: 76, column: 16, scope: !2214)
!2279 = !DILocation(line: 78, column: 40, scope: !2214)
!2280 = !DILocation(line: 78, column: 13, scope: !2214)
!2281 = !DILocation(line: 78, column: 11, scope: !2214)
!2282 = !DILocation(line: 79, column: 8, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 79, column: 8)
!2284 = !DILocation(line: 79, column: 8, scope: !2214)
!2285 = !DILocation(line: 80, column: 9, scope: !2283)
!2286 = !DILocation(line: 80, column: 5, scope: !2283)
!2287 = !DILocation(line: 81, column: 3, scope: !2215)
!2288 = !DILocation(line: 81, column: 3, scope: !2214)
!2289 = !DILocation(line: 82, column: 16, scope: !2206)
!2290 = !DILocation(line: 82, column: 3, scope: !2206)
!2291 = !DILocation(line: 83, column: 2, scope: !2207)
!2292 = !DILocation(line: 83, column: 2, scope: !2206)
!2293 = !DILocation(line: 84, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 84, column: 6)
!2295 = !DILocation(line: 84, column: 11, scope: !2294)
!2296 = !DILocation(line: 84, column: 43, scope: !2294)
!2297 = !DILocation(line: 84, column: 14, scope: !2294)
!2298 = !DILocation(line: 84, column: 6, scope: !2189)
!2299 = !DILocation(line: 85, column: 31, scope: !2294)
!2300 = !DILocation(line: 85, column: 9, scope: !2294)
!2301 = !DILocation(line: 85, column: 7, scope: !2294)
!2302 = !DILocation(line: 85, column: 3, scope: !2294)
!2303 = !DILocation(line: 87, column: 9, scope: !2189)
!2304 = !DILocation(line: 87, column: 2, scope: !2189)
!2305 = !DILocation(line: 88, column: 1, scope: !2189)
!2306 = distinct !DISubprogram(name: "pnpacpi_disable_resources", scope: !2, file: !2, line: 90, type: !2031, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2313}
!2308 = !DILocalVariable(name: "dev", arg: 1, scope: !2306, file: !2, line: 90, type: !2033)
!2309 = !DILocalVariable(name: "acpi_dev", scope: !2306, file: !2, line: 92, type: !97)
!2310 = !DILocalVariable(name: "status", scope: !2306, file: !2, line: 93, type: !1956)
!2311 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2312, file: !2, line: 97, type: !115)
!2312 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 97, column: 13)
!2313 = !DILocalVariable(name: "__mptr", scope: !2314, file: !2, line: 97, type: !96)
!2314 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 97, column: 13)
!2315 = !DILocation(line: 90, column: 54, scope: !2306)
!2316 = !DILocation(line: 92, column: 2, scope: !2306)
!2317 = !DILocation(line: 92, column: 22, scope: !2306)
!2318 = !DILocation(line: 93, column: 2, scope: !2306)
!2319 = !DILocation(line: 93, column: 14, scope: !2306)
!2320 = !DILocation(line: 97, column: 13, scope: !2312)
!2321 = !DILocation(line: 97, column: 13, scope: !2314)
!2322 = !DILocation(line: 97, column: 13, scope: !2306)
!2323 = !DILocation(line: 97, column: 11, scope: !2306)
!2324 = !DILocation(line: 98, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 98, column: 6)
!2326 = !DILocation(line: 98, column: 6, scope: !2306)
!2327 = !DILocation(line: 100, column: 3, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 98, column: 17)
!2329 = !DILocation(line: 104, column: 35, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 104, column: 6)
!2331 = !DILocation(line: 104, column: 6, scope: !2330)
!2332 = !DILocation(line: 104, column: 6, scope: !2306)
!2333 = !DILocation(line: 105, column: 25, scope: !2330)
!2334 = !DILocation(line: 105, column: 3, scope: !2330)
!2335 = !DILocation(line: 108, column: 32, scope: !2306)
!2336 = !DILocation(line: 108, column: 42, scope: !2306)
!2337 = !DILocation(line: 108, column: 11, scope: !2306)
!2338 = !DILocation(line: 108, column: 9, scope: !2306)
!2339 = !DILocation(line: 109, column: 6, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 109, column: 6)
!2341 = !DILocation(line: 109, column: 27, scope: !2340)
!2342 = !DILocation(line: 109, column: 30, scope: !2340)
!2343 = !DILocation(line: 109, column: 37, scope: !2340)
!2344 = !DILocation(line: 109, column: 6, scope: !2306)
!2345 = !DILocation(line: 110, column: 3, scope: !2340)
!2346 = !DILocation(line: 112, column: 2, scope: !2306)
!2347 = !DILocation(line: 113, column: 1, scope: !2306)
!2348 = distinct !DISubprogram(name: "pnpacpi_can_wakeup", scope: !2, file: !2, line: 116, type: !2157, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2349)
!2349 = !{!2350, !2351, !2352, !2354}
!2350 = !DILocalVariable(name: "dev", arg: 1, scope: !2348, file: !2, line: 116, type: !2033)
!2351 = !DILocalVariable(name: "acpi_dev", scope: !2348, file: !2, line: 118, type: !97)
!2352 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2353, file: !2, line: 118, type: !115)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 118, column: 33)
!2354 = !DILocalVariable(name: "__mptr", scope: !2355, file: !2, line: 118, type: !96)
!2355 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 118, column: 33)
!2356 = !DILocation(line: 116, column: 48, scope: !2348)
!2357 = !DILocation(line: 118, column: 2, scope: !2348)
!2358 = !DILocation(line: 118, column: 22, scope: !2348)
!2359 = !DILocation(line: 118, column: 33, scope: !2353)
!2360 = !DILocation(line: 118, column: 33, scope: !2355)
!2361 = !DILocation(line: 118, column: 33, scope: !2348)
!2362 = !DILocation(line: 120, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 120, column: 6)
!2364 = !DILocation(line: 120, column: 6, scope: !2348)
!2365 = !DILocation(line: 122, column: 3, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !2, line: 120, column: 17)
!2367 = !DILocation(line: 125, column: 29, scope: !2348)
!2368 = !DILocation(line: 125, column: 39, scope: !2348)
!2369 = !DILocation(line: 125, column: 9, scope: !2348)
!2370 = !DILocation(line: 125, column: 2, scope: !2348)
!2371 = !DILocation(line: 126, column: 1, scope: !2348)
!2372 = distinct !DISubprogram(name: "pnpacpi_suspend", scope: !2, file: !2, line: 128, type: !2096, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2379, !2381, !2382}
!2374 = !DILocalVariable(name: "dev", arg: 1, scope: !2372, file: !2, line: 128, type: !2033)
!2375 = !DILocalVariable(name: "state", arg: 2, scope: !2372, file: !2, line: 128, type: !1302)
!2376 = !DILocalVariable(name: "acpi_dev", scope: !2372, file: !2, line: 130, type: !97)
!2377 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2378, file: !2, line: 130, type: !115)
!2378 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 130, column: 33)
!2379 = !DILocalVariable(name: "__mptr", scope: !2380, file: !2, line: 130, type: !96)
!2380 = distinct !DILexicalBlock(scope: !2378, file: !2, line: 130, column: 33)
!2381 = !DILocalVariable(name: "error", scope: !2372, file: !2, line: 131, type: !52)
!2382 = !DILocalVariable(name: "power_state", scope: !2383, file: !2, line: 146, type: !52)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !2, line: 145, column: 46)
!2384 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 145, column: 6)
!2385 = !DILocation(line: 128, column: 44, scope: !2372)
!2386 = !DILocation(line: 128, column: 62, scope: !2372)
!2387 = !DILocation(line: 130, column: 2, scope: !2372)
!2388 = !DILocation(line: 130, column: 22, scope: !2372)
!2389 = !DILocation(line: 130, column: 33, scope: !2378)
!2390 = !DILocation(line: 130, column: 33, scope: !2380)
!2391 = !DILocation(line: 130, column: 33, scope: !2372)
!2392 = !DILocation(line: 131, column: 2, scope: !2372)
!2393 = !DILocation(line: 131, column: 6, scope: !2372)
!2394 = !DILocation(line: 133, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 133, column: 6)
!2396 = !DILocation(line: 133, column: 6, scope: !2372)
!2397 = !DILocation(line: 135, column: 3, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 133, column: 17)
!2399 = !DILocation(line: 138, column: 25, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2372, file: !2, line: 138, column: 6)
!2401 = !DILocation(line: 138, column: 30, scope: !2400)
!2402 = !DILocation(line: 138, column: 6, scope: !2400)
!2403 = !DILocation(line: 138, column: 6, scope: !2372)
!2404 = !DILocation(line: 139, column: 38, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 138, column: 36)
!2406 = !DILocation(line: 139, column: 43, scope: !2405)
!2407 = !DILocation(line: 140, column: 31, scope: !2405)
!2408 = !DILocation(line: 140, column: 36, scope: !2405)
!2409 = !DILocation(line: 140, column: 12, scope: !2405)
!2410 = !DILocation(line: 139, column: 11, scope: !2405)
!2411 = !DILocation(line: 139, column: 9, scope: !2405)
!2412 = !DILocation(line: 141, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2405, file: !2, line: 141, column: 7)
!2414 = !DILocation(line: 141, column: 7, scope: !2405)
!2415 = !DILocation(line: 142, column: 11, scope: !2413)
!2416 = !DILocation(line: 142, column: 4, scope: !2413)
!2417 = !DILocation(line: 143, column: 2, scope: !2405)
!2418 = !DILocation(line: 145, column: 35, scope: !2384)
!2419 = !DILocation(line: 145, column: 6, scope: !2384)
!2420 = !DILocation(line: 145, column: 6, scope: !2372)
!2421 = !DILocation(line: 146, column: 3, scope: !2383)
!2422 = !DILocation(line: 146, column: 7, scope: !2383)
!2423 = !DILocation(line: 146, column: 49, scope: !2383)
!2424 = !DILocation(line: 146, column: 54, scope: !2383)
!2425 = !DILocation(line: 146, column: 21, scope: !2383)
!2426 = !DILocation(line: 148, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2383, file: !2, line: 148, column: 7)
!2428 = !DILocation(line: 148, column: 19, scope: !2427)
!2429 = !DILocation(line: 148, column: 7, scope: !2383)
!2430 = !DILocation(line: 149, column: 25, scope: !2427)
!2431 = !DILocation(line: 149, column: 31, scope: !2427)
!2432 = !DILocation(line: 149, column: 18, scope: !2427)
!2433 = !DILocation(line: 149, column: 16, scope: !2427)
!2434 = !DILocation(line: 149, column: 4, scope: !2427)
!2435 = !DILocation(line: 158, column: 33, scope: !2383)
!2436 = !DILocation(line: 158, column: 43, scope: !2383)
!2437 = !DILocation(line: 158, column: 11, scope: !2383)
!2438 = !DILocation(line: 158, column: 9, scope: !2383)
!2439 = !DILocation(line: 159, column: 2, scope: !2384)
!2440 = !DILocation(line: 159, column: 2, scope: !2383)
!2441 = !DILocation(line: 161, column: 9, scope: !2372)
!2442 = !DILocation(line: 161, column: 2, scope: !2372)
!2443 = !DILocation(line: 162, column: 1, scope: !2372)
!2444 = distinct !DISubprogram(name: "pnpacpi_resume", scope: !2, file: !2, line: 164, type: !2031, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2445)
!2445 = !{!2446, !2447, !2448, !2450, !2452}
!2446 = !DILocalVariable(name: "dev", arg: 1, scope: !2444, file: !2, line: 164, type: !2033)
!2447 = !DILocalVariable(name: "acpi_dev", scope: !2444, file: !2, line: 166, type: !97)
!2448 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2449, file: !2, line: 166, type: !115)
!2449 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 166, column: 33)
!2450 = !DILocalVariable(name: "__mptr", scope: !2451, file: !2, line: 166, type: !96)
!2451 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 166, column: 33)
!2452 = !DILocalVariable(name: "error", scope: !2444, file: !2, line: 167, type: !52)
!2453 = !DILocation(line: 164, column: 43, scope: !2444)
!2454 = !DILocation(line: 166, column: 2, scope: !2444)
!2455 = !DILocation(line: 166, column: 22, scope: !2444)
!2456 = !DILocation(line: 166, column: 33, scope: !2449)
!2457 = !DILocation(line: 166, column: 33, scope: !2451)
!2458 = !DILocation(line: 166, column: 33, scope: !2444)
!2459 = !DILocation(line: 167, column: 2, scope: !2444)
!2460 = !DILocation(line: 167, column: 6, scope: !2444)
!2461 = !DILocation(line: 169, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 169, column: 6)
!2463 = !DILocation(line: 169, column: 6, scope: !2444)
!2464 = !DILocation(line: 171, column: 3, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 169, column: 17)
!2466 = !DILocation(line: 174, column: 25, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 174, column: 6)
!2468 = !DILocation(line: 174, column: 30, scope: !2467)
!2469 = !DILocation(line: 174, column: 6, scope: !2467)
!2470 = !DILocation(line: 174, column: 6, scope: !2444)
!2471 = !DILocation(line: 175, column: 30, scope: !2467)
!2472 = !DILocation(line: 175, column: 35, scope: !2467)
!2473 = !DILocation(line: 175, column: 3, scope: !2467)
!2474 = !DILocation(line: 177, column: 35, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 177, column: 6)
!2476 = !DILocation(line: 177, column: 6, scope: !2475)
!2477 = !DILocation(line: 177, column: 6, scope: !2444)
!2478 = !DILocation(line: 178, column: 33, scope: !2475)
!2479 = !DILocation(line: 178, column: 11, scope: !2475)
!2480 = !DILocation(line: 178, column: 9, scope: !2475)
!2481 = !DILocation(line: 178, column: 3, scope: !2475)
!2482 = !DILocation(line: 180, column: 9, scope: !2444)
!2483 = !DILocation(line: 180, column: 2, scope: !2444)
!2484 = !DILocation(line: 181, column: 1, scope: !2444)
!2485 = distinct !DISubprogram(name: "__initstub__kmod_pnp__209_317_pnpacpi_init5", scope: !2, file: !2, line: 317, type: !1020, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!2486 = !DILocation(line: 317, column: 1, scope: !2485)
!2487 = distinct !DISubprogram(name: "pnpacpi_init", scope: !2, file: !2, line: 303, type: !1020, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!2488 = !DILocation(line: 305, column: 6, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 305, column: 6)
!2490 = !DILocation(line: 305, column: 20, scope: !2489)
!2491 = !DILocation(line: 305, column: 23, scope: !2489)
!2492 = !DILocation(line: 305, column: 6, scope: !2487)
!2493 = !DILocation(line: 306, column: 3, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 306, column: 3)
!2495 = distinct !DILexicalBlock(scope: !2489, file: !2, line: 305, column: 41)
!2496 = !DILocation(line: 306, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 306, column: 3)
!2498 = !DILocation(line: 307, column: 3, scope: !2495)
!2499 = !DILocation(line: 309, column: 2, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 309, column: 2)
!2501 = !DILocation(line: 309, column: 2, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2500, file: !2, line: 309, column: 2)
!2503 = !DILocation(line: 310, column: 2, scope: !2487)
!2504 = !DILocation(line: 311, column: 2, scope: !2487)
!2505 = !DILocation(line: 312, column: 2, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 312, column: 2)
!2507 = !DILocation(line: 312, column: 2, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2506, file: !2, line: 312, column: 2)
!2509 = !DILocation(line: 313, column: 23, scope: !2487)
!2510 = !DILocation(line: 314, column: 2, scope: !2487)
!2511 = !DILocation(line: 315, column: 1, scope: !2487)
!2512 = distinct !DISubprogram(name: "pnpacpi_setup", scope: !2, file: !2, line: 319, type: !1975, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2513)
!2513 = !{!2514}
!2514 = !DILocalVariable(name: "str", arg: 1, scope: !2512, file: !2, line: 319, type: !237)
!2515 = !DILocation(line: 319, column: 39, scope: !2512)
!2516 = !DILocation(line: 321, column: 6, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 321, column: 6)
!2518 = !DILocation(line: 321, column: 10, scope: !2517)
!2519 = !DILocation(line: 321, column: 6, scope: !2512)
!2520 = !DILocation(line: 322, column: 3, scope: !2517)
!2521 = !DILocation(line: 323, column: 15, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 323, column: 6)
!2523 = !DILocation(line: 323, column: 7, scope: !2522)
!2524 = !DILocation(line: 323, column: 6, scope: !2512)
!2525 = !DILocation(line: 324, column: 20, scope: !2522)
!2526 = !DILocation(line: 324, column: 3, scope: !2522)
!2527 = !DILocation(line: 325, column: 2, scope: !2512)
!2528 = !DILocation(line: 326, column: 1, scope: !2512)
!2529 = !DISubprogram(name: "_dev_printk", scope: !2530, file: !2530, line: 41, type: !2531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2530 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !153, !144, !153, null}
!2533 = !DISubprogram(name: "pnpacpi_parse_allocated_resource", scope: !2534, file: !2534, line: 8, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2534 = !DIFile(filename: "drivers/pnp/pnpacpi/pnpacpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87eea7f5ed2be076e92d531c887d92e6")
!2535 = !DISubprogram(name: "is_acpi_device_node", scope: !99, file: !99, line: 410, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2536 = !DISubprogram(name: "acpi_has_method", scope: !99, file: !99, line: 42, type: !2537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!133, !108, !237}
!2539 = !DISubprogram(name: "pnpacpi_build_resource_template", scope: !2534, file: !2534, line: 11, type: !2540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!52, !2033, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2543 = !DISubprogram(name: "pnpacpi_encode_resources", scope: !2534, file: !2534, line: 10, type: !2540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2544 = !DISubprogram(name: "acpi_set_current_resources", scope: !2545, file: !2545, line: 823, type: !2546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2545 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!1956, !108, !2542}
!2548 = !DISubprogram(name: "kfree", scope: !2549, file: !2549, line: 227, type: !2550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2549 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !142}
!2552 = distinct !DISubprogram(name: "acpi_device_power_manageable", scope: !99, file: !99, line: 747, type: !2553, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!133, !97}
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "adev", arg: 1, scope: !2552, file: !99, line: 747, type: !97)
!2557 = !DILocation(line: 747, column: 69, scope: !2552)
!2558 = !DILocation(line: 749, column: 9, scope: !2552)
!2559 = !DILocation(line: 749, column: 15, scope: !2552)
!2560 = !DILocation(line: 749, column: 21, scope: !2552)
!2561 = !DILocation(line: 749, column: 2, scope: !2552)
!2562 = !DISubprogram(name: "acpi_device_set_power", scope: !99, file: !99, line: 538, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!52, !97, !52}
!2565 = !DISubprogram(name: "acpi_evaluate_object", scope: !2545, file: !2545, line: 549, type: !2566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!1956, !108, !2568, !2569, !2542}
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !109, line: 423, baseType: !237)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !109, line: 956, size: 128, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2570, file: !109, line: 957, baseType: !102, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2570, file: !109, line: 958, baseType: !1760, size: 64, offset: 64)
!2574 = !DISubprogram(name: "acpi_bus_can_wakeup", scope: !99, file: !99, line: 554, type: !2575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!133, !108}
!2577 = distinct !DISubprogram(name: "device_can_wakeup", scope: !1364, file: !1364, line: 77, type: !2578, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!133, !810}
!2580 = !{!2581}
!2581 = !DILocalVariable(name: "dev", arg: 1, scope: !2577, file: !1364, line: 77, type: !810)
!2582 = !DILocation(line: 77, column: 53, scope: !2577)
!2583 = !DILocation(line: 79, column: 9, scope: !2577)
!2584 = !DILocation(line: 79, column: 14, scope: !2577)
!2585 = !DILocation(line: 79, column: 20, scope: !2577)
!2586 = !DILocation(line: 79, column: 2, scope: !2577)
!2587 = !DISubprogram(name: "acpi_pm_set_device_wakeup", scope: !99, file: !99, line: 702, type: !2588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!52, !810, !133}
!2590 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1364, file: !1364, line: 82, type: !2578, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2591)
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "dev", arg: 1, scope: !2590, file: !1364, line: 82, type: !810)
!2593 = !DILocation(line: 82, column: 53, scope: !2590)
!2594 = !DILocation(line: 84, column: 9, scope: !2590)
!2595 = !DILocation(line: 84, column: 14, scope: !2590)
!2596 = !DILocation(line: 84, column: 20, scope: !2590)
!2597 = !DILocation(line: 84, column: 31, scope: !2590)
!2598 = !DILocation(line: 84, column: 36, scope: !2590)
!2599 = !DILocation(line: 84, column: 41, scope: !2590)
!2600 = !DILocation(line: 84, column: 47, scope: !2590)
!2601 = !DILocation(line: 84, column: 35, scope: !2590)
!2602 = !DILocation(line: 84, column: 34, scope: !2590)
!2603 = !DILocation(line: 0, scope: !2590)
!2604 = !DILocation(line: 84, column: 2, scope: !2590)
!2605 = !DISubprogram(name: "acpi_pm_device_sleep_state", scope: !99, file: !99, line: 701, type: !2606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!52, !810, !1048, !52}
!2608 = !DISubprogram(name: "_printk", scope: !2609, file: !2609, line: 153, type: !2610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2609 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!52, !153, null}
!2612 = !DISubprogram(name: "pnp_register_protocol", scope: !2613, file: !2613, line: 10, type: !2614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2613 = !DIFile(filename: "drivers/pnp/pnpacpi/../base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad88cd72d3973577aa1f5f71c7f3d528")
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!52, !2045}
!2616 = !DISubprogram(name: "acpi_get_devices", scope: !2545, file: !2545, line: 519, type: !2617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!1956, !153, !2619, !96, !2623}
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !109, line: 1135, baseType: !2620)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!1956, !108, !102, !96, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2624 = distinct !DISubprogram(name: "pnpacpi_add_device_handler", scope: !2, file: !2, line: 289, type: !2621, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2625)
!2625 = !{!2626, !2627, !2628, !2629, !2630}
!2626 = !DILocalVariable(name: "handle", arg: 1, scope: !2624, file: !2, line: 289, type: !108)
!2627 = !DILocalVariable(name: "lvl", arg: 2, scope: !2624, file: !2, line: 290, type: !102)
!2628 = !DILocalVariable(name: "context", arg: 3, scope: !2624, file: !2, line: 290, type: !96)
!2629 = !DILocalVariable(name: "rv", arg: 4, scope: !2624, file: !2, line: 291, type: !2623)
!2630 = !DILocalVariable(name: "device", scope: !2624, file: !2, line: 293, type: !97)
!2631 = !DILocation(line: 289, column: 66, scope: !2624)
!2632 = !DILocation(line: 290, column: 16, scope: !2624)
!2633 = !DILocation(line: 290, column: 27, scope: !2624)
!2634 = !DILocation(line: 291, column: 19, scope: !2624)
!2635 = !DILocation(line: 293, column: 2, scope: !2624)
!2636 = !DILocation(line: 293, column: 22, scope: !2624)
!2637 = !DILocation(line: 293, column: 51, scope: !2624)
!2638 = !DILocation(line: 293, column: 31, scope: !2624)
!2639 = !DILocation(line: 295, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 295, column: 6)
!2641 = !DILocation(line: 295, column: 6, scope: !2624)
!2642 = !DILocation(line: 296, column: 3, scope: !2640)
!2643 = !DILocation(line: 297, column: 25, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 297, column: 6)
!2645 = !DILocation(line: 297, column: 6, scope: !2644)
!2646 = !DILocation(line: 297, column: 6, scope: !2624)
!2647 = !DILocation(line: 298, column: 22, scope: !2644)
!2648 = !DILocation(line: 298, column: 3, scope: !2644)
!2649 = !DILocation(line: 299, column: 2, scope: !2624)
!2650 = !DILocation(line: 300, column: 1, scope: !2624)
!2651 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !99, file: !99, line: 813, type: !2652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!97, !108}
!2654 = !DISubprogram(name: "acpi_is_pnp_device", scope: !2655, file: !2655, line: 398, type: !2553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2655 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2656 = distinct !DISubprogram(name: "pnpacpi_add_device", scope: !2, file: !2, line: 209, type: !1926, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2657)
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663, !2666}
!2658 = !DILocalVariable(name: "device", arg: 1, scope: !2656, file: !2, line: 209, type: !97)
!2659 = !DILocalVariable(name: "dev", scope: !2656, file: !2, line: 211, type: !2033)
!2660 = !DILocalVariable(name: "pnpid", scope: !2656, file: !2, line: 212, type: !153)
!2661 = !DILocalVariable(name: "id", scope: !2656, file: !2, line: 213, type: !1957)
!2662 = !DILocalVariable(name: "error", scope: !2656, file: !2, line: 214, type: !52)
!2663 = !DILocalVariable(name: "__mptr", scope: !2664, file: !2, line: 266, type: !96)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !2, line: 266, column: 2)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 266, column: 2)
!2666 = !DILocalVariable(name: "__mptr", scope: !2667, file: !2, line: 266, type: !96)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !2, line: 266, column: 2)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !2, line: 266, column: 2)
!2669 = !DILocation(line: 209, column: 58, scope: !2656)
!2670 = !DILocation(line: 211, column: 2, scope: !2656)
!2671 = !DILocation(line: 211, column: 18, scope: !2656)
!2672 = !DILocation(line: 212, column: 2, scope: !2656)
!2673 = !DILocation(line: 212, column: 14, scope: !2656)
!2674 = !DILocation(line: 213, column: 2, scope: !2656)
!2675 = !DILocation(line: 213, column: 27, scope: !2656)
!2676 = !DILocation(line: 214, column: 2, scope: !2656)
!2677 = !DILocation(line: 214, column: 6, scope: !2656)
!2678 = !DILocation(line: 217, column: 6, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 217, column: 6)
!2680 = !DILocation(line: 217, column: 14, scope: !2679)
!2681 = !DILocation(line: 217, column: 6, scope: !2656)
!2682 = !DILocation(line: 218, column: 3, scope: !2679)
!2683 = !DILocation(line: 224, column: 23, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 224, column: 6)
!2685 = !DILocation(line: 224, column: 31, scope: !2684)
!2686 = !DILocation(line: 224, column: 7, scope: !2684)
!2687 = !DILocation(line: 224, column: 6, scope: !2656)
!2688 = !DILocation(line: 225, column: 3, scope: !2684)
!2689 = !DILocation(line: 227, column: 25, scope: !2656)
!2690 = !DILocation(line: 227, column: 10, scope: !2656)
!2691 = !DILocation(line: 227, column: 8, scope: !2656)
!2692 = !DILocation(line: 228, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 228, column: 6)
!2694 = !DILocation(line: 228, column: 6, scope: !2656)
!2695 = !DILocation(line: 229, column: 3, scope: !2693)
!2696 = !DILocation(line: 231, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 231, column: 6)
!2698 = !DILocation(line: 231, column: 15, scope: !2697)
!2699 = !DILocation(line: 231, column: 22, scope: !2697)
!2700 = !DILocation(line: 231, column: 6, scope: !2656)
!2701 = !DILocation(line: 232, column: 3, scope: !2697)
!2702 = !DILocation(line: 234, column: 41, scope: !2656)
!2703 = !DILocation(line: 234, column: 46, scope: !2656)
!2704 = !DILocation(line: 234, column: 8, scope: !2656)
!2705 = !DILocation(line: 234, column: 6, scope: !2656)
!2706 = !DILocation(line: 235, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 235, column: 6)
!2708 = !DILocation(line: 235, column: 6, scope: !2656)
!2709 = !DILocation(line: 236, column: 3, scope: !2707)
!2710 = !DILocation(line: 238, column: 2, scope: !2656)
!2711 = !DILocation(line: 239, column: 14, scope: !2656)
!2712 = !DILocation(line: 239, column: 2, scope: !2656)
!2713 = !DILocation(line: 239, column: 7, scope: !2656)
!2714 = !DILocation(line: 239, column: 12, scope: !2656)
!2715 = !DILocation(line: 241, column: 16, scope: !2656)
!2716 = !DILocation(line: 241, column: 24, scope: !2656)
!2717 = !DILocation(line: 241, column: 31, scope: !2656)
!2718 = !DILocation(line: 241, column: 2, scope: !2656)
!2719 = !DILocation(line: 241, column: 7, scope: !2656)
!2720 = !DILocation(line: 241, column: 14, scope: !2656)
!2721 = !DILocation(line: 242, column: 22, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 242, column: 6)
!2723 = !DILocation(line: 242, column: 30, scope: !2722)
!2724 = !DILocation(line: 242, column: 6, scope: !2722)
!2725 = !DILocation(line: 242, column: 6, scope: !2656)
!2726 = !DILocation(line: 243, column: 3, scope: !2722)
!2727 = !DILocation(line: 243, column: 8, scope: !2722)
!2728 = !DILocation(line: 243, column: 21, scope: !2722)
!2729 = !DILocation(line: 244, column: 2, scope: !2656)
!2730 = !DILocation(line: 244, column: 7, scope: !2656)
!2731 = !DILocation(line: 244, column: 20, scope: !2656)
!2732 = !DILocation(line: 245, column: 6, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 245, column: 6)
!2734 = !DILocation(line: 245, column: 14, scope: !2733)
!2735 = !DILocation(line: 245, column: 20, scope: !2733)
!2736 = !DILocation(line: 245, column: 35, scope: !2733)
!2737 = !DILocation(line: 245, column: 39, scope: !2733)
!2738 = !DILocation(line: 245, column: 44, scope: !2733)
!2739 = !DILocation(line: 245, column: 57, scope: !2733)
!2740 = !DILocation(line: 245, column: 6, scope: !2656)
!2741 = !DILocation(line: 246, column: 3, scope: !2733)
!2742 = !DILocation(line: 246, column: 8, scope: !2733)
!2743 = !DILocation(line: 246, column: 21, scope: !2733)
!2744 = !DILocation(line: 247, column: 6, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 247, column: 6)
!2746 = !DILocation(line: 247, column: 14, scope: !2745)
!2747 = !DILocation(line: 247, column: 20, scope: !2745)
!2748 = !DILocation(line: 247, column: 6, scope: !2656)
!2749 = !DILocation(line: 248, column: 3, scope: !2745)
!2750 = !DILocation(line: 248, column: 8, scope: !2745)
!2751 = !DILocation(line: 248, column: 21, scope: !2745)
!2752 = !DILocation(line: 249, column: 22, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 249, column: 6)
!2754 = !DILocation(line: 249, column: 30, scope: !2753)
!2755 = !DILocation(line: 249, column: 6, scope: !2753)
!2756 = !DILocation(line: 249, column: 6, scope: !2656)
!2757 = !DILocation(line: 250, column: 3, scope: !2753)
!2758 = !DILocation(line: 250, column: 8, scope: !2753)
!2759 = !DILocation(line: 250, column: 21, scope: !2753)
!2760 = !DILocation(line: 252, column: 13, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 252, column: 6)
!2762 = !DILocation(line: 252, column: 6, scope: !2761)
!2763 = !DILocation(line: 252, column: 6, scope: !2656)
!2764 = !DILocation(line: 253, column: 11, scope: !2761)
!2765 = !DILocation(line: 253, column: 16, scope: !2761)
!2766 = !DILocation(line: 253, column: 22, scope: !2761)
!2767 = !DILocation(line: 253, column: 3, scope: !2761)
!2768 = !DILocation(line: 255, column: 11, scope: !2761)
!2769 = !DILocation(line: 255, column: 16, scope: !2761)
!2770 = !DILocation(line: 255, column: 22, scope: !2761)
!2771 = !DILocation(line: 255, column: 3, scope: !2761)
!2772 = !DILocation(line: 258, column: 2, scope: !2656)
!2773 = !DILocation(line: 258, column: 7, scope: !2656)
!2774 = !DILocation(line: 258, column: 35, scope: !2656)
!2775 = !DILocation(line: 260, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 260, column: 6)
!2777 = !DILocation(line: 260, column: 11, scope: !2776)
!2778 = !DILocation(line: 260, column: 6, scope: !2656)
!2779 = !DILocation(line: 261, column: 36, scope: !2776)
!2780 = !DILocation(line: 261, column: 3, scope: !2776)
!2781 = !DILocation(line: 263, column: 6, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 263, column: 6)
!2783 = !DILocation(line: 263, column: 11, scope: !2782)
!2784 = !DILocation(line: 263, column: 24, scope: !2782)
!2785 = !DILocation(line: 263, column: 6, scope: !2656)
!2786 = !DILocation(line: 264, column: 38, scope: !2782)
!2787 = !DILocation(line: 264, column: 3, scope: !2782)
!2788 = !DILocation(line: 266, column: 2, scope: !2664)
!2789 = !DILocation(line: 266, column: 2, scope: !2665)
!2790 = !DILocation(line: 266, column: 2, scope: !2668)
!2791 = !DILocation(line: 267, column: 15, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 267, column: 7)
!2793 = distinct !DILexicalBlock(scope: !2668, file: !2, line: 266, column: 50)
!2794 = !DILocation(line: 267, column: 19, scope: !2792)
!2795 = !DILocation(line: 267, column: 23, scope: !2792)
!2796 = !DILocation(line: 267, column: 8, scope: !2792)
!2797 = !DILocation(line: 267, column: 7, scope: !2793)
!2798 = !DILocation(line: 268, column: 4, scope: !2792)
!2799 = !DILocation(line: 269, column: 20, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 269, column: 7)
!2801 = !DILocation(line: 269, column: 24, scope: !2800)
!2802 = !DILocation(line: 269, column: 8, scope: !2800)
!2803 = !DILocation(line: 269, column: 7, scope: !2793)
!2804 = !DILocation(line: 270, column: 4, scope: !2800)
!2805 = !DILocation(line: 271, column: 14, scope: !2793)
!2806 = !DILocation(line: 271, column: 19, scope: !2793)
!2807 = !DILocation(line: 271, column: 23, scope: !2793)
!2808 = !DILocation(line: 271, column: 3, scope: !2793)
!2809 = !DILocation(line: 272, column: 2, scope: !2793)
!2810 = !DILocation(line: 266, column: 2, scope: !2667)
!2811 = distinct !{!2811, !2789, !2812, !2813, !2814}
!2812 = !DILocation(line: 272, column: 2, scope: !2665)
!2813 = !{!"llvm.loop.mustprogress"}
!2814 = !{!"llvm.loop.unroll.disable"}
!2815 = !DILocation(line: 275, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 275, column: 6)
!2817 = !DILocation(line: 275, column: 12, scope: !2816)
!2818 = !DILocation(line: 275, column: 6, scope: !2656)
!2819 = !DILocation(line: 276, column: 22, scope: !2816)
!2820 = !DILocation(line: 276, column: 3, scope: !2816)
!2821 = !DILocation(line: 278, column: 25, scope: !2656)
!2822 = !DILocation(line: 278, column: 10, scope: !2656)
!2823 = !DILocation(line: 278, column: 8, scope: !2656)
!2824 = !DILocation(line: 279, column: 6, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 279, column: 6)
!2826 = !DILocation(line: 279, column: 6, scope: !2656)
!2827 = !DILocation(line: 280, column: 15, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !2, line: 279, column: 13)
!2829 = !DILocation(line: 280, column: 20, scope: !2828)
!2830 = !DILocation(line: 280, column: 3, scope: !2828)
!2831 = !DILocation(line: 281, column: 10, scope: !2828)
!2832 = !DILocation(line: 281, column: 3, scope: !2828)
!2833 = !DILocation(line: 284, column: 5, scope: !2656)
!2834 = !DILocation(line: 286, column: 2, scope: !2656)
!2835 = !DILocation(line: 287, column: 1, scope: !2656)
!2836 = distinct !DISubprogram(name: "pnpacpi_get_id", scope: !2, file: !2, line: 197, type: !2837, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!153, !97}
!2839 = !{!2840, !2841, !2842, !2845}
!2840 = !DILocalVariable(name: "device", arg: 1, scope: !2836, file: !2, line: 197, type: !97)
!2841 = !DILocalVariable(name: "id", scope: !2836, file: !2, line: 199, type: !1957)
!2842 = !DILocalVariable(name: "__mptr", scope: !2843, file: !2, line: 201, type: !96)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !2, line: 201, column: 2)
!2844 = distinct !DILexicalBlock(scope: !2836, file: !2, line: 201, column: 2)
!2845 = !DILocalVariable(name: "__mptr", scope: !2846, file: !2, line: 201, type: !96)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !2, line: 201, column: 2)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !2, line: 201, column: 2)
!2848 = !DILocation(line: 197, column: 62, scope: !2836)
!2849 = !DILocation(line: 199, column: 2, scope: !2836)
!2850 = !DILocation(line: 199, column: 27, scope: !2836)
!2851 = !DILocation(line: 201, column: 2, scope: !2843)
!2852 = !DILocation(line: 201, column: 2, scope: !2844)
!2853 = !DILocation(line: 201, column: 2, scope: !2847)
!2854 = !DILocation(line: 202, column: 19, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 202, column: 7)
!2856 = distinct !DILexicalBlock(scope: !2847, file: !2, line: 201, column: 50)
!2857 = !DILocation(line: 202, column: 23, scope: !2855)
!2858 = !DILocation(line: 202, column: 7, scope: !2855)
!2859 = !DILocation(line: 202, column: 7, scope: !2856)
!2860 = !DILocation(line: 203, column: 11, scope: !2855)
!2861 = !DILocation(line: 203, column: 15, scope: !2855)
!2862 = !DILocation(line: 203, column: 4, scope: !2855)
!2863 = !DILocation(line: 204, column: 2, scope: !2856)
!2864 = !DILocation(line: 201, column: 2, scope: !2846)
!2865 = distinct !{!2865, !2852, !2866, !2813, !2814}
!2866 = !DILocation(line: 204, column: 2, scope: !2844)
!2867 = !DILocation(line: 206, column: 2, scope: !2836)
!2868 = !DILocation(line: 207, column: 1, scope: !2836)
!2869 = !DISubprogram(name: "pnp_alloc_dev", scope: !2613, file: !2613, line: 15, type: !2870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!2033, !2045, !52, !153}
!2872 = !DISubprogram(name: "set_primary_fwnode", scope: !32, file: !32, line: 1134, type: !2873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !810, !115}
!2875 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !99, file: !99, line: 451, type: !2876, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!115, !97}
!2878 = !{!2879}
!2879 = !DILocalVariable(name: "adev", arg: 1, scope: !2875, file: !99, line: 451, type: !97)
!2880 = !DILocation(line: 451, column: 76, scope: !2875)
!2881 = !DILocation(line: 453, column: 10, scope: !2875)
!2882 = !DILocation(line: 453, column: 16, scope: !2875)
!2883 = !DILocation(line: 453, column: 2, scope: !2875)
!2884 = !DISubprogram(name: "strlen", scope: !2885, file: !2885, line: 128, type: !2886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2885 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!287, !153}
!2888 = !DISubprogram(name: "strncpy", scope: !2885, file: !2885, line: 66, type: !2889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!237, !237, !153, !285}
!2891 = !DISubprogram(name: "pnpacpi_parse_resource_option_data", scope: !2534, file: !2534, line: 9, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2892 = !DISubprogram(name: "strcmp", scope: !2885, file: !2885, line: 88, type: !2893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!52, !153, !153}
!2895 = distinct !DISubprogram(name: "ispnpidacpi", scope: !2, file: !2, line: 29, type: !2896, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!52, !153}
!2898 = !{!2899}
!2899 = !DILocalVariable(name: "id", arg: 1, scope: !2895, file: !2, line: 29, type: !153)
!2900 = !DILocation(line: 29, column: 43, scope: !2895)
!2901 = !DILocation(line: 31, column: 2, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 31, column: 2)
!2903 = !DILocation(line: 31, column: 2, scope: !2895)
!2904 = !DILocation(line: 32, column: 2, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 32, column: 2)
!2906 = !DILocation(line: 32, column: 2, scope: !2895)
!2907 = !DILocation(line: 33, column: 2, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 33, column: 2)
!2909 = !DILocation(line: 33, column: 2, scope: !2895)
!2910 = !DILocation(line: 34, column: 2, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 34, column: 2)
!2912 = !DILocation(line: 34, column: 2, scope: !2895)
!2913 = !DILocation(line: 35, column: 2, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 35, column: 2)
!2915 = !DILocation(line: 35, column: 2, scope: !2895)
!2916 = !DILocation(line: 36, column: 2, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 36, column: 2)
!2918 = !DILocation(line: 36, column: 2, scope: !2895)
!2919 = !DILocation(line: 37, column: 2, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 37, column: 2)
!2921 = !DILocation(line: 37, column: 2, scope: !2895)
!2922 = !DILocation(line: 38, column: 6, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 38, column: 6)
!2924 = !DILocation(line: 38, column: 12, scope: !2923)
!2925 = !DILocation(line: 38, column: 6, scope: !2895)
!2926 = !DILocation(line: 39, column: 3, scope: !2923)
!2927 = !DILocation(line: 40, column: 2, scope: !2895)
!2928 = !DILocation(line: 41, column: 1, scope: !2895)
!2929 = !DISubprogram(name: "pnp_add_id", scope: !2613, file: !2613, line: 20, type: !2930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!2057, !2033, !153}
!2932 = !DISubprogram(name: "pnp_init_resources", scope: !2613, file: !2613, line: 135, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2933 = !DISubprogram(name: "pnp_add_device", scope: !2613, file: !2613, line: 19, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2934 = !DISubprogram(name: "put_device", scope: !32, file: !32, line: 1231, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2935 = !DISubprogram(name: "strncmp", scope: !2885, file: !2885, line: 91, type: !2936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!52, !153, !153, !285}
