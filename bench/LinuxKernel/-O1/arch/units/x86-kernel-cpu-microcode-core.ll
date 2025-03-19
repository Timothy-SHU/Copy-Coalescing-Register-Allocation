; ModuleID = 'arch/x86/kernel/cpu/microcode/core.c'
source_filename = "arch/x86/kernel/cpu/microcode/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_microcode__308_865_microcode_init\22, \22a\22\09\09"
module asm "__initcall__kmod_microcode__308_865_microcode_init7:\09\09\09"
module asm ".long\09__initstub__kmod_microcode__308_865_microcode_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.early_load_data = type { i32, i32 }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.14, %union.anon.21, i8, i8 }>
%union.anon.14 = type { %struct.anon.17 }
%struct.anon.17 = type { i64 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i8, i8, i16, i32, i64 }
%struct.pcpu_hot = type { %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [16 x i8] }
%struct.anon.33 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.ucode_cpu_info = type { %struct.cpu_signature, ptr }
%struct.cpu_signature = type { i32, i32, i32 }
%struct.cpuinfo_x86 = type { %union.anon.34, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.36, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.34 = type { i32 }
%union.anon.36 = type { i64, [88 x i8] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpio_data = type { ptr, i64, [18 x i8] }
%struct.microcode_ops = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.35 = type { i8, i8, i8, i8 }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i64, i64, ptr }

@dis_ucode_ldr = hidden global i8 1, align 1, !dbg !0
@force_minrev = hidden global i8 0, align 1, !dbg !4418
@__param_str_force_minrev = internal constant [23 x i8] c"microcode.force_minrev\00", align 16, !dbg !4939
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_force_minrev = internal constant %struct.kernel_param { ptr @__param_str_force_minrev, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.13 { ptr @force_minrev } }, section "__param", align 8, !dbg !4420
@__UNIQUE_ID_force_minrevtype307 = internal constant [37 x i8] c"microcode.parmtype=force_minrev:bool\00", section ".modinfo", align 1, !dbg !4422
@early_data = hidden global %struct.early_load_data zeroinitializer, align 4, !dbg !4933
@boot_params = external dso_local global %struct.boot_params, align 1
@page_offset_base = external dso_local global i64, align 8
@initrd_start = external dso_local global i64, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !4427
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@ucode_cpu_info = hidden global [64 x %struct.ucode_cpu_info] zeroinitializer, align 16, !dbg !4926
@microcode_ops = internal global ptr null, align 8, !dbg !4432
@__UNIQUE_ID___addressable___initstub__kmod_microcode__308_865_microcode_init7309 = internal global ptr @__initstub__kmod_microcode__308_865_microcode_init7, section ".discard.addressable", align 8, !dbg !4430
@check_loader_disabled_bsp.__dis_opt_str = internal global ptr @.str.1, align 8, !dbg !4949
@.str.1 = private unnamed_addr constant [14 x i8] c"dis_ucode_ldr\00", align 1, !dbg !4944
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@final_levels = internal global [4 x i32] [i32 16777368, i32 16777375, i32 16777391, i32 0], align 16, !dbg !4955
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"\013microcode: no support for this CPU vendor\0A\00", align 1, !dbg !4958
@microcode_init.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4963
@.str.3 = private unnamed_addr constant [39 x i8] c"\016microcode: Current revision: 0x%08x\0A\00", align 1, !dbg !4984
@microcode_init.__already_done.4 = internal global i8 0, section ".data..once", align 1, !dbg !4989
@.str.5 = private unnamed_addr constant [41 x i8] c"\016microcode: Updated early from: 0x%08x\0A\00", align 1, !dbg !4991
@.str.6 = private unnamed_addr constant [10 x i8] c"microcode\00", align 1, !dbg !4996
@microcode_pdev = internal global ptr null, align 8, !dbg !5019
@cpu_subsys = external dso_local global %struct.bus_type, align 8
@cpu_root_microcode_group = internal constant %struct.attribute_group { ptr @.str.6, ptr null, ptr null, ptr @cpu_root_microcode_attrs, ptr null }, align 8, !dbg !5060
@.str.7 = private unnamed_addr constant [46 x i8] c"\013microcode: Error creating microcode group!\0A\00", align 1, !dbg !5001
@mc_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @microcode_bsp_resume, ptr null }, align 8, !dbg !5065
@.str.8 = private unnamed_addr constant [21 x i8] c"x86/microcode:online\00", align 1, !dbg !5006
@.str.9 = private unnamed_addr constant [43 x i8] c"\016microcode: Microcode Update Driver: v%s.\00", align 1, !dbg !5011
@.str.10 = private unnamed_addr constant [4 x i8] c"2.2\00", align 1, !dbg !5016
@cpu_root_microcode_attrs = internal global [1 x ptr] zeroinitializer, align 8, !dbg !5062
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@mc_attr_group = internal constant %struct.attribute_group { ptr @.str.6, ptr null, ptr null, ptr @mc_default_attrs, ptr null }, align 8, !dbg !5079
@.str.11 = private unnamed_addr constant [47 x i8] c"\013microcode: Failed to create group for CPU%d\0A\00", align 1, !dbg !5074
@mc_default_attrs = internal global [3 x ptr] [ptr @dev_attr_version, ptr @dev_attr_processor_flags, ptr null], align 16, !dbg !5081
@dev_attr_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @version_show, ptr null }, align 8, !dbg !5086
@dev_attr_processor_flags = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @processor_flags_show, ptr null }, align 8, !dbg !5104
@.str.12 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !5084
@.str.13 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1, !dbg !5100
@.str.14 = private unnamed_addr constant [16 x i8] c"processor_flags\00", align 1, !dbg !5102
@llvm.compiler.used = appending global [3 x ptr] [ptr @__param_force_minrev, ptr @__UNIQUE_ID_force_minrevtype307, ptr @__UNIQUE_ID___addressable___initstub__kmod_microcode__308_865_microcode_init7309], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @load_ucode_bsp() #0 section ".init.text" align 16 !dbg !5115 {
entry:
  %cpuid_1_eax = alloca i32, align 4
  %intel = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpuid_1_eax) #10, !dbg !5119
  call void @llvm.dbg.declare(metadata ptr %cpuid_1_eax, metadata !5117, metadata !DIExpression()), !dbg !5120
  call void @llvm.lifetime.start.p0(i64 1, ptr %intel) #10, !dbg !5121
  call void @llvm.dbg.declare(metadata ptr %intel, metadata !5118, metadata !DIExpression()), !dbg !5122
  store i8 1, ptr %intel, align 1, !dbg !5122
  %call = call i32 @have_cpuid_p() #11, !dbg !5123
  %tobool = icmp ne i32 %call, 0, !dbg !5123
  br i1 %tobool, label %if.end, label %if.then, !dbg !5125

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5126

if.end:                                           ; preds = %entry
  %call1 = call i32 @native_cpuid_eax(i32 noundef 1) #11, !dbg !5127
  store i32 %call1, ptr %cpuid_1_eax, align 4, !dbg !5128
  %call2 = call i32 @x86_cpuid_vendor() #11, !dbg !5129
  switch i32 %call2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
  ], !dbg !5130

sw.bb:                                            ; preds = %if.end
  %0 = load i32, ptr %cpuid_1_eax, align 4, !dbg !5131
  %call3 = call i32 @x86_family(i32 noundef %0) #11, !dbg !5134
  %cmp = icmp ult i32 %call3, 6, !dbg !5135
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5136

if.then4:                                         ; preds = %sw.bb
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5137

if.end5:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !5138

sw.bb6:                                           ; preds = %if.end
  %1 = load i32, ptr %cpuid_1_eax, align 4, !dbg !5139
  %call7 = call i32 @x86_family(i32 noundef %1) #11, !dbg !5141
  %cmp8 = icmp ult i32 %call7, 16, !dbg !5142
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5143

if.then9:                                         ; preds = %sw.bb6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5144

if.end10:                                         ; preds = %sw.bb6
  store i8 0, ptr %intel, align 1, !dbg !5145
  br label %sw.epilog, !dbg !5146

sw.default:                                       ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5147

sw.epilog:                                        ; preds = %if.end10, %if.end5
  %call11 = call zeroext i1 @check_loader_disabled_bsp() #12, !dbg !5148
  br i1 %call11, label %if.then12, label %if.end13, !dbg !5150

if.then12:                                        ; preds = %sw.epilog
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5151

if.end13:                                         ; preds = %sw.epilog
  %2 = load i8, ptr %intel, align 1, !dbg !5152, !range !5154, !noundef !742
  %tobool14 = trunc i8 %2 to i1, !dbg !5152
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !5155

if.then15:                                        ; preds = %if.end13
  call void @load_ucode_intel_bsp(ptr noundef @early_data) #11, !dbg !5156
  br label %if.end16, !dbg !5156

if.else:                                          ; preds = %if.end13
  %3 = load i32, ptr %cpuid_1_eax, align 4, !dbg !5157
  call void @load_ucode_amd_bsp(ptr noundef @early_data, i32 noundef %3) #11, !dbg !5158
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5159
  br label %cleanup, !dbg !5159

cleanup:                                          ; preds = %if.end16, %if.then12, %sw.default, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %intel) #10, !dbg !5159
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpuid_1_eax) #10, !dbg !5159
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5159

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @have_cpuid_p() #3 align 16 !dbg !5160 {
entry:
  ret i32 1, !dbg !5162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_cpuid_eax(i32 noundef %op) #3 align 16 !dbg !5163 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5167, metadata !DIExpression()), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !5168, metadata !DIExpression()), !dbg !5172
  %0 = load i32, ptr %op.addr, align 4, !dbg !5172
  store i32 %0, ptr %eax, align 4, !dbg !5172
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !5169, metadata !DIExpression()), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !5170, metadata !DIExpression()), !dbg !5172
  store i32 0, ptr %ecx, align 4, !dbg !5172
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !5171, metadata !DIExpression()), !dbg !5172
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !5172
  %1 = load i32, ptr %eax, align 4, !dbg !5172
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !5172
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !5172
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !5172
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !5172
  ret i32 %1, !dbg !5172
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @x86_cpuid_vendor() #3 align 16 !dbg !5173 {
entry:
  %retval = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !5175, metadata !DIExpression()), !dbg !5180
  store i32 0, ptr %eax, align 4, !dbg !5180
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !5176, metadata !DIExpression()), !dbg !5182
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !5177, metadata !DIExpression()), !dbg !5183
  store i32 0, ptr %ecx, align 4, !dbg !5183
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !5178, metadata !DIExpression()), !dbg !5184
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !5185
  %0 = load i32, ptr %ebx, align 4, !dbg !5186
  %xor = xor i32 %0, 1970169159, !dbg !5186
  %1 = load i32, ptr %edx, align 4, !dbg !5186
  %xor1 = xor i32 %1, 1231384169, !dbg !5186
  %or = or i32 %xor, %xor1, !dbg !5186
  %2 = load i32, ptr %ecx, align 4, !dbg !5186
  %xor2 = xor i32 %2, 1818588270, !dbg !5186
  %or3 = or i32 %or, %xor2, !dbg !5186
  %tobool = icmp ne i32 %or3, 0, !dbg !5186
  br i1 %tobool, label %if.end, label %if.then, !dbg !5188

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5189

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %ebx, align 4, !dbg !5190
  %xor4 = xor i32 %3, 1752462657, !dbg !5190
  %4 = load i32, ptr %edx, align 4, !dbg !5190
  %xor5 = xor i32 %4, 1769238117, !dbg !5190
  %or6 = or i32 %xor4, %xor5, !dbg !5190
  %5 = load i32, ptr %ecx, align 4, !dbg !5190
  %xor7 = xor i32 %5, 1145913699, !dbg !5190
  %or8 = or i32 %or6, %xor7, !dbg !5190
  %tobool9 = icmp ne i32 %or8, 0, !dbg !5190
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5192

if.then10:                                        ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5193

if.end11:                                         ; preds = %if.end
  store i32 255, ptr %retval, align 4, !dbg !5194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5194

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !5195
  %6 = load i32, ptr %retval, align 4, !dbg !5195
  ret i32 %6, !dbg !5195
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5196 dso_local i32 @x86_family(i32 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @check_loader_disabled_bsp() #0 section ".init.text" align 16 !dbg !4951 {
entry:
  %retval = alloca i1, align 1
  %cmdline = alloca ptr, align 8
  %option = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmdline) #10, !dbg !5198
  call void @llvm.dbg.declare(metadata ptr %cmdline, metadata !4953, metadata !DIExpression()), !dbg !5199
  store ptr @boot_command_line, ptr %cmdline, align 8, !dbg !5199
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #10, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %option, metadata !4954, metadata !DIExpression()), !dbg !5201
  %0 = load ptr, ptr @check_loader_disabled_bsp.__dis_opt_str, align 8, !dbg !5202
  store ptr %0, ptr %option, align 8, !dbg !5201
  %call = call i32 @native_cpuid_ecx(i32 noundef 1) #11, !dbg !5203
  %conv = zext i32 %call to i64, !dbg !5203
  %and = and i64 %conv, 2147483648, !dbg !5205
  %tobool = icmp ne i64 %and, 0, !dbg !5205
  br i1 %tobool, label %if.then, label %if.end, !dbg !5206

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5207

if.end:                                           ; preds = %entry
  %call1 = call i32 @x86_cpuid_vendor() #11, !dbg !5208
  %cmp = icmp eq i32 %call1, 2, !dbg !5210
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !5211

if.then3:                                         ; preds = %if.end
  %call4 = call zeroext i1 @amd_check_current_patch_level() #11, !dbg !5212
  br i1 %call4, label %if.then5, label %if.end6, !dbg !5215

if.then5:                                         ; preds = %if.then3
  store i1 true, ptr %retval, align 1, !dbg !5216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5216

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !5217

if.end7:                                          ; preds = %if.end6, %if.end
  %1 = load ptr, ptr %cmdline, align 8, !dbg !5218
  %2 = load ptr, ptr %option, align 8, !dbg !5220
  %call8 = call i32 @cmdline_find_option_bool(ptr noundef %1, ptr noundef %2) #11, !dbg !5221
  %cmp9 = icmp sle i32 %call8, 0, !dbg !5222
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5223

if.then11:                                        ; preds = %if.end7
  store i8 0, ptr @dis_ucode_ldr, align 1, !dbg !5224
  br label %if.end12, !dbg !5225

if.end12:                                         ; preds = %if.then11, %if.end7
  %3 = load i8, ptr @dis_ucode_ldr, align 1, !dbg !5226, !range !5154, !noundef !742
  %tobool13 = trunc i8 %3 to i1, !dbg !5226
  store i1 %tobool13, ptr %retval, align 1, !dbg !5227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5227

cleanup:                                          ; preds = %if.end12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #10, !dbg !5228
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmdline) #10, !dbg !5228
  %4 = load i1, ptr %retval, align 1, !dbg !5228
  ret i1 %4, !dbg !5228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5229 dso_local void @load_ucode_intel_bsp(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5233 dso_local void @load_ucode_amd_bsp(ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @load_ucode_ap() #5 align 16 !dbg !5236 {
entry:
  %cpuid_1_eax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpuid_1_eax) #10, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %cpuid_1_eax, metadata !5238, metadata !DIExpression()), !dbg !5240
  %0 = load i8, ptr @dis_ucode_ldr, align 1, !dbg !5241, !range !5154, !noundef !742
  %tobool = trunc i8 %0 to i1, !dbg !5241
  br i1 %tobool, label %if.then, label %if.end, !dbg !5243

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5244

if.end:                                           ; preds = %entry
  %call = call i32 @native_cpuid_eax(i32 noundef 1) #11, !dbg !5245
  store i32 %call, ptr %cpuid_1_eax, align 4, !dbg !5246
  %call1 = call i32 @x86_cpuid_vendor() #11, !dbg !5247
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ], !dbg !5248

sw.bb:                                            ; preds = %if.end
  %1 = load i32, ptr %cpuid_1_eax, align 4, !dbg !5249
  %call2 = call i32 @x86_family(i32 noundef %1) #11, !dbg !5252
  %cmp = icmp uge i32 %call2, 6, !dbg !5253
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5254

if.then3:                                         ; preds = %sw.bb
  call void @load_ucode_intel_ap() #11, !dbg !5255
  br label %if.end4, !dbg !5255

if.end4:                                          ; preds = %if.then3, %sw.bb
  br label %sw.epilog, !dbg !5256

sw.bb5:                                           ; preds = %if.end
  %2 = load i32, ptr %cpuid_1_eax, align 4, !dbg !5257
  %call6 = call i32 @x86_family(i32 noundef %2) #11, !dbg !5259
  %cmp7 = icmp uge i32 %call6, 16, !dbg !5260
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5261

if.then8:                                         ; preds = %sw.bb5
  %3 = load i32, ptr %cpuid_1_eax, align 4, !dbg !5262
  call void @load_ucode_amd_ap(i32 noundef %3) #11, !dbg !5263
  br label %if.end9, !dbg !5263

if.end9:                                          ; preds = %if.then8, %sw.bb5
  br label %sw.epilog, !dbg !5264

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !5265

sw.epilog:                                        ; preds = %sw.default, %if.end9, %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5266
  br label %cleanup, !dbg !5266

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpuid_1_eax) #10, !dbg !5266
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5266

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5267 dso_local void @load_ucode_intel_ap() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5268 dso_local void @load_ucode_amd_ap(i32 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @find_microcode_in_initrd(ptr dead_on_unwind noalias writable sret(%struct.cpio_data) align 8 %agg.result, ptr noundef %path) #0 section ".init.text" align 16 !dbg !5271 {
entry:
  %path.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5284, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5285, metadata !DIExpression()), !dbg !5289
  store i64 0, ptr %start, align 8, !dbg !5289
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5286, metadata !DIExpression()), !dbg !5291
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 12), align 1, !dbg !5292
  %conv = zext i32 %0 to i64, !dbg !5293
  %shl = shl i64 %conv, 32, !dbg !5294
  store i64 %shl, ptr %size, align 8, !dbg !5295
  %1 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 18), align 1, !dbg !5296
  %conv1 = zext i32 %1 to i64, !dbg !5297
  %2 = load i64, ptr %size, align 8, !dbg !5298
  %or = or i64 %2, %conv1, !dbg !5298
  store i64 %or, ptr %size, align 8, !dbg !5298
  %3 = load i64, ptr %size, align 8, !dbg !5299
  %tobool = icmp ne i64 %3, 0, !dbg !5299
  br i1 %tobool, label %if.then, label %if.end, !dbg !5301

if.then:                                          ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 11), align 1, !dbg !5302
  %conv2 = zext i32 %4 to i64, !dbg !5304
  %shl3 = shl i64 %conv2, 32, !dbg !5305
  store i64 %shl3, ptr %start, align 8, !dbg !5306
  %5 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 17), align 1, !dbg !5307
  %conv4 = zext i32 %5 to i64, !dbg !5308
  %6 = load i64, ptr %start, align 8, !dbg !5309
  %or5 = or i64 %6, %conv4, !dbg !5309
  store i64 %or5, ptr %start, align 8, !dbg !5309
  %7 = load i64, ptr @page_offset_base, align 8, !dbg !5310
  %8 = load i64, ptr %start, align 8, !dbg !5311
  %add = add i64 %8, %7, !dbg !5311
  store i64 %add, ptr %start, align 8, !dbg !5311
  br label %if.end, !dbg !5312

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, ptr @initrd_start, align 8, !dbg !5313
  %tobool6 = icmp ne i64 %9, 0, !dbg !5313
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5315

if.then7:                                         ; preds = %if.end
  %10 = load i64, ptr @initrd_start, align 8, !dbg !5316
  store i64 %10, ptr %start, align 8, !dbg !5317
  br label %if.end8, !dbg !5318

if.end8:                                          ; preds = %if.then7, %if.end
  %11 = load ptr, ptr %path.addr, align 8, !dbg !5319
  %12 = load i64, ptr %start, align 8, !dbg !5320
  %13 = inttoptr i64 %12 to ptr, !dbg !5321
  %14 = load i64, ptr %size, align 8, !dbg !5322
  call void @find_cpio_data(ptr dead_on_unwind writable sret(%struct.cpio_data) align 8 %agg.result, ptr noundef %11, ptr noundef %13, i64 noundef %14, ptr noundef null) #11, !dbg !5323
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !5324
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !5324
  ret void, !dbg !5324
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5325 dso_local void @find_cpio_data(ptr dead_on_unwind writable sret(%struct.cpio_data) align 8, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @microcode_bsp_resume() #5 align 16 !dbg !5329 {
entry:
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %uci = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #10, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5331, metadata !DIExpression()), !dbg !5342
  call void @__this_cpu_preempt_check(ptr noundef @.str) #11, !dbg !5343
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !5344
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5332, metadata !DIExpression()), !dbg !5344
  br label %do.body, !dbg !5344

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5345
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5335, metadata !DIExpression()), !dbg !5345
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5345
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5344
  br label %do.cond, !dbg !5345

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5345

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !5346
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5337, metadata !DIExpression()), !dbg !5346
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.33, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !5346, !srcloc !5347
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5346
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5346
  %conv = zext i32 %2 to i64, !dbg !5346
  %conv2 = trunc i64 %conv to i32, !dbg !5346
  store i32 %conv2, ptr %tmp1, align 4, !dbg !5346
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !5344
  %3 = load i32, ptr %tmp1, align 4, !dbg !5346
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5344
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5344
  store i32 %4, ptr %tmp3, align 4, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !5343
  %5 = load i32, ptr %tmp3, align 4, !dbg !5344
  store i32 %5, ptr %tmp, align 4, !dbg !5343
  %6 = load i32, ptr %tmp, align 4, !dbg !5343
  store i32 %6, ptr %cpu, align 4, !dbg !5342
  call void @llvm.lifetime.start.p0(i64 8, ptr %uci) #10, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5339, metadata !DIExpression()), !dbg !5349
  %7 = load i32, ptr %cpu, align 4, !dbg !5350
  %idx.ext = sext i32 %7 to i64, !dbg !5351
  %add.ptr = getelementptr %struct.ucode_cpu_info, ptr @ucode_cpu_info, i64 %idx.ext, !dbg !5351
  store ptr %add.ptr, ptr %uci, align 8, !dbg !5349
  %8 = load ptr, ptr %uci, align 8, !dbg !5352
  %mc = getelementptr inbounds %struct.ucode_cpu_info, ptr %8, i32 0, i32 1, !dbg !5354
  %9 = load ptr, ptr %mc, align 8, !dbg !5354
  %tobool = icmp ne ptr %9, null, !dbg !5352
  br i1 %tobool, label %if.then, label %if.else, !dbg !5355

if.then:                                          ; preds = %do.end
  %10 = load ptr, ptr @microcode_ops, align 8, !dbg !5356
  %apply_microcode = getelementptr inbounds %struct.microcode_ops, ptr %10, i32 0, i32 2, !dbg !5357
  %11 = load ptr, ptr %apply_microcode, align 8, !dbg !5357
  %12 = load i32, ptr %cpu, align 4, !dbg !5358
  %call = call i32 %11(i32 noundef %12) #11, !dbg !5356
  br label %if.end, !dbg !5356

if.else:                                          ; preds = %do.end
  %13 = load i32, ptr %cpu, align 4, !dbg !5359
  call void @reload_early_microcode(i32 noundef %13) #11, !dbg !5360
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %uci) #10, !dbg !5361
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #10, !dbg !5361
  ret void, !dbg !5361
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #6 align 16 !dbg !5362 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reload_early_microcode(i32 noundef %cpu) #5 align 16 !dbg !5370 {
entry:
  %cpu.addr = alloca i32, align 4
  %vendor = alloca i32, align 4
  %family = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5372, metadata !DIExpression()), !dbg !5375
  call void @llvm.lifetime.start.p0(i64 4, ptr %vendor) #10, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !5373, metadata !DIExpression()), !dbg !5377
  call void @llvm.lifetime.start.p0(i64 4, ptr %family) #10, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %family, metadata !5374, metadata !DIExpression()), !dbg !5378
  %call = call i32 @x86_cpuid_vendor() #11, !dbg !5379
  store i32 %call, ptr %vendor, align 4, !dbg !5380
  %call1 = call i32 @x86_cpuid_family() #11, !dbg !5381
  store i32 %call1, ptr %family, align 4, !dbg !5382
  %0 = load i32, ptr %vendor, align 4, !dbg !5383
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !5384

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %family, align 4, !dbg !5385
  %cmp = icmp sge i32 %1, 6, !dbg !5388
  br i1 %cmp, label %if.then, label %if.end, !dbg !5389

if.then:                                          ; preds = %sw.bb
  call void @reload_ucode_intel() #11, !dbg !5390
  br label %if.end, !dbg !5390

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !5391

sw.bb2:                                           ; preds = %entry
  %2 = load i32, ptr %family, align 4, !dbg !5392
  %cmp3 = icmp sge i32 %2, 16, !dbg !5394
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5395

if.then4:                                         ; preds = %sw.bb2
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !5396
  call void @reload_ucode_amd(i32 noundef %3) #11, !dbg !5397
  br label %if.end5, !dbg !5397

if.end5:                                          ; preds = %if.then4, %sw.bb2
  br label %sw.epilog, !dbg !5398

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5399

sw.epilog:                                        ; preds = %sw.default, %if.end5, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %family) #10, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 4, ptr %vendor) #10, !dbg !5400
  ret void, !dbg !5400
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_microcode__308_865_microcode_init7() #0 section ".init.text" align 16 !dbg !5401 {
entry:
  %call = call i32 @microcode_init() #12, !dbg !5402
  ret i32 %call, !dbg !5402
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @microcode_init() #0 section ".init.text" align 16 !dbg !4965 {
entry:
  %retval = alloca i32, align 4
  %dev_root = alloca ptr, align 8
  %c = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp28 = alloca i64, align 8
  %tmp41 = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  %__ret_do_once55 = alloca i8, align 1
  %__ret_cond56 = alloca i8, align 1
  %__ret_once63 = alloca i8, align 1
  %tmp80 = alloca i64, align 8
  %tmp93 = alloca i32, align 4
  %tmp96 = alloca i64, align 8
  %tmp120 = alloca i32, align 4
  %tmp128 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_root) #10, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %dev_root, metadata !4967, metadata !DIExpression()), !dbg !5404
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4968, metadata !DIExpression()), !dbg !5406
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !5406
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4969, metadata !DIExpression()), !dbg !5408
  %0 = load i8, ptr @dis_ucode_ldr, align 1, !dbg !5409, !range !5154, !noundef !742
  %tobool = trunc i8 %0 to i1, !dbg !5409
  br i1 %tobool, label %if.then, label %if.end, !dbg !5411

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5412

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %c, align 8, !dbg !5413
  %2 = getelementptr inbounds %struct.cpuinfo_x86, ptr %1, i32 0, i32 0, !dbg !5415
  %x86_vendor = getelementptr inbounds %struct.anon.35, ptr %2, i32 0, i32 2, !dbg !5415
  %3 = load i8, ptr %x86_vendor, align 2, !dbg !5415
  %conv = zext i8 %3 to i32, !dbg !5413
  %cmp = icmp eq i32 %conv, 0, !dbg !5416
  br i1 %cmp, label %if.then2, label %if.else, !dbg !5417

if.then2:                                         ; preds = %if.end
  %call = call ptr @init_intel_microcode() #11, !dbg !5418
  store ptr %call, ptr @microcode_ops, align 8, !dbg !5419
  br label %if.end12, !dbg !5420

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %c, align 8, !dbg !5421
  %5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 0, !dbg !5423
  %x86_vendor3 = getelementptr inbounds %struct.anon.35, ptr %5, i32 0, i32 2, !dbg !5423
  %6 = load i8, ptr %x86_vendor3, align 2, !dbg !5423
  %conv4 = zext i8 %6 to i32, !dbg !5421
  %cmp5 = icmp eq i32 %conv4, 2, !dbg !5424
  br i1 %cmp5, label %if.then7, label %if.else9, !dbg !5425

if.then7:                                         ; preds = %if.else
  %call8 = call ptr @init_amd_microcode() #11, !dbg !5426
  store ptr %call8, ptr @microcode_ops, align 8, !dbg !5427
  br label %if.end11, !dbg !5428

if.else9:                                         ; preds = %if.else
  br label %do.body, !dbg !5429

do.body:                                          ; preds = %if.else9
  br label %do.cond, !dbg !5431

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5431

do.end:                                           ; preds = %do.cond
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #12, !dbg !5429
  store i32 %call10, ptr %tmp, align 4, !dbg !5431
  %7 = load i32, ptr %tmp, align 4, !dbg !5429
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then2
  %8 = load ptr, ptr @microcode_ops, align 8, !dbg !5433
  %tobool13 = icmp ne ptr %8, null, !dbg !5433
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5435

if.then14:                                        ; preds = %if.end12
  store i32 -19, ptr %retval, align 4, !dbg !5436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5436

if.end15:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #10, !dbg !5437
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4970, metadata !DIExpression()), !dbg !5437
  store i8 1, ptr %__ret_do_once, align 1, !dbg !5437
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #10, !dbg !5438
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4972, metadata !DIExpression()), !dbg !5438
  %9 = load i8, ptr %__ret_do_once, align 1, !dbg !5438, !range !5154, !noundef !742
  %tobool16 = trunc i8 %9 to i1, !dbg !5438
  %lnot = xor i1 %tobool16, true, !dbg !5438
  %lnot17 = xor i1 %lnot, true, !dbg !5438
  %frombool = zext i1 %lnot17 to i8, !dbg !5438
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !5438
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #10, !dbg !5438
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4975, metadata !DIExpression()), !dbg !5438
  store i8 0, ptr %__ret_once, align 1, !dbg !5438
  %10 = load i8, ptr %__ret_cond, align 1, !dbg !5439, !range !5154, !noundef !742
  %tobool18 = trunc i8 %10 to i1, !dbg !5439
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !5439

land.rhs:                                         ; preds = %if.end15
  %11 = load i8, ptr @microcode_init.__already_done, align 1, !dbg !5439, !range !5154, !noundef !742
  %tobool20 = trunc i8 %11 to i1, !dbg !5439
  %lnot21 = xor i1 %tobool20, true, !dbg !5439
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end15
  %12 = phi i1 [ false, %if.end15 ], [ %lnot21, %land.rhs ], !dbg !5441
  %lnot22 = xor i1 %12, true, !dbg !5439
  %lnot23 = xor i1 %lnot22, true, !dbg !5439
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !5439
  %conv24 = sext i32 %lnot.ext to i64, !dbg !5439
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5439
  %tobool25 = icmp ne i64 %expval, 0, !dbg !5439
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5438

if.then26:                                        ; preds = %land.end
  store i8 1, ptr @microcode_init.__already_done, align 1, !dbg !5442
  store i8 1, ptr %__ret_once, align 1, !dbg !5442
  br label %if.end27, !dbg !5442

if.end27:                                         ; preds = %if.then26, %land.end
  %13 = load i8, ptr %__ret_once, align 1, !dbg !5438, !range !5154, !noundef !742
  %tobool29 = trunc i8 %13 to i1, !dbg !5438
  %lnot30 = xor i1 %tobool29, true, !dbg !5438
  %lnot32 = xor i1 %lnot30, true, !dbg !5438
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5438
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !5438
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !5438
  store i64 %expval35, ptr %tmp28, align 8, !dbg !5439
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #10, !dbg !5444
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #10, !dbg !5444
  %14 = load i64, ptr %tmp28, align 8, !dbg !5438
  %tobool36 = icmp ne i64 %14, 0, !dbg !5444
  br i1 %tobool36, label %if.then37, label %if.end44, !dbg !5437

if.then37:                                        ; preds = %if.end27
  br label %do.body38, !dbg !5445

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !5447

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5447

do.end40:                                         ; preds = %do.cond39
  %15 = load i32, ptr getelementptr inbounds (%struct.early_load_data, ptr @early_data, i32 0, i32 1), align 4, !dbg !5445
  %tobool42 = icmp ne i32 %15, 0, !dbg !5445
  br i1 %tobool42, label %cond.true, label %cond.false, !dbg !5445

cond.true:                                        ; preds = %do.end40
  br label %cond.end, !dbg !5445

cond.false:                                       ; preds = %do.end40
  %16 = load i32, ptr @early_data, align 4, !dbg !5445
  br label %cond.end, !dbg !5445

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !5445
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %cond) #12, !dbg !5445
  store i32 %call43, ptr %tmp41, align 4, !dbg !5447
  %17 = load i32, ptr %tmp41, align 4, !dbg !5445
  br label %if.end44, !dbg !5444

if.end44:                                         ; preds = %cond.end, %if.end27
  %18 = load i8, ptr %__ret_do_once, align 1, !dbg !5437, !range !5154, !noundef !742
  %tobool46 = trunc i8 %18 to i1, !dbg !5437
  %lnot47 = xor i1 %tobool46, true, !dbg !5437
  %lnot49 = xor i1 %lnot47, true, !dbg !5437
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !5437
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !5437
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !5437
  store i64 %expval52, ptr %tmp45, align 8, !dbg !5444
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #10, !dbg !5449
  %19 = load i64, ptr %tmp45, align 8, !dbg !5437
  %20 = load i32, ptr getelementptr inbounds (%struct.early_load_data, ptr @early_data, i32 0, i32 1), align 4, !dbg !5450
  %tobool53 = icmp ne i32 %20, 0, !dbg !5451
  br i1 %tobool53, label %if.then54, label %if.end104, !dbg !5452

if.then54:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once55) #10, !dbg !5453
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once55, metadata !4976, metadata !DIExpression()), !dbg !5453
  store i8 1, ptr %__ret_do_once55, align 1, !dbg !5453
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond56) #10, !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %__ret_cond56, metadata !4979, metadata !DIExpression()), !dbg !5454
  %21 = load i8, ptr %__ret_do_once55, align 1, !dbg !5454, !range !5154, !noundef !742
  %tobool57 = trunc i8 %21 to i1, !dbg !5454
  %lnot58 = xor i1 %tobool57, true, !dbg !5454
  %lnot60 = xor i1 %lnot58, true, !dbg !5454
  %frombool62 = zext i1 %lnot60 to i8, !dbg !5454
  store i8 %frombool62, ptr %__ret_cond56, align 1, !dbg !5454
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once63) #10, !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %__ret_once63, metadata !4982, metadata !DIExpression()), !dbg !5454
  store i8 0, ptr %__ret_once63, align 1, !dbg !5454
  %22 = load i8, ptr %__ret_cond56, align 1, !dbg !5455, !range !5154, !noundef !742
  %tobool64 = trunc i8 %22 to i1, !dbg !5455
  br i1 %tobool64, label %land.rhs66, label %land.end70, !dbg !5455

land.rhs66:                                       ; preds = %if.then54
  %23 = load i8, ptr @microcode_init.__already_done.4, align 1, !dbg !5455, !range !5154, !noundef !742
  %tobool67 = trunc i8 %23 to i1, !dbg !5455
  %lnot68 = xor i1 %tobool67, true, !dbg !5455
  br label %land.end70

land.end70:                                       ; preds = %land.rhs66, %if.then54
  %24 = phi i1 [ false, %if.then54 ], [ %lnot68, %land.rhs66 ], !dbg !5457
  %lnot71 = xor i1 %24, true, !dbg !5455
  %lnot73 = xor i1 %lnot71, true, !dbg !5455
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !5455
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !5455
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !5455
  %tobool77 = icmp ne i64 %expval76, 0, !dbg !5455
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !5454

if.then78:                                        ; preds = %land.end70
  store i8 1, ptr @microcode_init.__already_done.4, align 1, !dbg !5458
  store i8 1, ptr %__ret_once63, align 1, !dbg !5458
  br label %if.end79, !dbg !5458

if.end79:                                         ; preds = %if.then78, %land.end70
  %25 = load i8, ptr %__ret_once63, align 1, !dbg !5454, !range !5154, !noundef !742
  %tobool81 = trunc i8 %25 to i1, !dbg !5454
  %lnot82 = xor i1 %tobool81, true, !dbg !5454
  %lnot84 = xor i1 %lnot82, true, !dbg !5454
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !5454
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !5454
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !5454
  store i64 %expval87, ptr %tmp80, align 8, !dbg !5455
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once63) #10, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond56) #10, !dbg !5460
  %26 = load i64, ptr %tmp80, align 8, !dbg !5454
  %tobool88 = icmp ne i64 %26, 0, !dbg !5460
  br i1 %tobool88, label %if.then89, label %if.end95, !dbg !5453

if.then89:                                        ; preds = %if.end79
  br label %do.body90, !dbg !5461

do.body90:                                        ; preds = %if.then89
  br label %do.cond91, !dbg !5463

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !5463

do.end92:                                         ; preds = %do.cond91
  %27 = load i32, ptr @early_data, align 4, !dbg !5461
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %27) #12, !dbg !5461
  store i32 %call94, ptr %tmp93, align 4, !dbg !5463
  %28 = load i32, ptr %tmp93, align 4, !dbg !5461
  br label %if.end95, !dbg !5460

if.end95:                                         ; preds = %do.end92, %if.end79
  %29 = load i8, ptr %__ret_do_once55, align 1, !dbg !5453, !range !5154, !noundef !742
  %tobool97 = trunc i8 %29 to i1, !dbg !5453
  %lnot98 = xor i1 %tobool97, true, !dbg !5453
  %lnot100 = xor i1 %lnot98, true, !dbg !5453
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !5453
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !5453
  %expval103 = call i64 @llvm.expect.i64(i64 %conv102, i64 0), !dbg !5453
  store i64 %expval103, ptr %tmp96, align 8, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once55) #10, !dbg !5465
  %30 = load i64, ptr %tmp96, align 8, !dbg !5453
  br label %if.end104, !dbg !5465

if.end104:                                        ; preds = %if.end95, %if.end44
  %call105 = call ptr @platform_device_register_simple(ptr noundef @.str.6, i32 noundef -1, ptr noundef null, i32 noundef 0) #11, !dbg !5466
  store ptr %call105, ptr @microcode_pdev, align 8, !dbg !5467
  %31 = load ptr, ptr @microcode_pdev, align 8, !dbg !5468
  %call106 = call zeroext i1 @IS_ERR(ptr noundef %31) #11, !dbg !5470
  br i1 %call106, label %if.then107, label %if.end110, !dbg !5471

if.then107:                                       ; preds = %if.end104
  %32 = load ptr, ptr @microcode_pdev, align 8, !dbg !5472
  %call108 = call i64 @PTR_ERR(ptr noundef %32) #11, !dbg !5473
  %conv109 = trunc i64 %call108 to i32, !dbg !5473
  store i32 %conv109, ptr %retval, align 4, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

if.end110:                                        ; preds = %if.end104
  %call111 = call ptr @bus_get_dev_root(ptr noundef @cpu_subsys) #11, !dbg !5475
  store ptr %call111, ptr %dev_root, align 8, !dbg !5476
  %33 = load ptr, ptr %dev_root, align 8, !dbg !5477
  %tobool112 = icmp ne ptr %33, null, !dbg !5477
  br i1 %tobool112, label %if.then113, label %if.end123, !dbg !5479

if.then113:                                       ; preds = %if.end110
  %34 = load ptr, ptr %dev_root, align 8, !dbg !5480
  %kobj = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 0, !dbg !5482
  %call114 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @cpu_root_microcode_group) #11, !dbg !5483
  store i32 %call114, ptr %error, align 4, !dbg !5484
  %35 = load ptr, ptr %dev_root, align 8, !dbg !5485
  call void @put_device(ptr noundef %35) #11, !dbg !5486
  %36 = load i32, ptr %error, align 4, !dbg !5487
  %tobool115 = icmp ne i32 %36, 0, !dbg !5487
  br i1 %tobool115, label %if.then116, label %if.end122, !dbg !5489

if.then116:                                       ; preds = %if.then113
  br label %do.body117, !dbg !5490

do.body117:                                       ; preds = %if.then116
  br label %do.cond118, !dbg !5493

do.cond118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !5493

do.end119:                                        ; preds = %do.cond118
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #12, !dbg !5490
  store i32 %call121, ptr %tmp120, align 4, !dbg !5493
  %37 = load i32, ptr %tmp120, align 4, !dbg !5490
  br label %out_pdev, !dbg !5495

if.end122:                                        ; preds = %if.then113
  br label %if.end123, !dbg !5496

if.end123:                                        ; preds = %if.end122, %if.end110
  call void @register_syscore_ops(ptr noundef @mc_syscore_ops) #11, !dbg !5497
  %call124 = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str.8, ptr noundef @mc_cpu_online, ptr noundef @mc_cpu_down_prep) #11, !dbg !5498
  br label %do.body125, !dbg !5499

do.body125:                                       ; preds = %if.end123
  br label %do.cond126, !dbg !5501

do.cond126:                                       ; preds = %do.body125
  br label %do.end127, !dbg !5501

do.end127:                                        ; preds = %do.cond126
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef @.str.10) #12, !dbg !5499
  store i32 %call129, ptr %tmp128, align 4, !dbg !5501
  %38 = load i32, ptr %tmp128, align 4, !dbg !5499
  store i32 0, ptr %retval, align 4, !dbg !5503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5503

out_pdev:                                         ; preds = %do.end119
  call void @llvm.dbg.label(metadata !4983), !dbg !5504
  %39 = load ptr, ptr @microcode_pdev, align 8, !dbg !5505
  call void @platform_device_unregister(ptr noundef %39) #11, !dbg !5506
  %40 = load i32, ptr %error, align 4, !dbg !5507
  store i32 %40, ptr %retval, align 4, !dbg !5508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5508

cleanup:                                          ; preds = %out_pdev, %do.end127, %if.then107, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_root) #10, !dbg !5509
  %41 = load i32, ptr %retval, align 4, !dbg !5509
  ret i32 %41, !dbg !5509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #3 align 16 !dbg !5510 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !5514, metadata !DIExpression()), !dbg !5518
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !5515, metadata !DIExpression()), !dbg !5519
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !5516, metadata !DIExpression()), !dbg !5520
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !5517, metadata !DIExpression()), !dbg !5521
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !5522
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !5523
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !5524
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !5525
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !5526
  %5 = load i32, ptr %4, align 4, !dbg !5527
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !5528
  %7 = load i32, ptr %6, align 4, !dbg !5529
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #10, !dbg !5530, !srcloc !5531
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !5530
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !5530
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !5530
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !5530
  store i32 %asmresult, ptr %0, align 4, !dbg !5530
  store i32 %asmresult1, ptr %1, align 4, !dbg !5530
  store i32 %asmresult2, ptr %2, align 4, !dbg !5530
  store i32 %asmresult3, ptr %3, align 4, !dbg !5530
  ret void, !dbg !5532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_cpuid_ecx(i32 noundef %op) #3 align 16 !dbg !5533 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5535, metadata !DIExpression()), !dbg !5540
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !5536, metadata !DIExpression()), !dbg !5540
  %0 = load i32, ptr %op.addr, align 4, !dbg !5540
  store i32 %0, ptr %eax, align 4, !dbg !5540
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !5537, metadata !DIExpression()), !dbg !5540
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !5538, metadata !DIExpression()), !dbg !5540
  store i32 0, ptr %ecx, align 4, !dbg !5540
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !5539, metadata !DIExpression()), !dbg !5540
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !5540
  %1 = load i32, ptr %ecx, align 4, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !5540
  ret i32 %1, !dbg !5540
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @amd_check_current_patch_level() #5 align 16 !dbg !5541 {
entry:
  %retval = alloca i1, align 1
  %lvl = alloca i32, align 4
  %dummy = alloca i32, align 4
  %i = alloca i32, align 4
  %levels = alloca ptr, align 8
  %__val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lvl) #10, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %lvl, metadata !5543, metadata !DIExpression()), !dbg !5550
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #10, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !5544, metadata !DIExpression()), !dbg !5551
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5545, metadata !DIExpression()), !dbg !5552
  call void @llvm.lifetime.start.p0(i64 8, ptr %levels) #10, !dbg !5553
  call void @llvm.dbg.declare(metadata ptr %levels, metadata !5546, metadata !DIExpression()), !dbg !5554
  br label %do.body, !dbg !5555

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #10, !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !5547, metadata !DIExpression()), !dbg !5556
  %call = call i64 @__rdmsr(i32 noundef 139) #11, !dbg !5556
  store i64 %call, ptr %__val, align 8, !dbg !5556
  %0 = load i64, ptr %__val, align 8, !dbg !5556
  %conv = trunc i64 %0 to i32, !dbg !5556
  store i32 %conv, ptr %lvl, align 4, !dbg !5556
  %1 = load i64, ptr %__val, align 8, !dbg !5556
  %shr = lshr i64 %1, 32, !dbg !5556
  %conv1 = trunc i64 %shr to i32, !dbg !5556
  store i32 %conv1, ptr %dummy, align 4, !dbg !5556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #10, !dbg !5555
  br label %do.cond, !dbg !5556

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5556

do.end:                                           ; preds = %do.cond
  store ptr @final_levels, ptr %levels, align 8, !dbg !5557
  store i32 0, ptr %i, align 4, !dbg !5558
  br label %for.cond, !dbg !5560

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load ptr, ptr %levels, align 8, !dbg !5561
  %3 = load i32, ptr %i, align 4, !dbg !5563
  %idxprom = zext i32 %3 to i64, !dbg !5561
  %arrayidx = getelementptr i32, ptr %2, i64 %idxprom, !dbg !5561
  %4 = load i32, ptr %arrayidx, align 4, !dbg !5561
  %tobool = icmp ne i32 %4, 0, !dbg !5564
  br i1 %tobool, label %for.body, label %for.end, !dbg !5564

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %lvl, align 4, !dbg !5565
  %6 = load ptr, ptr %levels, align 8, !dbg !5568
  %7 = load i32, ptr %i, align 4, !dbg !5569
  %idxprom2 = zext i32 %7 to i64, !dbg !5568
  %arrayidx3 = getelementptr i32, ptr %6, i64 %idxprom2, !dbg !5568
  %8 = load i32, ptr %arrayidx3, align 4, !dbg !5568
  %cmp = icmp eq i32 %5, %8, !dbg !5570
  br i1 %cmp, label %if.then, label %if.end, !dbg !5571

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !5572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5572

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5573

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !5574
  %inc = add i32 %9, 1, !dbg !5574
  store i32 %inc, ptr %i, align 4, !dbg !5574
  br label %for.cond, !dbg !5575, !llvm.loop !5576

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !5580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5580

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %levels) #10, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #10, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 4, ptr %lvl) #10, !dbg !5581
  %10 = load i1, ptr %retval, align 1, !dbg !5581
  ret i1 %10, !dbg !5581
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5582 dso_local i32 @cmdline_find_option_bool(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #6 align 16 !dbg !5586 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5591, metadata !DIExpression()), !dbg !5594
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #10, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5592, metadata !DIExpression()), !dbg !5595
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #10, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5593, metadata !DIExpression()), !dbg !5595
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5596
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #10, !dbg !5597, !srcloc !5598
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !5597
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !5597
  store i64 %asmresult, ptr %low, align 8, !dbg !5597
  store i64 %asmresult1, ptr %high, align 8, !dbg !5597
  %2 = load i64, ptr %low, align 8, !dbg !5599
  %3 = load i64, ptr %high, align 8, !dbg !5599
  %shl = shl i64 %3, 32, !dbg !5599
  %or = or i64 %2, %shl, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #10, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #10, !dbg !5600
  ret i64 %or, !dbg !5601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @x86_cpuid_family() #3 align 16 !dbg !5602 {
entry:
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #10, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !5606, metadata !DIExpression()), !dbg !5611
  store i32 1, ptr %eax, align 4, !dbg !5611
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #10, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !5607, metadata !DIExpression()), !dbg !5613
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #10, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !5608, metadata !DIExpression()), !dbg !5614
  store i32 0, ptr %ecx, align 4, !dbg !5614
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #10, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !5609, metadata !DIExpression()), !dbg !5615
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !5616
  %0 = load i32, ptr %eax, align 4, !dbg !5617
  %call = call i32 @x86_family(i32 noundef %0) #11, !dbg !5618
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #10, !dbg !5619
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #10, !dbg !5619
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #10, !dbg !5619
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #10, !dbg !5619
  ret i32 %call, !dbg !5620
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5621 dso_local void @reload_ucode_intel() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5622 dso_local void @reload_ucode_amd(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5623 dso_local ptr @init_intel_microcode() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5626 dso_local ptr @init_amd_microcode() #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5627 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @platform_device_register_simple(ptr noundef %name, i32 noundef %id, ptr noundef %res, i32 noundef %num) #3 align 16 !dbg !5631 {
entry:
  %name.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5637, metadata !DIExpression()), !dbg !5641
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5638, metadata !DIExpression()), !dbg !5642
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5639, metadata !DIExpression()), !dbg !5643
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5640, metadata !DIExpression()), !dbg !5644
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5645
  %1 = load i32, ptr %id.addr, align 4, !dbg !5646
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5647
  %3 = load i32, ptr %num.addr, align 4, !dbg !5648
  %call = call ptr @platform_device_register_resndata(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i64 noundef 0) #11, !dbg !5649
  ret ptr %call, !dbg !5650
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5651 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5658
  %1 = ptrtoint ptr %0 to i64, !dbg !5658
  %2 = inttoptr i64 %1 to ptr, !dbg !5658
  %3 = ptrtoint ptr %2 to i64, !dbg !5658
  %cmp = icmp uge i64 %3, -4095, !dbg !5658
  %lnot = xor i1 %cmp, true, !dbg !5658
  %lnot1 = xor i1 %lnot, true, !dbg !5658
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5658
  %conv = sext i32 %lnot.ext to i64, !dbg !5658
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5658
  %tobool = icmp ne i64 %expval, 0, !dbg !5658
  ret i1 %tobool, !dbg !5659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !5660 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5666
  %1 = ptrtoint ptr %0 to i64, !dbg !5667
  ret i64 %1, !dbg !5668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5669 dso_local ptr @bus_get_dev_root(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5672 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local void @put_device(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5676 dso_local void @register_syscore_ops(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #3 align 16 !dbg !5680 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5687, metadata !DIExpression()), !dbg !5691
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5688, metadata !DIExpression()), !dbg !5692
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !5689, metadata !DIExpression()), !dbg !5693
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !5690, metadata !DIExpression()), !dbg !5694
  %0 = load i32, ptr %state.addr, align 4, !dbg !5695
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5696
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !5697
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !5698
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #11, !dbg !5699
  ret i32 %call, !dbg !5700
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mc_cpu_online(i32 noundef %cpu) #5 align 16 !dbg !5701 {
entry:
  %cpu.addr = alloca i32, align 4
  %uci = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %tmp12 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5703, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 8, ptr %uci) #10, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5704, metadata !DIExpression()), !dbg !5713
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5714
  %idx.ext = zext i32 %0 to i64, !dbg !5715
  %add.ptr = getelementptr %struct.ucode_cpu_info, ptr @ucode_cpu_info, i64 %idx.ext, !dbg !5715
  store ptr %add.ptr, ptr %uci, align 8, !dbg !5713
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5705, metadata !DIExpression()), !dbg !5717
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5718
  %call = call ptr @get_cpu_device(i32 noundef %1) #11, !dbg !5719
  store ptr %call, ptr %dev, align 8, !dbg !5717
  %2 = load ptr, ptr %uci, align 8, !dbg !5720
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 24, i1 false), !dbg !5721
  %3 = load ptr, ptr @microcode_ops, align 8, !dbg !5722
  %collect_cpu_info = getelementptr inbounds %struct.microcode_ops, ptr %3, i32 0, i32 3, !dbg !5723
  %4 = load ptr, ptr %collect_cpu_info, align 8, !dbg !5723
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !5724
  %6 = load ptr, ptr %uci, align 8, !dbg !5725
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %6, i32 0, i32 0, !dbg !5726
  %call1 = call i32 %4(i32 noundef %5, ptr noundef %cpu_sig) #11, !dbg !5722
  %7 = load ptr, ptr %uci, align 8, !dbg !5727
  %cpu_sig2 = getelementptr inbounds %struct.ucode_cpu_info, ptr %7, i32 0, i32 0, !dbg !5728
  %rev = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig2, i32 0, i32 2, !dbg !5729
  %8 = load i32, ptr %rev, align 8, !dbg !5729
  br label %do.body, !dbg !5730

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5706, metadata !DIExpression()), !dbg !5731
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5731
  %9 = load ptr, ptr %__vpp_verify, align 8, !dbg !5731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5730
  br label %do.cond, !dbg !5731

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5731

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5732
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5709, metadata !DIExpression()), !dbg !5732
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !5732
  %10 = load i64, ptr %__ptr, align 8, !dbg !5732
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !5732
  %idxprom = zext i32 %11 to i64, !dbg !5732
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5732
  %12 = load i64, ptr %arrayidx, align 8, !dbg !5732
  %add = add i64 %10, %12, !dbg !5732
  %13 = inttoptr i64 %add to ptr, !dbg !5732
  store ptr %13, ptr %tmp3, align 8, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5730
  %14 = load ptr, ptr %tmp3, align 8, !dbg !5732
  store ptr %14, ptr %tmp, align 8, !dbg !5731
  %15 = load ptr, ptr %tmp, align 8, !dbg !5730
  %microcode = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 33, !dbg !5733
  store i32 %8, ptr %microcode, align 8, !dbg !5734
  %16 = load i32, ptr %cpu.addr, align 4, !dbg !5735
  %tobool = icmp ne i32 %16, 0, !dbg !5735
  br i1 %tobool, label %if.end, label %if.then, !dbg !5737

if.then:                                          ; preds = %do.end
  %17 = load ptr, ptr %uci, align 8, !dbg !5738
  %cpu_sig4 = getelementptr inbounds %struct.ucode_cpu_info, ptr %17, i32 0, i32 0, !dbg !5739
  %rev5 = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig4, i32 0, i32 2, !dbg !5740
  %18 = load i32, ptr %rev5, align 8, !dbg !5740
  store i32 %18, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 33), align 8, !dbg !5741
  br label %if.end, !dbg !5742

if.end:                                           ; preds = %if.then, %do.end
  %19 = load ptr, ptr %dev, align 8, !dbg !5743
  %kobj = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 0, !dbg !5745
  %call6 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @mc_attr_group) #11, !dbg !5746
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5746
  br i1 %tobool7, label %if.then8, label %if.end14, !dbg !5747

if.then8:                                         ; preds = %if.end
  br label %do.body9, !dbg !5748

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !5750

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5750

do.end11:                                         ; preds = %do.cond10
  %20 = load i32, ptr %cpu.addr, align 4, !dbg !5748
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %20) #12, !dbg !5748
  store i32 %call13, ptr %tmp12, align 4, !dbg !5750
  %21 = load i32, ptr %tmp12, align 4, !dbg !5748
  br label %if.end14, !dbg !5752

if.end14:                                         ; preds = %do.end11, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5753
  call void @llvm.lifetime.end.p0(i64 8, ptr %uci) #10, !dbg !5753
  ret i32 0, !dbg !5754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mc_cpu_down_prep(i32 noundef %cpu) #5 align 16 !dbg !5755 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5757, metadata !DIExpression()), !dbg !5759
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5758, metadata !DIExpression()), !dbg !5761
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5762
  %call = call ptr @get_cpu_device(i32 noundef %0) #11, !dbg !5763
  store ptr %call, ptr %dev, align 8, !dbg !5761
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5764
  call void @microcode_fini_cpu(i32 noundef %1) #11, !dbg !5765
  %2 = load ptr, ptr %dev, align 8, !dbg !5766
  %kobj = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 0, !dbg !5767
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef @mc_attr_group) #11, !dbg !5768
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5769
  ret i32 0, !dbg !5770
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5771 dso_local void @platform_device_unregister(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @platform_device_register_resndata(ptr noundef %parent, ptr noundef %name, i32 noundef %id, ptr noundef %res, i32 noundef %num, ptr noundef %data, i64 noundef %size) #3 align 16 !dbg !5774 {
entry:
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %pdevinfo = alloca %struct.platform_device_info, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5778, metadata !DIExpression()), !dbg !5802
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5779, metadata !DIExpression()), !dbg !5803
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5780, metadata !DIExpression()), !dbg !5804
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5781, metadata !DIExpression()), !dbg !5805
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5782, metadata !DIExpression()), !dbg !5806
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5783, metadata !DIExpression()), !dbg !5807
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5784, metadata !DIExpression()), !dbg !5808
  call void @llvm.lifetime.start.p0(i64 88, ptr %pdevinfo) #10, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %pdevinfo, metadata !5785, metadata !DIExpression()), !dbg !5810
  %parent1 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 0, !dbg !5811
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5812
  store ptr %0, ptr %parent1, align 8, !dbg !5811
  %fwnode = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1, !dbg !5811
  store ptr null, ptr %fwnode, align 8, !dbg !5811
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 2, !dbg !5811
  store i8 0, ptr %of_node_reused, align 8, !dbg !5811
  %name2 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3, !dbg !5811
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5813
  store ptr %1, ptr %name2, align 8, !dbg !5811
  %id3 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4, !dbg !5811
  %2 = load i32, ptr %id.addr, align 4, !dbg !5814
  store i32 %2, ptr %id3, align 8, !dbg !5811
  %res4 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 5, !dbg !5811
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5815
  store ptr %3, ptr %res4, align 8, !dbg !5811
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 6, !dbg !5811
  %4 = load i32, ptr %num.addr, align 4, !dbg !5816
  store i32 %4, ptr %num_res, align 8, !dbg !5811
  %data5 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 7, !dbg !5811
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5817
  store ptr %5, ptr %data5, align 8, !dbg !5811
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 8, !dbg !5811
  %6 = load i64, ptr %size.addr, align 8, !dbg !5818
  store i64 %6, ptr %size_data, align 8, !dbg !5811
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9, !dbg !5811
  store i64 0, ptr %dma_mask, align 8, !dbg !5811
  %properties = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 10, !dbg !5811
  store ptr null, ptr %properties, align 8, !dbg !5811
  %call = call ptr @platform_device_register_full(ptr noundef %pdevinfo) #11, !dbg !5819
  call void @llvm.lifetime.end.p0(i64 88, ptr %pdevinfo) #10, !dbg !5820
  ret ptr %call, !dbg !5821
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5822 dso_local ptr @platform_device_register_full(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5827 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5830 dso_local ptr @get_cpu_device(i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @version_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #5 align 16 !dbg !5834 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %uci = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5836, metadata !DIExpression()), !dbg !5840
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5837, metadata !DIExpression()), !dbg !5841
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5838, metadata !DIExpression()), !dbg !5842
  call void @llvm.lifetime.start.p0(i64 8, ptr %uci) #10, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5839, metadata !DIExpression()), !dbg !5844
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5845
  %id = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27, !dbg !5846
  %1 = load i32, ptr %id, align 8, !dbg !5846
  %idx.ext = zext i32 %1 to i64, !dbg !5847
  %add.ptr = getelementptr %struct.ucode_cpu_info, ptr @ucode_cpu_info, i64 %idx.ext, !dbg !5847
  store ptr %add.ptr, ptr %uci, align 8, !dbg !5844
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5848
  %3 = load ptr, ptr %uci, align 8, !dbg !5849
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %3, i32 0, i32 0, !dbg !5850
  %rev = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig, i32 0, i32 2, !dbg !5851
  %4 = load i32, ptr %rev, align 8, !dbg !5851
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.13, i32 noundef %4) #11, !dbg !5852
  %conv = sext i32 %call to i64, !dbg !5852
  call void @llvm.lifetime.end.p0(i64 8, ptr %uci) #10, !dbg !5853
  ret i64 %conv, !dbg !5854
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5855 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @processor_flags_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #5 align 16 !dbg !5859 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %uci = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5861, metadata !DIExpression()), !dbg !5865
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5862, metadata !DIExpression()), !dbg !5866
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5863, metadata !DIExpression()), !dbg !5867
  call void @llvm.lifetime.start.p0(i64 8, ptr %uci) #10, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5864, metadata !DIExpression()), !dbg !5869
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5870
  %id = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27, !dbg !5871
  %1 = load i32, ptr %id, align 8, !dbg !5871
  %idx.ext = zext i32 %1 to i64, !dbg !5872
  %add.ptr = getelementptr %struct.ucode_cpu_info, ptr @ucode_cpu_info, i64 %idx.ext, !dbg !5872
  store ptr %add.ptr, ptr %uci, align 8, !dbg !5869
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5873
  %3 = load ptr, ptr %uci, align 8, !dbg !5874
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %3, i32 0, i32 0, !dbg !5875
  %pf = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig, i32 0, i32 1, !dbg !5876
  %4 = load i32, ptr %pf, align 4, !dbg !5876
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.13, i32 noundef %4) #11, !dbg !5877
  %conv = sext i32 %call to i64, !dbg !5877
  call void @llvm.lifetime.end.p0(i64 8, ptr %uci) #10, !dbg !5878
  ret i64 %conv, !dbg !5879
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @microcode_fini_cpu(i32 noundef %cpu) #5 align 16 !dbg !5880 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  %0 = load ptr, ptr @microcode_ops, align 8, !dbg !5884
  %microcode_fini_cpu = getelementptr inbounds %struct.microcode_ops, ptr %0, i32 0, i32 1, !dbg !5886
  %1 = load ptr, ptr %microcode_fini_cpu, align 8, !dbg !5886
  %tobool = icmp ne ptr %1, null, !dbg !5884
  br i1 %tobool, label %if.then, label %if.end, !dbg !5887

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @microcode_ops, align 8, !dbg !5888
  %microcode_fini_cpu1 = getelementptr inbounds %struct.microcode_ops, ptr %2, i32 0, i32 1, !dbg !5889
  %3 = load ptr, ptr %microcode_fini_cpu1, align 8, !dbg !5889
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !5890
  call void %3(i32 noundef %4) #11, !dbg !5888
  br label %if.end, !dbg !5888

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5891
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5892 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113}
!llvm.ident = !{!5114}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dis_ucode_ldr", scope: !2, file: !3, line: 47, type: !1705, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/microcode/.core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/microcode/microcode\22 -D KBUILD_BASENAME=\22core\22 -D KBUILD_MODNAME=\22microcode\22 -D __KBUILD_MODNAME=kmod_microcode -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/microcode/core.ll arch/x86/kernel/cpu/microcode/core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !351, globals: !4417, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/microcode/core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "59225338d37dce12d27e2e8f6e54d1e7")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !92, !103, !109, !116, !124, !132, !141, !146, !151, !157}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucode_state", file: !93, line: 13, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "arch/x86/kernel/cpu/microcode/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06054e61546338d51fa3eb8b2ecf727f")
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102}
!95 = !DIEnumerator(name: "UCODE_OK", value: 0)
!96 = !DIEnumerator(name: "UCODE_NEW", value: 1)
!97 = !DIEnumerator(name: "UCODE_NEW_SAFE", value: 2)
!98 = !DIEnumerator(name: "UCODE_UPDATED", value: 3)
!99 = !DIEnumerator(name: "UCODE_NFOUND", value: 4)
!100 = !DIEnumerator(name: "UCODE_ERROR", value: 5)
!101 = !DIEnumerator(name: "UCODE_TIMEOUT", value: 6)
!102 = !DIEnumerator(name: "UCODE_OFFLINE", value: 7)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !104, line: 45, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!107 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!108 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !110, line: 487, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!113 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!114 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!115 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !117, line: 620, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!120 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!121 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!122 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!123 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !117, line: 597, baseType: !125, size: 32, elements: !126)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!128 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!129 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!130 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!131 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !110, line: 547, baseType: !7, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140}
!134 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!135 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!136 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!137 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!138 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!139 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!140 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !110, line: 564, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !110, line: 577, baseType: !7, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !110, line: 503, baseType: !7, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!155 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!156 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !158, line: 57, baseType: !125, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!160 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!161 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!162 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!163 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!164 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!165 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!166 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!167 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!168 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!169 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!170 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!171 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!172 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!173 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!174 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!175 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!176 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!177 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!178 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!179 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!180 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!181 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!182 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!183 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!184 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!185 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!186 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!187 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!188 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!189 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!190 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!191 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!192 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!193 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!194 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!195 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!196 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!197 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!198 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!199 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!200 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!201 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!202 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!203 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!204 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!205 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!206 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!207 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!208 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!209 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!210 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!211 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!212 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!213 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!214 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!215 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!216 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!217 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!218 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!219 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!220 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!221 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!222 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!223 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!224 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!225 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!226 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!227 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!228 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!229 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!230 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!231 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!232 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!233 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!234 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!235 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!236 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!237 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!238 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!239 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!240 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!241 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!242 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!243 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!244 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!245 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!246 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!247 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!248 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!249 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!250 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!251 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!252 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!253 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!254 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!255 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!256 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!257 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!258 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!259 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!260 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!261 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!262 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!263 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!264 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!265 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!266 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!267 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!268 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!269 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!270 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!271 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!272 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!273 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!274 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!275 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!276 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!277 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!278 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!279 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!280 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!281 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!282 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!283 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!284 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!285 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!286 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!287 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!288 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!289 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!290 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!291 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!292 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!293 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!294 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!295 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!296 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!297 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!298 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!299 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!300 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!301 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!302 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!303 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!304 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!305 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!306 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!307 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!308 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!309 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!310 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!311 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!312 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!313 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!314 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!315 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!316 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!317 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!318 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!319 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!320 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!321 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!322 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!323 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!324 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!325 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!326 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!327 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!328 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!329 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!330 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!331 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!332 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!333 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!334 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!335 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!336 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!337 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!338 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!339 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!340 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!341 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!342 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!343 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!344 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!345 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!346 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!347 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!348 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!349 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!350 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!351 = !{!352, !507, !529, !805, !125, !607, !493, !4357}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !354)
!354 = !{!355, !356, !363, !368, !4033, !4059, !4060, !4061, !4062, !4066, !4069, !4070, !4071, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4138, !4142, !4160, !4177, !4178, !4179, !4180, !4189, !4212, !4213, !4216, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4230, !4231, !4317, !4325, !4326, !4327, !4329, !4333, !4334, !4338, !4339, !4340, !4341, !4343, !4344, !4345, !4352, !4353, !4354, !4356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !6, line: 403, baseType: !5, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !353, file: !6, line: 406, baseType: !357, size: 128, offset: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !358, line: 190, size: 128, elements: !359)
!358 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!359 = !{!360, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !358, line: 191, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !357, file: !358, line: 191, baseType: !361, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !6, line: 409, baseType: !364, size: 448, offset: 192)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 448, elements: !366)
!365 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!366 = !{!367}
!367 = !DISubrange(count: 56)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !353, file: !6, line: 417, baseType: !369, size: 768, offset: 640)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !370)
!370 = !{!371, !4027, !4028, !4029, !4032}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !369, file: !6, line: 46, baseType: !372, size: 512)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !373, line: 64, size: 512, elements: !374)
!373 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!374 = !{!375, !378, !379, !381, !470, !3914, !4017, !4022, !4023, !4024, !4025, !4026}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !373, line: 65, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !372, file: !373, line: 66, baseType: !357, size: 128, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !372, file: !373, line: 67, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !372, file: !373, line: 68, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !373, line: 168, size: 768, elements: !384)
!384 = !{!385, !386, !429, !430}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !383, file: !373, line: 169, baseType: !357, size: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !383, file: !373, line: 170, baseType: !387, size: 32, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !388, line: 29, baseType: !389)
!388 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !388, line: 17, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !388, line: 18, baseType: !392, size: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !388, line: 18, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !392, file: !388, line: 19, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !396, line: 14, size: 32, elements: !397)
!396 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !395, file: !396, line: 15, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !400, line: 44, baseType: !401)
!400 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !400, line: 14, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !400, line: 15, baseType: !404, size: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !400, line: 15, size: 32, elements: !405)
!405 = !{!406, !411, !421}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !404, file: !400, line: 16, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !358, line: 174, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 172, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !408, file: !358, line: 173, baseType: !125, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !400, line: 24, baseType: !412, size: 16)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !400, line: 24, size: 16, elements: !413)
!413 = !{!414, !420}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !412, file: !400, line: 25, baseType: !415, size: 8)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !416, line: 17, baseType: !417)
!416 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !418, line: 21, baseType: !419)
!418 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!419 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !412, file: !400, line: 26, baseType: !415, size: 8, offset: 8)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !400, line: 28, baseType: !422, size: 32)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !400, line: 28, size: 32, elements: !423)
!423 = !{!424, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !422, file: !400, line: 29, baseType: !425, size: 16)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !416, line: 19, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !418, line: 24, baseType: !427)
!427 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !422, file: !400, line: 30, baseType: !425, size: 16, offset: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !383, file: !373, line: 171, baseType: !372, size: 512, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !383, file: !373, line: 172, baseType: !431, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !373, line: 133, size: 192, elements: !434)
!434 = !{!435, !442, !447}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !433, file: !373, line: 134, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!125, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !373, line: 135, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!376, !440}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !433, file: !373, line: 136, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!125, !440, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !373, line: 125, size: 20736, elements: !454)
!454 = !{!455, !460, !464, !465, !469}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !453, file: !373, line: 126, baseType: !456, size: 192)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 192, elements: !458)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!458 = !{!459}
!459 = !DISubrange(count: 3)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !453, file: !373, line: 127, baseType: !461, size: 4096, offset: 192)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 4096, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !453, file: !373, line: 128, baseType: !125, size: 32, offset: 4288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !453, file: !373, line: 129, baseType: !466, size: 16384, offset: 4320)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 16384, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 2048)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !453, file: !373, line: 130, baseType: !125, size: 32, offset: 20704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !372, file: !373, line: 69, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !373, line: 116, size: 384, elements: !474)
!474 = !{!475, !479, !508, !3876, !3904, !3908}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !473, file: !373, line: 117, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !380}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !473, file: !373, line: 118, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !483, line: 254, size: 128, elements: !484)
!483 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!484 = !{!485, !500}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !482, file: !483, line: 255, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !380, !494, !457}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !358, line: 66, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !491, line: 73, baseType: !492)
!491 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !491, line: 15, baseType: !493)
!493 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !483, line: 30, size: 128, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !495, file: !483, line: 31, baseType: !376, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !495, file: !483, line: 32, baseType: !499, size: 16, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !358, line: 24, baseType: !427)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !482, file: !483, line: 256, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!489, !380, !494, !376, !504}
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !358, line: 61, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !491, line: 72, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !491, line: 16, baseType: !507)
!507 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !473, file: !373, line: 119, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !483, line: 84, size: 320, elements: !513)
!513 = !{!514, !515, !519, !3872, !3874}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !512, file: !483, line: 85, baseType: !376, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !512, file: !483, line: 86, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!499, !380, !494, !125}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !512, file: !483, line: 88, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!499, !380, !523, !125}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !483, line: 175, size: 512, elements: !525)
!525 = !{!526, !527, !528, !530, !3863, !3867, !3868}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !524, file: !483, line: 176, baseType: !495, size: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !524, file: !483, line: 177, baseType: !504, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !524, file: !483, line: 178, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !524, file: !483, line: 179, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !536)
!536 = !{!537, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3857, !3858, !3859, !3860, !3861, !3862}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !535, file: !14, line: 473, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !540)
!540 = !{!541, !542, !543, !551, !552, !559, !560, !563, !564, !3636, !3637, !3638, !3639, !3640, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3680, !3683, !3684, !3685, !3694, !3695, !3696, !3697}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !539, file: !14, line: 642, baseType: !499, size: 16)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !539, file: !14, line: 643, baseType: !427, size: 16, offset: 16)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !539, file: !14, line: 644, baseType: !544, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !545, line: 23, baseType: !546)
!545 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 21, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !545, line: 22, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !358, line: 37, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !491, line: 49, baseType: !7)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !539, file: !14, line: 645, baseType: !357, size: 128, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !539, file: !14, line: 646, baseType: !553, size: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !545, line: 28, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 26, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !554, file: !545, line: 27, baseType: !557, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !358, line: 38, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !491, line: 50, baseType: !7)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !539, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !539, file: !14, line: 650, baseType: !561, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !539, file: !14, line: 651, baseType: !561, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !539, file: !14, line: 654, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !568)
!568 = !{!569, !3467, !3480, !3484, !3488, !3492, !3496, !3500, !3504, !3508, !3512, !3513, !3517, !3521, !3558, !3587, !3591, !3597, !3601, !3605, !3609, !3613, !3617, !3623, !3627}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !567, file: !14, line: 1967, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!573, !538, !573, !7}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !575, line: 82, size: 1536, elements: !576)
!575 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!576 = !{!577, !578, !588, !596, !597, !617, !618, !622, !635, !3450, !3451, !3452, !3453, !3459, !3460, !3461}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !574, file: !575, line: 84, baseType: !7, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !574, file: !575, line: 85, baseType: !579, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !580, line: 275, baseType: !581)
!580 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !580, line: 275, size: 32, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !581, file: !580, line: 275, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !580, line: 69, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !580, line: 64, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !585, file: !580, line: 65, baseType: !7, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !574, file: !575, line: 86, baseType: !589, size: 128, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !590, line: 38, size: 128, elements: !591)
!590 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!591 = !{!592, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !590, line: 39, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !589, file: !590, line: 39, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !574, file: !575, line: 87, baseType: !573, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !574, file: !575, line: 88, baseType: !598, size: 128, offset: 256)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !575, line: 49, size: 128, elements: !599)
!599 = !{!600, !614}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !575, line: 50, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !575, line: 50, size: 64, elements: !602)
!602 = !{!603, !610}
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !575, line: 51, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !575, line: 51, size: 64, elements: !605)
!605 = !{!606, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !604, file: !575, line: 52, baseType: !607, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !416, line: 21, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !418, line: 27, baseType: !7)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !604, file: !575, line: 52, baseType: !607, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !601, file: !575, line: 54, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !416, line: 23, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !418, line: 31, baseType: !613)
!613 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !575, line: 56, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !574, file: !575, line: 89, baseType: !538, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !574, file: !575, line: 91, baseType: !619, size: 256, offset: 448)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 256, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !574, file: !575, line: 94, baseType: !623, size: 64, offset: 704)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !624, line: 25, size: 64, elements: !625)
!624 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !624, line: 26, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !624, line: 26, size: 64, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !627, file: !624, line: 28, baseType: !612, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !624, line: 30, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !624, line: 30, size: 64, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !631, file: !624, line: 31, baseType: !387, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !631, file: !624, line: 32, baseType: !125, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !574, file: !575, line: 95, baseType: !636, size: 64, offset: 768)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !575, line: 128, size: 1024, align: 512, elements: !639)
!639 = !{!640, !644, !645, !652, !658, !662, !666, !670, !671, !675, !679, !3440, !3444}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !638, file: !575, line: 129, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!125, !573, !7}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !638, file: !575, line: 130, baseType: !641, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !638, file: !575, line: 131, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!125, !649, !651}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !638, file: !575, line: 132, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!125, !649, !7, !376, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !638, file: !575, line: 134, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!125, !649}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !638, file: !575, line: 135, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!125, !573}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !638, file: !575, line: 136, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !573}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !638, file: !575, line: 137, baseType: !667, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !638, file: !575, line: 138, baseType: !672, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !573, !538}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !638, file: !575, line: 139, baseType: !676, size: 64, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!457, !573, !457, !125}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !638, file: !575, line: 140, baseType: !680, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!683, !3439}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !685, line: 70, size: 256, elements: !686)
!685 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!686 = !{!687, !688, !3435, !3436}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !684, file: !685, line: 71, baseType: !573, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !684, file: !685, line: 72, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !691)
!691 = !{!692, !693, !696, !697, !698, !702, !751, !912, !952, !1042, !1046, !1047, !1048, !1049, !1050, !1059, !1060, !1061, !1062, !1067, !1071, !1072, !1075, !1078, !1081, !1084, !1085, !1086, !1127, !3366, !3367, !3368, !3369, !3370, !3371, !3374, !3376, !3383, !3384, !3385, !3386, !3387, !3402, !3403, !3404, !3405, !3406, !3409, !3410, !3411, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !690, file: !14, line: 1191, baseType: !357, size: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !690, file: !14, line: 1192, baseType: !694, size: 32, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !358, line: 21, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !358, line: 18, baseType: !607)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !690, file: !14, line: 1193, baseType: !419, size: 8, offset: 160)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !690, file: !14, line: 1194, baseType: !507, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !690, file: !14, line: 1195, baseType: !699, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !358, line: 52, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !491, line: 88, baseType: !701)
!701 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !690, file: !14, line: 1196, baseType: !703, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !705)
!705 = !{!706, !707, !708, !715, !719, !723, !727, !728, !729, !739, !743, !744, !745, !747, !748, !749, !750}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !14, line: 2367, baseType: !376, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !704, file: !14, line: 2368, baseType: !125, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !704, file: !14, line: 2376, baseType: !709, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!125, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !714, line: 32, flags: DIFlagFwdDecl)
!714 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!715 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !704, file: !14, line: 2377, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !704, file: !14, line: 2378, baseType: !720, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!573, !703, !125, !376, !529}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !704, file: !14, line: 2380, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !689}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !704, file: !14, line: 2381, baseType: !352, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !14, line: 2382, baseType: !703, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !704, file: !14, line: 2383, baseType: !730, size: 64, offset: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !358, line: 194, size: 64, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !730, file: !358, line: 195, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !358, line: 198, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !358, line: 199, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !734, file: !358, line: 199, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !704, file: !14, line: 2385, baseType: !740, offset: 576)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !741, line: 206, elements: !742)
!741 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!742 = !{}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !704, file: !14, line: 2386, baseType: !740, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !704, file: !14, line: 2387, baseType: !740, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !704, file: !14, line: 2388, baseType: !746, offset: 576)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, elements: !458)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !704, file: !14, line: 2390, baseType: !740, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !704, file: !14, line: 2391, baseType: !740, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !704, file: !14, line: 2392, baseType: !740, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !704, file: !14, line: 2393, baseType: !740, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !690, file: !14, line: 1197, baseType: !752, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !755)
!755 = !{!756, !760, !764, !765, !769, !775, !779, !780, !781, !785, !789, !793, !794, !795, !801, !806, !807, !814, !815, !816, !817, !821, !825, !894, !910, !911}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !754, file: !14, line: 2058, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!538, !689}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !754, file: !14, line: 2059, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !538}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !754, file: !14, line: 2060, baseType: !761, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !754, file: !14, line: 2062, baseType: !766, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !538, !125}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !754, file: !14, line: 2063, baseType: !770, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!125, !538, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !754, file: !14, line: 2064, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!125, !538}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !754, file: !14, line: 2065, baseType: !761, size: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !754, file: !14, line: 2066, baseType: !724, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !754, file: !14, line: 2067, baseType: !782, size: 64, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!125, !689, !125}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !754, file: !14, line: 2068, baseType: !786, size: 64, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!125, !689, !13}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !754, file: !14, line: 2069, baseType: !790, size: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!125, !689}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !754, file: !14, line: 2070, baseType: !786, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !754, file: !14, line: 2071, baseType: !790, size: 64, offset: 768)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !754, file: !14, line: 2072, baseType: !796, size: 64, offset: 832)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!125, !573, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !754, file: !14, line: 2073, baseType: !802, size: 64, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!125, !689, !805, !457}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !754, file: !14, line: 2074, baseType: !724, size: 64, offset: 960)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !754, file: !14, line: 2076, baseType: !808, size: 64, offset: 1024)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!125, !811, !573}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !813, line: 66, flags: DIFlagFwdDecl)
!813 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!814 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !754, file: !14, line: 2077, baseType: !808, size: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !754, file: !14, line: 2078, baseType: !808, size: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !754, file: !14, line: 2079, baseType: !808, size: 64, offset: 1216)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !754, file: !14, line: 2081, baseType: !818, size: 64, offset: 1280)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!489, !689, !125, !457, !504, !699}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !754, file: !14, line: 2082, baseType: !822, size: 64, offset: 1344)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!489, !689, !125, !376, !504, !699}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !754, file: !14, line: 2083, baseType: !826, size: 64, offset: 1408)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!829, !538}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !858, !859, !860, !861, !877, !878, !879}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !831, file: !19, line: 297, baseType: !734, size: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !831, file: !19, line: 298, baseType: !357, size: 128, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !831, file: !19, line: 299, baseType: !357, size: 128, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !831, file: !19, line: 300, baseType: !357, size: 128, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !831, file: !19, line: 301, baseType: !838, size: 256, offset: 512)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !839, line: 66, size: 256, elements: !840)
!839 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!840 = !{!841, !850, !852, !857}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !838, file: !839, line: 67, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !843, line: 13, baseType: !844)
!843 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !358, line: 181, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 179, size: 64, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !845, file: !358, line: 180, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !416, line: 22, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !418, line: 30, baseType: !701)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !838, file: !839, line: 68, baseType: !851, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !396, line: 23, baseType: !395)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !838, file: !839, line: 70, baseType: !853, size: 32, offset: 96)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !854, line: 15, size: 32, elements: !855)
!854 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !853, file: !854, line: 20, baseType: !407, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !838, file: !839, line: 72, baseType: !357, size: 128, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !831, file: !19, line: 302, baseType: !387, size: 32, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !831, file: !19, line: 303, baseType: !407, size: 32, offset: 800)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !831, file: !19, line: 304, baseType: !689, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !831, file: !19, line: 305, baseType: !862, size: 64, offset: 896)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !863)
!863 = !{!864, !876}
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !19, line: 69, baseType: !865, size: 32)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !19, line: 69, size: 32, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !865, file: !19, line: 70, baseType: !544, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !865, file: !19, line: 71, baseType: !553, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !865, file: !19, line: 72, baseType: !870, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !871, line: 24, baseType: !872)
!871 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !871, line: 22, size: 32, elements: !873)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !872, file: !871, line: 23, baseType: !875, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !871, line: 20, baseType: !550)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !831, file: !19, line: 306, baseType: !699, size: 64, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !831, file: !19, line: 307, baseType: !507, size: 64, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !831, file: !19, line: 308, baseType: !880, size: 576, offset: 1088)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !881)
!881 = !{!882, !884, !885, !886, !887, !888, !889, !890, !893}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !880, file: !19, line: 206, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !701)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !880, file: !19, line: 207, baseType: !883, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !880, file: !19, line: 208, baseType: !883, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !880, file: !19, line: 209, baseType: !883, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !880, file: !19, line: 210, baseType: !883, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !880, file: !19, line: 211, baseType: !883, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !880, file: !19, line: 212, baseType: !883, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !880, file: !19, line: 213, baseType: !891, size: 64, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !892, line: 8, baseType: !849)
!892 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !880, file: !19, line: 214, baseType: !891, size: 64, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !754, file: !14, line: 2085, baseType: !895, size: 64, offset: 1472)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!493, !689, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !900, line: 15, size: 256, elements: !901)
!900 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!901 = !{!902, !904, !905, !906, !907}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !899, file: !900, line: 16, baseType: !903, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !358, line: 154, baseType: !7)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !899, file: !900, line: 19, baseType: !125, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !899, file: !900, line: 26, baseType: !507, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !899, file: !900, line: 33, baseType: !507, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !899, file: !900, line: 36, baseType: !908, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !754, file: !14, line: 2087, baseType: !895, size: 64, offset: 1536)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !754, file: !14, line: 2089, baseType: !724, size: 64, offset: 1600)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !690, file: !14, line: 1198, baseType: !913, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !916)
!916 = !{!917, !921, !925, !929, !930, !931, !932, !933, !938, !943, !947}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !915, file: !19, line: 325, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!125, !830}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !915, file: !19, line: 326, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!830, !689, !125}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !915, file: !19, line: 327, baseType: !926, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !830}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !915, file: !19, line: 328, baseType: !918, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !915, file: !19, line: 329, baseType: !918, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !915, file: !19, line: 330, baseType: !918, size: 64, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !915, file: !19, line: 331, baseType: !782, size: 64, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !915, file: !19, line: 334, baseType: !934, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!937, !538}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !915, file: !19, line: 335, baseType: !939, size: 64, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!125, !538, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !915, file: !19, line: 337, baseType: !944, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!125, !538, !937}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !915, file: !19, line: 339, baseType: !948, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!125, !689, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !690, file: !14, line: 1199, baseType: !953, size: 64, offset: 512)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !956)
!956 = !{!957, !968, !969, !973, !974, !975, !990, !1013, !1017, !1018, !1041}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !955, file: !19, line: 431, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!125, !689, !125, !125, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !964, line: 8, size: 128, elements: !965)
!964 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !963, file: !964, line: 9, baseType: !683, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !963, file: !964, line: 10, baseType: !573, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !955, file: !19, line: 432, baseType: !782, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !955, file: !19, line: 433, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!125, !689, !7}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !955, file: !19, line: 434, baseType: !970, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !955, file: !19, line: 435, baseType: !782, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !955, file: !19, line: 436, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!125, !689, !125, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !980, file: !19, line: 418, baseType: !125, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !980, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !980, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !980, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !980, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !980, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !980, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !980, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !955, file: !19, line: 437, baseType: !991, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!125, !689, !862, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !995, file: !19, line: 346, baseType: !125, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !995, file: !19, line: 347, baseType: !611, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !995, file: !19, line: 348, baseType: !611, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !995, file: !19, line: 349, baseType: !611, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !995, file: !19, line: 350, baseType: !611, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !995, file: !19, line: 351, baseType: !611, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !995, file: !19, line: 352, baseType: !611, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !995, file: !19, line: 353, baseType: !848, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !995, file: !19, line: 355, baseType: !848, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !995, file: !19, line: 356, baseType: !125, size: 32, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !995, file: !19, line: 357, baseType: !125, size: 32, offset: 608)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !995, file: !19, line: 358, baseType: !611, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !995, file: !19, line: 359, baseType: !611, size: 64, offset: 704)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !995, file: !19, line: 360, baseType: !611, size: 64, offset: 768)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !995, file: !19, line: 361, baseType: !848, size: 64, offset: 832)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !995, file: !19, line: 362, baseType: !125, size: 32, offset: 896)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !955, file: !19, line: 438, baseType: !1014, size: 64, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!125, !689, !951, !994}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !955, file: !19, line: 440, baseType: !991, size: 64, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !955, file: !19, line: 441, baseType: !1019, size: 64, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!125, !689, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1023, file: !19, line: 412, baseType: !7, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1023, file: !19, line: 413, baseType: !1027, size: 1344, offset: 64)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 1344, elements: !458)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1040}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !19, line: 398, baseType: !7, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1028, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1028, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1028, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1028, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1028, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1028, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1028, file: !19, line: 406, baseType: !613, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1028, file: !19, line: 407, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !358, line: 132, baseType: !611)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1028, file: !19, line: 408, baseType: !1039, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !955, file: !19, line: 442, baseType: !970, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !690, file: !14, line: 1200, baseType: !1043, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !690, file: !14, line: 1201, baseType: !507, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !690, file: !14, line: 1202, baseType: !507, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !690, file: !14, line: 1203, baseType: !507, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !690, file: !14, line: 1204, baseType: !573, size: 64, offset: 832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !690, file: !14, line: 1205, baseType: !1051, size: 320, offset: 896)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1052, line: 48, size: 320, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1053 = !{!1054, !1055, !1056, !1057, !1058}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1051, file: !1052, line: 49, baseType: !842, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1051, file: !1052, line: 55, baseType: !842, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1051, file: !1052, line: 57, baseType: !853, size: 32, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1051, file: !1052, line: 59, baseType: !851, size: 32, offset: 160)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1051, file: !1052, line: 60, baseType: !357, size: 128, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !690, file: !14, line: 1206, baseType: !125, size: 32, offset: 1216)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !690, file: !14, line: 1207, baseType: !407, size: 32, offset: 1248)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !690, file: !14, line: 1209, baseType: !529, size: 64, offset: 1280)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !690, file: !14, line: 1211, baseType: !1063, size: 64, offset: 1344)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !690, file: !14, line: 1223, baseType: !1068, size: 64, offset: 1408)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !590, line: 34, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1068, file: !590, line: 35, baseType: !593, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !690, file: !14, line: 1224, baseType: !357, size: 128, offset: 1472)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !690, file: !14, line: 1225, baseType: !1073, size: 64, offset: 1600)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !690, file: !14, line: 1226, baseType: !1076, size: 64, offset: 1664)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !690, file: !14, line: 1227, baseType: !1079, size: 64, offset: 1728)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !690, file: !14, line: 1228, baseType: !1082, size: 64, offset: 1792)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !690, file: !14, line: 1229, baseType: !734, size: 128, offset: 1856)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !690, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !690, file: !14, line: 1231, baseType: !1087, size: 2496, offset: 2048)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1093, !1125}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !19, line: 522, baseType: !7, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1087, file: !19, line: 523, baseType: !1051, size: 320, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1087, file: !19, line: 524, baseType: !1092, size: 192, offset: 384)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 192, elements: !458)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1087, file: !19, line: 525, baseType: !1094, size: 1728, offset: 576)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1095, size: 1728, elements: !458)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1096)
!1096 = !{!1097, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1095, file: !19, line: 223, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1100)
!1100 = !{!1101, !1102, !1115, !1116}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1099, file: !19, line: 446, baseType: !125, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1099, file: !19, line: 447, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1105, file: !19, line: 313, baseType: !782, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1105, file: !19, line: 314, baseType: !782, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1105, file: !19, line: 315, baseType: !782, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1105, file: !19, line: 316, baseType: !782, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1105, file: !19, line: 317, baseType: !918, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1105, file: !19, line: 318, baseType: !918, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1105, file: !19, line: 319, baseType: !918, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1105, file: !19, line: 320, baseType: !948, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1099, file: !19, line: 448, baseType: !352, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1099, file: !19, line: 449, baseType: !1098, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1095, file: !19, line: 224, baseType: !125, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1095, file: !19, line: 226, baseType: !357, size: 128, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1095, file: !19, line: 227, baseType: !507, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1095, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1095, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1095, file: !19, line: 230, baseType: !883, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1095, file: !19, line: 231, baseType: !883, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1095, file: !19, line: 232, baseType: !529, size: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1087, file: !19, line: 526, baseType: !1126, size: 192, offset: 2304)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 192, elements: !458)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !690, file: !14, line: 1233, baseType: !1128, size: 2368, offset: 4544)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1129)
!1129 = !{!1130, !1131, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1128, file: !14, line: 1185, baseType: !427, size: 16)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1128, file: !14, line: 1186, baseType: !427, size: 16, offset: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1128, file: !14, line: 1187, baseType: !1133, size: 2304, offset: 64)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 2304, elements: !458)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1135, line: 12, size: 768, elements: !1136)
!1135 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1136 = !{!1137, !1159, !1161, !3364, !3365}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1134, file: !1135, line: 13, baseType: !1138, size: 384)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1139, line: 17, size: 384, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1140 = !{!1141, !1142, !1143, !1150}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1138, file: !1139, line: 18, baseType: !125, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1138, file: !1139, line: 19, baseType: !125, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1138, file: !1139, line: 20, baseType: !1144, size: 192, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1145, line: 41, baseType: !1146)
!1145 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1145, line: 37, size: 192, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !1145, line: 38, baseType: !387, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1146, file: !1145, line: 39, baseType: !357, size: 128, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1138, file: !1139, line: 22, baseType: !1151, size: 128, align: 64, offset: 256)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !358, line: 232, size: 128, align: 64, elements: !1152)
!1152 = !{!1153, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !358, line: 233, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1151, file: !358, line: 234, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !1154}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1134, file: !1135, line: 14, baseType: !1160, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1134, file: !1135, line: 15, baseType: !1162, size: 64, offset: 448)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1163, line: 16, size: 64, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1162, file: !1163, line: 17, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !813, line: 746, size: 58368, elements: !1168)
!1168 = !{!1169, !1177, !1178, !1179, !1185, !1186, !1187, !1188, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1266, !1277, !1372, !1376, !1379, !1410, !1411, !1412, !1413, !1424, !1426, !1427, !1428, !1429, !1430, !1431, !1442, !1443, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1460, !1461, !1468, !1469, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2500, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2515, !2516, !2517, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2549, !2555, !2556, !2557, !2558, !2559, !2563, !2566, !2573, !2578, !2581, !2584, !2587, !2613, !2753, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2793, !2794, !2795, !2804, !2812, !2813, !2814, !2815, !2816, !2821, !2822, !2823, !2826, !2827, !2830, !2833, !2836, !2844, !2847, !2848, !2934, !2935, !2936, !2937, !2938, !2944, !2945, !2946, !2947, !2950, !2951, !2954, !2957, !2958, !2961, !2962, !2963, !2966, !2967, !2968, !2969, !2970, !2971, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !3003, !3004, !3010, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3022, !3094, !3096, !3097, !3098, !3099, !3100, !3112, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3141, !3142, !3143}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1167, file: !813, line: 752, baseType: !1170, size: 192)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1171, line: 56, size: 192, elements: !1172)
!1171 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1170, file: !1171, line: 57, baseType: !507, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1170, file: !1171, line: 58, baseType: !507, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1170, file: !1171, line: 59, baseType: !607, size: 32, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1170, file: !1171, line: 61, baseType: !607, size: 32, offset: 160)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1167, file: !813, line: 754, baseType: !7, size: 32, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1167, file: !813, line: 767, baseType: !529, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1167, file: !813, line: 768, baseType: !1180, size: 32, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1181, line: 113, baseType: !1182)
!1181 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1181, line: 111, size: 32, elements: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1182, file: !1181, line: 112, baseType: !407, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !813, line: 770, baseType: !7, size: 32, offset: 352)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1167, file: !813, line: 771, baseType: !7, size: 32, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1167, file: !813, line: 774, baseType: !125, size: 32, offset: 416)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1167, file: !813, line: 775, baseType: !1189, size: 128, offset: 448)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1190, line: 58, size: 128, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1191 = !{!1192, !1198, !1203, !1204}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1189, file: !1190, line: 59, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1194, line: 60, size: 64, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1193, file: !1194, line: 61, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !1190, line: 60, baseType: !1199, size: 32, offset: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !1190, line: 60, size: 32, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1199, file: !1190, line: 61, baseType: !7, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1199, file: !1190, line: 62, baseType: !407, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1189, file: !1190, line: 65, baseType: !425, size: 16, offset: 96)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1189, file: !1190, line: 65, baseType: !425, size: 16, offset: 112)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1167, file: !813, line: 776, baseType: !7, size: 32, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1167, file: !813, line: 777, baseType: !507, size: 64, offset: 640)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1167, file: !813, line: 778, baseType: !1166, size: 64, offset: 704)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1167, file: !813, line: 787, baseType: !125, size: 32, offset: 768)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1167, file: !813, line: 788, baseType: !125, size: 32, offset: 800)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1167, file: !813, line: 790, baseType: !125, size: 32, offset: 832)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1167, file: !813, line: 792, baseType: !125, size: 32, offset: 864)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1167, file: !813, line: 793, baseType: !125, size: 32, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1167, file: !813, line: 794, baseType: !125, size: 32, offset: 928)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1167, file: !813, line: 795, baseType: !7, size: 32, offset: 960)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1167, file: !813, line: 797, baseType: !1216, size: 2048, offset: 1024)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !813, line: 551, size: 2048, elements: !1217)
!1217 = !{!1218, !1223, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1245, !1248, !1249, !1250}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1216, file: !813, line: 553, baseType: !1219, size: 128)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !813, line: 411, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1219, file: !813, line: 412, baseType: !507, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1219, file: !813, line: 413, baseType: !607, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1216, file: !813, line: 554, baseType: !1224, size: 192, align: 64, offset: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1225, line: 5, size: 192, align: 64, elements: !1226)
!1225 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1226 = !{!1227, !1228, !1230}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1224, file: !1225, line: 6, baseType: !507, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1224, file: !1225, line: 7, baseType: !1229, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1224, file: !1225, line: 8, baseType: !1229, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1216, file: !813, line: 555, baseType: !611, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1216, file: !813, line: 556, baseType: !611, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1216, file: !813, line: 558, baseType: !357, size: 128, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1216, file: !813, line: 559, baseType: !7, size: 32, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1216, file: !813, line: 561, baseType: !611, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1216, file: !813, line: 562, baseType: !611, size: 64, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1216, file: !813, line: 563, baseType: !611, size: 64, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1216, file: !813, line: 564, baseType: !611, size: 64, offset: 832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1216, file: !813, line: 565, baseType: !848, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1216, file: !813, line: 566, baseType: !611, size: 64, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1216, file: !813, line: 568, baseType: !611, size: 64, offset: 1024)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1216, file: !813, line: 571, baseType: !125, size: 32, offset: 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1216, file: !813, line: 572, baseType: !1244, size: 64, offset: 1152)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1216, file: !813, line: 574, baseType: !1246, size: 64, offset: 1216)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !813, line: 49, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1216, file: !813, line: 576, baseType: !1246, size: 64, offset: 1280)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1216, file: !813, line: 578, baseType: !507, size: 64, offset: 1344)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1216, file: !813, line: 588, baseType: !1251, size: 512, align: 512, offset: 1536)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !813, line: 497, size: 512, align: 512, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1251, file: !813, line: 498, baseType: !611, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1251, file: !813, line: 499, baseType: !611, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1251, file: !813, line: 500, baseType: !611, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1251, file: !813, line: 501, baseType: !607, size: 32, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1251, file: !813, line: 502, baseType: !607, size: 32, offset: 224)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1251, file: !813, line: 503, baseType: !507, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1251, file: !813, line: 504, baseType: !507, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1251, file: !813, line: 505, baseType: !507, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1251, file: !813, line: 506, baseType: !1262, size: 64, align: 64, offset: 448)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !813, line: 445, size: 64, align: 64, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1262, file: !813, line: 446, baseType: !7, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1262, file: !813, line: 447, baseType: !7, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1167, file: !813, line: 798, baseType: !1267, size: 384, offset: 3072)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !813, line: 592, size: 384, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1267, file: !813, line: 593, baseType: !357, size: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1267, file: !813, line: 594, baseType: !507, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1267, file: !813, line: 595, baseType: !507, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1267, file: !813, line: 596, baseType: !7, size: 32, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1267, file: !813, line: 597, baseType: !427, size: 16, offset: 288)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1267, file: !813, line: 598, baseType: !427, size: 16, offset: 304)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1267, file: !813, line: 600, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1167, file: !813, line: 799, baseType: !1278, size: 1792, offset: 3456)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !813, line: 610, size: 1792, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1369, !1370}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1278, file: !813, line: 611, baseType: !1224, size: 192, align: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1278, file: !813, line: 618, baseType: !611, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1278, file: !813, line: 619, baseType: !611, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1278, file: !813, line: 620, baseType: !611, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1278, file: !813, line: 621, baseType: !611, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1278, file: !813, line: 622, baseType: !611, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1278, file: !813, line: 629, baseType: !848, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1278, file: !813, line: 630, baseType: !611, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !813, line: 631, baseType: !7, size: 32, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1278, file: !813, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1278, file: !813, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1278, file: !813, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1278, file: !813, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1278, file: !813, line: 662, baseType: !1294, size: 512, offset: 704)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1295)
!1295 = !{!1296, !1304, !1305, !1310, !1365, !1366, !1367, !1368}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1294, file: !25, line: 119, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1298, line: 9, size: 256, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1297, file: !1298, line: 10, baseType: !1224, size: 192, align: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1297, file: !1298, line: 11, baseType: !1302, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1303, line: 29, baseType: !848)
!1303 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1294, file: !25, line: 120, baseType: !1302, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1294, file: !25, line: 121, baseType: !1306, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!24, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1294, file: !25, line: 122, baseType: !1311, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1313)
!1313 = !{!1314, !1339, !1340, !1343, !1348, !1349, !1360, !1364}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1312, file: !25, line: 160, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !25, line: 216, baseType: !851, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1316, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1316, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1316, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1316, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1316, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1316, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1316, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1316, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1316, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1316, file: !25, line: 227, baseType: !427, size: 16, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1316, file: !25, line: 228, baseType: !427, size: 16, offset: 208)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1316, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1316, file: !25, line: 235, baseType: !1302, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1316, file: !25, line: 236, baseType: !1309, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1316, file: !25, line: 237, baseType: !1302, size: 64, offset: 384)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1316, file: !25, line: 238, baseType: !1309, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1316, file: !25, line: 239, baseType: !1336, size: 4096, align: 512, offset: 512)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 4096, align: 512, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 8)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1312, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1312, file: !25, line: 162, baseType: !1341, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !358, line: 32, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !491, line: 96, baseType: !125)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1312, file: !25, line: 163, baseType: !1344, size: 32, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !580, line: 274, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !580, line: 274, size: 32, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1345, file: !580, line: 274, baseType: !584, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1312, file: !25, line: 164, baseType: !1309, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1312, file: !25, line: 165, baseType: !1350, size: 128, offset: 256)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1298, line: 14, size: 128, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1350, file: !1298, line: 15, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1225, line: 26, size: 128, elements: !1354)
!1354 = !{!1355, !1359}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1353, file: !1225, line: 27, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1225, line: 12, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1356, file: !1225, line: 13, baseType: !1229, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1353, file: !1225, line: 28, baseType: !1229, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1312, file: !25, line: 166, baseType: !1361, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1302}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1312, file: !25, line: 167, baseType: !1302, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1294, file: !25, line: 123, baseType: !415, size: 8, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1294, file: !25, line: 124, baseType: !415, size: 8, offset: 456)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1294, file: !25, line: 125, baseType: !415, size: 8, offset: 464)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1294, file: !25, line: 126, baseType: !415, size: 8, offset: 472)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1278, file: !813, line: 671, baseType: !1294, size: 512, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1278, file: !813, line: 679, baseType: !1371, size: 64, offset: 1728)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1167, file: !813, line: 800, baseType: !1373, size: 64, offset: 5248)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !813, line: 800, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1167, file: !813, line: 809, baseType: !1377, size: 64, offset: 5312)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !813, line: 70, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1167, file: !813, line: 825, baseType: !1380, size: 2048, align: 512, offset: 5632)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !813, line: 509, size: 2048, align: 512, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1380, file: !813, line: 511, baseType: !611, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1380, file: !813, line: 512, baseType: !611, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1380, file: !813, line: 513, baseType: !611, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1380, file: !813, line: 514, baseType: !611, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1380, file: !813, line: 515, baseType: !611, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1380, file: !813, line: 516, baseType: !611, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1380, file: !813, line: 518, baseType: !611, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1380, file: !813, line: 519, baseType: !611, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1380, file: !813, line: 520, baseType: !848, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1380, file: !813, line: 522, baseType: !611, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1380, file: !813, line: 523, baseType: !611, size: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1380, file: !813, line: 524, baseType: !848, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1380, file: !813, line: 526, baseType: !848, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1380, file: !813, line: 527, baseType: !611, size: 64, offset: 832)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1380, file: !813, line: 529, baseType: !611, size: 64, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1380, file: !813, line: 530, baseType: !611, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1380, file: !813, line: 531, baseType: !611, size: 64, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1380, file: !813, line: 532, baseType: !611, size: 64, offset: 1088)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1380, file: !813, line: 533, baseType: !611, size: 64, offset: 1152)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1380, file: !813, line: 535, baseType: !611, size: 64, offset: 1216)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1380, file: !813, line: 536, baseType: !611, size: 64, offset: 1280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1380, file: !813, line: 537, baseType: !611, size: 64, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1380, file: !813, line: 538, baseType: !611, size: 64, offset: 1408)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1380, file: !813, line: 539, baseType: !611, size: 64, offset: 1472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1380, file: !813, line: 540, baseType: !611, size: 64, offset: 1536)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1380, file: !813, line: 541, baseType: !611, size: 64, offset: 1600)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1380, file: !813, line: 542, baseType: !611, size: 64, offset: 1664)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1380, file: !813, line: 543, baseType: !611, size: 64, offset: 1728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1167, file: !813, line: 833, baseType: !7, size: 32, offset: 7680)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1167, file: !813, line: 836, baseType: !7, size: 32, offset: 7712)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1167, file: !813, line: 837, baseType: !125, size: 32, offset: 7744)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1167, file: !813, line: 838, baseType: !1414, size: 64, offset: 7808)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1417, line: 19, baseType: !1418)
!1417 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1417, line: 19, size: 64, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1418, file: !1417, line: 19, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 64, elements: !1422)
!1422 = !{!1423}
!1423 = !DISubrange(count: 1)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1167, file: !813, line: 839, baseType: !1425, size: 64, offset: 7872)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1167, file: !813, line: 840, baseType: !1416, size: 64, offset: 7936)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1167, file: !813, line: 841, baseType: !529, size: 64, offset: 8000)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1167, file: !813, line: 843, baseType: !427, size: 16, offset: 8064)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1167, file: !813, line: 845, baseType: !427, size: 16, offset: 8080)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1167, file: !813, line: 848, baseType: !125, size: 32, offset: 8096)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1167, file: !813, line: 849, baseType: !1432, size: 32, offset: 8128)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !813, line: 718, size: 32, elements: !1433)
!1433 = !{!1434, !1441}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1432, file: !813, line: 724, baseType: !1435, size: 32)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1432, file: !813, line: 719, size: 32, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1435, file: !813, line: 720, baseType: !415, size: 8)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1435, file: !813, line: 721, baseType: !415, size: 8, offset: 8)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1435, file: !813, line: 722, baseType: !415, size: 8, offset: 16)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1435, file: !813, line: 723, baseType: !415, size: 8, offset: 24)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1432, file: !813, line: 725, baseType: !607, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1167, file: !813, line: 850, baseType: !357, size: 128, offset: 8192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1167, file: !813, line: 851, baseType: !1444, size: 64, offset: 8320)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !813, line: 60, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1167, file: !813, line: 855, baseType: !507, size: 64, offset: 8384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1167, file: !813, line: 856, baseType: !415, size: 8, offset: 8448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1167, file: !813, line: 857, baseType: !415, size: 8, offset: 8456)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1167, file: !813, line: 858, baseType: !125, size: 32, offset: 8480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1167, file: !813, line: 859, baseType: !357, size: 128, offset: 8512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1167, file: !813, line: 860, baseType: !125, size: 32, offset: 8640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1167, file: !813, line: 861, baseType: !357, size: 128, offset: 8704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1167, file: !813, line: 873, baseType: !1454, size: 256, offset: 8832)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !813, line: 376, size: 256, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1454, file: !813, line: 381, baseType: !507, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1454, file: !813, line: 384, baseType: !613, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1454, file: !813, line: 389, baseType: !613, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1454, file: !813, line: 392, baseType: !613, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1167, file: !813, line: 875, baseType: !357, size: 128, offset: 9088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1167, file: !813, line: 877, baseType: !1462, size: 320, offset: 9216)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1463, line: 86, size: 320, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1464 = !{!1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1462, file: !1463, line: 87, baseType: !125, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1462, file: !1463, line: 88, baseType: !357, size: 128, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1462, file: !1463, line: 89, baseType: !357, size: 128, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1167, file: !813, line: 878, baseType: !1224, size: 192, align: 64, offset: 9536)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1167, file: !813, line: 881, baseType: !1470, size: 64, offset: 9728)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1472)
!1472 = !{!1473, !2419}
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !38, line: 734, baseType: !1474, size: 10240)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1471, file: !38, line: 734, size: 10240, elements: !1475)
!1475 = !{!1476, !1480, !1493, !2283, !2284, !2285, !2286, !2287, !2288, !2295, !2296, !2297, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2336, !2338, !2341, !2388, !2389, !2390, !2393, !2394, !2395, !2398, !2399, !2400, !2406, !2407}
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !38, line: 739, baseType: !1477, size: 512, align: 512)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !38, line: 739, size: 512, align: 512, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1477, file: !38, line: 747, baseType: !407, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1474, file: !38, line: 750, baseType: !1481, size: 128, offset: 512)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1482, line: 218, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1483 = !{!1484, !1491, !1492}
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1482, line: 219, baseType: !1485, size: 32)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1482, line: 219, size: 32, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1485, file: !1482, line: 220, baseType: !387, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1485, file: !1482, line: 221, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1482, line: 197, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1482, line: 197, elements: !742)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1481, file: !1482, line: 223, baseType: !7, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1481, file: !1482, line: 224, baseType: !529, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1474, file: !38, line: 752, baseType: !1494, size: 64, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!507, !1497, !507, !507, !507, !507}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1499)
!1499 = !{!1500, !1506, !1507, !1509, !1510, !1511, !1512, !1513, !1612, !1802, !1811, !1812, !1813, !2273, !2274, !2275, !2276, !2278, !2279, !2282}
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !14, line: 995, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !14, line: 995, size: 128, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1501, file: !14, line: 996, baseType: !1193, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1501, file: !14, line: 997, baseType: !1151, size: 128, align: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1501, file: !14, line: 998, baseType: !7, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1498, file: !14, line: 1005, baseType: !387, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1498, file: !14, line: 1006, baseType: !1508, size: 32, offset: 160)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !358, line: 156, baseType: !7)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1498, file: !14, line: 1007, baseType: !842, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1498, file: !14, line: 1008, baseType: !838, size: 256, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1498, file: !14, line: 1009, baseType: !699, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1498, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1498, file: !14, line: 1011, baseType: !1514, size: 256, offset: 640)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1515)
!1515 = !{!1516, !1537, !1608, !1609, !1610, !1611}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !14, line: 949, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1518, line: 34, baseType: !1519)
!1518 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1518, line: 25, size: 64, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1519, file: !1518, line: 26, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1523, line: 27, baseType: !1524)
!1523 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1523, line: 13, size: 64, elements: !1525)
!1525 = !{!1526, !1536}
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !1523, line: 14, baseType: !1527, size: 32)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !1523, line: 14, size: 32, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1527, file: !1523, line: 15, baseType: !407, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1527, file: !1523, line: 16, baseType: !1531, size: 32)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1527, file: !1523, line: 16, size: 32, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1531, file: !1523, line: 18, baseType: !415, size: 8)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1531, file: !1523, line: 19, baseType: !1535, size: 24, offset: 8)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 24, elements: !458)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1524, file: !1523, line: 26, baseType: !399, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1514, file: !14, line: 950, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1548, !1549, !1550, !1551}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1539, file: !30, line: 61, baseType: !1180, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1539, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1539, file: !30, line: 63, baseType: !387, size: 32, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1539, file: !30, line: 65, baseType: !1545, size: 256, offset: 128)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 256, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 4)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1539, file: !30, line: 66, baseType: !730, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1539, file: !30, line: 68, baseType: !1144, size: 192, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1539, file: !30, line: 69, baseType: !1151, size: 128, align: 64, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1539, file: !30, line: 70, baseType: !1552, offset: 768)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1553, elements: !1606)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1553, file: !30, line: 55, baseType: !125, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1553, file: !30, line: 56, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1559, line: 26, size: 1152, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1560 = !{!1561, !1574, !1575, !1576, !1577, !1581, !1582, !1583, !1586, !1589, !1593, !1594, !1605}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1558, file: !1559, line: 27, baseType: !1562, size: 192)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1563, line: 19, size: 192, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1564 = !{!1565, !1572, !1573}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1562, file: !1563, line: 20, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1567, line: 296, size: 128, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1566, file: !1567, line: 297, baseType: !387, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1566, file: !1567, line: 299, baseType: !903, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1566, file: !1567, line: 300, baseType: !529, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1562, file: !1563, line: 21, baseType: !7, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1562, file: !1563, line: 22, baseType: !7, size: 32, offset: 160)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1558, file: !1559, line: 28, baseType: !1151, size: 128, align: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1558, file: !1559, line: 29, baseType: !7, size: 32, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1558, file: !1559, line: 30, baseType: !1166, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1558, file: !1559, line: 31, baseType: !1578, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1580, line: 325, flags: DIFlagFwdDecl)
!1580 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1558, file: !1559, line: 32, baseType: !7, size: 32, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1558, file: !1559, line: 33, baseType: !1557, size: 64, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1558, file: !1559, line: 35, baseType: !1584, size: 64, offset: 640)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1559, line: 17, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1558, file: !1559, line: 37, baseType: !1587, size: 64, offset: 704)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !545, line: 18, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1558, file: !1559, line: 38, baseType: !1590, size: 64, offset: 768)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1592, line: 16, flags: DIFlagFwdDecl)
!1592 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1558, file: !1559, line: 39, baseType: !125, size: 32, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1558, file: !1559, line: 40, baseType: !1595, size: 192, offset: 896)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1596, line: 9, size: 192, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1597 = !{!1598, !1599, !1603, !1604}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1595, file: !1596, line: 10, baseType: !842, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1595, file: !1596, line: 11, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1596, line: 7, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1595, file: !1596, line: 12, baseType: !7, size: 32, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1595, file: !1596, line: 13, baseType: !1180, size: 32, offset: 160)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1558, file: !1559, line: 42, baseType: !125, size: 32, offset: 1088)
!1606 = !{!1607}
!1607 = !DISubrange(count: -1)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1514, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1514, file: !14, line: 952, baseType: !544, size: 32, offset: 160)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1514, file: !14, line: 952, baseType: !544, size: 32, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1514, file: !14, line: 953, baseType: !125, size: 32, offset: 224)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1498, file: !14, line: 1012, baseType: !1613, size: 64, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1616, line: 110, size: 1472, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1634, !1635, !1636, !1637, !1638, !1639, !1752, !1753, !1754, !1755, !1756, !1787, !1788, !1789, !1797}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1615, file: !1616, line: 111, baseType: !842, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1615, file: !1616, line: 112, baseType: !544, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1615, file: !1616, line: 113, baseType: !553, size: 32, offset: 96)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1615, file: !1616, line: 114, baseType: !544, size: 32, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1615, file: !1616, line: 115, baseType: !553, size: 32, offset: 160)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1615, file: !1616, line: 116, baseType: !544, size: 32, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1615, file: !1616, line: 117, baseType: !553, size: 32, offset: 224)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1615, file: !1616, line: 118, baseType: !544, size: 32, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1615, file: !1616, line: 119, baseType: !553, size: 32, offset: 288)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1615, file: !1616, line: 120, baseType: !7, size: 32, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1615, file: !1616, line: 121, baseType: !1629, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1630, line: 24, baseType: !1631)
!1630 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1630, line: 24, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1631, file: !1630, line: 24, baseType: !611, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1615, file: !1616, line: 122, baseType: !1629, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1615, file: !1616, line: 123, baseType: !1629, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1615, file: !1616, line: 124, baseType: !1629, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1615, file: !1616, line: 125, baseType: !1629, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1615, file: !1616, line: 127, baseType: !419, size: 8, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1615, file: !1616, line: 129, baseType: !1640, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1642, line: 195, size: 1728, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1643 = !{!1644, !1645, !1650, !1655, !1656, !1659, !1660, !1665, !1666, !1667, !1668, !1671, !1672, !1673, !1675, !1676, !1716, !1737}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1641, file: !1642, line: 196, baseType: !1180, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1641, file: !1642, line: 197, baseType: !1646, size: 32, offset: 32)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1642, line: 28, baseType: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !358, line: 104, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !416, line: 20, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !418, line: 26, baseType: !125)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1642, line: 198, baseType: !1651, size: 192, offset: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !1642, line: 198, size: 192, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1651, file: !1642, line: 199, baseType: !357, size: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1651, file: !1642, line: 200, baseType: !1224, size: 192, align: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1641, file: !1642, line: 205, baseType: !1051, size: 320, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1641, file: !1642, line: 206, baseType: !1657, size: 64, offset: 576)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1642, line: 206, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1641, file: !1642, line: 207, baseType: !529, size: 64, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1642, line: 208, baseType: !1661, size: 64, offset: 704)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !1642, line: 208, size: 64, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1661, file: !1642, line: 209, baseType: !891, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1661, file: !1642, line: 210, baseType: !891, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1641, file: !1642, line: 212, baseType: !891, size: 64, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1641, file: !1642, line: 213, baseType: !544, size: 32, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1641, file: !1642, line: 214, baseType: !553, size: 32, offset: 864)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1641, file: !1642, line: 215, baseType: !1669, size: 32, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1642, line: 31, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !358, line: 110, baseType: !607)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1641, file: !1642, line: 216, baseType: !427, size: 16, offset: 928)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1641, file: !1642, line: 217, baseType: !427, size: 16, offset: 944)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1641, file: !1642, line: 221, baseType: !1674, size: 16, offset: 960)
!1674 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1641, file: !1642, line: 228, baseType: !507, size: 64, offset: 1024)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1642, line: 245, baseType: !1677, size: 320, offset: 1088)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !1642, line: 245, size: 320, elements: !1678)
!1678 = !{!1679, !1708}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1677, file: !1642, line: 246, baseType: !1680, size: 320)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1642, line: 114, size: 320, elements: !1681)
!1681 = !{!1682, !1683, !1695, !1698, !1707}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1680, file: !1642, line: 116, baseType: !507, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1642, line: 117, baseType: !1684, size: 64, offset: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !1642, line: 117, size: 64, elements: !1685)
!1685 = !{!1686, !1694}
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1642, line: 118, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1684, file: !1642, line: 118, size: 64, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1687, file: !1642, line: 120, baseType: !425, size: 16)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1687, file: !1642, line: 121, baseType: !1691, size: 48, offset: 16)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 48, elements: !1692)
!1692 = !{!1693}
!1693 = !DISubrange(count: 6)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1684, file: !1642, line: 127, baseType: !507, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1680, file: !1642, line: 129, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1642, line: 102, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1680, file: !1642, line: 130, baseType: !1699, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1642, line: 108, size: 192, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1700, file: !1642, line: 109, baseType: !1151, size: 128, align: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1700, file: !1642, line: 110, baseType: !1180, size: 32, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1700, file: !1642, line: 111, baseType: !1705, size: 8, offset: 160)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !358, line: 35, baseType: !1706)
!1706 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1680, file: !1642, line: 131, baseType: !376, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1677, file: !1642, line: 247, baseType: !1709, size: 320)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1677, file: !1642, line: 247, size: 320, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1709, file: !1642, line: 248, baseType: !507, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1709, file: !1642, line: 249, baseType: !507, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1709, file: !1642, line: 250, baseType: !1696, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1709, file: !1642, line: 251, baseType: !1699, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1709, file: !1642, line: 252, baseType: !457, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1642, line: 260, baseType: !1717, size: 256, offset: 1408)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !1642, line: 260, size: 256, elements: !1718)
!1718 = !{!1719, !1725}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1717, file: !1642, line: 261, baseType: !1720, size: 256)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1642, line: 134, size: 256, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1720, file: !1642, line: 135, baseType: !529, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1720, file: !1642, line: 136, baseType: !1724, size: 256)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 256, elements: !1546)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1642, line: 262, baseType: !1726, size: 256)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1642, line: 262, size: 256, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1726, file: !1642, line: 264, baseType: !357, size: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1726, file: !1642, line: 265, baseType: !1730, size: 128, offset: 128)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1731, line: 22, size: 128, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1732 = !{!1733, !1736}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1730, file: !1731, line: 23, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1731, line: 23, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1730, file: !1731, line: 24, baseType: !507, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1641, file: !1642, line: 280, baseType: !1738, size: 64, offset: 1664)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1642, line: 176, size: 192, elements: !1740)
!1740 = !{!1741, !1750, !1751}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1739, file: !1642, line: 177, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1642, line: 171, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!125, !1640, !1746, !1748, !1640}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1720)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1739, file: !1642, line: 178, baseType: !1640, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1739, file: !1642, line: 179, baseType: !1696, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1615, file: !1616, line: 130, baseType: !1640, size: 64, offset: 832)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1615, file: !1616, line: 131, baseType: !1640, size: 64, offset: 896)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1615, file: !1616, line: 132, baseType: !1640, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1615, file: !1616, line: 135, baseType: !529, size: 64, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1615, file: !1616, line: 137, baseType: !1757, size: 64, offset: 1088)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1759, line: 14, size: 1088, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1760 = !{!1761, !1762, !1771, !1772, !1773, !1774, !1775, !1776}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1758, file: !1759, line: 15, baseType: !1180, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1758, file: !1759, line: 17, baseType: !1763, size: 320, offset: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1764, line: 22, size: 320, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1765 = !{!1766, !1767, !1768, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !1764, line: 23, baseType: !851, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1763, file: !1764, line: 24, baseType: !848, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1763, file: !1764, line: 26, baseType: !357, size: 128, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1763, file: !1764, line: 28, baseType: !1770, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1758, file: !1759, line: 19, baseType: !507, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1758, file: !1759, line: 20, baseType: !842, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1758, file: !1759, line: 23, baseType: !734, size: 128, offset: 512)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1758, file: !1759, line: 24, baseType: !544, size: 32, offset: 640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1758, file: !1759, line: 29, baseType: !842, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1758, file: !1759, line: 36, baseType: !1777, size: 320, offset: 768)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1778, line: 15, size: 320, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1777, file: !1778, line: 16, baseType: !851, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1777, file: !1778, line: 18, baseType: !125, size: 32, offset: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1777, file: !1778, line: 19, baseType: !125, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1777, file: !1778, line: 20, baseType: !125, size: 32, offset: 96)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1777, file: !1778, line: 21, baseType: !125, size: 32, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1777, file: !1778, line: 22, baseType: !507, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1777, file: !1778, line: 23, baseType: !507, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1615, file: !1616, line: 138, baseType: !1587, size: 64, offset: 1152)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1615, file: !1616, line: 139, baseType: !1590, size: 64, offset: 1216)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1615, file: !1616, line: 140, baseType: !1790, size: 64, offset: 1280)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1616, line: 25, size: 64, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1791, file: !1616, line: 26, baseType: !407, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1791, file: !1616, line: 27, baseType: !125, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1791, file: !1616, line: 28, baseType: !1796, offset: 64)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, elements: !1606)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1615, file: !1616, line: 142, baseType: !1798, size: 128, offset: 1344)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1615, file: !1616, line: 142, size: 128, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1798, file: !1616, line: 143, baseType: !125, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1798, file: !1616, line: 144, baseType: !1151, size: 128, align: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1498, file: !14, line: 1013, baseType: !1803, size: 256, offset: 960)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1803, file: !14, line: 971, baseType: !507, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1803, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1803, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1803, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1803, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1803, file: !14, line: 976, baseType: !699, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1498, file: !14, line: 1014, baseType: !963, size: 128, offset: 1216)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1498, file: !14, line: 1015, baseType: !538, size: 64, offset: 1344)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1498, file: !14, line: 1016, baseType: !1814, size: 64, offset: 1408)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1817)
!1817 = !{!1818, !1819, !1823, !1828, !1832, !1861, !1862, !1868, !1881, !1889, !1893, !1894, !2195, !2196, !2200, !2205, !2206, !2210, !2214, !2220, !2221, !2225, !2226, !2232, !2236, !2240, !2246, !2250, !2254, !2258, !2262, !2263, !2269}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1816, file: !14, line: 1915, baseType: !352, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1816, file: !14, line: 1916, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!699, !1497, !699, !125}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1816, file: !14, line: 1917, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!489, !1497, !457, !504, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1816, file: !14, line: 1918, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!489, !1497, !376, !504, !1827}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1816, file: !14, line: 1919, baseType: !1833, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!489, !1836, !1858}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1845, !1846, !1847, !1848}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1837, file: !14, line: 374, baseType: !1497, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1837, file: !14, line: 375, baseType: !699, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1837, file: !14, line: 376, baseType: !1842, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !1836, !493}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1837, file: !14, line: 377, baseType: !529, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1837, file: !14, line: 378, baseType: !125, size: 32, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1837, file: !14, line: 379, baseType: !425, size: 16, offset: 288)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !14, line: 380, baseType: !1849, size: 64, offset: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !14, line: 380, size: 64, elements: !1850)
!1850 = !{!1851, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1849, file: !14, line: 386, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1849, file: !14, line: 395, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!489, !529}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1860, line: 17, flags: DIFlagFwdDecl)
!1860 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1816, file: !14, line: 1920, baseType: !1833, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1816, file: !14, line: 1921, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!125, !1836, !1866, !7}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1816, file: !14, line: 1923, baseType: !1869, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!125, !1497, !1872}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1874)
!1874 = !{!1875, !1880}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1873, file: !14, line: 1859, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1705, !1872, !376, !125, !699, !611, !7}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1873, file: !14, line: 1860, baseType: !699, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1816, file: !14, line: 1924, baseType: !1882, size: 64, offset: 512)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1885, !1497, !1887}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1886, line: 59, baseType: !7)
!1886 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !714, line: 31, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1816, file: !14, line: 1925, baseType: !1890, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!493, !1497, !7, !507}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1816, file: !14, line: 1926, baseType: !1890, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1816, file: !14, line: 1927, baseType: !1895, size: 64, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!125, !1497, !1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1900)
!1900 = !{!1901, !1910, !1911, !1919, !1926, !1927, !1932, !1933, !1938, !1939, !1942, !2188, !2189, !2190, !2191, !2192, !2193}
!1901 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !38, line: 628, baseType: !1902, size: 128)
!1902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !38, line: 628, size: 128, elements: !1903)
!1903 = !{!1904, !1909}
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1902, file: !38, line: 629, baseType: !1905, size: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1902, file: !38, line: 629, size: 128, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1905, file: !38, line: 631, baseType: !507, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1905, file: !38, line: 632, baseType: !507, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1902, file: !38, line: 635, baseType: !1151, size: 128, align: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1899, file: !38, line: 639, baseType: !1470, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1899, file: !38, line: 640, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1913, line: 297, baseType: !1914)
!1913 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1913, line: 297, size: 64, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1914, file: !1913, line: 297, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1918, line: 19, baseType: !507)
!1918 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !38, line: 646, baseType: !1920, size: 64, offset: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !38, line: 646, size: 64, elements: !1921)
!1921 = !{!1922, !1925}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1920, file: !38, line: 647, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !507)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1920, file: !38, line: 648, baseType: !1924, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1899, file: !38, line: 666, baseType: !125, size: 32, offset: 320)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1899, file: !38, line: 667, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1929, file: !38, line: 580, baseType: !1051, size: 320)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1899, file: !38, line: 670, baseType: !1705, size: 8, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1899, file: !38, line: 681, baseType: !1934, size: 256, offset: 512)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !38, line: 678, size: 256, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1934, file: !38, line: 679, baseType: !1224, size: 192, align: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1934, file: !38, line: 680, baseType: !507, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1899, file: !38, line: 689, baseType: !357, size: 128, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1899, file: !38, line: 691, baseType: !1940, size: 64, offset: 896)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1899, file: !38, line: 694, baseType: !1943, size: 64, offset: 960)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1946, line: 563, size: 1024, elements: !1947)
!1946 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1947 = !{!1948, !1952, !1953, !1957, !1961, !1965, !2152, !2156, !2160, !2164, !2165, !2166, !2170, !2174, !2180, !2184}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1945, file: !1946, line: 564, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1898}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1945, file: !1946, line: 569, baseType: !1949, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1945, file: !1946, line: 571, baseType: !1954, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!125, !1898, !507}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1945, file: !1946, line: 572, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!125, !1898}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1945, file: !1946, line: 578, baseType: !1962, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!125, !1898, !507, !507, !507}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1945, file: !1946, line: 580, baseType: !1966, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1946, line: 512, size: 896, elements: !1972)
!1972 = !{!1973, !1981, !1982, !1989, !1996, !2006, !2145, !2146, !2148, !2150}
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1946, line: 513, baseType: !1974, size: 320)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !1946, line: 513, size: 320, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1974, file: !1946, line: 514, baseType: !1898, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1974, file: !1946, line: 515, baseType: !903, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1974, file: !1946, line: 516, baseType: !507, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1974, file: !1946, line: 517, baseType: !507, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1974, file: !1946, line: 518, baseType: !507, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1971, file: !1946, line: 520, baseType: !37, size: 32, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1971, file: !1946, line: 522, baseType: !1983, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1918, line: 22, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1918, line: 22, size: 64, elements: !1986)
!1986 = !{!1987}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1985, file: !1918, line: 22, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1918, line: 15, baseType: !507)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1971, file: !1946, line: 524, baseType: !1990, size: 64, offset: 448)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1913, line: 372, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1913, line: 372, size: 64, elements: !1993)
!1993 = !{!1994}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1992, file: !1913, line: 372, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1918, line: 16, baseType: !507)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1946, line: 527, baseType: !1997, size: 64, offset: 512)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !1946, line: 527, size: 64, elements: !1998)
!1998 = !{!1999, !2005}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1997, file: !1946, line: 528, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1918, line: 21, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1918, line: 21, size: 64, elements: !2002)
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2001, file: !1918, line: 21, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1918, line: 14, baseType: !507)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1997, file: !1946, line: 529, baseType: !1984, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1971, file: !1946, line: 534, baseType: !2007, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2009)
!2009 = !{!2010, !2011, !2139, !2144}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2008, file: !38, line: 75, baseType: !507, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !2008, file: !38, line: 83, baseType: !2012, size: 320, offset: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2008, file: !38, line: 83, size: 320, elements: !2013)
!2013 = !{!2014, !2035, !2049, !2053, !2138}
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !38, line: 84, baseType: !2015, size: 320)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !38, line: 84, size: 320, elements: !2016)
!2016 = !{!2017, !2028, !2029, !2034}
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !38, line: 90, baseType: !2018, size: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !38, line: 90, size: 128, elements: !2019)
!2019 = !{!2020, !2021, !2026, !2027}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2018, file: !38, line: 91, baseType: !357, size: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !38, line: 94, baseType: !2022, size: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !38, line: 94, size: 128, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2022, file: !38, line: 96, baseType: !529, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2022, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2018, file: !38, line: 102, baseType: !357, size: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2018, file: !38, line: 103, baseType: !357, size: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2015, file: !38, line: 106, baseType: !534, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !38, line: 107, baseType: !2030, size: 64, offset: 192)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !38, line: 107, size: 64, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2030, file: !38, line: 108, baseType: !507, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2030, file: !38, line: 109, baseType: !507, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2015, file: !38, line: 117, baseType: !507, size: 64, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !38, line: 119, baseType: !2036, size: 320)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !38, line: 119, size: 320, elements: !2037)
!2037 = !{!2038, !2039, !2042, !2043, !2044}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2036, file: !38, line: 124, baseType: !507, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2036, file: !38, line: 125, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2036, file: !38, line: 126, baseType: !507, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2036, file: !38, line: 127, baseType: !507, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !38, line: 128, baseType: !2045, size: 64, offset: 256)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !38, line: 128, size: 64, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2045, file: !38, line: 133, baseType: !507, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2045, file: !38, line: 138, baseType: !842, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !38, line: 141, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !38, line: 141, size: 64, elements: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2050, file: !38, line: 142, baseType: !507, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !38, line: 144, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !38, line: 144, size: 128, elements: !2055)
!2055 = !{!2056, !2137}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2054, file: !38, line: 146, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2059)
!2059 = !{!2060, !2070, !2091, !2102, !2103, !2104, !2105, !2119, !2120, !2121}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2058, file: !54, line: 127, baseType: !2061, size: 384)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2062)
!2062 = !{!2063, !2064, !2066, !2067, !2068, !2069}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2061, file: !54, line: 22, baseType: !507, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2061, file: !54, line: 23, baseType: !2065, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2061, file: !54, line: 24, baseType: !2065, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2061, file: !54, line: 25, baseType: !507, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2061, file: !54, line: 26, baseType: !507, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2061, file: !54, line: 27, baseType: !507, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2058, file: !54, line: 128, baseType: !2071, size: 128, offset: 384)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2072, line: 105, size: 128, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2071, file: !2072, line: 110, baseType: !507, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2071, file: !2072, line: 118, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2072, line: 95, size: 448, elements: !2078)
!2078 = !{!2079, !2080, !2086, !2087, !2088, !2089, !2090}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2077, file: !2072, line: 96, baseType: !842, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2077, file: !2072, line: 97, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2072, line: 60, baseType: !2083)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2077, file: !2072, line: 98, baseType: !2081, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2077, file: !2072, line: 99, baseType: !1705, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2077, file: !2072, line: 100, baseType: !1705, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2077, file: !2072, line: 101, baseType: !1151, size: 128, align: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2077, file: !2072, line: 102, baseType: !2085, size: 64, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2058, file: !54, line: 129, baseType: !2092, size: 256, offset: 512)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2093, line: 26, size: 256, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2092, file: !2093, line: 27, baseType: !7, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2092, file: !2093, line: 28, baseType: !2097, size: 192, offset: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2098, line: 43, size: 192, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2097, file: !2098, line: 44, baseType: !851, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2097, file: !2098, line: 45, baseType: !357, size: 128, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2058, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2058, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2058, file: !54, line: 132, baseType: !507, size: 64, offset: 832)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2058, file: !54, line: 133, baseType: !2106, size: 64, offset: 896)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2109)
!2109 = !{!2110, !2114, !2115}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2108, file: !54, line: 83, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2007}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2108, file: !54, line: 89, baseType: !1966, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2108, file: !54, line: 100, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!125, !2057, !507, !507, !125}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2058, file: !54, line: 134, baseType: !529, size: 64, offset: 960)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2058, file: !54, line: 135, baseType: !125, size: 32, offset: 1024)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2058, file: !54, line: 136, baseType: !2122, size: 128, offset: 1088)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2058, file: !54, line: 136, size: 128, elements: !2123)
!2123 = !{!2124, !2130}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2122, file: !54, line: 137, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2126, line: 6, size: 128, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2125, file: !2126, line: 7, baseType: !611, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2125, file: !2126, line: 8, baseType: !611, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !54, line: 138, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !54, line: 138, elements: !2132)
!2132 = !{!2133, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2131, file: !54, line: 138, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !54, line: 138, elements: !742)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2131, file: !54, line: 138, baseType: !2136)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2125, elements: !1606)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2054, file: !38, line: 147, baseType: !529, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2012, file: !38, line: 161, baseType: !1151, size: 128, align: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2008, file: !38, line: 164, baseType: !2140, size: 32, offset: 384)
!2140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2008, file: !38, line: 164, size: 32, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2140, file: !38, line: 169, baseType: !407, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2140, file: !38, line: 177, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2008, file: !38, line: 181, baseType: !407, size: 32, offset: 416)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1971, file: !1946, line: 535, baseType: !2007, size: 64, offset: 640)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1971, file: !1946, line: 541, baseType: !2147, size: 64, offset: 704)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1971, file: !1946, line: 545, baseType: !2149, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1971, file: !1946, line: 549, baseType: !2151, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1913, line: 520, baseType: !2007)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1945, file: !1946, line: 581, baseType: !2153, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!1969, !1970, !7}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1945, file: !1946, line: 582, baseType: !2157, size: 64, offset: 448)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1969, !1970, !507, !507}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1945, file: !1946, line: 584, baseType: !2161, size: 64, offset: 512)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!507, !1898}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1945, file: !1946, line: 588, baseType: !1966, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1945, file: !1946, line: 591, baseType: !1966, size: 64, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1945, file: !1946, line: 597, baseType: !2167, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!125, !1898, !507, !529, !125, !125}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1945, file: !1946, line: 603, baseType: !2171, size: 64, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!376, !1898}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1945, file: !1946, line: 613, baseType: !2175, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!125, !1898, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !813, line: 54, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1945, file: !1946, line: 625, baseType: !2181, size: 64, offset: 896)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!2178, !1898, !507}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1945, file: !1946, line: 633, baseType: !2185, size: 64, offset: 960)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!2007, !1898, !507}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1899, file: !38, line: 697, baseType: !507, size: 64, offset: 1024)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1899, file: !38, line: 699, baseType: !1497, size: 64, offset: 1088)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1899, file: !38, line: 700, baseType: !529, size: 64, offset: 1152)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1899, file: !38, line: 711, baseType: !842, size: 64, offset: 1216)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1899, file: !38, line: 717, baseType: !2178, size: 64, offset: 1280)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1899, file: !38, line: 722, baseType: !2194, offset: 1344)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !742)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1816, file: !14, line: 1928, baseType: !507, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1816, file: !14, line: 1929, baseType: !2197, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!125, !538, !1497}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1816, file: !14, line: 1930, baseType: !2201, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!125, !1497, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !529)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1816, file: !14, line: 1931, baseType: !2197, size: 64, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1816, file: !14, line: 1932, baseType: !2207, size: 64, offset: 1024)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!125, !1497, !699, !699, !125}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1816, file: !14, line: 1933, baseType: !2211, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!125, !125, !1497, !125}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1816, file: !14, line: 1934, baseType: !2215, size: 64, offset: 1152)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!125, !1497, !125, !2218}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1816, file: !14, line: 1935, baseType: !1494, size: 64, offset: 1216)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1816, file: !14, line: 1936, baseType: !2222, size: 64, offset: 1280)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!125, !125}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1816, file: !14, line: 1937, baseType: !2215, size: 64, offset: 1344)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1816, file: !14, line: 1938, baseType: !2227, size: 64, offset: 1408)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!489, !2230, !1497, !1827, !504, !7}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !813, line: 59, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1816, file: !14, line: 1939, baseType: !2233, size: 64, offset: 1472)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!489, !1497, !1827, !2230, !504, !7}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1816, file: !14, line: 1940, baseType: !2237, size: 64, offset: 1536)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !1497}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1816, file: !14, line: 1941, baseType: !2241, size: 64, offset: 1600)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!125, !1497, !125, !2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1816, file: !14, line: 1942, baseType: !2247, size: 64, offset: 1664)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!493, !1497, !125, !699, !699}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1816, file: !14, line: 1944, baseType: !2251, size: 64, offset: 1728)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !811, !1497}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1816, file: !14, line: 1948, baseType: !2255, size: 64, offset: 1792)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!489, !1497, !699, !1497, !699, !504, !7}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1816, file: !14, line: 1950, baseType: !2259, size: 64, offset: 1856)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!699, !1497, !699, !1497, !699, !699, !7}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1816, file: !14, line: 1953, baseType: !2207, size: 64, offset: 1920)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1816, file: !14, line: 1954, baseType: !2264, size: 64, offset: 1984)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!125, !2267, !7}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1816, file: !14, line: 1955, baseType: !2270, size: 64, offset: 2048)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!125, !2267, !1866, !7}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1498, file: !14, line: 1018, baseType: !611, size: 64, offset: 1472)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1498, file: !14, line: 1020, baseType: !529, size: 64, offset: 1536)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1498, file: !14, line: 1023, baseType: !529, size: 64, offset: 1600)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1498, file: !14, line: 1027, baseType: !2277, size: 64, offset: 1664)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1498, file: !14, line: 1029, baseType: !534, size: 64, offset: 1728)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1498, file: !14, line: 1030, baseType: !2280, size: 32, offset: 1792)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2281, line: 8, baseType: !607)
!2281 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1498, file: !14, line: 1031, baseType: !2280, size: 32, offset: 1824)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1474, file: !38, line: 756, baseType: !507, size: 64, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1474, file: !38, line: 757, baseType: !507, size: 64, offset: 768)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1474, file: !38, line: 760, baseType: !507, size: 64, offset: 832)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1474, file: !38, line: 761, baseType: !507, size: 64, offset: 896)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1474, file: !38, line: 763, baseType: !507, size: 64, offset: 960)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1474, file: !38, line: 764, baseType: !2289, size: 64, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1913, line: 299, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1913, line: 299, size: 64, elements: !2292)
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2291, file: !1913, line: 299, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1918, line: 18, baseType: !507)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1474, file: !38, line: 773, baseType: !407, size: 32, offset: 1088)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1474, file: !38, line: 785, baseType: !407, size: 32, offset: 1120)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1474, file: !38, line: 795, baseType: !2298, size: 64, offset: 1152)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2300)
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2299, file: !38, line: 727, baseType: !611, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2299, file: !38, line: 728, baseType: !125, size: 32, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1474, file: !38, line: 801, baseType: !507, size: 64, offset: 1216)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1474, file: !38, line: 804, baseType: !842, size: 64, offset: 1280)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1474, file: !38, line: 806, baseType: !125, size: 32, offset: 1344)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1474, file: !38, line: 808, baseType: !387, size: 32, offset: 1376)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1474, file: !38, line: 823, baseType: !1051, size: 320, offset: 1408)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1474, file: !38, line: 825, baseType: !357, size: 128, offset: 1728)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1474, file: !38, line: 845, baseType: !125, size: 32, offset: 1856)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1474, file: !38, line: 849, baseType: !507, size: 64, offset: 1920)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1474, file: !38, line: 850, baseType: !507, size: 64, offset: 1984)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1474, file: !38, line: 852, baseType: !507, size: 64, offset: 2048)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1474, file: !38, line: 853, baseType: !507, size: 64, offset: 2112)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1474, file: !38, line: 854, baseType: !844, size: 64, offset: 2176)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1474, file: !38, line: 855, baseType: !507, size: 64, offset: 2240)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1474, file: !38, line: 856, baseType: !507, size: 64, offset: 2304)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1474, file: !38, line: 857, baseType: !507, size: 64, offset: 2368)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1474, file: !38, line: 858, baseType: !507, size: 64, offset: 2432)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1474, file: !38, line: 865, baseType: !584, size: 32, offset: 2496)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1474, file: !38, line: 867, baseType: !387, size: 32, offset: 2528)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1474, file: !38, line: 869, baseType: !507, size: 64, offset: 2560)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1474, file: !38, line: 869, baseType: !507, size: 64, offset: 2624)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1474, file: !38, line: 869, baseType: !507, size: 64, offset: 2688)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1474, file: !38, line: 869, baseType: !507, size: 64, offset: 2752)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1474, file: !38, line: 870, baseType: !507, size: 64, offset: 2816)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1474, file: !38, line: 870, baseType: !507, size: 64, offset: 2880)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1474, file: !38, line: 870, baseType: !507, size: 64, offset: 2944)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1474, file: !38, line: 871, baseType: !507, size: 64, offset: 3008)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1474, file: !38, line: 871, baseType: !507, size: 64, offset: 3072)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1474, file: !38, line: 871, baseType: !507, size: 64, offset: 3136)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1474, file: !38, line: 871, baseType: !507, size: 64, offset: 3200)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1474, file: !38, line: 873, baseType: !2333, size: 3328, offset: 3264)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 3328, elements: !2334)
!2334 = !{!2335}
!2335 = !DISubrange(count: 52)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1474, file: !38, line: 875, baseType: !2337, size: 1280, offset: 6592)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1763, size: 1280, elements: !1546)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1474, file: !38, line: 877, baseType: !2339, size: 64, offset: 7872)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1474, file: !38, line: 880, baseType: !2342, size: 1088, offset: 7936)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2343, line: 72, baseType: !2344)
!2343 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2343, line: 23, size: 1088, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2353, !2354, !2355, !2356, !2383, !2384, !2385}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2344, file: !2343, line: 28, baseType: !611, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2344, file: !2343, line: 38, baseType: !844, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2344, file: !2343, line: 40, baseType: !507, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2344, file: !2343, line: 43, baseType: !1051, size: 320, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2344, file: !2343, line: 44, baseType: !2351, size: 64, offset: 512)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2343, line: 44, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2344, file: !2343, line: 48, baseType: !507, size: 64, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !2343, line: 59, baseType: !838, size: 256, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2344, file: !2343, line: 60, baseType: !529, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2344, file: !2343, line: 61, baseType: !2357, size: 64, offset: 960)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2359)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2360, line: 13, size: 1216, elements: !2361)
!2360 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2359, file: !2360, line: 14, baseType: !529, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2359, file: !2360, line: 15, baseType: !507, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2359, file: !2360, line: 17, baseType: !507, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2359, file: !2360, line: 17, baseType: !507, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2359, file: !2360, line: 18, baseType: !507, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2359, file: !2360, line: 18, baseType: !507, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2359, file: !2360, line: 19, baseType: !2369, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2359, file: !2360, line: 21, baseType: !493, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2359, file: !2360, line: 23, baseType: !493, size: 64, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2359, file: !2360, line: 24, baseType: !493, size: 64, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2359, file: !2360, line: 25, baseType: !493, size: 64, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2359, file: !2360, line: 26, baseType: !493, size: 64, offset: 704)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2359, file: !2360, line: 27, baseType: !493, size: 64, offset: 768)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2359, file: !2360, line: 28, baseType: !493, size: 64, offset: 832)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2359, file: !2360, line: 29, baseType: !493, size: 64, offset: 896)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2359, file: !2360, line: 30, baseType: !493, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2359, file: !2360, line: 31, baseType: !493, size: 64, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2359, file: !2360, line: 32, baseType: !493, size: 64, offset: 1088)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2359, file: !2360, line: 33, baseType: !493, size: 64, offset: 1152)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2344, file: !2343, line: 63, baseType: !407, size: 32, offset: 1024)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2344, file: !2343, line: 69, baseType: !425, size: 16, offset: 1056)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2344, file: !2343, line: 70, baseType: !2386, size: 16, offset: 1072)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !416, line: 18, baseType: !2387)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !418, line: 23, baseType: !1674)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !38, line: 882, baseType: !507, size: 64, offset: 9024)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1474, file: !38, line: 885, baseType: !387, size: 32, offset: 9088)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1474, file: !38, line: 886, baseType: !2391, size: 64, offset: 9152)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1474, file: !38, line: 901, baseType: !1587, size: 64, offset: 9216)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1474, file: !38, line: 904, baseType: !1497, size: 64, offset: 9280)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1474, file: !38, line: 906, baseType: !2396, size: 64, offset: 9344)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1474, file: !38, line: 930, baseType: !407, size: 32, offset: 9408)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1474, file: !38, line: 933, baseType: !407, size: 32, offset: 9440)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1474, file: !38, line: 935, baseType: !2401, size: 64, offset: 9472)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2402)
!2402 = !{!2403}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2401, file: !68, line: 104, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1474, file: !38, line: 940, baseType: !842, size: 64, offset: 9536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1474, file: !38, line: 942, baseType: !2408, size: 256, offset: 9600)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2409, line: 98, size: 256, elements: !2410)
!2409 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2410 = !{!2411, !2412, !2413}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2408, file: !2409, line: 99, baseType: !842, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2408, file: !2409, line: 100, baseType: !357, size: 128, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2408, file: !2409, line: 101, baseType: !2414, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2409, line: 21, baseType: !2415)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1471, file: !38, line: 986, baseType: !2420, offset: 10240)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, elements: !1606)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1167, file: !813, line: 882, baseType: !1470, size: 64, offset: 9792)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1167, file: !813, line: 884, baseType: !125, size: 32, offset: 9856)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1167, file: !813, line: 885, baseType: !125, size: 32, offset: 9888)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1167, file: !813, line: 886, baseType: !125, size: 32, offset: 9920)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1167, file: !813, line: 888, baseType: !125, size: 32, offset: 9952)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1167, file: !813, line: 890, baseType: !507, size: 64, offset: 9984)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1167, file: !813, line: 893, baseType: !7, size: 32, offset: 10048)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1167, file: !813, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1167, file: !813, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1167, file: !813, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1167, file: !813, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1167, file: !813, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1167, file: !813, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1167, file: !813, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1167, file: !813, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1167, file: !813, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1167, file: !813, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1167, file: !813, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1167, file: !813, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1167, file: !813, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1167, file: !813, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1167, file: !813, line: 969, baseType: !507, size: 64, offset: 10176)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1167, file: !813, line: 971, baseType: !2444, size: 448, offset: 10240)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2445)
!2445 = !{!2446, !2447, !2452}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2444, file: !62, line: 26, baseType: !507, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2444, file: !62, line: 27, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!493, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, scope: !2444, file: !62, line: 28, baseType: !2453, size: 320, offset: 128)
!2453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2444, file: !62, line: 28, size: 320, elements: !2454)
!2454 = !{!2455, !2465, !2490}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2453, file: !62, line: 37, baseType: !2456, size: 320)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2453, file: !62, line: 30, size: 320, elements: !2457)
!2457 = !{!2458, !2460, !2461, !2462, !2463, !2464}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2456, file: !62, line: 31, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2456, file: !62, line: 32, baseType: !607, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2456, file: !62, line: 33, baseType: !607, size: 32, offset: 96)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2456, file: !62, line: 34, baseType: !607, size: 32, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2456, file: !62, line: 35, baseType: !611, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2456, file: !62, line: 36, baseType: !2459, size: 64, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2453, file: !62, line: 47, baseType: !2466, size: 192)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2453, file: !62, line: 39, size: 192, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2489}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2466, file: !62, line: 40, baseType: !1341, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2466, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, scope: !2466, file: !62, line: 42, baseType: !2471, size: 64, offset: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2466, file: !62, line: 42, size: 64, elements: !2472)
!2472 = !{!2473, !2481}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2471, file: !62, line: 43, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2476, line: 7, size: 128, elements: !2477)
!2476 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2477 = !{!2478, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2475, file: !2476, line: 8, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !491, line: 93, baseType: !701)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2475, file: !2476, line: 9, baseType: !701, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2471, file: !62, line: 44, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2484, line: 7, size: 64, elements: !2485)
!2484 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2485 = !{!2486, !2488}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2483, file: !2484, line: 8, baseType: !2487, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2484, line: 5, baseType: !1648)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2483, file: !2484, line: 9, baseType: !1648, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2466, file: !62, line: 46, baseType: !611, size: 64, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2453, file: !62, line: 55, baseType: !2491, size: 256)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2453, file: !62, line: 49, size: 256, elements: !2492)
!2492 = !{!2493, !2496, !2497, !2498, !2499}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2491, file: !62, line: 50, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2491, file: !62, line: 51, baseType: !125, size: 32, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2491, file: !62, line: 52, baseType: !125, size: 32, offset: 96)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2491, file: !62, line: 53, baseType: !507, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2491, file: !62, line: 54, baseType: !507, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1167, file: !813, line: 973, baseType: !2501, size: 32, offset: 10688)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !358, line: 27, baseType: !2502)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !491, line: 28, baseType: !125)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1167, file: !813, line: 974, baseType: !2501, size: 32, offset: 10720)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1167, file: !813, line: 978, baseType: !507, size: 64, offset: 10752)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1167, file: !813, line: 987, baseType: !1166, size: 64, offset: 10816)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1167, file: !813, line: 990, baseType: !1166, size: 64, offset: 10880)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1167, file: !813, line: 995, baseType: !357, size: 128, offset: 10944)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1167, file: !813, line: 996, baseType: !357, size: 128, offset: 11072)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1167, file: !813, line: 997, baseType: !1166, size: 64, offset: 11200)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1167, file: !813, line: 1005, baseType: !357, size: 128, offset: 11264)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1167, file: !813, line: 1006, baseType: !357, size: 128, offset: 11392)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1167, file: !813, line: 1009, baseType: !1538, size: 64, offset: 11520)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1167, file: !813, line: 1010, baseType: !2514, size: 512, offset: 11584)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 512, elements: !1546)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1167, file: !813, line: 1011, baseType: !357, size: 128, offset: 12096)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1167, file: !813, line: 1012, baseType: !357, size: 128, offset: 12224)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1167, file: !813, line: 1014, baseType: !2518, size: 64, offset: 12352)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1167, file: !813, line: 1017, baseType: !805, size: 64, offset: 12416)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1167, file: !813, line: 1020, baseType: !805, size: 64, offset: 12480)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1167, file: !813, line: 1023, baseType: !529, size: 64, offset: 12544)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1167, file: !813, line: 1025, baseType: !611, size: 64, offset: 12608)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1167, file: !813, line: 1026, baseType: !611, size: 64, offset: 12672)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1167, file: !813, line: 1031, baseType: !611, size: 64, offset: 12736)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1167, file: !813, line: 1032, baseType: !2526, size: 192, offset: 12800)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !813, line: 324, size: 192, elements: !2527)
!2527 = !{!2528, !2529, !2530}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2526, file: !813, line: 326, baseType: !611, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2526, file: !813, line: 327, baseType: !611, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2526, file: !813, line: 328, baseType: !851, size: 32, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1167, file: !813, line: 1041, baseType: !507, size: 64, offset: 12992)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1167, file: !813, line: 1042, baseType: !507, size: 64, offset: 13056)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1167, file: !813, line: 1045, baseType: !611, size: 64, offset: 13120)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1167, file: !813, line: 1048, baseType: !611, size: 64, offset: 13184)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1167, file: !813, line: 1051, baseType: !507, size: 64, offset: 13248)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1167, file: !813, line: 1052, baseType: !507, size: 64, offset: 13312)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1167, file: !813, line: 1055, baseType: !2538, size: 640, offset: 13376)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2539, line: 132, size: 640, elements: !2540)
!2539 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2540 = !{!2541, !2547, !2548}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2538, file: !2539, line: 133, baseType: !2542, size: 576)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2543, size: 576, elements: !458)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2539, line: 117, size: 192, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2543, file: !2539, line: 118, baseType: !611, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2543, file: !2539, line: 119, baseType: !1350, size: 128, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2538, file: !2539, line: 134, baseType: !7, size: 32, offset: 576)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2538, file: !2539, line: 135, baseType: !7, size: 32, offset: 608)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1167, file: !813, line: 1058, baseType: !2550, size: 448, offset: 14016)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2539, line: 144, size: 448, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2550, file: !2539, line: 145, baseType: !1151, size: 128, align: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2550, file: !2539, line: 146, baseType: !838, size: 256, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2550, file: !2539, line: 147, baseType: !7, size: 32, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1167, file: !813, line: 1064, baseType: !1613, size: 64, offset: 14464)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1167, file: !813, line: 1067, baseType: !1613, size: 64, offset: 14528)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1167, file: !813, line: 1070, baseType: !1613, size: 64, offset: 14592)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1167, file: !813, line: 1074, baseType: !1640, size: 64, offset: 14656)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1167, file: !813, line: 1084, baseType: !2560, size: 128, offset: 14720)
!2560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 128, elements: !2561)
!2561 = !{!2562}
!2562 = !DISubrange(count: 16)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1167, file: !813, line: 1086, baseType: !2564, size: 64, offset: 14848)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !813, line: 55, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1167, file: !813, line: 1089, baseType: !2567, size: 64, offset: 14912)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2568, line: 12, size: 64, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2569 = !{!2570}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2567, file: !2568, line: 13, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2568, line: 8, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1167, file: !813, line: 1090, baseType: !2574, size: 128, offset: 14976)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2575, line: 13, size: 128, elements: !2576)
!2575 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2574, file: !2575, line: 14, baseType: !357, size: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1167, file: !813, line: 1097, baseType: !2579, size: 64, offset: 15104)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !813, line: 50, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1167, file: !813, line: 1100, baseType: !2582, size: 64, offset: 15168)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !813, line: 1100, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1167, file: !813, line: 1103, baseType: !2585, size: 64, offset: 15232)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !813, line: 53, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1167, file: !813, line: 1107, baseType: !2588, size: 64, offset: 15296)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2590, line: 31, size: 576, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2591 = !{!2592, !2593, !2596, !2599, !2602, !2603, !2606, !2609, !2610}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2589, file: !2590, line: 32, baseType: !1180, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2589, file: !2590, line: 33, baseType: !2594, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2590, line: 9, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2589, file: !2590, line: 34, baseType: !2597, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2590, line: 10, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2589, file: !2590, line: 35, baseType: !2600, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2590, line: 8, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2589, file: !2590, line: 36, baseType: !1557, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2589, file: !2590, line: 37, baseType: !2604, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1642, line: 34, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2589, file: !2590, line: 38, baseType: !2607, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2590, line: 38, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2589, file: !2590, line: 39, baseType: !2607, size: 64, offset: 448)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2589, file: !2590, line: 40, baseType: !2611, size: 64, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2590, line: 12, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1167, file: !813, line: 1110, baseType: !2614, size: 64, offset: 15360)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2616, line: 93, size: 8768, elements: !2617)
!2616 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2667, !2676, !2677, !2679, !2680, !2681, !2684, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2722, !2723, !2730, !2740, !2743, !2744, !2747, !2748, !2749, !2750, !2751, !2752}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2615, file: !2616, line: 94, baseType: !1180, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2615, file: !2616, line: 95, baseType: !407, size: 32, offset: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2615, file: !2616, line: 96, baseType: !125, size: 32, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2615, file: !2616, line: 97, baseType: !125, size: 32, offset: 96)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2615, file: !2616, line: 98, baseType: !357, size: 128, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2615, file: !2616, line: 100, baseType: !1144, size: 192, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2615, file: !2616, line: 103, baseType: !1166, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2615, file: !2616, line: 106, baseType: !2626, size: 192, offset: 512)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1592, line: 32, size: 192, elements: !2627)
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2626, file: !1592, line: 33, baseType: !357, size: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2626, file: !1592, line: 34, baseType: !2630, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2631, line: 25, baseType: !2632)
!2631 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2631, line: 23, size: 64, elements: !2633)
!2633 = !{!2634}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2632, file: !2631, line: 24, baseType: !1421, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2615, file: !2616, line: 109, baseType: !730, size: 64, offset: 704)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2615, file: !2616, line: 112, baseType: !125, size: 32, offset: 768)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2615, file: !2616, line: 114, baseType: !125, size: 32, offset: 800)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2615, file: !2616, line: 115, baseType: !1166, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2615, file: !2616, line: 118, baseType: !125, size: 32, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2615, file: !2616, line: 119, baseType: !7, size: 32, offset: 928)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2615, file: !2616, line: 121, baseType: !2642, size: 64, offset: 960)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2616, line: 80, size: 448, elements: !2644)
!2644 = !{!2645, !2646, !2652}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2643, file: !2616, line: 81, baseType: !407, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2643, file: !2616, line: 82, baseType: !2647, size: 128, offset: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2616, line: 75, size: 128, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2647, file: !2616, line: 76, baseType: !1166, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2647, file: !2616, line: 77, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2643, file: !2616, line: 83, baseType: !2092, size: 256, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2615, file: !2616, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2615, file: !2616, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2615, file: !2616, line: 138, baseType: !7, size: 32, offset: 1056)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2615, file: !2616, line: 139, baseType: !357, size: 128, offset: 1088)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2615, file: !2616, line: 142, baseType: !1294, size: 512, offset: 1216)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2615, file: !2616, line: 143, baseType: !1302, size: 64, offset: 1728)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2615, file: !2616, line: 150, baseType: !2660, size: 256, offset: 1792)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2661, size: 256, elements: !2665)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2616, line: 38, size: 128, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2661, file: !2616, line: 39, baseType: !611, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2661, file: !2616, line: 40, baseType: !611, size: 64, offset: 64)
!2665 = !{!2666}
!2666 = !DISubrange(count: 2)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2615, file: !2616, line: 156, baseType: !2668, size: 192, offset: 2048)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2616, line: 66, size: 192, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2668, file: !2616, line: 67, baseType: !2671, size: 192)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2616, line: 47, size: 192, elements: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2671, file: !2616, line: 48, baseType: !844, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2671, file: !2616, line: 49, baseType: !844, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2671, file: !2616, line: 50, baseType: !844, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2615, file: !2616, line: 160, baseType: !2538, size: 640, offset: 2240)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2615, file: !2616, line: 163, baseType: !2678, size: 256, offset: 2880)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1538, size: 256, elements: !1546)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2615, file: !2616, line: 169, baseType: !1538, size: 64, offset: 3136)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2615, file: !2616, line: 172, baseType: !125, size: 32, offset: 3200)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2615, file: !2616, line: 174, baseType: !2682, size: 64, offset: 3264)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2616, line: 174, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2615, file: !2616, line: 185, baseType: !2685, size: 64, offset: 3328)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !580, line: 860, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 853, size: 64, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2686, file: !580, line: 858, baseType: !579, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2686, file: !580, line: 859, baseType: !387, size: 32, offset: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2615, file: !2616, line: 186, baseType: !611, size: 64, offset: 3392)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2615, file: !2616, line: 186, baseType: !611, size: 64, offset: 3456)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2615, file: !2616, line: 186, baseType: !611, size: 64, offset: 3520)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2615, file: !2616, line: 186, baseType: !611, size: 64, offset: 3584)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2615, file: !2616, line: 187, baseType: !611, size: 64, offset: 3648)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2615, file: !2616, line: 188, baseType: !611, size: 64, offset: 3712)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2615, file: !2616, line: 189, baseType: !2526, size: 192, offset: 3776)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2615, file: !2616, line: 190, baseType: !507, size: 64, offset: 3968)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2615, file: !2616, line: 190, baseType: !507, size: 64, offset: 4032)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2615, file: !2616, line: 190, baseType: !507, size: 64, offset: 4096)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2615, file: !2616, line: 190, baseType: !507, size: 64, offset: 4160)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2615, file: !2616, line: 191, baseType: !507, size: 64, offset: 4224)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2615, file: !2616, line: 191, baseType: !507, size: 64, offset: 4288)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2615, file: !2616, line: 191, baseType: !507, size: 64, offset: 4352)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2615, file: !2616, line: 191, baseType: !507, size: 64, offset: 4416)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2615, file: !2616, line: 192, baseType: !507, size: 64, offset: 4480)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2615, file: !2616, line: 192, baseType: !507, size: 64, offset: 4544)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2615, file: !2616, line: 192, baseType: !507, size: 64, offset: 4608)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2615, file: !2616, line: 192, baseType: !507, size: 64, offset: 4672)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2615, file: !2616, line: 193, baseType: !507, size: 64, offset: 4736)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2615, file: !2616, line: 193, baseType: !507, size: 64, offset: 4800)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2615, file: !2616, line: 194, baseType: !2712, size: 448, offset: 4864)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2713, line: 12, size: 448, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2712, file: !2713, line: 15, baseType: !611, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2712, file: !2713, line: 17, baseType: !611, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2712, file: !2713, line: 19, baseType: !611, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2712, file: !2713, line: 21, baseType: !611, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2712, file: !2713, line: 29, baseType: !611, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2712, file: !2713, line: 35, baseType: !611, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2712, file: !2713, line: 44, baseType: !611, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2615, file: !2616, line: 202, baseType: !613, size: 64, offset: 5312)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2615, file: !2616, line: 213, baseType: !2724, size: 2048, offset: 5376)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2725, size: 2048, elements: !2561)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2726, line: 43, size: 128, elements: !2727)
!2726 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2725, file: !2726, line: 44, baseType: !506, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2725, file: !2726, line: 45, baseType: !506, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2615, file: !2616, line: 216, baseType: !2731, size: 448, offset: 7424)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2616, line: 30, size: 448, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738, !2739}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2731, file: !2616, line: 31, baseType: !125, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2731, file: !2616, line: 32, baseType: !493, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2731, file: !2616, line: 33, baseType: !507, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2731, file: !2616, line: 34, baseType: !611, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2731, file: !2616, line: 34, baseType: !611, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2731, file: !2616, line: 35, baseType: !507, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2731, file: !2616, line: 35, baseType: !507, size: 64, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2615, file: !2616, line: 219, baseType: !2741, size: 64, offset: 7872)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2616, line: 219, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2615, file: !2616, line: 222, baseType: !7, size: 32, offset: 7936)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2615, file: !2616, line: 223, baseType: !2745, size: 64, offset: 8000)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2616, line: 223, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2615, file: !2616, line: 230, baseType: !1705, size: 8, offset: 8064)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2615, file: !2616, line: 231, baseType: !1674, size: 16, offset: 8080)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2615, file: !2616, line: 232, baseType: !1674, size: 16, offset: 8096)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2615, file: !2616, line: 234, baseType: !1470, size: 64, offset: 8128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2615, file: !2616, line: 237, baseType: !838, size: 256, offset: 8192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2615, file: !2616, line: 243, baseType: !1051, size: 320, offset: 8448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1167, file: !813, line: 1111, baseType: !2754, size: 64, offset: 15424)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2616, line: 20, size: 16640, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2755, file: !2616, line: 21, baseType: !387, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2755, file: !2616, line: 22, baseType: !1180, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2755, file: !2616, line: 23, baseType: !1144, size: 192, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2755, file: !2616, line: 24, baseType: !2761, size: 16384, offset: 256)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 16384, elements: !462)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1592, line: 51, size: 256, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2762, file: !1592, line: 52, baseType: !2765, size: 256)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1592, line: 37, size: 256, elements: !2766)
!2766 = !{!2767, !2774, !2775, !2781}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2765, file: !1592, line: 39, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2769, line: 83, baseType: !2770)
!2769 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2769, line: 82, baseType: !2772)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !125}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2765, file: !1592, line: 40, baseType: !507, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2765, file: !1592, line: 46, baseType: !2776, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2769, line: 86, baseType: !2777)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2769, line: 85, baseType: !2779)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2765, file: !1592, line: 48, baseType: !2630, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1167, file: !813, line: 1112, baseType: !2630, size: 64, offset: 15488)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1167, file: !813, line: 1113, baseType: !2630, size: 64, offset: 15552)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1167, file: !813, line: 1115, baseType: !2630, size: 64, offset: 15616)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1167, file: !813, line: 1116, baseType: !2626, size: 192, offset: 15680)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1167, file: !813, line: 1117, baseType: !507, size: 64, offset: 15872)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1167, file: !813, line: 1118, baseType: !504, size: 64, offset: 15936)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1167, file: !813, line: 1119, baseType: !7, size: 32, offset: 16000)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1167, file: !813, line: 1121, baseType: !1154, size: 64, offset: 16064)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1167, file: !813, line: 1125, baseType: !2791, size: 64, offset: 16128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !813, line: 43, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1167, file: !813, line: 1127, baseType: !544, size: 32, offset: 16192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1167, file: !813, line: 1128, baseType: !7, size: 32, offset: 16224)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1167, file: !813, line: 1130, baseType: !2796, size: 128, offset: 16256)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2797, line: 37, size: 128, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2798 = !{!2799, !2800, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2796, file: !2797, line: 38, baseType: !125, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2796, file: !2797, line: 39, baseType: !407, size: 32, offset: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2796, file: !2797, line: 40, baseType: !2802, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2797, line: 24, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1167, file: !813, line: 1131, baseType: !2805, size: 256, offset: 16384)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2806, line: 12, size: 256, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2807 = !{!2808, !2809, !2810, !2811}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2805, file: !2806, line: 13, baseType: !457, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2805, file: !2806, line: 14, baseType: !507, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2805, file: !2806, line: 15, baseType: !507, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2805, file: !2806, line: 16, baseType: !1705, size: 8, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1167, file: !813, line: 1134, baseType: !611, size: 64, offset: 16640)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1167, file: !813, line: 1135, baseType: !611, size: 64, offset: 16704)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1167, file: !813, line: 1138, baseType: !387, size: 32, offset: 16768)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1167, file: !813, line: 1141, baseType: !851, size: 32, offset: 16800)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1167, file: !813, line: 1143, baseType: !2817, size: 64, offset: 16832)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !813, line: 735, size: 64, elements: !2818)
!2818 = !{!2819}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2817, file: !813, line: 736, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1167, file: !813, line: 1147, baseType: !1353, size: 128, offset: 16896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1167, file: !813, line: 1149, baseType: !1166, size: 64, offset: 17024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1167, file: !813, line: 1151, baseType: !2824, size: 64, offset: 17088)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !813, line: 1151, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1167, file: !813, line: 1188, baseType: !529, size: 64, offset: 17152)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1167, file: !813, line: 1191, baseType: !2828, size: 64, offset: 17216)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !813, line: 44, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1167, file: !813, line: 1194, baseType: !2831, size: 64, offset: 17280)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !813, line: 45, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1167, file: !813, line: 1197, baseType: !2834, size: 64, offset: 17344)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !813, line: 61, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1167, file: !813, line: 1199, baseType: !2837, size: 64, offset: 17408)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2839, line: 99, size: 128, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2840 = !{!2841, !2842, !2843}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2838, file: !2839, line: 100, baseType: !842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2838, file: !2839, line: 101, baseType: !407, size: 32, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2838, file: !2839, line: 103, baseType: !427, size: 16, offset: 96)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1167, file: !813, line: 1202, baseType: !2845, size: 64, offset: 17472)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !813, line: 48, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1167, file: !813, line: 1205, baseType: !507, size: 64, offset: 17536)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1167, file: !813, line: 1206, baseType: !2849, size: 64, offset: 17600)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1592, line: 14, baseType: !2851)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1592, line: 12, size: 384, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !2851, file: !1592, line: 13, baseType: !2854, size: 384)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2851, file: !1592, line: 13, size: 384, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2854, file: !1592, line: 13, baseType: !125, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2854, file: !1592, line: 13, baseType: !125, size: 32, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2854, file: !1592, line: 13, baseType: !125, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2854, file: !1592, line: 13, baseType: !2860, size: 256, offset: 128)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2861, line: 37, size: 256, elements: !2862)
!2861 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2862 = !{!2863, !2868, !2881, !2887, !2896, !2923, !2928}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2860, file: !2861, line: 42, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 39, size: 64, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2864, file: !2861, line: 40, baseType: !2502, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2864, file: !2861, line: 41, baseType: !550, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2860, file: !2861, line: 50, baseType: !2869, size: 192)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 45, size: 192, elements: !2870)
!2870 = !{!2871, !2873, !2874, !2880}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2869, file: !2861, line: 46, baseType: !2872, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !491, line: 95, baseType: !125)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2869, file: !2861, line: 47, baseType: !125, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2869, file: !2861, line: 48, baseType: !2875, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2861, line: 11, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2861, line: 8, size: 64, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2876, file: !2861, line: 9, baseType: !125, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2876, file: !2861, line: 10, baseType: !529, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2869, file: !2861, line: 49, baseType: !125, size: 32, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2860, file: !2861, line: 57, baseType: !2882, size: 128)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 53, size: 128, elements: !2883)
!2883 = !{!2884, !2885, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2882, file: !2861, line: 54, baseType: !2502, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2882, file: !2861, line: 55, baseType: !550, size: 32, offset: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2882, file: !2861, line: 56, baseType: !2875, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2860, file: !2861, line: 66, baseType: !2888, size: 256)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 60, size: 256, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893, !2895}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2888, file: !2861, line: 61, baseType: !2502, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2888, file: !2861, line: 62, baseType: !550, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2888, file: !2861, line: 63, baseType: !125, size: 32, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2888, file: !2861, line: 64, baseType: !2894, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !491, line: 94, baseType: !492)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2888, file: !2861, line: 65, baseType: !2894, size: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2860, file: !2861, line: 105, baseType: !2897, size: 256)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 69, size: 256, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2897, file: !2861, line: 70, baseType: !529, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2897, file: !2861, line: 79, baseType: !2901, size: 192, offset: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2897, file: !2861, line: 79, size: 192, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2912, !2917}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2901, file: !2861, line: 81, baseType: !125, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2901, file: !2861, line: 86, baseType: !1674, size: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2901, file: !2861, line: 92, baseType: !2906, size: 192)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2861, line: 88, size: 192, elements: !2907)
!2907 = !{!2908, !2910, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2906, file: !2861, line: 89, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 64, elements: !1337)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2906, file: !2861, line: 90, baseType: !529, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2906, file: !2861, line: 91, baseType: !529, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2901, file: !2861, line: 97, baseType: !2913, size: 96)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2861, line: 94, size: 96, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2913, file: !2861, line: 95, baseType: !2909, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2913, file: !2861, line: 96, baseType: !608, size: 32, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2901, file: !2861, line: 103, baseType: !2918, size: 128)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2861, line: 99, size: 128, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2918, file: !2861, line: 100, baseType: !507, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2918, file: !2861, line: 101, baseType: !608, size: 32, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2918, file: !2861, line: 102, baseType: !608, size: 32, offset: 96)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2860, file: !2861, line: 111, baseType: !2924, size: 128)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 108, size: 128, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2924, file: !2861, line: 109, baseType: !493, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2924, file: !2861, line: 110, baseType: !125, size: 32, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2860, file: !2861, line: 118, baseType: !2929, size: 128)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !2861, line: 114, size: 128, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2929, file: !2861, line: 115, baseType: !529, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2929, file: !2861, line: 116, baseType: !125, size: 32, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2929, file: !2861, line: 117, baseType: !7, size: 32, offset: 96)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1167, file: !813, line: 1208, baseType: !2712, size: 448, offset: 17664)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1167, file: !813, line: 1215, baseType: !611, size: 64, offset: 18112)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1167, file: !813, line: 1217, baseType: !611, size: 64, offset: 18176)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1167, file: !813, line: 1219, baseType: !611, size: 64, offset: 18240)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1167, file: !813, line: 1223, baseType: !2939, size: 64, offset: 18304)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2940, line: 99, baseType: !2941)
!2940 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2940, line: 99, size: 64, elements: !2942)
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2941, file: !2940, line: 99, baseType: !1421, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1167, file: !813, line: 1225, baseType: !579, size: 32, offset: 18368)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1167, file: !813, line: 1226, baseType: !125, size: 32, offset: 18400)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1167, file: !813, line: 1227, baseType: !125, size: 32, offset: 18432)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1167, file: !813, line: 1231, baseType: !2948, size: 64, offset: 18496)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !813, line: 1231, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1167, file: !813, line: 1233, baseType: !357, size: 128, offset: 18560)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1167, file: !813, line: 1240, baseType: !2952, size: 64, offset: 18688)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !813, line: 62, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1167, file: !813, line: 1242, baseType: !2955, size: 64, offset: 18752)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !813, line: 1242, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1167, file: !813, line: 1244, baseType: !357, size: 128, offset: 18816)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1167, file: !813, line: 1245, baseType: !2959, size: 64, offset: 18944)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !813, line: 51, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1167, file: !813, line: 1246, baseType: !838, size: 256, offset: 19008)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1167, file: !813, line: 1247, baseType: !7, size: 32, offset: 19264)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1167, file: !813, line: 1250, baseType: !2964, size: 64, offset: 19328)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !813, line: 57, flags: DIFlagFwdDecl)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1167, file: !813, line: 1251, baseType: !838, size: 256, offset: 19392)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1167, file: !813, line: 1252, baseType: !357, size: 128, offset: 19648)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1167, file: !813, line: 1259, baseType: !2178, size: 64, offset: 19776)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1167, file: !813, line: 1260, baseType: !1674, size: 16, offset: 19840)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1167, file: !813, line: 1261, baseType: !1674, size: 16, offset: 19856)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1167, file: !813, line: 1314, baseType: !2972, size: 64, offset: 19904)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2974, line: 62, size: 256, align: 256, elements: !2975)
!2974 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2975 = !{!2976, !2977, !2978, !2979, !2980, !2981, !2982}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2973, file: !2974, line: 75, baseType: !608, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2973, file: !2974, line: 90, baseType: !608, size: 32, offset: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2973, file: !2974, line: 112, baseType: !612, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2973, file: !2974, line: 132, baseType: !608, size: 32, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2973, file: !2974, line: 140, baseType: !608, size: 32, offset: 160)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2973, file: !2974, line: 149, baseType: !608, size: 32, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2973, file: !2974, line: 154, baseType: !2983, offset: 224)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, elements: !1606)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1167, file: !813, line: 1315, baseType: !607, size: 32, offset: 19968)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1167, file: !813, line: 1316, baseType: !607, size: 32, offset: 20000)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1167, file: !813, line: 1321, baseType: !507, size: 64, offset: 20032)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1167, file: !813, line: 1325, baseType: !125, size: 32, offset: 20096)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1167, file: !813, line: 1326, baseType: !125, size: 32, offset: 20128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1167, file: !813, line: 1327, baseType: !125, size: 32, offset: 20160)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1167, file: !813, line: 1328, baseType: !125, size: 32, offset: 20192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1167, file: !813, line: 1329, baseType: !1151, size: 128, align: 64, offset: 20224)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1167, file: !813, line: 1332, baseType: !2993, size: 128, offset: 20352)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2994, line: 51, size: 128, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2995 = !{!2996, !3001, !3002}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2993, file: !2994, line: 60, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2998, line: 7, size: 64, elements: !2999)
!2998 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2997, file: !2998, line: 12, baseType: !1418, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2993, file: !2994, line: 63, baseType: !1705, size: 8, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2993, file: !2994, line: 70, baseType: !1705, size: 8, offset: 72)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1167, file: !813, line: 1335, baseType: !2230, size: 64, offset: 20480)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1167, file: !813, line: 1337, baseType: !3005, size: 128, offset: 20544)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2994, line: 39, size: 128, elements: !3006)
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3005, file: !2994, line: 40, baseType: !2007, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3005, file: !2994, line: 42, baseType: !608, size: 32, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3005, file: !2994, line: 43, baseType: !608, size: 32, offset: 96)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1167, file: !813, line: 1340, baseType: !3011, size: 64, offset: 20672)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !813, line: 69, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1167, file: !813, line: 1351, baseType: !125, size: 32, offset: 20736)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1167, file: !813, line: 1352, baseType: !125, size: 32, offset: 20768)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1167, file: !813, line: 1354, baseType: !507, size: 64, offset: 20800)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1167, file: !813, line: 1364, baseType: !611, size: 64, offset: 20864)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1167, file: !813, line: 1365, baseType: !611, size: 64, offset: 20928)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1167, file: !813, line: 1412, baseType: !507, size: 64, offset: 20992)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1167, file: !813, line: 1453, baseType: !3020, size: 64, offset: 21056)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !813, line: 1453, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1167, file: !813, line: 1457, baseType: !3023, size: 64, offset: 21120)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3025)
!3025 = !{!3026, !3027, !3046, !3049, !3050, !3083, !3093}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3024, file: !68, line: 62, baseType: !67, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !68, line: 64, baseType: !3028, size: 192, offset: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3024, file: !68, line: 64, size: 192, elements: !3029)
!3029 = !{!3030, !3041}
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !68, line: 65, baseType: !3031, size: 192)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3028, file: !68, line: 65, size: 192, elements: !3032)
!3032 = !{!3033, !3040}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3031, file: !68, line: 66, baseType: !3034, size: 128)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3035, line: 50, size: 128, elements: !3036)
!3035 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3034, file: !3035, line: 52, baseType: !507, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3034, file: !3035, line: 54, baseType: !7, size: 32, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3034, file: !3035, line: 55, baseType: !7, size: 32, offset: 96)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3031, file: !68, line: 67, baseType: !507, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !68, line: 70, baseType: !3042, size: 192)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3028, file: !68, line: 70, size: 192, elements: !3043)
!3043 = !{!3044, !3045}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3042, file: !68, line: 71, baseType: !1151, size: 128, align: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3042, file: !68, line: 72, baseType: !507, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3024, file: !68, line: 76, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3024, file: !68, line: 77, baseType: !507, size: 64, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3024, file: !68, line: 79, baseType: !3051, size: 64, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3035, line: 25, size: 256, elements: !3053)
!3053 = !{!3054, !3060, !3064}
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !3052, file: !3035, line: 26, baseType: !3055, size: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3052, file: !3035, line: 26, size: 128, elements: !3056)
!3056 = !{!3057, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3055, file: !3035, line: 27, baseType: !3058, size: 128)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 128, elements: !2561)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3055, file: !3035, line: 28, baseType: !3058, size: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3052, file: !3035, line: 31, baseType: !3061, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3035, line: 23, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3052, file: !3035, line: 33, baseType: !3065, size: 64, offset: 192)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3052, file: !3035, line: 33, size: 64, elements: !3066)
!3066 = !{!3067, !3073, !3078}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3065, file: !3035, line: 38, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3035, line: 34, size: 64, elements: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3068, file: !3035, line: 35, baseType: !1648, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3068, file: !3035, line: 36, baseType: !415, size: 8, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3068, file: !3035, line: 37, baseType: !415, size: 8, offset: 40)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3065, file: !3035, line: 42, baseType: !3074, size: 16)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3035, line: 39, size: 16, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3074, file: !3035, line: 40, baseType: !415, size: 8)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3074, file: !3035, line: 41, baseType: !415, size: 8, offset: 8)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3065, file: !3035, line: 46, baseType: !3079, size: 16)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3035, line: 43, size: 16, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3079, file: !3035, line: 44, baseType: !415, size: 8)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3079, file: !3035, line: 45, baseType: !415, size: 8, offset: 8)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3024, file: !68, line: 81, baseType: !3084, size: 64, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090, !3091, !3092}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3085, file: !68, line: 86, baseType: !3047, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3085, file: !68, line: 87, baseType: !507, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3085, file: !68, line: 88, baseType: !507, size: 64, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3085, file: !68, line: 89, baseType: !507, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3085, file: !68, line: 90, baseType: !1705, size: 8, offset: 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3085, file: !68, line: 92, baseType: !3084, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3024, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1167, file: !813, line: 1463, baseType: !3095, offset: 21184)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !813, line: 739, elements: !742)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1167, file: !813, line: 1470, baseType: !1151, size: 128, align: 64, offset: 21184)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1167, file: !813, line: 1471, baseType: !1180, size: 32, offset: 21312)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1167, file: !813, line: 1472, baseType: !125, size: 32, offset: 21344)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1167, file: !813, line: 1474, baseType: !1166, size: 64, offset: 21376)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1167, file: !813, line: 1475, baseType: !3101, size: 320, offset: 21440)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3102, line: 11, size: 320, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3103 = !{!3104, !3105, !3106, !3111}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3101, file: !3102, line: 16, baseType: !734, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3101, file: !3102, line: 17, baseType: !507, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3101, file: !3102, line: 18, baseType: !3107, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !3110}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3101, file: !3102, line: 19, baseType: !607, size: 32, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1167, file: !813, line: 1478, baseType: !3113, size: 64, offset: 21760)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1860, line: 49, size: 512, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3122, !3123, !3124, !3126}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3114, file: !1860, line: 50, baseType: !3113, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3114, file: !1860, line: 51, baseType: !529, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3114, file: !1860, line: 52, baseType: !507, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3114, file: !1860, line: 53, baseType: !507, size: 64, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3114, file: !1860, line: 54, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3114, file: !1860, line: 56, baseType: !7, size: 32, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3114, file: !1860, line: 58, baseType: !7, size: 32, offset: 352)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3114, file: !1860, line: 59, baseType: !3125, size: 64, offset: 384)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !358, line: 159, baseType: !611)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3114, file: !1860, line: 60, baseType: !2369, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1167, file: !813, line: 1482, baseType: !1180, size: 32, offset: 21824)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1167, file: !813, line: 1489, baseType: !529, size: 64, offset: 21888)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1167, file: !813, line: 1504, baseType: !529, size: 64, offset: 21952)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1167, file: !813, line: 1505, baseType: !612, size: 64, offset: 22016)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1167, file: !813, line: 1506, baseType: !611, size: 64, offset: 22080)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1167, file: !813, line: 1507, baseType: !612, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1167, file: !813, line: 1508, baseType: !612, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1167, file: !813, line: 1509, baseType: !612, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1167, file: !813, line: 1510, baseType: !1151, size: 128, align: 64, offset: 22208)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1167, file: !813, line: 1511, baseType: !125, size: 32, offset: 22336)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1167, file: !813, line: 1515, baseType: !3138, size: 64, offset: 22400)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1194, line: 56, size: 64, elements: !3139)
!3139 = !{!3140}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3138, file: !1194, line: 57, baseType: !1197, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1167, file: !813, line: 1518, baseType: !3138, size: 64, offset: 22464)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1167, file: !813, line: 1528, baseType: !1151, size: 128, align: 64, offset: 22528)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1167, file: !813, line: 1552, baseType: !3144, size: 35328, offset: 23040)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3145, line: 430, size: 35328, elements: !3146)
!3145 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3146 = !{!3147, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3176, !3177, !3178, !3179, !3180, !3181, !3184, !3185, !3186, !3187}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3144, file: !3145, line: 432, baseType: !3148, size: 192)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3149, size: 192, elements: !458)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3150, line: 16, size: 64, elements: !3151)
!3150 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3149, file: !3150, line: 17, baseType: !425, size: 16)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3149, file: !3150, line: 18, baseType: !425, size: 16, offset: 16)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3149, file: !3150, line: 19, baseType: !425, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3149, file: !3150, line: 19, baseType: !425, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3149, file: !3150, line: 19, baseType: !425, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3149, file: !3150, line: 19, baseType: !425, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3149, file: !3150, line: 19, baseType: !425, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3149, file: !3150, line: 20, baseType: !425, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3149, file: !3150, line: 20, baseType: !425, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3149, file: !3150, line: 20, baseType: !425, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3149, file: !3150, line: 20, baseType: !425, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3149, file: !3150, line: 20, baseType: !425, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3149, file: !3150, line: 20, baseType: !425, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3144, file: !3145, line: 436, baseType: !507, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3144, file: !3145, line: 440, baseType: !427, size: 16, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3144, file: !3145, line: 441, baseType: !427, size: 16, offset: 272)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3144, file: !3145, line: 442, baseType: !427, size: 16, offset: 288)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3144, file: !3145, line: 443, baseType: !427, size: 16, offset: 304)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3144, file: !3145, line: 447, baseType: !507, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3144, file: !3145, line: 448, baseType: !507, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3144, file: !3145, line: 459, baseType: !3173, size: 256, offset: 448)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3174, size: 256, elements: !1546)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3145, line: 428, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3144, file: !3145, line: 461, baseType: !507, size: 64, offset: 704)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3144, file: !3145, line: 463, baseType: !507, size: 64, offset: 768)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3144, file: !3145, line: 465, baseType: !507, size: 64, offset: 832)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3144, file: !3145, line: 466, baseType: !507, size: 64, offset: 896)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3144, file: !3145, line: 467, baseType: !507, size: 64, offset: 960)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3144, file: !3145, line: 473, baseType: !3182, size: 64, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3145, line: 10, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3144, file: !3145, line: 480, baseType: !507, size: 64, offset: 1088)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3144, file: !3145, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3144, file: !3145, line: 491, baseType: !607, size: 32, offset: 1184)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3144, file: !3145, line: 501, baseType: !3188, size: 33792, offset: 1536)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3189, line: 448, size: 33792, elements: !3190)
!3189 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3190 = !{!3191, !3192, !3193, !3355, !3356, !3362, !3363}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3188, file: !3189, line: 461, baseType: !7, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3188, file: !3189, line: 468, baseType: !507, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3188, file: !3189, line: 476, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3189, line: 356, size: 33280, align: 512, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3195, file: !3189, line: 358, baseType: !7, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3195, file: !3189, line: 361, baseType: !7, size: 32, offset: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3195, file: !3189, line: 364, baseType: !611, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3195, file: !3189, line: 367, baseType: !611, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3195, file: !3189, line: 370, baseType: !611, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3195, file: !3189, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3195, file: !3189, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3195, file: !3189, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3195, file: !3189, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3195, file: !3189, line: 397, baseType: !3207, size: 32768, offset: 512)
!3207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3189, line: 348, size: 32768, elements: !3208)
!3208 = !{!3209, !3224, !3261, !3338, !3351}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3207, file: !3189, line: 349, baseType: !3210, size: 896)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3189, line: 12, size: 896, elements: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3223}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3210, file: !3189, line: 13, baseType: !607, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3210, file: !3189, line: 14, baseType: !607, size: 32, offset: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3210, file: !3189, line: 15, baseType: !607, size: 32, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3210, file: !3189, line: 16, baseType: !607, size: 32, offset: 96)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3210, file: !3189, line: 17, baseType: !607, size: 32, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3210, file: !3189, line: 18, baseType: !607, size: 32, offset: 160)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3210, file: !3189, line: 19, baseType: !607, size: 32, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3210, file: !3189, line: 22, baseType: !3220, size: 640, offset: 224)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 640, elements: !3221)
!3221 = !{!3222}
!3222 = !DISubrange(count: 20)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3210, file: !3189, line: 25, baseType: !607, size: 32, offset: 864)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3207, file: !3189, line: 350, baseType: !3225, size: 4096, align: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3189, line: 34, size: 4096, align: 128, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3246, !3247, !3248, !3250, !3252, !3256}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3225, file: !3189, line: 35, baseType: !425, size: 16)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3225, file: !3189, line: 36, baseType: !425, size: 16, offset: 16)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3225, file: !3189, line: 37, baseType: !425, size: 16, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3225, file: !3189, line: 38, baseType: !425, size: 16, offset: 48)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !3189, line: 39, baseType: !3232, size: 128, offset: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !3189, line: 39, size: 128, elements: !3233)
!3233 = !{!3234, !3239}
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !3189, line: 40, baseType: !3235, size: 128)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3189, line: 40, size: 128, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3235, file: !3189, line: 41, baseType: !611, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3235, file: !3189, line: 42, baseType: !611, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !3189, line: 44, baseType: !3240, size: 128)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3189, line: 44, size: 128, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3245}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3240, file: !3189, line: 45, baseType: !607, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3240, file: !3189, line: 46, baseType: !607, size: 32, offset: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3240, file: !3189, line: 47, baseType: !607, size: 32, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3240, file: !3189, line: 48, baseType: !607, size: 32, offset: 96)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3225, file: !3189, line: 51, baseType: !607, size: 32, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3225, file: !3189, line: 52, baseType: !607, size: 32, offset: 224)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3225, file: !3189, line: 55, baseType: !3249, size: 1024, offset: 256)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 1024, elements: !620)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3225, file: !3189, line: 58, baseType: !3251, size: 2048, offset: 1280)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 2048, elements: !462)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3225, file: !3189, line: 60, baseType: !3253, size: 384, offset: 3328)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 384, elements: !3254)
!3254 = !{!3255}
!3255 = !DISubrange(count: 12)
!3256 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !3189, line: 62, baseType: !3257, size: 384, offset: 3712)
!3257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !3189, line: 62, size: 384, elements: !3258)
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3257, file: !3189, line: 63, baseType: !3253, size: 384)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3257, file: !3189, line: 64, baseType: !3253, size: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3207, file: !3189, line: 351, baseType: !3262, size: 1088)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3189, line: 79, size: 1088, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3337}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3262, file: !3189, line: 80, baseType: !607, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3262, file: !3189, line: 81, baseType: !607, size: 32, offset: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3262, file: !3189, line: 82, baseType: !607, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3262, file: !3189, line: 83, baseType: !607, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3262, file: !3189, line: 84, baseType: !607, size: 32, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3262, file: !3189, line: 85, baseType: !607, size: 32, offset: 160)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3262, file: !3189, line: 86, baseType: !607, size: 32, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3262, file: !3189, line: 88, baseType: !3220, size: 640, offset: 224)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3262, file: !3189, line: 89, baseType: !415, size: 8, offset: 864)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3262, file: !3189, line: 90, baseType: !415, size: 8, offset: 872)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3262, file: !3189, line: 91, baseType: !415, size: 8, offset: 880)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3262, file: !3189, line: 92, baseType: !415, size: 8, offset: 888)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3262, file: !3189, line: 93, baseType: !415, size: 8, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3262, file: !3189, line: 94, baseType: !415, size: 8, offset: 904)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3262, file: !3189, line: 95, baseType: !3279, size: 64, offset: 960)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3281, line: 11, size: 128, elements: !3282)
!3281 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3280, file: !3281, line: 12, baseType: !493, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3280, file: !3281, line: 13, baseType: !3285, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3287, line: 103, size: 1344, elements: !3288)
!3287 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3317, !3318, !3319}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3286, file: !3287, line: 109, baseType: !507, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3286, file: !3287, line: 110, baseType: !507, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3286, file: !3287, line: 111, baseType: !507, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3286, file: !3287, line: 112, baseType: !507, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3286, file: !3287, line: 113, baseType: !507, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3286, file: !3287, line: 114, baseType: !507, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3286, file: !3287, line: 117, baseType: !507, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3286, file: !3287, line: 118, baseType: !507, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3286, file: !3287, line: 119, baseType: !507, size: 64, offset: 512)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3286, file: !3287, line: 120, baseType: !507, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3286, file: !3287, line: 121, baseType: !507, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3286, file: !3287, line: 122, baseType: !507, size: 64, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3286, file: !3287, line: 123, baseType: !507, size: 64, offset: 768)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3286, file: !3287, line: 124, baseType: !507, size: 64, offset: 832)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3286, file: !3287, line: 125, baseType: !507, size: 64, offset: 896)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3286, file: !3287, line: 139, baseType: !507, size: 64, offset: 960)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3286, file: !3287, line: 142, baseType: !507, size: 64, offset: 1024)
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !3286, file: !3287, line: 144, baseType: !3307, size: 64, offset: 1088)
!3307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3286, file: !3287, line: 144, size: 64, elements: !3308)
!3308 = !{!3309, !3310, !3311}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3307, file: !3287, line: 146, baseType: !425, size: 16)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3307, file: !3287, line: 148, baseType: !611, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3307, file: !3287, line: 150, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3287, line: 59, size: 64, elements: !3313)
!3313 = !{!3314, !3315, !3316}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3312, file: !3287, line: 61, baseType: !611, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3312, file: !3287, line: 63, baseType: !611, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3312, file: !3287, line: 65, baseType: !611, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3286, file: !3287, line: 153, baseType: !507, size: 64, offset: 1152)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3286, file: !3287, line: 154, baseType: !507, size: 64, offset: 1216)
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3286, file: !3287, line: 156, baseType: !3320, size: 64, offset: 1280)
!3320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3286, file: !3287, line: 156, size: 64, elements: !3321)
!3321 = !{!3322, !3323, !3324}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3320, file: !3287, line: 158, baseType: !425, size: 16)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3320, file: !3287, line: 160, baseType: !611, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3320, file: !3287, line: 162, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3287, line: 69, size: 64, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3325, file: !3287, line: 71, baseType: !611, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3325, file: !3287, line: 73, baseType: !611, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3325, file: !3287, line: 75, baseType: !611, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3325, file: !3287, line: 77, baseType: !611, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3325, file: !3287, line: 80, baseType: !611, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3325, file: !3287, line: 83, baseType: !611, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3325, file: !3287, line: 86, baseType: !611, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3325, file: !3287, line: 88, baseType: !611, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3325, file: !3287, line: 93, baseType: !611, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3325, file: !3287, line: 100, baseType: !611, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3262, file: !3189, line: 96, baseType: !607, size: 32, offset: 1024)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3207, file: !3189, line: 352, baseType: !3339, size: 4608, align: 512)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3189, line: 333, size: 4608, align: 512, elements: !3340)
!3340 = !{!3341, !3342, !3349}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3339, file: !3189, line: 334, baseType: !3225, size: 4096, align: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3339, file: !3189, line: 335, baseType: !3343, size: 512, offset: 4096)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3189, line: 312, size: 512, elements: !3344)
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3343, file: !3189, line: 313, baseType: !611, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3343, file: !3189, line: 314, baseType: !611, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3343, file: !3189, line: 315, baseType: !3348, size: 384, offset: 128)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 384, elements: !1692)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3339, file: !3189, line: 336, baseType: !3350, offset: 4608)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, elements: !1606)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3207, file: !3189, line: 353, baseType: !3352, size: 32768)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 32768, elements: !3353)
!3353 = !{!3354}
!3354 = !DISubrange(count: 4096)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3188, file: !3189, line: 484, baseType: !3194, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3188, file: !3189, line: 491, baseType: !3357, size: 128, offset: 256)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3189, line: 404, size: 128, elements: !3358)
!3358 = !{!3359, !3360, !3361}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3357, file: !3189, line: 424, baseType: !611, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3357, file: !3189, line: 432, baseType: !7, size: 32, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3357, file: !3189, line: 440, baseType: !7, size: 32, offset: 96)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3188, file: !3189, line: 498, baseType: !3357, size: 128, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3188, file: !3189, line: 508, baseType: !3195, size: 33280, align: 512, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1134, file: !1135, line: 16, baseType: !1144, size: 192, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1134, file: !1135, line: 17, baseType: !407, size: 32, offset: 704)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !690, file: !14, line: 1240, baseType: !529, size: 64, offset: 6912)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !690, file: !14, line: 1243, baseType: !607, size: 32, offset: 6976)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !690, file: !14, line: 1245, baseType: !891, size: 64, offset: 7040)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !690, file: !14, line: 1246, baseType: !891, size: 64, offset: 7104)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !690, file: !14, line: 1248, baseType: !608, size: 32, offset: 7168)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !690, file: !14, line: 1249, baseType: !3372, size: 64, offset: 7232)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !690, file: !14, line: 1252, baseType: !3375, size: 256, offset: 7296)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !620)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !690, file: !14, line: 1253, baseType: !3377, size: 128, offset: 7552)
!3377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3378, line: 21, baseType: !3379)
!3378 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3378, line: 19, size: 128, elements: !3380)
!3380 = !{!3381}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3379, file: !3378, line: 20, baseType: !3382, size: 128)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !2561)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !690, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !690, file: !14, line: 1261, baseType: !838, size: 256, offset: 7744)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !690, file: !14, line: 1267, baseType: !376, size: 64, offset: 8000)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !690, file: !14, line: 1269, baseType: !636, size: 64, offset: 8064)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !690, file: !14, line: 1271, baseType: !3388, size: 448, offset: 8128)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !900, line: 63, size: 448, elements: !3389)
!3389 = !{!3390, !3395, !3396, !3397, !3398, !3399, !3400}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3388, file: !900, line: 64, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!507, !3394, !898}
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3388, file: !900, line: 66, baseType: !3391, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3388, file: !900, line: 69, baseType: !493, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3388, file: !900, line: 70, baseType: !125, size: 32, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3388, file: !900, line: 71, baseType: !7, size: 32, offset: 224)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3388, file: !900, line: 74, baseType: !357, size: 128, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3388, file: !900, line: 85, baseType: !3401, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !690, file: !14, line: 1274, baseType: !842, size: 64, offset: 8576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !690, file: !14, line: 1280, baseType: !842, size: 64, offset: 8640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !690, file: !14, line: 1283, baseType: !125, size: 32, offset: 8704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !690, file: !14, line: 1286, baseType: !2280, size: 32, offset: 8736)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !690, file: !14, line: 1289, baseType: !3407, size: 64, offset: 8768)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2409, line: 18, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !690, file: !14, line: 1290, baseType: !730, size: 64, offset: 8832)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !690, file: !14, line: 1297, baseType: !1587, size: 64, offset: 8896)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !690, file: !14, line: 1304, baseType: !3412, size: 64, offset: 8960)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3413, line: 49, size: 64, elements: !3414)
!3413 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3414 = !{!3415}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3412, file: !3413, line: 50, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3413, line: 41, size: 512, align: 512, elements: !3418)
!3418 = !{!3419, !3420, !3425}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3417, file: !3413, line: 43, baseType: !387, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3417, file: !3413, line: 45, baseType: !3421, size: 192, offset: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3413, line: 29, size: 192, elements: !3422)
!3422 = !{!3423, !3424}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3421, file: !3413, line: 30, baseType: !357, size: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3421, file: !3413, line: 32, baseType: !493, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3417, file: !3413, line: 46, baseType: !493, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !690, file: !14, line: 1305, baseType: !3412, size: 64, offset: 9024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !690, file: !14, line: 1306, baseType: !1151, size: 128, align: 64, offset: 9088)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !690, file: !14, line: 1307, baseType: !2408, size: 256, offset: 9216)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !690, file: !14, line: 1309, baseType: !838, size: 256, offset: 9472)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !690, file: !14, line: 1314, baseType: !125, size: 32, offset: 9728)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !690, file: !14, line: 1317, baseType: !387, size: 32, align: 512, offset: 10240)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !690, file: !14, line: 1318, baseType: !357, size: 128, offset: 10304)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !690, file: !14, line: 1320, baseType: !387, size: 32, offset: 10432)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !690, file: !14, line: 1321, baseType: !357, size: 128, offset: 10496)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !684, file: !685, line: 73, baseType: !125, size: 32, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !684, file: !685, line: 74, baseType: !3437, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1630, line: 42, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !638, file: !575, line: 141, baseType: !3441, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!125, !961, !1705}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !638, file: !575, line: 142, baseType: !3445, size: 64, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!573, !573, !3448}
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !574, file: !575, line: 96, baseType: !689, size: 64, offset: 832)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !574, file: !575, line: 97, baseType: !507, size: 64, offset: 896)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !574, file: !575, line: 98, baseType: !529, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !575, line: 100, baseType: !3454, size: 128, offset: 1024)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !575, line: 100, size: 128, elements: !3455)
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3454, file: !575, line: 101, baseType: !357, size: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3454, file: !575, line: 102, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !574, file: !575, line: 104, baseType: !357, size: 128, offset: 1152)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !574, file: !575, line: 105, baseType: !357, size: 128, offset: 1280)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !574, file: !575, line: 113, baseType: !3462, size: 128, offset: 1408)
!3462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !575, line: 109, size: 128, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3462, file: !575, line: 110, baseType: !734, size: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3462, file: !575, line: 111, baseType: !589, size: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3462, file: !575, line: 112, baseType: !1151, size: 128, align: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !567, file: !14, line: 1968, baseType: !3468, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!376, !573, !538, !3471}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3473, line: 10, size: 128, elements: !3474)
!3473 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3474 = !{!3475, !3479}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3472, file: !3473, line: 11, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !529}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3472, file: !3473, line: 12, baseType: !529, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !567, file: !14, line: 1969, baseType: !3481, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!125, !3437, !538, !125}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !567, file: !14, line: 1970, baseType: !3485, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!561, !538, !125, !1705}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !567, file: !14, line: 1972, baseType: !3489, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!125, !573, !457, !125}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !567, file: !14, line: 1974, baseType: !3493, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!125, !3437, !538, !573, !499, !1705}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !567, file: !14, line: 1976, baseType: !3497, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!125, !573, !538, !573}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !567, file: !14, line: 1977, baseType: !3501, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!125, !538, !573}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !567, file: !14, line: 1978, baseType: !3505, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!125, !3437, !538, !573, !376}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !567, file: !14, line: 1980, baseType: !3509, size: 64, offset: 576)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!125, !3437, !538, !573, !499}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !567, file: !14, line: 1982, baseType: !3501, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !567, file: !14, line: 1983, baseType: !3514, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!125, !3437, !538, !573, !499, !694}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !567, file: !14, line: 1985, baseType: !3518, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!125, !3437, !538, !573, !538, !573, !7}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !567, file: !14, line: 1987, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!125, !3437, !573, !3525}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3540, !3549, !3550, !3555, !3556, !3557}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3526, file: !14, line: 227, baseType: !7, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3526, file: !14, line: 228, baseType: !499, size: 16, offset: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3526, file: !14, line: 241, baseType: !3531, size: 32, offset: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3526, file: !14, line: 241, size: 32, elements: !3532)
!3532 = !{!3533, !3534}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3531, file: !14, line: 242, baseType: !544, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3531, file: !14, line: 243, baseType: !3535, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3536, line: 16, baseType: !3537)
!3536 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3536, line: 14, size: 32, elements: !3538)
!3538 = !{!3539}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3537, file: !3536, line: 15, baseType: !549, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, scope: !3526, file: !14, line: 245, baseType: !3541, size: 32, offset: 96)
!3541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3526, file: !14, line: 245, size: 32, elements: !3542)
!3542 = !{!3543, !3544}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3541, file: !14, line: 246, baseType: !553, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3541, file: !14, line: 247, baseType: !3545, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3536, line: 20, baseType: !3546)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3536, line: 18, size: 32, elements: !3547)
!3547 = !{!3548}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3546, file: !3536, line: 19, baseType: !557, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3526, file: !14, line: 249, baseType: !699, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3526, file: !14, line: 250, baseType: !3551, size: 128, offset: 192)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !892, line: 13, size: 128, elements: !3552)
!3552 = !{!3553, !3554}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3551, file: !892, line: 14, baseType: !891, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3551, file: !892, line: 15, baseType: !493, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3526, file: !14, line: 251, baseType: !3551, size: 128, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3526, file: !14, line: 252, baseType: !3551, size: 128, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3526, file: !14, line: 259, baseType: !1497, size: 64, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !567, file: !14, line: 1988, baseType: !3559, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!125, !3437, !961, !3562, !607, !7}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3564, line: 22, size: 1280, elements: !3565)
!3564 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3563, file: !3564, line: 23, baseType: !607, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3563, file: !3564, line: 24, baseType: !499, size: 16, offset: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3563, file: !3564, line: 25, baseType: !7, size: 32, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3563, file: !3564, line: 26, baseType: !1670, size: 32, offset: 96)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3563, file: !3564, line: 27, baseType: !611, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3563, file: !3564, line: 28, baseType: !611, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3563, file: !3564, line: 41, baseType: !611, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3563, file: !3564, line: 42, baseType: !694, size: 32, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3563, file: !3564, line: 43, baseType: !694, size: 32, offset: 352)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3563, file: !3564, line: 44, baseType: !544, size: 32, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3563, file: !3564, line: 45, baseType: !553, size: 32, offset: 416)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3563, file: !3564, line: 46, baseType: !699, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3563, file: !3564, line: 47, baseType: !3551, size: 128, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3563, file: !3564, line: 48, baseType: !3551, size: 128, offset: 640)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3563, file: !3564, line: 49, baseType: !3551, size: 128, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3563, file: !3564, line: 50, baseType: !3551, size: 128, offset: 896)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3563, file: !3564, line: 51, baseType: !611, size: 64, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3563, file: !3564, line: 52, baseType: !611, size: 64, offset: 1088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3563, file: !3564, line: 53, baseType: !607, size: 32, offset: 1152)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3563, file: !3564, line: 54, baseType: !607, size: 32, offset: 1184)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3563, file: !3564, line: 55, baseType: !611, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !567, file: !14, line: 1990, baseType: !3588, size: 64, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!489, !573, !457, !504}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !567, file: !14, line: 1991, baseType: !3592, size: 64, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!125, !538, !3595, !611, !611}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !567, file: !14, line: 1993, baseType: !3598, size: 64, offset: 1088)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!125, !538, !125}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !567, file: !14, line: 1994, baseType: !3602, size: 64, offset: 1152)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!125, !538, !573, !1497, !7, !499}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !567, file: !14, line: 1997, baseType: !3606, size: 64, offset: 1216)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!125, !3437, !538, !1497, !499}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !567, file: !14, line: 1999, baseType: !3610, size: 64, offset: 1280)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!561, !3437, !573, !125}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !567, file: !14, line: 2001, baseType: !3614, size: 64, offset: 1344)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!125, !3437, !573, !561, !125}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !567, file: !14, line: 2003, baseType: !3618, size: 64, offset: 1408)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!125, !3437, !573, !3621}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !567, file: !14, line: 2005, baseType: !3624, size: 64, offset: 1472)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!125, !573, !3621}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !567, file: !14, line: 2006, baseType: !3628, size: 64, offset: 1536)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!3631, !538}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3633)
!3633 = !{!3634, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3632, file: !14, line: 3193, baseType: !1566, size: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3632, file: !14, line: 3194, baseType: !607, size: 32, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !539, file: !14, line: 655, baseType: !689, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !539, file: !14, line: 656, baseType: !534, size: 64, offset: 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !539, file: !14, line: 659, baseType: !529, size: 64, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !539, file: !14, line: 663, baseType: !507, size: 64, offset: 640)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !14, line: 671, baseType: !3641, size: 32, offset: 704)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !14, line: 671, size: 32, elements: !3642)
!3642 = !{!3643, !3645}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3641, file: !14, line: 672, baseType: !3644, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3641, file: !14, line: 673, baseType: !7, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !539, file: !14, line: 675, baseType: !694, size: 32, offset: 736)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !539, file: !14, line: 676, baseType: !699, size: 64, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !539, file: !14, line: 677, baseType: !3551, size: 128, offset: 832)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !539, file: !14, line: 678, baseType: !3551, size: 128, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !539, file: !14, line: 679, baseType: !3551, size: 128, offset: 1088)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !539, file: !14, line: 680, baseType: !387, size: 32, offset: 1216)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !539, file: !14, line: 681, baseType: !427, size: 16, offset: 1248)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !539, file: !14, line: 682, baseType: !415, size: 8, offset: 1264)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !539, file: !14, line: 683, baseType: !415, size: 8, offset: 1272)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !539, file: !14, line: 684, baseType: !1039, size: 64, offset: 1280)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !539, file: !14, line: 691, baseType: !507, size: 64, offset: 1344)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !539, file: !14, line: 692, baseType: !1051, size: 320, offset: 1408)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !539, file: !14, line: 694, baseType: !507, size: 64, offset: 1728)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !539, file: !14, line: 695, baseType: !507, size: 64, offset: 1792)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !539, file: !14, line: 697, baseType: !734, size: 128, offset: 1856)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !539, file: !14, line: 698, baseType: !357, size: 128, offset: 1984)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !539, file: !14, line: 707, baseType: !357, size: 128, offset: 2112)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !539, file: !14, line: 708, baseType: !357, size: 128, offset: 2240)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !14, line: 709, baseType: !3665, size: 128, offset: 2368)
!3665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !14, line: 709, size: 128, elements: !3666)
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3665, file: !14, line: 710, baseType: !730, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3665, file: !14, line: 711, baseType: !1151, size: 128, align: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !539, file: !14, line: 713, baseType: !844, size: 64, offset: 2496)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !539, file: !14, line: 714, baseType: !844, size: 64, offset: 2560)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !539, file: !14, line: 715, baseType: !407, size: 32, offset: 2624)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !539, file: !14, line: 716, baseType: !407, size: 32, offset: 2656)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !539, file: !14, line: 717, baseType: !407, size: 32, offset: 2688)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !539, file: !14, line: 719, baseType: !407, size: 32, offset: 2720)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !14, line: 721, baseType: !3676, size: 64, offset: 2752)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !14, line: 721, size: 64, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3676, file: !14, line: 722, baseType: !1814, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3676, file: !14, line: 723, baseType: !761, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !539, file: !14, line: 725, baseType: !3681, size: 64, offset: 2816)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !539, file: !14, line: 726, baseType: !535, size: 1536, align: 64, offset: 2880)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !539, file: !14, line: 727, baseType: !357, size: 128, offset: 4416)
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !14, line: 728, baseType: !3686, size: 64, offset: 4544)
!3686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !14, line: 728, size: 64, elements: !3687)
!3687 = !{!3688, !3689, !3692, !3693}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3686, file: !14, line: 729, baseType: !2230, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3686, file: !14, line: 730, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3686, file: !14, line: 731, baseType: !457, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3686, file: !14, line: 732, baseType: !7, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !539, file: !14, line: 735, baseType: !608, size: 32, offset: 4608)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !539, file: !14, line: 738, baseType: !608, size: 32, offset: 4640)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !539, file: !14, line: 739, baseType: !3372, size: 64, offset: 4672)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !539, file: !14, line: 750, baseType: !529, size: 64, offset: 4736)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !535, file: !14, line: 474, baseType: !1566, size: 128, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !535, file: !14, line: 475, baseType: !1051, size: 320, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !535, file: !14, line: 476, baseType: !903, size: 32, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !535, file: !14, line: 477, baseType: !407, size: 32, offset: 544)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !535, file: !14, line: 482, baseType: !1353, size: 128, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !535, file: !14, line: 483, baseType: !507, size: 64, offset: 704)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !535, file: !14, line: 484, baseType: !507, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !535, file: !14, line: 485, baseType: !3706, size: 64, offset: 832)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3709)
!3709 = !{!3710, !3714, !3784, !3788, !3792, !3798, !3802, !3806, !3811, !3815, !3819, !3823, !3824, !3828, !3832, !3836, !3841, !3845, !3852, !3853}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3708, file: !14, line: 405, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!125, !2007, !773}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3708, file: !14, line: 406, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!125, !1497, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3720)
!3720 = !{!3721, !3751, !3765}
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !38, line: 295, baseType: !3722, size: 512)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !38, line: 295, size: 512, elements: !3723)
!3723 = !{!3724, !3750}
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !3722, file: !38, line: 296, baseType: !3725, size: 448)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3722, file: !38, line: 296, size: 448, elements: !3726)
!3726 = !{!3727, !3728, !3737, !3738, !3739, !3748, !3749}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3725, file: !38, line: 298, baseType: !507, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !38, line: 299, baseType: !3729, size: 128, offset: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !38, line: 299, size: 128, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3729, file: !38, line: 300, baseType: !357, size: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, scope: !3729, file: !38, line: 302, baseType: !3733, size: 128)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3729, file: !38, line: 302, size: 128, elements: !3734)
!3734 = !{!3735, !3736}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3733, file: !38, line: 303, baseType: !529, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3733, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3725, file: !38, line: 310, baseType: !534, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3725, file: !38, line: 311, baseType: !507, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !3725, file: !38, line: 312, baseType: !3740, size: 64, offset: 320)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3725, file: !38, line: 312, size: 64, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3740, file: !38, line: 313, baseType: !529, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3740, file: !38, line: 314, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3745)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3746)
!3746 = !{!3747}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3745, file: !38, line: 256, baseType: !507, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3725, file: !38, line: 316, baseType: !407, size: 32, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3725, file: !38, line: 317, baseType: !407, size: 32, offset: 416)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3722, file: !38, line: 323, baseType: !2008, size: 512, align: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !38, line: 325, baseType: !3752, size: 512, offset: 512)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !38, line: 325, size: 512, elements: !3753)
!3753 = !{!3754, !3764}
!3754 = !DIDerivedType(tag: DW_TAG_member, scope: !3752, file: !38, line: 326, baseType: !3755, size: 320)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3752, file: !38, line: 326, size: 320, elements: !3756)
!3756 = !{!3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3755, file: !38, line: 327, baseType: !507, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3755, file: !38, line: 328, baseType: !507, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3755, file: !38, line: 329, baseType: !507, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3755, file: !38, line: 331, baseType: !407, size: 32, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3755, file: !38, line: 332, baseType: !407, size: 32, offset: 224)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3755, file: !38, line: 333, baseType: !407, size: 32, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3755, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3752, file: !38, line: 339, baseType: !2008, size: 512, align: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !38, line: 341, baseType: !3766, size: 512, offset: 1024)
!3766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !38, line: 341, size: 512, elements: !3767)
!3767 = !{!3768, !3777, !3783}
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !3766, file: !38, line: 342, baseType: !3769, size: 384)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3766, file: !38, line: 342, size: 384, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3769, file: !38, line: 343, baseType: !507, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3769, file: !38, line: 344, baseType: !507, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3769, file: !38, line: 346, baseType: !529, size: 64, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3769, file: !38, line: 347, baseType: !529, size: 64, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3769, file: !38, line: 348, baseType: !529, size: 64, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3769, file: !38, line: 349, baseType: !529, size: 64, offset: 320)
!3777 = !DIDerivedType(tag: DW_TAG_member, scope: !3766, file: !38, line: 352, baseType: !3778, size: 256)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3766, file: !38, line: 352, size: 256, elements: !3779)
!3779 = !{!3780, !3781, !3782}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3778, file: !38, line: 353, baseType: !507, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3778, file: !38, line: 354, baseType: !507, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3778, file: !38, line: 356, baseType: !357, size: 128, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3766, file: !38, line: 359, baseType: !2008, size: 512, align: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3708, file: !14, line: 409, baseType: !3785, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!125, !534, !773}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3708, file: !14, line: 412, baseType: !3789, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!1705, !534, !3718}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3708, file: !14, line: 414, baseType: !3793, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3708, file: !14, line: 416, baseType: !3799, size: 64, offset: 320)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!125, !1497, !534, !699, !7, !3121, !2245}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3708, file: !14, line: 419, baseType: !3803, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!125, !1497, !534, !699, !7, !7, !2007, !529}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3708, file: !14, line: 424, baseType: !3807, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!3810, !534, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !358, line: 131, baseType: !611)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3708, file: !14, line: 425, baseType: !3812, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3718, !504, !504}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3708, file: !14, line: 426, baseType: !3816, size: 64, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!1705, !3718, !903}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3708, file: !14, line: 427, baseType: !3820, size: 64, offset: 640)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3718}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3708, file: !14, line: 428, baseType: !1833, size: 64, offset: 704)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3708, file: !14, line: 433, baseType: !3825, size: 64, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!125, !534, !3718, !3718, !74}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3708, file: !14, line: 435, baseType: !3829, size: 64, offset: 832)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!125, !3718}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3708, file: !14, line: 436, baseType: !3833, size: 64, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!1705, !3718, !504, !504}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3708, file: !14, line: 438, baseType: !3837, size: 64, offset: 960)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3718, !3840, !3840}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3708, file: !14, line: 439, baseType: !3842, size: 64, offset: 1024)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!125, !534, !2007}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3708, file: !14, line: 442, baseType: !3846, size: 64, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!125, !3849, !1497, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3708, file: !14, line: 444, baseType: !2237, size: 64, offset: 1152)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3708, file: !14, line: 445, baseType: !3854, size: 64, offset: 1216)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!125, !1836, !1858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !14, line: 486, baseType: !507, size: 64, offset: 896)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !535, file: !14, line: 487, baseType: !1051, size: 320, offset: 960)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !535, file: !14, line: 488, baseType: !2280, size: 32, offset: 1280)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !535, file: !14, line: 489, baseType: !387, size: 32, offset: 1312)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !535, file: !14, line: 490, baseType: !357, size: 128, offset: 1344)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !535, file: !14, line: 491, baseType: !529, size: 64, offset: 1472)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !524, file: !483, line: 180, baseType: !3864, size: 64, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!489, !1497, !380, !523, !457, !699, !504}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !524, file: !483, line: 182, baseType: !3864, size: 64, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !524, file: !483, line: 184, baseType: !3869, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!125, !1497, !380, !523, !1898}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !512, file: !483, line: 90, baseType: !3873, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !512, file: !483, line: 91, baseType: !3875, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !473, file: !373, line: 120, baseType: !3877, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!3880, !440}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3883)
!3883 = !{!3884, !3885, !3889, !3893, !3899, !3903}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3882, file: !82, line: 40, baseType: !81, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3882, file: !82, line: 41, baseType: !3886, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!1705}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3882, file: !82, line: 42, baseType: !3890, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!529}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3882, file: !82, line: 43, baseType: !3894, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!2369, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3882, file: !82, line: 44, baseType: !3900, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!2369}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3882, file: !82, line: 45, baseType: !3476, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !473, file: !373, line: 121, baseType: !3905, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!2369, !440}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !473, file: !373, line: 122, baseType: !3909, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !440, !3912, !3913}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !372, file: !373, line: 70, baseType: !3915, size: 64, offset: 384)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !714, line: 190, size: 1152, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !4009, !4010, !4011, !4012, !4013, !4016}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3916, file: !714, line: 191, baseType: !407, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3916, file: !714, line: 192, baseType: !407, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3916, file: !714, line: 202, baseType: !3915, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3916, file: !714, line: 203, baseType: !376, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3916, file: !714, line: 205, baseType: !1224, size: 192, align: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3916, file: !714, line: 207, baseType: !2369, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3916, file: !714, line: 208, baseType: !7, size: 32, offset: 448)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3916, file: !714, line: 209, baseType: !3926, size: 256, offset: 512)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3916, file: !714, line: 209, size: 256, elements: !3927)
!3927 = !{!3928, !3937, !3941}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3926, file: !714, line: 210, baseType: !3929, size: 256)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !714, line: 153, size: 256, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3936}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3929, file: !714, line: 154, baseType: !507, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3929, file: !714, line: 156, baseType: !1356, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3929, file: !714, line: 162, baseType: !3934, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !714, line: 162, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3929, file: !714, line: 167, baseType: !507, size: 64, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3926, file: !714, line: 211, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !714, line: 170, size: 64, elements: !3939)
!3939 = !{!3940}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3938, file: !714, line: 171, baseType: !3915, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3926, file: !714, line: 212, baseType: !3942, size: 256)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !714, line: 174, size: 256, elements: !3943)
!3943 = !{!3944, !4004, !4007, !4008}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3942, file: !714, line: 175, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3947)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !714, line: 271, size: 768, elements: !3948)
!3948 = !{!3949, !3969, !3973, !3977, !3981, !3985, !3989, !3993, !3994, !3995, !3996, !4000}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3947, file: !714, line: 276, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!125, !3953}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !714, line: 251, size: 1216, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3954, file: !714, line: 253, baseType: !3915, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3954, file: !714, line: 254, baseType: !1497, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3954, file: !714, line: 255, baseType: !811, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3954, file: !714, line: 256, baseType: !529, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3954, file: !714, line: 259, baseType: !838, size: 256, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3954, file: !714, line: 260, baseType: !838, size: 256, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3954, file: !714, line: 261, baseType: !125, size: 32, offset: 768)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3954, file: !714, line: 262, baseType: !357, size: 128, offset: 832)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3954, file: !714, line: 263, baseType: !457, size: 64, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3954, file: !714, line: 265, baseType: !504, size: 64, offset: 1024)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3954, file: !714, line: 266, baseType: !1705, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3954, file: !714, line: 267, baseType: !1705, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3954, file: !714, line: 268, baseType: !1943, size: 64, offset: 1152)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3947, file: !714, line: 277, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3953}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3947, file: !714, line: 290, baseType: !3974, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!125, !811, !529}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3947, file: !714, line: 292, baseType: !3978, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!529, !811, !1827}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3947, file: !714, line: 293, baseType: !3982, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!529, !811, !529, !1827}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3947, file: !714, line: 294, baseType: !3986, size: 64, offset: 320)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !811, !529}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3947, file: !714, line: 296, baseType: !3990, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!489, !3953, !457, !504, !699}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3947, file: !714, line: 306, baseType: !504, size: 64, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3947, file: !714, line: 313, baseType: !1705, size: 8, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3947, file: !714, line: 314, baseType: !3990, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3947, file: !714, line: 317, baseType: !3997, size: 64, offset: 640)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!1885, !3953, !1887}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3947, file: !714, line: 320, baseType: !4001, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!125, !3953, !1898}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3942, file: !714, line: 176, baseType: !4005, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !714, line: 35, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3942, file: !714, line: 177, baseType: !699, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3942, file: !714, line: 178, baseType: !3915, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3916, file: !714, line: 215, baseType: !529, size: 64, offset: 768)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3916, file: !714, line: 221, baseType: !611, size: 64, offset: 832)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3916, file: !714, line: 223, baseType: !427, size: 16, offset: 896)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3916, file: !714, line: 224, baseType: !499, size: 16, offset: 912)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3916, file: !714, line: 225, baseType: !4014, size: 64, offset: 960)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !714, line: 36, flags: DIFlagFwdDecl)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3916, file: !714, line: 227, baseType: !1151, size: 128, align: 64, offset: 1024)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !372, file: !373, line: 71, baseType: !4018, size: 32, offset: 448)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4019, line: 19, size: 32, elements: !4020)
!4019 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4020 = !{!4021}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4018, file: !4019, line: 20, baseType: !1180, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !372, file: !373, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !372, file: !373, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !372, file: !373, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !372, file: !373, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !372, file: !373, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !369, file: !6, line: 47, baseType: !352, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !369, file: !6, line: 48, baseType: !380, size: 64, offset: 576)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !369, file: !6, line: 49, baseType: !4030, size: 64, offset: 640)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !369, file: !6, line: 50, baseType: !2518, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !353, file: !6, line: 418, baseType: !4034, size: 64, offset: 1408)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4036)
!4036 = !{!4037, !4038, !4043, !4047, !4051, !4055}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4035, file: !6, line: 54, baseType: !495, size: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4035, file: !6, line: 55, baseType: !4039, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!489, !4034, !4042, !457}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4035, file: !6, line: 57, baseType: !4044, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!489, !4034, !4042, !376, !504}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4035, file: !6, line: 59, baseType: !4048, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !352, !376}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4035, file: !6, line: 60, baseType: !4052, size: 64, offset: 320)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!125, !352}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4035, file: !6, line: 61, baseType: !4056, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !352}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !353, file: !6, line: 419, baseType: !376, size: 64, offset: 1472)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !353, file: !6, line: 420, baseType: !376, size: 64, offset: 1536)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !353, file: !6, line: 421, baseType: !380, size: 64, offset: 1600)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !353, file: !6, line: 424, baseType: !4063, size: 64, offset: 1664)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4065)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !353, file: !6, line: 425, baseType: !4067, size: 64, offset: 1728)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !353, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !353, file: !6, line: 435, baseType: !838, size: 256, offset: 1856)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !353, file: !6, line: 437, baseType: !4072, size: 64, offset: 2112)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4074, line: 69, size: 320, elements: !4075)
!4074 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4075 = !{!4076, !4077, !4078, !4095, !4097, !4101, !4102}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4073, file: !4074, line: 70, baseType: !376, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4073, file: !4074, line: 71, baseType: !352, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4073, file: !4074, line: 72, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4081)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4074, line: 47, size: 256, elements: !4082)
!4082 = !{!4083, !4084, !4090, !4094}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4081, file: !4074, line: 49, baseType: !7, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4081, file: !4074, line: 51, baseType: !4085, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!125, !376, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4073)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4081, file: !4074, line: 53, baseType: !4091, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!125, !457, !4088}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4081, file: !4074, line: 55, baseType: !3476, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4073, file: !4074, line: 73, baseType: !4096, size: 16, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4073, file: !4074, line: 74, baseType: !4098, size: 8, offset: 208)
!4098 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !416, line: 16, baseType: !4099)
!4099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !418, line: 20, baseType: !4100)
!4100 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !4074, line: 75, baseType: !415, size: 8, offset: 216)
!4102 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !4074, line: 76, baseType: !4103, size: 64, offset: 256)
!4103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !4074, line: 76, size: 64, elements: !4104)
!4104 = !{!4105, !4106, !4113}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4103, file: !4074, line: 77, baseType: !529, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4103, file: !4074, line: 78, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4074, line: 86, size: 128, elements: !4110)
!4110 = !{!4111, !4112}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4109, file: !4074, line: 87, baseType: !7, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4109, file: !4074, line: 88, baseType: !457, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4103, file: !4074, line: 79, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4116)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4074, line: 92, size: 256, elements: !4117)
!4117 = !{!4118, !4119, !4120, !4121, !4122}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4116, file: !4074, line: 94, baseType: !7, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4116, file: !4074, line: 95, baseType: !7, size: 32, offset: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4116, file: !4074, line: 96, baseType: !1160, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4116, file: !4074, line: 97, baseType: !4079, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4116, file: !4074, line: 98, baseType: !529, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !353, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !353, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !353, file: !6, line: 442, baseType: !4063, size: 64, offset: 2240)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !353, file: !6, line: 443, baseType: !4067, size: 64, offset: 2304)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !353, file: !6, line: 444, baseType: !1705, size: 8, offset: 2368)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !353, file: !6, line: 451, baseType: !1705, size: 8, offset: 2376)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !353, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !353, file: !6, line: 455, baseType: !4131, size: 64, offset: 2432)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4133, line: 23, size: 96, elements: !4134)
!4133 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4134 = !{!4135, !4136, !4137}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4132, file: !4133, line: 24, baseType: !125, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4132, file: !4133, line: 24, baseType: !125, size: 32, offset: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4132, file: !4133, line: 24, baseType: !125, size: 32, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !353, file: !6, line: 458, baseType: !4139, size: 64, offset: 2496)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!125}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !353, file: !6, line: 460, baseType: !4143, size: 4032, align: 512, offset: 2560)
!4143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4144, size: 4032, elements: !4158)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4145)
!4145 = !{!4146, !4147, !4148}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4144, file: !6, line: 363, baseType: !529, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4144, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4144, file: !6, line: 367, baseType: !4149, size: 448, offset: 128)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4149, file: !6, line: 320, baseType: !352, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4149, file: !6, line: 321, baseType: !4153, size: 384, offset: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4154, line: 40, size: 384, elements: !4155)
!4154 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4155 = !{!4156}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4153, file: !4154, line: 41, baseType: !4157, size: 384, align: 64)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1224, size: 384, align: 64, elements: !2665)
!4158 = !{!4159}
!4159 = !DISubrange(count: 7)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !353, file: !6, line: 463, baseType: !4161, size: 192, offset: 6592)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4162, line: 8, size: 192, elements: !4163)
!4162 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4163 = !{!4164, !4165, !4166}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4161, file: !4162, line: 10, baseType: !7, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4161, file: !4162, line: 11, baseType: !805, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4161, file: !4162, line: 12, baseType: !4167, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4169, line: 59, size: 48, elements: !4170)
!4169 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4168, file: !4169, line: 60, baseType: !2386, size: 16)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4168, file: !4169, line: 61, baseType: !2386, size: 16, offset: 16)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4168, file: !4169, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4168, file: !4169, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4168, file: !4169, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4168, file: !4169, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !353, file: !6, line: 465, baseType: !507, size: 64, offset: 6784)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !353, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !353, file: !6, line: 470, baseType: !357, size: 128, offset: 6912)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !353, file: !6, line: 471, baseType: !4181, size: 64, offset: 7040)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4183, line: 33, size: 96, elements: !4184)
!4183 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4184 = !{!4185, !4186, !4187, !4188}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4182, file: !4183, line: 37, baseType: !125, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4182, file: !4183, line: 43, baseType: !125, size: 32, offset: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4182, file: !4183, line: 45, baseType: !427, size: 16, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4182, file: !4183, line: 47, baseType: !427, size: 16, offset: 80)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !353, file: !6, line: 476, baseType: !4190, size: 64, offset: 7104)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4192)
!4192 = !{!4193, !4209, !4210, !4211}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4191, file: !6, line: 379, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4196, line: 204, baseType: !4197)
!4196 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4196, line: 197, size: 192, elements: !4198)
!4198 = !{!4199, !4201, !4202, !4203, !4205, !4207}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4197, file: !4196, line: 198, baseType: !4200, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4196, line: 21, baseType: !608)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4197, file: !4196, line: 199, baseType: !419, size: 8, offset: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4197, file: !4196, line: 200, baseType: !419, size: 8, offset: 40)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4197, file: !4196, line: 201, baseType: !4204, size: 16, offset: 48)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4196, line: 17, baseType: !426)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4197, file: !4196, line: 202, baseType: !4206, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4196, line: 16, baseType: !612)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4197, file: !4196, line: 203, baseType: !4208, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4196, line: 22, baseType: !612)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4191, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4191, file: !6, line: 381, baseType: !457, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4191, file: !6, line: 382, baseType: !457, size: 64, offset: 192)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !353, file: !6, line: 477, baseType: !4191, size: 256, offset: 7168)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !353, file: !6, line: 480, baseType: !4214, size: 64, offset: 7424)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !353, file: !6, line: 483, baseType: !4217, size: 64, offset: 7488)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !353, file: !6, line: 488, baseType: !457, size: 64, offset: 7552)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !353, file: !6, line: 492, baseType: !529, size: 64, offset: 7616)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !353, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !353, file: !6, line: 495, baseType: !529, size: 64, offset: 7744)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !353, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !353, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !353, file: !6, line: 500, baseType: !4226, size: 64, offset: 7872)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4228, line: 45, baseType: !4229)
!4228 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !353, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !353, file: !6, line: 504, baseType: !4232, size: 64, offset: 8000)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4235, line: 96, size: 192, elements: !4236)
!4235 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4236 = !{!4237, !4238, !4281, !4283}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4234, file: !4235, line: 97, baseType: !7, size: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4234, file: !4235, line: 98, baseType: !4239, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4235, line: 24, size: 3072, elements: !4241)
!4241 = !{!4242, !4244, !4245, !4246, !4247, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4278, !4279, !4280}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4240, file: !4235, line: 26, baseType: !4243, size: 128)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 128, elements: !2665)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4240, file: !4235, line: 27, baseType: !4243, size: 128, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4240, file: !4235, line: 28, baseType: !125, size: 32, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4240, file: !4235, line: 31, baseType: !387, size: 32, align: 512, offset: 512)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4240, file: !4235, line: 32, baseType: !4248, size: 960, offset: 576)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4249, line: 206, size: 960, elements: !4250)
!4249 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4250 = !{!4251, !4252, !4255, !4257, !4258, !4260}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4248, file: !4249, line: 207, baseType: !1154, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4248, file: !4249, line: 208, baseType: !4253, size: 256, offset: 64)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4254, size: 256, elements: !1546)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4248, file: !4249, line: 209, baseType: !4256, size: 256, offset: 320)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 256, elements: !1546)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4248, file: !4249, line: 213, baseType: !493, size: 64, offset: 576)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4248, file: !4249, line: 215, baseType: !4259, size: 256, offset: 640)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 256, elements: !1546)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4248, file: !4249, line: 216, baseType: !415, size: 8, offset: 896)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4240, file: !4235, line: 33, baseType: !507, size: 64, offset: 1536)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4240, file: !4235, line: 34, baseType: !507, size: 64, offset: 1600)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4240, file: !4235, line: 35, baseType: !1705, size: 8, offset: 1664)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4240, file: !4235, line: 36, baseType: !3101, size: 320, offset: 1728)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4240, file: !4235, line: 37, baseType: !2408, size: 256, offset: 2048)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4240, file: !4235, line: 38, baseType: !1151, size: 128, align: 64, offset: 2304)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4240, file: !4235, line: 39, baseType: !4268, size: 64, offset: 2432)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4235, line: 49, size: 768, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4269, file: !4235, line: 50, baseType: !387, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4269, file: !4235, line: 51, baseType: !4256, size: 256, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4269, file: !4235, line: 53, baseType: !4256, size: 256, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4269, file: !4235, line: 54, baseType: !507, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4269, file: !4235, line: 55, baseType: !4268, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4269, file: !4235, line: 56, baseType: !125, size: 32, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4269, file: !4235, line: 57, baseType: !125, size: 32, offset: 736)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4240, file: !4235, line: 40, baseType: !507, size: 64, offset: 2496)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4240, file: !4235, line: 42, baseType: !125, size: 32, offset: 2560)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4240, file: !4235, line: 43, baseType: !4233, size: 64, offset: 2624)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4234, file: !4235, line: 99, baseType: !4282, offset: 128)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !741, line: 211, elements: !742)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4234, file: !4235, line: 100, baseType: !4284, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4235, line: 63, size: 3008, elements: !4286)
!4286 = !{!4287, !4288, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4316}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4285, file: !4235, line: 64, baseType: !4268, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4285, file: !4235, line: 65, baseType: !4289, size: 192, offset: 64)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4268, size: 192, elements: !458)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4285, file: !4235, line: 67, baseType: !125, size: 32, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4285, file: !4235, line: 68, baseType: !838, size: 256, offset: 320)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4285, file: !4235, line: 69, baseType: !387, size: 32, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4285, file: !4235, line: 70, baseType: !838, size: 256, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4285, file: !4235, line: 71, baseType: !507, size: 64, offset: 896)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4285, file: !4235, line: 72, baseType: !507, size: 64, offset: 960)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4285, file: !4235, line: 73, baseType: !507, size: 64, offset: 1024)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4285, file: !4235, line: 74, baseType: !507, size: 64, offset: 1088)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4285, file: !4235, line: 75, baseType: !507, size: 64, offset: 1152)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4285, file: !4235, line: 76, baseType: !507, size: 64, offset: 1216)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4285, file: !4235, line: 77, baseType: !507, size: 64, offset: 1280)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4285, file: !4235, line: 78, baseType: !507, size: 64, offset: 1344)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4285, file: !4235, line: 79, baseType: !1705, size: 8, offset: 1408)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4285, file: !4235, line: 80, baseType: !507, size: 64, offset: 1472)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4285, file: !4235, line: 81, baseType: !838, size: 256, offset: 1536)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4285, file: !4235, line: 82, baseType: !2092, size: 256, offset: 1792)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4285, file: !4235, line: 84, baseType: !407, size: 32, offset: 2048)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4285, file: !4235, line: 87, baseType: !507, size: 64, offset: 2112)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4285, file: !4235, line: 88, baseType: !507, size: 64, offset: 2176)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4285, file: !4235, line: 89, baseType: !4310, size: 704, offset: 2240)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2409, line: 111, size: 704, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4310, file: !2409, line: 112, baseType: !2408, size: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4310, file: !2409, line: 113, baseType: !3101, size: 320, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4310, file: !2409, line: 116, baseType: !3407, size: 64, offset: 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4310, file: !2409, line: 117, baseType: !125, size: 32, offset: 640)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4285, file: !4235, line: 90, baseType: !4233, size: 64, offset: 2944)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !353, file: !6, line: 515, baseType: !4318, size: 64, offset: 8064)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4320, line: 117, size: 128, elements: !4321)
!4320 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4321 = !{!4322, !4323, !4324}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4319, file: !4320, line: 118, baseType: !1648, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4319, file: !4320, line: 119, baseType: !1648, size: 32, offset: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4319, file: !4320, line: 120, baseType: !493, size: 64, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !353, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !353, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !353, file: !6, line: 520, baseType: !4328, size: 64, offset: 8192)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !353, file: !6, line: 523, baseType: !4330, size: 64, offset: 8256)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !353, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !353, file: !6, line: 525, baseType: !4335, size: 64, offset: 8384)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !353, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !353, file: !6, line: 533, baseType: !529, size: 64, offset: 8512)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !353, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !353, file: !6, line: 535, baseType: !4342, size: 64, offset: 8640)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !353, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !353, file: !6, line: 539, baseType: !125, size: 32, offset: 8736)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !353, file: !6, line: 540, baseType: !4346, size: 64, offset: 8768)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4348, line: 32, size: 64, elements: !4349)
!4348 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4349 = !{!4350, !4351}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4347, file: !4348, line: 33, baseType: !1648, size: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4347, file: !4348, line: 34, baseType: !1648, size: 32, offset: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !353, file: !6, line: 563, baseType: !357, size: 128, offset: 8832)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !353, file: !6, line: 565, baseType: !357, size: 128, offset: 8960)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !353, file: !6, line: 568, baseType: !4355, size: 64, offset: 9088)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !353, file: !6, line: 570, baseType: !407, size: 32, offset: 9152)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !3145, line: 83, size: 2368, elements: !4359)
!4359 = !{!4360, !4371, !4372, !4373, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4391, !4392, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4360 = !DIDerivedType(tag: DW_TAG_member, scope: !4358, file: !3145, line: 84, baseType: !4361, size: 32)
!4361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4358, file: !3145, line: 84, size: 32, elements: !4362)
!4362 = !{!4363, !4370}
!4363 = !DIDerivedType(tag: DW_TAG_member, scope: !4361, file: !3145, line: 90, baseType: !4364, size: 32)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4361, file: !3145, line: 90, size: 32, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !4364, file: !3145, line: 91, baseType: !417, size: 8)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !4364, file: !3145, line: 93, baseType: !417, size: 8, offset: 8)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !4364, file: !3145, line: 95, baseType: !417, size: 8, offset: 16)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !4364, file: !3145, line: 96, baseType: !417, size: 8, offset: 24)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !4361, file: !3145, line: 99, baseType: !608, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !4358, file: !3145, line: 101, baseType: !417, size: 8, offset: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !4358, file: !3145, line: 104, baseType: !125, size: 32, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !4358, file: !3145, line: 107, baseType: !4374, size: 160, offset: 96)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 160, elements: !4375)
!4375 = !{!4376}
!4376 = !DISubrange(count: 5)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !4358, file: !3145, line: 109, baseType: !417, size: 8, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !4358, file: !3145, line: 110, baseType: !417, size: 8, offset: 264)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !4358, file: !3145, line: 112, baseType: !417, size: 8, offset: 272)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !4358, file: !3145, line: 113, baseType: !417, size: 8, offset: 280)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !4358, file: !3145, line: 115, baseType: !608, size: 32, offset: 288)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !4358, file: !3145, line: 117, baseType: !125, size: 32, offset: 320)
!4383 = !DIDerivedType(tag: DW_TAG_member, scope: !4358, file: !3145, line: 123, baseType: !4384, size: 768, offset: 384)
!4384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4358, file: !3145, line: 123, size: 768, elements: !4385)
!4385 = !{!4386, !4390}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !4384, file: !3145, line: 124, baseType: !4387, size: 768)
!4387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 768, elements: !4388)
!4388 = !{!4389}
!4389 = !DISubrange(count: 24)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !4384, file: !3145, line: 125, baseType: !507, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !4358, file: !3145, line: 127, baseType: !2560, size: 128, offset: 1152)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !4358, file: !3145, line: 128, baseType: !4393, size: 512, offset: 1280)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 512, elements: !462)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !4358, file: !3145, line: 130, baseType: !7, size: 32, offset: 1792)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !4358, file: !3145, line: 131, baseType: !125, size: 32, offset: 1824)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !4358, file: !3145, line: 133, baseType: !125, size: 32, offset: 1856)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !4358, file: !3145, line: 134, baseType: !125, size: 32, offset: 1888)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !4358, file: !3145, line: 135, baseType: !125, size: 32, offset: 1920)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !4358, file: !3145, line: 136, baseType: !125, size: 32, offset: 1952)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !4358, file: !3145, line: 137, baseType: !507, size: 64, offset: 1984)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !4358, file: !3145, line: 139, baseType: !611, size: 64, offset: 2048)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !4358, file: !3145, line: 141, baseType: !425, size: 16, offset: 2112)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !4358, file: !3145, line: 142, baseType: !425, size: 16, offset: 2128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !4358, file: !3145, line: 143, baseType: !425, size: 16, offset: 2144)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !4358, file: !3145, line: 144, baseType: !425, size: 16, offset: 2160)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !4358, file: !3145, line: 146, baseType: !425, size: 16, offset: 2176)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !4358, file: !3145, line: 148, baseType: !425, size: 16, offset: 2192)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !4358, file: !3145, line: 150, baseType: !425, size: 16, offset: 2208)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !4358, file: !3145, line: 152, baseType: !425, size: 16, offset: 2224)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !4358, file: !3145, line: 153, baseType: !425, size: 16, offset: 2240)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !4358, file: !3145, line: 154, baseType: !425, size: 16, offset: 2256)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !4358, file: !3145, line: 156, baseType: !425, size: 16, offset: 2272)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !4358, file: !3145, line: 158, baseType: !1705, size: 8, offset: 2288)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !4358, file: !3145, line: 159, baseType: !607, size: 32, offset: 2304)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !4358, file: !3145, line: 161, baseType: !415, size: 8, offset: 2336)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4358, file: !3145, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!4417 = !{!0, !4418, !4420, !4422, !4427, !4430, !4432, !4926, !4933, !4939, !4944, !4949, !4955, !4958, !4963, !4984, !4989, !4991, !4996, !5001, !5006, !5011, !5016, !5019, !5060, !5062, !5065, !5074, !5079, !5081, !5084, !5086, !5100, !5102, !5104}
!4418 = !DIGlobalVariableExpression(var: !4419, expr: !DIExpression())
!4419 = distinct !DIGlobalVariable(name: "force_minrev", scope: !2, file: !3, line: 49, type: !1705, isLocal: false, isDefinition: true)
!4420 = !DIGlobalVariableExpression(var: !4421, expr: !DIExpression())
!4421 = distinct !DIGlobalVariable(name: "__param_force_minrev", scope: !2, file: !3, line: 50, type: !4089, isLocal: true, isDefinition: true, align: 64)
!4422 = !DIGlobalVariableExpression(var: !4423, expr: !DIExpression())
!4423 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_minrevtype307", scope: !2, file: !3, line: 50, type: !4424, isLocal: true, isDefinition: true, align: 8)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 296, elements: !4425)
!4425 = !{!4426}
!4426 = !DISubrange(count: 37)
!4427 = !DIGlobalVariableExpression(var: !4428, expr: !DIExpression())
!4428 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !4429, isLocal: true, isDefinition: true)
!4429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 40, elements: !4375)
!4430 = !DIGlobalVariableExpression(var: !4431, expr: !DIExpression())
!4431 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_microcode__308_865_microcode_init7309", scope: !2, file: !3, line: 865, type: !529, isLocal: true, isDefinition: true)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(name: "microcode_ops", scope: !2, file: !3, line: 46, type: !4434, isLocal: true, isDefinition: true)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "microcode_ops", file: !93, line: 24, size: 384, elements: !4436)
!4436 = !{!4437, !4906, !4908, !4912, !4923, !4924, !4925}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "request_microcode_fw", scope: !4435, file: !93, line: 25, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!92, !125, !4441}
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !110, line: 705, size: 5824, elements: !4443)
!4443 = !{!4444, !4445, !4446, !4449, !4450, !4503, !4588, !4589, !4590, !4591, !4592, !4599, !4691, !4704, !4714, !4718, !4720, !4721, !4722, !4726, !4733, !4734, !4737, !4740, !4744, !4848, !4849, !4850, !4851, !4852, !4853, !4883, !4884, !4885, !4888, !4891, !4900, !4901, !4902, !4903, !4904, !4905}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4442, file: !110, line: 706, baseType: !372, size: 512)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4442, file: !110, line: 707, baseType: !4441, size: 64, offset: 512)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4442, file: !110, line: 709, baseType: !4447, size: 64, offset: 576)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !110, line: 37, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4442, file: !110, line: 711, baseType: !376, size: 64, offset: 640)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4442, file: !110, line: 712, baseType: !4451, size: 64, offset: 704)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !110, line: 89, size: 384, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4463, !4468, !4472}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4453, file: !110, line: 90, baseType: !376, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4453, file: !110, line: 91, baseType: !509, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4453, file: !110, line: 92, baseType: !4458, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!125, !4461, !452}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4442)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4453, file: !110, line: 93, baseType: !4464, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!457, !4461, !4467, !3912, !3913}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4453, file: !110, line: 95, baseType: !4469, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !4441}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4453, file: !110, line: 97, baseType: !4473, size: 64, offset: 320)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !117, line: 286, size: 1472, elements: !4476)
!4476 = !{!4477, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4475, file: !117, line: 287, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!125, !4441}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4475, file: !117, line: 288, baseType: !4469, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4475, file: !117, line: 289, baseType: !4478, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4475, file: !117, line: 290, baseType: !4478, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4475, file: !117, line: 291, baseType: !4478, size: 64, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4475, file: !117, line: 292, baseType: !4478, size: 64, offset: 320)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4475, file: !117, line: 293, baseType: !4478, size: 64, offset: 384)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4475, file: !117, line: 294, baseType: !4478, size: 64, offset: 448)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4475, file: !117, line: 295, baseType: !4478, size: 64, offset: 512)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4475, file: !117, line: 296, baseType: !4478, size: 64, offset: 576)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4475, file: !117, line: 297, baseType: !4478, size: 64, offset: 640)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4475, file: !117, line: 298, baseType: !4478, size: 64, offset: 704)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4475, file: !117, line: 299, baseType: !4478, size: 64, offset: 768)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4475, file: !117, line: 300, baseType: !4478, size: 64, offset: 832)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4475, file: !117, line: 301, baseType: !4478, size: 64, offset: 896)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4475, file: !117, line: 302, baseType: !4478, size: 64, offset: 960)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4475, file: !117, line: 303, baseType: !4478, size: 64, offset: 1024)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4475, file: !117, line: 304, baseType: !4478, size: 64, offset: 1088)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4475, file: !117, line: 305, baseType: !4478, size: 64, offset: 1152)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4475, file: !117, line: 306, baseType: !4478, size: 64, offset: 1216)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4475, file: !117, line: 307, baseType: !4478, size: 64, offset: 1280)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4475, file: !117, line: 308, baseType: !4478, size: 64, offset: 1344)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4475, file: !117, line: 309, baseType: !4478, size: 64, offset: 1408)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4442, file: !110, line: 714, baseType: !4504, size: 64, offset: 768)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4507, line: 80, size: 1344, elements: !4508)
!4507 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4508 = !{!4509, !4510, !4511, !4512, !4513, !4514, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4587}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4506, file: !4507, line: 81, baseType: !376, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4506, file: !4507, line: 82, baseType: !376, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4506, file: !4507, line: 83, baseType: !509, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4506, file: !4507, line: 84, baseType: !509, size: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4506, file: !4507, line: 85, baseType: !509, size: 64, offset: 256)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4506, file: !4507, line: 87, baseType: !4515, size: 64, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!125, !4441, !4518}
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !104, line: 96, size: 1152, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4524, !4525, !4526, !4527, !4540, !4550, !4551, !4552, !4553, !4554, !4562, !4563, !4564, !4565, !4566, !4567}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4519, file: !104, line: 97, baseType: !376, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4519, file: !104, line: 98, baseType: !4504, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4519, file: !104, line: 100, baseType: !352, size: 64, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4519, file: !104, line: 101, baseType: !376, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4519, file: !104, line: 103, baseType: !1705, size: 8, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4519, file: !104, line: 104, baseType: !103, size: 32, offset: 288)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4519, file: !104, line: 106, baseType: !4528, size: 64, offset: 320)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4531, line: 282, size: 1600, elements: !4532)
!4531 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4532 = !{!4533, !4534, !4535, !4539}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4530, file: !4531, line: 283, baseType: !3375, size: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4530, file: !4531, line: 284, baseType: !3375, size: 256, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4530, file: !4531, line: 285, baseType: !4536, size: 1024, offset: 512)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 1024, elements: !4537)
!4537 = !{!4538}
!4538 = !DISubrange(count: 128)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4530, file: !4531, line: 286, baseType: !2369, size: 64, offset: 1536)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4519, file: !104, line: 107, baseType: !4541, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4531, line: 217, size: 256, elements: !4544)
!4544 = !{!4545, !4546, !4548, !4549}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4543, file: !4531, line: 218, baseType: !3382, size: 128)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4543, file: !4531, line: 219, baseType: !4547, size: 64, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4531, line: 15, baseType: !507)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4543, file: !4531, line: 220, baseType: !608, size: 32, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4543, file: !4531, line: 221, baseType: !608, size: 32, offset: 224)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4519, file: !104, line: 109, baseType: !4478, size: 64, offset: 448)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4519, file: !104, line: 110, baseType: !4469, size: 64, offset: 512)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4519, file: !104, line: 111, baseType: !4478, size: 64, offset: 576)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4519, file: !104, line: 112, baseType: !4469, size: 64, offset: 640)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4519, file: !104, line: 113, baseType: !4555, size: 64, offset: 704)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!125, !4441, !4558}
!4558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !117, line: 60, baseType: !4559)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !117, line: 58, size: 32, elements: !4560)
!4560 = !{!4561}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4559, file: !117, line: 59, baseType: !125, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4519, file: !104, line: 114, baseType: !4478, size: 64, offset: 768)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4519, file: !104, line: 115, baseType: !509, size: 64, offset: 832)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4519, file: !104, line: 116, baseType: !509, size: 64, offset: 896)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4519, file: !104, line: 118, baseType: !4473, size: 64, offset: 960)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4519, file: !104, line: 119, baseType: !4469, size: 64, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4519, file: !104, line: 121, baseType: !4568, size: 64, offset: 1088)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !104, line: 121, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4506, file: !4507, line: 88, baseType: !4458, size: 64, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4506, file: !4507, line: 89, baseType: !4478, size: 64, offset: 448)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4506, file: !4507, line: 90, baseType: !4469, size: 64, offset: 512)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4506, file: !4507, line: 91, baseType: !4469, size: 64, offset: 576)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4506, file: !4507, line: 92, baseType: !4469, size: 64, offset: 640)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4506, file: !4507, line: 94, baseType: !4478, size: 64, offset: 704)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4506, file: !4507, line: 95, baseType: !4478, size: 64, offset: 768)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4506, file: !4507, line: 97, baseType: !4555, size: 64, offset: 832)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4506, file: !4507, line: 98, baseType: !4478, size: 64, offset: 896)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4506, file: !4507, line: 100, baseType: !4478, size: 64, offset: 960)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4506, file: !4507, line: 102, baseType: !4478, size: 64, offset: 1024)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4506, file: !4507, line: 103, baseType: !4469, size: 64, offset: 1088)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4506, file: !4507, line: 105, baseType: !4473, size: 64, offset: 1152)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4506, file: !4507, line: 107, baseType: !4584, size: 64, offset: 1216)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4586)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4507, line: 107, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4506, file: !4507, line: 109, baseType: !1705, size: 8, offset: 1280)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4442, file: !110, line: 715, baseType: !4518, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4442, file: !110, line: 717, baseType: !529, size: 64, offset: 896)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4442, file: !110, line: 719, baseType: !529, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4442, file: !110, line: 721, baseType: !838, size: 256, offset: 1024)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4442, file: !110, line: 725, baseType: !4593, size: 448, offset: 1280)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !110, line: 517, size: 448, elements: !4594)
!4594 = !{!4595, !4596, !4597, !4598}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4593, file: !110, line: 518, baseType: !357, size: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4593, file: !110, line: 519, baseType: !357, size: 128, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4593, file: !110, line: 520, baseType: !357, size: 128, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4593, file: !110, line: 521, baseType: !109, size: 32, offset: 384)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4442, file: !110, line: 726, baseType: !4600, size: 2496, offset: 1728)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !117, line: 663, size: 2496, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4684, !4688}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4600, file: !117, line: 664, baseType: !4558, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4600, file: !117, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4600, file: !117, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4600, file: !117, line: 667, baseType: !1705, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4600, file: !117, line: 668, baseType: !1705, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4600, file: !117, line: 669, baseType: !1705, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4600, file: !117, line: 670, baseType: !1705, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4600, file: !117, line: 671, baseType: !1705, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4600, file: !117, line: 672, baseType: !1705, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4600, file: !117, line: 673, baseType: !1705, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4600, file: !117, line: 674, baseType: !1705, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4600, file: !117, line: 675, baseType: !607, size: 32, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4600, file: !117, line: 676, baseType: !387, size: 32, offset: 96)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4600, file: !117, line: 678, baseType: !357, size: 128, offset: 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4600, file: !117, line: 679, baseType: !2092, size: 256, offset: 256)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4600, file: !117, line: 680, baseType: !4618, size: 64, offset: 512)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4620, line: 43, size: 1536, elements: !4621)
!4620 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4619, file: !4620, line: 44, baseType: !376, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4619, file: !4620, line: 45, baseType: !125, size: 32, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4619, file: !4620, line: 46, baseType: !357, size: 128, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4619, file: !4620, line: 47, baseType: !387, size: 32, offset: 256)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4619, file: !4620, line: 48, baseType: !4627, size: 64, offset: 320)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !117, line: 629, flags: DIFlagFwdDecl)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4619, file: !4620, line: 49, baseType: !3101, size: 320, offset: 384)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4619, file: !4620, line: 50, baseType: !507, size: 64, offset: 704)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4619, file: !4620, line: 51, baseType: !1302, size: 64, offset: 768)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4619, file: !4620, line: 52, baseType: !1302, size: 64, offset: 832)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4619, file: !4620, line: 53, baseType: !1302, size: 64, offset: 896)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4619, file: !4620, line: 54, baseType: !1302, size: 64, offset: 960)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4619, file: !4620, line: 55, baseType: !1302, size: 64, offset: 1024)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4619, file: !4620, line: 56, baseType: !507, size: 64, offset: 1088)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4619, file: !4620, line: 57, baseType: !507, size: 64, offset: 1152)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4619, file: !4620, line: 58, baseType: !507, size: 64, offset: 1216)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4619, file: !4620, line: 59, baseType: !507, size: 64, offset: 1280)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4619, file: !4620, line: 60, baseType: !507, size: 64, offset: 1344)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4619, file: !4620, line: 61, baseType: !4441, size: 64, offset: 1408)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4619, file: !4620, line: 62, baseType: !1705, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4619, file: !4620, line: 63, baseType: !1705, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4600, file: !117, line: 681, baseType: !1705, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4600, file: !117, line: 682, baseType: !1705, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4600, file: !117, line: 683, baseType: !1705, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4600, file: !117, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4600, file: !117, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4600, file: !117, line: 690, baseType: !1294, size: 512, offset: 640)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4600, file: !117, line: 691, baseType: !611, size: 64, offset: 1152)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4600, file: !117, line: 692, baseType: !2408, size: 256, offset: 1216)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4600, file: !117, line: 693, baseType: !1144, size: 192, offset: 1472)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4600, file: !117, line: 694, baseType: !4627, size: 64, offset: 1664)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4600, file: !117, line: 695, baseType: !407, size: 32, offset: 1728)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4600, file: !117, line: 696, baseType: !407, size: 32, offset: 1760)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4600, file: !117, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4600, file: !117, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4600, file: !117, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4600, file: !117, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4600, file: !117, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4600, file: !117, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4600, file: !117, line: 703, baseType: !1705, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4600, file: !117, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4600, file: !117, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4600, file: !117, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4600, file: !117, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4600, file: !117, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4600, file: !117, line: 709, baseType: !7, size: 32, offset: 1824)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4600, file: !117, line: 710, baseType: !116, size: 32, offset: 1856)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4600, file: !117, line: 711, baseType: !124, size: 32, offset: 1888)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4600, file: !117, line: 712, baseType: !124, size: 32, offset: 1920)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4600, file: !117, line: 713, baseType: !125, size: 32, offset: 1952)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4600, file: !117, line: 714, baseType: !125, size: 32, offset: 1984)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4600, file: !117, line: 715, baseType: !611, size: 64, offset: 2048)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4600, file: !117, line: 716, baseType: !611, size: 64, offset: 2112)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4600, file: !117, line: 717, baseType: !611, size: 64, offset: 2176)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4600, file: !117, line: 718, baseType: !611, size: 64, offset: 2240)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4600, file: !117, line: 720, baseType: !4679, size: 64, offset: 2304)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !117, line: 632, size: 64, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4680, file: !117, line: 633, baseType: !387, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4680, file: !117, line: 634, baseType: !7, size: 32, offset: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4600, file: !117, line: 721, baseType: !4685, size: 64, offset: 2368)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !4441, !1648}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4600, file: !117, line: 722, baseType: !4689, size: 64, offset: 2432)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 722, flags: DIFlagFwdDecl)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4442, file: !110, line: 727, baseType: !4692, size: 64, offset: 4224)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !117, line: 742, size: 1792, elements: !4694)
!4694 = !{!4695, !4696, !4697, !4701, !4702, !4703}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4693, file: !117, line: 743, baseType: !4475, size: 1472)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4693, file: !117, line: 744, baseType: !4478, size: 64, offset: 1472)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4693, file: !117, line: 745, baseType: !4698, size: 64, offset: 1536)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !4441, !1705}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4693, file: !117, line: 746, baseType: !4478, size: 64, offset: 1600)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4693, file: !117, line: 747, baseType: !4469, size: 64, offset: 1664)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4693, file: !117, line: 748, baseType: !4469, size: 64, offset: 1728)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4442, file: !110, line: 736, baseType: !4705, size: 128, offset: 4288)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !110, line: 529, size: 128, elements: !4706)
!4706 = !{!4707, !4711}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4705, file: !110, line: 531, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4710, line: 13, flags: DIFlagFwdDecl)
!4710 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4705, file: !110, line: 532, baseType: !4712, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !110, line: 49, flags: DIFlagFwdDecl)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4442, file: !110, line: 738, baseType: !4715, size: 64, offset: 4416)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4717)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !110, line: 738, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4442, file: !110, line: 740, baseType: !4719, size: 64, offset: 4480)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4442, file: !110, line: 741, baseType: !611, size: 64, offset: 4544)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4442, file: !110, line: 746, baseType: !611, size: 64, offset: 4608)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4442, file: !110, line: 747, baseType: !4723, size: 64, offset: 4672)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4725)
!4725 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !110, line: 747, flags: DIFlagFwdDecl)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4442, file: !110, line: 749, baseType: !4727, size: 64, offset: 4736)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !110, line: 428, size: 128, elements: !4729)
!4729 = !{!4730, !4731, !4732}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4728, file: !110, line: 433, baseType: !7, size: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4728, file: !110, line: 434, baseType: !7, size: 32, offset: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4728, file: !110, line: 435, baseType: !507, size: 64, offset: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4442, file: !110, line: 751, baseType: !357, size: 128, offset: 4800)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4442, file: !110, line: 762, baseType: !4735, size: 64, offset: 4928)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !110, line: 762, flags: DIFlagFwdDecl)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4442, file: !110, line: 770, baseType: !4738, offset: 4992)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4739, line: 5, elements: !742)
!4739 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4442, file: !110, line: 772, baseType: !4741, size: 64, offset: 4992)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4743, line: 18, flags: DIFlagFwdDecl)
!4743 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4442, file: !110, line: 773, baseType: !4745, size: 64, offset: 5056)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4747, line: 41, size: 512, elements: !4748)
!4747 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4748 = !{!4749, !4750, !4844, !4845, !4846, !4847}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4746, file: !4747, line: 42, baseType: !4745, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4746, file: !4747, line: 43, baseType: !4751, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4747, line: 125, size: 1408, elements: !4754)
!4754 = !{!4755, !4759, !4763, !4769, !4773, !4774, !4779, !4783, !4787, !4791, !4795, !4796, !4800, !4804, !4808, !4819, !4820, !4821, !4822, !4832, !4836, !4840}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4753, file: !4747, line: 126, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!4745, !4745}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4753, file: !4747, line: 127, baseType: !4760, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{null, !4745}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4753, file: !4747, line: 128, baseType: !4764, size: 64, offset: 128)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!1705, !4767}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4746)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4753, file: !4747, line: 129, baseType: !4770, size: 64, offset: 192)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!2369, !4767, !4461}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4753, file: !4747, line: 131, baseType: !4764, size: 64, offset: 256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4753, file: !4747, line: 133, baseType: !4775, size: 64, offset: 320)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!4778, !4767}
!4778 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4747, line: 132, flags: DIFlagFwdDecl)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4753, file: !4747, line: 134, baseType: !4780, size: 64, offset: 384)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!1705, !4767, !376}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4753, file: !4747, line: 136, baseType: !4784, size: 64, offset: 448)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!125, !4767, !376, !7, !529, !504}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4753, file: !4747, line: 141, baseType: !4788, size: 64, offset: 512)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!125, !4767, !376, !4328, !504}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4753, file: !4747, line: 144, baseType: !4792, size: 64, offset: 576)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!376, !4767}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4753, file: !4747, line: 145, baseType: !4792, size: 64, offset: 640)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4753, file: !4747, line: 146, baseType: !4797, size: 64, offset: 704)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!4745, !4767}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4753, file: !4747, line: 148, baseType: !4801, size: 64, offset: 768)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!4745, !4767, !4745}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4753, file: !4747, line: 151, baseType: !4805, size: 64, offset: 832)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!4745, !4767, !376}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4753, file: !4747, line: 153, baseType: !4809, size: 64, offset: 896)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!125, !4767, !376, !376, !7, !7, !4812}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4747, line: 94, size: 640, elements: !4814)
!4814 = !{!4815, !4816, !4817}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4813, file: !4747, line: 95, baseType: !4745, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4813, file: !4747, line: 96, baseType: !7, size: 32, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4813, file: !4747, line: 97, baseType: !4818, size: 512, offset: 128)
!4818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 512, elements: !1337)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4753, file: !4747, line: 158, baseType: !4801, size: 64, offset: 960)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4753, file: !4747, line: 161, baseType: !4797, size: 64, offset: 1024)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4753, file: !4747, line: 163, baseType: !4756, size: 64, offset: 1088)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4753, file: !4747, line: 164, baseType: !4823, size: 64, offset: 1152)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!125, !4767, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4747, line: 73, size: 128, elements: !4828)
!4828 = !{!4829, !4830, !4831}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4827, file: !4747, line: 74, baseType: !7, size: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4827, file: !4747, line: 75, baseType: !7, size: 32, offset: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4827, file: !4747, line: 76, baseType: !4767, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4753, file: !4747, line: 166, baseType: !4833, size: 64, offset: 1216)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!529, !4745, !125}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4753, file: !4747, line: 167, baseType: !4837, size: 64, offset: 1280)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!125, !4767, !7}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4753, file: !4747, line: 168, baseType: !4841, size: 64, offset: 1344)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!125, !4745}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4746, file: !4747, line: 44, baseType: !4441, size: 64, offset: 128)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4746, file: !4747, line: 45, baseType: !357, size: 128, offset: 192)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4746, file: !4747, line: 46, baseType: !357, size: 128, offset: 320)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4746, file: !4747, line: 47, baseType: !415, size: 8, offset: 448)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4442, file: !110, line: 776, baseType: !125, size: 32, offset: 5120)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4442, file: !110, line: 778, baseType: !694, size: 32, offset: 5152)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4442, file: !110, line: 779, baseType: !607, size: 32, offset: 5184)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4442, file: !110, line: 781, baseType: !387, size: 32, offset: 5216)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4442, file: !110, line: 782, baseType: !357, size: 128, offset: 5248)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4442, file: !110, line: 784, baseType: !4854, size: 64, offset: 5376)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4856)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4857, line: 52, size: 768, elements: !4858)
!4857 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4858 = !{!4859, !4860, !4861, !4862, !4863, !4867, !4871, !4872, !4873, !4874, !4878, !4882}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4856, file: !4857, line: 53, baseType: !376, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4856, file: !4857, line: 55, baseType: !509, size: 64, offset: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4856, file: !4857, line: 56, baseType: !509, size: 64, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4856, file: !4857, line: 58, baseType: !4458, size: 64, offset: 192)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4856, file: !4857, line: 59, baseType: !4864, size: 64, offset: 256)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!457, !4461, !4467}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4856, file: !4857, line: 61, baseType: !4868, size: 64, offset: 320)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !4854}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4856, file: !4857, line: 62, baseType: !4469, size: 64, offset: 384)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4856, file: !4857, line: 64, baseType: !4478, size: 64, offset: 448)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4856, file: !4857, line: 66, baseType: !3880, size: 64, offset: 512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4856, file: !4857, line: 67, baseType: !4875, size: 64, offset: 576)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!2369, !4461}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4856, file: !4857, line: 69, baseType: !4879, size: 64, offset: 640)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{null, !4461, !3912, !3913}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4856, file: !4857, line: 71, baseType: !4473, size: 64, offset: 704)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4442, file: !110, line: 785, baseType: !509, size: 64, offset: 5440)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4442, file: !110, line: 787, baseType: !4469, size: 64, offset: 5504)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4442, file: !110, line: 788, baseType: !4886, size: 64, offset: 5568)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !110, line: 46, flags: DIFlagFwdDecl)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4442, file: !110, line: 789, baseType: !4889, size: 64, offset: 5632)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !110, line: 48, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4442, file: !110, line: 791, baseType: !4892, size: 64, offset: 5696)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !110, line: 597, size: 128, elements: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4899}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4893, file: !110, line: 598, baseType: !132, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4893, file: !110, line: 599, baseType: !141, size: 32, offset: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4893, file: !110, line: 600, baseType: !146, size: 32, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4893, file: !110, line: 601, baseType: !1705, size: 8, offset: 96)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4893, file: !110, line: 602, baseType: !1705, size: 8, offset: 104)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4442, file: !110, line: 793, baseType: !151, size: 32, offset: 5760)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4442, file: !110, line: 795, baseType: !1705, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4442, file: !110, line: 796, baseType: !1705, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4442, file: !110, line: 797, baseType: !1705, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4442, file: !110, line: 798, baseType: !1705, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4442, file: !110, line: 799, baseType: !1705, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "microcode_fini_cpu", scope: !4435, file: !93, line: 26, baseType: !4907, size: 64, offset: 64)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "apply_microcode", scope: !4435, file: !93, line: 33, baseType: !4909, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!92, !125}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "collect_cpu_info", scope: !4435, file: !93, line: 34, baseType: !4913, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!125, !125, !4916}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_signature", file: !4918, line: 5, size: 96, elements: !4919)
!4918 = !DIFile(filename: "./arch/x86/include/asm/microcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76281ed1dc19c9b2cc0725843fac83fb")
!4919 = !{!4920, !4921, !4922}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4917, file: !4918, line: 6, baseType: !7, size: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !4917, file: !4918, line: 7, baseType: !7, size: 32, offset: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4917, file: !4918, line: 8, baseType: !7, size: 32, offset: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_late_load", scope: !4435, file: !93, line: 35, baseType: !4907, size: 64, offset: 256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "nmi_safe", scope: !4435, file: !93, line: 36, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "use_nmi", scope: !4435, file: !93, line: 37, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4926 = !DIGlobalVariableExpression(var: !4927, expr: !DIExpression())
!4927 = distinct !DIGlobalVariable(name: "ucode_cpu_info", scope: !2, file: !3, line: 63, type: !4928, isLocal: false, isDefinition: true)
!4928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4929, size: 12288, elements: !462)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucode_cpu_info", file: !4918, line: 11, size: 192, elements: !4930)
!4930 = !{!4931, !4932}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_sig", scope: !4929, file: !4918, line: 12, baseType: !4917, size: 96)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !4929, file: !4918, line: 13, baseType: !529, size: 64, offset: 128)
!4933 = !DIGlobalVariableExpression(var: !4934, expr: !DIExpression())
!4934 = distinct !DIGlobalVariable(name: "early_data", scope: !2, file: !3, line: 80, type: !4935, isLocal: false, isDefinition: true)
!4935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "early_load_data", file: !93, line: 40, size: 64, elements: !4936)
!4936 = !{!4937, !4938}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "old_rev", scope: !4935, file: !93, line: 41, baseType: !607, size: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "new_rev", scope: !4935, file: !93, line: 42, baseType: !607, size: 32, offset: 32)
!4939 = !DIGlobalVariableExpression(var: !4940, expr: !DIExpression())
!4940 = distinct !DIGlobalVariable(name: "__param_str_force_minrev", scope: !2, file: !3, line: 50, type: !4941, isLocal: true, isDefinition: true)
!4941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 184, elements: !4942)
!4942 = !{!4943}
!4943 = !DISubrange(count: 23)
!4944 = !DIGlobalVariableExpression(var: !4945, expr: !DIExpression())
!4945 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !4946, isLocal: true, isDefinition: true)
!4946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 112, elements: !4947)
!4947 = !{!4948}
!4948 = !DISubrange(count: 14)
!4949 = !DIGlobalVariableExpression(var: !4950, expr: !DIExpression())
!4950 = distinct !DIGlobalVariable(name: "__dis_opt_str", scope: !4951, file: !3, line: 107, type: !376, isLocal: true, isDefinition: true)
!4951 = distinct !DISubprogram(name: "check_loader_disabled_bsp", scope: !3, file: !3, line: 105, type: !3887, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4952)
!4952 = !{!4953, !4954}
!4953 = !DILocalVariable(name: "cmdline", scope: !4951, file: !3, line: 108, type: !376)
!4954 = !DILocalVariable(name: "option", scope: !4951, file: !3, line: 109, type: !376)
!4955 = !DIGlobalVariableExpression(var: !4956, expr: !DIExpression())
!4956 = distinct !DIGlobalVariable(name: "final_levels", scope: !2, file: !3, line: 73, type: !4957, isLocal: true, isDefinition: true)
!4957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !1546)
!4958 = !DIGlobalVariableExpression(var: !4959, expr: !DIExpression())
!4959 = distinct !DIGlobalVariable(scope: null, file: !3, line: 828, type: !4960, isLocal: true, isDefinition: true)
!4960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 360, elements: !4961)
!4961 = !{!4962}
!4962 = !DISubrange(count: 45)
!4963 = !DIGlobalVariableExpression(var: !4964, expr: !DIExpression())
!4964 = distinct !DIGlobalVariable(name: "__already_done", scope: !4965, file: !3, line: 833, type: !1705, isLocal: true, isDefinition: true)
!4965 = distinct !DISubprogram(name: "microcode_init", scope: !3, file: !3, line: 814, type: !4140, scopeLine: 815, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4966)
!4966 = !{!4967, !4968, !4969, !4970, !4972, !4975, !4976, !4979, !4982, !4983}
!4967 = !DILocalVariable(name: "dev_root", scope: !4965, file: !3, line: 816, type: !4441)
!4968 = !DILocalVariable(name: "c", scope: !4965, file: !3, line: 817, type: !4357)
!4969 = !DILocalVariable(name: "error", scope: !4965, file: !3, line: 818, type: !125)
!4970 = !DILocalVariable(name: "__ret_do_once", scope: !4971, file: !3, line: 833, type: !1705)
!4971 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 833, column: 2)
!4972 = !DILocalVariable(name: "__ret_cond", scope: !4973, file: !3, line: 833, type: !1705)
!4973 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 833, column: 2)
!4974 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 833, column: 2)
!4975 = !DILocalVariable(name: "__ret_once", scope: !4973, file: !3, line: 833, type: !1705)
!4976 = !DILocalVariable(name: "__ret_do_once", scope: !4977, file: !3, line: 836, type: !1705)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 836, column: 3)
!4978 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 835, column: 6)
!4979 = !DILocalVariable(name: "__ret_cond", scope: !4980, file: !3, line: 836, type: !1705)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 836, column: 3)
!4981 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 836, column: 3)
!4982 = !DILocalVariable(name: "__ret_once", scope: !4980, file: !3, line: 836, type: !1705)
!4983 = !DILabel(scope: !4965, name: "out_pdev", file: !3, line: 860)
!4984 = !DIGlobalVariableExpression(var: !4985, expr: !DIExpression())
!4985 = distinct !DIGlobalVariable(scope: null, file: !3, line: 833, type: !4986, isLocal: true, isDefinition: true)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 312, elements: !4987)
!4987 = !{!4988}
!4988 = !DISubrange(count: 39)
!4989 = !DIGlobalVariableExpression(var: !4990, expr: !DIExpression())
!4990 = distinct !DIGlobalVariable(name: "__already_done", scope: !4965, file: !3, line: 836, type: !1705, isLocal: true, isDefinition: true)
!4991 = !DIGlobalVariableExpression(var: !4992, expr: !DIExpression())
!4992 = distinct !DIGlobalVariable(scope: null, file: !3, line: 836, type: !4993, isLocal: true, isDefinition: true)
!4993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 328, elements: !4994)
!4994 = !{!4995}
!4995 = !DISubrange(count: 41)
!4996 = !DIGlobalVariableExpression(var: !4997, expr: !DIExpression())
!4997 = distinct !DIGlobalVariable(scope: null, file: !3, line: 838, type: !4998, isLocal: true, isDefinition: true)
!4998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 80, elements: !4999)
!4999 = !{!5000}
!5000 = !DISubrange(count: 10)
!5001 = !DIGlobalVariableExpression(var: !5002, expr: !DIExpression())
!5002 = distinct !DIGlobalVariable(scope: null, file: !3, line: 847, type: !5003, isLocal: true, isDefinition: true)
!5003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 368, elements: !5004)
!5004 = !{!5005}
!5005 = !DISubrange(count: 46)
!5006 = !DIGlobalVariableExpression(var: !5007, expr: !DIExpression())
!5007 = distinct !DIGlobalVariable(scope: null, file: !3, line: 853, type: !5008, isLocal: true, isDefinition: true)
!5008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 168, elements: !5009)
!5009 = !{!5010}
!5010 = !DISubrange(count: 21)
!5011 = !DIGlobalVariableExpression(var: !5012, expr: !DIExpression())
!5012 = distinct !DIGlobalVariable(scope: null, file: !3, line: 856, type: !5013, isLocal: true, isDefinition: true)
!5013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 344, elements: !5014)
!5014 = !{!5015}
!5015 = !DISubrange(count: 43)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 856, type: !5018, isLocal: true, isDefinition: true)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 32, elements: !1546)
!5019 = !DIGlobalVariableExpression(var: !5020, expr: !DIExpression())
!5020 = distinct !DIGlobalVariable(name: "microcode_pdev", scope: !2, file: !3, line: 248, type: !5021, isLocal: true, isDefinition: true)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !5023, line: 23, size: 6464, elements: !5024)
!5023 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!5024 = !{!5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5046, !5054, !5055, !5058}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5022, file: !5023, line: 24, baseType: !376, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5022, file: !5023, line: 25, baseType: !125, size: 32, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !5022, file: !5023, line: 26, baseType: !1705, size: 8, offset: 96)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5022, file: !5023, line: 27, baseType: !4442, size: 5824, offset: 128)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !5022, file: !5023, line: 28, baseType: !611, size: 64, offset: 5952)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !5022, file: !5023, line: 29, baseType: !4728, size: 128, offset: 6016)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !5022, file: !5023, line: 30, baseType: !607, size: 32, offset: 6144)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5022, file: !5023, line: 31, baseType: !5033, size: 64, offset: 6208)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5035, line: 21, size: 512, elements: !5036)
!5035 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!5036 = !{!5037, !5039, !5040, !5041, !5042, !5043, !5044, !5045}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5034, file: !5035, line: 22, baseType: !5038, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !358, line: 164, baseType: !3125)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5034, file: !5035, line: 23, baseType: !5038, size: 64, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5034, file: !5035, line: 24, baseType: !376, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5034, file: !5035, line: 25, baseType: !507, size: 64, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5034, file: !5035, line: 26, baseType: !507, size: 64, offset: 256)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5034, file: !5035, line: 27, baseType: !5033, size: 64, offset: 320)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5034, file: !5035, line: 27, baseType: !5033, size: 64, offset: 384)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5034, file: !5035, line: 27, baseType: !5033, size: 64, offset: 448)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !5022, file: !5023, line: 33, baseType: !5047, size: 64, offset: 6272)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5049)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !4531, line: 607, size: 256, elements: !5050)
!5050 = !{!5051, !5053}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5049, file: !4531, line: 608, baseType: !5052, size: 160)
!5052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 160, elements: !3221)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5049, file: !4531, line: 609, baseType: !4547, size: 64, offset: 192)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !5022, file: !5023, line: 38, baseType: !376, size: 64, offset: 6336)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !5022, file: !5023, line: 41, baseType: !5056, size: 64, offset: 6400)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !5023, line: 19, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !5022, file: !5023, line: 44, baseType: !5059, offset: 6464)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !4739, line: 8, elements: !742)
!5060 = !DIGlobalVariableExpression(var: !5061, expr: !DIExpression())
!5061 = distinct !DIGlobalVariable(name: "cpu_root_microcode_group", scope: !2, file: !3, line: 809, type: !511, isLocal: true, isDefinition: true)
!5062 = !DIGlobalVariableExpression(var: !5063, expr: !DIExpression())
!5063 = distinct !DIGlobalVariable(name: "cpu_root_microcode_attrs", scope: !2, file: !3, line: 802, type: !5064, isLocal: true, isDefinition: true)
!5064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 64, elements: !1422)
!5065 = !DIGlobalVariableExpression(var: !5066, expr: !DIExpression())
!5066 = distinct !DIGlobalVariable(name: "mc_syscore_ops", scope: !2, file: !3, line: 772, type: !5067, isLocal: true, isDefinition: true)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !5068, line: 13, size: 320, elements: !5069)
!5068 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59d2685cd3ea081e18f1bbec40d890d")
!5069 = !{!5070, !5071, !5072, !5073}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5067, file: !5068, line: 14, baseType: !357, size: 128)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5067, file: !5068, line: 15, baseType: !4139, size: 64, offset: 128)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5067, file: !5068, line: 16, baseType: !4355, size: 64, offset: 192)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5067, file: !5068, line: 17, baseType: !4355, size: 64, offset: 256)
!5074 = !DIGlobalVariableExpression(var: !5075, expr: !DIExpression())
!5075 = distinct !DIGlobalVariable(scope: null, file: !3, line: 789, type: !5076, isLocal: true, isDefinition: true)
!5076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 376, elements: !5077)
!5077 = !{!5078}
!5078 = !DISubrange(count: 47)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "mc_attr_group", scope: !2, file: !3, line: 747, type: !511, isLocal: true, isDefinition: true)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(name: "mc_default_attrs", scope: !2, file: !3, line: 741, type: !5083, isLocal: true, isDefinition: true)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 192, elements: !458)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(scope: null, file: !3, line: 738, type: !2909, isLocal: true, isDefinition: true)
!5086 = !DIGlobalVariableExpression(var: !5087, expr: !DIExpression())
!5087 = distinct !DIGlobalVariable(name: "dev_attr_version", scope: !2, file: !3, line: 738, type: !5088, isLocal: true, isDefinition: true)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !110, line: 106, size: 256, elements: !5089)
!5089 = !{!5090, !5091, !5096}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5088, file: !110, line: 107, baseType: !495, size: 128)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5088, file: !110, line: 108, baseType: !5092, size: 64, offset: 128)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!489, !4441, !5095, !457}
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5088, file: !110, line: 110, baseType: !5097, size: 64, offset: 192)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!489, !4441, !5095, !376, !504}
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 727, type: !1691, isLocal: true, isDefinition: true)
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 739, type: !2560, isLocal: true, isDefinition: true)
!5104 = !DIGlobalVariableExpression(var: !5105, expr: !DIExpression())
!5105 = distinct !DIGlobalVariable(name: "dev_attr_processor_flags", scope: !2, file: !3, line: 739, type: !5088, isLocal: true, isDefinition: true)
!5106 = !{i32 7, !"Dwarf Version", i32 5}
!5107 = !{i32 2, !"Debug Info Version", i32 3}
!5108 = !{i32 1, !"wchar_size", i32 2}
!5109 = !{i32 8, !"cf-protection-branch", i32 1}
!5110 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5111 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5112 = !{i32 1, !"Code Model", i32 2}
!5113 = !{i32 1, !"override-stack-alignment", i32 8}
!5114 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5115 = distinct !DISubprogram(name: "load_ucode_bsp", scope: !3, file: !3, line: 130, type: !2779, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5116)
!5116 = !{!5117, !5118}
!5117 = !DILocalVariable(name: "cpuid_1_eax", scope: !5115, file: !3, line: 132, type: !7)
!5118 = !DILocalVariable(name: "intel", scope: !5115, file: !3, line: 133, type: !1705)
!5119 = !DILocation(line: 132, column: 2, scope: !5115)
!5120 = !DILocation(line: 132, column: 15, scope: !5115)
!5121 = !DILocation(line: 133, column: 2, scope: !5115)
!5122 = !DILocation(line: 133, column: 7, scope: !5115)
!5123 = !DILocation(line: 135, column: 7, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 135, column: 6)
!5125 = !DILocation(line: 135, column: 6, scope: !5115)
!5126 = !DILocation(line: 136, column: 3, scope: !5124)
!5127 = !DILocation(line: 138, column: 16, scope: !5115)
!5128 = !DILocation(line: 138, column: 14, scope: !5115)
!5129 = !DILocation(line: 140, column: 10, scope: !5115)
!5130 = !DILocation(line: 140, column: 2, scope: !5115)
!5131 = !DILocation(line: 142, column: 18, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 142, column: 7)
!5133 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 140, column: 30)
!5134 = !DILocation(line: 142, column: 7, scope: !5132)
!5135 = !DILocation(line: 142, column: 31, scope: !5132)
!5136 = !DILocation(line: 142, column: 7, scope: !5133)
!5137 = !DILocation(line: 143, column: 4, scope: !5132)
!5138 = !DILocation(line: 144, column: 3, scope: !5133)
!5139 = !DILocation(line: 147, column: 18, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 147, column: 7)
!5141 = !DILocation(line: 147, column: 7, scope: !5140)
!5142 = !DILocation(line: 147, column: 31, scope: !5140)
!5143 = !DILocation(line: 147, column: 7, scope: !5133)
!5144 = !DILocation(line: 148, column: 4, scope: !5140)
!5145 = !DILocation(line: 149, column: 9, scope: !5133)
!5146 = !DILocation(line: 150, column: 3, scope: !5133)
!5147 = !DILocation(line: 153, column: 3, scope: !5133)
!5148 = !DILocation(line: 156, column: 6, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 156, column: 6)
!5150 = !DILocation(line: 156, column: 6, scope: !5115)
!5151 = !DILocation(line: 157, column: 3, scope: !5149)
!5152 = !DILocation(line: 159, column: 6, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 159, column: 6)
!5154 = !{i8 0, i8 2}
!5155 = !DILocation(line: 159, column: 6, scope: !5115)
!5156 = !DILocation(line: 160, column: 3, scope: !5153)
!5157 = !DILocation(line: 162, column: 35, scope: !5153)
!5158 = !DILocation(line: 162, column: 3, scope: !5153)
!5159 = !DILocation(line: 163, column: 1, scope: !5115)
!5160 = distinct !DISubprogram(name: "have_cpuid_p", scope: !5161, file: !5161, line: 25, type: !4140, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5161 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!5162 = !DILocation(line: 27, column: 2, scope: !5160)
!5163 = distinct !DISubprogram(name: "native_cpuid_eax", scope: !5161, file: !5161, line: 56, type: !5164, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5166)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!7, !7}
!5166 = !{!5167, !5168, !5169, !5170, !5171}
!5167 = !DILocalVariable(name: "op", arg: 1, scope: !5163, file: !5161, line: 56, type: !7)
!5168 = !DILocalVariable(name: "eax", scope: !5163, file: !5161, line: 56, type: !7)
!5169 = !DILocalVariable(name: "ebx", scope: !5163, file: !5161, line: 56, type: !7)
!5170 = !DILocalVariable(name: "ecx", scope: !5163, file: !5161, line: 56, type: !7)
!5171 = !DILocalVariable(name: "edx", scope: !5163, file: !5161, line: 56, type: !7)
!5172 = !DILocation(line: 56, column: 1, scope: !5163)
!5173 = distinct !DISubprogram(name: "x86_cpuid_vendor", scope: !93, file: !93, line: 71, type: !4140, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5174)
!5174 = !{!5175, !5176, !5177, !5178}
!5175 = !DILocalVariable(name: "eax", scope: !5173, file: !93, line: 73, type: !607)
!5176 = !DILocalVariable(name: "ebx", scope: !5173, file: !93, line: 74, type: !607)
!5177 = !DILocalVariable(name: "ecx", scope: !5173, file: !93, line: 74, type: !607)
!5178 = !DILocalVariable(name: "edx", scope: !5173, file: !93, line: 74, type: !607)
!5179 = !DILocation(line: 73, column: 2, scope: !5173)
!5180 = !DILocation(line: 73, column: 6, scope: !5173)
!5181 = !DILocation(line: 74, column: 2, scope: !5173)
!5182 = !DILocation(line: 74, column: 6, scope: !5173)
!5183 = !DILocation(line: 74, column: 11, scope: !5173)
!5184 = !DILocation(line: 74, column: 20, scope: !5173)
!5185 = !DILocation(line: 76, column: 2, scope: !5173)
!5186 = !DILocation(line: 78, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5173, file: !93, line: 78, column: 6)
!5188 = !DILocation(line: 78, column: 6, scope: !5173)
!5189 = !DILocation(line: 79, column: 3, scope: !5187)
!5190 = !DILocation(line: 81, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5173, file: !93, line: 81, column: 6)
!5192 = !DILocation(line: 81, column: 6, scope: !5173)
!5193 = !DILocation(line: 82, column: 3, scope: !5191)
!5194 = !DILocation(line: 84, column: 2, scope: !5173)
!5195 = !DILocation(line: 85, column: 1, scope: !5173)
!5196 = !DISubprogram(name: "x86_family", scope: !5197, file: !5197, line: 38, type: !5164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5197 = !DIFile(filename: "./arch/x86/include/asm/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7621f2ef482a6250db9c8e206e21622e")
!5198 = !DILocation(line: 108, column: 2, scope: !4951)
!5199 = !DILocation(line: 108, column: 14, scope: !4951)
!5200 = !DILocation(line: 109, column: 2, scope: !4951)
!5201 = !DILocation(line: 109, column: 14, scope: !4951)
!5202 = !DILocation(line: 109, column: 24, scope: !4951)
!5203 = !DILocation(line: 116, column: 6, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 116, column: 6)
!5205 = !DILocation(line: 116, column: 26, scope: !5204)
!5206 = !DILocation(line: 116, column: 6, scope: !4951)
!5207 = !DILocation(line: 117, column: 3, scope: !5204)
!5208 = !DILocation(line: 119, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 119, column: 6)
!5210 = !DILocation(line: 119, column: 25, scope: !5209)
!5211 = !DILocation(line: 119, column: 6, scope: !4951)
!5212 = !DILocation(line: 120, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 120, column: 7)
!5214 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 119, column: 44)
!5215 = !DILocation(line: 120, column: 7, scope: !5214)
!5216 = !DILocation(line: 121, column: 4, scope: !5213)
!5217 = !DILocation(line: 122, column: 2, scope: !5214)
!5218 = !DILocation(line: 124, column: 31, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 124, column: 6)
!5220 = !DILocation(line: 124, column: 40, scope: !5219)
!5221 = !DILocation(line: 124, column: 6, scope: !5219)
!5222 = !DILocation(line: 124, column: 48, scope: !5219)
!5223 = !DILocation(line: 124, column: 6, scope: !4951)
!5224 = !DILocation(line: 125, column: 17, scope: !5219)
!5225 = !DILocation(line: 125, column: 3, scope: !5219)
!5226 = !DILocation(line: 127, column: 9, scope: !4951)
!5227 = !DILocation(line: 127, column: 2, scope: !4951)
!5228 = !DILocation(line: 128, column: 1, scope: !4951)
!5229 = !DISubprogram(name: "load_ucode_intel_bsp", scope: !93, file: !93, line: 117, type: !5230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{null, !5232}
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!5233 = !DISubprogram(name: "load_ucode_amd_bsp", scope: !93, file: !93, line: 101, type: !5234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !5232, !7}
!5236 = distinct !DISubprogram(name: "load_ucode_ap", scope: !3, file: !3, line: 165, type: !2779, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5237)
!5237 = !{!5238}
!5238 = !DILocalVariable(name: "cpuid_1_eax", scope: !5236, file: !3, line: 167, type: !7)
!5239 = !DILocation(line: 167, column: 2, scope: !5236)
!5240 = !DILocation(line: 167, column: 15, scope: !5236)
!5241 = !DILocation(line: 169, column: 6, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 169, column: 6)
!5243 = !DILocation(line: 169, column: 6, scope: !5236)
!5244 = !DILocation(line: 170, column: 3, scope: !5242)
!5245 = !DILocation(line: 172, column: 16, scope: !5236)
!5246 = !DILocation(line: 172, column: 14, scope: !5236)
!5247 = !DILocation(line: 174, column: 10, scope: !5236)
!5248 = !DILocation(line: 174, column: 2, scope: !5236)
!5249 = !DILocation(line: 176, column: 18, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 176, column: 7)
!5251 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 174, column: 30)
!5252 = !DILocation(line: 176, column: 7, scope: !5250)
!5253 = !DILocation(line: 176, column: 31, scope: !5250)
!5254 = !DILocation(line: 176, column: 7, scope: !5251)
!5255 = !DILocation(line: 177, column: 4, scope: !5250)
!5256 = !DILocation(line: 178, column: 3, scope: !5251)
!5257 = !DILocation(line: 180, column: 18, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 180, column: 7)
!5259 = !DILocation(line: 180, column: 7, scope: !5258)
!5260 = !DILocation(line: 180, column: 31, scope: !5258)
!5261 = !DILocation(line: 180, column: 7, scope: !5251)
!5262 = !DILocation(line: 181, column: 22, scope: !5258)
!5263 = !DILocation(line: 181, column: 4, scope: !5258)
!5264 = !DILocation(line: 182, column: 3, scope: !5251)
!5265 = !DILocation(line: 184, column: 3, scope: !5251)
!5266 = !DILocation(line: 186, column: 1, scope: !5236)
!5267 = !DISubprogram(name: "load_ucode_intel_ap", scope: !93, file: !93, line: 118, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5268 = !DISubprogram(name: "load_ucode_amd_ap", scope: !93, file: !93, line: 102, type: !5269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !7}
!5271 = distinct !DISubprogram(name: "find_microcode_in_initrd", scope: !3, file: !3, line: 188, type: !5272, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5283)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!5274, !376}
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpio_data", file: !5275, line: 9, size: 320, elements: !5276)
!5275 = !DIFile(filename: "./include/linux/earlycpio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c701ce9fd3d94067c5868d60432fc97e")
!5276 = !{!5277, !5278, !5279}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5274, file: !5275, line: 10, baseType: !529, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5274, file: !5275, line: 11, baseType: !504, size: 64, offset: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5274, file: !5275, line: 12, baseType: !5280, size: 144, offset: 128)
!5280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 144, elements: !5281)
!5281 = !{!5282}
!5282 = !DISubrange(count: 18)
!5283 = !{!5284, !5285, !5286}
!5284 = !DILocalVariable(name: "path", arg: 1, scope: !5271, file: !3, line: 188, type: !376)
!5285 = !DILocalVariable(name: "start", scope: !5271, file: !3, line: 191, type: !507)
!5286 = !DILocalVariable(name: "size", scope: !5271, file: !3, line: 192, type: !504)
!5287 = !DILocation(line: 188, column: 62, scope: !5271)
!5288 = !DILocation(line: 191, column: 2, scope: !5271)
!5289 = !DILocation(line: 191, column: 16, scope: !5271)
!5290 = !DILocation(line: 192, column: 2, scope: !5271)
!5291 = !DILocation(line: 192, column: 9, scope: !5271)
!5292 = !DILocation(line: 201, column: 37, scope: !5271)
!5293 = !DILocation(line: 201, column: 10, scope: !5271)
!5294 = !DILocation(line: 201, column: 54, scope: !5271)
!5295 = !DILocation(line: 201, column: 8, scope: !5271)
!5296 = !DILocation(line: 202, column: 26, scope: !5271)
!5297 = !DILocation(line: 202, column: 10, scope: !5271)
!5298 = !DILocation(line: 202, column: 7, scope: !5271)
!5299 = !DILocation(line: 204, column: 6, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 204, column: 6)
!5301 = !DILocation(line: 204, column: 6, scope: !5271)
!5302 = !DILocation(line: 205, column: 39, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 204, column: 12)
!5304 = !DILocation(line: 205, column: 12, scope: !5303)
!5305 = !DILocation(line: 205, column: 57, scope: !5303)
!5306 = !DILocation(line: 205, column: 10, scope: !5303)
!5307 = !DILocation(line: 206, column: 28, scope: !5303)
!5308 = !DILocation(line: 206, column: 12, scope: !5303)
!5309 = !DILocation(line: 206, column: 9, scope: !5303)
!5310 = !DILocation(line: 207, column: 12, scope: !5303)
!5311 = !DILocation(line: 207, column: 9, scope: !5303)
!5312 = !DILocation(line: 208, column: 2, scope: !5303)
!5313 = !DILocation(line: 217, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 217, column: 6)
!5315 = !DILocation(line: 217, column: 6, scope: !5271)
!5316 = !DILocation(line: 218, column: 11, scope: !5314)
!5317 = !DILocation(line: 218, column: 9, scope: !5314)
!5318 = !DILocation(line: 218, column: 3, scope: !5314)
!5319 = !DILocation(line: 220, column: 24, scope: !5271)
!5320 = !DILocation(line: 220, column: 38, scope: !5271)
!5321 = !DILocation(line: 220, column: 30, scope: !5271)
!5322 = !DILocation(line: 220, column: 45, scope: !5271)
!5323 = !DILocation(line: 220, column: 9, scope: !5271)
!5324 = !DILocation(line: 224, column: 1, scope: !5271)
!5325 = !DISubprogram(name: "find_cpio_data", scope: !5275, file: !5275, line: 15, type: !5326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!5274, !376, !529, !504, !5328}
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!5329 = distinct !DISubprogram(name: "microcode_bsp_resume", scope: !3, file: !3, line: 761, type: !2779, scopeLine: 762, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5330)
!5330 = !{!5331, !5332, !5335, !5337, !5339}
!5331 = !DILocalVariable(name: "cpu", scope: !5329, file: !3, line: 763, type: !125)
!5332 = !DILocalVariable(name: "pscr_ret__", scope: !5333, file: !3, line: 763, type: !125)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 763, column: 12)
!5334 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 763, column: 12)
!5335 = !DILocalVariable(name: "__vpp_verify", scope: !5336, file: !3, line: 763, type: !2369)
!5336 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 763, column: 12)
!5337 = !DILocalVariable(name: "pfo_val__", scope: !5338, file: !3, line: 763, type: !607)
!5338 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 763, column: 12)
!5339 = !DILocalVariable(name: "uci", scope: !5329, file: !3, line: 764, type: !5340)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!5341 = !DILocation(line: 763, column: 2, scope: !5329)
!5342 = !DILocation(line: 763, column: 6, scope: !5329)
!5343 = !DILocation(line: 763, column: 12, scope: !5334)
!5344 = !DILocation(line: 763, column: 12, scope: !5333)
!5345 = !DILocation(line: 763, column: 12, scope: !5336)
!5346 = !DILocation(line: 763, column: 12, scope: !5338)
!5347 = !{i64 2154952105}
!5348 = !DILocation(line: 764, column: 2, scope: !5329)
!5349 = !DILocation(line: 764, column: 25, scope: !5329)
!5350 = !DILocation(line: 764, column: 48, scope: !5329)
!5351 = !DILocation(line: 764, column: 46, scope: !5329)
!5352 = !DILocation(line: 766, column: 6, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 766, column: 6)
!5354 = !DILocation(line: 766, column: 11, scope: !5353)
!5355 = !DILocation(line: 766, column: 6, scope: !5329)
!5356 = !DILocation(line: 767, column: 3, scope: !5353)
!5357 = !DILocation(line: 767, column: 18, scope: !5353)
!5358 = !DILocation(line: 767, column: 34, scope: !5353)
!5359 = !DILocation(line: 769, column: 26, scope: !5353)
!5360 = !DILocation(line: 769, column: 3, scope: !5353)
!5361 = !DILocation(line: 770, column: 1, scope: !5329)
!5362 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5363, file: !5363, line: 313, type: !5364, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5366)
!5363 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!5364 = !DISubroutineType(types: !5365)
!5365 = !{null, !376}
!5366 = !{!5367}
!5367 = !DILocalVariable(name: "op", arg: 1, scope: !5362, file: !5363, line: 313, type: !376)
!5368 = !DILocation(line: 313, column: 66, scope: !5362)
!5369 = !DILocation(line: 313, column: 72, scope: !5362)
!5370 = distinct !DISubprogram(name: "reload_early_microcode", scope: !3, file: !3, line: 226, type: !5269, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5371)
!5371 = !{!5372, !5373, !5374}
!5372 = !DILocalVariable(name: "cpu", arg: 1, scope: !5370, file: !3, line: 226, type: !7)
!5373 = !DILocalVariable(name: "vendor", scope: !5370, file: !3, line: 228, type: !125)
!5374 = !DILocalVariable(name: "family", scope: !5370, file: !3, line: 228, type: !125)
!5375 = !DILocation(line: 226, column: 49, scope: !5370)
!5376 = !DILocation(line: 228, column: 2, scope: !5370)
!5377 = !DILocation(line: 228, column: 6, scope: !5370)
!5378 = !DILocation(line: 228, column: 14, scope: !5370)
!5379 = !DILocation(line: 230, column: 11, scope: !5370)
!5380 = !DILocation(line: 230, column: 9, scope: !5370)
!5381 = !DILocation(line: 231, column: 11, scope: !5370)
!5382 = !DILocation(line: 231, column: 9, scope: !5370)
!5383 = !DILocation(line: 233, column: 10, scope: !5370)
!5384 = !DILocation(line: 233, column: 2, scope: !5370)
!5385 = !DILocation(line: 235, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 235, column: 7)
!5387 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 233, column: 18)
!5388 = !DILocation(line: 235, column: 14, scope: !5386)
!5389 = !DILocation(line: 235, column: 7, scope: !5387)
!5390 = !DILocation(line: 236, column: 4, scope: !5386)
!5391 = !DILocation(line: 237, column: 3, scope: !5387)
!5392 = !DILocation(line: 239, column: 7, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 239, column: 7)
!5394 = !DILocation(line: 239, column: 14, scope: !5393)
!5395 = !DILocation(line: 239, column: 7, scope: !5387)
!5396 = !DILocation(line: 240, column: 21, scope: !5393)
!5397 = !DILocation(line: 240, column: 4, scope: !5393)
!5398 = !DILocation(line: 241, column: 3, scope: !5387)
!5399 = !DILocation(line: 243, column: 3, scope: !5387)
!5400 = !DILocation(line: 245, column: 1, scope: !5370)
!5401 = distinct !DISubprogram(name: "__initstub__kmod_microcode__308_865_microcode_init7", scope: !3, file: !3, line: 865, type: !4140, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5402 = !DILocation(line: 865, column: 1, scope: !5401)
!5403 = !DILocation(line: 816, column: 2, scope: !4965)
!5404 = !DILocation(line: 816, column: 17, scope: !4965)
!5405 = !DILocation(line: 817, column: 2, scope: !4965)
!5406 = !DILocation(line: 817, column: 22, scope: !4965)
!5407 = !DILocation(line: 818, column: 2, scope: !4965)
!5408 = !DILocation(line: 818, column: 6, scope: !4965)
!5409 = !DILocation(line: 820, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 820, column: 6)
!5411 = !DILocation(line: 820, column: 6, scope: !4965)
!5412 = !DILocation(line: 821, column: 3, scope: !5410)
!5413 = !DILocation(line: 823, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 823, column: 6)
!5415 = !DILocation(line: 823, column: 9, scope: !5414)
!5416 = !DILocation(line: 823, column: 20, scope: !5414)
!5417 = !DILocation(line: 823, column: 6, scope: !4965)
!5418 = !DILocation(line: 824, column: 19, scope: !5414)
!5419 = !DILocation(line: 824, column: 17, scope: !5414)
!5420 = !DILocation(line: 824, column: 3, scope: !5414)
!5421 = !DILocation(line: 825, column: 11, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 825, column: 11)
!5423 = !DILocation(line: 825, column: 14, scope: !5422)
!5424 = !DILocation(line: 825, column: 25, scope: !5422)
!5425 = !DILocation(line: 825, column: 11, scope: !5414)
!5426 = !DILocation(line: 826, column: 19, scope: !5422)
!5427 = !DILocation(line: 826, column: 17, scope: !5422)
!5428 = !DILocation(line: 826, column: 3, scope: !5422)
!5429 = !DILocation(line: 828, column: 3, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 828, column: 3)
!5431 = !DILocation(line: 828, column: 3, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 828, column: 3)
!5433 = !DILocation(line: 830, column: 7, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 830, column: 6)
!5435 = !DILocation(line: 830, column: 6, scope: !4965)
!5436 = !DILocation(line: 831, column: 3, scope: !5434)
!5437 = !DILocation(line: 833, column: 2, scope: !4971)
!5438 = !DILocation(line: 833, column: 2, scope: !4973)
!5439 = !DILocation(line: 833, column: 2, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 833, column: 2)
!5441 = !DILocation(line: 0, scope: !5440)
!5442 = !DILocation(line: 833, column: 2, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 833, column: 2)
!5444 = !DILocation(line: 833, column: 2, scope: !4974)
!5445 = !DILocation(line: 833, column: 2, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 833, column: 2)
!5447 = !DILocation(line: 833, column: 2, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 833, column: 2)
!5449 = !DILocation(line: 833, column: 2, scope: !4965)
!5450 = !DILocation(line: 835, column: 17, scope: !4978)
!5451 = !DILocation(line: 835, column: 6, scope: !4978)
!5452 = !DILocation(line: 835, column: 6, scope: !4965)
!5453 = !DILocation(line: 836, column: 3, scope: !4977)
!5454 = !DILocation(line: 836, column: 3, scope: !4980)
!5455 = !DILocation(line: 836, column: 3, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 836, column: 3)
!5457 = !DILocation(line: 0, scope: !5456)
!5458 = !DILocation(line: 836, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 836, column: 3)
!5460 = !DILocation(line: 836, column: 3, scope: !4981)
!5461 = !DILocation(line: 836, column: 3, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 836, column: 3)
!5463 = !DILocation(line: 836, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 836, column: 3)
!5465 = !DILocation(line: 836, column: 3, scope: !4978)
!5466 = !DILocation(line: 838, column: 19, scope: !4965)
!5467 = !DILocation(line: 838, column: 17, scope: !4965)
!5468 = !DILocation(line: 839, column: 13, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 839, column: 6)
!5470 = !DILocation(line: 839, column: 6, scope: !5469)
!5471 = !DILocation(line: 839, column: 6, scope: !4965)
!5472 = !DILocation(line: 840, column: 18, scope: !5469)
!5473 = !DILocation(line: 840, column: 10, scope: !5469)
!5474 = !DILocation(line: 840, column: 3, scope: !5469)
!5475 = !DILocation(line: 842, column: 13, scope: !4965)
!5476 = !DILocation(line: 842, column: 11, scope: !4965)
!5477 = !DILocation(line: 843, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 843, column: 6)
!5479 = !DILocation(line: 843, column: 6, scope: !4965)
!5480 = !DILocation(line: 844, column: 31, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 843, column: 16)
!5482 = !DILocation(line: 844, column: 41, scope: !5481)
!5483 = !DILocation(line: 844, column: 11, scope: !5481)
!5484 = !DILocation(line: 844, column: 9, scope: !5481)
!5485 = !DILocation(line: 845, column: 14, scope: !5481)
!5486 = !DILocation(line: 845, column: 3, scope: !5481)
!5487 = !DILocation(line: 846, column: 7, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 846, column: 7)
!5489 = !DILocation(line: 846, column: 7, scope: !5481)
!5490 = !DILocation(line: 847, column: 4, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 847, column: 4)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 846, column: 14)
!5493 = !DILocation(line: 847, column: 4, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 847, column: 4)
!5495 = !DILocation(line: 848, column: 4, scope: !5492)
!5496 = !DILocation(line: 850, column: 2, scope: !5481)
!5497 = !DILocation(line: 852, column: 2, scope: !4965)
!5498 = !DILocation(line: 853, column: 2, scope: !4965)
!5499 = !DILocation(line: 856, column: 2, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 856, column: 2)
!5501 = !DILocation(line: 856, column: 2, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 856, column: 2)
!5503 = !DILocation(line: 858, column: 2, scope: !4965)
!5504 = !DILocation(line: 860, column: 2, scope: !4965)
!5505 = !DILocation(line: 861, column: 29, scope: !4965)
!5506 = !DILocation(line: 861, column: 2, scope: !4965)
!5507 = !DILocation(line: 862, column: 9, scope: !4965)
!5508 = !DILocation(line: 862, column: 2, scope: !4965)
!5509 = !DILocation(line: 864, column: 1, scope: !4965)
!5510 = distinct !DISubprogram(name: "native_cpuid", scope: !5161, file: !5161, line: 30, type: !5511, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5513)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !1160, !1160, !1160, !1160}
!5513 = !{!5514, !5515, !5516, !5517}
!5514 = !DILocalVariable(name: "eax", arg: 1, scope: !5510, file: !5161, line: 30, type: !1160)
!5515 = !DILocalVariable(name: "ebx", arg: 2, scope: !5510, file: !5161, line: 30, type: !1160)
!5516 = !DILocalVariable(name: "ecx", arg: 3, scope: !5510, file: !5161, line: 31, type: !1160)
!5517 = !DILocalVariable(name: "edx", arg: 4, scope: !5510, file: !5161, line: 31, type: !1160)
!5518 = !DILocation(line: 30, column: 47, scope: !5510)
!5519 = !DILocation(line: 30, column: 66, scope: !5510)
!5520 = !DILocation(line: 31, column: 19, scope: !5510)
!5521 = !DILocation(line: 31, column: 38, scope: !5510)
!5522 = !DILocation(line: 35, column: 15, scope: !5510)
!5523 = !DILocation(line: 36, column: 15, scope: !5510)
!5524 = !DILocation(line: 37, column: 15, scope: !5510)
!5525 = !DILocation(line: 38, column: 15, scope: !5510)
!5526 = !DILocation(line: 39, column: 14, scope: !5510)
!5527 = !DILocation(line: 39, column: 13, scope: !5510)
!5528 = !DILocation(line: 39, column: 26, scope: !5510)
!5529 = !DILocation(line: 39, column: 25, scope: !5510)
!5530 = !DILocation(line: 34, column: 2, scope: !5510)
!5531 = !{i64 1891860}
!5532 = !DILocation(line: 41, column: 1, scope: !5510)
!5533 = distinct !DISubprogram(name: "native_cpuid_ecx", scope: !5161, file: !5161, line: 58, type: !5164, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5534)
!5534 = !{!5535, !5536, !5537, !5538, !5539}
!5535 = !DILocalVariable(name: "op", arg: 1, scope: !5533, file: !5161, line: 58, type: !7)
!5536 = !DILocalVariable(name: "eax", scope: !5533, file: !5161, line: 58, type: !7)
!5537 = !DILocalVariable(name: "ebx", scope: !5533, file: !5161, line: 58, type: !7)
!5538 = !DILocalVariable(name: "ecx", scope: !5533, file: !5161, line: 58, type: !7)
!5539 = !DILocalVariable(name: "edx", scope: !5533, file: !5161, line: 58, type: !7)
!5540 = !DILocation(line: 58, column: 1, scope: !5533)
!5541 = distinct !DISubprogram(name: "amd_check_current_patch_level", scope: !3, file: !3, line: 89, type: !3887, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5542)
!5542 = !{!5543, !5544, !5545, !5546, !5547}
!5543 = !DILocalVariable(name: "lvl", scope: !5541, file: !3, line: 91, type: !607)
!5544 = !DILocalVariable(name: "dummy", scope: !5541, file: !3, line: 91, type: !607)
!5545 = !DILocalVariable(name: "i", scope: !5541, file: !3, line: 91, type: !607)
!5546 = !DILocalVariable(name: "levels", scope: !5541, file: !3, line: 92, type: !2459)
!5547 = !DILocalVariable(name: "__val", scope: !5548, file: !3, line: 94, type: !611)
!5548 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 94, column: 2)
!5549 = !DILocation(line: 91, column: 2, scope: !5541)
!5550 = !DILocation(line: 91, column: 6, scope: !5541)
!5551 = !DILocation(line: 91, column: 11, scope: !5541)
!5552 = !DILocation(line: 91, column: 18, scope: !5541)
!5553 = !DILocation(line: 92, column: 2, scope: !5541)
!5554 = !DILocation(line: 92, column: 7, scope: !5541)
!5555 = !DILocation(line: 94, column: 2, scope: !5541)
!5556 = !DILocation(line: 94, column: 2, scope: !5548)
!5557 = !DILocation(line: 96, column: 9, scope: !5541)
!5558 = !DILocation(line: 98, column: 9, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 98, column: 2)
!5560 = !DILocation(line: 98, column: 7, scope: !5559)
!5561 = !DILocation(line: 98, column: 14, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 98, column: 2)
!5563 = !DILocation(line: 98, column: 21, scope: !5562)
!5564 = !DILocation(line: 98, column: 2, scope: !5559)
!5565 = !DILocation(line: 99, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 99, column: 7)
!5567 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 98, column: 30)
!5568 = !DILocation(line: 99, column: 14, scope: !5566)
!5569 = !DILocation(line: 99, column: 21, scope: !5566)
!5570 = !DILocation(line: 99, column: 11, scope: !5566)
!5571 = !DILocation(line: 99, column: 7, scope: !5567)
!5572 = !DILocation(line: 100, column: 4, scope: !5566)
!5573 = !DILocation(line: 101, column: 2, scope: !5567)
!5574 = !DILocation(line: 98, column: 26, scope: !5562)
!5575 = !DILocation(line: 98, column: 2, scope: !5562)
!5576 = distinct !{!5576, !5564, !5577, !5578, !5579}
!5577 = !DILocation(line: 101, column: 2, scope: !5559)
!5578 = !{!"llvm.loop.mustprogress"}
!5579 = !{!"llvm.loop.unroll.disable"}
!5580 = !DILocation(line: 102, column: 2, scope: !5541)
!5581 = !DILocation(line: 103, column: 1, scope: !5541)
!5582 = !DISubprogram(name: "cmdline_find_option_bool", scope: !5583, file: !5583, line: 5, type: !5584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5583 = !DIFile(filename: "./arch/x86/include/asm/cmdline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d8909aa88a0777ea33f757b9bb1cc8")
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!125, !376, !376}
!5586 = distinct !DISubprogram(name: "__rdmsr", scope: !5587, file: !5587, line: 80, type: !5588, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5590)
!5587 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!613, !7}
!5590 = !{!5591, !5592, !5593}
!5591 = !DILocalVariable(name: "msr", arg: 1, scope: !5586, file: !5587, line: 80, type: !7)
!5592 = !DILocalVariable(name: "low", scope: !5586, file: !5587, line: 82, type: !507)
!5593 = !DILocalVariable(name: "high", scope: !5586, file: !5587, line: 82, type: !507)
!5594 = !DILocation(line: 80, column: 64, scope: !5586)
!5595 = !DILocation(line: 82, column: 2, scope: !5586)
!5596 = !DILocation(line: 87, column: 45, scope: !5586)
!5597 = !DILocation(line: 84, column: 2, scope: !5586)
!5598 = !{i64 1903847, i64 1903868, i64 2149581470, i64 2149581514, i64 2149581537, i64 2149581570, i64 2149581601, i64 2149581640}
!5599 = !DILocation(line: 89, column: 9, scope: !5586)
!5600 = !DILocation(line: 90, column: 1, scope: !5586)
!5601 = !DILocation(line: 89, column: 2, scope: !5586)
!5602 = distinct !DISubprogram(name: "x86_cpuid_family", scope: !93, file: !93, line: 87, type: !5603, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5605)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!7}
!5605 = !{!5606, !5607, !5608, !5609}
!5606 = !DILocalVariable(name: "eax", scope: !5602, file: !93, line: 89, type: !607)
!5607 = !DILocalVariable(name: "ebx", scope: !5602, file: !93, line: 90, type: !607)
!5608 = !DILocalVariable(name: "ecx", scope: !5602, file: !93, line: 90, type: !607)
!5609 = !DILocalVariable(name: "edx", scope: !5602, file: !93, line: 90, type: !607)
!5610 = !DILocation(line: 89, column: 2, scope: !5602)
!5611 = !DILocation(line: 89, column: 6, scope: !5602)
!5612 = !DILocation(line: 90, column: 2, scope: !5602)
!5613 = !DILocation(line: 90, column: 6, scope: !5602)
!5614 = !DILocation(line: 90, column: 11, scope: !5602)
!5615 = !DILocation(line: 90, column: 20, scope: !5602)
!5616 = !DILocation(line: 92, column: 2, scope: !5602)
!5617 = !DILocation(line: 94, column: 20, scope: !5602)
!5618 = !DILocation(line: 94, column: 9, scope: !5602)
!5619 = !DILocation(line: 95, column: 1, scope: !5602)
!5620 = !DILocation(line: 94, column: 2, scope: !5602)
!5621 = !DISubprogram(name: "reload_ucode_intel", scope: !93, file: !93, line: 119, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5622 = !DISubprogram(name: "reload_ucode_amd", scope: !93, file: !93, line: 104, type: !5269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5623 = !DISubprogram(name: "init_intel_microcode", scope: !93, file: !93, line: 120, type: !5624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!4434}
!5626 = !DISubprogram(name: "init_amd_microcode", scope: !93, file: !93, line: 105, type: !5624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5627 = !DISubprogram(name: "_printk", scope: !5628, file: !5628, line: 153, type: !5629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5628 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!125, !376, null}
!5631 = distinct !DISubprogram(name: "platform_device_register_simple", scope: !5023, file: !5023, line: 194, type: !5632, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5636)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!5021, !376, !125, !5634, !7}
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5034)
!5636 = !{!5637, !5638, !5639, !5640}
!5637 = !DILocalVariable(name: "name", arg: 1, scope: !5631, file: !5023, line: 195, type: !376)
!5638 = !DILocalVariable(name: "id", arg: 2, scope: !5631, file: !5023, line: 195, type: !125)
!5639 = !DILocalVariable(name: "res", arg: 3, scope: !5631, file: !5023, line: 196, type: !5634)
!5640 = !DILocalVariable(name: "num", arg: 4, scope: !5631, file: !5023, line: 196, type: !7)
!5641 = !DILocation(line: 195, column: 15, scope: !5631)
!5642 = !DILocation(line: 195, column: 25, scope: !5631)
!5643 = !DILocation(line: 196, column: 26, scope: !5631)
!5644 = !DILocation(line: 196, column: 44, scope: !5631)
!5645 = !DILocation(line: 198, column: 49, scope: !5631)
!5646 = !DILocation(line: 198, column: 55, scope: !5631)
!5647 = !DILocation(line: 199, column: 4, scope: !5631)
!5648 = !DILocation(line: 199, column: 9, scope: !5631)
!5649 = !DILocation(line: 198, column: 9, scope: !5631)
!5650 = !DILocation(line: 198, column: 2, scope: !5631)
!5651 = distinct !DISubprogram(name: "IS_ERR", scope: !5652, file: !5652, line: 59, type: !5653, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5655)
!5652 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!1705, !2369}
!5655 = !{!5656}
!5656 = !DILocalVariable(name: "ptr", arg: 1, scope: !5651, file: !5652, line: 59, type: !2369)
!5657 = !DILocation(line: 59, column: 60, scope: !5651)
!5658 = !DILocation(line: 61, column: 9, scope: !5651)
!5659 = !DILocation(line: 61, column: 2, scope: !5651)
!5660 = distinct !DISubprogram(name: "PTR_ERR", scope: !5652, file: !5652, line: 49, type: !5661, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!493, !2369}
!5663 = !{!5664}
!5664 = !DILocalVariable(name: "ptr", arg: 1, scope: !5660, file: !5652, line: 49, type: !2369)
!5665 = !DILocation(line: 49, column: 61, scope: !5660)
!5666 = !DILocation(line: 51, column: 16, scope: !5660)
!5667 = !DILocation(line: 51, column: 9, scope: !5660)
!5668 = !DILocation(line: 51, column: 2, scope: !5660)
!5669 = !DISubprogram(name: "bus_get_dev_root", scope: !4507, file: !4507, line: 280, type: !5670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!4441, !4504}
!5672 = !DISubprogram(name: "sysfs_create_group", scope: !483, file: !483, line: 307, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!125, !380, !510}
!5675 = !DISubprogram(name: "put_device", scope: !110, file: !110, line: 1231, type: !4470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubprogram(name: "register_syscore_ops", scope: !5068, file: !5068, line: 20, type: !5677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !5679}
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5680 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !158, file: !158, line: 283, type: !5681, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5686)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!125, !157, !376, !5683, !5683}
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!125, !7}
!5686 = !{!5687, !5688, !5689, !5690}
!5687 = !DILocalVariable(name: "state", arg: 1, scope: !5680, file: !158, line: 283, type: !157)
!5688 = !DILocalVariable(name: "name", arg: 2, scope: !5680, file: !158, line: 284, type: !376)
!5689 = !DILocalVariable(name: "startup", arg: 3, scope: !5680, file: !158, line: 285, type: !5683)
!5690 = !DILocalVariable(name: "teardown", arg: 4, scope: !5680, file: !158, line: 286, type: !5683)
!5691 = !DILocation(line: 283, column: 54, scope: !5680)
!5692 = !DILocation(line: 284, column: 21, scope: !5680)
!5693 = !DILocation(line: 285, column: 15, scope: !5680)
!5694 = !DILocation(line: 286, column: 15, scope: !5680)
!5695 = !DILocation(line: 288, column: 29, scope: !5680)
!5696 = !DILocation(line: 288, column: 36, scope: !5680)
!5697 = !DILocation(line: 288, column: 48, scope: !5680)
!5698 = !DILocation(line: 288, column: 57, scope: !5680)
!5699 = !DILocation(line: 288, column: 9, scope: !5680)
!5700 = !DILocation(line: 288, column: 2, scope: !5680)
!5701 = distinct !DISubprogram(name: "mc_cpu_online", scope: !3, file: !3, line: 776, type: !5684, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5702)
!5702 = !{!5703, !5704, !5705, !5706, !5709}
!5703 = !DILocalVariable(name: "cpu", arg: 1, scope: !5701, file: !3, line: 776, type: !7)
!5704 = !DILocalVariable(name: "uci", scope: !5701, file: !3, line: 778, type: !5340)
!5705 = !DILocalVariable(name: "dev", scope: !5701, file: !3, line: 779, type: !4441)
!5706 = !DILocalVariable(name: "__vpp_verify", scope: !5707, file: !3, line: 784, type: !2369)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 784, column: 2)
!5708 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 784, column: 2)
!5709 = !DILocalVariable(name: "__ptr", scope: !5710, file: !3, line: 784, type: !507)
!5710 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 784, column: 2)
!5711 = !DILocation(line: 776, column: 39, scope: !5701)
!5712 = !DILocation(line: 778, column: 2, scope: !5701)
!5713 = !DILocation(line: 778, column: 25, scope: !5701)
!5714 = !DILocation(line: 778, column: 48, scope: !5701)
!5715 = !DILocation(line: 778, column: 46, scope: !5701)
!5716 = !DILocation(line: 779, column: 2, scope: !5701)
!5717 = !DILocation(line: 779, column: 17, scope: !5701)
!5718 = !DILocation(line: 779, column: 38, scope: !5701)
!5719 = !DILocation(line: 779, column: 23, scope: !5701)
!5720 = !DILocation(line: 781, column: 9, scope: !5701)
!5721 = !DILocation(line: 781, column: 2, scope: !5701)
!5722 = !DILocation(line: 783, column: 2, scope: !5701)
!5723 = !DILocation(line: 783, column: 17, scope: !5701)
!5724 = !DILocation(line: 783, column: 34, scope: !5701)
!5725 = !DILocation(line: 783, column: 40, scope: !5701)
!5726 = !DILocation(line: 783, column: 45, scope: !5701)
!5727 = !DILocation(line: 784, column: 28, scope: !5701)
!5728 = !DILocation(line: 784, column: 33, scope: !5701)
!5729 = !DILocation(line: 784, column: 41, scope: !5701)
!5730 = !DILocation(line: 784, column: 2, scope: !5708)
!5731 = !DILocation(line: 784, column: 2, scope: !5707)
!5732 = !DILocation(line: 784, column: 2, scope: !5710)
!5733 = !DILocation(line: 784, column: 16, scope: !5701)
!5734 = !DILocation(line: 784, column: 26, scope: !5701)
!5735 = !DILocation(line: 785, column: 7, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 785, column: 6)
!5737 = !DILocation(line: 785, column: 6, scope: !5701)
!5738 = !DILocation(line: 786, column: 29, scope: !5736)
!5739 = !DILocation(line: 786, column: 34, scope: !5736)
!5740 = !DILocation(line: 786, column: 42, scope: !5736)
!5741 = !DILocation(line: 786, column: 27, scope: !5736)
!5742 = !DILocation(line: 786, column: 3, scope: !5736)
!5743 = !DILocation(line: 788, column: 26, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 788, column: 6)
!5745 = !DILocation(line: 788, column: 31, scope: !5744)
!5746 = !DILocation(line: 788, column: 6, scope: !5744)
!5747 = !DILocation(line: 788, column: 6, scope: !5701)
!5748 = !DILocation(line: 789, column: 3, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 789, column: 3)
!5750 = !DILocation(line: 789, column: 3, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 789, column: 3)
!5752 = !DILocation(line: 789, column: 3, scope: !5744)
!5753 = !DILocation(line: 791, column: 1, scope: !5701)
!5754 = !DILocation(line: 790, column: 2, scope: !5701)
!5755 = distinct !DISubprogram(name: "mc_cpu_down_prep", scope: !3, file: !3, line: 793, type: !5684, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5756)
!5756 = !{!5757, !5758}
!5757 = !DILocalVariable(name: "cpu", arg: 1, scope: !5755, file: !3, line: 793, type: !7)
!5758 = !DILocalVariable(name: "dev", scope: !5755, file: !3, line: 795, type: !4441)
!5759 = !DILocation(line: 793, column: 42, scope: !5755)
!5760 = !DILocation(line: 795, column: 2, scope: !5755)
!5761 = !DILocation(line: 795, column: 17, scope: !5755)
!5762 = !DILocation(line: 795, column: 38, scope: !5755)
!5763 = !DILocation(line: 795, column: 23, scope: !5755)
!5764 = !DILocation(line: 797, column: 21, scope: !5755)
!5765 = !DILocation(line: 797, column: 2, scope: !5755)
!5766 = !DILocation(line: 798, column: 22, scope: !5755)
!5767 = !DILocation(line: 798, column: 27, scope: !5755)
!5768 = !DILocation(line: 798, column: 2, scope: !5755)
!5769 = !DILocation(line: 800, column: 1, scope: !5755)
!5770 = !DILocation(line: 799, column: 2, scope: !5755)
!5771 = !DISubprogram(name: "platform_device_unregister", scope: !5023, file: !5023, line: 53, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !5021}
!5774 = distinct !DISubprogram(name: "platform_device_register_resndata", scope: !5023, file: !5023, line: 153, type: !5775, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5777)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!5021, !4441, !376, !125, !5634, !7, !2369, !504}
!5777 = !{!5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785}
!5778 = !DILocalVariable(name: "parent", arg: 1, scope: !5774, file: !5023, line: 154, type: !4441)
!5779 = !DILocalVariable(name: "name", arg: 2, scope: !5774, file: !5023, line: 154, type: !376)
!5780 = !DILocalVariable(name: "id", arg: 3, scope: !5774, file: !5023, line: 154, type: !125)
!5781 = !DILocalVariable(name: "res", arg: 4, scope: !5774, file: !5023, line: 155, type: !5634)
!5782 = !DILocalVariable(name: "num", arg: 5, scope: !5774, file: !5023, line: 155, type: !7)
!5783 = !DILocalVariable(name: "data", arg: 6, scope: !5774, file: !5023, line: 156, type: !2369)
!5784 = !DILocalVariable(name: "size", arg: 7, scope: !5774, file: !5023, line: 156, type: !504)
!5785 = !DILocalVariable(name: "pdevinfo", scope: !5774, file: !5023, line: 158, type: !5786)
!5786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_info", file: !5023, line: 119, size: 704, elements: !5787)
!5787 = !{!5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798}
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5786, file: !5023, line: 120, baseType: !4441, size: 64)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5786, file: !5023, line: 121, baseType: !4745, size: 64, offset: 64)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !5786, file: !5023, line: 122, baseType: !1705, size: 8, offset: 128)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5786, file: !5023, line: 124, baseType: !376, size: 64, offset: 192)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5786, file: !5023, line: 125, baseType: !125, size: 32, offset: 256)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5786, file: !5023, line: 127, baseType: !5634, size: 64, offset: 320)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "num_res", scope: !5786, file: !5023, line: 128, baseType: !7, size: 32, offset: 384)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5786, file: !5023, line: 130, baseType: !2369, size: 64, offset: 448)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "size_data", scope: !5786, file: !5023, line: 131, baseType: !504, size: 64, offset: 512)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5786, file: !5023, line: 132, baseType: !611, size: 64, offset: 576)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5786, file: !5023, line: 134, baseType: !5799, size: 64, offset: 640)
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5800, size: 64)
!5800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5801)
!5801 = !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !5023, line: 20, flags: DIFlagFwdDecl)
!5802 = !DILocation(line: 154, column: 18, scope: !5774)
!5803 = !DILocation(line: 154, column: 38, scope: !5774)
!5804 = !DILocation(line: 154, column: 48, scope: !5774)
!5805 = !DILocation(line: 155, column: 26, scope: !5774)
!5806 = !DILocation(line: 155, column: 44, scope: !5774)
!5807 = !DILocation(line: 156, column: 15, scope: !5774)
!5808 = !DILocation(line: 156, column: 28, scope: !5774)
!5809 = !DILocation(line: 158, column: 2, scope: !5774)
!5810 = !DILocation(line: 158, column: 30, scope: !5774)
!5811 = !DILocation(line: 158, column: 41, scope: !5774)
!5812 = !DILocation(line: 159, column: 13, scope: !5774)
!5813 = !DILocation(line: 160, column: 11, scope: !5774)
!5814 = !DILocation(line: 161, column: 9, scope: !5774)
!5815 = !DILocation(line: 162, column: 10, scope: !5774)
!5816 = !DILocation(line: 163, column: 14, scope: !5774)
!5817 = !DILocation(line: 164, column: 11, scope: !5774)
!5818 = !DILocation(line: 165, column: 16, scope: !5774)
!5819 = !DILocation(line: 169, column: 9, scope: !5774)
!5820 = !DILocation(line: 170, column: 1, scope: !5774)
!5821 = !DILocation(line: 169, column: 2, scope: !5774)
!5822 = !DISubprogram(name: "platform_device_register_full", scope: !5023, file: !5023, line: 136, type: !5823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!5021, !5825}
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5786)
!5827 = !DISubprogram(name: "__cpuhp_setup_state", scope: !158, file: !158, line: 263, type: !5828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{!125, !157, !376, !1705, !5683, !5683, !1705}
!5830 = !DISubprogram(name: "get_cpu_device", scope: !5831, file: !5831, line: 39, type: !5832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5831 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!4441, !7}
!5834 = distinct !DISubprogram(name: "version_show", scope: !3, file: !3, line: 722, type: !5093, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5835)
!5835 = !{!5836, !5837, !5838, !5839}
!5836 = !DILocalVariable(name: "dev", arg: 1, scope: !5834, file: !3, line: 722, type: !4441)
!5837 = !DILocalVariable(name: "attr", arg: 2, scope: !5834, file: !3, line: 723, type: !5095)
!5838 = !DILocalVariable(name: "buf", arg: 3, scope: !5834, file: !3, line: 723, type: !457)
!5839 = !DILocalVariable(name: "uci", scope: !5834, file: !3, line: 725, type: !5340)
!5840 = !DILocation(line: 722, column: 44, scope: !5834)
!5841 = !DILocation(line: 723, column: 29, scope: !5834)
!5842 = !DILocation(line: 723, column: 41, scope: !5834)
!5843 = !DILocation(line: 725, column: 2, scope: !5834)
!5844 = !DILocation(line: 725, column: 25, scope: !5834)
!5845 = !DILocation(line: 725, column: 48, scope: !5834)
!5846 = !DILocation(line: 725, column: 53, scope: !5834)
!5847 = !DILocation(line: 725, column: 46, scope: !5834)
!5848 = !DILocation(line: 727, column: 17, scope: !5834)
!5849 = !DILocation(line: 727, column: 32, scope: !5834)
!5850 = !DILocation(line: 727, column: 37, scope: !5834)
!5851 = !DILocation(line: 727, column: 45, scope: !5834)
!5852 = !DILocation(line: 727, column: 9, scope: !5834)
!5853 = !DILocation(line: 728, column: 1, scope: !5834)
!5854 = !DILocation(line: 727, column: 2, scope: !5834)
!5855 = !DISubprogram(name: "sprintf", scope: !5856, file: !5856, line: 10, type: !5857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5856 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5857 = !DISubroutineType(types: !5858)
!5858 = !{!125, !457, !376, null}
!5859 = distinct !DISubprogram(name: "processor_flags_show", scope: !3, file: !3, line: 730, type: !5093, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5860 = !{!5861, !5862, !5863, !5864}
!5861 = !DILocalVariable(name: "dev", arg: 1, scope: !5859, file: !3, line: 730, type: !4441)
!5862 = !DILocalVariable(name: "attr", arg: 2, scope: !5859, file: !3, line: 731, type: !5095)
!5863 = !DILocalVariable(name: "buf", arg: 3, scope: !5859, file: !3, line: 731, type: !457)
!5864 = !DILocalVariable(name: "uci", scope: !5859, file: !3, line: 733, type: !5340)
!5865 = !DILocation(line: 730, column: 52, scope: !5859)
!5866 = !DILocation(line: 731, column: 29, scope: !5859)
!5867 = !DILocation(line: 731, column: 41, scope: !5859)
!5868 = !DILocation(line: 733, column: 2, scope: !5859)
!5869 = !DILocation(line: 733, column: 25, scope: !5859)
!5870 = !DILocation(line: 733, column: 48, scope: !5859)
!5871 = !DILocation(line: 733, column: 53, scope: !5859)
!5872 = !DILocation(line: 733, column: 46, scope: !5859)
!5873 = !DILocation(line: 735, column: 17, scope: !5859)
!5874 = !DILocation(line: 735, column: 32, scope: !5859)
!5875 = !DILocation(line: 735, column: 37, scope: !5859)
!5876 = !DILocation(line: 735, column: 45, scope: !5859)
!5877 = !DILocation(line: 735, column: 9, scope: !5859)
!5878 = !DILocation(line: 736, column: 1, scope: !5859)
!5879 = !DILocation(line: 735, column: 2, scope: !5859)
!5880 = distinct !DISubprogram(name: "microcode_fini_cpu", scope: !3, file: !3, line: 752, type: !2772, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5881)
!5881 = !{!5882}
!5882 = !DILocalVariable(name: "cpu", arg: 1, scope: !5880, file: !3, line: 752, type: !125)
!5883 = !DILocation(line: 752, column: 36, scope: !5880)
!5884 = !DILocation(line: 754, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 754, column: 6)
!5886 = !DILocation(line: 754, column: 21, scope: !5885)
!5887 = !DILocation(line: 754, column: 6, scope: !5880)
!5888 = !DILocation(line: 755, column: 3, scope: !5885)
!5889 = !DILocation(line: 755, column: 18, scope: !5885)
!5890 = !DILocation(line: 755, column: 37, scope: !5885)
!5891 = !DILocation(line: 756, column: 1, scope: !5880)
!5892 = !DISubprogram(name: "sysfs_remove_group", scope: !483, file: !483, line: 315, type: !5893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{null, !380, !510}
