; ModuleID = 'arch/x86/kernel/cpu/amd.c'
source_filename = "arch/x86/kernel/cpu/amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_get_nodes_per_socket: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_get_nodes_per_socket ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_get_dr_addr_mask: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_get_dr_addr_mask ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_get_highest_perf: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_get_highest_perf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_clear_divider: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_clear_divider ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpu_dev = type { ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.3 }
%struct.atomic_t = type { i32 }
%union.anon.3 = type { i64 }
%struct.va_alignment = type { i32, i64, i64, [40 x i8] }
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.x86_cpuinit_ops = type { ptr, ptr, ptr, i8 }
%struct.nodemask_t = type { [1 x i64] }
%struct.cpumask = type { [1 x i64] }
%struct.anon = type { i8, i8, i8, i8 }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nodes_per_socket = internal global i32 1, align 4, !dbg !0
@__UNIQUE_ID___addressable_amd_get_nodes_per_socket304 = internal global ptr @amd_get_nodes_per_socket, section ".discard.addressable", align 8, !dbg !155
@__setup_str_rdrand_cmdline = internal constant [7 x i8] c"rdrand\00", section ".init.rodata", align 1, !dbg !207
@__setup_rdrand_cmdline = internal global %struct.obs_kernel_param { ptr @__setup_str_rdrand_cmdline, ptr @rdrand_cmdline, i32 1 }, section ".init.setup", align 8, !dbg !157
@amd_cpu_dev = internal constant %struct.cpu_dev { ptr @.str.3, [2 x ptr] [ptr @.str.4, ptr null], ptr @early_init_amd, ptr @bsp_init_amd, ptr @init_amd, ptr null, ptr @cpu_detect_tlb_amd, i32 2 }, align 8, !dbg !227
@__cpu_dev_amd_cpu_dev = internal constant ptr @amd_cpu_dev, section ".x86_cpu_dev.init", align 8, !dbg !169
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !191
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"arch/x86/kernel/cpu/amd.c\00", align 1, !dbg !194
@amd_dr_addr_mask = internal global [4 x i64] zeroinitializer, section ".data..percpu..read_mostly", align 16, !dbg !205
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@amd_msr_dr_addr_masks = internal global [4 x i32] [i32 -1073672153, i32 -1073672167, i32 -1073672166, i32 -1073672165], align 16, !dbg !450
@__UNIQUE_ID___addressable_amd_get_dr_addr_mask305 = internal global ptr @amd_get_dr_addr_mask, section ".discard.addressable", align 8, !dbg !199
@__UNIQUE_ID___addressable_amd_get_highest_perf306 = internal global ptr @amd_get_highest_perf, section ".discard.addressable", align 8, !dbg !201
@__UNIQUE_ID___addressable_amd_clear_divider307 = internal global ptr @amd_clear_divider, section ".discard.addressable", align 8, !dbg !203
@.str.2 = private unnamed_addr constant [6 x i8] c"force\00", align 1, !dbg !212
@rdrand_force = internal global i8 0, align 1, !dbg !217
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"AMD\00", align 1, !dbg !219
@.str.4 = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1, !dbg !222
@amd_erratum_400 = internal constant [4 x i32] [i32 1, i32 255930367, i32 268574719, i32 0], align 16, !dbg !262
@early_init_amd.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !229
@.str.5 = private unnamed_addr constant [75 x i8] c"\016[Firmware Info]: CPU: Re-enabling disabled Topology Extensions Support.\0A\00", align 1, !dbg !257
@smp_num_siblings = external dso_local global i32, align 4
@cpu_caps_set = external dso_local global [24 x i32], align 16
@.str.6 = private unnamed_addr constant [56 x i8] c"\014[Firmware Bug]: TSC doesn't count with P0 frequency!\0A\00", align 1, !dbg !266
@va_align = external dso_local global %struct.va_alignment, align 64
@__max_die_per_package = external dso_local global i32, align 4
@x86_amd_ls_cfg_base = external dso_local global i64, align 8
@x86_amd_ls_cfg_ssbd_mask = external dso_local global i64, align 8
@bsp_init_amd.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !271
@.str.7 = private unnamed_addr constant [28 x i8] c"Family 0x%x, model: 0x%x??\0A\00", align 1, !dbg !308
@spectre_v2_enabled = external dso_local global i32, align 4
@amd_erratum_1485 = internal constant [4 x i32] [i32 -1, i32 420479487, i32 425724671, i32 0], align 16, !dbg !448
@apic = external dso_local global ptr, align 8
@apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read287 = internal global ptr @__SCK__apic_call_read, section ".discard.addressable", align 8, !dbg !313
@__SCK__apic_call_read = external dso_local global %struct.static_call_key, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"Hammer\00", align 1, !dbg !321
@rdmsrl_amd_safe.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !324
@.str.9 = private unnamed_addr constant [31 x i8] c"%s should only be used on K8!\0A\00", align 1, !dbg !350
@__func__.rdmsrl_amd_safe = private unnamed_addr constant [16 x i8] c"rdmsrl_amd_safe\00", align 1, !dbg !355
@wrmsrl_amd_safe.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !358
@__func__.wrmsrl_amd_safe = private unnamed_addr constant [16 x i8] c"wrmsrl_amd_safe\00", align 1, !dbg !379
@amd_erratum_383 = internal constant [3 x i32] [i32 3, i32 268439551, i32 0], align 4, !dbg !381
@clear_rdrand_cpuid_bit.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !386
@.str.10 = private unnamed_addr constant [112 x i8] c"\016BIOS may not properly restore RDRAND after suspend, but hypervisor does not support hiding RDRAND via CPUID.\0A\00", align 1, !dbg !405
@clear_rdrand_cpuid_bit.__already_done.11 = internal global i8 0, section ".data..once", align 1, !dbg !410
@.str.12 = private unnamed_addr constant [110 x i8] c"\016BIOS may not properly restore RDRAND after suspend, hiding RDRAND via CPUID. Use rdrand=force to reenable.\0A\00", align 1, !dbg !412
@node_reclaim_distance = external dso_local global i32, section ".data..read_mostly", align 4
@init_amd_zen1.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !417
@.str.13 = private unnamed_addr constant [64 x i8] c"\015AMD Zen1 DIV0 bug detected. Disable SMT for full protection.\0A\00", align 1, !dbg !428
@zen2_zenbleed_check.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !430
@.str.14 = private unnamed_addr constant [67 x i8] c"\015Zenbleed: please update your microcode for the most optimal fix\0A\00", align 1, !dbg !443
@cpu_llc_id = external dso_local global i16, section ".data..percpu..read_mostly", align 2
@x86_cpuinit = external dso_local global %struct.x86_cpuinit_ops, align 8
@__apicid_to_node = external dso_local global [32768 x i16], align 16
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@tlb_lld_4k = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lli_4k = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lld_2m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lld_4m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lli_2m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lli_4m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_amd_get_nodes_per_socket304, ptr @__setup_rdrand_cmdline, ptr @__cpu_dev_amd_cpu_dev, ptr @__UNIQUE_ID___addressable_amd_get_dr_addr_mask305, ptr @__UNIQUE_ID___addressable_amd_get_highest_perf306, ptr @__UNIQUE_ID___addressable_amd_clear_divider307, ptr @apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read287], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @amd_get_nodes_per_socket() #0 align 16 !dbg !462 {
entry:
  %0 = load i32, ptr @nodes_per_socket, align 4, !dbg !465
  ret i32 %0, !dbg !466
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @rdrand_cmdline(ptr noundef %str) #1 section ".init.text" align 16 !dbg !467 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load ptr, ptr %str.addr, align 8, !dbg !471
  %tobool = icmp ne ptr %0, null, !dbg !471
  br i1 %tobool, label %if.end, label %if.then, !dbg !473

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !474
  br label %return, !dbg !474

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !475
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.2) #13, !dbg !477
  %tobool1 = icmp ne i32 %call, 0, !dbg !477
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !478

if.then2:                                         ; preds = %if.end
  store i8 1, ptr @rdrand_force, align 1, !dbg !479
  br label %if.end3, !dbg !480

if.else:                                          ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !481
  br label %return, !dbg !481

if.end3:                                          ; preds = %if.then2
  store i32 0, ptr %retval, align 4, !dbg !482
  br label %return, !dbg !482

return:                                           ; preds = %if.end3, %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !483
  ret i32 %2, !dbg !483
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_spectral_chicken(ptr noundef %c) #0 align 16 !dbg !484 {
entry:
  %c.addr = alloca ptr, align 8
  %value = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !486, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #14, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %value, metadata !487, metadata !DIExpression()), !dbg !490
  br i1 false, label %cond.true, label %cond.false, !dbg !491

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end8, label %land.lhs.true, !dbg !493

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !493
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !493
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !493
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef %arraydecay) #13, !dbg !493
  br i1 %call, label %if.end8, label %land.lhs.true, !dbg !491

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !494

cond.true1:                                       ; preds = %land.lhs.true
  br i1 true, label %if.then, label %if.end8, !dbg !495

cond.false2:                                      ; preds = %land.lhs.true
  %2 = load ptr, ptr %c.addr, align 8, !dbg !495
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !495
  %arraydecay3 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !495
  %call4 = call zeroext i1 @arch_test_bit(i64 noundef 431, ptr noundef %arraydecay3) #13, !dbg !495
  br i1 %call4, label %if.then, label %if.end8, !dbg !494

if.then:                                          ; preds = %cond.false2, %cond.true1
  %call5 = call i32 @rdmsrl_safe(i32 noundef -1073671965, ptr noundef %value) #13, !dbg !496
  %tobool = icmp ne i32 %call5, 0, !dbg !496
  br i1 %tobool, label %if.end, label %if.then6, !dbg !499

if.then6:                                         ; preds = %if.then
  %4 = load i64, ptr %value, align 8, !dbg !500
  %or = or i64 %4, 2, !dbg !500
  store i64 %or, ptr %value, align 8, !dbg !500
  %5 = load i64, ptr %value, align 8, !dbg !502
  %call7 = call i32 @wrmsrl_safe(i32 noundef -1073671965, i64 noundef %5) #13, !dbg !503
  br label %if.end, !dbg !504

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end8, !dbg !505

if.end8:                                          ; preds = %if.end, %cond.false2, %cond.true1, %cond.false, %cond.true
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #14, !dbg !506
  ret void, !dbg !506
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !507 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !515, metadata !DIExpression()), !dbg !517
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !516, metadata !DIExpression()), !dbg !518
  %0 = load i64, ptr %nr.addr, align 8, !dbg !519
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !520
  br i1 %1, label %cond.true, label %cond.false, !dbg !520

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !521
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !522
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !523
  %conv = zext i1 %call to i32, !dbg !523
  br label %cond.end, !dbg !520

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !524
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !525
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !526
  %conv2 = zext i1 %call1 to i32, !dbg !526
  br label %cond.end, !dbg !520

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !520
  %tobool = icmp ne i32 %cond, 0, !dbg !520
  ret i1 %tobool, !dbg !527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #5 align 16 !dbg !528 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !531, metadata !DIExpression()), !dbg !534
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !532, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %err, metadata !533, metadata !DIExpression()), !dbg !537
  %0 = load i32, ptr %msr.addr, align 4, !dbg !538
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #13, !dbg !539
  %1 = load ptr, ptr %p.addr, align 8, !dbg !540
  store i64 %call, ptr %1, align 8, !dbg !541
  %2 = load i32, ptr %err, align 4, !dbg !542
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !543
  ret i32 %2, !dbg !544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsrl_safe(i32 noundef %msr, i64 noundef %val) #5 align 16 !dbg !545 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !549, metadata !DIExpression()), !dbg !551
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !550, metadata !DIExpression()), !dbg !552
  %0 = load i32, ptr %msr.addr, align 4, !dbg !553
  %1 = load i64, ptr %val.addr, align 8, !dbg !554
  %conv = trunc i64 %1 to i32, !dbg !555
  %2 = load i64, ptr %val.addr, align 8, !dbg !556
  %shr = lshr i64 %2, 32, !dbg !557
  %conv1 = trunc i64 %shr to i32, !dbg !558
  %call = call i32 @wrmsr_safe(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #13, !dbg !559
  ret i32 %call, !dbg !560
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_set_dr_addr_mask(i64 noundef %mask, i32 noundef %dr) #0 align 16 !dbg !561 {
entry:
  %mask.addr = alloca i64, align 8
  %dr.addr = alloca i32, align 4
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp34 = alloca i64, align 8
  %__vpp_verify46 = alloca ptr, align 8
  %tmp49 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp50 = alloca ptr, align 8
  %__vpp_verify61 = alloca ptr, align 8
  %tmp64 = alloca ptr, align 8
  %__ptr65 = alloca i64, align 8
  %tmp66 = alloca ptr, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !565, metadata !DIExpression()), !dbg !594
  store i32 %dr, ptr %dr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dr.addr, metadata !566, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !567, metadata !DIExpression()), !dbg !597
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !598
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !568, metadata !DIExpression()), !dbg !599
  br label %do.body, !dbg !599

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !600
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !571, metadata !DIExpression()), !dbg !600
  store ptr null, ptr %__vpp_verify, align 8, !dbg !600
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !599
  br label %do.cond, !dbg !600

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !600

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !601
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !575, metadata !DIExpression()), !dbg !601
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !601, !srcloc !602
  store i32 %1, ptr %pfo_val__, align 4, !dbg !601
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !601
  %conv = zext i32 %2 to i64, !dbg !601
  %conv2 = trunc i64 %conv to i32, !dbg !601
  store i32 %conv2, ptr %tmp1, align 4, !dbg !601
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !599
  %3 = load i32, ptr %tmp1, align 4, !dbg !601
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !599
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !599
  store i32 %4, ptr %tmp3, align 4, !dbg !599
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !598
  %5 = load i32, ptr %tmp3, align 4, !dbg !599
  store i32 %5, ptr %tmp, align 4, !dbg !598
  %6 = load i32, ptr %tmp, align 4, !dbg !598
  store i32 %6, ptr %cpu, align 4, !dbg !597
  br i1 false, label %cond.true, label %cond.false, !dbg !603

cond.true:                                        ; preds = %do.end
  br i1 false, label %if.end, label %if.then, !dbg !604

cond.false:                                       ; preds = %do.end
  br i1 false, label %cond.true4, label %cond.false8, !dbg !603

cond.true4:                                       ; preds = %cond.false
  br i1 false, label %cond.true5, label %cond.false6, !dbg !604

cond.true5:                                       ; preds = %cond.true4
  br i1 true, label %if.end, label %if.then, !dbg !604

cond.false6:                                      ; preds = %cond.true4
  %call = call zeroext i1 @arch_test_bit(i64 noundef 218, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !604
  br i1 %call, label %if.end, label %if.then, !dbg !604

cond.false8:                                      ; preds = %cond.false
  %call9 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 218) #13, !dbg !604
  br i1 %call9, label %if.end, label %if.then, !dbg !603

if.then:                                          ; preds = %cond.false8, %cond.false6, %cond.true5, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !606

if.end:                                           ; preds = %cond.false8, %cond.false6, %cond.true5, %cond.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !577, metadata !DIExpression()), !dbg !607
  %7 = load i32, ptr %dr.addr, align 4, !dbg !607
  %conv11 = zext i32 %7 to i64, !dbg !607
  %cmp = icmp uge i64 %conv11, 4, !dbg !607
  %lnot = xor i1 %cmp, true, !dbg !607
  %lnot13 = xor i1 %lnot, true, !dbg !607
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !607
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !607
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !608
  %tobool = icmp ne i32 %8, 0, !dbg !608
  %lnot14 = xor i1 %tobool, true, !dbg !608
  %lnot16 = xor i1 %lnot14, true, !dbg !608
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !608
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !608
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !608
  %tobool19 = icmp ne i64 %expval, 0, !dbg !608
  br i1 %tobool19, label %if.then20, label %if.end33, !dbg !607

if.then20:                                        ; preds = %if.end
  br label %do.body21, !dbg !608

do.body21:                                        ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !580, metadata !DIExpression()), !dbg !609
  store i32 2307, ptr %__flags, align 4, !dbg !609
  br label %do.body22, !dbg !609

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !610

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !610

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !609

do.body25:                                        ; preds = %do.end24
  %9 = load i32, ptr %__flags, align 4, !dbg !612
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 1327, i32 %9, i64 12) #14, !dbg !612, !srcloc !614
  br label %do.cond26, !dbg !612

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !612

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !609

do.body28:                                        ; preds = %do.end27
  br label %do.cond29, !dbg !615

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !615

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !608
  br label %do.cond31, !dbg !609

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !609

do.end32:                                         ; preds = %do.cond31
  br label %if.end33, !dbg !609

if.end33:                                         ; preds = %do.end32, %if.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !607
  %tobool35 = icmp ne i32 %10, 0, !dbg !607
  %lnot36 = xor i1 %tobool35, true, !dbg !607
  %lnot38 = xor i1 %lnot36, true, !dbg !607
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !607
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !607
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !607
  store i64 %expval41, ptr %tmp34, align 8, !dbg !608
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !617
  %11 = load i64, ptr %tmp34, align 8, !dbg !607
  %tobool42 = icmp ne i64 %11, 0, !dbg !617
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !618

if.then43:                                        ; preds = %if.end33
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !619

if.end44:                                         ; preds = %if.end33
  br label %do.body45, !dbg !620

do.body45:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify46) #14, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify46, metadata !583, metadata !DIExpression()), !dbg !621
  store ptr null, ptr %__vpp_verify46, align 8, !dbg !621
  %12 = load ptr, ptr %__vpp_verify46, align 8, !dbg !621
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify46) #14, !dbg !620
  br label %do.cond47, !dbg !621

do.cond47:                                        ; preds = %do.body45
  br label %do.end48, !dbg !621

do.end48:                                         ; preds = %do.cond47
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !587, metadata !DIExpression()), !dbg !622
  store i64 ptrtoint (ptr @amd_dr_addr_mask to i64), ptr %__ptr, align 8, !dbg !622
  %13 = load i64, ptr %__ptr, align 8, !dbg !622
  %14 = load i32, ptr %cpu, align 4, !dbg !622
  %idxprom = sext i32 %14 to i64, !dbg !622
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !622
  %15 = load i64, ptr %arrayidx, align 8, !dbg !622
  %add = add i64 %13, %15, !dbg !622
  %16 = inttoptr i64 %add to ptr, !dbg !622
  store ptr %16, ptr %tmp50, align 8, !dbg !622
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !620
  %17 = load ptr, ptr %tmp50, align 8, !dbg !622
  store ptr %17, ptr %tmp49, align 8, !dbg !621
  %18 = load ptr, ptr %tmp49, align 8, !dbg !620
  %19 = load i32, ptr %dr.addr, align 4, !dbg !623
  %idxprom51 = zext i32 %19 to i64, !dbg !624
  %arrayidx52 = getelementptr [4 x i64], ptr %18, i64 0, i64 %idxprom51, !dbg !624
  %20 = load i64, ptr %arrayidx52, align 8, !dbg !624
  %21 = load i64, ptr %mask.addr, align 8, !dbg !625
  %cmp53 = icmp eq i64 %20, %21, !dbg !626
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !627

if.then55:                                        ; preds = %do.end48
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !628

if.end56:                                         ; preds = %do.end48
  %22 = load i32, ptr %dr.addr, align 4, !dbg !629
  %idxprom57 = zext i32 %22 to i64, !dbg !630
  %arrayidx58 = getelementptr [4 x i32], ptr @amd_msr_dr_addr_masks, i64 0, i64 %idxprom57, !dbg !630
  %23 = load i32, ptr %arrayidx58, align 4, !dbg !630
  %24 = load i64, ptr %mask.addr, align 8, !dbg !631
  %conv59 = trunc i64 %24 to i32, !dbg !631
  call void @wrmsr(i32 noundef %23, i32 noundef %conv59, i32 noundef 0) #13, !dbg !632
  %25 = load i64, ptr %mask.addr, align 8, !dbg !633
  br label %do.body60, !dbg !634

do.body60:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify61) #14, !dbg !635
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify61, metadata !589, metadata !DIExpression()), !dbg !635
  store ptr null, ptr %__vpp_verify61, align 8, !dbg !635
  %26 = load ptr, ptr %__vpp_verify61, align 8, !dbg !635
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify61) #14, !dbg !634
  br label %do.cond62, !dbg !635

do.cond62:                                        ; preds = %do.body60
  br label %do.end63, !dbg !635

do.end63:                                         ; preds = %do.cond62
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr65) #14, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %__ptr65, metadata !592, metadata !DIExpression()), !dbg !636
  store i64 ptrtoint (ptr @amd_dr_addr_mask to i64), ptr %__ptr65, align 8, !dbg !636
  %27 = load i64, ptr %__ptr65, align 8, !dbg !636
  %28 = load i32, ptr %cpu, align 4, !dbg !636
  %idxprom67 = sext i32 %28 to i64, !dbg !636
  %arrayidx68 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom67, !dbg !636
  %29 = load i64, ptr %arrayidx68, align 8, !dbg !636
  %add69 = add i64 %27, %29, !dbg !636
  %30 = inttoptr i64 %add69 to ptr, !dbg !636
  store ptr %30, ptr %tmp66, align 8, !dbg !636
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr65) #14, !dbg !634
  %31 = load ptr, ptr %tmp66, align 8, !dbg !636
  store ptr %31, ptr %tmp64, align 8, !dbg !635
  %32 = load ptr, ptr %tmp64, align 8, !dbg !634
  %33 = load i32, ptr %dr.addr, align 4, !dbg !637
  %idxprom70 = zext i32 %33 to i64, !dbg !638
  %arrayidx71 = getelementptr [4 x i64], ptr %32, i64 0, i64 %idxprom70, !dbg !638
  store i64 %25, ptr %arrayidx71, align 8, !dbg !639
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !640
  br label %cleanup, !dbg !640

cleanup:                                          ; preds = %do.end63, %if.then55, %if.then43, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !640
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !640

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !641 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !646, metadata !DIExpression()), !dbg !647
  ret void, !dbg !648
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !649 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !654, metadata !DIExpression()), !dbg !657
  %0 = load i16, ptr %bit.addr, align 2, !dbg !658
  %1 = load i16, ptr %bit.addr, align 2, !dbg !659
  %conv = zext i16 %1 to i32, !dbg !659
  %and = and i32 %conv, 7, !dbg !660
  %shl = shl i32 1, %and, !dbg !661
  %2 = load i16, ptr %bit.addr, align 2, !dbg !662
  %conv1 = zext i16 %2 to i32, !dbg !662
  %shr = ashr i32 %conv1, 3, !dbg !663
  %idxprom = sext i32 %shr to i64, !dbg !664
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !664
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #14
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !665, !srcloc !666

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !665

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !655), !dbg !667
  store i1 true, ptr %retval, align 1, !dbg !668
  br label %return, !dbg !668

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !656), !dbg !669
  store i1 false, ptr %retval, align 1, !dbg !670
  br label %return, !dbg !670

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !671
  ret i1 %3, !dbg !671
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #5 align 16 !dbg !672 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !676, metadata !DIExpression()), !dbg !679
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !677, metadata !DIExpression()), !dbg !680
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !678, metadata !DIExpression()), !dbg !681
  %0 = load i32, ptr %msr.addr, align 4, !dbg !682
  %1 = load i32, ptr %low.addr, align 4, !dbg !683
  %2 = load i32, ptr %high.addr, align 4, !dbg !684
  call void @native_write_msr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13, !dbg !685
  ret void, !dbg !686
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @amd_get_dr_addr_mask(i32 noundef %dr) #0 align 16 !dbg !687 {
entry:
  %retval = alloca i64, align 8
  %dr.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp39 = alloca ptr, align 8
  %tmp40 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify42 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  store i32 %dr, ptr %dr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dr.addr, metadata !691, metadata !DIExpression()), !dbg !710
  br i1 false, label %cond.true, label %cond.false, !dbg !711

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !712

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !711

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !712

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !712

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 218, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !712
  br i1 %call, label %if.end, label %if.then, !dbg !712

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 218) #13, !dbg !712
  br i1 %call5, label %if.end, label %if.then, !dbg !711

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i64 0, ptr %retval, align 8, !dbg !714
  br label %return, !dbg !714

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !692, metadata !DIExpression()), !dbg !715
  %0 = load i32, ptr %dr.addr, align 4, !dbg !715
  %conv = zext i32 %0 to i64, !dbg !715
  %cmp = icmp uge i64 %conv, 4, !dbg !715
  %lnot = xor i1 %cmp, true, !dbg !715
  %lnot7 = xor i1 %lnot, true, !dbg !715
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !715
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !715
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !716
  %tobool = icmp ne i32 %1, 0, !dbg !716
  %lnot8 = xor i1 %tobool, true, !dbg !716
  %lnot10 = xor i1 %lnot8, true, !dbg !716
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !716
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !716
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !716
  %tobool13 = icmp ne i64 %expval, 0, !dbg !716
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !715

if.then14:                                        ; preds = %if.end
  br label %do.body, !dbg !716

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !695, metadata !DIExpression()), !dbg !717
  store i32 2307, ptr %__flags, align 4, !dbg !717
  br label %do.body15, !dbg !717

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !718

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !718

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !717

do.body16:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !720
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 1342, i32 %2, i64 12) #14, !dbg !720, !srcloc !722
  br label %do.cond17, !dbg !720

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !720

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !717

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !723

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !723

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !716
  br label %do.cond22, !dbg !717

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !717

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !717

if.end24:                                         ; preds = %do.end23, %if.end
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !715
  %tobool25 = icmp ne i32 %3, 0, !dbg !715
  %lnot26 = xor i1 %tobool25, true, !dbg !715
  %lnot28 = xor i1 %lnot26, true, !dbg !715
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !715
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !715
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !715
  store i64 %expval31, ptr %tmp, align 8, !dbg !716
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !725
  %4 = load i64, ptr %tmp, align 8, !dbg !715
  %tobool32 = icmp ne i64 %4, 0, !dbg !725
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !726

if.then33:                                        ; preds = %if.end24
  store i64 0, ptr %retval, align 8, !dbg !727
  br label %return, !dbg !727

if.end34:                                         ; preds = %if.end24
  br label %do.body35, !dbg !728

do.body35:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !698, metadata !DIExpression()), !dbg !729
  store ptr null, ptr %__vpp_verify, align 8, !dbg !729
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !728
  br label %do.end37, !dbg !729

do.end37:                                         ; preds = %do.body35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !730
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !701, metadata !DIExpression()), !dbg !730
  %6 = load i32, ptr %dr.addr, align 4, !dbg !730
  %idxprom = zext i32 %6 to i64, !dbg !730
  %arrayidx = getelementptr [4 x i64], ptr @amd_dr_addr_mask, i64 0, i64 %idxprom, !dbg !730
  %7 = ptrtoint ptr %arrayidx to i64, !dbg !730
  store i64 %7, ptr %__ptr, align 8, !dbg !730
  %8 = load i64, ptr %__ptr, align 8, !dbg !730
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !731
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !732
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !703, metadata !DIExpression()), !dbg !732
  br label %do.body41, !dbg !732

do.body41:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify42) #14, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify42, metadata !706, metadata !DIExpression()), !dbg !733
  store ptr null, ptr %__vpp_verify42, align 8, !dbg !733
  %9 = load ptr, ptr %__vpp_verify42, align 8, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify42) #14, !dbg !732
  br label %do.cond43, !dbg !733

do.cond43:                                        ; preds = %do.body41
  br label %do.end44, !dbg !733

do.end44:                                         ; preds = %do.cond43
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !734
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !708, metadata !DIExpression()), !dbg !734
  %10 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !734, !srcloc !735
  store i32 %10, ptr %pfo_val__, align 4, !dbg !734
  %11 = load i32, ptr %pfo_val__, align 4, !dbg !734
  %conv46 = zext i32 %11 to i64, !dbg !734
  %conv47 = trunc i64 %conv46 to i32, !dbg !734
  store i32 %conv47, ptr %tmp45, align 4, !dbg !734
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !732
  %12 = load i32, ptr %tmp45, align 4, !dbg !734
  store i32 %12, ptr %pscr_ret__, align 4, !dbg !732
  %13 = load i32, ptr %pscr_ret__, align 4, !dbg !732
  store i32 %13, ptr %tmp48, align 4, !dbg !732
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !731
  %14 = load i32, ptr %tmp48, align 4, !dbg !732
  store i32 %14, ptr %tmp40, align 4, !dbg !731
  %15 = load i32, ptr %tmp40, align 4, !dbg !731
  %idxprom49 = sext i32 %15 to i64, !dbg !730
  %arrayidx50 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom49, !dbg !730
  %16 = load i64, ptr %arrayidx50, align 8, !dbg !730
  %add = add i64 %8, %16, !dbg !730
  %17 = inttoptr i64 %add to ptr, !dbg !730
  store ptr %17, ptr %tmp39, align 8, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !728
  %18 = load ptr, ptr %tmp39, align 8, !dbg !730
  store ptr %18, ptr %tmp38, align 8, !dbg !729
  %19 = load ptr, ptr %tmp38, align 8, !dbg !728
  %20 = load i64, ptr %19, align 8, !dbg !736
  store i64 %20, ptr %retval, align 8, !dbg !737
  br label %return, !dbg !737

return:                                           ; preds = %do.end44, %if.then33, %if.then
  %21 = load i64, ptr %retval, align 8, !dbg !738
  ret i64 %21, !dbg !738
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @amd_get_highest_perf() #0 align 16 !dbg !739 {
entry:
  %retval = alloca i32, align 4
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #14, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %c, metadata !741, metadata !DIExpression()), !dbg !743
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !743
  %0 = load ptr, ptr %c, align 8, !dbg !744
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !746
  %x86 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !746
  %2 = load i8, ptr %x86, align 1, !dbg !746
  %conv = zext i8 %2 to i32, !dbg !744
  %cmp = icmp eq i32 %conv, 23, !dbg !747
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !748

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !749
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !750
  %x86_model = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !750
  %5 = load i8, ptr %x86_model, align 8, !dbg !750
  %conv2 = zext i8 %5 to i32, !dbg !749
  %cmp3 = icmp sge i32 %conv2, 48, !dbg !751
  br i1 %cmp3, label %land.lhs.true5, label %lor.lhs.false, !dbg !752

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %c, align 8, !dbg !753
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !754
  %x86_model6 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 0, !dbg !754
  %8 = load i8, ptr %x86_model6, align 8, !dbg !754
  %conv7 = zext i8 %8 to i32, !dbg !753
  %cmp8 = icmp slt i32 %conv7, 64, !dbg !755
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !756

lor.lhs.false:                                    ; preds = %land.lhs.true5, %land.lhs.true
  %9 = load ptr, ptr %c, align 8, !dbg !757
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !758
  %x86_model10 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 0, !dbg !758
  %11 = load i8, ptr %x86_model10, align 8, !dbg !758
  %conv11 = zext i8 %11 to i32, !dbg !757
  %cmp12 = icmp sge i32 %conv11, 112, !dbg !759
  br i1 %cmp12, label %land.lhs.true14, label %if.end, !dbg !760

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %c, align 8, !dbg !761
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 0, !dbg !762
  %x86_model15 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 0, !dbg !762
  %14 = load i8, ptr %x86_model15, align 8, !dbg !762
  %conv16 = zext i8 %14 to i32, !dbg !761
  %cmp17 = icmp slt i32 %conv16, 128, !dbg !763
  br i1 %cmp17, label %if.then, label %if.end, !dbg !764

if.then:                                          ; preds = %land.lhs.true14, %land.lhs.true5
  store i32 166, ptr %retval, align 4, !dbg !765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !765

if.end:                                           ; preds = %land.lhs.true14, %lor.lhs.false, %entry
  %15 = load ptr, ptr %c, align 8, !dbg !766
  %16 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 0, !dbg !768
  %x8619 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 1, !dbg !768
  %17 = load i8, ptr %x8619, align 1, !dbg !768
  %conv20 = zext i8 %17 to i32, !dbg !766
  %cmp21 = icmp eq i32 %conv20, 25, !dbg !769
  br i1 %cmp21, label %land.lhs.true23, label %if.end44, !dbg !770

land.lhs.true23:                                  ; preds = %if.end
  %18 = load ptr, ptr %c, align 8, !dbg !771
  %19 = getelementptr inbounds %struct.cpuinfo_x86, ptr %18, i32 0, i32 0, !dbg !772
  %x86_model24 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 0, !dbg !772
  %20 = load i8, ptr %x86_model24, align 8, !dbg !772
  %conv25 = zext i8 %20 to i32, !dbg !771
  %cmp26 = icmp sge i32 %conv25, 32, !dbg !773
  br i1 %cmp26, label %land.lhs.true28, label %lor.lhs.false33, !dbg !774

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %21 = load ptr, ptr %c, align 8, !dbg !775
  %22 = getelementptr inbounds %struct.cpuinfo_x86, ptr %21, i32 0, i32 0, !dbg !776
  %x86_model29 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 0, !dbg !776
  %23 = load i8, ptr %x86_model29, align 8, !dbg !776
  %conv30 = zext i8 %23 to i32, !dbg !775
  %cmp31 = icmp slt i32 %conv30, 48, !dbg !777
  br i1 %cmp31, label %if.then43, label %lor.lhs.false33, !dbg !778

lor.lhs.false33:                                  ; preds = %land.lhs.true28, %land.lhs.true23
  %24 = load ptr, ptr %c, align 8, !dbg !779
  %25 = getelementptr inbounds %struct.cpuinfo_x86, ptr %24, i32 0, i32 0, !dbg !780
  %x86_model34 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 0, !dbg !780
  %26 = load i8, ptr %x86_model34, align 8, !dbg !780
  %conv35 = zext i8 %26 to i32, !dbg !779
  %cmp36 = icmp sge i32 %conv35, 64, !dbg !781
  br i1 %cmp36, label %land.lhs.true38, label %if.end44, !dbg !782

land.lhs.true38:                                  ; preds = %lor.lhs.false33
  %27 = load ptr, ptr %c, align 8, !dbg !783
  %28 = getelementptr inbounds %struct.cpuinfo_x86, ptr %27, i32 0, i32 0, !dbg !784
  %x86_model39 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 0, !dbg !784
  %29 = load i8, ptr %x86_model39, align 8, !dbg !784
  %conv40 = zext i8 %29 to i32, !dbg !783
  %cmp41 = icmp slt i32 %conv40, 112, !dbg !785
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !786

if.then43:                                        ; preds = %land.lhs.true38, %land.lhs.true28
  store i32 166, ptr %retval, align 4, !dbg !787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !787

if.end44:                                         ; preds = %land.lhs.true38, %lor.lhs.false33, %if.end
  store i32 255, ptr %retval, align 4, !dbg !788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !788

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #14, !dbg !789
  %30 = load i32, ptr %retval, align 4, !dbg !789
  ret i32 %30, !dbg !789
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_check_microcode() #0 align 16 !dbg !790 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !793
  %conv = zext i8 %0 to i32, !dbg !795
  %cmp = icmp ne i32 %conv, 2, !dbg !796
  br i1 %cmp, label %if.then, label %if.end, !dbg !797

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !798

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !799

cond.true:                                        ; preds = %if.end
  br i1 false, label %if.then9, label %if.end10, !dbg !800

cond.false:                                       ; preds = %if.end
  br i1 false, label %cond.true2, label %cond.false6, !dbg !799

cond.true2:                                       ; preds = %cond.false
  br i1 false, label %cond.true3, label %cond.false4, !dbg !800

cond.true3:                                       ; preds = %cond.true2
  br i1 true, label %if.then9, label %if.end10, !dbg !800

cond.false4:                                      ; preds = %cond.true2
  %call = call zeroext i1 @arch_test_bit(i64 noundef 380, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !800
  br i1 %call, label %if.then9, label %if.end10, !dbg !800

cond.false6:                                      ; preds = %cond.false
  %call7 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 380) #13, !dbg !800
  br i1 %call7, label %if.then9, label %if.end10, !dbg !799

if.then9:                                         ; preds = %cond.false6, %cond.false4, %cond.true3, %cond.true
  call void @on_each_cpu(ptr noundef @zenbleed_check_cpu, ptr noundef null, i32 noundef 1) #13, !dbg !802
  br label %if.end10, !dbg !802

if.end10:                                         ; preds = %if.then, %if.then9, %cond.false6, %cond.false4, %cond.true3, %cond.true
  ret void, !dbg !803
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu(ptr noundef %func, ptr noundef %info, i32 noundef %wait) #5 align 16 !dbg !804 {
entry:
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !813, metadata !DIExpression()), !dbg !816
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !814, metadata !DIExpression()), !dbg !817
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !815, metadata !DIExpression()), !dbg !818
  %0 = load ptr, ptr %func.addr, align 8, !dbg !819
  %1 = load ptr, ptr %info.addr, align 8, !dbg !820
  %2 = load i32, ptr %wait.addr, align 4, !dbg !821
  %tobool = icmp ne i32 %2, 0, !dbg !821
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef @__cpu_online_mask) #13, !dbg !822
  ret void, !dbg !823
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zenbleed_check_cpu(ptr noundef %unused) #0 align 16 !dbg !824 {
entry:
  %unused.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !826, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #14, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %c, metadata !827, metadata !DIExpression()), !dbg !842
  br label %do.body, !dbg !843

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !844
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !828, metadata !DIExpression()), !dbg !844
  store ptr null, ptr %__vpp_verify, align 8, !dbg !844
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !844
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !843
  br label %do.cond, !dbg !844

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !844

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !831, metadata !DIExpression()), !dbg !845
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !845
  %1 = load i64, ptr %__ptr, align 8, !dbg !845
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !833, metadata !DIExpression()), !dbg !847
  br label %do.body3, !dbg !847

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #14, !dbg !848
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !836, metadata !DIExpression()), !dbg !848
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !848
  %2 = load ptr, ptr %__vpp_verify4, align 8, !dbg !848
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #14, !dbg !847
  br label %do.cond5, !dbg !848

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !848

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !849
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !838, metadata !DIExpression()), !dbg !849
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !849, !srcloc !850
  store i32 %3, ptr %pfo_val__, align 4, !dbg !849
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !849
  %conv = zext i32 %4 to i64, !dbg !849
  %conv8 = trunc i64 %conv to i32, !dbg !849
  store i32 %conv8, ptr %tmp7, align 4, !dbg !849
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !847
  %5 = load i32, ptr %tmp7, align 4, !dbg !849
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !847
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !847
  store i32 %6, ptr %tmp9, align 4, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !846
  %7 = load i32, ptr %tmp9, align 4, !dbg !847
  store i32 %7, ptr %tmp2, align 4, !dbg !846
  %8 = load i32, ptr %tmp2, align 4, !dbg !846
  %idxprom = sext i32 %8 to i64, !dbg !845
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !845
  %9 = load i64, ptr %arrayidx, align 8, !dbg !845
  %add = add i64 %1, %9, !dbg !845
  %10 = inttoptr i64 %add to ptr, !dbg !845
  store ptr %10, ptr %tmp1, align 8, !dbg !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !843
  %11 = load ptr, ptr %tmp1, align 8, !dbg !845
  store ptr %11, ptr %tmp, align 8, !dbg !844
  %12 = load ptr, ptr %tmp, align 8, !dbg !843
  store ptr %12, ptr %c, align 8, !dbg !842
  %13 = load ptr, ptr %c, align 8, !dbg !851
  call void @zen2_zenbleed_check(ptr noundef %13) #13, !dbg !852
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #14, !dbg !853
  ret void, !dbg !853
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_clear_divider() #7 section ".noinstr.text" align 16 !dbg !854 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (22*32 + (1*32 + 1))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09div $2\0A\09\0A6651:\0A.popsection\0A", "{ax},{dx},r,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0, i32 1) #14, !dbg !855, !srcloc !856
  ret void, !dbg !857
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !858 dso_local i32 @strcmp(ptr noundef, ptr noundef) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !862 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !866, metadata !DIExpression()), !dbg !868
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !867, metadata !DIExpression()), !dbg !869
  %0 = load i64, ptr %nr.addr, align 8, !dbg !870
  %and = and i64 %0, 63, !dbg !871
  %shl = shl i64 1, %and, !dbg !872
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !873
  %2 = load i64, ptr %nr.addr, align 8, !dbg !874
  %shr = ashr i64 %2, 6, !dbg !875
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !873
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !873
  %and1 = and i64 %shl, %3, !dbg !876
  %cmp = icmp ne i64 %and1, 0, !dbg !877
  ret i1 %cmp, !dbg !878
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !879 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !881, metadata !DIExpression()), !dbg !884
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !882, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !883, metadata !DIExpression()), !dbg !887
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !888
  %1 = load i64, ptr %nr.addr, align 8, !dbg !889
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !890, !srcloc !891
  %3 = icmp ult i8 %2, 2, !dbg !890
  call void @llvm.assume(i1 %3), !dbg !890
  store i8 %2, ptr %oldbit, align 1, !dbg !890
  %4 = load i8, ptr %oldbit, align 1, !dbg !892, !range !893, !noundef !894
  %tobool = trunc i8 %4 to i1, !dbg !892
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !895
  ret i1 %tobool, !dbg !896
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #5 align 16 !dbg !897 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !901, metadata !DIExpression()), !dbg !905
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !902, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %low, metadata !903, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %high, metadata !904, metadata !DIExpression()), !dbg !907
  %0 = load ptr, ptr %err.addr, align 8, !dbg !908
  %1 = load i32, ptr %msr.addr, align 4, !dbg !909
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #14, !dbg !910, !srcloc !911
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !910
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !910
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !910
  store i32 %asmresult, ptr %0, align 4, !dbg !910
  store i64 %asmresult1, ptr %low, align 8, !dbg !910
  store i64 %asmresult2, ptr %high, align 8, !dbg !910
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #13, !dbg !912
  br i1 %call, label %if.then, label %if.end, !dbg !914

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !915
  %4 = load i64, ptr %low, align 8, !dbg !916
  %5 = load i64, ptr %high, align 8, !dbg !916
  %shl = shl i64 %5, 32, !dbg !916
  %or = or i64 %4, %shl, !dbg !916
  %6 = load ptr, ptr %err.addr, align 8, !dbg !917
  %7 = load i32, ptr %6, align 4, !dbg !918
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #13, !dbg !919
  br label %if.end, !dbg !919

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !920
  %9 = load i64, ptr %high, align 8, !dbg !920
  %shl3 = shl i64 %9, 32, !dbg !920
  %or4 = or i64 %8, %shl3, !dbg !920
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !921
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !921
  ret i64 %or4, !dbg !922
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !923 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !952, metadata !DIExpression()), !dbg !953
  %0 = load ptr, ptr %key.addr, align 8, !dbg !954
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !955
  ret i1 %call, !dbg !956
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !957 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !960 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !965, metadata !DIExpression()), !dbg !968
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !966, metadata !DIExpression()), !dbg !969
  %0 = load ptr, ptr %key.addr, align 8, !dbg !970
  %1 = load i8, ptr %branch.addr, align 1, !dbg !971, !range !893, !noundef !894
  %tobool = trunc i8 %1 to i1, !dbg !971
  %conv = zext i1 %tobool to i32, !dbg !971
  %or = or i32 2, %conv, !dbg !972
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !973, !srcloc !974

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !975
  br label %return, !dbg !975

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !967), !dbg !976
  store i1 true, ptr %retval, align 1, !dbg !977
  br label %return, !dbg !977

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !978
  ret i1 %2, !dbg !978
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #5 align 16 !dbg !979 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !983, metadata !DIExpression()), !dbg !986
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !984, metadata !DIExpression()), !dbg !987
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !985, metadata !DIExpression()), !dbg !988
  %0 = load i32, ptr %msr.addr, align 4, !dbg !989
  %1 = load i32, ptr %low.addr, align 4, !dbg !990
  %2 = load i32, ptr %high.addr, align 4, !dbg !991
  %call = call i32 @native_write_msr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13, !dbg !992
  ret i32 %call, !dbg !993
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_write_msr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #5 align 16 !dbg !994 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !996, metadata !DIExpression()), !dbg !1000
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !997, metadata !DIExpression()), !dbg !1001
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !998, metadata !DIExpression()), !dbg !1002
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %err, metadata !999, metadata !DIExpression()), !dbg !1004
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1005
  %1 = load i32, ptr %low.addr, align 4, !dbg !1006
  %2 = load i32, ptr %high.addr, align 4, !dbg !1007
  %3 = call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #14, !dbg !1008, !srcloc !1009
  store i32 %3, ptr %err, align 4, !dbg !1008
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #13, !dbg !1010
  br i1 %call, label %if.then, label %if.end, !dbg !1012

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %msr.addr, align 4, !dbg !1013
  %5 = load i32, ptr %high.addr, align 4, !dbg !1014
  %conv = zext i32 %5 to i64, !dbg !1015
  %shl = shl i64 %conv, 32, !dbg !1016
  %6 = load i32, ptr %low.addr, align 4, !dbg !1017
  %conv1 = zext i32 %6 to i64, !dbg !1017
  %or = or i64 %shl, %conv1, !dbg !1018
  %7 = load i32, ptr %err, align 4, !dbg !1019
  call void @do_trace_write_msr(i32 noundef %4, i64 noundef %or, i32 noundef %7) #13, !dbg !1020
  br label %if.end, !dbg !1020

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4, !dbg !1021
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1022
  ret i32 %8, !dbg !1023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1024 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_init_amd(ptr noundef %c) #0 align 16 !dbg !231 {
entry:
  %c.addr = alloca ptr, align 8
  %value = alloca i64, align 8
  %dummy = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %val = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp105 = alloca i64, align 8
  %tmp115 = alloca i32, align 4
  %tmp118 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !233, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #14, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %value, metadata !234, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #14, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !235, metadata !DIExpression()), !dbg !1029
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1030
  call void @early_init_amd_mc(ptr noundef %0) #13, !dbg !1031
  %1 = load ptr, ptr %c.addr, align 8, !dbg !1032
  %2 = getelementptr inbounds %struct.cpuinfo_x86, ptr %1, i32 0, i32 0, !dbg !1034
  %x86 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1, !dbg !1034
  %3 = load i8, ptr %x86, align 1, !dbg !1034
  %conv = zext i8 %3 to i32, !dbg !1032
  %cmp = icmp sge i32 %conv, 15, !dbg !1035
  br i1 %cmp, label %if.then, label %if.end, !dbg !1036

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %c.addr, align 8, !dbg !1037
  %5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 10, !dbg !1037
  %arraydecay = getelementptr inbounds [24 x i32], ptr %5, i64 0, i64 0, !dbg !1037
  call void @set_bit(i64 noundef 100, ptr noundef %arraydecay) #13, !dbg !1037
  br label %if.end, !dbg !1037

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #14, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !236, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #14, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !238, metadata !DIExpression()), !dbg !1038
  %call = call i64 @native_read_msr_safe(i32 noundef 139, ptr noundef %__err) #13, !dbg !1038
  store i64 %call, ptr %__val, align 8, !dbg !1038
  %6 = load i64, ptr %__val, align 8, !dbg !1038
  %conv2 = trunc i64 %6 to i32, !dbg !1038
  %7 = load ptr, ptr %c.addr, align 8, !dbg !1038
  %microcode = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 33, !dbg !1038
  store i32 %conv2, ptr %microcode, align 8, !dbg !1038
  %8 = load i64, ptr %__val, align 8, !dbg !1038
  %shr = lshr i64 %8, 32, !dbg !1038
  %conv3 = trunc i64 %shr to i32, !dbg !1038
  store i32 %conv3, ptr %dummy, align 4, !dbg !1038
  %9 = load i32, ptr %__err, align 4, !dbg !1038
  store i32 %9, ptr %tmp, align 4, !dbg !1038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #14, !dbg !1039
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #14, !dbg !1039
  %10 = load i32, ptr %tmp, align 4, !dbg !1038
  %11 = load ptr, ptr %c.addr, align 8, !dbg !1040
  %x86_power = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 18, !dbg !1042
  %12 = load i32, ptr %x86_power, align 4, !dbg !1042
  %and = and i32 %12, 256, !dbg !1043
  %tobool = icmp ne i32 %and, 0, !dbg !1043
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !1044

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %c.addr, align 8, !dbg !1045
  %14 = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 10, !dbg !1045
  %arraydecay5 = getelementptr inbounds [24 x i32], ptr %14, i64 0, i64 0, !dbg !1045
  call void @set_bit(i64 noundef 104, ptr noundef %arraydecay5) #13, !dbg !1045
  %15 = load ptr, ptr %c.addr, align 8, !dbg !1047
  %16 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 10, !dbg !1047
  %arraydecay6 = getelementptr inbounds [24 x i32], ptr %16, i64 0, i64 0, !dbg !1047
  call void @set_bit(i64 noundef 120, ptr noundef %arraydecay6) #13, !dbg !1047
  br label %if.end7, !dbg !1048

if.end7:                                          ; preds = %if.then4, %if.end
  %17 = load ptr, ptr %c.addr, align 8, !dbg !1049
  %x86_power8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 18, !dbg !1051
  %18 = load i32, ptr %x86_power8, align 4, !dbg !1051
  %conv9 = sext i32 %18 to i64, !dbg !1049
  %and10 = and i64 %conv9, 4096, !dbg !1052
  %tobool11 = icmp ne i64 %and10, 0, !dbg !1052
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !1053

if.then12:                                        ; preds = %if.end7
  %19 = load ptr, ptr %c.addr, align 8, !dbg !1054
  %20 = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 10, !dbg !1054
  %arraydecay13 = getelementptr inbounds [24 x i32], ptr %20, i64 0, i64 0, !dbg !1054
  call void @set_bit(i64 noundef 115, ptr noundef %arraydecay13) #13, !dbg !1054
  br label %if.end14, !dbg !1054

if.end14:                                         ; preds = %if.then12, %if.end7
  %21 = load ptr, ptr %c.addr, align 8, !dbg !1055
  %x86_power15 = getelementptr inbounds %struct.cpuinfo_x86, ptr %21, i32 0, i32 18, !dbg !1057
  %22 = load i32, ptr %x86_power15, align 4, !dbg !1057
  %conv16 = sext i32 %22 to i64, !dbg !1055
  %and17 = and i64 %conv16, 16384, !dbg !1058
  %tobool18 = icmp ne i64 %and17, 0, !dbg !1058
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !1059

if.then19:                                        ; preds = %if.end14
  %23 = load ptr, ptr %c.addr, align 8, !dbg !1060
  %24 = getelementptr inbounds %struct.cpuinfo_x86, ptr %23, i32 0, i32 10, !dbg !1060
  %arraydecay20 = getelementptr inbounds [24 x i32], ptr %24, i64 0, i64 0, !dbg !1060
  call void @set_bit(i64 noundef 125, ptr noundef %arraydecay20) #13, !dbg !1060
  br label %if.end21, !dbg !1060

if.end21:                                         ; preds = %if.then19, %if.end14
  %25 = load ptr, ptr %c.addr, align 8, !dbg !1061
  %26 = getelementptr inbounds %struct.cpuinfo_x86, ptr %25, i32 0, i32 10, !dbg !1061
  %arraydecay22 = getelementptr inbounds [24 x i32], ptr %26, i64 0, i64 0, !dbg !1061
  call void @set_bit(i64 noundef 110, ptr noundef %arraydecay22) #13, !dbg !1061
  br i1 false, label %cond.true, label %cond.false, !dbg !1062

cond.true:                                        ; preds = %if.end21
  br i1 true, label %if.then25, label %if.end47, !dbg !1063

cond.false:                                       ; preds = %if.end21
  %call23 = call zeroext i1 @arch_test_bit(i64 noundef 9, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1063
  br i1 %call23, label %if.then25, label %if.end47, !dbg !1062

if.then25:                                        ; preds = %cond.false, %cond.true
  %27 = load ptr, ptr %c.addr, align 8, !dbg !1064
  %28 = getelementptr inbounds %struct.cpuinfo_x86, ptr %27, i32 0, i32 0, !dbg !1065
  %x8626 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1, !dbg !1065
  %29 = load i8, ptr %x8626, align 1, !dbg !1065
  %conv27 = zext i8 %29 to i32, !dbg !1064
  %cmp28 = icmp sgt i32 %conv27, 22, !dbg !1066
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !1067

if.then30:                                        ; preds = %if.then25
  %30 = load ptr, ptr %c.addr, align 8, !dbg !1068
  %31 = getelementptr inbounds %struct.cpuinfo_x86, ptr %30, i32 0, i32 10, !dbg !1068
  %arraydecay31 = getelementptr inbounds [24 x i32], ptr %31, i64 0, i64 0, !dbg !1068
  call void @set_bit(i64 noundef 122, ptr noundef %arraydecay31) #13, !dbg !1068
  br label %if.end46, !dbg !1068

if.else:                                          ; preds = %if.then25
  %32 = load ptr, ptr %c.addr, align 8, !dbg !1069
  %33 = getelementptr inbounds %struct.cpuinfo_x86, ptr %32, i32 0, i32 0, !dbg !1070
  %x8632 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !1070
  %34 = load i8, ptr %x8632, align 1, !dbg !1070
  %conv33 = zext i8 %34 to i32, !dbg !1069
  %cmp34 = icmp sge i32 %conv33, 15, !dbg !1071
  br i1 %cmp34, label %if.then36, label %if.end45, !dbg !1072

if.then36:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #14, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %val, metadata !239, metadata !DIExpression()), !dbg !1074
  %call37 = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext 24, i8 noundef zeroext 0, i8 noundef zeroext 104) #13, !dbg !1075
  store i32 %call37, ptr %val, align 4, !dbg !1076
  %35 = load i32, ptr %val, align 4, !dbg !1077
  %shr38 = lshr i32 %35, 17, !dbg !1079
  %and39 = and i32 %shr38, 3, !dbg !1080
  %cmp40 = icmp eq i32 %and39, 3, !dbg !1081
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !1082

if.then42:                                        ; preds = %if.then36
  %36 = load ptr, ptr %c.addr, align 8, !dbg !1083
  %37 = getelementptr inbounds %struct.cpuinfo_x86, ptr %36, i32 0, i32 10, !dbg !1083
  %arraydecay43 = getelementptr inbounds [24 x i32], ptr %37, i64 0, i64 0, !dbg !1083
  call void @set_bit(i64 noundef 122, ptr noundef %arraydecay43) #13, !dbg !1083
  br label %if.end44, !dbg !1083

if.end44:                                         ; preds = %if.then42, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #14, !dbg !1084
  br label %if.end45, !dbg !1085

if.end45:                                         ; preds = %if.end44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then30
  br label %if.end47, !dbg !1086

if.end47:                                         ; preds = %if.end46, %cond.false, %cond.true
  %38 = load ptr, ptr %c.addr, align 8, !dbg !1087
  %39 = getelementptr inbounds %struct.cpuinfo_x86, ptr %38, i32 0, i32 10, !dbg !1087
  %arraydecay48 = getelementptr inbounds [24 x i32], ptr %39, i64 0, i64 0, !dbg !1087
  call void @set_bit(i64 noundef 271, ptr noundef %arraydecay48) #13, !dbg !1087
  %40 = load ptr, ptr %c.addr, align 8, !dbg !1088
  %41 = getelementptr inbounds %struct.cpuinfo_x86, ptr %40, i32 0, i32 0, !dbg !1090
  %x8649 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 1, !dbg !1090
  %42 = load i8, ptr %x8649, align 1, !dbg !1090
  %conv50 = zext i8 %42 to i32, !dbg !1088
  %cmp51 = icmp eq i32 %conv50, 22, !dbg !1091
  br i1 %cmp51, label %land.lhs.true, label %if.end58, !dbg !1092

land.lhs.true:                                    ; preds = %if.end47
  %43 = load ptr, ptr %c.addr, align 8, !dbg !1093
  %44 = getelementptr inbounds %struct.cpuinfo_x86, ptr %43, i32 0, i32 0, !dbg !1094
  %x86_model = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 0, !dbg !1094
  %45 = load i8, ptr %x86_model, align 8, !dbg !1094
  %conv53 = zext i8 %45 to i32, !dbg !1093
  %cmp54 = icmp sle i32 %conv53, 15, !dbg !1095
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !1096

if.then56:                                        ; preds = %land.lhs.true
  %call57 = call i32 @msr_set_bit(i32 noundef -1073672160, i8 noundef zeroext 15) #13, !dbg !1097
  br label %if.end58, !dbg !1097

if.end58:                                         ; preds = %if.then56, %land.lhs.true, %if.end47
  %46 = load ptr, ptr %c.addr, align 8, !dbg !1098
  %call59 = call zeroext i1 @cpu_has_amd_erratum(ptr noundef %46, ptr noundef @amd_erratum_400) #13, !dbg !1100
  br i1 %call59, label %if.then60, label %if.end62, !dbg !1101

if.then60:                                        ; preds = %if.end58
  %47 = load ptr, ptr %c.addr, align 8, !dbg !1102
  %48 = getelementptr inbounds %struct.cpuinfo_x86, ptr %47, i32 0, i32 10, !dbg !1102
  %arraydecay61 = getelementptr inbounds [24 x i32], ptr %48, i64 0, i64 0, !dbg !1102
  call void @set_bit(i64 noundef 717, ptr noundef %arraydecay61) #13, !dbg !1102
  br label %if.end62, !dbg !1102

if.end62:                                         ; preds = %if.then60, %if.end58
  %49 = load ptr, ptr %c.addr, align 8, !dbg !1103
  call void @early_detect_mem_encrypt(ptr noundef %49) #13, !dbg !1104
  %50 = load ptr, ptr %c.addr, align 8, !dbg !1105
  %51 = getelementptr inbounds %struct.cpuinfo_x86, ptr %50, i32 0, i32 0, !dbg !1106
  %x8663 = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 1, !dbg !1106
  %52 = load i8, ptr %x8663, align 1, !dbg !1106
  %conv64 = zext i8 %52 to i32, !dbg !1105
  %cmp65 = icmp eq i32 %conv64, 21, !dbg !1107
  br i1 %cmp65, label %land.lhs.true67, label %if.end128, !dbg !1108

land.lhs.true67:                                  ; preds = %if.end62
  %53 = load ptr, ptr %c.addr, align 8, !dbg !1109
  %54 = getelementptr inbounds %struct.cpuinfo_x86, ptr %53, i32 0, i32 0, !dbg !1110
  %x86_model68 = getelementptr inbounds %struct.anon, ptr %54, i32 0, i32 0, !dbg !1110
  %55 = load i8, ptr %x86_model68, align 8, !dbg !1110
  %conv69 = zext i8 %55 to i32, !dbg !1109
  %cmp70 = icmp sge i32 %conv69, 16, !dbg !1111
  br i1 %cmp70, label %land.lhs.true72, label %if.end128, !dbg !1112

land.lhs.true72:                                  ; preds = %land.lhs.true67
  %56 = load ptr, ptr %c.addr, align 8, !dbg !1113
  %57 = getelementptr inbounds %struct.cpuinfo_x86, ptr %56, i32 0, i32 0, !dbg !1114
  %x86_model73 = getelementptr inbounds %struct.anon, ptr %57, i32 0, i32 0, !dbg !1114
  %58 = load i8, ptr %x86_model73, align 8, !dbg !1114
  %conv74 = zext i8 %58 to i32, !dbg !1113
  %cmp75 = icmp sle i32 %conv74, 111, !dbg !1115
  br i1 %cmp75, label %land.lhs.true77, label %if.end128, !dbg !1116

land.lhs.true77:                                  ; preds = %land.lhs.true72
  br i1 false, label %cond.true78, label %cond.false79, !dbg !1117

cond.true78:                                      ; preds = %land.lhs.true77
  br i1 true, label %if.end128, label %if.then83, !dbg !1118

cond.false79:                                     ; preds = %land.lhs.true77
  %59 = load ptr, ptr %c.addr, align 8, !dbg !1118
  %60 = getelementptr inbounds %struct.cpuinfo_x86, ptr %59, i32 0, i32 10, !dbg !1118
  %arraydecay80 = getelementptr inbounds [24 x i32], ptr %60, i64 0, i64 0, !dbg !1118
  %call81 = call zeroext i1 @arch_test_bit(i64 noundef 214, ptr noundef %arraydecay80) #13, !dbg !1118
  br i1 %call81, label %if.end128, label %if.then83, !dbg !1117

if.then83:                                        ; preds = %cond.false79, %cond.true78
  %call84 = call i32 @msr_set_bit(i32 noundef -1073672187, i8 noundef zeroext 54) #13, !dbg !1119
  %cmp85 = icmp sgt i32 %call84, 0, !dbg !1120
  br i1 %cmp85, label %if.then87, label %if.end127, !dbg !1121

if.then87:                                        ; preds = %if.then83
  %call88 = call i64 @native_read_msr(i32 noundef -1073672187) #13, !dbg !1122
  store i64 %call88, ptr %value, align 8, !dbg !1122
  %61 = load i64, ptr %value, align 8, !dbg !1123
  %and89 = and i64 %61, 18014398509481984, !dbg !1124
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1124
  br i1 %tobool90, label %if.then91, label %if.end126, !dbg !1125

if.then91:                                        ; preds = %if.then87
  %62 = load ptr, ptr %c.addr, align 8, !dbg !1126
  %63 = getelementptr inbounds %struct.cpuinfo_x86, ptr %62, i32 0, i32 10, !dbg !1126
  %arraydecay92 = getelementptr inbounds [24 x i32], ptr %63, i64 0, i64 0, !dbg !1126
  call void @set_bit(i64 noundef 214, ptr noundef %arraydecay92) #13, !dbg !1126
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !245, metadata !DIExpression()), !dbg !1127
  store i8 1, ptr %__ret_do_once, align 1, !dbg !1127
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !253, metadata !DIExpression()), !dbg !1128
  %64 = load i8, ptr %__ret_do_once, align 1, !dbg !1128, !range !893, !noundef !894
  %tobool93 = trunc i8 %64 to i1, !dbg !1128
  %lnot = xor i1 %tobool93, true, !dbg !1128
  %lnot94 = xor i1 %lnot, true, !dbg !1128
  %frombool = zext i1 %lnot94 to i8, !dbg !1128
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !1128
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !256, metadata !DIExpression()), !dbg !1128
  store i8 0, ptr %__ret_once, align 1, !dbg !1128
  %65 = load i8, ptr %__ret_cond, align 1, !dbg !1129, !range !893, !noundef !894
  %tobool95 = trunc i8 %65 to i1, !dbg !1129
  br i1 %tobool95, label %land.rhs, label %land.end, !dbg !1129

land.rhs:                                         ; preds = %if.then91
  %66 = load i8, ptr @early_init_amd.__already_done, align 1, !dbg !1129, !range !893, !noundef !894
  %tobool97 = trunc i8 %66 to i1, !dbg !1129
  %lnot98 = xor i1 %tobool97, true, !dbg !1129
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then91
  %67 = phi i1 [ false, %if.then91 ], [ %lnot98, %land.rhs ], !dbg !1131
  %lnot99 = xor i1 %67, true, !dbg !1129
  %lnot100 = xor i1 %lnot99, true, !dbg !1129
  %lnot.ext = zext i1 %lnot100 to i32, !dbg !1129
  %conv101 = sext i32 %lnot.ext to i64, !dbg !1129
  %expval = call i64 @llvm.expect.i64(i64 %conv101, i64 0), !dbg !1129
  %tobool102 = icmp ne i64 %expval, 0, !dbg !1129
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !1128

if.then103:                                       ; preds = %land.end
  store i8 1, ptr @early_init_amd.__already_done, align 1, !dbg !1132
  store i8 1, ptr %__ret_once, align 1, !dbg !1132
  br label %if.end104, !dbg !1132

if.end104:                                        ; preds = %if.then103, %land.end
  %68 = load i8, ptr %__ret_once, align 1, !dbg !1128, !range !893, !noundef !894
  %tobool106 = trunc i8 %68 to i1, !dbg !1128
  %lnot107 = xor i1 %tobool106, true, !dbg !1128
  %lnot109 = xor i1 %lnot107, true, !dbg !1128
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !1128
  %conv111 = sext i32 %lnot.ext110 to i64, !dbg !1128
  %expval112 = call i64 @llvm.expect.i64(i64 %conv111, i64 0), !dbg !1128
  store i64 %expval112, ptr %tmp105, align 8, !dbg !1129
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !1134
  %69 = load i64, ptr %tmp105, align 8, !dbg !1128
  %tobool113 = icmp ne i64 %69, 0, !dbg !1134
  br i1 %tobool113, label %if.then114, label %if.end117, !dbg !1127

if.then114:                                       ; preds = %if.end104
  br label %do.body, !dbg !1135

do.body:                                          ; preds = %if.then114
  br label %do.cond, !dbg !1137

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1137

do.end:                                           ; preds = %do.cond
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #16, !dbg !1135
  store i32 %call116, ptr %tmp115, align 4, !dbg !1137
  %70 = load i32, ptr %tmp115, align 4, !dbg !1135
  br label %if.end117, !dbg !1134

if.end117:                                        ; preds = %do.end, %if.end104
  %71 = load i8, ptr %__ret_do_once, align 1, !dbg !1127, !range !893, !noundef !894
  %tobool119 = trunc i8 %71 to i1, !dbg !1127
  %lnot120 = xor i1 %tobool119, true, !dbg !1127
  %lnot122 = xor i1 %lnot120, true, !dbg !1127
  %lnot.ext123 = zext i1 %lnot122 to i32, !dbg !1127
  %conv124 = sext i32 %lnot.ext123 to i64, !dbg !1127
  %expval125 = call i64 @llvm.expect.i64(i64 %conv124, i64 0), !dbg !1127
  store i64 %expval125, ptr %tmp118, align 8, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1139
  %72 = load i64, ptr %tmp118, align 8, !dbg !1127
  br label %if.end126, !dbg !1140

if.end126:                                        ; preds = %if.end117, %if.then87
  br label %if.end127, !dbg !1141

if.end127:                                        ; preds = %if.end126, %if.then83
  br label %if.end128, !dbg !1142

if.end128:                                        ; preds = %if.end127, %cond.false79, %cond.true78, %land.lhs.true72, %land.lhs.true67, %if.end62
  br i1 false, label %cond.true129, label %cond.false130, !dbg !1143

cond.true129:                                     ; preds = %if.end128
  br i1 true, label %if.then134, label %if.end138, !dbg !1144

cond.false130:                                    ; preds = %if.end128
  %73 = load ptr, ptr %c.addr, align 8, !dbg !1144
  %74 = getelementptr inbounds %struct.cpuinfo_x86, ptr %73, i32 0, i32 10, !dbg !1144
  %arraydecay131 = getelementptr inbounds [24 x i32], ptr %74, i64 0, i64 0, !dbg !1144
  %call132 = call zeroext i1 @arch_test_bit(i64 noundef 214, ptr noundef %arraydecay131) #13, !dbg !1144
  br i1 %call132, label %if.then134, label %if.end138, !dbg !1143

if.then134:                                       ; preds = %cond.false130, %cond.true129
  %call135 = call i32 @cpuid_ebx(i32 noundef -2147483618) #13, !dbg !1146
  %shr136 = lshr i32 %call135, 8, !dbg !1147
  %and137 = and i32 %shr136, 255, !dbg !1148
  %add = add i32 %and137, 1, !dbg !1149
  store i32 %add, ptr @smp_num_siblings, align 4, !dbg !1150
  br label %if.end138, !dbg !1151

if.end138:                                        ; preds = %if.then134, %cond.false130, %cond.true129
  br i1 false, label %cond.true139, label %cond.false140, !dbg !1152

cond.true139:                                     ; preds = %if.end138
  br i1 true, label %if.end181, label %land.lhs.true144, !dbg !1154

cond.false140:                                    ; preds = %if.end138
  %75 = load ptr, ptr %c.addr, align 8, !dbg !1154
  %76 = getelementptr inbounds %struct.cpuinfo_x86, ptr %75, i32 0, i32 10, !dbg !1154
  %arraydecay141 = getelementptr inbounds [24 x i32], ptr %76, i64 0, i64 0, !dbg !1154
  %call142 = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef %arraydecay141) #13, !dbg !1154
  br i1 %call142, label %if.end181, label %land.lhs.true144, !dbg !1152

land.lhs.true144:                                 ; preds = %cond.false140, %cond.true139
  br i1 false, label %cond.true145, label %cond.false146, !dbg !1155

cond.true145:                                     ; preds = %land.lhs.true144
  br i1 true, label %if.end181, label %if.then150, !dbg !1156

cond.false146:                                    ; preds = %land.lhs.true144
  %77 = load ptr, ptr %c.addr, align 8, !dbg !1156
  %78 = getelementptr inbounds %struct.cpuinfo_x86, ptr %77, i32 0, i32 10, !dbg !1156
  %arraydecay147 = getelementptr inbounds [24 x i32], ptr %78, i64 0, i64 0, !dbg !1156
  %call148 = call zeroext i1 @arch_test_bit(i64 noundef 668, ptr noundef %arraydecay147) #13, !dbg !1156
  br i1 %call148, label %if.end181, label %if.then150, !dbg !1155

if.then150:                                       ; preds = %cond.false146, %cond.true145
  %79 = load ptr, ptr %c.addr, align 8, !dbg !1157
  %80 = getelementptr inbounds %struct.cpuinfo_x86, ptr %79, i32 0, i32 0, !dbg !1160
  %x86151 = getelementptr inbounds %struct.anon, ptr %80, i32 0, i32 1, !dbg !1160
  %81 = load i8, ptr %x86151, align 1, !dbg !1160
  %conv152 = zext i8 %81 to i32, !dbg !1157
  %cmp153 = icmp eq i32 %conv152, 23, !dbg !1161
  br i1 %cmp153, label %land.lhs.true155, label %if.else164, !dbg !1162

land.lhs.true155:                                 ; preds = %if.then150
  br i1 false, label %cond.true156, label %cond.false157, !dbg !1163

cond.true156:                                     ; preds = %land.lhs.true155
  br i1 true, label %if.then160, label %if.else164, !dbg !1164

cond.false157:                                    ; preds = %land.lhs.true155
  %call158 = call zeroext i1 @arch_test_bit(i64 noundef 428, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1164
  br i1 %call158, label %if.then160, label %if.else164, !dbg !1163

if.then160:                                       ; preds = %cond.false157, %cond.true156
  br label %do.body161, !dbg !1165

do.body161:                                       ; preds = %if.then160
  call void @set_bit(i64 noundef 668, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1166
  call void @set_bit(i64 noundef 668, ptr noundef @cpu_caps_set) #13, !dbg !1166
  br label %do.cond162, !dbg !1166

do.cond162:                                       ; preds = %do.body161
  br label %do.end163, !dbg !1166

do.end163:                                        ; preds = %do.cond162
  br label %if.end180, !dbg !1166

if.else164:                                       ; preds = %cond.false157, %cond.true156, %if.then150
  %82 = load ptr, ptr %c.addr, align 8, !dbg !1168
  %83 = getelementptr inbounds %struct.cpuinfo_x86, ptr %82, i32 0, i32 0, !dbg !1170
  %x86165 = getelementptr inbounds %struct.anon, ptr %83, i32 0, i32 1, !dbg !1170
  %84 = load i8, ptr %x86165, align 1, !dbg !1170
  %conv166 = zext i8 %84 to i32, !dbg !1168
  %cmp167 = icmp sge i32 %conv166, 25, !dbg !1171
  br i1 %cmp167, label %land.lhs.true169, label %if.end179, !dbg !1172

land.lhs.true169:                                 ; preds = %if.else164
  %call170 = call i32 @wrmsrl_safe(i32 noundef 73, i64 noundef 128) #13, !dbg !1173
  %tobool171 = icmp ne i32 %call170, 0, !dbg !1173
  br i1 %tobool171, label %if.end179, label %if.then172, !dbg !1174

if.then172:                                       ; preds = %land.lhs.true169
  br label %do.body173, !dbg !1175

do.body173:                                       ; preds = %if.then172
  call void @set_bit(i64 noundef 668, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1177
  call void @set_bit(i64 noundef 668, ptr noundef @cpu_caps_set) #13, !dbg !1177
  br label %do.cond174, !dbg !1177

do.cond174:                                       ; preds = %do.body173
  br label %do.end175, !dbg !1177

do.end175:                                        ; preds = %do.cond174
  br label %do.body176, !dbg !1179

do.body176:                                       ; preds = %do.end175
  call void @set_bit(i64 noundef 667, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1180
  call void @set_bit(i64 noundef 667, ptr noundef @cpu_caps_set) #13, !dbg !1180
  br label %do.cond177, !dbg !1180

do.cond177:                                       ; preds = %do.body176
  br label %do.end178, !dbg !1180

do.end178:                                        ; preds = %do.cond177
  br label %if.end179, !dbg !1182

if.end179:                                        ; preds = %do.end178, %land.lhs.true169, %if.else164
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %do.end163
  br label %if.end181, !dbg !1183

if.end181:                                        ; preds = %if.end180, %cond.false146, %cond.true145, %cond.false140, %cond.true139
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #14, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #14, !dbg !1184
  ret void, !dbg !1184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bsp_init_amd(ptr noundef %c) #0 align 16 !dbg !273 {
entry:
  %c.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %upperbit = alloca i64, align 8
  %cpuid = alloca i32, align 4
  %assoc = alloca i32, align 4
  %ecx = alloca i32, align 4
  %value = alloca i64, align 8
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp140 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp185 = alloca i64, align 8
  %tmp194 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !275, metadata !DIExpression()), !dbg !1185
  br i1 false, label %cond.true, label %cond.false, !dbg !1186

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end14, !dbg !1187

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1187
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !1187
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !1187
  %call = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef %arraydecay) #13, !dbg !1187
  br i1 %call, label %if.then, label %if.end14, !dbg !1186

if.then:                                          ; preds = %cond.false, %cond.true
  %2 = load ptr, ptr %c.addr, align 8, !dbg !1188
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 0, !dbg !1189
  %x86 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1, !dbg !1189
  %4 = load i8, ptr %x86, align 1, !dbg !1189
  %conv = zext i8 %4 to i32, !dbg !1188
  %cmp = icmp sgt i32 %conv, 16, !dbg !1190
  br i1 %cmp, label %if.then9, label %lor.lhs.false, !dbg !1191

lor.lhs.false:                                    ; preds = %if.then
  %5 = load ptr, ptr %c.addr, align 8, !dbg !1192
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 0, !dbg !1193
  %x862 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1, !dbg !1193
  %7 = load i8, ptr %x862, align 1, !dbg !1193
  %conv3 = zext i8 %7 to i32, !dbg !1192
  %cmp4 = icmp eq i32 %conv3, 16, !dbg !1194
  br i1 %cmp4, label %land.lhs.true, label %if.end13, !dbg !1195

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load ptr, ptr %c.addr, align 8, !dbg !1196
  %9 = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 0, !dbg !1197
  %x86_model = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 0, !dbg !1197
  %10 = load i8, ptr %x86_model, align 8, !dbg !1197
  %conv6 = zext i8 %10 to i32, !dbg !1196
  %cmp7 = icmp sge i32 %conv6, 2, !dbg !1198
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !1199

if.then9:                                         ; preds = %land.lhs.true, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %val, metadata !276, metadata !DIExpression()), !dbg !1201
  %call10 = call i64 @native_read_msr(i32 noundef -1073676267) #13, !dbg !1202
  store i64 %call10, ptr %val, align 8, !dbg !1202
  %11 = load i64, ptr %val, align 8, !dbg !1203
  %and = and i64 %11, 16777216, !dbg !1205
  %tobool = icmp ne i64 %and, 0, !dbg !1205
  br i1 %tobool, label %if.end, label %if.then11, !dbg !1206

if.then11:                                        ; preds = %if.then9
  br label %do.body, !dbg !1207

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !1209

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1209

do.end:                                           ; preds = %do.cond
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #16, !dbg !1207
  store i32 %call12, ptr %tmp, align 4, !dbg !1209
  %12 = load i32, ptr %tmp, align 4, !dbg !1207
  br label %if.end, !dbg !1211

if.end:                                           ; preds = %do.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !1212
  br label %if.end13, !dbg !1213

if.end13:                                         ; preds = %if.end, %land.lhs.true, %lor.lhs.false
  br label %if.end14, !dbg !1214

if.end14:                                         ; preds = %if.end13, %cond.false, %cond.true
  %13 = load ptr, ptr %c.addr, align 8, !dbg !1215
  %14 = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 0, !dbg !1216
  %x8615 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1, !dbg !1216
  %15 = load i8, ptr %x8615, align 1, !dbg !1216
  %conv16 = zext i8 %15 to i32, !dbg !1215
  %cmp17 = icmp eq i32 %conv16, 21, !dbg !1217
  br i1 %cmp17, label %if.then19, label %if.end28, !dbg !1218

if.then19:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %upperbit) #14, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %upperbit, metadata !281, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpuid) #14, !dbg !1221
  call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !284, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 4, ptr %assoc) #14, !dbg !1221
  call void @llvm.dbg.declare(metadata ptr %assoc, metadata !285, metadata !DIExpression()), !dbg !1223
  %call20 = call i32 @cpuid_edx(i32 noundef -2147483643) #13, !dbg !1224
  store i32 %call20, ptr %cpuid, align 4, !dbg !1225
  %16 = load i32, ptr %cpuid, align 4, !dbg !1226
  %shr = lshr i32 %16, 16, !dbg !1227
  %and21 = and i32 %shr, 255, !dbg !1228
  store i32 %and21, ptr %assoc, align 4, !dbg !1229
  %17 = load i32, ptr %cpuid, align 4, !dbg !1230
  %shr22 = lshr i32 %17, 24, !dbg !1231
  %shl = shl i32 %shr22, 10, !dbg !1232
  %18 = load i32, ptr %assoc, align 4, !dbg !1233
  %div = udiv i32 %shl, %18, !dbg !1234
  %conv23 = zext i32 %div to i64, !dbg !1235
  store i64 %conv23, ptr %upperbit, align 8, !dbg !1236
  %19 = load i64, ptr %upperbit, align 8, !dbg !1237
  %sub = sub i64 %19, 1, !dbg !1238
  %and24 = and i64 %sub, -4096, !dbg !1239
  store i64 %and24, ptr getelementptr inbounds (%struct.va_alignment, ptr @va_align, i32 0, i32 1), align 8, !dbg !1240
  store i32 3, ptr @va_align, align 64, !dbg !1241
  %call25 = call i32 @get_random_u32() #13, !dbg !1242
  %conv26 = zext i32 %call25 to i64, !dbg !1242
  %20 = load i64, ptr getelementptr inbounds (%struct.va_alignment, ptr @va_align, i32 0, i32 1), align 8, !dbg !1243
  %and27 = and i64 %conv26, %20, !dbg !1244
  store i64 %and27, ptr getelementptr inbounds (%struct.va_alignment, ptr @va_align, i32 0, i32 2), align 16, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 4, ptr %assoc) #14, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpuid) #14, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %upperbit) #14, !dbg !1246
  br label %if.end28, !dbg !1247

if.end28:                                         ; preds = %if.then19, %if.end14
  br i1 false, label %cond.true29, label %cond.false30, !dbg !1248

cond.true29:                                      ; preds = %if.end28
  br i1 true, label %if.then34, label %if.end35, !dbg !1249

cond.false30:                                     ; preds = %if.end28
  %21 = load ptr, ptr %c.addr, align 8, !dbg !1249
  %22 = getelementptr inbounds %struct.cpuinfo_x86, ptr %21, i32 0, i32 10, !dbg !1249
  %arraydecay31 = getelementptr inbounds [24 x i32], ptr %22, i64 0, i64 0, !dbg !1249
  %call32 = call zeroext i1 @arch_test_bit(i64 noundef 221, ptr noundef %arraydecay31) #13, !dbg !1249
  br i1 %call32, label %if.then34, label %if.end35, !dbg !1248

if.then34:                                        ; preds = %cond.false30, %cond.true29
  call void @use_mwaitx_delay() #13, !dbg !1251
  br label %if.end35, !dbg !1251

if.end35:                                         ; preds = %if.then34, %cond.false30, %cond.true29
  br i1 false, label %cond.true36, label %cond.false37, !dbg !1252

cond.true36:                                      ; preds = %if.end35
  br i1 true, label %if.then40, label %if.else, !dbg !1253

cond.false37:                                     ; preds = %if.end35
  %call38 = call zeroext i1 @arch_test_bit(i64 noundef 214, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1253
  br i1 %call38, label %if.then40, label %if.else, !dbg !1252

if.then40:                                        ; preds = %cond.false37, %cond.true36
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !1254
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !286, metadata !DIExpression()), !dbg !1255
  %call41 = call i32 @cpuid_ecx(i32 noundef -2147483618) #13, !dbg !1256
  store i32 %call41, ptr %ecx, align 4, !dbg !1257
  %23 = load i32, ptr %ecx, align 4, !dbg !1258
  %shr42 = lshr i32 %23, 8, !dbg !1259
  %and43 = and i32 %shr42, 7, !dbg !1260
  %add = add i32 %and43, 1, !dbg !1261
  store i32 %add, ptr @nodes_per_socket, align 4, !dbg !1262
  store i32 %add, ptr @__max_die_per_package, align 4, !dbg !1263
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !1264
  br label %if.end55, !dbg !1265

if.else:                                          ; preds = %cond.false37, %cond.true36
  br i1 false, label %cond.true44, label %cond.false45, !dbg !1266

cond.true44:                                      ; preds = %if.else
  br i1 true, label %if.then48, label %if.end54, !dbg !1267

cond.false45:                                     ; preds = %if.else
  %call46 = call zeroext i1 @arch_test_bit(i64 noundef 211, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1267
  br i1 %call46, label %if.then48, label %if.end54, !dbg !1266

if.then48:                                        ; preds = %cond.false45, %cond.true44
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #14, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %value, metadata !289, metadata !DIExpression()), !dbg !1269
  %call49 = call i64 @native_read_msr(i32 noundef -1073672180) #13, !dbg !1270
  store i64 %call49, ptr %value, align 8, !dbg !1270
  %24 = load i64, ptr %value, align 8, !dbg !1271
  %shr50 = lshr i64 %24, 3, !dbg !1272
  %and51 = and i64 %shr50, 7, !dbg !1273
  %add52 = add i64 %and51, 1, !dbg !1274
  %conv53 = trunc i64 %add52 to i32, !dbg !1275
  store i32 %conv53, ptr @nodes_per_socket, align 4, !dbg !1276
  store i32 %conv53, ptr @__max_die_per_package, align 4, !dbg !1277
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #14, !dbg !1278
  br label %if.end54, !dbg !1279

if.end54:                                         ; preds = %if.then48, %cond.false45, %cond.true44
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then40
  br i1 false, label %cond.true56, label %cond.false57, !dbg !1280

cond.true56:                                      ; preds = %if.end55
  br i1 true, label %if.end91, label %land.lhs.true60, !dbg !1281

cond.false57:                                     ; preds = %if.end55
  %call58 = call zeroext i1 @arch_test_bit(i64 noundef 440, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1281
  br i1 %call58, label %if.end91, label %land.lhs.true60, !dbg !1280

land.lhs.true60:                                  ; preds = %cond.false57, %cond.true56
  br i1 false, label %cond.true61, label %cond.false62, !dbg !1282

cond.true61:                                      ; preds = %land.lhs.true60
  br i1 true, label %if.end91, label %land.lhs.true65, !dbg !1283

cond.false62:                                     ; preds = %land.lhs.true60
  %call63 = call zeroext i1 @arch_test_bit(i64 noundef 441, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1283
  br i1 %call63, label %if.end91, label %land.lhs.true65, !dbg !1282

land.lhs.true65:                                  ; preds = %cond.false62, %cond.true61
  %25 = load ptr, ptr %c.addr, align 8, !dbg !1284
  %26 = getelementptr inbounds %struct.cpuinfo_x86, ptr %25, i32 0, i32 0, !dbg !1285
  %x8666 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1, !dbg !1285
  %27 = load i8, ptr %x8666, align 1, !dbg !1285
  %conv67 = zext i8 %27 to i32, !dbg !1284
  %cmp68 = icmp sge i32 %conv67, 21, !dbg !1286
  br i1 %cmp68, label %land.lhs.true70, label %if.end91, !dbg !1287

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %28 = load ptr, ptr %c.addr, align 8, !dbg !1288
  %29 = getelementptr inbounds %struct.cpuinfo_x86, ptr %28, i32 0, i32 0, !dbg !1289
  %x8671 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 1, !dbg !1289
  %30 = load i8, ptr %x8671, align 1, !dbg !1289
  %conv72 = zext i8 %30 to i32, !dbg !1288
  %cmp73 = icmp sle i32 %conv72, 23, !dbg !1290
  br i1 %cmp73, label %if.then75, label %if.end91, !dbg !1291

if.then75:                                        ; preds = %land.lhs.true70
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #14, !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !292, metadata !DIExpression()), !dbg !1293
  %31 = load ptr, ptr %c.addr, align 8, !dbg !1294
  %32 = getelementptr inbounds %struct.cpuinfo_x86, ptr %31, i32 0, i32 0, !dbg !1295
  %x8676 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1, !dbg !1295
  %33 = load i8, ptr %x8676, align 1, !dbg !1295
  %conv77 = zext i8 %33 to i32, !dbg !1294
  switch i32 %conv77, label %sw.default [
    i32 21, label %sw.bb
    i32 22, label %sw.bb78
    i32 23, label %sw.bb79
  ], !dbg !1296

sw.bb:                                            ; preds = %if.then75
  store i32 54, ptr %bit, align 4, !dbg !1297
  br label %sw.epilog, !dbg !1299

sw.bb78:                                          ; preds = %if.then75
  store i32 33, ptr %bit, align 4, !dbg !1300
  br label %sw.epilog, !dbg !1301

sw.bb79:                                          ; preds = %if.then75
  store i32 10, ptr %bit, align 4, !dbg !1302
  br label %sw.epilog, !dbg !1303

sw.default:                                       ; preds = %if.then75
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1304

sw.epilog:                                        ; preds = %sw.bb79, %sw.bb78, %sw.bb
  %call80 = call i32 @rdmsrl_safe(i32 noundef -1073672160, ptr noundef @x86_amd_ls_cfg_base) #13, !dbg !1305
  %tobool81 = icmp ne i32 %call80, 0, !dbg !1305
  br i1 %tobool81, label %if.end90, label %if.then82, !dbg !1307

if.then82:                                        ; preds = %sw.epilog
  br label %do.body83, !dbg !1308

do.body83:                                        ; preds = %if.then82
  call void @set_bit(i64 noundef 248, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1310
  call void @set_bit(i64 noundef 248, ptr noundef @cpu_caps_set) #13, !dbg !1310
  br label %do.cond84, !dbg !1310

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !1310

do.end85:                                         ; preds = %do.cond84
  br label %do.body86, !dbg !1312

do.body86:                                        ; preds = %do.end85
  call void @set_bit(i64 noundef 241, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1313
  call void @set_bit(i64 noundef 241, ptr noundef @cpu_caps_set) #13, !dbg !1313
  br label %do.cond87, !dbg !1313

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !1313

do.end88:                                         ; preds = %do.cond87
  %34 = load i32, ptr %bit, align 4, !dbg !1315
  %sh_prom = zext i32 %34 to i64, !dbg !1316
  %shl89 = shl i64 1, %sh_prom, !dbg !1316
  store i64 %shl89, ptr @x86_amd_ls_cfg_ssbd_mask, align 8, !dbg !1317
  br label %if.end90, !dbg !1318

if.end90:                                         ; preds = %do.end88, %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1319
  br label %cleanup, !dbg !1319

cleanup:                                          ; preds = %if.end90, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #14, !dbg !1319
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end91, !dbg !1320

if.end91:                                         ; preds = %cleanup.cont, %land.lhs.true70, %land.lhs.true65, %cond.false62, %cond.true61, %cond.false57, %cond.true56
  %35 = load ptr, ptr %c.addr, align 8, !dbg !1321
  call void @resctrl_cpu_detect(ptr noundef %35) #13, !dbg !1322
  %36 = load ptr, ptr %c.addr, align 8, !dbg !1323
  %37 = getelementptr inbounds %struct.cpuinfo_x86, ptr %36, i32 0, i32 0, !dbg !1324
  %x8692 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 1, !dbg !1324
  %38 = load i8, ptr %x8692, align 1, !dbg !1324
  %conv93 = zext i8 %38 to i32, !dbg !1323
  switch i32 %conv93, label %sw.default126 [
    i32 23, label %sw.bb94
    i32 25, label %sw.bb111
  ], !dbg !1325

sw.bb94:                                          ; preds = %if.end91
  %39 = load ptr, ptr %c.addr, align 8, !dbg !1326
  %40 = getelementptr inbounds %struct.cpuinfo_x86, ptr %39, i32 0, i32 0, !dbg !1329
  %x86_model95 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 0, !dbg !1329
  %41 = load i8, ptr %x86_model95, align 8, !dbg !1329
  %conv96 = zext i8 %41 to i32, !dbg !1326
  switch i32 %conv96, label %sw.default109 [
    i32 80, label %sw.bb98
    i32 81, label %sw.bb98
    i32 82, label %sw.bb98
    i32 83, label %sw.bb98
    i32 84, label %sw.bb98
    i32 85, label %sw.bb98
    i32 86, label %sw.bb98
    i32 87, label %sw.bb98
    i32 88, label %sw.bb98
    i32 89, label %sw.bb98
    i32 90, label %sw.bb98
    i32 91, label %sw.bb98
    i32 92, label %sw.bb98
    i32 93, label %sw.bb98
    i32 94, label %sw.bb98
    i32 95, label %sw.bb98
    i32 0, label %sw.bb97
    i32 1, label %sw.bb97
    i32 2, label %sw.bb97
    i32 3, label %sw.bb97
    i32 4, label %sw.bb97
    i32 5, label %sw.bb97
    i32 6, label %sw.bb97
    i32 7, label %sw.bb97
    i32 8, label %sw.bb97
    i32 9, label %sw.bb97
    i32 10, label %sw.bb97
    i32 11, label %sw.bb97
    i32 12, label %sw.bb97
    i32 13, label %sw.bb97
    i32 14, label %sw.bb97
    i32 15, label %sw.bb97
    i32 16, label %sw.bb97
    i32 17, label %sw.bb97
    i32 18, label %sw.bb97
    i32 19, label %sw.bb97
    i32 20, label %sw.bb97
    i32 21, label %sw.bb97
    i32 22, label %sw.bb97
    i32 23, label %sw.bb97
    i32 24, label %sw.bb97
    i32 25, label %sw.bb97
    i32 26, label %sw.bb97
    i32 27, label %sw.bb97
    i32 28, label %sw.bb97
    i32 29, label %sw.bb97
    i32 30, label %sw.bb97
    i32 31, label %sw.bb97
    i32 32, label %sw.bb97
    i32 33, label %sw.bb97
    i32 34, label %sw.bb97
    i32 35, label %sw.bb97
    i32 36, label %sw.bb97
    i32 37, label %sw.bb97
    i32 38, label %sw.bb97
    i32 39, label %sw.bb97
    i32 40, label %sw.bb97
    i32 41, label %sw.bb97
    i32 42, label %sw.bb97
    i32 43, label %sw.bb97
    i32 44, label %sw.bb97
    i32 45, label %sw.bb97
    i32 46, label %sw.bb97
    i32 47, label %sw.bb97
    i32 160, label %sw.bb105
    i32 161, label %sw.bb105
    i32 162, label %sw.bb105
    i32 163, label %sw.bb105
    i32 164, label %sw.bb105
    i32 165, label %sw.bb105
    i32 166, label %sw.bb105
    i32 167, label %sw.bb105
    i32 168, label %sw.bb105
    i32 169, label %sw.bb105
    i32 170, label %sw.bb105
    i32 171, label %sw.bb105
    i32 172, label %sw.bb105
    i32 173, label %sw.bb105
    i32 174, label %sw.bb105
    i32 175, label %sw.bb105
    i32 144, label %sw.bb104
    i32 145, label %sw.bb104
    i32 96, label %sw.bb103
    i32 97, label %sw.bb103
    i32 98, label %sw.bb103
    i32 99, label %sw.bb103
    i32 100, label %sw.bb103
    i32 101, label %sw.bb103
    i32 102, label %sw.bb103
    i32 103, label %sw.bb103
    i32 104, label %sw.bb103
    i32 105, label %sw.bb103
    i32 106, label %sw.bb103
    i32 107, label %sw.bb103
    i32 108, label %sw.bb103
    i32 109, label %sw.bb103
    i32 110, label %sw.bb103
    i32 111, label %sw.bb103
    i32 112, label %sw.bb103
    i32 113, label %sw.bb103
    i32 114, label %sw.bb103
    i32 115, label %sw.bb103
    i32 116, label %sw.bb103
    i32 117, label %sw.bb103
    i32 118, label %sw.bb103
    i32 119, label %sw.bb103
    i32 120, label %sw.bb103
    i32 121, label %sw.bb103
    i32 122, label %sw.bb103
    i32 123, label %sw.bb103
    i32 124, label %sw.bb103
    i32 125, label %sw.bb103
    i32 126, label %sw.bb103
    i32 127, label %sw.bb103
    i32 48, label %sw.bb102
    i32 49, label %sw.bb102
    i32 50, label %sw.bb102
    i32 51, label %sw.bb102
    i32 52, label %sw.bb102
    i32 53, label %sw.bb102
    i32 54, label %sw.bb102
    i32 55, label %sw.bb102
    i32 56, label %sw.bb102
    i32 57, label %sw.bb102
    i32 58, label %sw.bb102
    i32 59, label %sw.bb102
    i32 60, label %sw.bb102
    i32 61, label %sw.bb102
    i32 62, label %sw.bb102
    i32 63, label %sw.bb102
    i32 64, label %sw.bb102
    i32 65, label %sw.bb102
    i32 66, label %sw.bb102
    i32 67, label %sw.bb102
    i32 68, label %sw.bb102
    i32 69, label %sw.bb102
    i32 70, label %sw.bb102
    i32 71, label %sw.bb102
    i32 72, label %sw.bb102
    i32 73, label %sw.bb102
    i32 74, label %sw.bb102
    i32 75, label %sw.bb102
    i32 76, label %sw.bb102
    i32 77, label %sw.bb102
    i32 78, label %sw.bb102
    i32 79, label %sw.bb102
  ], !dbg !1330

sw.bb97:                                          ; preds = %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94
  br label %sw.bb98, !dbg !1331

sw.bb98:                                          ; preds = %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb97
  br label %do.body99, !dbg !1332

do.body99:                                        ; preds = %sw.bb98
  call void @set_bit(i64 noundef 383, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1334
  call void @set_bit(i64 noundef 383, ptr noundef @cpu_caps_set) #13, !dbg !1334
  br label %do.end101, !dbg !1334

do.end101:                                        ; preds = %do.body99
  br label %sw.epilog110, !dbg !1336

sw.bb102:                                         ; preds = %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94
  br label %sw.bb103, !dbg !1336

sw.bb103:                                         ; preds = %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb102
  br label %sw.bb104, !dbg !1336

sw.bb104:                                         ; preds = %sw.bb94, %sw.bb94, %sw.bb103
  br label %sw.bb105, !dbg !1336

sw.bb105:                                         ; preds = %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb94, %sw.bb104
  br label %do.body106, !dbg !1337

do.body106:                                       ; preds = %sw.bb105
  call void @set_bit(i64 noundef 380, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1338
  call void @set_bit(i64 noundef 380, ptr noundef @cpu_caps_set) #13, !dbg !1338
  br label %do.end108, !dbg !1338

do.end108:                                        ; preds = %do.body106
  br label %sw.epilog110, !dbg !1340

sw.default109:                                    ; preds = %sw.bb94
  br label %warn, !dbg !1341

sw.epilog110:                                     ; preds = %do.end108, %do.end101
  br label %sw.epilog127, !dbg !1342

sw.bb111:                                         ; preds = %if.end91
  %42 = load ptr, ptr %c.addr, align 8, !dbg !1343
  %43 = getelementptr inbounds %struct.cpuinfo_x86, ptr %42, i32 0, i32 0, !dbg !1345
  %x86_model112 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 0, !dbg !1345
  %44 = load i8, ptr %x86_model112, align 8, !dbg !1345
  %conv113 = zext i8 %44 to i32, !dbg !1343
  switch i32 %conv113, label %sw.caserange [
    i32 32, label %sw.bb115
    i32 33, label %sw.bb115
    i32 34, label %sw.bb115
    i32 35, label %sw.bb115
    i32 36, label %sw.bb115
    i32 37, label %sw.bb115
    i32 38, label %sw.bb115
    i32 39, label %sw.bb115
    i32 40, label %sw.bb115
    i32 41, label %sw.bb115
    i32 42, label %sw.bb115
    i32 43, label %sw.bb115
    i32 44, label %sw.bb115
    i32 45, label %sw.bb115
    i32 46, label %sw.bb115
    i32 47, label %sw.bb115
    i32 48, label %sw.bb115
    i32 49, label %sw.bb115
    i32 50, label %sw.bb115
    i32 51, label %sw.bb115
    i32 52, label %sw.bb115
    i32 53, label %sw.bb115
    i32 54, label %sw.bb115
    i32 55, label %sw.bb115
    i32 56, label %sw.bb115
    i32 57, label %sw.bb115
    i32 58, label %sw.bb115
    i32 59, label %sw.bb115
    i32 60, label %sw.bb115
    i32 61, label %sw.bb115
    i32 62, label %sw.bb115
    i32 63, label %sw.bb115
    i32 64, label %sw.bb115
    i32 65, label %sw.bb115
    i32 66, label %sw.bb115
    i32 67, label %sw.bb115
    i32 68, label %sw.bb115
    i32 69, label %sw.bb115
    i32 70, label %sw.bb115
    i32 71, label %sw.bb115
    i32 72, label %sw.bb115
    i32 73, label %sw.bb115
    i32 74, label %sw.bb115
    i32 75, label %sw.bb115
    i32 76, label %sw.bb115
    i32 77, label %sw.bb115
    i32 78, label %sw.bb115
    i32 79, label %sw.bb115
    i32 80, label %sw.bb115
    i32 81, label %sw.bb115
    i32 82, label %sw.bb115
    i32 83, label %sw.bb115
    i32 84, label %sw.bb115
    i32 85, label %sw.bb115
    i32 86, label %sw.bb115
    i32 87, label %sw.bb115
    i32 88, label %sw.bb115
    i32 89, label %sw.bb115
    i32 90, label %sw.bb115
    i32 91, label %sw.bb115
    i32 92, label %sw.bb115
    i32 93, label %sw.bb115
    i32 94, label %sw.bb115
    i32 95, label %sw.bb115
    i32 0, label %sw.bb114
    i32 1, label %sw.bb114
    i32 2, label %sw.bb114
    i32 3, label %sw.bb114
    i32 4, label %sw.bb114
    i32 5, label %sw.bb114
    i32 6, label %sw.bb114
    i32 7, label %sw.bb114
    i32 8, label %sw.bb114
    i32 9, label %sw.bb114
    i32 10, label %sw.bb114
    i32 11, label %sw.bb114
    i32 12, label %sw.bb114
    i32 13, label %sw.bb114
    i32 14, label %sw.bb114
    i32 15, label %sw.bb114
    i32 16, label %sw.bb119
    i32 17, label %sw.bb119
    i32 18, label %sw.bb119
    i32 19, label %sw.bb119
    i32 20, label %sw.bb119
    i32 21, label %sw.bb119
    i32 22, label %sw.bb119
    i32 23, label %sw.bb119
    i32 24, label %sw.bb119
    i32 25, label %sw.bb119
    i32 26, label %sw.bb119
    i32 27, label %sw.bb119
    i32 28, label %sw.bb119
    i32 29, label %sw.bb119
    i32 30, label %sw.bb119
    i32 31, label %sw.bb119
  ], !dbg !1346

sw.bb114:                                         ; preds = %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111
  br label %sw.bb115, !dbg !1347

sw.bb115:                                         ; preds = %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb114
  br label %do.body116, !dbg !1348

do.body116:                                       ; preds = %sw.bb115
  call void @set_bit(i64 noundef 381, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1350
  call void @set_bit(i64 noundef 381, ptr noundef @cpu_caps_set) #13, !dbg !1350
  br label %do.end118, !dbg !1350

do.end118:                                        ; preds = %do.body116
  br label %sw.epilog125, !dbg !1352

sw.bb119:                                         ; preds = %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111, %sw.bb111
  br label %sw.bb120, !dbg !1352

sw.bb120:                                         ; preds = %sw.caserange, %sw.bb119
  br label %do.body121, !dbg !1353

do.body121:                                       ; preds = %sw.bb120
  call void @set_bit(i64 noundef 382, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1354
  call void @set_bit(i64 noundef 382, ptr noundef @cpu_caps_set) #13, !dbg !1354
  br label %do.end123, !dbg !1354

do.end123:                                        ; preds = %do.body121
  br label %sw.epilog125, !dbg !1356

sw.caserange:                                     ; preds = %sw.bb111
  %45 = sub i32 %conv113, 96, !dbg !1354
  %inbounds = icmp ule i32 %45, 79, !dbg !1354
  br i1 %inbounds, label %sw.bb120, label %sw.default124, !dbg !1354

sw.default124:                                    ; preds = %sw.caserange
  br label %warn, !dbg !1357

sw.epilog125:                                     ; preds = %do.end123, %do.end118
  br label %sw.epilog127, !dbg !1358

sw.default126:                                    ; preds = %if.end91
  br label %sw.epilog127, !dbg !1359

sw.epilog127:                                     ; preds = %sw.default126, %sw.epilog125, %sw.epilog110
  br label %return, !dbg !1360

warn:                                             ; preds = %sw.default124, %sw.default109
  call void @llvm.dbg.label(metadata !295), !dbg !1361
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !296, metadata !DIExpression()), !dbg !1362
  store i8 1, ptr %__ret_do_once, align 1, !dbg !1362
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !298, metadata !DIExpression()), !dbg !1363
  %46 = load i8, ptr %__ret_do_once, align 1, !dbg !1363, !range !893, !noundef !894
  %tobool128 = trunc i8 %46 to i1, !dbg !1363
  %lnot = xor i1 %tobool128, true, !dbg !1363
  %lnot129 = xor i1 %lnot, true, !dbg !1363
  %frombool = zext i1 %lnot129 to i8, !dbg !1363
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !1363
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !301, metadata !DIExpression()), !dbg !1363
  store i8 0, ptr %__ret_once, align 1, !dbg !1363
  %47 = load i8, ptr %__ret_cond, align 1, !dbg !1364, !range !893, !noundef !894
  %tobool130 = trunc i8 %47 to i1, !dbg !1364
  br i1 %tobool130, label %land.rhs, label %land.end, !dbg !1364

land.rhs:                                         ; preds = %warn
  %48 = load i8, ptr @bsp_init_amd.__already_done, align 1, !dbg !1364, !range !893, !noundef !894
  %tobool132 = trunc i8 %48 to i1, !dbg !1364
  %lnot133 = xor i1 %tobool132, true, !dbg !1364
  br label %land.end

land.end:                                         ; preds = %land.rhs, %warn
  %49 = phi i1 [ false, %warn ], [ %lnot133, %land.rhs ], !dbg !1366
  %lnot134 = xor i1 %49, true, !dbg !1364
  %lnot135 = xor i1 %lnot134, true, !dbg !1364
  %lnot.ext = zext i1 %lnot135 to i32, !dbg !1364
  %conv136 = sext i32 %lnot.ext to i64, !dbg !1364
  %expval = call i64 @llvm.expect.i64(i64 %conv136, i64 0), !dbg !1364
  %tobool137 = icmp ne i64 %expval, 0, !dbg !1364
  br i1 %tobool137, label %if.then138, label %if.end139, !dbg !1363

if.then138:                                       ; preds = %land.end
  store i8 1, ptr @bsp_init_amd.__already_done, align 1, !dbg !1367
  store i8 1, ptr %__ret_once, align 1, !dbg !1367
  br label %if.end139, !dbg !1367

if.end139:                                        ; preds = %if.then138, %land.end
  %50 = load i8, ptr %__ret_once, align 1, !dbg !1363, !range !893, !noundef !894
  %tobool141 = trunc i8 %50 to i1, !dbg !1363
  %lnot142 = xor i1 %tobool141, true, !dbg !1363
  %lnot144 = xor i1 %lnot142, true, !dbg !1363
  %lnot.ext145 = zext i1 %lnot144 to i32, !dbg !1363
  %conv146 = sext i32 %lnot.ext145 to i64, !dbg !1363
  %expval147 = call i64 @llvm.expect.i64(i64 %conv146, i64 0), !dbg !1363
  store i64 %expval147, ptr %tmp140, align 8, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !1369
  %51 = load i64, ptr %tmp140, align 8, !dbg !1363
  %tobool148 = icmp ne i64 %51, 0, !dbg !1369
  br i1 %tobool148, label %if.then149, label %if.end193, !dbg !1362

if.then149:                                       ; preds = %if.end139
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !302, metadata !DIExpression()), !dbg !1370
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1370
  %52 = load i32, ptr %__ret_warn_on, align 4, !dbg !1371
  %tobool150 = icmp ne i32 %52, 0, !dbg !1371
  %lnot151 = xor i1 %tobool150, true, !dbg !1371
  %lnot153 = xor i1 %lnot151, true, !dbg !1371
  %lnot.ext154 = zext i1 %lnot153 to i32, !dbg !1371
  %conv155 = sext i32 %lnot.ext154 to i64, !dbg !1371
  %expval156 = call i64 @llvm.expect.i64(i64 %conv155, i64 0), !dbg !1371
  %tobool157 = icmp ne i64 %expval156, 0, !dbg !1371
  br i1 %tobool157, label %if.then158, label %if.end184, !dbg !1370

if.then158:                                       ; preds = %if.then149
  br label %do.body159, !dbg !1371

do.body159:                                       ; preds = %if.then158
  br label %do.body160, !dbg !1372

do.body160:                                       ; preds = %do.body159
  br label %do.cond161, !dbg !1373

do.cond161:                                       ; preds = %do.body160
  br label %do.end162, !dbg !1373

do.end162:                                        ; preds = %do.cond161
  %53 = load ptr, ptr %c.addr, align 8, !dbg !1372
  %54 = getelementptr inbounds %struct.cpuinfo_x86, ptr %53, i32 0, i32 0, !dbg !1372
  %x86163 = getelementptr inbounds %struct.anon, ptr %54, i32 0, i32 1, !dbg !1372
  %55 = load i8, ptr %x86163, align 1, !dbg !1372
  %conv164 = zext i8 %55 to i32, !dbg !1372
  %56 = load ptr, ptr %c.addr, align 8, !dbg !1372
  %57 = getelementptr inbounds %struct.cpuinfo_x86, ptr %56, i32 0, i32 0, !dbg !1372
  %x86_model165 = getelementptr inbounds %struct.anon, ptr %57, i32 0, i32 0, !dbg !1372
  %58 = load i8, ptr %x86_model165, align 8, !dbg !1372
  %conv166 = zext i8 %58 to i32, !dbg !1372
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.7, i32 noundef %conv164, i32 noundef %conv166) #13, !dbg !1372
  br label %do.body167, !dbg !1372

do.body167:                                       ; preds = %do.end162
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !304, metadata !DIExpression()), !dbg !1375
  store i32 2313, ptr %__flags, align 4, !dbg !1375
  br label %do.body168, !dbg !1375

do.body168:                                       ; preds = %do.body167
  br label %do.cond169, !dbg !1376

do.cond169:                                       ; preds = %do.body168
  br label %do.end170, !dbg !1376

do.end170:                                        ; preds = %do.cond169
  br label %do.body171, !dbg !1375

do.body171:                                       ; preds = %do.end170
  %59 = load i32, ptr %__flags, align 4, !dbg !1378
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 651, i32 %59, i64 12) #14, !dbg !1378, !srcloc !1380
  br label %do.cond172, !dbg !1378

do.cond172:                                       ; preds = %do.body171
  br label %do.end173, !dbg !1378

do.end173:                                        ; preds = %do.cond172
  br label %do.body174, !dbg !1375

do.body174:                                       ; preds = %do.end173
  br label %do.cond175, !dbg !1381

do.cond175:                                       ; preds = %do.body174
  br label %do.end176, !dbg !1381

do.end176:                                        ; preds = %do.cond175
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1372
  br label %do.cond177, !dbg !1375

do.cond177:                                       ; preds = %do.end176
  br label %do.end178, !dbg !1375

do.end178:                                        ; preds = %do.cond177
  br label %do.body179, !dbg !1372

do.body179:                                       ; preds = %do.end178
  br label %do.cond180, !dbg !1383

do.cond180:                                       ; preds = %do.body179
  br label %do.end181, !dbg !1383

do.end181:                                        ; preds = %do.cond180
  br label %do.cond182, !dbg !1372

do.cond182:                                       ; preds = %do.end181
  br label %do.end183, !dbg !1372

do.end183:                                        ; preds = %do.cond182
  br label %if.end184, !dbg !1372

if.end184:                                        ; preds = %do.end183, %if.then149
  %60 = load i32, ptr %__ret_warn_on, align 4, !dbg !1370
  %tobool186 = icmp ne i32 %60, 0, !dbg !1370
  %lnot187 = xor i1 %tobool186, true, !dbg !1370
  %lnot189 = xor i1 %lnot187, true, !dbg !1370
  %lnot.ext190 = zext i1 %lnot189 to i32, !dbg !1370
  %conv191 = sext i32 %lnot.ext190 to i64, !dbg !1370
  %expval192 = call i64 @llvm.expect.i64(i64 %conv191, i64 0), !dbg !1370
  store i64 %expval192, ptr %tmp185, align 8, !dbg !1371
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1369
  %61 = load i64, ptr %tmp185, align 8, !dbg !1370
  br label %if.end193, !dbg !1369

if.end193:                                        ; preds = %if.end184, %if.end139
  %62 = load i8, ptr %__ret_do_once, align 1, !dbg !1362, !range !893, !noundef !894
  %tobool195 = trunc i8 %62 to i1, !dbg !1362
  %lnot196 = xor i1 %tobool195, true, !dbg !1362
  %lnot198 = xor i1 %lnot196, true, !dbg !1362
  %lnot.ext199 = zext i1 %lnot198 to i32, !dbg !1362
  %conv200 = sext i32 %lnot.ext199 to i64, !dbg !1362
  %expval201 = call i64 @llvm.expect.i64(i64 %conv200, i64 0), !dbg !1362
  store i64 %expval201, ptr %tmp194, align 8, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !1385
  %63 = load i64, ptr %tmp194, align 8, !dbg !1362
  br label %return, !dbg !1386

return:                                           ; preds = %if.end193, %sw.epilog127, %cleanup
  ret void, !dbg !1386

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd(ptr noundef %c) #0 align 16 !dbg !1387 {
entry:
  %c.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1389, metadata !DIExpression()), !dbg !1396
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1397
  call void @early_init_amd(ptr noundef %0) #13, !dbg !1398
  %1 = load ptr, ptr %c.addr, align 8, !dbg !1399
  call void @clear_cpu_cap(ptr noundef %1, i32 noundef 31) #13, !dbg !1400
  %2 = load ptr, ptr %c.addr, align 8, !dbg !1401
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 0, !dbg !1403
  %x86 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1, !dbg !1403
  %4 = load i8, ptr %x86, align 1, !dbg !1403
  %conv = zext i8 %4 to i32, !dbg !1401
  %cmp = icmp sge i32 %conv, 16, !dbg !1404
  br i1 %cmp, label %if.then, label %if.end, !dbg !1405

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %c.addr, align 8, !dbg !1406
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 10, !dbg !1406
  %arraydecay = getelementptr inbounds [24 x i32], ptr %6, i64 0, i64 0, !dbg !1406
  call void @set_bit(i64 noundef 112, ptr noundef %arraydecay) #13, !dbg !1406
  br label %if.end, !dbg !1406

if.end:                                           ; preds = %if.then, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !1407

cond.true:                                        ; preds = %if.end
  br i1 true, label %if.then4, label %if.end6, !dbg !1408

cond.false:                                       ; preds = %if.end
  %7 = load ptr, ptr %c.addr, align 8, !dbg !1408
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 10, !dbg !1408
  %arraydecay2 = getelementptr inbounds [24 x i32], ptr %8, i64 0, i64 0, !dbg !1408
  %call = call zeroext i1 @arch_test_bit(i64 noundef 580, ptr noundef %arraydecay2) #13, !dbg !1408
  br i1 %call, label %if.then4, label %if.end6, !dbg !1407

if.then4:                                         ; preds = %cond.false, %cond.true
  %9 = load ptr, ptr %c.addr, align 8, !dbg !1410
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 10, !dbg !1410
  %arraydecay5 = getelementptr inbounds [24 x i32], ptr %10, i64 0, i64 0, !dbg !1410
  call void @set_bit(i64 noundef 395, ptr noundef %arraydecay5) #13, !dbg !1410
  br label %if.end6, !dbg !1410

if.end6:                                          ; preds = %if.then4, %cond.false, %cond.true
  %call7 = call i32 @read_apic_id() #13, !dbg !1411
  %conv8 = trunc i32 %call7 to i16, !dbg !1411
  %11 = load ptr, ptr %c.addr, align 8, !dbg !1412
  %apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 22, !dbg !1413
  store i16 %conv8, ptr %apicid, align 2, !dbg !1414
  %12 = load ptr, ptr %c.addr, align 8, !dbg !1415
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 0, !dbg !1417
  %x869 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1, !dbg !1417
  %14 = load i8, ptr %x869, align 1, !dbg !1417
  %conv10 = zext i8 %14 to i32, !dbg !1415
  %cmp11 = icmp slt i32 %conv10, 6, !dbg !1418
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !1419

if.then13:                                        ; preds = %if.end6
  %15 = load ptr, ptr %c.addr, align 8, !dbg !1420
  call void @clear_cpu_cap(ptr noundef %15, i32 noundef 7) #13, !dbg !1421
  br label %if.end14, !dbg !1421

if.end14:                                         ; preds = %if.then13, %if.end6
  %16 = load ptr, ptr %c.addr, align 8, !dbg !1422
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 0, !dbg !1423
  %x8615 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1, !dbg !1423
  %18 = load i8, ptr %x8615, align 1, !dbg !1423
  %conv16 = zext i8 %18 to i32, !dbg !1422
  switch i32 %conv16, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb17
    i32 6, label %sw.bb18
    i32 15, label %sw.bb19
    i32 16, label %sw.bb20
    i32 18, label %sw.bb21
    i32 21, label %sw.bb22
    i32 22, label %sw.bb23
    i32 23, label %sw.bb24
    i32 25, label %sw.bb25
  ], !dbg !1424

sw.bb:                                            ; preds = %if.end14
  %19 = load ptr, ptr %c.addr, align 8, !dbg !1425
  call void @init_amd_k5(ptr noundef %19) #13, !dbg !1427
  br label %sw.epilog, !dbg !1428

sw.bb17:                                          ; preds = %if.end14
  %20 = load ptr, ptr %c.addr, align 8, !dbg !1429
  call void @init_amd_k6(ptr noundef %20) #13, !dbg !1430
  br label %sw.epilog, !dbg !1431

sw.bb18:                                          ; preds = %if.end14
  %21 = load ptr, ptr %c.addr, align 8, !dbg !1432
  call void @init_amd_k7(ptr noundef %21) #13, !dbg !1433
  br label %sw.epilog, !dbg !1434

sw.bb19:                                          ; preds = %if.end14
  %22 = load ptr, ptr %c.addr, align 8, !dbg !1435
  call void @init_amd_k8(ptr noundef %22) #13, !dbg !1436
  br label %sw.epilog, !dbg !1437

sw.bb20:                                          ; preds = %if.end14
  %23 = load ptr, ptr %c.addr, align 8, !dbg !1438
  call void @init_amd_gh(ptr noundef %23) #13, !dbg !1439
  br label %sw.epilog, !dbg !1440

sw.bb21:                                          ; preds = %if.end14
  %24 = load ptr, ptr %c.addr, align 8, !dbg !1441
  call void @init_amd_ln(ptr noundef %24) #13, !dbg !1442
  br label %sw.epilog, !dbg !1443

sw.bb22:                                          ; preds = %if.end14
  %25 = load ptr, ptr %c.addr, align 8, !dbg !1444
  call void @init_amd_bd(ptr noundef %25) #13, !dbg !1445
  br label %sw.epilog, !dbg !1446

sw.bb23:                                          ; preds = %if.end14
  %26 = load ptr, ptr %c.addr, align 8, !dbg !1447
  call void @init_amd_jg(ptr noundef %26) #13, !dbg !1448
  br label %sw.epilog, !dbg !1449

sw.bb24:                                          ; preds = %if.end14
  %27 = load ptr, ptr %c.addr, align 8, !dbg !1450
  call void @init_spectral_chicken(ptr noundef %27) #13, !dbg !1451
  br label %sw.bb25, !dbg !1451

sw.bb25:                                          ; preds = %if.end14, %sw.bb24
  %28 = load ptr, ptr %c.addr, align 8, !dbg !1452
  call void @init_amd_zn(ptr noundef %28) #13, !dbg !1453
  br label %sw.epilog, !dbg !1454

sw.epilog:                                        ; preds = %if.end14, %sw.bb25, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb
  br i1 false, label %cond.true26, label %cond.false27, !dbg !1455

cond.true26:                                      ; preds = %sw.epilog
  br i1 true, label %if.then30, label %if.else, !dbg !1456

cond.false27:                                     ; preds = %sw.epilog
  %call28 = call zeroext i1 @arch_test_bit(i64 noundef 383, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1456
  br i1 %call28, label %if.then30, label %if.else, !dbg !1455

if.then30:                                        ; preds = %cond.false27, %cond.true26
  %29 = load ptr, ptr %c.addr, align 8, !dbg !1458
  call void @init_amd_zen1(ptr noundef %29) #13, !dbg !1459
  br label %if.end51, !dbg !1459

if.else:                                          ; preds = %cond.false27, %cond.true26
  br i1 false, label %cond.true31, label %cond.false32, !dbg !1460

cond.true31:                                      ; preds = %if.else
  br i1 true, label %if.then35, label %if.else36, !dbg !1461

cond.false32:                                     ; preds = %if.else
  %call33 = call zeroext i1 @arch_test_bit(i64 noundef 380, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1461
  br i1 %call33, label %if.then35, label %if.else36, !dbg !1460

if.then35:                                        ; preds = %cond.false32, %cond.true31
  %30 = load ptr, ptr %c.addr, align 8, !dbg !1463
  call void @init_amd_zen2(ptr noundef %30) #13, !dbg !1464
  br label %if.end50, !dbg !1464

if.else36:                                        ; preds = %cond.false32, %cond.true31
  br i1 false, label %cond.true37, label %cond.false38, !dbg !1465

cond.true37:                                      ; preds = %if.else36
  br i1 true, label %if.then41, label %if.else42, !dbg !1466

cond.false38:                                     ; preds = %if.else36
  %call39 = call zeroext i1 @arch_test_bit(i64 noundef 381, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1466
  br i1 %call39, label %if.then41, label %if.else42, !dbg !1465

if.then41:                                        ; preds = %cond.false38, %cond.true37
  %31 = load ptr, ptr %c.addr, align 8, !dbg !1468
  call void @init_amd_zen3(ptr noundef %31) #13, !dbg !1469
  br label %if.end49, !dbg !1469

if.else42:                                        ; preds = %cond.false38, %cond.true37
  br i1 false, label %cond.true43, label %cond.false44, !dbg !1470

cond.true43:                                      ; preds = %if.else42
  br i1 true, label %if.then47, label %if.end48, !dbg !1471

cond.false44:                                     ; preds = %if.else42
  %call45 = call zeroext i1 @arch_test_bit(i64 noundef 382, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1471
  br i1 %call45, label %if.then47, label %if.end48, !dbg !1470

if.then47:                                        ; preds = %cond.false44, %cond.true43
  %32 = load ptr, ptr %c.addr, align 8, !dbg !1473
  call void @init_amd_zen4(ptr noundef %32) #13, !dbg !1474
  br label %if.end48, !dbg !1474

if.end48:                                         ; preds = %if.then47, %cond.false44, %cond.true43
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then41
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then35
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then30
  %33 = load ptr, ptr %c.addr, align 8, !dbg !1475
  %34 = getelementptr inbounds %struct.cpuinfo_x86, ptr %33, i32 0, i32 0, !dbg !1477
  %x8652 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1, !dbg !1477
  %35 = load i8, ptr %x8652, align 1, !dbg !1477
  %conv53 = zext i8 %35 to i32, !dbg !1475
  %cmp54 = icmp sge i32 %conv53, 6, !dbg !1478
  br i1 %cmp54, label %land.lhs.true, label %if.end63, !dbg !1479

land.lhs.true:                                    ; preds = %if.end51
  br i1 false, label %cond.true56, label %cond.false57, !dbg !1480

cond.true56:                                      ; preds = %land.lhs.true
  br i1 true, label %if.end63, label %if.then61, !dbg !1481

cond.false57:                                     ; preds = %land.lhs.true
  %36 = load ptr, ptr %c.addr, align 8, !dbg !1481
  %37 = getelementptr inbounds %struct.cpuinfo_x86, ptr %36, i32 0, i32 10, !dbg !1481
  %arraydecay58 = getelementptr inbounds [24 x i32], ptr %37, i64 0, i64 0, !dbg !1481
  %call59 = call zeroext i1 @arch_test_bit(i64 noundef 418, ptr noundef %arraydecay58) #13, !dbg !1481
  br i1 %call59, label %if.end63, label %if.then61, !dbg !1480

if.then61:                                        ; preds = %cond.false57, %cond.true56
  %38 = load ptr, ptr %c.addr, align 8, !dbg !1482
  %39 = getelementptr inbounds %struct.cpuinfo_x86, ptr %38, i32 0, i32 10, !dbg !1482
  %arraydecay62 = getelementptr inbounds [24 x i32], ptr %39, i64 0, i64 0, !dbg !1482
  call void @set_bit(i64 noundef 710, ptr noundef %arraydecay62) #13, !dbg !1482
  br label %if.end63, !dbg !1482

if.end63:                                         ; preds = %if.then61, %cond.false57, %cond.true56, %if.end51
  %40 = load ptr, ptr %c.addr, align 8, !dbg !1483
  call void @cpu_detect_cache_sizes(ptr noundef %40) #13, !dbg !1484
  %41 = load ptr, ptr %c.addr, align 8, !dbg !1485
  call void @amd_detect_cmp(ptr noundef %41) #13, !dbg !1486
  %42 = load ptr, ptr %c.addr, align 8, !dbg !1487
  call void @amd_get_topology(ptr noundef %42) #13, !dbg !1488
  %43 = load ptr, ptr %c.addr, align 8, !dbg !1489
  call void @srat_detect_node(ptr noundef %43) #13, !dbg !1490
  %44 = load ptr, ptr %c.addr, align 8, !dbg !1491
  call void @init_amd_cacheinfo(ptr noundef %44) #13, !dbg !1492
  br i1 false, label %cond.true64, label %cond.false65, !dbg !1493

cond.true64:                                      ; preds = %if.end63
  br i1 true, label %if.end72, label %if.then69, !dbg !1494

cond.false65:                                     ; preds = %if.end63
  %45 = load ptr, ptr %c.addr, align 8, !dbg !1494
  %46 = getelementptr inbounds %struct.cpuinfo_x86, ptr %45, i32 0, i32 10, !dbg !1494
  %arraydecay66 = getelementptr inbounds [24 x i32], ptr %46, i64 0, i64 0, !dbg !1494
  %call67 = call zeroext i1 @arch_test_bit(i64 noundef 642, ptr noundef %arraydecay66) #13, !dbg !1494
  br i1 %call67, label %if.end72, label %if.then69, !dbg !1493

if.then69:                                        ; preds = %cond.false65, %cond.true64
  %call70 = call i32 @msr_set_bit(i32 noundef -1073672151, i8 noundef zeroext 1) #13, !dbg !1496
  %47 = load ptr, ptr %c.addr, align 8, !dbg !1498
  %48 = getelementptr inbounds %struct.cpuinfo_x86, ptr %47, i32 0, i32 10, !dbg !1498
  %arraydecay71 = getelementptr inbounds [24 x i32], ptr %48, i64 0, i64 0, !dbg !1498
  call void @set_bit(i64 noundef 642, ptr noundef %arraydecay71) #13, !dbg !1498
  br label %if.end72, !dbg !1499

if.end72:                                         ; preds = %if.then69, %cond.false65, %cond.true64
  %49 = load ptr, ptr %c.addr, align 8, !dbg !1500
  %50 = getelementptr inbounds %struct.cpuinfo_x86, ptr %49, i32 0, i32 0, !dbg !1502
  %x8673 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 1, !dbg !1502
  %51 = load i8, ptr %x8673, align 1, !dbg !1502
  %conv74 = zext i8 %51 to i32, !dbg !1500
  %cmp75 = icmp sgt i32 %conv74, 17, !dbg !1503
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !1504

if.then77:                                        ; preds = %if.end72
  %52 = load ptr, ptr %c.addr, align 8, !dbg !1505
  %53 = getelementptr inbounds %struct.cpuinfo_x86, ptr %52, i32 0, i32 10, !dbg !1505
  %arraydecay78 = getelementptr inbounds [24 x i32], ptr %53, i64 0, i64 0, !dbg !1505
  call void @set_bit(i64 noundef 450, ptr noundef %arraydecay78) #13, !dbg !1505
  br label %if.end79, !dbg !1505

if.end79:                                         ; preds = %if.then77, %if.end72
  br i1 false, label %cond.true80, label %cond.false81, !dbg !1506

cond.true80:                                      ; preds = %if.end79
  br i1 true, label %if.end99, label %if.then85, !dbg !1507

cond.false81:                                     ; preds = %if.end79
  %54 = load ptr, ptr %c.addr, align 8, !dbg !1507
  %55 = getelementptr inbounds %struct.cpuinfo_x86, ptr %54, i32 0, i32 10, !dbg !1507
  %arraydecay82 = getelementptr inbounds [24 x i32], ptr %55, i64 0, i64 0, !dbg !1507
  %call83 = call zeroext i1 @arch_test_bit(i64 noundef 200, ptr noundef %arraydecay82) #13, !dbg !1507
  br i1 %call83, label %if.end99, label %if.then85, !dbg !1506

if.then85:                                        ; preds = %cond.false81, %cond.true80
  br i1 false, label %cond.true86, label %cond.false87, !dbg !1509

cond.true86:                                      ; preds = %if.then85
  br i1 true, label %if.then96, label %lor.lhs.false, !dbg !1511

cond.false87:                                     ; preds = %if.then85
  %56 = load ptr, ptr %c.addr, align 8, !dbg !1511
  %57 = getelementptr inbounds %struct.cpuinfo_x86, ptr %56, i32 0, i32 10, !dbg !1511
  %arraydecay88 = getelementptr inbounds [24 x i32], ptr %57, i64 0, i64 0, !dbg !1511
  %call89 = call zeroext i1 @arch_test_bit(i64 noundef 63, ptr noundef %arraydecay88) #13, !dbg !1511
  br i1 %call89, label %if.then96, label %lor.lhs.false, !dbg !1509

lor.lhs.false:                                    ; preds = %cond.false87, %cond.true86
  br i1 true, label %cond.true91, label %cond.false92, !dbg !1512

cond.true91:                                      ; preds = %lor.lhs.false
  br i1 true, label %if.then96, label %if.end98, !dbg !1513

cond.false92:                                     ; preds = %lor.lhs.false
  %58 = load ptr, ptr %c.addr, align 8, !dbg !1513
  %59 = getelementptr inbounds %struct.cpuinfo_x86, ptr %58, i32 0, i32 10, !dbg !1513
  %arraydecay93 = getelementptr inbounds [24 x i32], ptr %59, i64 0, i64 0, !dbg !1513
  %call94 = call zeroext i1 @arch_test_bit(i64 noundef 61, ptr noundef %arraydecay93) #13, !dbg !1513
  br i1 %call94, label %if.then96, label %if.end98, !dbg !1512

if.then96:                                        ; preds = %cond.false92, %cond.true91, %cond.false87, %cond.true86
  %60 = load ptr, ptr %c.addr, align 8, !dbg !1514
  %61 = getelementptr inbounds %struct.cpuinfo_x86, ptr %60, i32 0, i32 10, !dbg !1514
  %arraydecay97 = getelementptr inbounds [24 x i32], ptr %61, i64 0, i64 0, !dbg !1514
  call void @set_bit(i64 noundef 200, ptr noundef %arraydecay97) #13, !dbg !1514
  br label %if.end98, !dbg !1514

if.end98:                                         ; preds = %if.then96, %cond.false92, %cond.true91
  br label %if.end99, !dbg !1513

if.end99:                                         ; preds = %if.end98, %cond.false81, %cond.true80
  %62 = load ptr, ptr %c.addr, align 8, !dbg !1515
  %63 = getelementptr inbounds %struct.cpuinfo_x86, ptr %62, i32 0, i32 10, !dbg !1515
  %arraydecay100 = getelementptr inbounds [24 x i32], ptr %63, i64 0, i64 0, !dbg !1515
  call void @set_bit(i64 noundef 712, ptr noundef %arraydecay100) #13, !dbg !1515
  br i1 false, label %cond.true101, label %cond.false102, !dbg !1517

cond.true101:                                     ; preds = %if.end99
  br i1 true, label %land.lhs.true106, label %if.end117, !dbg !1519

cond.false102:                                    ; preds = %if.end99
  %64 = load ptr, ptr %c.addr, align 8, !dbg !1519
  %65 = getelementptr inbounds %struct.cpuinfo_x86, ptr %64, i32 0, i32 10, !dbg !1519
  %arraydecay103 = getelementptr inbounds [24 x i32], ptr %65, i64 0, i64 0, !dbg !1519
  %call104 = call zeroext i1 @arch_test_bit(i64 noundef 417, ptr noundef %arraydecay103) #13, !dbg !1519
  br i1 %call104, label %land.lhs.true106, label %if.end117, !dbg !1517

land.lhs.true106:                                 ; preds = %cond.false102, %cond.true101
  br i1 false, label %cond.true107, label %cond.false108, !dbg !1520

cond.true107:                                     ; preds = %land.lhs.true106
  br i1 true, label %land.lhs.true111, label %if.end117, !dbg !1521

cond.false108:                                    ; preds = %land.lhs.true106
  %call109 = call zeroext i1 @arch_test_bit(i64 noundef 383, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1521
  br i1 %call109, label %land.lhs.true111, label %if.end117, !dbg !1520

land.lhs.true111:                                 ; preds = %cond.false108, %cond.true107
  %66 = load ptr, ptr %c.addr, align 8, !dbg !1522
  %67 = getelementptr inbounds %struct.cpuinfo_x86, ptr %66, i32 0, i32 0, !dbg !1523
  %x86_model = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 0, !dbg !1523
  %68 = load i8, ptr %x86_model, align 8, !dbg !1523
  %conv112 = zext i8 %68 to i32, !dbg !1522
  %cmp113 = icmp sgt i32 %conv112, 47, !dbg !1524
  br i1 %cmp113, label %if.then115, label %if.end117, !dbg !1525

if.then115:                                       ; preds = %land.lhs.true111
  %call116 = call i32 @msr_set_bit(i32 noundef -1073676267, i8 noundef zeroext 30) #13, !dbg !1526
  br label %if.end117, !dbg !1526

if.end117:                                        ; preds = %if.then115, %land.lhs.true111, %cond.false108, %cond.true107, %cond.false102, %cond.true101
  %69 = load ptr, ptr %c.addr, align 8, !dbg !1527
  call void @check_null_seg_clears_base(ptr noundef %69) #13, !dbg !1528
  %70 = load i32, ptr @spectre_v2_enabled, align 4, !dbg !1529
  %call118 = call zeroext i1 @spectre_v2_in_eibrs_mode(i32 noundef %70) #13, !dbg !1530
  br i1 %call118, label %land.lhs.true120, label %if.end155, !dbg !1531

land.lhs.true120:                                 ; preds = %if.end117
  br i1 false, label %cond.true121, label %cond.false122, !dbg !1532

cond.true121:                                     ; preds = %land.lhs.true120
  br i1 true, label %if.then126, label %if.end155, !dbg !1533

cond.false122:                                    ; preds = %land.lhs.true120
  %71 = load ptr, ptr %c.addr, align 8, !dbg !1533
  %72 = getelementptr inbounds %struct.cpuinfo_x86, ptr %71, i32 0, i32 10, !dbg !1533
  %arraydecay123 = getelementptr inbounds [24 x i32], ptr %72, i64 0, i64 0, !dbg !1533
  %call124 = call zeroext i1 @arch_test_bit(i64 noundef 648, ptr noundef %arraydecay123) #13, !dbg !1533
  br i1 %call124, label %if.then126, label %if.end155, !dbg !1532

if.then126:                                       ; preds = %cond.false122, %cond.true121
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1534
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1390, metadata !DIExpression()), !dbg !1534
  %call127 = call i32 @msr_set_bit(i32 noundef -1073741696, i8 noundef zeroext 21) #13, !dbg !1534
  %cmp128 = icmp slt i32 %call127, 0, !dbg !1534
  %lnot = xor i1 %cmp128, true, !dbg !1534
  %lnot130 = xor i1 %lnot, true, !dbg !1534
  %lnot.ext = zext i1 %lnot130 to i32, !dbg !1534
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1534
  %73 = load i32, ptr %__ret_warn_on, align 4, !dbg !1535
  %tobool = icmp ne i32 %73, 0, !dbg !1535
  %lnot131 = xor i1 %tobool, true, !dbg !1535
  %lnot133 = xor i1 %lnot131, true, !dbg !1535
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !1535
  %conv135 = sext i32 %lnot.ext134 to i64, !dbg !1535
  %expval = call i64 @llvm.expect.i64(i64 %conv135, i64 0), !dbg !1535
  %tobool136 = icmp ne i64 %expval, 0, !dbg !1535
  br i1 %tobool136, label %if.then137, label %if.end147, !dbg !1534

if.then137:                                       ; preds = %if.then126
  br label %do.body, !dbg !1535

do.body:                                          ; preds = %if.then137
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1393, metadata !DIExpression()), !dbg !1536
  store i32 2307, ptr %__flags, align 4, !dbg !1536
  br label %do.body138, !dbg !1536

do.body138:                                       ; preds = %do.body
  br label %do.cond, !dbg !1537

do.cond:                                          ; preds = %do.body138
  br label %do.end, !dbg !1537

do.end:                                           ; preds = %do.cond
  br label %do.body139, !dbg !1536

do.body139:                                       ; preds = %do.end
  %74 = load i32, ptr %__flags, align 4, !dbg !1539
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 1208, i32 %74, i64 12) #14, !dbg !1539, !srcloc !1541
  br label %do.cond140, !dbg !1539

do.cond140:                                       ; preds = %do.body139
  br label %do.end141, !dbg !1539

do.end141:                                        ; preds = %do.cond140
  br label %do.body142, !dbg !1536

do.body142:                                       ; preds = %do.end141
  br label %do.cond143, !dbg !1542

do.cond143:                                       ; preds = %do.body142
  br label %do.end144, !dbg !1542

do.end144:                                        ; preds = %do.cond143
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1535
  br label %do.cond145, !dbg !1536

do.cond145:                                       ; preds = %do.end144
  br label %do.end146, !dbg !1536

do.end146:                                        ; preds = %do.cond145
  br label %if.end147, !dbg !1536

if.end147:                                        ; preds = %do.end146, %if.then126
  %75 = load i32, ptr %__ret_warn_on, align 4, !dbg !1534
  %tobool148 = icmp ne i32 %75, 0, !dbg !1534
  %lnot149 = xor i1 %tobool148, true, !dbg !1534
  %lnot151 = xor i1 %lnot149, true, !dbg !1534
  %lnot.ext152 = zext i1 %lnot151 to i32, !dbg !1534
  %conv153 = sext i32 %lnot.ext152 to i64, !dbg !1534
  %expval154 = call i64 @llvm.expect.i64(i64 %conv153, i64 0), !dbg !1534
  store i64 %expval154, ptr %tmp, align 8, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1544
  %76 = load i64, ptr %tmp, align 8, !dbg !1534
  br label %if.end155, !dbg !1544

if.end155:                                        ; preds = %if.end147, %cond.false122, %cond.true121, %if.end117
  br i1 false, label %cond.true156, label %cond.false157, !dbg !1545

cond.true156:                                     ; preds = %if.end155
  br i1 true, label %if.end166, label %land.lhs.true161, !dbg !1547

cond.false157:                                    ; preds = %if.end155
  %77 = load ptr, ptr %c.addr, align 8, !dbg !1547
  %78 = getelementptr inbounds %struct.cpuinfo_x86, ptr %77, i32 0, i32 10, !dbg !1547
  %arraydecay158 = getelementptr inbounds [24 x i32], ptr %78, i64 0, i64 0, !dbg !1547
  %call159 = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef %arraydecay158) #13, !dbg !1547
  br i1 %call159, label %if.end166, label %land.lhs.true161, !dbg !1545

land.lhs.true161:                                 ; preds = %cond.false157, %cond.true156
  %79 = load ptr, ptr %c.addr, align 8, !dbg !1548
  %call162 = call zeroext i1 @cpu_has_amd_erratum(ptr noundef %79, ptr noundef @amd_erratum_1485) #13, !dbg !1549
  br i1 %call162, label %if.then164, label %if.end166, !dbg !1550

if.then164:                                       ; preds = %land.lhs.true161
  %call165 = call i32 @msr_set_bit(i32 noundef -1073672146, i8 noundef zeroext 5) #13, !dbg !1551
  br label %if.end166, !dbg !1551

if.end166:                                        ; preds = %if.then164, %land.lhs.true161, %cond.false157, %cond.true156
  %80 = load ptr, ptr %c.addr, align 8, !dbg !1552
  call void @clear_cpu_cap(ptr noundef %80, i32 noundef 379) #13, !dbg !1553
  ret void, !dbg !1554
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_detect_tlb_amd(ptr noundef %c) #0 align 16 !dbg !1555 {
entry:
  %c.addr = alloca ptr, align 8
  %ebx = alloca i32, align 4
  %eax = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %mask = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1557, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !1558, metadata !DIExpression()), !dbg !1565
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !1559, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !1560, metadata !DIExpression()), !dbg !1567
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !1561, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 2, ptr %mask) #14, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1562, metadata !DIExpression()), !dbg !1570
  store i16 4095, ptr %mask, align 2, !dbg !1570
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1571
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !1573
  %x86 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !1573
  %2 = load i8, ptr %x86, align 1, !dbg !1573
  %conv = zext i8 %2 to i32, !dbg !1571
  %cmp = icmp slt i32 %conv, 15, !dbg !1574
  br i1 %cmp, label %if.then, label %if.end, !dbg !1575

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1576

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %c.addr, align 8, !dbg !1577
  %extended_cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 8, !dbg !1579
  %4 = load i32, ptr %extended_cpuid_level, align 4, !dbg !1579
  %cmp2 = icmp ult i32 %4, -2147483642, !dbg !1580
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1581

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1582

if.end5:                                          ; preds = %if.end
  call void @cpuid(i32 noundef -2147483642, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !1583
  %5 = load i32, ptr %ebx, align 4, !dbg !1584
  %shr = lshr i32 %5, 16, !dbg !1585
  %6 = load i16, ptr %mask, align 2, !dbg !1586
  %conv6 = zext i16 %6 to i32, !dbg !1586
  %and = and i32 %shr, %conv6, !dbg !1587
  %conv7 = trunc i32 %and to i16, !dbg !1588
  store i16 %conv7, ptr @tlb_lld_4k, align 2, !dbg !1589
  %7 = load i32, ptr %ebx, align 4, !dbg !1590
  %8 = load i16, ptr %mask, align 2, !dbg !1591
  %conv8 = zext i16 %8 to i32, !dbg !1591
  %and9 = and i32 %7, %conv8, !dbg !1592
  %conv10 = trunc i32 %and9 to i16, !dbg !1590
  store i16 %conv10, ptr @tlb_lli_4k, align 2, !dbg !1593
  %9 = load ptr, ptr %c.addr, align 8, !dbg !1594
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !1596
  %x8611 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !1596
  %11 = load i8, ptr %x8611, align 1, !dbg !1596
  %conv12 = zext i8 %11 to i32, !dbg !1594
  %cmp13 = icmp eq i32 %conv12, 15, !dbg !1597
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1598

if.then15:                                        ; preds = %if.end5
  call void @cpuid(i32 noundef -2147483643, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !1599
  store i16 255, ptr %mask, align 2, !dbg !1601
  br label %if.end16, !dbg !1602

if.end16:                                         ; preds = %if.then15, %if.end5
  %12 = load i32, ptr %eax, align 4, !dbg !1603
  %shr17 = lshr i32 %12, 16, !dbg !1605
  %13 = load i16, ptr %mask, align 2, !dbg !1606
  %conv18 = zext i16 %13 to i32, !dbg !1606
  %and19 = and i32 %shr17, %conv18, !dbg !1607
  %tobool = icmp ne i32 %and19, 0, !dbg !1607
  br i1 %tobool, label %if.else, label %if.then20, !dbg !1608

if.then20:                                        ; preds = %if.end16
  %call = call i32 @cpuid_eax(i32 noundef -2147483643) #13, !dbg !1609
  %shr21 = lshr i32 %call, 16, !dbg !1610
  %and22 = and i32 %shr21, 255, !dbg !1611
  %conv23 = trunc i32 %and22 to i16, !dbg !1612
  store i16 %conv23, ptr @tlb_lld_2m, align 2, !dbg !1613
  br label %if.end28, !dbg !1614

if.else:                                          ; preds = %if.end16
  %14 = load i32, ptr %eax, align 4, !dbg !1615
  %shr24 = lshr i32 %14, 16, !dbg !1616
  %15 = load i16, ptr %mask, align 2, !dbg !1617
  %conv25 = zext i16 %15 to i32, !dbg !1617
  %and26 = and i32 %shr24, %conv25, !dbg !1618
  %conv27 = trunc i32 %and26 to i16, !dbg !1619
  store i16 %conv27, ptr @tlb_lld_2m, align 2, !dbg !1620
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then20
  %16 = load i16, ptr @tlb_lld_2m, align 2, !dbg !1621
  %conv29 = zext i16 %16 to i32, !dbg !1621
  %shr30 = ashr i32 %conv29, 1, !dbg !1622
  %conv31 = trunc i32 %shr30 to i16, !dbg !1621
  store i16 %conv31, ptr @tlb_lld_4m, align 2, !dbg !1623
  %17 = load i32, ptr %eax, align 4, !dbg !1624
  %18 = load i16, ptr %mask, align 2, !dbg !1626
  %conv32 = zext i16 %18 to i32, !dbg !1626
  %and33 = and i32 %17, %conv32, !dbg !1627
  %tobool34 = icmp ne i32 %and33, 0, !dbg !1627
  br i1 %tobool34, label %if.else48, label %if.then35, !dbg !1628

if.then35:                                        ; preds = %if.end28
  %19 = load ptr, ptr %c.addr, align 8, !dbg !1629
  %20 = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 0, !dbg !1632
  %x8636 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1, !dbg !1632
  %21 = load i8, ptr %x8636, align 1, !dbg !1632
  %conv37 = zext i8 %21 to i32, !dbg !1629
  %cmp38 = icmp eq i32 %conv37, 21, !dbg !1633
  br i1 %cmp38, label %land.lhs.true, label %if.else44, !dbg !1634

land.lhs.true:                                    ; preds = %if.then35
  %22 = load ptr, ptr %c.addr, align 8, !dbg !1635
  %23 = getelementptr inbounds %struct.cpuinfo_x86, ptr %22, i32 0, i32 0, !dbg !1636
  %x86_model = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 0, !dbg !1636
  %24 = load i8, ptr %x86_model, align 8, !dbg !1636
  %conv40 = zext i8 %24 to i32, !dbg !1635
  %cmp41 = icmp sle i32 %conv40, 31, !dbg !1637
  br i1 %cmp41, label %if.then43, label %if.else44, !dbg !1638

if.then43:                                        ; preds = %land.lhs.true
  store i16 1024, ptr @tlb_lli_2m, align 2, !dbg !1639
  br label %if.end47, !dbg !1641

if.else44:                                        ; preds = %land.lhs.true, %if.then35
  call void @cpuid(i32 noundef -2147483643, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !1642
  %25 = load i32, ptr %eax, align 4, !dbg !1644
  %and45 = and i32 %25, 255, !dbg !1645
  %conv46 = trunc i32 %and45 to i16, !dbg !1644
  store i16 %conv46, ptr @tlb_lli_2m, align 2, !dbg !1646
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then43
  br label %if.end52, !dbg !1647

if.else48:                                        ; preds = %if.end28
  %26 = load i32, ptr %eax, align 4, !dbg !1648
  %27 = load i16, ptr %mask, align 2, !dbg !1649
  %conv49 = zext i16 %27 to i32, !dbg !1649
  %and50 = and i32 %26, %conv49, !dbg !1650
  %conv51 = trunc i32 %and50 to i16, !dbg !1648
  store i16 %conv51, ptr @tlb_lli_2m, align 2, !dbg !1651
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %if.end47
  %28 = load i16, ptr @tlb_lli_2m, align 2, !dbg !1652
  %conv53 = zext i16 %28 to i32, !dbg !1652
  %shr54 = ashr i32 %conv53, 1, !dbg !1653
  %conv55 = trunc i32 %shr54 to i16, !dbg !1652
  store i16 %conv55, ptr @tlb_lli_4m, align 2, !dbg !1654
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1655
  br label %cleanup, !dbg !1655

cleanup:                                          ; preds = %if.end52, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %mask) #14, !dbg !1655
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !1655
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !1655
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !1655
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !1655
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1655

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_init_amd_mc(ptr noundef %c) #0 align 16 !dbg !1656 {
entry:
  %c.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %ecx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1658, metadata !DIExpression()), !dbg !1661
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #14, !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !1659, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !1660, metadata !DIExpression()), !dbg !1664
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1665
  %extended_cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 8, !dbg !1667
  %1 = load i32, ptr %extended_cpuid_level, align 4, !dbg !1667
  %cmp = icmp ult i32 %1, -2147483640, !dbg !1668
  br i1 %cmp, label %if.then, label %if.end, !dbg !1669

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1670

if.end:                                           ; preds = %entry
  %call = call i32 @cpuid_ecx(i32 noundef -2147483640) #13, !dbg !1671
  store i32 %call, ptr %ecx, align 4, !dbg !1672
  %2 = load i32, ptr %ecx, align 4, !dbg !1673
  %and = and i32 %2, 255, !dbg !1674
  %add = add i32 %and, 1, !dbg !1675
  %conv = trunc i32 %add to i16, !dbg !1676
  %3 = load ptr, ptr %c.addr, align 8, !dbg !1677
  %x86_max_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 21, !dbg !1678
  store i16 %conv, ptr %x86_max_cores, align 8, !dbg !1679
  %4 = load i32, ptr %ecx, align 4, !dbg !1680
  %shr = lshr i32 %4, 12, !dbg !1681
  %and1 = and i32 %shr, 15, !dbg !1682
  store i32 %and1, ptr %bits, align 4, !dbg !1683
  %5 = load i32, ptr %bits, align 4, !dbg !1684
  %cmp2 = icmp eq i32 %5, 0, !dbg !1686
  br i1 %cmp2, label %if.then4, label %if.end9, !dbg !1687

if.then4:                                         ; preds = %if.end
  br label %while.cond, !dbg !1688

while.cond:                                       ; preds = %while.body, %if.then4
  %6 = load i32, ptr %bits, align 4, !dbg !1690
  %shl = shl i32 1, %6, !dbg !1691
  %7 = load ptr, ptr %c.addr, align 8, !dbg !1692
  %x86_max_cores5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 21, !dbg !1693
  %8 = load i16, ptr %x86_max_cores5, align 8, !dbg !1693
  %conv6 = zext i16 %8 to i32, !dbg !1692
  %cmp7 = icmp slt i32 %shl, %conv6, !dbg !1694
  br i1 %cmp7, label %while.body, label %while.end, !dbg !1688

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %bits, align 4, !dbg !1695
  %inc = add i32 %9, 1, !dbg !1695
  store i32 %inc, ptr %bits, align 4, !dbg !1695
  br label %while.cond, !dbg !1688, !llvm.loop !1696

while.end:                                        ; preds = %while.cond
  br label %if.end9, !dbg !1699

if.end9:                                          ; preds = %while.end, %if.end
  %10 = load i32, ptr %bits, align 4, !dbg !1700
  %conv10 = trunc i32 %10 to i8, !dbg !1700
  %11 = load ptr, ptr %c.addr, align 8, !dbg !1701
  %x86_coreid_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 6, !dbg !1702
  store i8 %conv10, ptr %x86_coreid_bits, align 2, !dbg !1703
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1704
  br label %cleanup, !dbg !1704

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #14, !dbg !1704
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1704

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1705 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1711, metadata !DIExpression()), !dbg !1713
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1712, metadata !DIExpression()), !dbg !1714
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1715
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1716
  %div = sdiv i64 %1, 64, !dbg !1716
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1717
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !1718
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1719
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1720
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !1721
  ret void, !dbg !1722
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1723 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1727 dso_local i32 @msr_set_bit(i32 noundef, i8 noundef zeroext) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_has_amd_erratum(ptr noundef %cpu, ptr noundef %erratum) #0 align 16 !dbg !1730 {
entry:
  %retval = alloca i1, align 1
  %cpu.addr = alloca ptr, align 8
  %erratum.addr = alloca ptr, align 8
  %osvw_id = alloca i32, align 4
  %range = alloca i32, align 4
  %ms = alloca i32, align 4
  %osvw_len = alloca i64, align 8
  %osvw_bits = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cpu, ptr %cpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1735, metadata !DIExpression()), !dbg !1746
  store ptr %erratum, ptr %erratum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %erratum.addr, metadata !1736, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0(i64 4, ptr %osvw_id) #14, !dbg !1748
  call void @llvm.dbg.declare(metadata ptr %osvw_id, metadata !1737, metadata !DIExpression()), !dbg !1749
  %0 = load ptr, ptr %erratum.addr, align 8, !dbg !1750
  %incdec.ptr = getelementptr i32, ptr %0, i32 1, !dbg !1750
  store ptr %incdec.ptr, ptr %erratum.addr, align 8, !dbg !1750
  %1 = load i32, ptr %0, align 4, !dbg !1751
  store i32 %1, ptr %osvw_id, align 4, !dbg !1749
  call void @llvm.lifetime.start.p0(i64 4, ptr %range) #14, !dbg !1752
  call void @llvm.dbg.declare(metadata ptr %range, metadata !1738, metadata !DIExpression()), !dbg !1753
  call void @llvm.lifetime.start.p0(i64 4, ptr %ms) #14, !dbg !1754
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !1739, metadata !DIExpression()), !dbg !1755
  %2 = load i32, ptr %osvw_id, align 4, !dbg !1756
  %cmp = icmp sge i32 %2, 0, !dbg !1757
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !1758

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %osvw_id, align 4, !dbg !1759
  %cmp1 = icmp slt i32 %3, 65536, !dbg !1760
  br i1 %cmp1, label %land.lhs.true2, label %if.end9, !dbg !1761

land.lhs.true2:                                   ; preds = %land.lhs.true
  br i1 false, label %cond.true, label %cond.false, !dbg !1762

cond.true:                                        ; preds = %land.lhs.true2
  br i1 true, label %if.then, label %if.end9, !dbg !1763

cond.false:                                       ; preds = %land.lhs.true2
  %4 = load ptr, ptr %cpu.addr, align 8, !dbg !1763
  %5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 10, !dbg !1763
  %arraydecay = getelementptr inbounds [24 x i32], ptr %5, i64 0, i64 0, !dbg !1763
  %call = call zeroext i1 @arch_test_bit(i64 noundef 201, ptr noundef %arraydecay) #13, !dbg !1763
  br i1 %call, label %if.then, label %if.end9, !dbg !1762

if.then:                                          ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %osvw_len) #14, !dbg !1764
  call void @llvm.dbg.declare(metadata ptr %osvw_len, metadata !1740, metadata !DIExpression()), !dbg !1765
  %call3 = call i64 @native_read_msr(i32 noundef -1073675968) #13, !dbg !1766
  store i64 %call3, ptr %osvw_len, align 8, !dbg !1766
  %6 = load i32, ptr %osvw_id, align 4, !dbg !1767
  %conv = sext i32 %6 to i64, !dbg !1767
  %7 = load i64, ptr %osvw_len, align 8, !dbg !1768
  %cmp4 = icmp ult i64 %conv, %7, !dbg !1769
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !1770

if.then6:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %osvw_bits) #14, !dbg !1771
  call void @llvm.dbg.declare(metadata ptr %osvw_bits, metadata !1743, metadata !DIExpression()), !dbg !1772
  %8 = load i32, ptr %osvw_id, align 4, !dbg !1773
  %shr = ashr i32 %8, 6, !dbg !1773
  %add = add i32 -1073675967, %shr, !dbg !1773
  %call7 = call i64 @native_read_msr(i32 noundef %add) #13, !dbg !1773
  store i64 %call7, ptr %osvw_bits, align 8, !dbg !1773
  %9 = load i64, ptr %osvw_bits, align 8, !dbg !1774
  %10 = load i32, ptr %osvw_id, align 4, !dbg !1775
  %and = and i32 %10, 63, !dbg !1776
  %sh_prom = zext i32 %and to i64, !dbg !1777
  %shl = shl i64 1, %sh_prom, !dbg !1777
  %and8 = and i64 %9, %shl, !dbg !1778
  %tobool = icmp ne i64 %and8, 0, !dbg !1774
  store i1 %tobool, ptr %retval, align 1, !dbg !1779
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %osvw_bits) #14, !dbg !1780
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1781
  br label %cleanup, !dbg !1781

cleanup:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %osvw_len) #14, !dbg !1781
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9, !dbg !1782

if.end9:                                          ; preds = %cleanup.cont, %cond.false, %cond.true, %land.lhs.true, %entry
  %11 = load ptr, ptr %cpu.addr, align 8, !dbg !1783
  %12 = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 0, !dbg !1784
  %x86_model = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 0, !dbg !1784
  %13 = load i8, ptr %x86_model, align 8, !dbg !1784
  %conv10 = zext i8 %13 to i32, !dbg !1783
  %shl11 = shl i32 %conv10, 4, !dbg !1785
  %14 = load ptr, ptr %cpu.addr, align 8, !dbg !1786
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 1, !dbg !1787
  %15 = load i8, ptr %x86_stepping, align 4, !dbg !1787
  %conv12 = zext i8 %15 to i32, !dbg !1786
  %or = or i32 %shl11, %conv12, !dbg !1788
  store i32 %or, ptr %ms, align 4, !dbg !1789
  br label %while.cond, !dbg !1790

while.cond:                                       ; preds = %if.end30, %if.end9
  %16 = load ptr, ptr %erratum.addr, align 8, !dbg !1791
  %incdec.ptr13 = getelementptr i32, ptr %16, i32 1, !dbg !1791
  store ptr %incdec.ptr13, ptr %erratum.addr, align 8, !dbg !1791
  %17 = load i32, ptr %16, align 4, !dbg !1792
  store i32 %17, ptr %range, align 4, !dbg !1793
  %tobool14 = icmp ne i32 %17, 0, !dbg !1790
  br i1 %tobool14, label %while.body, label %while.end, !dbg !1790

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %cpu.addr, align 8, !dbg !1794
  %19 = getelementptr inbounds %struct.cpuinfo_x86, ptr %18, i32 0, i32 0, !dbg !1796
  %x86 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1, !dbg !1796
  %20 = load i8, ptr %x86, align 1, !dbg !1796
  %conv15 = zext i8 %20 to i32, !dbg !1794
  %21 = load i32, ptr %range, align 4, !dbg !1797
  %shr16 = lshr i32 %21, 24, !dbg !1797
  %and17 = and i32 %shr16, 255, !dbg !1797
  %cmp18 = icmp eq i32 %conv15, %and17, !dbg !1798
  br i1 %cmp18, label %land.lhs.true20, label %if.end30, !dbg !1799

land.lhs.true20:                                  ; preds = %while.body
  %22 = load i32, ptr %ms, align 4, !dbg !1800
  %23 = load i32, ptr %range, align 4, !dbg !1801
  %shr21 = lshr i32 %23, 12, !dbg !1801
  %and22 = and i32 %shr21, 4095, !dbg !1801
  %cmp23 = icmp uge i32 %22, %and22, !dbg !1802
  br i1 %cmp23, label %land.lhs.true25, label %if.end30, !dbg !1803

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %24 = load i32, ptr %ms, align 4, !dbg !1804
  %25 = load i32, ptr %range, align 4, !dbg !1805
  %and26 = and i32 %25, 4095, !dbg !1805
  %cmp27 = icmp ule i32 %24, %and26, !dbg !1806
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1807

if.then29:                                        ; preds = %land.lhs.true25
  store i1 true, ptr %retval, align 1, !dbg !1808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !1808

if.end30:                                         ; preds = %land.lhs.true25, %land.lhs.true20, %while.body
  br label %while.cond, !dbg !1790, !llvm.loop !1809

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %retval, align 1, !dbg !1811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !1811

cleanup31:                                        ; preds = %while.end, %if.then29, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ms) #14, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 4, ptr %range) #14, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 4, ptr %osvw_id) #14, !dbg !1812
  %26 = load i1, ptr %retval, align 1, !dbg !1812
  ret i1 %26, !dbg !1812
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_detect_mem_encrypt(ptr noundef %c) #0 align 16 !dbg !1813 {
entry:
  %c.addr = alloca ptr, align 8
  %msr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1815, metadata !DIExpression()), !dbg !1821
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #14, !dbg !1822
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !1816, metadata !DIExpression()), !dbg !1823
  br i1 false, label %cond.true, label %cond.false, !dbg !1824

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %lor.lhs.false, !dbg !1825

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1825
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !1825
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !1825
  %call = call zeroext i1 @arch_test_bit(i64 noundef 608, ptr noundef %arraydecay) #13, !dbg !1825
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !1824

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !1826

cond.true1:                                       ; preds = %lor.lhs.false
  br i1 true, label %if.then, label %if.end15, !dbg !1827

cond.false2:                                      ; preds = %lor.lhs.false
  %2 = load ptr, ptr %c.addr, align 8, !dbg !1827
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !1827
  %arraydecay3 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !1827
  %call4 = call zeroext i1 @arch_test_bit(i64 noundef 609, ptr noundef %arraydecay3) #13, !dbg !1827
  br i1 %call4, label %if.then, label %if.end15, !dbg !1826

if.then:                                          ; preds = %cond.false2, %cond.true1, %cond.false, %cond.true
  %call5 = call i64 @native_read_msr(i32 noundef -1073676272) #13, !dbg !1828
  store i64 %call5, ptr %msr, align 8, !dbg !1828
  %4 = load i64, ptr %msr, align 8, !dbg !1829
  %and = and i64 %4, 8388608, !dbg !1831
  %tobool = icmp ne i64 %and, 0, !dbg !1831
  br i1 %tobool, label %if.end, label %if.then6, !dbg !1832

if.then6:                                         ; preds = %if.then
  br label %clear_all, !dbg !1833

if.end:                                           ; preds = %if.then
  %call7 = call i32 @cpuid_ebx(i32 noundef -2147483617) #13, !dbg !1834
  %shr = lshr i32 %call7, 6, !dbg !1835
  %and8 = and i32 %shr, 63, !dbg !1836
  %5 = load ptr, ptr %c.addr, align 8, !dbg !1837
  %x86_phys_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 5, !dbg !1838
  %6 = load i8, ptr %x86_phys_bits, align 1, !dbg !1839
  %conv = zext i8 %6 to i32, !dbg !1839
  %sub = sub i32 %conv, %and8, !dbg !1839
  %conv9 = trunc i32 %sub to i8, !dbg !1839
  store i8 %conv9, ptr %x86_phys_bits, align 1, !dbg !1839
  call void @setup_clear_cpu_cap(i32 noundef 608) #13, !dbg !1840
  %call10 = call i64 @native_read_msr(i32 noundef -1073676267) #13, !dbg !1842
  store i64 %call10, ptr %msr, align 8, !dbg !1842
  %7 = load i64, ptr %msr, align 8, !dbg !1843
  %and11 = and i64 %7, 1, !dbg !1845
  %tobool12 = icmp ne i64 %and11, 0, !dbg !1845
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1846

if.then13:                                        ; preds = %if.end
  br label %clear_sev, !dbg !1847

if.end14:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1848

clear_all:                                        ; preds = %if.then6
  call void @llvm.dbg.label(metadata !1817), !dbg !1849
  call void @setup_clear_cpu_cap(i32 noundef 608) #13, !dbg !1850
  br label %clear_sev, !dbg !1850

clear_sev:                                        ; preds = %clear_all, %if.then13
  call void @llvm.dbg.label(metadata !1820), !dbg !1851
  call void @setup_clear_cpu_cap(i32 noundef 609) #13, !dbg !1852
  call void @setup_clear_cpu_cap(i32 noundef 611) #13, !dbg !1853
  br label %if.end15, !dbg !1854

if.end15:                                         ; preds = %clear_sev, %cond.false2, %cond.true1
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1855
  br label %cleanup, !dbg !1855

cleanup:                                          ; preds = %if.end15, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #14, !dbg !1855
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1855

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #5 align 16 !dbg !1856 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1860, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !1863
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1861, metadata !DIExpression()), !dbg !1864
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1865
  %call = call i64 @__rdmsr(i32 noundef %0) #13, !dbg !1866
  store i64 %call, ptr %val, align 8, !dbg !1867
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #13, !dbg !1868
  br i1 %call1, label %if.then, label %if.end, !dbg !1870

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !1871
  %2 = load i64, ptr %val, align 8, !dbg !1872
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #13, !dbg !1873
  br label %if.end, !dbg !1873

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !1875
  ret i64 %3, !dbg !1876
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1877 dso_local i32 @_printk(ptr noundef, ...) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_ebx(i32 noundef %op) #5 align 16 !dbg !1881 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1886, metadata !DIExpression()), !dbg !1891
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !1887, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !1888, metadata !DIExpression()), !dbg !1894
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !1889, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !1890, metadata !DIExpression()), !dbg !1896
  %0 = load i32, ptr %op.addr, align 4, !dbg !1897
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !1898
  %1 = load i32, ptr %ebx, align 4, !dbg !1899
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !1900
  ret i32 %1, !dbg !1901
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_ecx(i32 noundef %op) #5 align 16 !dbg !1902 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1904, metadata !DIExpression()), !dbg !1909
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !1905, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !1906, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !1907, metadata !DIExpression()), !dbg !1913
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !1908, metadata !DIExpression()), !dbg !1914
  %0 = load i32, ptr %op.addr, align 4, !dbg !1915
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !1916
  %1 = load i32, ptr %ecx, align 4, !dbg !1917
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !1918
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !1918
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !1918
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !1918
  ret i32 %1, !dbg !1919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #5 align 16 !dbg !1920 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1925, metadata !DIExpression()), !dbg !1930
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !1926, metadata !DIExpression()), !dbg !1931
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !1927, metadata !DIExpression()), !dbg !1932
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !1928, metadata !DIExpression()), !dbg !1933
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !1929, metadata !DIExpression()), !dbg !1934
  %0 = load i32, ptr %op.addr, align 4, !dbg !1935
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !1936
  store i32 %0, ptr %1, align 4, !dbg !1937
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !1938
  store i32 0, ptr %2, align 4, !dbg !1939
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !1940
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !1941
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !1942
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !1943
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !dbg !1944
  ret void, !dbg !1945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #5 align 16 !dbg !1946 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !1950, metadata !DIExpression()), !dbg !1954
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !1951, metadata !DIExpression()), !dbg !1955
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !1952, metadata !DIExpression()), !dbg !1956
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !1953, metadata !DIExpression()), !dbg !1957
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !1958
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !1959
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !1960
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !1961
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !1962
  %5 = load i32, ptr %4, align 4, !dbg !1963
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !1964
  %7 = load i32, ptr %6, align 4, !dbg !1965
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #14, !dbg !1966, !srcloc !1967
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !1966
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !1966
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !1966
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !1966
  store i32 %asmresult, ptr %0, align 4, !dbg !1966
  store i32 %asmresult1, ptr %1, align 4, !dbg !1966
  store i32 %asmresult2, ptr %2, align 4, !dbg !1966
  store i32 %asmresult3, ptr %3, align 4, !dbg !1966
  ret void, !dbg !1968
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1969 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1981, metadata !DIExpression()), !dbg !1983
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1982, metadata !DIExpression()), !dbg !1984
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1985
  %1 = load i64, ptr %size.addr, align 8, !dbg !1986
  %conv = trunc i64 %1 to i32, !dbg !1986
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !1987
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1988
  %3 = load i64, ptr %size.addr, align 8, !dbg !1988
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !1988
  ret void, !dbg !1989
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1990 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1992, metadata !DIExpression()), !dbg !1994
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1993, metadata !DIExpression()), !dbg !1995
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1996
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1998
  br i1 %1, label %if.then, label %if.else, !dbg !1999

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2000
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2000
  %shr = ashr i64 %3, 3, !dbg !2000
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2000
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2002
  %and = and i64 %4, 7, !dbg !2002
  %sh_prom = trunc i64 %and to i32, !dbg !2002
  %shl = shl i32 1, %sh_prom, !dbg !2002
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #14, !dbg !2003, !srcloc !2004
  br label %if.end, !dbg !2005

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2006
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2008
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #14, !dbg !2009, !srcloc !2010
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2011
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !2012 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2017, metadata !DIExpression()), !dbg !2019
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2018, metadata !DIExpression()), !dbg !2020
  ret i1 true, !dbg !2021
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !2022 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2027, metadata !DIExpression()), !dbg !2030
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2028, metadata !DIExpression()), !dbg !2031
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2029, metadata !DIExpression()), !dbg !2032
  ret void, !dbg !2033
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2034 dso_local void @setup_clear_cpu_cap(i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #4 align 16 !dbg !2037 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !2039, metadata !DIExpression()), !dbg !2042
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2040, metadata !DIExpression()), !dbg !2043
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2041, metadata !DIExpression()), !dbg !2043
  %0 = load i32, ptr %msr.addr, align 4, !dbg !2044
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !2045, !srcloc !2046
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !2045
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !2045
  store i64 %asmresult, ptr %low, align 8, !dbg !2045
  store i64 %asmresult1, ptr %high, align 8, !dbg !2045
  %2 = load i64, ptr %low, align 8, !dbg !2047
  %3 = load i64, ptr %high, align 8, !dbg !2047
  %shl = shl i64 %3, 32, !dbg !2047
  %or = or i64 %2, %shl, !dbg !2047
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !2048
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !2048
  ret i64 %or, !dbg !2049
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_edx(i32 noundef %op) #5 align 16 !dbg !2050 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2052, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !2053, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !2054, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !2055, metadata !DIExpression()), !dbg !2061
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !2056, metadata !DIExpression()), !dbg !2062
  %0 = load i32, ptr %op.addr, align 4, !dbg !2063
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !2064
  %1 = load i32, ptr %edx, align 4, !dbg !2065
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !2066
  ret i32 %1, !dbg !2067
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2068 dso_local i32 @get_random_u32() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2070 dso_local void @use_mwaitx_delay() #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resctrl_cpu_detect(ptr noundef %c) #5 align 16 !dbg !2072 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2075, metadata !DIExpression()), !dbg !2076
  ret void, !dbg !2077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2078 dso_local void @__warn_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2082 dso_local void @clear_cpu_cap(ptr noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_apic_id() #5 align 16 !dbg !2085 {
entry:
  %reg = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #14, !dbg !2090
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !2089, metadata !DIExpression()), !dbg !2091
  %call = call i32 @apic_read(i32 noundef 32) #13, !dbg !2092
  store i32 %call, ptr %reg, align 4, !dbg !2091
  %0 = load ptr, ptr @apic, align 8, !dbg !2093
  %get_apic_id = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 26, !dbg !2094
  %1 = load ptr, ptr %get_apic_id, align 8, !dbg !2094
  %2 = load i32, ptr %reg, align 4, !dbg !2095
  %conv = zext i32 %2 to i64, !dbg !2095
  %call1 = call i32 %1(i64 noundef %conv) #13, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #14, !dbg !2096
  ret i32 %call1, !dbg !2097
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_k5(ptr noundef %c) #0 align 16 !dbg !2098 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2100, metadata !DIExpression()), !dbg !2101
  ret void, !dbg !2102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_k6(ptr noundef %c) #0 align 16 !dbg !2103 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2105, metadata !DIExpression()), !dbg !2106
  ret void, !dbg !2107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_k7(ptr noundef %c) #0 align 16 !dbg !2108 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2110, metadata !DIExpression()), !dbg !2111
  ret void, !dbg !2112
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_k8(ptr noundef %c) #0 align 16 !dbg !2113 {
entry:
  %c.addr = alloca ptr, align 8
  %level = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #14, !dbg !2119
  call void @llvm.dbg.declare(metadata ptr %level, metadata !2116, metadata !DIExpression()), !dbg !2120
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #14, !dbg !2121
  call void @llvm.dbg.declare(metadata ptr %value, metadata !2117, metadata !DIExpression()), !dbg !2122
  %call = call i32 @cpuid_eax(i32 noundef 1) #13, !dbg !2123
  store i32 %call, ptr %level, align 4, !dbg !2124
  %0 = load i32, ptr %level, align 4, !dbg !2125
  %cmp = icmp uge i32 %0, 3912, !dbg !2127
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2128

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %level, align 4, !dbg !2129
  %cmp1 = icmp ult i32 %1, 3920, !dbg !2130
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !2131

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %level, align 4, !dbg !2132
  %cmp2 = icmp uge i32 %2, 3928, !dbg !2133
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2134

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load ptr, ptr %c.addr, align 8, !dbg !2135
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 10, !dbg !2135
  %arraydecay = getelementptr inbounds [24 x i32], ptr %4, i64 0, i64 0, !dbg !2135
  call void @set_bit(i64 noundef 112, ptr noundef %arraydecay) #13, !dbg !2135
  br label %if.end, !dbg !2135

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load ptr, ptr %c.addr, align 8, !dbg !2136
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 0, !dbg !2138
  %x86_model = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 0, !dbg !2138
  %7 = load i8, ptr %x86_model, align 8, !dbg !2138
  %conv = zext i8 %7 to i32, !dbg !2136
  %cmp3 = icmp slt i32 %conv, 20, !dbg !2139
  br i1 %cmp3, label %land.lhs.true5, label %if.end14, !dbg !2140

land.lhs.true5:                                   ; preds = %if.end
  br i1 false, label %cond.true, label %cond.false, !dbg !2141

cond.true:                                        ; preds = %land.lhs.true5
  br i1 true, label %if.then9, label %if.end14, !dbg !2142

cond.false:                                       ; preds = %land.lhs.true5
  %8 = load ptr, ptr %c.addr, align 8, !dbg !2142
  %9 = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 10, !dbg !2142
  %arraydecay6 = getelementptr inbounds [24 x i32], ptr %9, i64 0, i64 0, !dbg !2142
  %call7 = call zeroext i1 @arch_test_bit(i64 noundef 192, ptr noundef %arraydecay6) #13, !dbg !2142
  br i1 %call7, label %if.then9, label %if.end14, !dbg !2141

if.then9:                                         ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %c.addr, align 8, !dbg !2143
  call void @clear_cpu_cap(ptr noundef %10, i32 noundef 192) #13, !dbg !2145
  %call10 = call i32 @rdmsrl_amd_safe(i32 noundef -1073672179, ptr noundef %value) #13, !dbg !2146
  %tobool = icmp ne i32 %call10, 0, !dbg !2146
  br i1 %tobool, label %if.end13, label %if.then11, !dbg !2148

if.then11:                                        ; preds = %if.then9
  %11 = load i64, ptr %value, align 8, !dbg !2149
  %and = and i64 %11, -4294967297, !dbg !2149
  store i64 %and, ptr %value, align 8, !dbg !2149
  %12 = load i64, ptr %value, align 8, !dbg !2151
  %call12 = call i32 @wrmsrl_amd_safe(i32 noundef -1073672179, i64 noundef %12) #13, !dbg !2152
  br label %if.end13, !dbg !2153

if.end13:                                         ; preds = %if.then11, %if.then9
  br label %if.end14, !dbg !2154

if.end14:                                         ; preds = %if.end13, %cond.false, %cond.true, %if.end
  %13 = load ptr, ptr %c.addr, align 8, !dbg !2155
  %x86_model_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 12, !dbg !2157
  %arrayidx = getelementptr [64 x i8], ptr %x86_model_id, i64 0, i64 0, !dbg !2155
  %14 = load i8, ptr %arrayidx, align 8, !dbg !2155
  %tobool15 = icmp ne i8 %14, 0, !dbg !2155
  br i1 %tobool15, label %if.end20, label %if.then16, !dbg !2158

if.then16:                                        ; preds = %if.end14
  %15 = load ptr, ptr %c.addr, align 8, !dbg !2159
  %x86_model_id17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 12, !dbg !2160
  %arraydecay18 = getelementptr inbounds [64 x i8], ptr %x86_model_id17, i64 0, i64 0, !dbg !2159
  %call19 = call ptr @strcpy(ptr noundef %arraydecay18, ptr noundef @.str.8) #13, !dbg !2161
  br label %if.end20, !dbg !2161

if.end20:                                         ; preds = %if.then16, %if.end14
  %call21 = call i32 @msr_set_bit(i32 noundef -1073676267, i8 noundef zeroext 6) #13, !dbg !2162
  %16 = load ptr, ptr %c.addr, align 8, !dbg !2163
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 10, !dbg !2163
  %arraydecay22 = getelementptr inbounds [24 x i32], ptr %17, i64 0, i64 0, !dbg !2163
  call void @set_bit(i64 noundef 715, ptr noundef %arraydecay22) #13, !dbg !2163
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #14, !dbg !2164
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #14, !dbg !2164
  ret void, !dbg !2164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_gh(ptr noundef %c) #0 align 16 !dbg !2165 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2167, metadata !DIExpression()), !dbg !2168
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2169
  %cmp = icmp eq ptr %0, @boot_cpu_data, !dbg !2171
  br i1 %cmp, label %if.then, label %if.end, !dbg !2172

if.then:                                          ; preds = %entry
  call void @check_enable_amd_mmconf_dmi() #13, !dbg !2173
  br label %if.end, !dbg !2173

if.end:                                           ; preds = %if.then, %entry
  call void @fam10h_check_enable_mmcfg() #13, !dbg !2174
  %call = call i32 @msr_set_bit(i32 noundef -1073676216, i8 noundef zeroext 10) #13, !dbg !2175
  %call1 = call i32 @msr_clear_bit(i32 noundef -1073672150, i8 noundef zeroext 24) #13, !dbg !2176
  %1 = load ptr, ptr %c.addr, align 8, !dbg !2177
  %call2 = call zeroext i1 @cpu_has_amd_erratum(ptr noundef %1, ptr noundef @amd_erratum_383) #13, !dbg !2179
  br i1 %call2, label %if.then3, label %if.end4, !dbg !2180

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %c.addr, align 8, !dbg !2181
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !2181
  %arraydecay = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !2181
  call void @set_bit(i64 noundef 707, ptr noundef %arraydecay) #13, !dbg !2181
  br label %if.end4, !dbg !2181

if.end4:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !2182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_ln(ptr noundef %c) #0 align 16 !dbg !2183 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %call = call i32 @msr_set_bit(i32 noundef -1073672151, i8 noundef zeroext 31) #13, !dbg !2187
  ret void, !dbg !2188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_bd(ptr noundef %c) #0 align 16 !dbg !2189 {
entry:
  %c.addr = alloca ptr, align 8
  %value = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2191, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #14, !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %value, metadata !2192, metadata !DIExpression()), !dbg !2195
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2196
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !2198
  %x86_model = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !2198
  %2 = load i8, ptr %x86_model, align 8, !dbg !2198
  %conv = zext i8 %2 to i32, !dbg !2196
  %cmp = icmp sge i32 %conv, 2, !dbg !2199
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !2200

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %c.addr, align 8, !dbg !2201
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !2202
  %x86_model2 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !2202
  %5 = load i8, ptr %x86_model2, align 8, !dbg !2202
  %conv3 = zext i8 %5 to i32, !dbg !2201
  %cmp4 = icmp slt i32 %conv3, 32, !dbg !2203
  br i1 %cmp4, label %if.then, label %if.end10, !dbg !2204

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @rdmsrl_safe(i32 noundef -1073672159, ptr noundef %value) #13, !dbg !2205
  %tobool = icmp ne i32 %call, 0, !dbg !2205
  br i1 %tobool, label %if.end, label %land.lhs.true6, !dbg !2208

land.lhs.true6:                                   ; preds = %if.then
  %6 = load i64, ptr %value, align 8, !dbg !2209
  %and = and i64 %6, 30, !dbg !2210
  %tobool7 = icmp ne i64 %and, 0, !dbg !2210
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !2211

if.then8:                                         ; preds = %land.lhs.true6
  %7 = load i64, ptr %value, align 8, !dbg !2212
  %or = or i64 %7, 30, !dbg !2212
  store i64 %or, ptr %value, align 8, !dbg !2212
  %8 = load i64, ptr %value, align 8, !dbg !2214
  %call9 = call i32 @wrmsrl_safe(i32 noundef -1073672159, i64 noundef %8) #13, !dbg !2215
  br label %if.end, !dbg !2216

if.end:                                           ; preds = %if.then8, %land.lhs.true6, %if.then
  br label %if.end10, !dbg !2217

if.end10:                                         ; preds = %if.end, %land.lhs.true, %entry
  %9 = load ptr, ptr %c.addr, align 8, !dbg !2218
  call void @clear_rdrand_cpuid_bit(ptr noundef %9) #13, !dbg !2219
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #14, !dbg !2220
  ret void, !dbg !2220
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_jg(ptr noundef %c) #0 align 16 !dbg !2221 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2223, metadata !DIExpression()), !dbg !2224
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2225
  call void @clear_rdrand_cpuid_bit(ptr noundef %0) #13, !dbg !2226
  ret void, !dbg !2227
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_zn(ptr noundef %c) #0 align 16 !dbg !2228 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %do.body, !dbg !2232

do.body:                                          ; preds = %entry
  call void @set_bit(i64 noundef 252, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !2233
  call void @set_bit(i64 noundef 252, ptr noundef @cpu_caps_set) #13, !dbg !2233
  br label %do.end, !dbg !2233

do.end:                                           ; preds = %do.body
  store i32 32, ptr @node_reclaim_distance, align 4, !dbg !2235
  ret void, !dbg !2236
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_zen1(ptr noundef %c) #0 align 16 !dbg !419 {
entry:
  %c.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  %tmp40 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !421, metadata !DIExpression()), !dbg !2237
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2238
  call void @fix_erratum_1386(ptr noundef %0) #13, !dbg !2239
  br i1 false, label %cond.true, label %cond.false, !dbg !2240

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end16, label %if.then, !dbg !2241

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %c.addr, align 8, !dbg !2241
  %2 = getelementptr inbounds %struct.cpuinfo_x86, ptr %1, i32 0, i32 10, !dbg !2241
  %arraydecay = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 0, !dbg !2241
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef %arraydecay) #13, !dbg !2241
  br i1 %call, label %if.end16, label %if.then, !dbg !2240

if.then:                                          ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !2243

cond.true1:                                       ; preds = %if.then
  br i1 true, label %if.end, label %if.then5, !dbg !2245

cond.false2:                                      ; preds = %if.then
  %3 = load ptr, ptr %c.addr, align 8, !dbg !2245
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 10, !dbg !2245
  %arraydecay3 = getelementptr inbounds [24 x i32], ptr %4, i64 0, i64 0, !dbg !2245
  %call4 = call zeroext i1 @arch_test_bit(i64 noundef 226, ptr noundef %arraydecay3) #13, !dbg !2245
  br i1 %call4, label %if.end, label %if.then5, !dbg !2243

if.then5:                                         ; preds = %cond.false2, %cond.true1
  %5 = load ptr, ptr %c.addr, align 8, !dbg !2247
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 10, !dbg !2247
  %arraydecay6 = getelementptr inbounds [24 x i32], ptr %6, i64 0, i64 0, !dbg !2247
  call void @set_bit(i64 noundef 226, ptr noundef %arraydecay6) #13, !dbg !2247
  br label %if.end, !dbg !2247

if.end:                                           ; preds = %if.then5, %cond.false2, %cond.true1
  %7 = load ptr, ptr %c.addr, align 8, !dbg !2248
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 0, !dbg !2250
  %x86 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !2250
  %9 = load i8, ptr %x86, align 1, !dbg !2250
  %conv = zext i8 %9 to i32, !dbg !2248
  %cmp = icmp eq i32 %conv, 25, !dbg !2251
  br i1 %cmp, label %land.lhs.true, label %if.end15, !dbg !2252

land.lhs.true:                                    ; preds = %if.end
  br i1 false, label %cond.true8, label %cond.false9, !dbg !2253

cond.true8:                                       ; preds = %land.lhs.true
  br i1 true, label %if.end15, label %if.then13, !dbg !2254

cond.false9:                                      ; preds = %land.lhs.true
  %10 = load ptr, ptr %c.addr, align 8, !dbg !2254
  %11 = getelementptr inbounds %struct.cpuinfo_x86, ptr %10, i32 0, i32 10, !dbg !2254
  %arraydecay10 = getelementptr inbounds [24 x i32], ptr %11, i64 0, i64 0, !dbg !2254
  %call11 = call zeroext i1 @arch_test_bit(i64 noundef 445, ptr noundef %arraydecay10) #13, !dbg !2254
  br i1 %call11, label %if.end15, label %if.then13, !dbg !2253

if.then13:                                        ; preds = %cond.false9, %cond.true8
  %12 = load ptr, ptr %c.addr, align 8, !dbg !2255
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 10, !dbg !2255
  %arraydecay14 = getelementptr inbounds [24 x i32], ptr %13, i64 0, i64 0, !dbg !2255
  call void @set_bit(i64 noundef 445, ptr noundef %arraydecay14) #13, !dbg !2255
  br label %if.end15, !dbg !2255

if.end15:                                         ; preds = %if.then13, %cond.false9, %cond.true8, %if.end
  br label %if.end16, !dbg !2256

if.end16:                                         ; preds = %if.end15, %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !422, metadata !DIExpression()), !dbg !2257
  store i8 1, ptr %__ret_do_once, align 1, !dbg !2257
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !424, metadata !DIExpression()), !dbg !2258
  %14 = load i8, ptr %__ret_do_once, align 1, !dbg !2258, !range !893, !noundef !894
  %tobool = trunc i8 %14 to i1, !dbg !2258
  %lnot = xor i1 %tobool, true, !dbg !2258
  %lnot17 = xor i1 %lnot, true, !dbg !2258
  %frombool = zext i1 %lnot17 to i8, !dbg !2258
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !2258
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !427, metadata !DIExpression()), !dbg !2258
  store i8 0, ptr %__ret_once, align 1, !dbg !2258
  %15 = load i8, ptr %__ret_cond, align 1, !dbg !2259, !range !893, !noundef !894
  %tobool18 = trunc i8 %15 to i1, !dbg !2259
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !2259

land.rhs:                                         ; preds = %if.end16
  %16 = load i8, ptr @init_amd_zen1.__already_done, align 1, !dbg !2259, !range !893, !noundef !894
  %tobool20 = trunc i8 %16 to i1, !dbg !2259
  %lnot21 = xor i1 %tobool20, true, !dbg !2259
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end16
  %17 = phi i1 [ false, %if.end16 ], [ %lnot21, %land.rhs ], !dbg !2261
  %lnot22 = xor i1 %17, true, !dbg !2259
  %lnot23 = xor i1 %lnot22, true, !dbg !2259
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !2259
  %conv24 = sext i32 %lnot.ext to i64, !dbg !2259
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2259
  %tobool25 = icmp ne i64 %expval, 0, !dbg !2259
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2258

if.then26:                                        ; preds = %land.end
  store i8 1, ptr @init_amd_zen1.__already_done, align 1, !dbg !2262
  store i8 1, ptr %__ret_once, align 1, !dbg !2262
  br label %if.end27, !dbg !2262

if.end27:                                         ; preds = %if.then26, %land.end
  %18 = load i8, ptr %__ret_once, align 1, !dbg !2258, !range !893, !noundef !894
  %tobool28 = trunc i8 %18 to i1, !dbg !2258
  %lnot29 = xor i1 %tobool28, true, !dbg !2258
  %lnot31 = xor i1 %lnot29, true, !dbg !2258
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !2258
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !2258
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !2258
  store i64 %expval34, ptr %tmp, align 8, !dbg !2259
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !2264
  %19 = load i64, ptr %tmp, align 8, !dbg !2258
  %tobool35 = icmp ne i64 %19, 0, !dbg !2264
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !2257

if.then36:                                        ; preds = %if.end27
  br label %do.body, !dbg !2265

do.body:                                          ; preds = %if.then36
  br label %do.cond, !dbg !2267

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2267

do.end:                                           ; preds = %do.cond
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #16, !dbg !2265
  store i32 %call38, ptr %tmp37, align 4, !dbg !2267
  %20 = load i32, ptr %tmp37, align 4, !dbg !2265
  br label %if.end39, !dbg !2264

if.end39:                                         ; preds = %do.end, %if.end27
  %21 = load i8, ptr %__ret_do_once, align 1, !dbg !2257, !range !893, !noundef !894
  %tobool41 = trunc i8 %21 to i1, !dbg !2257
  %lnot42 = xor i1 %tobool41, true, !dbg !2257
  %lnot44 = xor i1 %lnot42, true, !dbg !2257
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !2257
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !2257
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !2257
  store i64 %expval47, ptr %tmp40, align 8, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2269
  %22 = load i64, ptr %tmp40, align 8, !dbg !2257
  br label %do.body48, !dbg !2270

do.body48:                                        ; preds = %if.end39
  call void @set_bit(i64 noundef 737, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !2271
  call void @set_bit(i64 noundef 737, ptr noundef @cpu_caps_set) #13, !dbg !2271
  br label %do.end50, !dbg !2271

do.end50:                                         ; preds = %do.body48
  ret void, !dbg !2273
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_zen2(ptr noundef %c) #0 align 16 !dbg !2274 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2276, metadata !DIExpression()), !dbg !2277
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2278
  call void @fix_erratum_1386(ptr noundef %0) #13, !dbg !2279
  %1 = load ptr, ptr %c.addr, align 8, !dbg !2280
  call void @zen2_zenbleed_check(ptr noundef %1) #13, !dbg !2281
  ret void, !dbg !2282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_zen3(ptr noundef %c) #0 align 16 !dbg !2283 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2285, metadata !DIExpression()), !dbg !2286
  ret void, !dbg !2287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_amd_zen4(ptr noundef %c) #0 align 16 !dbg !2288 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2290, metadata !DIExpression()), !dbg !2291
  ret void, !dbg !2292
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2293 dso_local void @cpu_detect_cache_sizes(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_detect_cmp(ptr noundef %c) #0 align 16 !dbg !2294 {
entry:
  %c.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2296, metadata !DIExpression()), !dbg !2311
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #14, !dbg !2312
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !2297, metadata !DIExpression()), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !2314
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2298, metadata !DIExpression()), !dbg !2315
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !2316
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2299, metadata !DIExpression()), !dbg !2317
  br label %do.body, !dbg !2317

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2318
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2302, metadata !DIExpression()), !dbg !2318
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2318
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2318
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2317
  br label %do.cond, !dbg !2318

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2318

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2304, metadata !DIExpression()), !dbg !2319
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !2319, !srcloc !2320
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2319
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2319
  %conv = zext i32 %2 to i64, !dbg !2319
  %conv2 = trunc i64 %conv to i32, !dbg !2319
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2319
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !2317
  %3 = load i32, ptr %tmp1, align 4, !dbg !2319
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2317
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2317
  store i32 %4, ptr %tmp3, align 4, !dbg !2317
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2316
  %5 = load i32, ptr %tmp3, align 4, !dbg !2317
  store i32 %5, ptr %tmp, align 4, !dbg !2316
  %6 = load i32, ptr %tmp, align 4, !dbg !2316
  store i32 %6, ptr %cpu, align 4, !dbg !2315
  %7 = load ptr, ptr %c.addr, align 8, !dbg !2321
  %x86_coreid_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 6, !dbg !2322
  %8 = load i8, ptr %x86_coreid_bits, align 2, !dbg !2322
  %conv4 = zext i8 %8 to i32, !dbg !2321
  store i32 %conv4, ptr %bits, align 4, !dbg !2323
  %9 = load ptr, ptr %c.addr, align 8, !dbg !2324
  %initial_apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 23, !dbg !2325
  %10 = load i16, ptr %initial_apicid, align 4, !dbg !2325
  %conv5 = zext i16 %10 to i32, !dbg !2324
  %11 = load i32, ptr %bits, align 4, !dbg !2326
  %shl = shl i32 1, %11, !dbg !2327
  %sub = sub i32 %shl, 1, !dbg !2328
  %and = and i32 %conv5, %sub, !dbg !2329
  %conv6 = trunc i32 %and to i16, !dbg !2324
  %12 = load ptr, ptr %c.addr, align 8, !dbg !2330
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 28, !dbg !2331
  store i16 %conv6, ptr %cpu_core_id, align 2, !dbg !2332
  %13 = load ptr, ptr %c.addr, align 8, !dbg !2333
  %initial_apicid7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 23, !dbg !2334
  %14 = load i16, ptr %initial_apicid7, align 4, !dbg !2334
  %conv8 = zext i16 %14 to i32, !dbg !2333
  %15 = load i32, ptr %bits, align 4, !dbg !2335
  %shr = ashr i32 %conv8, %15, !dbg !2336
  %conv9 = trunc i32 %shr to i16, !dbg !2333
  %16 = load ptr, ptr %c.addr, align 8, !dbg !2337
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 26, !dbg !2338
  store i16 %conv9, ptr %phys_proc_id, align 2, !dbg !2339
  %17 = load ptr, ptr %c.addr, align 8, !dbg !2340
  %phys_proc_id10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 26, !dbg !2341
  %18 = load i16, ptr %phys_proc_id10, align 2, !dbg !2341
  %19 = load ptr, ptr %c.addr, align 8, !dbg !2342
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 29, !dbg !2343
  store i16 %18, ptr %cpu_die_id, align 8, !dbg !2344
  br label %do.body11, !dbg !2345

do.body11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify12) #14, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify12, metadata !2306, metadata !DIExpression()), !dbg !2346
  store ptr null, ptr %__vpp_verify12, align 8, !dbg !2346
  %20 = load ptr, ptr %__vpp_verify12, align 8, !dbg !2346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify12) #14, !dbg !2345
  br label %do.cond13, !dbg !2346

do.cond13:                                        ; preds = %do.body11
  br label %do.end14, !dbg !2346

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !2347
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2309, metadata !DIExpression()), !dbg !2347
  store i64 ptrtoint (ptr @cpu_llc_id to i64), ptr %__ptr, align 8, !dbg !2347
  %21 = load i64, ptr %__ptr, align 8, !dbg !2347
  %22 = load i32, ptr %cpu, align 4, !dbg !2347
  %idxprom = sext i32 %22 to i64, !dbg !2347
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2347
  %23 = load i64, ptr %arrayidx, align 8, !dbg !2347
  %add = add i64 %21, %23, !dbg !2347
  %24 = inttoptr i64 %add to ptr, !dbg !2347
  store ptr %24, ptr %tmp16, align 8, !dbg !2347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !2345
  %25 = load ptr, ptr %tmp16, align 8, !dbg !2347
  store ptr %25, ptr %tmp15, align 8, !dbg !2346
  %26 = load ptr, ptr %tmp15, align 8, !dbg !2345
  store i16 %18, ptr %26, align 2, !dbg !2348
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !2349
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #14, !dbg !2349
  ret void, !dbg !2349
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_get_topology(ptr noundef %c) #0 align 16 !dbg !2350 {
entry:
  %c.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %err = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %value = alloca i64, align 8
  %__vpp_verify43 = alloca ptr, align 8
  %tmp46 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp47 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2352, metadata !DIExpression()), !dbg !2376
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2353, metadata !DIExpression()), !dbg !2378
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !2379
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2380
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2354, metadata !DIExpression()), !dbg !2380
  br label %do.body, !dbg !2380

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2357, metadata !DIExpression()), !dbg !2381
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2381
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2380
  br label %do.cond, !dbg !2381

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2381

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2359, metadata !DIExpression()), !dbg !2382
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !2382, !srcloc !2383
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2382
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2382
  %conv = zext i32 %2 to i64, !dbg !2382
  %conv2 = trunc i64 %conv to i32, !dbg !2382
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2382
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !2380
  %3 = load i32, ptr %tmp1, align 4, !dbg !2382
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2380
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2380
  store i32 %4, ptr %tmp3, align 4, !dbg !2380
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2379
  %5 = load i32, ptr %tmp3, align 4, !dbg !2380
  store i32 %5, ptr %tmp, align 4, !dbg !2379
  %6 = load i32, ptr %tmp, align 4, !dbg !2379
  store i32 %6, ptr %cpu, align 4, !dbg !2378
  br i1 false, label %cond.true, label %cond.false, !dbg !2384

cond.true:                                        ; preds = %do.end
  br i1 true, label %if.then, label %if.else, !dbg !2385

cond.false:                                       ; preds = %do.end
  %call = call zeroext i1 @arch_test_bit(i64 noundef 214, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !2385
  br i1 %call, label %if.then, label %if.else, !dbg !2384

if.then:                                          ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2386
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2361, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !2364, metadata !DIExpression()), !dbg !2389
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !2365, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !2366, metadata !DIExpression()), !dbg !2391
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !2367, metadata !DIExpression()), !dbg !2392
  call void @cpuid(i32 noundef -2147483618, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !2393
  %7 = load i32, ptr %ecx, align 4, !dbg !2394
  %and = and i32 %7, 255, !dbg !2395
  %conv5 = trunc i32 %and to i16, !dbg !2394
  %8 = load ptr, ptr %c.addr, align 8, !dbg !2396
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 29, !dbg !2397
  store i16 %conv5, ptr %cpu_die_id, align 8, !dbg !2398
  %9 = load ptr, ptr %c.addr, align 8, !dbg !2399
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !2401
  %x86 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !2401
  %11 = load i8, ptr %x86, align 1, !dbg !2401
  %conv6 = zext i8 %11 to i32, !dbg !2399
  %cmp = icmp eq i32 %conv6, 21, !dbg !2402
  br i1 %cmp, label %if.then8, label %if.end, !dbg !2403

if.then8:                                         ; preds = %if.then
  %12 = load i32, ptr %ebx, align 4, !dbg !2404
  %and9 = and i32 %12, 255, !dbg !2405
  %conv10 = trunc i32 %and9 to i8, !dbg !2404
  %13 = load ptr, ptr %c.addr, align 8, !dbg !2406
  %cu_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 7, !dbg !2407
  store i8 %conv10, ptr %cu_id, align 1, !dbg !2408
  br label %if.end, !dbg !2406

if.end:                                           ; preds = %if.then8, %if.then
  %14 = load ptr, ptr %c.addr, align 8, !dbg !2409
  %15 = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 0, !dbg !2411
  %x8611 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1, !dbg !2411
  %16 = load i8, ptr %x8611, align 1, !dbg !2411
  %conv12 = zext i8 %16 to i32, !dbg !2409
  %cmp13 = icmp sge i32 %conv12, 23, !dbg !2412
  br i1 %cmp13, label %if.then15, label %if.end24, !dbg !2413

if.then15:                                        ; preds = %if.end
  %17 = load i32, ptr %ebx, align 4, !dbg !2414
  %and16 = and i32 %17, 255, !dbg !2416
  %conv17 = trunc i32 %and16 to i16, !dbg !2414
  %18 = load ptr, ptr %c.addr, align 8, !dbg !2417
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %18, i32 0, i32 28, !dbg !2418
  store i16 %conv17, ptr %cpu_core_id, align 2, !dbg !2419
  %19 = load i32, ptr @smp_num_siblings, align 4, !dbg !2420
  %cmp18 = icmp sgt i32 %19, 1, !dbg !2422
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !2423

if.then20:                                        ; preds = %if.then15
  %20 = load i32, ptr @smp_num_siblings, align 4, !dbg !2424
  %21 = load ptr, ptr %c.addr, align 8, !dbg !2425
  %x86_max_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %21, i32 0, i32 21, !dbg !2426
  %22 = load i16, ptr %x86_max_cores, align 8, !dbg !2427
  %conv21 = zext i16 %22 to i32, !dbg !2427
  %div = sdiv i32 %conv21, %20, !dbg !2427
  %conv22 = trunc i32 %div to i16, !dbg !2427
  store i16 %conv22, ptr %x86_max_cores, align 8, !dbg !2427
  br label %if.end23, !dbg !2425

if.end23:                                         ; preds = %if.then20, %if.then15
  br label %if.end24, !dbg !2428

if.end24:                                         ; preds = %if.end23, %if.end
  %23 = load ptr, ptr %c.addr, align 8, !dbg !2429
  %call25 = call i32 @detect_extended_topology(ptr noundef %23) #13, !dbg !2430
  store i32 %call25, ptr %err, align 4, !dbg !2431
  %24 = load i32, ptr %err, align 4, !dbg !2432
  %tobool = icmp ne i32 %24, 0, !dbg !2432
  br i1 %tobool, label %if.end31, label %if.then26, !dbg !2434

if.then26:                                        ; preds = %if.end24
  %25 = load ptr, ptr %c.addr, align 8, !dbg !2435
  %x86_max_cores27 = getelementptr inbounds %struct.cpuinfo_x86, ptr %25, i32 0, i32 21, !dbg !2436
  %26 = load i16, ptr %x86_max_cores27, align 8, !dbg !2436
  %conv28 = zext i16 %26 to i32, !dbg !2435
  %call29 = call i32 @get_count_order(i32 noundef %conv28) #13, !dbg !2437
  %conv30 = trunc i32 %call29 to i8, !dbg !2437
  %27 = load ptr, ptr %c.addr, align 8, !dbg !2438
  %x86_coreid_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %27, i32 0, i32 6, !dbg !2439
  store i8 %conv30, ptr %x86_coreid_bits, align 2, !dbg !2440
  br label %if.end31, !dbg !2438

if.end31:                                         ; preds = %if.then26, %if.end24
  %28 = load ptr, ptr %c.addr, align 8, !dbg !2441
  %29 = load i32, ptr %cpu, align 4, !dbg !2442
  call void @cacheinfo_amd_init_llc_id(ptr noundef %28, i32 noundef %29) #13, !dbg !2443
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2444
  br label %if.end50, !dbg !2445

if.else:                                          ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true32, label %cond.false33, !dbg !2446

cond.true32:                                      ; preds = %if.else
  br i1 true, label %if.then36, label %if.else48, !dbg !2447

cond.false33:                                     ; preds = %if.else
  %30 = load ptr, ptr %c.addr, align 8, !dbg !2447
  %31 = getelementptr inbounds %struct.cpuinfo_x86, ptr %30, i32 0, i32 10, !dbg !2447
  %arraydecay = getelementptr inbounds [24 x i32], ptr %31, i64 0, i64 0, !dbg !2447
  %call34 = call zeroext i1 @arch_test_bit(i64 noundef 211, ptr noundef %arraydecay) #13, !dbg !2447
  br i1 %call34, label %if.then36, label %if.else48, !dbg !2446

if.then36:                                        ; preds = %cond.false33, %cond.true32
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #14, !dbg !2448
  call void @llvm.dbg.declare(metadata ptr %value, metadata !2368, metadata !DIExpression()), !dbg !2449
  %call37 = call i64 @native_read_msr(i32 noundef -1073672180) #13, !dbg !2450
  store i64 %call37, ptr %value, align 8, !dbg !2450
  %32 = load i64, ptr %value, align 8, !dbg !2451
  %and38 = and i64 %32, 7, !dbg !2452
  %conv39 = trunc i64 %and38 to i16, !dbg !2451
  %33 = load ptr, ptr %c.addr, align 8, !dbg !2453
  %cpu_die_id40 = getelementptr inbounds %struct.cpuinfo_x86, ptr %33, i32 0, i32 29, !dbg !2454
  store i16 %conv39, ptr %cpu_die_id40, align 8, !dbg !2455
  %34 = load ptr, ptr %c.addr, align 8, !dbg !2456
  %cpu_die_id41 = getelementptr inbounds %struct.cpuinfo_x86, ptr %34, i32 0, i32 29, !dbg !2457
  %35 = load i16, ptr %cpu_die_id41, align 8, !dbg !2457
  br label %do.body42, !dbg !2458

do.body42:                                        ; preds = %if.then36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify43) #14, !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify43, metadata !2371, metadata !DIExpression()), !dbg !2459
  store ptr null, ptr %__vpp_verify43, align 8, !dbg !2459
  %36 = load ptr, ptr %__vpp_verify43, align 8, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify43) #14, !dbg !2458
  br label %do.cond44, !dbg !2459

do.cond44:                                        ; preds = %do.body42
  br label %do.end45, !dbg !2459

do.end45:                                         ; preds = %do.cond44
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !2460
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2374, metadata !DIExpression()), !dbg !2460
  store i64 ptrtoint (ptr @cpu_llc_id to i64), ptr %__ptr, align 8, !dbg !2460
  %37 = load i64, ptr %__ptr, align 8, !dbg !2460
  %38 = load i32, ptr %cpu, align 4, !dbg !2460
  %idxprom = sext i32 %38 to i64, !dbg !2460
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2460
  %39 = load i64, ptr %arrayidx, align 8, !dbg !2460
  %add = add i64 %37, %39, !dbg !2460
  %40 = inttoptr i64 %add to ptr, !dbg !2460
  store ptr %40, ptr %tmp47, align 8, !dbg !2460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !2458
  %41 = load ptr, ptr %tmp47, align 8, !dbg !2460
  store ptr %41, ptr %tmp46, align 8, !dbg !2459
  %42 = load ptr, ptr %tmp46, align 8, !dbg !2458
  store i16 %35, ptr %42, align 2, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #14, !dbg !2462
  br label %if.end49, !dbg !2463

if.else48:                                        ; preds = %cond.false33, %cond.true32
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2464

if.end49:                                         ; preds = %do.end45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end31
  %43 = load i32, ptr @nodes_per_socket, align 4, !dbg !2465
  %cmp51 = icmp ugt i32 %43, 1, !dbg !2467
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !2468

if.then53:                                        ; preds = %if.end50
  %44 = load ptr, ptr %c.addr, align 8, !dbg !2469
  %45 = getelementptr inbounds %struct.cpuinfo_x86, ptr %44, i32 0, i32 10, !dbg !2469
  %arraydecay54 = getelementptr inbounds [24 x i32], ptr %45, i64 0, i64 0, !dbg !2469
  call void @set_bit(i64 noundef 123, ptr noundef %arraydecay54) #13, !dbg !2469
  %46 = load ptr, ptr %c.addr, align 8, !dbg !2471
  call void @legacy_fixup_core_id(ptr noundef %46) #13, !dbg !2472
  br label %if.end55, !dbg !2473

if.end55:                                         ; preds = %if.then53, %if.end50
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2474
  br label %cleanup, !dbg !2474

cleanup:                                          ; preds = %if.end55, %if.else48
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !2474
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2474

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srat_detect_node(ptr noundef %c) #0 align 16 !dbg !2475 {
entry:
  %c.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %node = alloca i32, align 4
  %apicid = alloca i32, align 4
  %ht_nodeid = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2477, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !2492
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2478, metadata !DIExpression()), !dbg !2493
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !2494
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2479, metadata !DIExpression()), !dbg !2495
  br label %do.body, !dbg !2495

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2482, metadata !DIExpression()), !dbg !2496
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2496
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2496
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2495
  br label %do.cond, !dbg !2496

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2496

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !2497
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2484, metadata !DIExpression()), !dbg !2497
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !2497, !srcloc !2498
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2497
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2497
  %conv = zext i32 %2 to i64, !dbg !2497
  %conv2 = trunc i64 %conv to i32, !dbg !2497
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2497
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !2495
  %3 = load i32, ptr %tmp1, align 4, !dbg !2497
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2495
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2495
  store i32 %4, ptr %tmp3, align 4, !dbg !2495
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2494
  %5 = load i32, ptr %tmp3, align 4, !dbg !2495
  store i32 %5, ptr %tmp, align 4, !dbg !2494
  %6 = load i32, ptr %tmp, align 4, !dbg !2494
  store i32 %6, ptr %cpu, align 4, !dbg !2493
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #14, !dbg !2499
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2486, metadata !DIExpression()), !dbg !2500
  call void @llvm.lifetime.start.p0(i64 4, ptr %apicid) #14, !dbg !2501
  call void @llvm.dbg.declare(metadata ptr %apicid, metadata !2487, metadata !DIExpression()), !dbg !2502
  %7 = load ptr, ptr %c.addr, align 8, !dbg !2503
  %apicid4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 22, !dbg !2504
  %8 = load i16, ptr %apicid4, align 2, !dbg !2504
  %conv5 = zext i16 %8 to i32, !dbg !2503
  store i32 %conv5, ptr %apicid, align 4, !dbg !2502
  %9 = load i32, ptr %cpu, align 4, !dbg !2505
  %call = call i32 @numa_cpu_node(i32 noundef %9) #13, !dbg !2506
  store i32 %call, ptr %node, align 4, !dbg !2507
  %10 = load i32, ptr %node, align 4, !dbg !2508
  %cmp = icmp eq i32 %10, -1, !dbg !2510
  br i1 %cmp, label %if.then, label %if.end, !dbg !2511

if.then:                                          ; preds = %do.end
  %11 = load i32, ptr %cpu, align 4, !dbg !2512
  %call7 = call zeroext i16 @get_llc_id(i32 noundef %11) #13, !dbg !2513
  %conv8 = zext i16 %call7 to i32, !dbg !2513
  store i32 %conv8, ptr %node, align 4, !dbg !2514
  br label %if.end, !dbg !2515

if.end:                                           ; preds = %if.then, %do.end
  %12 = load ptr, ptr getelementptr inbounds (%struct.x86_cpuinit_ops, ptr @x86_cpuinit, i32 0, i32 2), align 8, !dbg !2516
  %tobool = icmp ne ptr %12, null, !dbg !2518
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !2519

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr getelementptr inbounds (%struct.x86_cpuinit_ops, ptr @x86_cpuinit, i32 0, i32 2), align 8, !dbg !2520
  %14 = load ptr, ptr %c.addr, align 8, !dbg !2521
  %15 = load i32, ptr %node, align 4, !dbg !2522
  call void %13(ptr noundef %14, i32 noundef %15) #13, !dbg !2523
  br label %if.end10, !dbg !2523

if.end10:                                         ; preds = %if.then9, %if.end
  %16 = load i32, ptr %node, align 4, !dbg !2524
  %call11 = call i32 @node_state(i32 noundef %16, i32 noundef 1) #13, !dbg !2524
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2524
  br i1 %tobool12, label %if.end28, label %if.then13, !dbg !2525

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ht_nodeid) #14, !dbg !2526
  call void @llvm.dbg.declare(metadata ptr %ht_nodeid, metadata !2488, metadata !DIExpression()), !dbg !2527
  %17 = load ptr, ptr %c.addr, align 8, !dbg !2528
  %initial_apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 23, !dbg !2529
  %18 = load i16, ptr %initial_apicid, align 4, !dbg !2529
  %conv14 = zext i16 %18 to i32, !dbg !2528
  store i32 %conv14, ptr %ht_nodeid, align 4, !dbg !2527
  %19 = load i32, ptr %ht_nodeid, align 4, !dbg !2530
  %idxprom = sext i32 %19 to i64, !dbg !2532
  %arrayidx = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom, !dbg !2532
  %20 = load i16, ptr %arrayidx, align 2, !dbg !2532
  %conv15 = sext i16 %20 to i32, !dbg !2532
  %cmp16 = icmp ne i32 %conv15, -1, !dbg !2533
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !2534

if.then18:                                        ; preds = %if.then13
  %21 = load i32, ptr %ht_nodeid, align 4, !dbg !2535
  %idxprom19 = sext i32 %21 to i64, !dbg !2536
  %arrayidx20 = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom19, !dbg !2536
  %22 = load i16, ptr %arrayidx20, align 2, !dbg !2536
  %conv21 = sext i16 %22 to i32, !dbg !2536
  store i32 %conv21, ptr %node, align 4, !dbg !2537
  br label %if.end22, !dbg !2538

if.end22:                                         ; preds = %if.then18, %if.then13
  %23 = load i32, ptr %node, align 4, !dbg !2539
  %call23 = call i32 @node_state(i32 noundef %23, i32 noundef 1) #13, !dbg !2539
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2539
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !2541

if.then25:                                        ; preds = %if.end22
  %24 = load i32, ptr %apicid, align 4, !dbg !2542
  %call26 = call i32 @nearby_node(i32 noundef %24) #13, !dbg !2543
  store i32 %call26, ptr %node, align 4, !dbg !2544
  br label %if.end27, !dbg !2545

if.end27:                                         ; preds = %if.then25, %if.end22
  call void @llvm.lifetime.end.p0(i64 4, ptr %ht_nodeid) #14, !dbg !2546
  br label %if.end28, !dbg !2547

if.end28:                                         ; preds = %if.end27, %if.end10
  %25 = load i32, ptr %cpu, align 4, !dbg !2548
  %26 = load i32, ptr %node, align 4, !dbg !2549
  call void @numa_set_node(i32 noundef %25, i32 noundef %26) #13, !dbg !2550
  call void @llvm.lifetime.end.p0(i64 4, ptr %apicid) #14, !dbg !2551
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #14, !dbg !2551
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !2551
  ret void, !dbg !2551
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2552 dso_local void @init_amd_cacheinfo(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2553 dso_local void @check_null_seg_clears_base(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @spectre_v2_in_eibrs_mode(i32 noundef %mode) #5 align 16 !dbg !2554 {
entry:
  %mode.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  %0 = load i32, ptr %mode.addr, align 4, !dbg !2560
  %cmp = icmp eq i32 %0, 3, !dbg !2561
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !2562

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4, !dbg !2563
  %cmp1 = icmp eq i32 %1, 4, !dbg !2564
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !2565

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, ptr %mode.addr, align 4, !dbg !2566
  %cmp2 = icmp eq i32 %2, 5, !dbg !2567
  br label %lor.end, !dbg !2565

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  ret i1 %3, !dbg !2568
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apic_read(i32 noundef %reg) #4 align 16 !dbg !315 {
entry:
  %reg.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !320, metadata !DIExpression()), !dbg !2569
  store ptr @__SCT__apic_call_read, ptr %tmp, align 8, !dbg !2570
  %0 = load ptr, ptr %tmp, align 8, !dbg !2570
  %1 = load i32, ptr %reg.addr, align 4, !dbg !2572
  %call = call i32 %0(i32 noundef %1) #13, !dbg !2573
  ret i32 %call, !dbg !2574
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_read(i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_eax(i32 noundef %op) #5 align 16 !dbg !2575 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2577, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !2578, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !2579, metadata !DIExpression()), !dbg !2585
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !2580, metadata !DIExpression()), !dbg !2586
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !2583
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !2581, metadata !DIExpression()), !dbg !2587
  %0 = load i32, ptr %op.addr, align 4, !dbg !2588
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !2589
  %1 = load i32, ptr %eax, align 4, !dbg !2590
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !2591
  ret i32 %1, !dbg !2592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_amd_safe(i32 noundef %msr, ptr noundef %p) #5 align 16 !dbg !326 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %gprs = alloca [8 x i32], align 16
  %err = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %tmp60 = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !331, metadata !DIExpression()), !dbg !2593
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !332, metadata !DIExpression()), !dbg !2594
  call void @llvm.lifetime.start.p0(i64 32, ptr %gprs) #14, !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %gprs, metadata !333, metadata !DIExpression()), !dbg !2596
  call void @llvm.memset.p0.i64(ptr align 16 %gprs, i8 0, i64 32, i1 false), !dbg !2596
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %err, metadata !337, metadata !DIExpression()), !dbg !2598
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2599
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !338, metadata !DIExpression()), !dbg !2599
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !2599
  %conv = zext i8 %0 to i32, !dbg !2599
  %cmp = icmp ne i32 %conv, 15, !dbg !2599
  %lnot = xor i1 %cmp, true, !dbg !2599
  %lnot2 = xor i1 %lnot, true, !dbg !2599
  %frombool = zext i1 %lnot2 to i8, !dbg !2599
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !2599
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !340, metadata !DIExpression()), !dbg !2600
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !2600, !range !893, !noundef !894
  %tobool = trunc i8 %1 to i1, !dbg !2600
  %lnot3 = xor i1 %tobool, true, !dbg !2600
  %lnot4 = xor i1 %lnot3, true, !dbg !2600
  %frombool5 = zext i1 %lnot4 to i8, !dbg !2600
  store i8 %frombool5, ptr %__ret_cond, align 1, !dbg !2600
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !343, metadata !DIExpression()), !dbg !2600
  store i8 0, ptr %__ret_once, align 1, !dbg !2600
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !2601, !range !893, !noundef !894
  %tobool6 = trunc i8 %2 to i1, !dbg !2601
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !2601

land.rhs:                                         ; preds = %entry
  %3 = load i8, ptr @rdmsrl_amd_safe.__already_done, align 1, !dbg !2601, !range !893, !noundef !894
  %tobool8 = trunc i8 %3 to i1, !dbg !2601
  %lnot9 = xor i1 %tobool8, true, !dbg !2601
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot9, %land.rhs ], !dbg !2603
  %lnot10 = xor i1 %4, true, !dbg !2601
  %lnot11 = xor i1 %lnot10, true, !dbg !2601
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !2601
  %conv12 = sext i32 %lnot.ext to i64, !dbg !2601
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !2601
  %tobool13 = icmp ne i64 %expval, 0, !dbg !2601
  br i1 %tobool13, label %if.then, label %if.end, !dbg !2600

if.then:                                          ; preds = %land.end
  store i8 1, ptr @rdmsrl_amd_safe.__already_done, align 1, !dbg !2604
  store i8 1, ptr %__ret_once, align 1, !dbg !2604
  br label %if.end, !dbg !2604

if.end:                                           ; preds = %if.then, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !2600, !range !893, !noundef !894
  %tobool14 = trunc i8 %5 to i1, !dbg !2600
  %lnot15 = xor i1 %tobool14, true, !dbg !2600
  %lnot17 = xor i1 %lnot15, true, !dbg !2600
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2600
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2600
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !2600
  store i64 %expval20, ptr %tmp, align 8, !dbg !2601
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !2606
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !2606
  %6 = load i64, ptr %tmp, align 8, !dbg !2600
  %tobool21 = icmp ne i64 %6, 0, !dbg !2606
  br i1 %tobool21, label %if.then22, label %if.end59, !dbg !2599

if.then22:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2607
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !344, metadata !DIExpression()), !dbg !2607
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2607
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2608
  %tobool23 = icmp ne i32 %7, 0, !dbg !2608
  %lnot24 = xor i1 %tobool23, true, !dbg !2608
  %lnot26 = xor i1 %lnot24, true, !dbg !2608
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !2608
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !2608
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !2608
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !2608
  br i1 %tobool30, label %if.then31, label %if.end50, !dbg !2607

if.then31:                                        ; preds = %if.then22
  br label %do.body, !dbg !2608

do.body:                                          ; preds = %if.then31
  br label %do.body32, !dbg !2609

do.body32:                                        ; preds = %do.body
  br label %do.cond, !dbg !2610

do.cond:                                          ; preds = %do.body32
  br label %do.end, !dbg !2610

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.9, ptr noundef @__func__.rdmsrl_amd_safe) #13, !dbg !2609
  br label %do.body33, !dbg !2609

do.body33:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !346, metadata !DIExpression()), !dbg !2612
  store i32 2313, ptr %__flags, align 4, !dbg !2612
  br label %do.body34, !dbg !2612

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !2613

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2613

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2612

do.body37:                                        ; preds = %do.end36
  %8 = load i32, ptr %__flags, align 4, !dbg !2615
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 110, i32 %8, i64 12) #14, !dbg !2615, !srcloc !2617
  br label %do.cond38, !dbg !2615

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !2615

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !2612

do.body40:                                        ; preds = %do.end39
  br label %do.cond41, !dbg !2618

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2618

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2609
  br label %do.cond43, !dbg !2612

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !2612

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !2609

do.body45:                                        ; preds = %do.end44
  br label %do.cond46, !dbg !2620

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !2620

do.end47:                                         ; preds = %do.cond46
  br label %do.cond48, !dbg !2609

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !2609

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !2609

if.end50:                                         ; preds = %do.end49, %if.then22
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !2607
  %tobool52 = icmp ne i32 %9, 0, !dbg !2607
  %lnot53 = xor i1 %tobool52, true, !dbg !2607
  %lnot55 = xor i1 %lnot53, true, !dbg !2607
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !2607
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !2607
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !2607
  store i64 %expval58, ptr %tmp51, align 8, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2606
  %10 = load i64, ptr %tmp51, align 8, !dbg !2607
  br label %if.end59, !dbg !2606

if.end59:                                         ; preds = %if.end50, %if.end
  %11 = load i8, ptr %__ret_do_once, align 1, !dbg !2599, !range !893, !noundef !894
  %tobool61 = trunc i8 %11 to i1, !dbg !2599
  %lnot62 = xor i1 %tobool61, true, !dbg !2599
  %lnot64 = xor i1 %lnot62, true, !dbg !2599
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !2599
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !2599
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !2599
  store i64 %expval67, ptr %tmp60, align 8, !dbg !2606
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2622
  %12 = load i64, ptr %tmp60, align 8, !dbg !2599
  %13 = load i32, ptr %msr.addr, align 4, !dbg !2623
  %arrayidx = getelementptr [8 x i32], ptr %gprs, i64 0, i64 1, !dbg !2624
  store i32 %13, ptr %arrayidx, align 4, !dbg !2625
  %arrayidx68 = getelementptr [8 x i32], ptr %gprs, i64 0, i64 7, !dbg !2626
  store i32 -1671815110, ptr %arrayidx68, align 4, !dbg !2627
  %arraydecay = getelementptr inbounds [8 x i32], ptr %gprs, i64 0, i64 0, !dbg !2628
  %call = call i32 @rdmsr_safe_regs(ptr noundef %arraydecay) #13, !dbg !2629
  store i32 %call, ptr %err, align 4, !dbg !2630
  %arrayidx69 = getelementptr [8 x i32], ptr %gprs, i64 0, i64 0, !dbg !2631
  %14 = load i32, ptr %arrayidx69, align 16, !dbg !2631
  %conv70 = zext i32 %14 to i64, !dbg !2631
  %arrayidx71 = getelementptr [8 x i32], ptr %gprs, i64 0, i64 2, !dbg !2632
  %15 = load i32, ptr %arrayidx71, align 8, !dbg !2632
  %conv72 = zext i32 %15 to i64, !dbg !2633
  %shl = shl i64 %conv72, 32, !dbg !2634
  %or = or i64 %conv70, %shl, !dbg !2635
  %16 = load ptr, ptr %p.addr, align 8, !dbg !2636
  store i64 %or, ptr %16, align 8, !dbg !2637
  %17 = load i32, ptr %err, align 4, !dbg !2638
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2639
  call void @llvm.lifetime.end.p0(i64 32, ptr %gprs) #14, !dbg !2639
  ret i32 %17, !dbg !2640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsrl_amd_safe(i32 noundef %msr, i64 noundef %val) #5 align 16 !dbg !360 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  %gprs = alloca [8 x i32], align 16
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %tmp60 = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !364, metadata !DIExpression()), !dbg !2641
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !365, metadata !DIExpression()), !dbg !2642
  call void @llvm.lifetime.start.p0(i64 32, ptr %gprs) #14, !dbg !2643
  call void @llvm.dbg.declare(metadata ptr %gprs, metadata !366, metadata !DIExpression()), !dbg !2644
  call void @llvm.memset.p0.i64(ptr align 16 %gprs, i8 0, i64 32, i1 false), !dbg !2644
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !367, metadata !DIExpression()), !dbg !2645
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !2645
  %conv = zext i8 %0 to i32, !dbg !2645
  %cmp = icmp ne i32 %conv, 15, !dbg !2645
  %lnot = xor i1 %cmp, true, !dbg !2645
  %lnot2 = xor i1 %lnot, true, !dbg !2645
  %frombool = zext i1 %lnot2 to i8, !dbg !2645
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !2645
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !2646
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !369, metadata !DIExpression()), !dbg !2646
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !2646, !range !893, !noundef !894
  %tobool = trunc i8 %1 to i1, !dbg !2646
  %lnot3 = xor i1 %tobool, true, !dbg !2646
  %lnot4 = xor i1 %lnot3, true, !dbg !2646
  %frombool5 = zext i1 %lnot4 to i8, !dbg !2646
  store i8 %frombool5, ptr %__ret_cond, align 1, !dbg !2646
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !2646
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !372, metadata !DIExpression()), !dbg !2646
  store i8 0, ptr %__ret_once, align 1, !dbg !2646
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !2647, !range !893, !noundef !894
  %tobool6 = trunc i8 %2 to i1, !dbg !2647
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !2647

land.rhs:                                         ; preds = %entry
  %3 = load i8, ptr @wrmsrl_amd_safe.__already_done, align 1, !dbg !2647, !range !893, !noundef !894
  %tobool8 = trunc i8 %3 to i1, !dbg !2647
  %lnot9 = xor i1 %tobool8, true, !dbg !2647
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot9, %land.rhs ], !dbg !2649
  %lnot10 = xor i1 %4, true, !dbg !2647
  %lnot11 = xor i1 %lnot10, true, !dbg !2647
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !2647
  %conv12 = sext i32 %lnot.ext to i64, !dbg !2647
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !2647
  %tobool13 = icmp ne i64 %expval, 0, !dbg !2647
  br i1 %tobool13, label %if.then, label %if.end, !dbg !2646

if.then:                                          ; preds = %land.end
  store i8 1, ptr @wrmsrl_amd_safe.__already_done, align 1, !dbg !2650
  store i8 1, ptr %__ret_once, align 1, !dbg !2650
  br label %if.end, !dbg !2650

if.end:                                           ; preds = %if.then, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !2646, !range !893, !noundef !894
  %tobool14 = trunc i8 %5 to i1, !dbg !2646
  %lnot15 = xor i1 %tobool14, true, !dbg !2646
  %lnot17 = xor i1 %lnot15, true, !dbg !2646
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2646
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2646
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !2646
  store i64 %expval20, ptr %tmp, align 8, !dbg !2647
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !2652
  %6 = load i64, ptr %tmp, align 8, !dbg !2646
  %tobool21 = icmp ne i64 %6, 0, !dbg !2652
  br i1 %tobool21, label %if.then22, label %if.end59, !dbg !2645

if.then22:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !373, metadata !DIExpression()), !dbg !2653
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2653
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2654
  %tobool23 = icmp ne i32 %7, 0, !dbg !2654
  %lnot24 = xor i1 %tobool23, true, !dbg !2654
  %lnot26 = xor i1 %lnot24, true, !dbg !2654
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !2654
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !2654
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !2654
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !2654
  br i1 %tobool30, label %if.then31, label %if.end50, !dbg !2653

if.then31:                                        ; preds = %if.then22
  br label %do.body, !dbg !2654

do.body:                                          ; preds = %if.then31
  br label %do.body32, !dbg !2655

do.body32:                                        ; preds = %do.body
  br label %do.cond, !dbg !2656

do.cond:                                          ; preds = %do.body32
  br label %do.end, !dbg !2656

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.9, ptr noundef @__func__.wrmsrl_amd_safe) #13, !dbg !2655
  br label %do.body33, !dbg !2655

do.body33:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2658
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !375, metadata !DIExpression()), !dbg !2658
  store i32 2313, ptr %__flags, align 4, !dbg !2658
  br label %do.body34, !dbg !2658

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !2659

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2659

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2658

do.body37:                                        ; preds = %do.end36
  %8 = load i32, ptr %__flags, align 4, !dbg !2661
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 127, i32 %8, i64 12) #14, !dbg !2661, !srcloc !2663
  br label %do.cond38, !dbg !2661

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !2661

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !2658

do.body40:                                        ; preds = %do.end39
  br label %do.cond41, !dbg !2664

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2664

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2655
  br label %do.cond43, !dbg !2658

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !2658

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !2655

do.body45:                                        ; preds = %do.end44
  br label %do.cond46, !dbg !2666

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !2666

do.end47:                                         ; preds = %do.cond46
  br label %do.cond48, !dbg !2655

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !2655

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !2655

if.end50:                                         ; preds = %do.end49, %if.then22
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !2653
  %tobool52 = icmp ne i32 %9, 0, !dbg !2653
  %lnot53 = xor i1 %tobool52, true, !dbg !2653
  %lnot55 = xor i1 %lnot53, true, !dbg !2653
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !2653
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !2653
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !2653
  store i64 %expval58, ptr %tmp51, align 8, !dbg !2654
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2652
  %10 = load i64, ptr %tmp51, align 8, !dbg !2653
  br label %if.end59, !dbg !2652

if.end59:                                         ; preds = %if.end50, %if.end
  %11 = load i8, ptr %__ret_do_once, align 1, !dbg !2645, !range !893, !noundef !894
  %tobool61 = trunc i8 %11 to i1, !dbg !2645
  %lnot62 = xor i1 %tobool61, true, !dbg !2645
  %lnot64 = xor i1 %lnot62, true, !dbg !2645
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !2645
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !2645
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !2645
  store i64 %expval67, ptr %tmp60, align 8, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2668
  %12 = load i64, ptr %tmp60, align 8, !dbg !2645
  %13 = load i64, ptr %val.addr, align 8, !dbg !2669
  %conv68 = trunc i64 %13 to i32, !dbg !2670
  %arrayidx = getelementptr [8 x i32], ptr %gprs, i64 0, i64 0, !dbg !2671
  store i32 %conv68, ptr %arrayidx, align 16, !dbg !2672
  %14 = load i32, ptr %msr.addr, align 4, !dbg !2673
  %arrayidx69 = getelementptr [8 x i32], ptr %gprs, i64 0, i64 1, !dbg !2674
  store i32 %14, ptr %arrayidx69, align 4, !dbg !2675
  %15 = load i64, ptr %val.addr, align 8, !dbg !2676
  %shr = lshr i64 %15, 32, !dbg !2677
  %conv70 = trunc i64 %shr to i32, !dbg !2676
  %arrayidx71 = getelementptr [8 x i32], ptr %gprs, i64 0, i64 2, !dbg !2678
  store i32 %conv70, ptr %arrayidx71, align 8, !dbg !2679
  %arrayidx72 = getelementptr [8 x i32], ptr %gprs, i64 0, i64 7, !dbg !2680
  store i32 -1671815110, ptr %arrayidx72, align 4, !dbg !2681
  %arraydecay = getelementptr inbounds [8 x i32], ptr %gprs, i64 0, i64 0, !dbg !2682
  %call = call i32 @wrmsr_safe_regs(ptr noundef %arraydecay) #13, !dbg !2683
  call void @llvm.lifetime.end.p0(i64 32, ptr %gprs) #14, !dbg !2684
  ret i32 %call, !dbg !2685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2686 dso_local ptr @strcpy(ptr noundef, ptr noundef) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2689 dso_local i32 @rdmsr_safe_regs(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2693 dso_local i32 @wrmsr_safe_regs(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2694 dso_local void @check_enable_amd_mmconf_dmi() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2696 dso_local void @fam10h_check_enable_mmcfg() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2697 dso_local i32 @msr_clear_bit(i32 noundef, i8 noundef zeroext) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_rdrand_cpuid_bit(ptr noundef %c) #0 align 16 !dbg !388 {
entry:
  %c.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  %tmp33 = alloca i64, align 8
  %__ret_do_once42 = alloca i8, align 1
  %__ret_cond43 = alloca i8, align 1
  %__ret_once50 = alloca i8, align 1
  %tmp67 = alloca i64, align 8
  %tmp80 = alloca i32, align 4
  %tmp83 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !390, metadata !DIExpression()), !dbg !2698
  %call = call i32 @cpuid_ecx(i32 noundef 1) #13, !dbg !2699
  %conv = zext i32 %call to i64, !dbg !2699
  %and = and i64 %conv, 1073741824, !dbg !2701
  %tobool = icmp ne i64 %and, 0, !dbg !2701
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2702

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr @rdrand_force, align 1, !dbg !2703, !range !893, !noundef !894
  %tobool1 = trunc i8 %0 to i1, !dbg !2703
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2704

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !2705

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @msr_clear_bit(i32 noundef -1073672188, i8 noundef zeroext 62) #13, !dbg !2706
  %call4 = call i32 @cpuid_ecx(i32 noundef 1) #13, !dbg !2707
  %conv5 = zext i32 %call4 to i64, !dbg !2707
  %and6 = and i64 %conv5, 1073741824, !dbg !2708
  %tobool7 = icmp ne i64 %and6, 0, !dbg !2708
  br i1 %tobool7, label %if.then8, label %if.end41, !dbg !2709

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2710
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !391, metadata !DIExpression()), !dbg !2710
  store i8 1, ptr %__ret_do_once, align 1, !dbg !2710
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !2711
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !395, metadata !DIExpression()), !dbg !2711
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !2711, !range !893, !noundef !894
  %tobool9 = trunc i8 %1 to i1, !dbg !2711
  %lnot = xor i1 %tobool9, true, !dbg !2711
  %lnot10 = xor i1 %lnot, true, !dbg !2711
  %frombool = zext i1 %lnot10 to i8, !dbg !2711
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !2711
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !2711
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !398, metadata !DIExpression()), !dbg !2711
  store i8 0, ptr %__ret_once, align 1, !dbg !2711
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !2712, !range !893, !noundef !894
  %tobool11 = trunc i8 %2 to i1, !dbg !2712
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !2712

land.rhs:                                         ; preds = %if.then8
  %3 = load i8, ptr @clear_rdrand_cpuid_bit.__already_done, align 1, !dbg !2712, !range !893, !noundef !894
  %tobool13 = trunc i8 %3 to i1, !dbg !2712
  %lnot14 = xor i1 %tobool13, true, !dbg !2712
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then8
  %4 = phi i1 [ false, %if.then8 ], [ %lnot14, %land.rhs ], !dbg !2714
  %lnot15 = xor i1 %4, true, !dbg !2712
  %lnot16 = xor i1 %lnot15, true, !dbg !2712
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !2712
  %conv17 = sext i32 %lnot.ext to i64, !dbg !2712
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !2712
  %tobool18 = icmp ne i64 %expval, 0, !dbg !2712
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2711

if.then19:                                        ; preds = %land.end
  store i8 1, ptr @clear_rdrand_cpuid_bit.__already_done, align 1, !dbg !2715
  store i8 1, ptr %__ret_once, align 1, !dbg !2715
  br label %if.end20, !dbg !2715

if.end20:                                         ; preds = %if.then19, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !2711, !range !893, !noundef !894
  %tobool21 = trunc i8 %5 to i1, !dbg !2711
  %lnot22 = xor i1 %tobool21, true, !dbg !2711
  %lnot24 = xor i1 %lnot22, true, !dbg !2711
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !2711
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !2711
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !2711
  store i64 %expval27, ptr %tmp, align 8, !dbg !2712
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !2717
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !2717
  %6 = load i64, ptr %tmp, align 8, !dbg !2711
  %tobool28 = icmp ne i64 %6, 0, !dbg !2717
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !2710

if.then29:                                        ; preds = %if.end20
  br label %do.body, !dbg !2718

do.body:                                          ; preds = %if.then29
  br label %do.cond, !dbg !2720

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2720

do.end:                                           ; preds = %do.cond
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #16, !dbg !2718
  store i32 %call31, ptr %tmp30, align 4, !dbg !2720
  %7 = load i32, ptr %tmp30, align 4, !dbg !2718
  br label %if.end32, !dbg !2717

if.end32:                                         ; preds = %do.end, %if.end20
  %8 = load i8, ptr %__ret_do_once, align 1, !dbg !2710, !range !893, !noundef !894
  %tobool34 = trunc i8 %8 to i1, !dbg !2710
  %lnot35 = xor i1 %tobool34, true, !dbg !2710
  %lnot37 = xor i1 %lnot35, true, !dbg !2710
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2710
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !2710
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !2710
  store i64 %expval40, ptr %tmp33, align 8, !dbg !2717
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2722
  %9 = load i64, ptr %tmp33, align 8, !dbg !2710
  br label %return, !dbg !2723

if.end41:                                         ; preds = %if.end
  %10 = load ptr, ptr %c.addr, align 8, !dbg !2724
  call void @clear_cpu_cap(ptr noundef %10, i32 noundef 158) #13, !dbg !2725
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once42) #14, !dbg !2726
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once42, metadata !399, metadata !DIExpression()), !dbg !2726
  store i8 1, ptr %__ret_do_once42, align 1, !dbg !2726
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond43) #14, !dbg !2727
  call void @llvm.dbg.declare(metadata ptr %__ret_cond43, metadata !401, metadata !DIExpression()), !dbg !2727
  %11 = load i8, ptr %__ret_do_once42, align 1, !dbg !2727, !range !893, !noundef !894
  %tobool44 = trunc i8 %11 to i1, !dbg !2727
  %lnot45 = xor i1 %tobool44, true, !dbg !2727
  %lnot47 = xor i1 %lnot45, true, !dbg !2727
  %frombool49 = zext i1 %lnot47 to i8, !dbg !2727
  store i8 %frombool49, ptr %__ret_cond43, align 1, !dbg !2727
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once50) #14, !dbg !2727
  call void @llvm.dbg.declare(metadata ptr %__ret_once50, metadata !404, metadata !DIExpression()), !dbg !2727
  store i8 0, ptr %__ret_once50, align 1, !dbg !2727
  %12 = load i8, ptr %__ret_cond43, align 1, !dbg !2728, !range !893, !noundef !894
  %tobool51 = trunc i8 %12 to i1, !dbg !2728
  br i1 %tobool51, label %land.rhs53, label %land.end57, !dbg !2728

land.rhs53:                                       ; preds = %if.end41
  %13 = load i8, ptr @clear_rdrand_cpuid_bit.__already_done.11, align 1, !dbg !2728, !range !893, !noundef !894
  %tobool54 = trunc i8 %13 to i1, !dbg !2728
  %lnot55 = xor i1 %tobool54, true, !dbg !2728
  br label %land.end57

land.end57:                                       ; preds = %land.rhs53, %if.end41
  %14 = phi i1 [ false, %if.end41 ], [ %lnot55, %land.rhs53 ], !dbg !2730
  %lnot58 = xor i1 %14, true, !dbg !2728
  %lnot60 = xor i1 %lnot58, true, !dbg !2728
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !2728
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !2728
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !2728
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !2728
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !2727

if.then65:                                        ; preds = %land.end57
  store i8 1, ptr @clear_rdrand_cpuid_bit.__already_done.11, align 1, !dbg !2731
  store i8 1, ptr %__ret_once50, align 1, !dbg !2731
  br label %if.end66, !dbg !2731

if.end66:                                         ; preds = %if.then65, %land.end57
  %15 = load i8, ptr %__ret_once50, align 1, !dbg !2727, !range !893, !noundef !894
  %tobool68 = trunc i8 %15 to i1, !dbg !2727
  %lnot69 = xor i1 %tobool68, true, !dbg !2727
  %lnot71 = xor i1 %lnot69, true, !dbg !2727
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !2727
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !2727
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !2727
  store i64 %expval74, ptr %tmp67, align 8, !dbg !2728
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once50) #14, !dbg !2733
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond43) #14, !dbg !2733
  %16 = load i64, ptr %tmp67, align 8, !dbg !2727
  %tobool75 = icmp ne i64 %16, 0, !dbg !2733
  br i1 %tobool75, label %if.then76, label %if.end82, !dbg !2726

if.then76:                                        ; preds = %if.end66
  br label %do.body77, !dbg !2734

do.body77:                                        ; preds = %if.then76
  br label %do.cond78, !dbg !2736

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !2736

do.end79:                                         ; preds = %do.cond78
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #16, !dbg !2734
  store i32 %call81, ptr %tmp80, align 4, !dbg !2736
  %17 = load i32, ptr %tmp80, align 4, !dbg !2734
  br label %if.end82, !dbg !2733

if.end82:                                         ; preds = %do.end79, %if.end66
  %18 = load i8, ptr %__ret_do_once42, align 1, !dbg !2726, !range !893, !noundef !894
  %tobool84 = trunc i8 %18 to i1, !dbg !2726
  %lnot85 = xor i1 %tobool84, true, !dbg !2726
  %lnot87 = xor i1 %lnot85, true, !dbg !2726
  %lnot.ext88 = zext i1 %lnot87 to i32, !dbg !2726
  %conv89 = sext i32 %lnot.ext88 to i64, !dbg !2726
  %expval90 = call i64 @llvm.expect.i64(i64 %conv89, i64 0), !dbg !2726
  store i64 %expval90, ptr %tmp83, align 8, !dbg !2733
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once42) #14, !dbg !2738
  %19 = load i64, ptr %tmp83, align 8, !dbg !2726
  br label %return, !dbg !2739

return:                                           ; preds = %if.end82, %if.end32, %if.then
  ret void, !dbg !2739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fix_erratum_1386(ptr noundef %c) #0 align 16 !dbg !2740 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2742, metadata !DIExpression()), !dbg !2743
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2744
  call void @clear_cpu_cap(ptr noundef %0, i32 noundef 323) #13, !dbg !2745
  ret void, !dbg !2746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zen2_zenbleed_check(ptr noundef %c) #0 align 16 !dbg !432 {
entry:
  %c.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !434, metadata !DIExpression()), !dbg !2747
  br i1 false, label %cond.true, label %cond.false, !dbg !2748

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !2749

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2749
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !2749
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !2749
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef %arraydecay) #13, !dbg !2749
  br i1 %call, label %if.then, label %if.end, !dbg !2748

if.then:                                          ; preds = %cond.false, %cond.true
  br label %if.end40, !dbg !2751

if.end:                                           ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !2752

cond.true1:                                       ; preds = %if.end
  br i1 true, label %if.end6, label %if.then5, !dbg !2753

cond.false2:                                      ; preds = %if.end
  %2 = load ptr, ptr %c.addr, align 8, !dbg !2753
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !2753
  %arraydecay3 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !2753
  %call4 = call zeroext i1 @arch_test_bit(i64 noundef 156, ptr noundef %arraydecay3) #13, !dbg !2753
  br i1 %call4, label %if.end6, label %if.then5, !dbg !2752

if.then5:                                         ; preds = %cond.false2, %cond.true1
  br label %if.end40, !dbg !2755

if.end6:                                          ; preds = %cond.false2, %cond.true1
  %call7 = call zeroext i1 @cpu_has_zenbleed_microcode() #13, !dbg !2756
  br i1 %call7, label %if.else, label %if.then8, !dbg !2757

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !435, metadata !DIExpression()), !dbg !2758
  store i8 1, ptr %__ret_do_once, align 1, !dbg !2758
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !439, metadata !DIExpression()), !dbg !2759
  %4 = load i8, ptr %__ret_do_once, align 1, !dbg !2759, !range !893, !noundef !894
  %tobool = trunc i8 %4 to i1, !dbg !2759
  %lnot = xor i1 %tobool, true, !dbg !2759
  %lnot9 = xor i1 %lnot, true, !dbg !2759
  %frombool = zext i1 %lnot9 to i8, !dbg !2759
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !2759
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !442, metadata !DIExpression()), !dbg !2759
  store i8 0, ptr %__ret_once, align 1, !dbg !2759
  %5 = load i8, ptr %__ret_cond, align 1, !dbg !2760, !range !893, !noundef !894
  %tobool10 = trunc i8 %5 to i1, !dbg !2760
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !2760

land.rhs:                                         ; preds = %if.then8
  %6 = load i8, ptr @zen2_zenbleed_check.__already_done, align 1, !dbg !2760, !range !893, !noundef !894
  %tobool11 = trunc i8 %6 to i1, !dbg !2760
  %lnot12 = xor i1 %tobool11, true, !dbg !2760
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then8
  %7 = phi i1 [ false, %if.then8 ], [ %lnot12, %land.rhs ], !dbg !2762
  %lnot13 = xor i1 %7, true, !dbg !2760
  %lnot14 = xor i1 %lnot13, true, !dbg !2760
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !2760
  %conv = sext i32 %lnot.ext to i64, !dbg !2760
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2760
  %tobool15 = icmp ne i64 %expval, 0, !dbg !2760
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2759

if.then16:                                        ; preds = %land.end
  store i8 1, ptr @zen2_zenbleed_check.__already_done, align 1, !dbg !2763
  store i8 1, ptr %__ret_once, align 1, !dbg !2763
  br label %if.end17, !dbg !2763

if.end17:                                         ; preds = %if.then16, %land.end
  %8 = load i8, ptr %__ret_once, align 1, !dbg !2759, !range !893, !noundef !894
  %tobool18 = trunc i8 %8 to i1, !dbg !2759
  %lnot19 = xor i1 %tobool18, true, !dbg !2759
  %lnot21 = xor i1 %lnot19, true, !dbg !2759
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2759
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2759
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2759
  store i64 %expval24, ptr %tmp, align 8, !dbg !2760
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !2765
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !2765
  %9 = load i64, ptr %tmp, align 8, !dbg !2759
  %tobool25 = icmp ne i64 %9, 0, !dbg !2765
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !2758

if.then26:                                        ; preds = %if.end17
  br label %do.body, !dbg !2766

do.body:                                          ; preds = %if.then26
  br label %do.cond, !dbg !2768

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2768

do.end:                                           ; preds = %do.cond
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #16, !dbg !2766
  store i32 %call28, ptr %tmp27, align 4, !dbg !2768
  %10 = load i32, ptr %tmp27, align 4, !dbg !2766
  br label %if.end29, !dbg !2765

if.end29:                                         ; preds = %do.end, %if.end17
  %11 = load i8, ptr %__ret_do_once, align 1, !dbg !2758, !range !893, !noundef !894
  %tobool31 = trunc i8 %11 to i1, !dbg !2758
  %lnot32 = xor i1 %tobool31, true, !dbg !2758
  %lnot34 = xor i1 %lnot32, true, !dbg !2758
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !2758
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !2758
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !2758
  store i64 %expval37, ptr %tmp30, align 8, !dbg !2765
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !2770
  %12 = load i64, ptr %tmp30, align 8, !dbg !2758
  %call38 = call i32 @msr_set_bit(i32 noundef -1073672151, i8 noundef zeroext 9) #13, !dbg !2771
  br label %if.end40, !dbg !2772

if.else:                                          ; preds = %if.end6
  %call39 = call i32 @msr_clear_bit(i32 noundef -1073672151, i8 noundef zeroext 9) #13, !dbg !2773
  br label %if.end40

if.end40:                                         ; preds = %if.then, %if.then5, %if.else, %if.end29
  ret void, !dbg !2775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_has_zenbleed_microcode() #0 align 16 !dbg !2776 {
entry:
  %retval = alloca i1, align 1
  %good_rev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %good_rev) #14, !dbg !2781
  call void @llvm.dbg.declare(metadata ptr %good_rev, metadata !2780, metadata !DIExpression()), !dbg !2782
  store i32 0, ptr %good_rev, align 4, !dbg !2782
  %0 = load i8, ptr @boot_cpu_data, align 8, !dbg !2783
  %conv = zext i8 %0 to i32, !dbg !2784
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 60, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 63, label %sw.bb
    i32 96, label %sw.bb1
    i32 97, label %sw.bb1
    i32 98, label %sw.bb1
    i32 99, label %sw.bb1
    i32 100, label %sw.bb1
    i32 101, label %sw.bb1
    i32 102, label %sw.bb1
    i32 103, label %sw.bb1
    i32 104, label %sw.bb2
    i32 105, label %sw.bb2
    i32 106, label %sw.bb2
    i32 107, label %sw.bb2
    i32 108, label %sw.bb2
    i32 109, label %sw.bb2
    i32 110, label %sw.bb2
    i32 111, label %sw.bb2
    i32 112, label %sw.bb3
    i32 113, label %sw.bb3
    i32 114, label %sw.bb3
    i32 115, label %sw.bb3
    i32 116, label %sw.bb3
    i32 117, label %sw.bb3
    i32 118, label %sw.bb3
    i32 119, label %sw.bb3
    i32 120, label %sw.bb3
    i32 121, label %sw.bb3
    i32 122, label %sw.bb3
    i32 123, label %sw.bb3
    i32 124, label %sw.bb3
    i32 125, label %sw.bb3
    i32 126, label %sw.bb3
    i32 127, label %sw.bb3
    i32 160, label %sw.bb4
    i32 161, label %sw.bb4
    i32 162, label %sw.bb4
    i32 163, label %sw.bb4
    i32 164, label %sw.bb4
    i32 165, label %sw.bb4
    i32 166, label %sw.bb4
    i32 167, label %sw.bb4
    i32 168, label %sw.bb4
    i32 169, label %sw.bb4
    i32 170, label %sw.bb4
    i32 171, label %sw.bb4
    i32 172, label %sw.bb4
    i32 173, label %sw.bb4
    i32 174, label %sw.bb4
    i32 175, label %sw.bb4
  ], !dbg !2785

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 137367675, ptr %good_rev, align 4, !dbg !2786
  br label %sw.epilog, !dbg !2788

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 140509452, ptr %good_rev, align 4, !dbg !2789
  br label %sw.epilog, !dbg !2790

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 140542215, ptr %good_rev, align 4, !dbg !2791
  br label %sw.epilog, !dbg !2792

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 141561907, ptr %good_rev, align 4, !dbg !2793
  br label %sw.epilog, !dbg !2794

sw.bb4:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 144703497, ptr %good_rev, align 4, !dbg !2795
  br label %sw.epilog, !dbg !2796

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2797

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 33), align 8, !dbg !2798
  %2 = load i32, ptr %good_rev, align 4, !dbg !2800
  %cmp = icmp ult i32 %1, %2, !dbg !2801
  br i1 %cmp, label %if.then, label %if.end, !dbg !2802

if.then:                                          ; preds = %sw.epilog
  store i1 false, ptr %retval, align 1, !dbg !2803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2803

if.end:                                           ; preds = %sw.epilog
  store i1 true, ptr %retval, align 1, !dbg !2804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2804

cleanup:                                          ; preds = %if.end, %if.then, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %good_rev) #14, !dbg !2805
  %3 = load i1, ptr %retval, align 1, !dbg !2805
  ret i1 %3, !dbg !2805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2806 dso_local i32 @detect_extended_topology(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_count_order(i32 noundef %count) #5 align 16 !dbg !2809 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2814, metadata !DIExpression()), !dbg !2815
  %0 = load i32, ptr %count.addr, align 4, !dbg !2816
  %cmp = icmp eq i32 %0, 0, !dbg !2818
  br i1 %cmp, label %if.then, label %if.end, !dbg !2819

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2820
  br label %return, !dbg !2820

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !2821
  %dec = add i32 %1, -1, !dbg !2821
  store i32 %dec, ptr %count.addr, align 4, !dbg !2821
  %call = call i32 @fls(i32 noundef %dec) #13, !dbg !2822
  store i32 %call, ptr %retval, align 4, !dbg !2823
  br label %return, !dbg !2823

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2824
  ret i32 %2, !dbg !2824
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2825 dso_local void @cacheinfo_amd_init_llc_id(ptr noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @legacy_fixup_core_id(ptr noundef %c) #0 align 16 !dbg !2829 {
entry:
  %c.addr = alloca ptr, align 8
  %cus_per_node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.lifetime.start.p0(i64 4, ptr %cus_per_node) #14, !dbg !2834
  call void @llvm.dbg.declare(metadata ptr %cus_per_node, metadata !2832, metadata !DIExpression()), !dbg !2835
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2836
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !2838
  %x86 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !2838
  %2 = load i8, ptr %x86, align 1, !dbg !2838
  %conv = zext i8 %2 to i32, !dbg !2836
  %cmp = icmp sge i32 %conv, 23, !dbg !2839
  br i1 %cmp, label %if.then, label %if.end, !dbg !2840

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2841

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %c.addr, align 8, !dbg !2842
  %x86_max_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 21, !dbg !2843
  %4 = load i16, ptr %x86_max_cores, align 8, !dbg !2843
  %conv2 = zext i16 %4 to i32, !dbg !2842
  %5 = load i32, ptr @nodes_per_socket, align 4, !dbg !2844
  %div = udiv i32 %conv2, %5, !dbg !2845
  store i32 %div, ptr %cus_per_node, align 4, !dbg !2846
  %6 = load i32, ptr %cus_per_node, align 4, !dbg !2847
  %7 = load ptr, ptr %c.addr, align 8, !dbg !2848
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 28, !dbg !2849
  %8 = load i16, ptr %cpu_core_id, align 2, !dbg !2850
  %conv3 = zext i16 %8 to i32, !dbg !2850
  %rem = urem i32 %conv3, %6, !dbg !2850
  %conv4 = trunc i32 %rem to i16, !dbg !2850
  store i16 %conv4, ptr %cpu_core_id, align 2, !dbg !2850
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2851
  br label %cleanup, !dbg !2851

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cus_per_node) #14, !dbg !2851
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2851

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #4 align 16 !dbg !2852 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #14, !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %r, metadata !2855, metadata !DIExpression()), !dbg !2858
  %0 = load i32, ptr %x.addr, align 4, !dbg !2859
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #15, !dbg !2860, !srcloc !2861
  store i32 %1, ptr %r, align 4, !dbg !2860
  %2 = load i32, ptr %r, align 4, !dbg !2862
  %add = add i32 %2, 1, !dbg !2863
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #14, !dbg !2864
  ret i32 %add, !dbg !2865
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2866 dso_local i32 @numa_cpu_node(i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2870 dso_local zeroext i16 @get_llc_id(i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #5 align 16 !dbg !2873 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2877, metadata !DIExpression()), !dbg !2879
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2878, metadata !DIExpression()), !dbg !2880
  %0 = load i32, ptr %node.addr, align 4, !dbg !2881
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2881
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2881

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !2881
  %idxprom = zext i32 %2 to i64, !dbg !2881
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !2881
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !2881
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2881
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !2881
  %cmp = icmp ne i64 %3, 0, !dbg !2881
  %conv = zext i1 %cmp to i32, !dbg !2881
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2881
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !2881

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !2881
  %idxprom2 = zext i32 %5 to i64, !dbg !2881
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !2881
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !2881
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !2881
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !2881
  %cmp6 = icmp ne i64 %6, 0, !dbg !2881
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !2881

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !2881
  %idxprom9 = zext i32 %7 to i64, !dbg !2881
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !2881
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !2881
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !2881
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !2881
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !2881
  br i1 %9, label %cond.true, label %cond.false, !dbg !2881

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !2881
  %conv13 = sext i32 %10 to i64, !dbg !2881
  %11 = load i32, ptr %state.addr, align 4, !dbg !2881
  %idxprom14 = zext i32 %11 to i64, !dbg !2881
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !2881
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !2881
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !2881
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #13, !dbg !2881
  %conv18 = zext i1 %call to i32, !dbg !2881
  br label %cond.end, !dbg !2881

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !2881
  %conv19 = sext i32 %12 to i64, !dbg !2881
  %13 = load i32, ptr %state.addr, align 4, !dbg !2881
  %idxprom20 = zext i32 %13 to i64, !dbg !2881
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !2881
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !2881
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !2881
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #13, !dbg !2881
  %conv25 = zext i1 %call24 to i32, !dbg !2881
  br label %cond.end, !dbg !2881

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !2881
  ret i32 %cond, !dbg !2882
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nearby_node(i32 noundef %apicid) #0 align 16 !dbg !2883 {
entry:
  %retval = alloca i32, align 4
  %apicid.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %apicid, ptr %apicid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %apicid.addr, metadata !2885, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #14, !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2887, metadata !DIExpression()), !dbg !2891
  %0 = load i32, ptr %apicid.addr, align 4, !dbg !2892
  %sub = sub i32 %0, 1, !dbg !2894
  store i32 %sub, ptr %i, align 4, !dbg !2895
  br label %for.cond, !dbg !2896

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2897
  %cmp = icmp sge i32 %1, 0, !dbg !2899
  br i1 %cmp, label %for.body, label %for.end, !dbg !2900

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !2901
  %idxprom = sext i32 %2 to i64, !dbg !2903
  %arrayidx = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom, !dbg !2903
  %3 = load i16, ptr %arrayidx, align 2, !dbg !2903
  %conv = sext i16 %3 to i32, !dbg !2903
  store i32 %conv, ptr %node, align 4, !dbg !2904
  %4 = load i32, ptr %node, align 4, !dbg !2905
  %cmp1 = icmp ne i32 %4, -1, !dbg !2907
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !2908

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, ptr %node, align 4, !dbg !2909
  %call = call i32 @node_state(i32 noundef %5, i32 noundef 1) #13, !dbg !2909
  %tobool = icmp ne i32 %call, 0, !dbg !2909
  br i1 %tobool, label %if.then, label %if.end, !dbg !2910

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %node, align 4, !dbg !2911
  store i32 %6, ptr %retval, align 4, !dbg !2912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2912

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2913

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !2914
  %dec = add i32 %7, -1, !dbg !2914
  store i32 %dec, ptr %i, align 4, !dbg !2914
  br label %for.cond, !dbg !2915, !llvm.loop !2916

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %apicid.addr, align 4, !dbg !2918
  %add = add i32 %8, 1, !dbg !2920
  store i32 %add, ptr %i, align 4, !dbg !2921
  br label %for.cond3, !dbg !2922

for.cond3:                                        ; preds = %for.inc17, %for.end
  %9 = load i32, ptr %i, align 4, !dbg !2923
  %cmp4 = icmp slt i32 %9, 32768, !dbg !2925
  br i1 %cmp4, label %for.body6, label %for.end18, !dbg !2926

for.body6:                                        ; preds = %for.cond3
  %10 = load i32, ptr %i, align 4, !dbg !2927
  %idxprom7 = sext i32 %10 to i64, !dbg !2929
  %arrayidx8 = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom7, !dbg !2929
  %11 = load i16, ptr %arrayidx8, align 2, !dbg !2929
  %conv9 = sext i16 %11 to i32, !dbg !2929
  store i32 %conv9, ptr %node, align 4, !dbg !2930
  %12 = load i32, ptr %node, align 4, !dbg !2931
  %cmp10 = icmp ne i32 %12, -1, !dbg !2933
  br i1 %cmp10, label %land.lhs.true12, label %if.end16, !dbg !2934

land.lhs.true12:                                  ; preds = %for.body6
  %13 = load i32, ptr %node, align 4, !dbg !2935
  %call13 = call i32 @node_state(i32 noundef %13, i32 noundef 1) #13, !dbg !2935
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2935
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2936

if.then15:                                        ; preds = %land.lhs.true12
  %14 = load i32, ptr %node, align 4, !dbg !2937
  store i32 %14, ptr %retval, align 4, !dbg !2938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2938

if.end16:                                         ; preds = %land.lhs.true12, %for.body6
  br label %for.inc17, !dbg !2939

for.inc17:                                        ; preds = %if.end16
  %15 = load i32, ptr %i, align 4, !dbg !2940
  %inc = add i32 %15, 1, !dbg !2940
  store i32 %inc, ptr %i, align 4, !dbg !2940
  br label %for.cond3, !dbg !2941, !llvm.loop !2942

for.end18:                                        ; preds = %for.cond3
  %call19 = call i32 @__first_node(ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #13, !dbg !2944
  store i32 %call19, ptr %retval, align 4, !dbg !2945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2945

cleanup:                                          ; preds = %for.end18, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #14, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2946
  %16 = load i32, ptr %retval, align 4, !dbg !2946
  ret i32 %16, !dbg !2946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2947 dso_local void @numa_set_node(i32 noundef, i32 noundef) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2950 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2953, metadata !DIExpression()), !dbg !2958
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2954, metadata !DIExpression()), !dbg !2959
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !2960
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2955, metadata !DIExpression()), !dbg !2961
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2962
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2963
  %div = udiv i64 %1, 64, !dbg !2963
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2964
  store ptr %add.ptr, ptr %p, align 8, !dbg !2961
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !2965
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2956, metadata !DIExpression()), !dbg !2966
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2967
  %rem = urem i64 %2, 64, !dbg !2967
  %shl = shl i64 1, %rem, !dbg !2967
  store i64 %shl, ptr %mask, align 8, !dbg !2966
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !2968
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2957, metadata !DIExpression()), !dbg !2969
  %3 = load ptr, ptr %p, align 8, !dbg !2970
  %4 = load i64, ptr %3, align 8, !dbg !2971
  store i64 %4, ptr %val, align 8, !dbg !2969
  %5 = load i64, ptr %val, align 8, !dbg !2972
  %6 = load i64, ptr %mask, align 8, !dbg !2973
  %and = and i64 %5, %6, !dbg !2974
  %tobool = icmp ne i64 %and, 0, !dbg !2975
  %lnot = xor i1 %tobool, true, !dbg !2975
  %lnot1 = xor i1 %lnot, true, !dbg !2976
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !2977
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !2977
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !2977
  ret i1 %lnot1, !dbg !2978
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2979 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2982, metadata !DIExpression()), !dbg !2984
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2983, metadata !DIExpression()), !dbg !2985
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2986
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2987
  %div = udiv i64 %1, 64, !dbg !2987
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2988
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !2989
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2990
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2991
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !2992
  ret i1 %call, !dbg !2993
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2994 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2996, metadata !DIExpression()), !dbg !2998
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2997, metadata !DIExpression()), !dbg !2999
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3000
  %1 = load i64, ptr %size.addr, align 8, !dbg !3001
  %conv = trunc i64 %1 to i32, !dbg !3001
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !3002
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3003
  %3 = load i64, ptr %size.addr, align 8, !dbg !3003
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !3005 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3007, metadata !DIExpression()), !dbg !3009
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3008, metadata !DIExpression()), !dbg !3010
  ret i1 true, !dbg !3011
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #5 align 16 !dbg !3012 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x98 = alloca i32, align 4
  %__UNIQUE_ID___y99 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !3022, metadata !DIExpression()), !dbg !3026
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x98) #14, !dbg !3027
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x98, metadata !3023, metadata !DIExpression()), !dbg !3027
  store i32 64, ptr %__UNIQUE_ID___x98, align 4, !dbg !3027
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y99) #14, !dbg !3027
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y99, metadata !3025, metadata !DIExpression()), !dbg !3027
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !3027
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !3027
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3027
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #13, !dbg !3027
  %conv = trunc i64 %call to i32, !dbg !3027
  store i32 %conv, ptr %__UNIQUE_ID___y99, align 4, !dbg !3027
  %1 = load i32, ptr %__UNIQUE_ID___x98, align 4, !dbg !3027
  %2 = load i32, ptr %__UNIQUE_ID___y99, align 4, !dbg !3027
  %cmp = icmp ult i32 %1, %2, !dbg !3027
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3027

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x98, align 4, !dbg !3027
  br label %cond.end, !dbg !3027

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y99, align 4, !dbg !3027
  br label %cond.end, !dbg !3027

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !3027
  store i32 %cond, ptr %tmp, align 4, !dbg !3027
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y99) #14, !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x98) #14, !dbg !3028
  %5 = load i32, ptr %tmp, align 4, !dbg !3027
  ret i32 %5, !dbg !3029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #5 align 16 !dbg !3030 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3035, metadata !DIExpression()), !dbg !3040
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3036, metadata !DIExpression()), !dbg !3041
  %0 = load i64, ptr %size.addr, align 8, !dbg !3042
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3042
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3042

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3042
  %cmp = icmp ule i64 %2, 64, !dbg !3042
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3042

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3042
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3042
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3043

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !3044
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3037, metadata !DIExpression()), !dbg !3045
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !3046
  %5 = load i64, ptr %4, align 8, !dbg !3047
  %6 = load i64, ptr %size.addr, align 8, !dbg !3048
  %sub = sub i64 %6, 1, !dbg !3048
  %sub3 = sub i64 63, %sub, !dbg !3048
  %shr = lshr i64 -1, %sub3, !dbg !3048
  %and = and i64 -1, %shr, !dbg !3048
  %add = add i64 0, %and, !dbg !3048
  %and4 = and i64 %5, %add, !dbg !3049
  store i64 %and4, ptr %val, align 8, !dbg !3045
  %7 = load i64, ptr %val, align 8, !dbg !3050
  %tobool = icmp ne i64 %7, 0, !dbg !3050
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !3050

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !3051
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3051
  br i1 %9, label %cond.true5, label %cond.false, !dbg !3051

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !3051
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !3051
  %cast = trunc i64 %11 to i32, !dbg !3051
  %conv = sext i32 %cast to i64, !dbg !3051
  br label %cond.end, !dbg !3051

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !3051
  %call = call i64 @variable__ffs(i64 noundef %12) #13, !dbg !3051
  br label %cond.end, !dbg !3051

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !3051
  br label %cond.end7, !dbg !3050

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !3052
  br label %cond.end7, !dbg !3050

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !3050
  store i64 %cond8, ptr %retval, align 8, !dbg !3053
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !3054
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !3055
  %15 = load i64, ptr %size.addr, align 8, !dbg !3056
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #13, !dbg !3057
  store i64 %call9, ptr %retval, align 8, !dbg !3058
  br label %return, !dbg !3058

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !3059
  ret i64 %16, !dbg !3059
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !3060 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3064, metadata !DIExpression()), !dbg !3065
  %0 = load i64, ptr %word.addr, align 8, !dbg !3066
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !3067, !srcloc !3068
  store i64 %1, ptr %word.addr, align 8, !dbg !3067
  %2 = load i64, ptr %word.addr, align 8, !dbg !3069
  ret i64 %2, !dbg !3070
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3071 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #5 align 16 !dbg !3072 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !3074, metadata !DIExpression()), !dbg !3077
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !3075, metadata !DIExpression()), !dbg !3078
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !3076, metadata !DIExpression()), !dbg !3079
  %0 = load i32, ptr %msr.addr, align 4, !dbg !3080
  %1 = load i32, ptr %low.addr, align 4, !dbg !3081
  %2 = load i32, ptr %high.addr, align 4, !dbg !3082
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13, !dbg !3083
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #13, !dbg !3084
  br i1 %call, label %if.then, label %if.end, !dbg !3086

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !3087
  %4 = load i32, ptr %high.addr, align 4, !dbg !3088
  %conv = zext i32 %4 to i64, !dbg !3089
  %shl = shl i64 %conv, 32, !dbg !3090
  %5 = load i32, ptr %low.addr, align 4, !dbg !3091
  %conv1 = zext i32 %5 to i64, !dbg !3091
  %or = or i64 %shl, %conv1, !dbg !3092
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #13, !dbg !3093
  br label %if.end, !dbg !3093

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3094
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !3095 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !3097, metadata !DIExpression()), !dbg !3100
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !3098, metadata !DIExpression()), !dbg !3101
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !3099, metadata !DIExpression()), !dbg !3102
  %0 = load i32, ptr %msr.addr, align 4, !dbg !3103
  %1 = load i32, ptr %low.addr, align 4, !dbg !3104
  %2 = load i32, ptr %high.addr, align 4, !dbg !3105
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #14, !dbg !3106, !srcloc !3107
  ret void, !dbg !3108
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3109 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { nounwind memory(read) }
attributes #16 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!453, !454, !455, !456, !457, !458, !459, !460}
!llvm.ident = !{!461}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nodes_per_socket", scope: !2, file: !3, line: 35, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.amd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/amd\22 -D KBUILD_BASENAME=\22amd\22 -D KBUILD_MODNAME=\22amd\22 -D __KBUILD_MODNAME=kmod_amd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/amd.ll arch/x86/kernel/cpu/amd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !154, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/amd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4b1aa6c4a244609487b325ab092efc6")
!4 = !{!5, !11, !16, !27, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "align_flags", file: !12, line: 382, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32e72248bc6ddafa8bbab996ffdd88dd")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "ALIGN_VA_32", value: 1)
!15 = !DIEnumerator(name: "ALIGN_VA_64", value: 2)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !17, line: 398, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26}
!19 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!20 = !DIEnumerator(name: "N_ONLINE", value: 1)
!21 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!22 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!23 = !DIEnumerator(name: "N_MEMORY", value: 3)
!24 = !DIEnumerator(name: "N_CPU", value: 4)
!25 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!26 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spectre_v2_mitigation", file: !28, line: 510, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./arch/x86/include/asm/nospec-branch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f9617eaa9a9e58d8d33cc8c440e36ce0")
!29 = !{!30, !31, !32, !33, !34, !35, !36}
!30 = !DIEnumerator(name: "SPECTRE_V2_NONE", value: 0)
!31 = !DIEnumerator(name: "SPECTRE_V2_RETPOLINE", value: 1)
!32 = !DIEnumerator(name: "SPECTRE_V2_LFENCE", value: 2)
!33 = !DIEnumerator(name: "SPECTRE_V2_EIBRS", value: 3)
!34 = !DIEnumerator(name: "SPECTRE_V2_EIBRS_RETPOLINE", value: 4)
!35 = !DIEnumerator(name: "SPECTRE_V2_EIBRS_LFENCE", value: 5)
!36 = !DIEnumerator(name: "SPECTRE_V2_IBRS", value: 6)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tlb_infos", file: !38, line: 64, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "ENTRIES", value: 0)
!41 = !DIEnumerator(name: "NR_INFO", value: 1)
!42 = !{!43, !44, !45, !47, !46, !48, !52, !56, !59, !62, !65, !69, !71, !7, !73, !75, !84}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 4)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !53, line: 21, baseType: !54)
!53 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !55, line: 27, baseType: !7)
!55 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !53, line: 23, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !55, line: 31, baseType: !58)
!58 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!64 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !53, line: 19, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !55, line: 24, baseType: !68)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !70, line: 42, baseType: !46)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !78, line: 19, size: 64, elements: !79)
!78 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !77, file: !78, line: 19, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !38, line: 83, size: 2368, elements: !86)
!86 = !{!87, !100, !101, !102, !106, !107, !108, !109, !110, !111, !112, !120, !124, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !150, !151, !153}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !38, line: 84, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !38, line: 84, size: 32, elements: !89)
!89 = !{!90, !99}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !38, line: 90, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !38, line: 90, size: 32, elements: !92)
!92 = !{!93, !96, !97, !98}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !91, file: !38, line: 91, baseType: !94, size: 8)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !55, line: 21, baseType: !95)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !91, file: !38, line: 93, baseType: !94, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !91, file: !38, line: 95, baseType: !94, size: 8, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !91, file: !38, line: 96, baseType: !94, size: 8, offset: 24)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !88, file: !38, line: 99, baseType: !54, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !85, file: !38, line: 101, baseType: !94, size: 8, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !85, file: !38, line: 104, baseType: !44, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !85, file: !38, line: 107, baseType: !103, size: 160, offset: 96)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 5)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !85, file: !38, line: 109, baseType: !94, size: 8, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !85, file: !38, line: 110, baseType: !94, size: 8, offset: 264)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !85, file: !38, line: 112, baseType: !94, size: 8, offset: 272)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !85, file: !38, line: 113, baseType: !94, size: 8, offset: 280)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !85, file: !38, line: 115, baseType: !54, size: 32, offset: 288)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !85, file: !38, line: 117, baseType: !44, size: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !38, line: 123, baseType: !113, size: 768, offset: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !38, line: 123, size: 768, elements: !114)
!114 = !{!115, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !113, file: !38, line: 124, baseType: !116, size: 768)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 768, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 24)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !113, file: !38, line: 125, baseType: !46, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !85, file: !38, line: 127, baseType: !121, size: 128, offset: 1152)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !85, file: !38, line: 128, baseType: !125, size: 512, offset: 1280)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 512, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !85, file: !38, line: 130, baseType: !7, size: 32, offset: 1792)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !85, file: !38, line: 131, baseType: !44, size: 32, offset: 1824)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !85, file: !38, line: 133, baseType: !44, size: 32, offset: 1856)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !85, file: !38, line: 134, baseType: !44, size: 32, offset: 1888)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !85, file: !38, line: 135, baseType: !44, size: 32, offset: 1920)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !85, file: !38, line: 136, baseType: !44, size: 32, offset: 1952)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !85, file: !38, line: 137, baseType: !46, size: 64, offset: 1984)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !85, file: !38, line: 139, baseType: !56, size: 64, offset: 2048)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !85, file: !38, line: 141, baseType: !66, size: 16, offset: 2112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !85, file: !38, line: 142, baseType: !66, size: 16, offset: 2128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !85, file: !38, line: 143, baseType: !66, size: 16, offset: 2144)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !85, file: !38, line: 144, baseType: !66, size: 16, offset: 2160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !85, file: !38, line: 146, baseType: !66, size: 16, offset: 2176)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !85, file: !38, line: 148, baseType: !66, size: 16, offset: 2192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !85, file: !38, line: 150, baseType: !66, size: 16, offset: 2208)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !85, file: !38, line: 152, baseType: !66, size: 16, offset: 2224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !85, file: !38, line: 153, baseType: !66, size: 16, offset: 2240)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !85, file: !38, line: 154, baseType: !66, size: 16, offset: 2256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !85, file: !38, line: 156, baseType: !66, size: 16, offset: 2272)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !85, file: !38, line: 158, baseType: !148, size: 8, offset: 2288)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 35, baseType: !149)
!149 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !85, file: !38, line: 159, baseType: !52, size: 32, offset: 2304)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !85, file: !38, line: 161, baseType: !152, size: 8, offset: 2336)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !53, line: 17, baseType: !94)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !85, file: !38, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!154 = !{!155, !157, !169, !191, !194, !199, !201, !203, !205, !0, !207, !212, !217, !219, !222, !227, !229, !257, !262, !266, !271, !308, !313, !321, !324, !350, !355, !358, !379, !381, !386, !405, !410, !412, !417, !428, !430, !443, !448, !450}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_get_nodes_per_socket304", scope: !2, file: !3, line: 463, type: !43, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__setup_rdrand_cmdline", scope: !2, file: !3, line: 910, type: !159, isLocal: true, isDefinition: true, align: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !160, line: 324, size: 192, elements: !161)
!160 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!161 = !{!162, !163, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !159, file: !160, line: 325, baseType: !73, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !159, file: !160, line: 326, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!44, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !159, file: !160, line: 327, baseType: !44, size: 32, offset: 128)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "__cpu_dev_amd_cpu_dev", scope: !2, file: !3, line: 1309, type: !171, isLocal: true, isDefinition: true)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_dev", file: !175, line: 6, size: 576, elements: !176)
!175 = !DIFile(filename: "arch/x86/kernel/cpu/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "363c46d03d8f48b64cec5a89455862ec")
!176 = !{!177, !178, !182, !186, !187, !188, !189, !190}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "c_vendor", scope: !174, file: !175, line: 7, baseType: !73, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "c_ident", scope: !174, file: !175, line: 10, baseType: !179, size: 128, offset: 64)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 2)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "c_early_init", scope: !174, file: !175, line: 12, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !84}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "c_bsp_init", scope: !174, file: !175, line: 13, baseType: !183, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "c_init", scope: !174, file: !175, line: 14, baseType: !183, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "c_identify", scope: !174, file: !175, line: 15, baseType: !183, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "c_detect_tlb", scope: !174, file: !175, line: 16, baseType: !183, size: 64, offset: 448)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "c_x86_vendor", scope: !174, file: !175, line: 17, baseType: !44, size: 32, offset: 512)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1322, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 40, elements: !104)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1327, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 208, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 26)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_get_dr_addr_mask305", scope: !2, file: !3, line: 1347, type: !43, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_get_highest_perf306", scope: !2, file: !3, line: 1363, type: !43, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_clear_divider307", scope: !2, file: !3, line: 1390, type: !43, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "amd_dr_addr_mask", scope: !2, file: !3, line: 1311, type: !49, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "__setup_str_rdrand_cmdline", scope: !2, file: !3, line: 910, type: !209, isLocal: true, isDefinition: true, align: 8)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 56, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 7)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 903, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 48, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 6)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "rdrand_force", scope: !2, file: !3, line: 896, type: !148, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1285, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !50)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1286, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 104, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 13)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "amd_cpu_dev", scope: !2, file: !3, line: 1284, type: !173, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "__already_done", scope: !231, file: !3, line: 795, type: !148, isLocal: true, isDefinition: true)
!231 = distinct !DISubprogram(name: "early_init_amd", scope: !3, file: !3, line: 705, type: !184, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !232)
!232 = !{!233, !234, !235, !236, !238, !239, !245, !253, !256}
!233 = !DILocalVariable(name: "c", arg: 1, scope: !231, file: !3, line: 705, type: !84)
!234 = !DILocalVariable(name: "value", scope: !231, file: !3, line: 707, type: !56)
!235 = !DILocalVariable(name: "dummy", scope: !231, file: !3, line: 708, type: !52)
!236 = !DILocalVariable(name: "__err", scope: !237, file: !3, line: 715, type: !44)
!237 = distinct !DILexicalBlock(scope: !231, file: !3, line: 715, column: 2)
!238 = !DILocalVariable(name: "__val", scope: !237, file: !3, line: 715, type: !56)
!239 = !DILocalVariable(name: "val", scope: !240, file: !3, line: 755, type: !7)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 753, column: 27)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 753, column: 12)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 751, column: 7)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 750, column: 38)
!244 = distinct !DILexicalBlock(scope: !231, file: !3, line: 750, column: 6)
!245 = !DILocalVariable(name: "__ret_do_once", scope: !246, file: !3, line: 795, type: !148)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 795, column: 5)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 793, column: 28)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 793, column: 8)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 791, column: 40)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 791, column: 7)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 789, column: 40)
!252 = distinct !DILexicalBlock(scope: !231, file: !3, line: 787, column: 6)
!253 = !DILocalVariable(name: "__ret_cond", scope: !254, file: !3, line: 795, type: !148)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 795, column: 5)
!255 = distinct !DILexicalBlock(scope: !246, file: !3, line: 795, column: 5)
!256 = !DILocalVariable(name: "__ret_once", scope: !254, file: !3, line: 795, type: !148)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 795, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 600, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 75)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "amd_erratum_400", scope: !2, file: !3, line: 62, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !50)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 448, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 56)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "__already_done", scope: !273, file: !3, line: 651, type: !148, isLocal: true, isDefinition: true)
!273 = distinct !DISubprogram(name: "bsp_init_amd", scope: !3, file: !3, line: 542, type: !184, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !274)
!274 = !{!275, !276, !281, !284, !285, !286, !289, !292, !295, !296, !298, !301, !302, !304}
!275 = !DILocalVariable(name: "c", arg: 1, scope: !273, file: !3, line: 542, type: !84)
!276 = !DILocalVariable(name: "val", scope: !277, file: !3, line: 548, type: !56)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 547, column: 48)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 546, column: 7)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 544, column: 44)
!280 = distinct !DILexicalBlock(scope: !273, file: !3, line: 544, column: 6)
!281 = !DILocalVariable(name: "upperbit", scope: !282, file: !3, line: 557, type: !46)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 556, column: 22)
!283 = distinct !DILexicalBlock(scope: !273, file: !3, line: 556, column: 6)
!284 = !DILocalVariable(name: "cpuid", scope: !282, file: !3, line: 558, type: !52)
!285 = !DILocalVariable(name: "assoc", scope: !282, file: !3, line: 558, type: !52)
!286 = !DILocalVariable(name: "ecx", scope: !287, file: !3, line: 575, type: !52)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 574, column: 41)
!288 = distinct !DILexicalBlock(scope: !273, file: !3, line: 574, column: 6)
!289 = !DILocalVariable(name: "value", scope: !290, file: !3, line: 580, type: !56)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 579, column: 51)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 579, column: 13)
!292 = !DILocalVariable(name: "bit", scope: !293, file: !3, line: 589, type: !7)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 588, column: 40)
!294 = distinct !DILexicalBlock(scope: !273, file: !3, line: 586, column: 6)
!295 = !DILabel(scope: !273, name: "warn", file: !3, line: 650)
!296 = !DILocalVariable(name: "__ret_do_once", scope: !297, file: !3, line: 651, type: !148)
!297 = distinct !DILexicalBlock(scope: !273, file: !3, line: 651, column: 2)
!298 = !DILocalVariable(name: "__ret_cond", scope: !299, file: !3, line: 651, type: !148)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 651, column: 2)
!300 = distinct !DILexicalBlock(scope: !297, file: !3, line: 651, column: 2)
!301 = !DILocalVariable(name: "__ret_once", scope: !299, file: !3, line: 651, type: !148)
!302 = !DILocalVariable(name: "__ret_warn_on", scope: !303, file: !3, line: 651, type: !44)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 651, column: 2)
!304 = !DILocalVariable(name: "__flags", scope: !305, file: !3, line: 651, type: !44)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 651, column: 2)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 651, column: 2)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 651, column: 2)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 651, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 224, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 28)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_read287", scope: !315, file: !316, line: 399, type: !43, isLocal: true, isDefinition: true)
!315 = distinct !DISubprogram(name: "apic_read", scope: !316, file: !316, line: 397, type: !317, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!316 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!317 = !DISubroutineType(types: !318)
!318 = !{!52, !52}
!319 = !{!320}
!320 = !DILocalVariable(name: "reg", arg: 1, scope: !315, file: !316, line: 397, type: !52)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 837, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 56, elements: !210)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "__already_done", scope: !326, file: !3, line: 109, type: !148, isLocal: true, isDefinition: true)
!326 = distinct !DISubprogram(name: "rdmsrl_amd_safe", scope: !3, file: !3, line: 104, type: !327, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!327 = !DISubroutineType(types: !328)
!328 = !{!44, !7, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!330 = !{!331, !332, !333, !337, !338, !340, !343, !344, !346}
!331 = !DILocalVariable(name: "msr", arg: 1, scope: !326, file: !3, line: 104, type: !7)
!332 = !DILocalVariable(name: "p", arg: 2, scope: !326, file: !3, line: 104, type: !329)
!333 = !DILocalVariable(name: "gprs", scope: !326, file: !3, line: 106, type: !334)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DILocalVariable(name: "err", scope: !326, file: !3, line: 107, type: !44)
!338 = !DILocalVariable(name: "__ret_do_once", scope: !339, file: !3, line: 109, type: !148)
!339 = distinct !DILexicalBlock(scope: !326, file: !3, line: 109, column: 2)
!340 = !DILocalVariable(name: "__ret_cond", scope: !341, file: !3, line: 109, type: !148)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 109, column: 2)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 109, column: 2)
!343 = !DILocalVariable(name: "__ret_once", scope: !341, file: !3, line: 109, type: !148)
!344 = !DILocalVariable(name: "__ret_warn_on", scope: !345, file: !3, line: 109, type: !44)
!345 = distinct !DILexicalBlock(scope: !342, file: !3, line: 109, column: 2)
!346 = !DILocalVariable(name: "__flags", scope: !347, file: !3, line: 109, type: !44)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 109, column: 2)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 109, column: 2)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 109, column: 2)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 248, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 31)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !122)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "__already_done", scope: !360, file: !3, line: 126, type: !148, isLocal: true, isDefinition: true)
!360 = distinct !DISubprogram(name: "wrmsrl_amd_safe", scope: !3, file: !3, line: 122, type: !361, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!44, !7, !58}
!363 = !{!364, !365, !366, !367, !369, !372, !373, !375}
!364 = !DILocalVariable(name: "msr", arg: 1, scope: !360, file: !3, line: 122, type: !7)
!365 = !DILocalVariable(name: "val", arg: 2, scope: !360, file: !3, line: 122, type: !58)
!366 = !DILocalVariable(name: "gprs", scope: !360, file: !3, line: 124, type: !334)
!367 = !DILocalVariable(name: "__ret_do_once", scope: !368, file: !3, line: 126, type: !148)
!368 = distinct !DILexicalBlock(scope: !360, file: !3, line: 126, column: 2)
!369 = !DILocalVariable(name: "__ret_cond", scope: !370, file: !3, line: 126, type: !148)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 126, column: 2)
!371 = distinct !DILexicalBlock(scope: !368, file: !3, line: 126, column: 2)
!372 = !DILocalVariable(name: "__ret_once", scope: !370, file: !3, line: 126, type: !148)
!373 = !DILocalVariable(name: "__ret_warn_on", scope: !374, file: !3, line: 126, type: !44)
!374 = distinct !DILexicalBlock(scope: !371, file: !3, line: 126, column: 2)
!375 = !DILocalVariable(name: "__flags", scope: !376, file: !3, line: 126, type: !44)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 126, column: 2)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 126, column: 2)
!378 = distinct !DILexicalBlock(scope: !374, file: !3, line: 126, column: 2)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !357, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "amd_erratum_383", scope: !2, file: !3, line: 66, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 96, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 3)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "__already_done", scope: !388, file: !3, line: 936, type: !148, isLocal: true, isDefinition: true)
!388 = distinct !DISubprogram(name: "clear_rdrand_cpuid_bit", scope: !3, file: !3, line: 912, type: !184, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!389 = !{!390, !391, !395, !398, !399, !401, !404}
!390 = !DILocalVariable(name: "c", arg: 1, scope: !388, file: !3, line: 912, type: !84)
!391 = !DILocalVariable(name: "__ret_do_once", scope: !392, file: !3, line: 936, type: !148)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 936, column: 3)
!393 = distinct !DILexicalBlock(scope: !394, file: !3, line: 935, column: 30)
!394 = distinct !DILexicalBlock(scope: !388, file: !3, line: 935, column: 6)
!395 = !DILocalVariable(name: "__ret_cond", scope: !396, file: !3, line: 936, type: !148)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 936, column: 3)
!397 = distinct !DILexicalBlock(scope: !392, file: !3, line: 936, column: 3)
!398 = !DILocalVariable(name: "__ret_once", scope: !396, file: !3, line: 936, type: !148)
!399 = !DILocalVariable(name: "__ret_do_once", scope: !400, file: !3, line: 941, type: !148)
!400 = distinct !DILexicalBlock(scope: !388, file: !3, line: 941, column: 2)
!401 = !DILocalVariable(name: "__ret_cond", scope: !402, file: !3, line: 941, type: !148)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 941, column: 2)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 941, column: 2)
!404 = !DILocalVariable(name: "__ret_once", scope: !402, file: !3, line: 941, type: !148)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !3, line: 936, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 896, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 112)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "__already_done", scope: !388, file: !3, line: 941, type: !148, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !3, line: 941, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 880, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 110)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "__already_done", scope: !419, file: !3, line: 1040, type: !148, isLocal: true, isDefinition: true)
!419 = distinct !DISubprogram(name: "init_amd_zen1", scope: !3, file: !3, line: 1020, type: !184, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!420 = !{!421, !422, !424, !427}
!421 = !DILocalVariable(name: "c", arg: 1, scope: !419, file: !3, line: 1020, type: !84)
!422 = !DILocalVariable(name: "__ret_do_once", scope: !423, file: !3, line: 1040, type: !148)
!423 = distinct !DILexicalBlock(scope: !419, file: !3, line: 1040, column: 2)
!424 = !DILocalVariable(name: "__ret_cond", scope: !425, file: !3, line: 1040, type: !148)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 1040, column: 2)
!426 = distinct !DILexicalBlock(scope: !423, file: !3, line: 1040, column: 2)
!427 = !DILocalVariable(name: "__ret_once", scope: !425, file: !3, line: 1040, type: !148)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1040, type: !125, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "__already_done", scope: !432, file: !3, line: 1075, type: !148, isLocal: true, isDefinition: true)
!432 = distinct !DISubprogram(name: "zen2_zenbleed_check", scope: !3, file: !3, line: 1066, type: !184, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!433 = !{!434, !435, !439, !442}
!434 = !DILocalVariable(name: "c", arg: 1, scope: !432, file: !3, line: 1066, type: !84)
!435 = !DILocalVariable(name: "__ret_do_once", scope: !436, file: !3, line: 1075, type: !148)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 1075, column: 3)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 1074, column: 37)
!438 = distinct !DILexicalBlock(scope: !432, file: !3, line: 1074, column: 6)
!439 = !DILocalVariable(name: "__ret_cond", scope: !440, file: !3, line: 1075, type: !148)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 1075, column: 3)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 1075, column: 3)
!442 = !DILocalVariable(name: "__ret_once", scope: !440, file: !3, line: 1075, type: !148)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1075, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 536, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 67)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "amd_erratum_1485", scope: !2, file: !3, line: 69, type: !264, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "amd_msr_dr_addr_masks", scope: !2, file: !3, line: 1313, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !50)
!453 = !{i32 7, !"Dwarf Version", i32 5}
!454 = !{i32 2, !"Debug Info Version", i32 3}
!455 = !{i32 1, !"wchar_size", i32 2}
!456 = !{i32 8, !"cf-protection-branch", i32 1}
!457 = !{i32 4, !"function_return_thunk_extern", i32 1}
!458 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!459 = !{i32 1, !"Code Model", i32 2}
!460 = !{i32 1, !"override-stack-alignment", i32 8}
!461 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!462 = distinct !DISubprogram(name: "amd_get_nodes_per_socket", scope: !3, file: !3, line: 459, type: !463, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!463 = !DISubroutineType(types: !464)
!464 = !{!52}
!465 = !DILocation(line: 461, column: 9, scope: !462)
!466 = !DILocation(line: 461, column: 2, scope: !462)
!467 = distinct !DISubprogram(name: "rdrand_cmdline", scope: !3, file: !3, line: 898, type: !165, scopeLine: 899, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!468 = !{!469}
!469 = !DILocalVariable(name: "str", arg: 1, scope: !467, file: !3, line: 898, type: !167)
!470 = !DILocation(line: 898, column: 40, scope: !467)
!471 = !DILocation(line: 900, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 900, column: 6)
!473 = !DILocation(line: 900, column: 6, scope: !467)
!474 = !DILocation(line: 901, column: 3, scope: !472)
!475 = !DILocation(line: 903, column: 14, scope: !476)
!476 = distinct !DILexicalBlock(scope: !467, file: !3, line: 903, column: 6)
!477 = !DILocation(line: 903, column: 7, scope: !476)
!478 = !DILocation(line: 903, column: 6, scope: !467)
!479 = !DILocation(line: 904, column: 16, scope: !476)
!480 = !DILocation(line: 904, column: 3, scope: !476)
!481 = !DILocation(line: 906, column: 3, scope: !476)
!482 = !DILocation(line: 908, column: 2, scope: !467)
!483 = !DILocation(line: 909, column: 1, scope: !467)
!484 = distinct !DISubprogram(name: "init_spectral_chicken", scope: !3, file: !3, line: 990, type: !184, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!485 = !{!486, !487}
!486 = !DILocalVariable(name: "c", arg: 1, scope: !484, file: !3, line: 990, type: !84)
!487 = !DILocalVariable(name: "value", scope: !484, file: !3, line: 993, type: !56)
!488 = !DILocation(line: 990, column: 48, scope: !484)
!489 = !DILocation(line: 993, column: 2, scope: !484)
!490 = !DILocation(line: 993, column: 6, scope: !484)
!491 = !DILocation(line: 1003, column: 42, scope: !492)
!492 = distinct !DILexicalBlock(scope: !484, file: !3, line: 1003, column: 6)
!493 = !DILocation(line: 1003, column: 7, scope: !492)
!494 = !DILocation(line: 1003, column: 6, scope: !484)
!495 = !DILocation(line: 1003, column: 45, scope: !492)
!496 = !DILocation(line: 1004, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 1004, column: 7)
!498 = distinct !DILexicalBlock(scope: !492, file: !3, line: 1003, column: 80)
!499 = !DILocation(line: 1004, column: 7, scope: !498)
!500 = !DILocation(line: 1005, column: 10, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 1004, column: 56)
!502 = !DILocation(line: 1006, column: 43, scope: !501)
!503 = !DILocation(line: 1006, column: 4, scope: !501)
!504 = !DILocation(line: 1007, column: 3, scope: !501)
!505 = !DILocation(line: 1008, column: 2, scope: !498)
!506 = !DILocation(line: 1010, column: 1, scope: !484)
!507 = distinct !DISubprogram(name: "arch_test_bit", scope: !508, file: !508, line: 237, type: !509, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !514)
!508 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!509 = !DISubroutineType(types: !510)
!510 = !{!148, !46, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!514 = !{!515, !516}
!515 = !DILocalVariable(name: "nr", arg: 1, scope: !507, file: !508, line: 237, type: !46)
!516 = !DILocalVariable(name: "addr", arg: 2, scope: !507, file: !508, line: 237, type: !511)
!517 = !DILocation(line: 237, column: 29, scope: !507)
!518 = !DILocation(line: 237, column: 63, scope: !507)
!519 = !DILocation(line: 239, column: 30, scope: !507)
!520 = !DILocation(line: 239, column: 9, scope: !507)
!521 = !DILocation(line: 239, column: 54, scope: !507)
!522 = !DILocation(line: 239, column: 58, scope: !507)
!523 = !DILocation(line: 239, column: 36, scope: !507)
!524 = !DILocation(line: 240, column: 26, scope: !507)
!525 = !DILocation(line: 240, column: 30, scope: !507)
!526 = !DILocation(line: 240, column: 8, scope: !507)
!527 = !DILocation(line: 239, column: 2, scope: !507)
!528 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !529, file: !529, line: 281, type: !327, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!529 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!530 = !{!531, !532, !533}
!531 = !DILocalVariable(name: "msr", arg: 1, scope: !528, file: !529, line: 281, type: !7)
!532 = !DILocalVariable(name: "p", arg: 2, scope: !528, file: !529, line: 281, type: !329)
!533 = !DILocalVariable(name: "err", scope: !528, file: !529, line: 283, type: !44)
!534 = !DILocation(line: 281, column: 44, scope: !528)
!535 = !DILocation(line: 281, column: 69, scope: !528)
!536 = !DILocation(line: 283, column: 2, scope: !528)
!537 = !DILocation(line: 283, column: 6, scope: !528)
!538 = !DILocation(line: 285, column: 28, scope: !528)
!539 = !DILocation(line: 285, column: 7, scope: !528)
!540 = !DILocation(line: 285, column: 3, scope: !528)
!541 = !DILocation(line: 285, column: 5, scope: !528)
!542 = !DILocation(line: 286, column: 9, scope: !528)
!543 = !DILocation(line: 287, column: 1, scope: !528)
!544 = !DILocation(line: 286, column: 2, scope: !528)
!545 = distinct !DISubprogram(name: "wrmsrl_safe", scope: !529, file: !529, line: 303, type: !546, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!44, !52, !56}
!548 = !{!549, !550}
!549 = !DILocalVariable(name: "msr", arg: 1, scope: !545, file: !529, line: 303, type: !52)
!550 = !DILocalVariable(name: "val", arg: 2, scope: !545, file: !529, line: 303, type: !56)
!551 = !DILocation(line: 303, column: 35, scope: !545)
!552 = !DILocation(line: 303, column: 44, scope: !545)
!553 = !DILocation(line: 305, column: 20, scope: !545)
!554 = !DILocation(line: 305, column: 30, scope: !545)
!555 = !DILocation(line: 305, column: 25, scope: !545)
!556 = !DILocation(line: 305, column: 42, scope: !545)
!557 = !DILocation(line: 305, column: 46, scope: !545)
!558 = !DILocation(line: 305, column: 36, scope: !545)
!559 = !DILocation(line: 305, column: 9, scope: !545)
!560 = !DILocation(line: 305, column: 2, scope: !545)
!561 = distinct !DISubprogram(name: "amd_set_dr_addr_mask", scope: !3, file: !3, line: 1320, type: !562, scopeLine: 1321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !46, !7}
!564 = !{!565, !566, !567, !568, !571, !575, !577, !580, !583, !587, !589, !592}
!565 = !DILocalVariable(name: "mask", arg: 1, scope: !561, file: !3, line: 1320, type: !46)
!566 = !DILocalVariable(name: "dr", arg: 2, scope: !561, file: !3, line: 1320, type: !7)
!567 = !DILocalVariable(name: "cpu", scope: !561, file: !3, line: 1322, type: !44)
!568 = !DILocalVariable(name: "pscr_ret__", scope: !569, file: !3, line: 1322, type: !44)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1322, column: 12)
!570 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1322, column: 12)
!571 = !DILocalVariable(name: "__vpp_verify", scope: !572, file: !3, line: 1322, type: !573)
!572 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1322, column: 12)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!575 = !DILocalVariable(name: "pfo_val__", scope: !576, file: !3, line: 1322, type: !52)
!576 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1322, column: 12)
!577 = !DILocalVariable(name: "__ret_warn_on", scope: !578, file: !3, line: 1327, type: !44)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 1327, column: 6)
!579 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1327, column: 6)
!580 = !DILocalVariable(name: "__flags", scope: !581, file: !3, line: 1327, type: !44)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1327, column: 6)
!582 = distinct !DILexicalBlock(scope: !578, file: !3, line: 1327, column: 6)
!583 = !DILocalVariable(name: "__vpp_verify", scope: !584, file: !3, line: 1330, type: !573)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 1330, column: 6)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 1330, column: 6)
!586 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1330, column: 6)
!587 = !DILocalVariable(name: "__ptr", scope: !588, file: !3, line: 1330, type: !46)
!588 = distinct !DILexicalBlock(scope: !585, file: !3, line: 1330, column: 6)
!589 = !DILocalVariable(name: "__vpp_verify", scope: !590, file: !3, line: 1334, type: !573)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 1334, column: 2)
!591 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1334, column: 2)
!592 = !DILocalVariable(name: "__ptr", scope: !593, file: !3, line: 1334, type: !46)
!593 = distinct !DILexicalBlock(scope: !591, file: !3, line: 1334, column: 2)
!594 = !DILocation(line: 1320, column: 41, scope: !561)
!595 = !DILocation(line: 1320, column: 60, scope: !561)
!596 = !DILocation(line: 1322, column: 2, scope: !561)
!597 = !DILocation(line: 1322, column: 6, scope: !561)
!598 = !DILocation(line: 1322, column: 12, scope: !570)
!599 = !DILocation(line: 1322, column: 12, scope: !569)
!600 = !DILocation(line: 1322, column: 12, scope: !572)
!601 = !DILocation(line: 1322, column: 12, scope: !576)
!602 = !{i64 2154970061}
!603 = !DILocation(line: 1324, column: 6, scope: !561)
!604 = !DILocation(line: 1324, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1324, column: 6)
!606 = !DILocation(line: 1325, column: 3, scope: !605)
!607 = !DILocation(line: 1327, column: 6, scope: !578)
!608 = !DILocation(line: 1327, column: 6, scope: !582)
!609 = !DILocation(line: 1327, column: 6, scope: !581)
!610 = !DILocation(line: 1327, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !581, file: !3, line: 1327, column: 6)
!612 = !DILocation(line: 1327, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !581, file: !3, line: 1327, column: 6)
!614 = !{i64 2154988322, i64 2154988351, i64 2154988397, i64 2154988455, i64 2154988509, i64 2154988563, i64 2154988618, i64 2154988649, i64 2154988957, i64 2154988963, i64 2154989010, i64 2154989033, i64 2154989059}
!615 = !DILocation(line: 1327, column: 6, scope: !616)
!616 = distinct !DILexicalBlock(scope: !581, file: !3, line: 1327, column: 6)
!617 = !DILocation(line: 1327, column: 6, scope: !579)
!618 = !DILocation(line: 1327, column: 6, scope: !561)
!619 = !DILocation(line: 1328, column: 3, scope: !579)
!620 = !DILocation(line: 1330, column: 6, scope: !585)
!621 = !DILocation(line: 1330, column: 6, scope: !584)
!622 = !DILocation(line: 1330, column: 6, scope: !588)
!623 = !DILocation(line: 1330, column: 37, scope: !586)
!624 = !DILocation(line: 1330, column: 6, scope: !586)
!625 = !DILocation(line: 1330, column: 44, scope: !586)
!626 = !DILocation(line: 1330, column: 41, scope: !586)
!627 = !DILocation(line: 1330, column: 6, scope: !561)
!628 = !DILocation(line: 1331, column: 3, scope: !586)
!629 = !DILocation(line: 1333, column: 30, scope: !561)
!630 = !DILocation(line: 1333, column: 8, scope: !561)
!631 = !DILocation(line: 1333, column: 35, scope: !561)
!632 = !DILocation(line: 1333, column: 2, scope: !561)
!633 = !DILocation(line: 1334, column: 39, scope: !561)
!634 = !DILocation(line: 1334, column: 2, scope: !591)
!635 = !DILocation(line: 1334, column: 2, scope: !590)
!636 = !DILocation(line: 1334, column: 2, scope: !593)
!637 = !DILocation(line: 1334, column: 33, scope: !561)
!638 = !DILocation(line: 1334, column: 2, scope: !561)
!639 = !DILocation(line: 1334, column: 37, scope: !561)
!640 = !DILocation(line: 1335, column: 1, scope: !561)
!641 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !642, file: !642, line: 313, type: !643, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!642 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!643 = !DISubroutineType(types: !644)
!644 = !{null, !73}
!645 = !{!646}
!646 = !DILocalVariable(name: "op", arg: 1, scope: !641, file: !642, line: 313, type: !73)
!647 = !DILocation(line: 313, column: 66, scope: !641)
!648 = !DILocation(line: 313, column: 72, scope: !641)
!649 = distinct !DISubprogram(name: "_static_cpu_has", scope: !650, file: !650, line: 173, type: !651, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!650 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!651 = !DISubroutineType(types: !652)
!652 = !{!148, !66}
!653 = !{!654, !655, !656}
!654 = !DILocalVariable(name: "bit", arg: 1, scope: !649, file: !650, line: 173, type: !66)
!655 = !DILabel(scope: !649, name: "t_yes", file: !650, line: 187)
!656 = !DILabel(scope: !649, name: "t_no", file: !650, line: 189)
!657 = !DILocation(line: 173, column: 49, scope: !649)
!658 = !DILocation(line: 183, column: 24, scope: !649)
!659 = !DILocation(line: 184, column: 30, scope: !649)
!660 = !DILocation(line: 184, column: 34, scope: !649)
!661 = !DILocation(line: 184, column: 26, scope: !649)
!662 = !DILocation(line: 185, column: 70, scope: !649)
!663 = !DILocation(line: 185, column: 74, scope: !649)
!664 = !DILocation(line: 185, column: 25, scope: !649)
!665 = !DILocation(line: 175, column: 2, scope: !649)
!666 = !{i64 2149330753, i64 2149330786, i64 2149330792, i64 2149330808, i64 2149330827, i64 2149330858, i64 2149331811, i64 2149330400, i64 2149331817, i64 2149331865, i64 2149331929, i64 2149331993, i64 2149332050, i64 2149332257, i64 2149332305, i64 2149332369, i64 2149332433, i64 2149332490, i64 2149330518, i64 2149330543, i64 2149332700, i64 2149332828, i64 2149332761, i64 2149332842, i64 2149332856, i64 2149332972, i64 2149332917, i64 2149332986, i64 2149330677, i64 786338, i64 786378, i64 786387, i64 786437, i64 786458, i64 786478}
!667 = !DILocation(line: 187, column: 1, scope: !649)
!668 = !DILocation(line: 188, column: 2, scope: !649)
!669 = !DILocation(line: 189, column: 1, scope: !649)
!670 = !DILocation(line: 190, column: 2, scope: !649)
!671 = !DILocation(line: 191, column: 1, scope: !649)
!672 = distinct !DISubprogram(name: "wrmsr", scope: !529, file: !529, line: 252, type: !673, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !7, !52, !52}
!675 = !{!676, !677, !678}
!676 = !DILocalVariable(name: "msr", arg: 1, scope: !672, file: !529, line: 252, type: !7)
!677 = !DILocalVariable(name: "low", arg: 2, scope: !672, file: !529, line: 252, type: !52)
!678 = !DILocalVariable(name: "high", arg: 3, scope: !672, file: !529, line: 252, type: !52)
!679 = !DILocation(line: 252, column: 39, scope: !672)
!680 = !DILocation(line: 252, column: 48, scope: !672)
!681 = !DILocation(line: 252, column: 57, scope: !672)
!682 = !DILocation(line: 254, column: 19, scope: !672)
!683 = !DILocation(line: 254, column: 24, scope: !672)
!684 = !DILocation(line: 254, column: 29, scope: !672)
!685 = !DILocation(line: 254, column: 2, scope: !672)
!686 = !DILocation(line: 255, column: 1, scope: !672)
!687 = distinct !DISubprogram(name: "amd_get_dr_addr_mask", scope: !3, file: !3, line: 1337, type: !688, scopeLine: 1338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!46, !7}
!690 = !{!691, !692, !695, !698, !701, !703, !706, !708}
!691 = !DILocalVariable(name: "dr", arg: 1, scope: !687, file: !3, line: 1337, type: !7)
!692 = !DILocalVariable(name: "__ret_warn_on", scope: !693, file: !3, line: 1342, type: !44)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 1342, column: 6)
!694 = distinct !DILexicalBlock(scope: !687, file: !3, line: 1342, column: 6)
!695 = !DILocalVariable(name: "__flags", scope: !696, file: !3, line: 1342, type: !44)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 1342, column: 6)
!697 = distinct !DILexicalBlock(scope: !693, file: !3, line: 1342, column: 6)
!698 = !DILocalVariable(name: "__vpp_verify", scope: !699, file: !3, line: 1345, type: !573)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 1345, column: 9)
!700 = distinct !DILexicalBlock(scope: !687, file: !3, line: 1345, column: 9)
!701 = !DILocalVariable(name: "__ptr", scope: !702, file: !3, line: 1345, type: !46)
!702 = distinct !DILexicalBlock(scope: !700, file: !3, line: 1345, column: 9)
!703 = !DILocalVariable(name: "pscr_ret__", scope: !704, file: !3, line: 1345, type: !44)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 1345, column: 9)
!705 = distinct !DILexicalBlock(scope: !702, file: !3, line: 1345, column: 9)
!706 = !DILocalVariable(name: "__vpp_verify", scope: !707, file: !3, line: 1345, type: !573)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 1345, column: 9)
!708 = !DILocalVariable(name: "pfo_val__", scope: !709, file: !3, line: 1345, type: !52)
!709 = distinct !DILexicalBlock(scope: !704, file: !3, line: 1345, column: 9)
!710 = !DILocation(line: 1337, column: 49, scope: !687)
!711 = !DILocation(line: 1339, column: 6, scope: !687)
!712 = !DILocation(line: 1339, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !687, file: !3, line: 1339, column: 6)
!714 = !DILocation(line: 1340, column: 3, scope: !713)
!715 = !DILocation(line: 1342, column: 6, scope: !693)
!716 = !DILocation(line: 1342, column: 6, scope: !697)
!717 = !DILocation(line: 1342, column: 6, scope: !696)
!718 = !DILocation(line: 1342, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !696, file: !3, line: 1342, column: 6)
!720 = !DILocation(line: 1342, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !696, file: !3, line: 1342, column: 6)
!722 = !{i64 2155012604, i64 2155012633, i64 2155012679, i64 2155012737, i64 2155012791, i64 2155012845, i64 2155012900, i64 2155012931, i64 2155013239, i64 2155013245, i64 2155013292, i64 2155013315, i64 2155013341}
!723 = !DILocation(line: 1342, column: 6, scope: !724)
!724 = distinct !DILexicalBlock(scope: !696, file: !3, line: 1342, column: 6)
!725 = !DILocation(line: 1342, column: 6, scope: !694)
!726 = !DILocation(line: 1342, column: 6, scope: !687)
!727 = !DILocation(line: 1343, column: 3, scope: !694)
!728 = !DILocation(line: 1345, column: 9, scope: !700)
!729 = !DILocation(line: 1345, column: 9, scope: !699)
!730 = !DILocation(line: 1345, column: 9, scope: !702)
!731 = !DILocation(line: 1345, column: 9, scope: !705)
!732 = !DILocation(line: 1345, column: 9, scope: !704)
!733 = !DILocation(line: 1345, column: 9, scope: !707)
!734 = !DILocation(line: 1345, column: 9, scope: !709)
!735 = !{i64 2155024706}
!736 = !DILocation(line: 1345, column: 9, scope: !687)
!737 = !DILocation(line: 1345, column: 2, scope: !687)
!738 = !DILocation(line: 1346, column: 1, scope: !687)
!739 = distinct !DISubprogram(name: "amd_get_highest_perf", scope: !3, file: !3, line: 1349, type: !463, scopeLine: 1350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !740)
!740 = !{!741}
!741 = !DILocalVariable(name: "c", scope: !739, file: !3, line: 1351, type: !84)
!742 = !DILocation(line: 1351, column: 2, scope: !739)
!743 = !DILocation(line: 1351, column: 22, scope: !739)
!744 = !DILocation(line: 1353, column: 6, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !3, line: 1353, column: 6)
!746 = !DILocation(line: 1353, column: 9, scope: !745)
!747 = !DILocation(line: 1353, column: 13, scope: !745)
!748 = !DILocation(line: 1353, column: 21, scope: !745)
!749 = !DILocation(line: 1353, column: 26, scope: !745)
!750 = !DILocation(line: 1353, column: 29, scope: !745)
!751 = !DILocation(line: 1353, column: 39, scope: !745)
!752 = !DILocation(line: 1353, column: 47, scope: !745)
!753 = !DILocation(line: 1353, column: 50, scope: !745)
!754 = !DILocation(line: 1353, column: 53, scope: !745)
!755 = !DILocation(line: 1353, column: 63, scope: !745)
!756 = !DILocation(line: 1353, column: 71, scope: !745)
!757 = !DILocation(line: 1354, column: 12, scope: !745)
!758 = !DILocation(line: 1354, column: 15, scope: !745)
!759 = !DILocation(line: 1354, column: 25, scope: !745)
!760 = !DILocation(line: 1354, column: 33, scope: !745)
!761 = !DILocation(line: 1354, column: 36, scope: !745)
!762 = !DILocation(line: 1354, column: 39, scope: !745)
!763 = !DILocation(line: 1354, column: 49, scope: !745)
!764 = !DILocation(line: 1353, column: 6, scope: !739)
!765 = !DILocation(line: 1355, column: 3, scope: !745)
!766 = !DILocation(line: 1357, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !739, file: !3, line: 1357, column: 6)
!768 = !DILocation(line: 1357, column: 9, scope: !767)
!769 = !DILocation(line: 1357, column: 13, scope: !767)
!770 = !DILocation(line: 1357, column: 21, scope: !767)
!771 = !DILocation(line: 1357, column: 26, scope: !767)
!772 = !DILocation(line: 1357, column: 29, scope: !767)
!773 = !DILocation(line: 1357, column: 39, scope: !767)
!774 = !DILocation(line: 1357, column: 47, scope: !767)
!775 = !DILocation(line: 1357, column: 50, scope: !767)
!776 = !DILocation(line: 1357, column: 53, scope: !767)
!777 = !DILocation(line: 1357, column: 63, scope: !767)
!778 = !DILocation(line: 1357, column: 71, scope: !767)
!779 = !DILocation(line: 1358, column: 12, scope: !767)
!780 = !DILocation(line: 1358, column: 15, scope: !767)
!781 = !DILocation(line: 1358, column: 25, scope: !767)
!782 = !DILocation(line: 1358, column: 33, scope: !767)
!783 = !DILocation(line: 1358, column: 36, scope: !767)
!784 = !DILocation(line: 1358, column: 39, scope: !767)
!785 = !DILocation(line: 1358, column: 49, scope: !767)
!786 = !DILocation(line: 1357, column: 6, scope: !739)
!787 = !DILocation(line: 1359, column: 3, scope: !767)
!788 = !DILocation(line: 1361, column: 2, scope: !739)
!789 = !DILocation(line: 1362, column: 1, scope: !739)
!790 = distinct !DISubprogram(name: "amd_check_microcode", scope: !3, file: !3, line: 1372, type: !791, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!791 = !DISubroutineType(types: !792)
!792 = !{null}
!793 = !DILocation(line: 1374, column: 20, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 1374, column: 6)
!795 = !DILocation(line: 1374, column: 6, scope: !794)
!796 = !DILocation(line: 1374, column: 31, scope: !794)
!797 = !DILocation(line: 1374, column: 6, scope: !790)
!798 = !DILocation(line: 1375, column: 3, scope: !794)
!799 = !DILocation(line: 1377, column: 6, scope: !790)
!800 = !DILocation(line: 1377, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !790, file: !3, line: 1377, column: 6)
!802 = !DILocation(line: 1378, column: 3, scope: !801)
!803 = !DILocation(line: 1379, column: 1, scope: !790)
!804 = distinct !DISubprogram(name: "on_each_cpu", scope: !805, file: !805, line: 69, type: !806, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!805 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!806 = !DISubroutineType(types: !807)
!807 = !{null, !808, !43, !44}
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !805, line: 17, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !43}
!812 = !{!813, !814, !815}
!813 = !DILocalVariable(name: "func", arg: 1, scope: !804, file: !805, line: 69, type: !808)
!814 = !DILocalVariable(name: "info", arg: 2, scope: !804, file: !805, line: 69, type: !43)
!815 = !DILocalVariable(name: "wait", arg: 3, scope: !804, file: !805, line: 69, type: !44)
!816 = !DILocation(line: 69, column: 48, scope: !804)
!817 = !DILocation(line: 69, column: 60, scope: !804)
!818 = !DILocation(line: 69, column: 70, scope: !804)
!819 = !DILocation(line: 71, column: 30, scope: !804)
!820 = !DILocation(line: 71, column: 36, scope: !804)
!821 = !DILocation(line: 71, column: 42, scope: !804)
!822 = !DILocation(line: 71, column: 2, scope: !804)
!823 = !DILocation(line: 72, column: 1, scope: !804)
!824 = distinct !DISubprogram(name: "zenbleed_check_cpu", scope: !3, file: !3, line: 1365, type: !810, scopeLine: 1366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!825 = !{!826, !827, !828, !831, !833, !836, !838}
!826 = !DILocalVariable(name: "unused", arg: 1, scope: !824, file: !3, line: 1365, type: !43)
!827 = !DILocalVariable(name: "c", scope: !824, file: !3, line: 1367, type: !84)
!828 = !DILocalVariable(name: "__vpp_verify", scope: !829, file: !3, line: 1367, type: !573)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1367, column: 27)
!830 = distinct !DILexicalBlock(scope: !824, file: !3, line: 1367, column: 27)
!831 = !DILocalVariable(name: "__ptr", scope: !832, file: !3, line: 1367, type: !46)
!832 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1367, column: 27)
!833 = !DILocalVariable(name: "pscr_ret__", scope: !834, file: !3, line: 1367, type: !44)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1367, column: 27)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1367, column: 27)
!836 = !DILocalVariable(name: "__vpp_verify", scope: !837, file: !3, line: 1367, type: !573)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 1367, column: 27)
!838 = !DILocalVariable(name: "pfo_val__", scope: !839, file: !3, line: 1367, type: !52)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 1367, column: 27)
!840 = !DILocation(line: 1365, column: 38, scope: !824)
!841 = !DILocation(line: 1367, column: 2, scope: !824)
!842 = !DILocation(line: 1367, column: 22, scope: !824)
!843 = !DILocation(line: 1367, column: 27, scope: !830)
!844 = !DILocation(line: 1367, column: 27, scope: !829)
!845 = !DILocation(line: 1367, column: 27, scope: !832)
!846 = !DILocation(line: 1367, column: 27, scope: !835)
!847 = !DILocation(line: 1367, column: 27, scope: !834)
!848 = !DILocation(line: 1367, column: 27, scope: !837)
!849 = !DILocation(line: 1367, column: 27, scope: !839)
!850 = !{i64 2155041540}
!851 = !DILocation(line: 1369, column: 22, scope: !824)
!852 = !DILocation(line: 1369, column: 2, scope: !824)
!853 = !DILocation(line: 1370, column: 1, scope: !824)
!854 = distinct !DISubprogram(name: "amd_clear_divider", scope: !3, file: !3, line: 1385, type: !791, scopeLine: 1386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!855 = !DILocation(line: 1387, column: 2, scope: !854)
!856 = !{i64 2155059053, i64 2155059081, i64 2155059087, i64 2155059103, i64 2155059119, i64 2155059146, i64 2155059460, i64 2155058749, i64 2155059466, i64 2155059514, i64 2155059578, i64 2155059642, i64 2155059699, i64 2155058830, i64 2155058855, i64 2155059944, i64 2155060070, i64 2155060005, i64 2155060063, i64 2155060084, i64 2155058947}
!857 = !DILocation(line: 1389, column: 1, scope: !854)
!858 = !DISubprogram(name: "strcmp", scope: !859, file: !859, line: 88, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!860 = !DISubroutineType(types: !861)
!861 = !{!44, !73, !73}
!862 = distinct !DISubprogram(name: "constant_test_bit", scope: !508, file: !508, line: 204, type: !863, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!148, !64, !511}
!865 = !{!866, !867}
!866 = !DILocalVariable(name: "nr", arg: 1, scope: !862, file: !508, line: 204, type: !64)
!867 = !DILocalVariable(name: "addr", arg: 2, scope: !862, file: !508, line: 204, type: !511)
!868 = !DILocation(line: 204, column: 52, scope: !862)
!869 = !DILocation(line: 204, column: 86, scope: !862)
!870 = !DILocation(line: 206, column: 19, scope: !862)
!871 = !DILocation(line: 206, column: 22, scope: !862)
!872 = !DILocation(line: 206, column: 15, scope: !862)
!873 = !DILocation(line: 207, column: 4, scope: !862)
!874 = !DILocation(line: 207, column: 9, scope: !862)
!875 = !DILocation(line: 207, column: 12, scope: !862)
!876 = !DILocation(line: 206, column: 44, scope: !862)
!877 = !DILocation(line: 207, column: 37, scope: !862)
!878 = !DILocation(line: 206, column: 2, scope: !862)
!879 = distinct !DISubprogram(name: "variable_test_bit", scope: !508, file: !508, line: 224, type: !863, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !880)
!880 = !{!881, !882, !883}
!881 = !DILocalVariable(name: "nr", arg: 1, scope: !879, file: !508, line: 224, type: !64)
!882 = !DILocalVariable(name: "addr", arg: 2, scope: !879, file: !508, line: 224, type: !511)
!883 = !DILocalVariable(name: "oldbit", scope: !879, file: !508, line: 226, type: !148)
!884 = !DILocation(line: 224, column: 52, scope: !879)
!885 = !DILocation(line: 224, column: 86, scope: !879)
!886 = !DILocation(line: 226, column: 2, scope: !879)
!887 = !DILocation(line: 226, column: 7, scope: !879)
!888 = !DILocation(line: 231, column: 33, scope: !879)
!889 = !DILocation(line: 231, column: 46, scope: !879)
!890 = !DILocation(line: 228, column: 2, scope: !879)
!891 = !{i64 2147807717, i64 2147807791}
!892 = !DILocation(line: 233, column: 9, scope: !879)
!893 = !{i8 0, i8 2}
!894 = !{}
!895 = !DILocation(line: 234, column: 1, scope: !879)
!896 = !DILocation(line: 233, column: 2, scope: !879)
!897 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !529, file: !529, line: 126, type: !898, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!58, !7, !47}
!900 = !{!901, !902, !903, !904}
!901 = !DILocalVariable(name: "msr", arg: 1, scope: !897, file: !529, line: 126, type: !7)
!902 = !DILocalVariable(name: "err", arg: 2, scope: !897, file: !529, line: 127, type: !47)
!903 = !DILocalVariable(name: "low", scope: !897, file: !529, line: 129, type: !46)
!904 = !DILocalVariable(name: "high", scope: !897, file: !529, line: 129, type: !46)
!905 = !DILocation(line: 126, column: 68, scope: !897)
!906 = !DILocation(line: 127, column: 18, scope: !897)
!907 = !DILocation(line: 129, column: 2, scope: !897)
!908 = !DILocation(line: 134, column: 23, scope: !897)
!909 = !DILocation(line: 135, column: 15, scope: !897)
!910 = !DILocation(line: 131, column: 2, scope: !897)
!911 = !{i64 1032621, i64 1032662, i64 1032666, i64 2149226412, i64 2149226437, i64 2149226472, i64 2149226689, i64 2149226742, i64 2149226773, i64 2149226804, i64 2149226882, i64 2149226916, i64 2149226954, i64 2149226997, i64 2149227020, i64 2149227058, i64 2149227080, i64 2149227111, i64 2149227196, i64 2149227230, i64 2149227268, i64 2149227311, i64 2149227334, i64 2149227372, i64 2149227394, i64 2149227428, i64 2149227490, i64 2149227513, i64 2149226538, i64 2149227587, i64 2149226649}
!912 = !DILocation(line: 136, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !897, file: !529, line: 136, column: 6)
!914 = !DILocation(line: 136, column: 6, scope: !897)
!915 = !DILocation(line: 137, column: 21, scope: !913)
!916 = !DILocation(line: 137, column: 26, scope: !913)
!917 = !DILocation(line: 137, column: 56, scope: !913)
!918 = !DILocation(line: 137, column: 55, scope: !913)
!919 = !DILocation(line: 137, column: 3, scope: !913)
!920 = !DILocation(line: 138, column: 9, scope: !897)
!921 = !DILocation(line: 139, column: 1, scope: !897)
!922 = !DILocation(line: 138, column: 2, scope: !897)
!923 = distinct !DISubprogram(name: "static_key_false", scope: !924, file: !924, line: 205, type: !925, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!924 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!925 = !DISubroutineType(types: !926)
!926 = !{!148, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !924, line: 85, size: 128, elements: !929)
!929 = !{!930, !935}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !928, file: !924, line: 86, baseType: !931, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 174, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 172, size: 32, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !932, file: !70, line: 173, baseType: !44, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !924, line: 101, baseType: !936, size: 64, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !928, file: !924, line: 101, size: 64, elements: !937)
!937 = !{!938, !939, !948}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !936, file: !924, line: 102, baseType: !46, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !936, file: !924, line: 103, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !924, line: 117, size: 128, elements: !942)
!942 = !{!943, !946, !947}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !941, file: !924, line: 118, baseType: !944, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !53, line: 20, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !55, line: 26, baseType: !44)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !941, file: !924, line: 119, baseType: !944, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !941, file: !924, line: 120, baseType: !64, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !924, line: 104, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !924, line: 104, flags: DIFlagFwdDecl)
!951 = !{!952}
!952 = !DILocalVariable(name: "key", arg: 1, scope: !923, file: !924, line: 205, type: !927)
!953 = !DILocation(line: 205, column: 65, scope: !923)
!954 = !DILocation(line: 207, column: 28, scope: !923)
!955 = !DILocation(line: 207, column: 9, scope: !923)
!956 = !DILocation(line: 207, column: 2, scope: !923)
!957 = !DISubprogram(name: "do_trace_read_msr", scope: !529, file: !529, line: 65, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !7, !56, !44}
!960 = distinct !DISubprogram(name: "arch_static_branch", scope: !961, file: !961, line: 25, type: !962, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!961 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!962 = !DISubroutineType(types: !963)
!963 = !{!148, !927, !148}
!964 = !{!965, !966, !967}
!965 = !DILocalVariable(name: "key", arg: 1, scope: !960, file: !961, line: 25, type: !927)
!966 = !DILocalVariable(name: "branch", arg: 2, scope: !960, file: !961, line: 25, type: !148)
!967 = !DILabel(scope: !960, name: "l_yes", file: !961, line: 33)
!968 = !DILocation(line: 25, column: 67, scope: !960)
!969 = !DILocation(line: 25, column: 77, scope: !960)
!970 = !DILocation(line: 30, column: 13, scope: !960)
!971 = !DILocation(line: 30, column: 28, scope: !960)
!972 = !DILocation(line: 30, column: 26, scope: !960)
!973 = !DILocation(line: 27, column: 2, scope: !960)
!974 = !{i64 935897, i64 935941, i64 2148420624, i64 2148420645, i64 2148420671, i64 2148420704, i64 2148420738, i64 2148420762}
!975 = !DILocation(line: 32, column: 2, scope: !960)
!976 = !DILocation(line: 33, column: 1, scope: !960)
!977 = !DILocation(line: 34, column: 2, scope: !960)
!978 = !DILocation(line: 35, column: 1, scope: !960)
!979 = distinct !DISubprogram(name: "wrmsr_safe", scope: !529, file: !529, line: 266, type: !980, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!44, !7, !52, !52}
!982 = !{!983, !984, !985}
!983 = !DILocalVariable(name: "msr", arg: 1, scope: !979, file: !529, line: 266, type: !7)
!984 = !DILocalVariable(name: "low", arg: 2, scope: !979, file: !529, line: 266, type: !52)
!985 = !DILocalVariable(name: "high", arg: 3, scope: !979, file: !529, line: 266, type: !52)
!986 = !DILocation(line: 266, column: 43, scope: !979)
!987 = !DILocation(line: 266, column: 52, scope: !979)
!988 = !DILocation(line: 266, column: 61, scope: !979)
!989 = !DILocation(line: 268, column: 31, scope: !979)
!990 = !DILocation(line: 268, column: 36, scope: !979)
!991 = !DILocation(line: 268, column: 41, scope: !979)
!992 = !DILocation(line: 268, column: 9, scope: !979)
!993 = !DILocation(line: 268, column: 2, scope: !979)
!994 = distinct !DISubprogram(name: "native_write_msr_safe", scope: !529, file: !529, line: 153, type: !980, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!995 = !{!996, !997, !998, !999}
!996 = !DILocalVariable(name: "msr", arg: 1, scope: !994, file: !529, line: 153, type: !7)
!997 = !DILocalVariable(name: "low", arg: 2, scope: !994, file: !529, line: 153, type: !52)
!998 = !DILocalVariable(name: "high", arg: 3, scope: !994, file: !529, line: 153, type: !52)
!999 = !DILocalVariable(name: "err", scope: !994, file: !529, line: 155, type: !44)
!1000 = !DILocation(line: 153, column: 36, scope: !994)
!1001 = !DILocation(line: 153, column: 45, scope: !994)
!1002 = !DILocation(line: 153, column: 54, scope: !994)
!1003 = !DILocation(line: 155, column: 2, scope: !994)
!1004 = !DILocation(line: 155, column: 6, scope: !994)
!1005 = !DILocation(line: 161, column: 15, scope: !994)
!1006 = !DILocation(line: 161, column: 26, scope: !994)
!1007 = !DILocation(line: 161, column: 37, scope: !994)
!1008 = !DILocation(line: 157, column: 2, scope: !994)
!1009 = !{i64 1033372, i64 1033413, i64 1033417, i64 2149232380, i64 2149232405, i64 2149232440, i64 2149232657, i64 2149232710, i64 2149232741, i64 2149232772, i64 2149232850, i64 2149232884, i64 2149232922, i64 2149232965, i64 2149232988, i64 2149233026, i64 2149233048, i64 2149233079, i64 2149233164, i64 2149233198, i64 2149233236, i64 2149233279, i64 2149233302, i64 2149233340, i64 2149233362, i64 2149233396, i64 2149233458, i64 2149233481, i64 2149232506, i64 2149233555, i64 2149232617}
!1010 = !DILocation(line: 163, column: 6, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !994, file: !529, line: 163, column: 6)
!1012 = !DILocation(line: 163, column: 6, scope: !994)
!1013 = !DILocation(line: 164, column: 22, scope: !1011)
!1014 = !DILocation(line: 164, column: 33, scope: !1011)
!1015 = !DILocation(line: 164, column: 28, scope: !1011)
!1016 = !DILocation(line: 164, column: 38, scope: !1011)
!1017 = !DILocation(line: 164, column: 46, scope: !1011)
!1018 = !DILocation(line: 164, column: 44, scope: !1011)
!1019 = !DILocation(line: 164, column: 52, scope: !1011)
!1020 = !DILocation(line: 164, column: 3, scope: !1011)
!1021 = !DILocation(line: 165, column: 9, scope: !994)
!1022 = !DILocation(line: 166, column: 1, scope: !994)
!1023 = !DILocation(line: 165, column: 2, scope: !994)
!1024 = !DISubprogram(name: "do_trace_write_msr", scope: !529, file: !529, line: 64, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DILocation(line: 705, column: 48, scope: !231)
!1026 = !DILocation(line: 707, column: 2, scope: !231)
!1027 = !DILocation(line: 707, column: 6, scope: !231)
!1028 = !DILocation(line: 708, column: 2, scope: !231)
!1029 = !DILocation(line: 708, column: 6, scope: !231)
!1030 = !DILocation(line: 710, column: 20, scope: !231)
!1031 = !DILocation(line: 710, column: 2, scope: !231)
!1032 = !DILocation(line: 712, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !231, file: !3, line: 712, column: 6)
!1034 = !DILocation(line: 712, column: 9, scope: !1033)
!1035 = !DILocation(line: 712, column: 13, scope: !1033)
!1036 = !DILocation(line: 712, column: 6, scope: !231)
!1037 = !DILocation(line: 713, column: 3, scope: !1033)
!1038 = !DILocation(line: 715, column: 2, scope: !237)
!1039 = !DILocation(line: 715, column: 2, scope: !231)
!1040 = !DILocation(line: 721, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !231, file: !3, line: 721, column: 6)
!1042 = !DILocation(line: 721, column: 9, scope: !1041)
!1043 = !DILocation(line: 721, column: 19, scope: !1041)
!1044 = !DILocation(line: 721, column: 6, scope: !231)
!1045 = !DILocation(line: 722, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 721, column: 31)
!1047 = !DILocation(line: 723, column: 3, scope: !1046)
!1048 = !DILocation(line: 724, column: 2, scope: !1046)
!1049 = !DILocation(line: 727, column: 6, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !231, file: !3, line: 727, column: 6)
!1051 = !DILocation(line: 727, column: 9, scope: !1050)
!1052 = !DILocation(line: 727, column: 19, scope: !1050)
!1053 = !DILocation(line: 727, column: 6, scope: !231)
!1054 = !DILocation(line: 728, column: 3, scope: !1050)
!1055 = !DILocation(line: 731, column: 6, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !231, file: !3, line: 731, column: 6)
!1057 = !DILocation(line: 731, column: 9, scope: !1056)
!1058 = !DILocation(line: 731, column: 19, scope: !1056)
!1059 = !DILocation(line: 731, column: 6, scope: !231)
!1060 = !DILocation(line: 732, column: 3, scope: !1056)
!1061 = !DILocation(line: 735, column: 2, scope: !231)
!1062 = !DILocation(line: 750, column: 6, scope: !231)
!1063 = !DILocation(line: 750, column: 6, scope: !244)
!1064 = !DILocation(line: 751, column: 7, scope: !242)
!1065 = !DILocation(line: 751, column: 10, scope: !242)
!1066 = !DILocation(line: 751, column: 14, scope: !242)
!1067 = !DILocation(line: 751, column: 7, scope: !243)
!1068 = !DILocation(line: 752, column: 4, scope: !242)
!1069 = !DILocation(line: 753, column: 12, scope: !241)
!1070 = !DILocation(line: 753, column: 15, scope: !241)
!1071 = !DILocation(line: 753, column: 19, scope: !241)
!1072 = !DILocation(line: 753, column: 12, scope: !242)
!1073 = !DILocation(line: 755, column: 4, scope: !240)
!1074 = !DILocation(line: 755, column: 17, scope: !240)
!1075 = !DILocation(line: 757, column: 10, scope: !240)
!1076 = !DILocation(line: 757, column: 8, scope: !240)
!1077 = !DILocation(line: 758, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !240, file: !3, line: 758, column: 8)
!1079 = !DILocation(line: 758, column: 13, scope: !1078)
!1080 = !DILocation(line: 758, column: 19, scope: !1078)
!1081 = !DILocation(line: 758, column: 26, scope: !1078)
!1082 = !DILocation(line: 758, column: 8, scope: !240)
!1083 = !DILocation(line: 759, column: 5, scope: !1078)
!1084 = !DILocation(line: 760, column: 3, scope: !241)
!1085 = !DILocation(line: 760, column: 3, scope: !240)
!1086 = !DILocation(line: 761, column: 2, scope: !243)
!1087 = !DILocation(line: 769, column: 2, scope: !231)
!1088 = !DILocation(line: 772, column: 6, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !231, file: !3, line: 772, column: 6)
!1090 = !DILocation(line: 772, column: 9, scope: !1089)
!1091 = !DILocation(line: 772, column: 13, scope: !1089)
!1092 = !DILocation(line: 772, column: 21, scope: !1089)
!1093 = !DILocation(line: 772, column: 24, scope: !1089)
!1094 = !DILocation(line: 772, column: 27, scope: !1089)
!1095 = !DILocation(line: 772, column: 37, scope: !1089)
!1096 = !DILocation(line: 772, column: 6, scope: !231)
!1097 = !DILocation(line: 773, column: 3, scope: !1089)
!1098 = !DILocation(line: 781, column: 26, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !231, file: !3, line: 781, column: 6)
!1100 = !DILocation(line: 781, column: 6, scope: !1099)
!1101 = !DILocation(line: 781, column: 6, scope: !231)
!1102 = !DILocation(line: 782, column: 3, scope: !1099)
!1103 = !DILocation(line: 784, column: 27, scope: !231)
!1104 = !DILocation(line: 784, column: 2, scope: !231)
!1105 = !DILocation(line: 787, column: 6, scope: !252)
!1106 = !DILocation(line: 787, column: 9, scope: !252)
!1107 = !DILocation(line: 787, column: 13, scope: !252)
!1108 = !DILocation(line: 787, column: 21, scope: !252)
!1109 = !DILocation(line: 788, column: 7, scope: !252)
!1110 = !DILocation(line: 788, column: 10, scope: !252)
!1111 = !DILocation(line: 788, column: 20, scope: !252)
!1112 = !DILocation(line: 788, column: 28, scope: !252)
!1113 = !DILocation(line: 788, column: 31, scope: !252)
!1114 = !DILocation(line: 788, column: 34, scope: !252)
!1115 = !DILocation(line: 788, column: 44, scope: !252)
!1116 = !DILocation(line: 788, column: 53, scope: !252)
!1117 = !DILocation(line: 787, column: 6, scope: !231)
!1118 = !DILocation(line: 789, column: 7, scope: !252)
!1119 = !DILocation(line: 791, column: 7, scope: !250)
!1120 = !DILocation(line: 791, column: 35, scope: !250)
!1121 = !DILocation(line: 791, column: 7, scope: !251)
!1122 = !DILocation(line: 792, column: 4, scope: !249)
!1123 = !DILocation(line: 793, column: 8, scope: !248)
!1124 = !DILocation(line: 793, column: 14, scope: !248)
!1125 = !DILocation(line: 793, column: 8, scope: !249)
!1126 = !DILocation(line: 794, column: 5, scope: !247)
!1127 = !DILocation(line: 795, column: 5, scope: !246)
!1128 = !DILocation(line: 795, column: 5, scope: !254)
!1129 = !DILocation(line: 795, column: 5, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !254, file: !3, line: 795, column: 5)
!1131 = !DILocation(line: 0, scope: !1130)
!1132 = !DILocation(line: 795, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 795, column: 5)
!1134 = !DILocation(line: 795, column: 5, scope: !255)
!1135 = !DILocation(line: 795, column: 5, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !255, file: !3, line: 795, column: 5)
!1137 = !DILocation(line: 795, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 795, column: 5)
!1139 = !DILocation(line: 795, column: 5, scope: !247)
!1140 = !DILocation(line: 796, column: 4, scope: !247)
!1141 = !DILocation(line: 797, column: 3, scope: !249)
!1142 = !DILocation(line: 798, column: 2, scope: !251)
!1143 = !DILocation(line: 800, column: 6, scope: !231)
!1144 = !DILocation(line: 800, column: 6, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !231, file: !3, line: 800, column: 6)
!1146 = !DILocation(line: 801, column: 24, scope: !1145)
!1147 = !DILocation(line: 801, column: 46, scope: !1145)
!1148 = !DILocation(line: 801, column: 52, scope: !1145)
!1149 = !DILocation(line: 801, column: 60, scope: !1145)
!1150 = !DILocation(line: 801, column: 20, scope: !1145)
!1151 = !DILocation(line: 801, column: 3, scope: !1145)
!1152 = !DILocation(line: 803, column: 42, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !231, file: !3, line: 803, column: 6)
!1154 = !DILocation(line: 803, column: 7, scope: !1153)
!1155 = !DILocation(line: 803, column: 6, scope: !231)
!1156 = !DILocation(line: 803, column: 46, scope: !1153)
!1157 = !DILocation(line: 804, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 804, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 803, column: 83)
!1160 = !DILocation(line: 804, column: 10, scope: !1158)
!1161 = !DILocation(line: 804, column: 14, scope: !1158)
!1162 = !DILocation(line: 804, column: 22, scope: !1158)
!1163 = !DILocation(line: 804, column: 7, scope: !1159)
!1164 = !DILocation(line: 804, column: 25, scope: !1158)
!1165 = !DILocation(line: 805, column: 4, scope: !1158)
!1166 = !DILocation(line: 805, column: 4, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 805, column: 4)
!1168 = !DILocation(line: 806, column: 12, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 806, column: 12)
!1170 = !DILocation(line: 806, column: 15, scope: !1169)
!1171 = !DILocation(line: 806, column: 19, scope: !1169)
!1172 = !DILocation(line: 806, column: 27, scope: !1169)
!1173 = !DILocation(line: 806, column: 31, scope: !1169)
!1174 = !DILocation(line: 806, column: 12, scope: !1158)
!1175 = !DILocation(line: 807, column: 4, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 806, column: 78)
!1177 = !DILocation(line: 807, column: 4, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 807, column: 4)
!1179 = !DILocation(line: 808, column: 4, scope: !1176)
!1180 = !DILocation(line: 808, column: 4, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 808, column: 4)
!1182 = !DILocation(line: 809, column: 3, scope: !1176)
!1183 = !DILocation(line: 810, column: 2, scope: !1159)
!1184 = !DILocation(line: 811, column: 1, scope: !231)
!1185 = !DILocation(line: 542, column: 46, scope: !273)
!1186 = !DILocation(line: 544, column: 6, scope: !273)
!1187 = !DILocation(line: 544, column: 6, scope: !280)
!1188 = !DILocation(line: 546, column: 7, scope: !278)
!1189 = !DILocation(line: 546, column: 10, scope: !278)
!1190 = !DILocation(line: 546, column: 14, scope: !278)
!1191 = !DILocation(line: 546, column: 21, scope: !278)
!1192 = !DILocation(line: 547, column: 8, scope: !278)
!1193 = !DILocation(line: 547, column: 11, scope: !278)
!1194 = !DILocation(line: 547, column: 15, scope: !278)
!1195 = !DILocation(line: 547, column: 23, scope: !278)
!1196 = !DILocation(line: 547, column: 26, scope: !278)
!1197 = !DILocation(line: 547, column: 29, scope: !278)
!1198 = !DILocation(line: 547, column: 39, scope: !278)
!1199 = !DILocation(line: 546, column: 7, scope: !279)
!1200 = !DILocation(line: 548, column: 4, scope: !277)
!1201 = !DILocation(line: 548, column: 8, scope: !277)
!1202 = !DILocation(line: 550, column: 4, scope: !277)
!1203 = !DILocation(line: 551, column: 10, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !277, file: !3, line: 551, column: 8)
!1205 = !DILocation(line: 551, column: 14, scope: !1204)
!1206 = !DILocation(line: 551, column: 8, scope: !277)
!1207 = !DILocation(line: 552, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 552, column: 5)
!1209 = !DILocation(line: 552, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 552, column: 5)
!1211 = !DILocation(line: 552, column: 5, scope: !1204)
!1212 = !DILocation(line: 553, column: 3, scope: !278)
!1213 = !DILocation(line: 553, column: 3, scope: !277)
!1214 = !DILocation(line: 554, column: 2, scope: !279)
!1215 = !DILocation(line: 556, column: 6, scope: !283)
!1216 = !DILocation(line: 556, column: 9, scope: !283)
!1217 = !DILocation(line: 556, column: 13, scope: !283)
!1218 = !DILocation(line: 556, column: 6, scope: !273)
!1219 = !DILocation(line: 557, column: 3, scope: !282)
!1220 = !DILocation(line: 557, column: 17, scope: !282)
!1221 = !DILocation(line: 558, column: 3, scope: !282)
!1222 = !DILocation(line: 558, column: 7, scope: !282)
!1223 = !DILocation(line: 558, column: 14, scope: !282)
!1224 = !DILocation(line: 560, column: 12, scope: !282)
!1225 = !DILocation(line: 560, column: 10, scope: !282)
!1226 = !DILocation(line: 561, column: 12, scope: !282)
!1227 = !DILocation(line: 561, column: 18, scope: !282)
!1228 = !DILocation(line: 561, column: 24, scope: !282)
!1229 = !DILocation(line: 561, column: 10, scope: !282)
!1230 = !DILocation(line: 562, column: 16, scope: !282)
!1231 = !DILocation(line: 562, column: 22, scope: !282)
!1232 = !DILocation(line: 562, column: 29, scope: !282)
!1233 = !DILocation(line: 562, column: 38, scope: !282)
!1234 = !DILocation(line: 562, column: 36, scope: !282)
!1235 = !DILocation(line: 562, column: 14, scope: !282)
!1236 = !DILocation(line: 562, column: 12, scope: !282)
!1237 = !DILocation(line: 564, column: 22, scope: !282)
!1238 = !DILocation(line: 564, column: 31, scope: !282)
!1239 = !DILocation(line: 564, column: 36, scope: !282)
!1240 = !DILocation(line: 564, column: 19, scope: !282)
!1241 = !DILocation(line: 565, column: 21, scope: !282)
!1242 = !DILocation(line: 568, column: 19, scope: !282)
!1243 = !DILocation(line: 568, column: 47, scope: !282)
!1244 = !DILocation(line: 568, column: 36, scope: !282)
!1245 = !DILocation(line: 568, column: 17, scope: !282)
!1246 = !DILocation(line: 569, column: 2, scope: !283)
!1247 = !DILocation(line: 569, column: 2, scope: !282)
!1248 = !DILocation(line: 571, column: 6, scope: !273)
!1249 = !DILocation(line: 571, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !273, file: !3, line: 571, column: 6)
!1251 = !DILocation(line: 572, column: 3, scope: !1250)
!1252 = !DILocation(line: 574, column: 6, scope: !273)
!1253 = !DILocation(line: 574, column: 6, scope: !288)
!1254 = !DILocation(line: 575, column: 3, scope: !287)
!1255 = !DILocation(line: 575, column: 7, scope: !287)
!1256 = !DILocation(line: 577, column: 9, scope: !287)
!1257 = !DILocation(line: 577, column: 7, scope: !287)
!1258 = !DILocation(line: 578, column: 48, scope: !287)
!1259 = !DILocation(line: 578, column: 52, scope: !287)
!1260 = !DILocation(line: 578, column: 58, scope: !287)
!1261 = !DILocation(line: 578, column: 63, scope: !287)
!1262 = !DILocation(line: 578, column: 44, scope: !287)
!1263 = !DILocation(line: 578, column: 25, scope: !287)
!1264 = !DILocation(line: 579, column: 2, scope: !288)
!1265 = !DILocation(line: 579, column: 2, scope: !287)
!1266 = !DILocation(line: 579, column: 13, scope: !288)
!1267 = !DILocation(line: 579, column: 13, scope: !291)
!1268 = !DILocation(line: 580, column: 3, scope: !290)
!1269 = !DILocation(line: 580, column: 7, scope: !290)
!1270 = !DILocation(line: 582, column: 3, scope: !290)
!1271 = !DILocation(line: 583, column: 48, scope: !290)
!1272 = !DILocation(line: 583, column: 54, scope: !290)
!1273 = !DILocation(line: 583, column: 60, scope: !290)
!1274 = !DILocation(line: 583, column: 65, scope: !290)
!1275 = !DILocation(line: 583, column: 46, scope: !290)
!1276 = !DILocation(line: 583, column: 44, scope: !290)
!1277 = !DILocation(line: 583, column: 25, scope: !290)
!1278 = !DILocation(line: 584, column: 2, scope: !291)
!1279 = !DILocation(line: 584, column: 2, scope: !290)
!1280 = !DILocation(line: 586, column: 42, scope: !294)
!1281 = !DILocation(line: 586, column: 7, scope: !294)
!1282 = !DILocation(line: 587, column: 43, scope: !294)
!1283 = !DILocation(line: 587, column: 7, scope: !294)
!1284 = !DILocation(line: 588, column: 6, scope: !294)
!1285 = !DILocation(line: 588, column: 9, scope: !294)
!1286 = !DILocation(line: 588, column: 13, scope: !294)
!1287 = !DILocation(line: 588, column: 21, scope: !294)
!1288 = !DILocation(line: 588, column: 24, scope: !294)
!1289 = !DILocation(line: 588, column: 27, scope: !294)
!1290 = !DILocation(line: 588, column: 31, scope: !294)
!1291 = !DILocation(line: 586, column: 6, scope: !273)
!1292 = !DILocation(line: 589, column: 3, scope: !293)
!1293 = !DILocation(line: 589, column: 16, scope: !293)
!1294 = !DILocation(line: 591, column: 11, scope: !293)
!1295 = !DILocation(line: 591, column: 14, scope: !293)
!1296 = !DILocation(line: 591, column: 3, scope: !293)
!1297 = !DILocation(line: 592, column: 18, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !293, file: !3, line: 591, column: 19)
!1299 = !DILocation(line: 592, column: 24, scope: !1298)
!1300 = !DILocation(line: 593, column: 18, scope: !1298)
!1301 = !DILocation(line: 593, column: 24, scope: !1298)
!1302 = !DILocation(line: 594, column: 18, scope: !1298)
!1303 = !DILocation(line: 594, column: 24, scope: !1298)
!1304 = !DILocation(line: 595, column: 12, scope: !1298)
!1305 = !DILocation(line: 601, column: 8, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !293, file: !3, line: 601, column: 7)
!1307 = !DILocation(line: 601, column: 7, scope: !293)
!1308 = !DILocation(line: 602, column: 4, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 601, column: 61)
!1310 = !DILocation(line: 602, column: 4, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 602, column: 4)
!1312 = !DILocation(line: 603, column: 4, scope: !1309)
!1313 = !DILocation(line: 603, column: 4, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 603, column: 4)
!1315 = !DILocation(line: 604, column: 39, scope: !1309)
!1316 = !DILocation(line: 604, column: 36, scope: !1309)
!1317 = !DILocation(line: 604, column: 29, scope: !1309)
!1318 = !DILocation(line: 605, column: 3, scope: !1309)
!1319 = !DILocation(line: 606, column: 2, scope: !294)
!1320 = !DILocation(line: 606, column: 2, scope: !293)
!1321 = !DILocation(line: 608, column: 21, scope: !273)
!1322 = !DILocation(line: 608, column: 2, scope: !273)
!1323 = !DILocation(line: 611, column: 10, scope: !273)
!1324 = !DILocation(line: 611, column: 13, scope: !273)
!1325 = !DILocation(line: 611, column: 2, scope: !273)
!1326 = !DILocation(line: 613, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 612, column: 13)
!1328 = distinct !DILexicalBlock(scope: !273, file: !3, line: 611, column: 18)
!1329 = !DILocation(line: 613, column: 14, scope: !1327)
!1330 = !DILocation(line: 613, column: 3, scope: !1327)
!1331 = !DILocation(line: 613, column: 25, scope: !1327)
!1332 = !DILocation(line: 616, column: 4, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 613, column: 25)
!1334 = !DILocation(line: 616, column: 4, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 616, column: 4)
!1336 = !DILocation(line: 617, column: 4, scope: !1333)
!1337 = !DILocation(line: 622, column: 4, scope: !1333)
!1338 = !DILocation(line: 622, column: 4, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 622, column: 4)
!1340 = !DILocation(line: 623, column: 4, scope: !1333)
!1341 = !DILocation(line: 625, column: 4, scope: !1333)
!1342 = !DILocation(line: 627, column: 3, scope: !1327)
!1343 = !DILocation(line: 630, column: 11, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 629, column: 13)
!1345 = !DILocation(line: 630, column: 14, scope: !1344)
!1346 = !DILocation(line: 630, column: 3, scope: !1344)
!1347 = !DILocation(line: 630, column: 25, scope: !1344)
!1348 = !DILocation(line: 633, column: 4, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 630, column: 25)
!1350 = !DILocation(line: 633, column: 4, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 633, column: 4)
!1352 = !DILocation(line: 634, column: 4, scope: !1349)
!1353 = !DILocation(line: 637, column: 4, scope: !1349)
!1354 = !DILocation(line: 637, column: 4, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 637, column: 4)
!1356 = !DILocation(line: 638, column: 4, scope: !1349)
!1357 = !DILocation(line: 640, column: 4, scope: !1349)
!1358 = !DILocation(line: 642, column: 3, scope: !1344)
!1359 = !DILocation(line: 645, column: 3, scope: !1328)
!1360 = !DILocation(line: 648, column: 2, scope: !273)
!1361 = !DILocation(line: 650, column: 1, scope: !273)
!1362 = !DILocation(line: 651, column: 2, scope: !297)
!1363 = !DILocation(line: 651, column: 2, scope: !299)
!1364 = !DILocation(line: 651, column: 2, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !299, file: !3, line: 651, column: 2)
!1366 = !DILocation(line: 0, scope: !1365)
!1367 = !DILocation(line: 651, column: 2, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 651, column: 2)
!1369 = !DILocation(line: 651, column: 2, scope: !300)
!1370 = !DILocation(line: 651, column: 2, scope: !303)
!1371 = !DILocation(line: 651, column: 2, scope: !307)
!1372 = !DILocation(line: 651, column: 2, scope: !306)
!1373 = !DILocation(line: 651, column: 2, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !306, file: !3, line: 651, column: 2)
!1375 = !DILocation(line: 651, column: 2, scope: !305)
!1376 = !DILocation(line: 651, column: 2, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !305, file: !3, line: 651, column: 2)
!1378 = !DILocation(line: 651, column: 2, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !305, file: !3, line: 651, column: 2)
!1380 = !{i64 2154754889, i64 2154754918, i64 2154754964, i64 2154755022, i64 2154755076, i64 2154755130, i64 2154755185, i64 2154755216, i64 2154755524, i64 2154755530, i64 2154755577, i64 2154755600, i64 2154755626}
!1381 = !DILocation(line: 651, column: 2, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !305, file: !3, line: 651, column: 2)
!1383 = !DILocation(line: 651, column: 2, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !306, file: !3, line: 651, column: 2)
!1385 = !DILocation(line: 651, column: 2, scope: !273)
!1386 = !DILocation(line: 652, column: 1, scope: !273)
!1387 = distinct !DISubprogram(name: "init_amd", scope: !3, file: !3, line: 1096, type: !184, scopeLine: 1097, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1388)
!1388 = !{!1389, !1390, !1393}
!1389 = !DILocalVariable(name: "c", arg: 1, scope: !1387, file: !3, line: 1096, type: !84)
!1390 = !DILocalVariable(name: "__ret_warn_on", scope: !1391, file: !3, line: 1208, type: !44)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 1208, column: 3)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1206, column: 6)
!1393 = !DILocalVariable(name: "__flags", scope: !1394, file: !3, line: 1208, type: !44)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1208, column: 3)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1208, column: 3)
!1396 = !DILocation(line: 1096, column: 42, scope: !1387)
!1397 = !DILocation(line: 1098, column: 17, scope: !1387)
!1398 = !DILocation(line: 1098, column: 2, scope: !1387)
!1399 = !DILocation(line: 1104, column: 16, scope: !1387)
!1400 = !DILocation(line: 1104, column: 2, scope: !1387)
!1401 = !DILocation(line: 1106, column: 6, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1106, column: 6)
!1403 = !DILocation(line: 1106, column: 9, scope: !1402)
!1404 = !DILocation(line: 1106, column: 13, scope: !1402)
!1405 = !DILocation(line: 1106, column: 6, scope: !1387)
!1406 = !DILocation(line: 1107, column: 3, scope: !1402)
!1407 = !DILocation(line: 1110, column: 6, scope: !1387)
!1408 = !DILocation(line: 1110, column: 6, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1110, column: 6)
!1410 = !DILocation(line: 1111, column: 3, scope: !1409)
!1411 = !DILocation(line: 1114, column: 14, scope: !1387)
!1412 = !DILocation(line: 1114, column: 2, scope: !1387)
!1413 = !DILocation(line: 1114, column: 5, scope: !1387)
!1414 = !DILocation(line: 1114, column: 12, scope: !1387)
!1415 = !DILocation(line: 1117, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1117, column: 6)
!1417 = !DILocation(line: 1117, column: 9, scope: !1416)
!1418 = !DILocation(line: 1117, column: 13, scope: !1416)
!1419 = !DILocation(line: 1117, column: 6, scope: !1387)
!1420 = !DILocation(line: 1118, column: 17, scope: !1416)
!1421 = !DILocation(line: 1118, column: 3, scope: !1416)
!1422 = !DILocation(line: 1120, column: 10, scope: !1387)
!1423 = !DILocation(line: 1120, column: 13, scope: !1387)
!1424 = !DILocation(line: 1120, column: 2, scope: !1387)
!1425 = !DILocation(line: 1121, column: 25, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1120, column: 18)
!1427 = !DILocation(line: 1121, column: 13, scope: !1426)
!1428 = !DILocation(line: 1121, column: 29, scope: !1426)
!1429 = !DILocation(line: 1122, column: 25, scope: !1426)
!1430 = !DILocation(line: 1122, column: 13, scope: !1426)
!1431 = !DILocation(line: 1122, column: 29, scope: !1426)
!1432 = !DILocation(line: 1123, column: 25, scope: !1426)
!1433 = !DILocation(line: 1123, column: 13, scope: !1426)
!1434 = !DILocation(line: 1123, column: 29, scope: !1426)
!1435 = !DILocation(line: 1124, column: 25, scope: !1426)
!1436 = !DILocation(line: 1124, column: 13, scope: !1426)
!1437 = !DILocation(line: 1124, column: 29, scope: !1426)
!1438 = !DILocation(line: 1125, column: 25, scope: !1426)
!1439 = !DILocation(line: 1125, column: 13, scope: !1426)
!1440 = !DILocation(line: 1125, column: 29, scope: !1426)
!1441 = !DILocation(line: 1126, column: 25, scope: !1426)
!1442 = !DILocation(line: 1126, column: 13, scope: !1426)
!1443 = !DILocation(line: 1126, column: 29, scope: !1426)
!1444 = !DILocation(line: 1127, column: 25, scope: !1426)
!1445 = !DILocation(line: 1127, column: 13, scope: !1426)
!1446 = !DILocation(line: 1127, column: 29, scope: !1426)
!1447 = !DILocation(line: 1128, column: 25, scope: !1426)
!1448 = !DILocation(line: 1128, column: 13, scope: !1426)
!1449 = !DILocation(line: 1128, column: 29, scope: !1426)
!1450 = !DILocation(line: 1129, column: 35, scope: !1426)
!1451 = !DILocation(line: 1129, column: 13, scope: !1426)
!1452 = !DILocation(line: 1131, column: 25, scope: !1426)
!1453 = !DILocation(line: 1131, column: 13, scope: !1426)
!1454 = !DILocation(line: 1131, column: 29, scope: !1426)
!1455 = !DILocation(line: 1134, column: 6, scope: !1387)
!1456 = !DILocation(line: 1134, column: 6, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1134, column: 6)
!1458 = !DILocation(line: 1135, column: 17, scope: !1457)
!1459 = !DILocation(line: 1135, column: 3, scope: !1457)
!1460 = !DILocation(line: 1136, column: 11, scope: !1457)
!1461 = !DILocation(line: 1136, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1136, column: 11)
!1463 = !DILocation(line: 1137, column: 17, scope: !1462)
!1464 = !DILocation(line: 1137, column: 3, scope: !1462)
!1465 = !DILocation(line: 1138, column: 11, scope: !1462)
!1466 = !DILocation(line: 1138, column: 11, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1138, column: 11)
!1468 = !DILocation(line: 1139, column: 17, scope: !1467)
!1469 = !DILocation(line: 1139, column: 3, scope: !1467)
!1470 = !DILocation(line: 1140, column: 11, scope: !1467)
!1471 = !DILocation(line: 1140, column: 11, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1140, column: 11)
!1473 = !DILocation(line: 1141, column: 17, scope: !1472)
!1474 = !DILocation(line: 1141, column: 3, scope: !1472)
!1475 = !DILocation(line: 1147, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1147, column: 6)
!1477 = !DILocation(line: 1147, column: 10, scope: !1476)
!1478 = !DILocation(line: 1147, column: 14, scope: !1476)
!1479 = !DILocation(line: 1147, column: 20, scope: !1476)
!1480 = !DILocation(line: 1147, column: 6, scope: !1387)
!1481 = !DILocation(line: 1147, column: 25, scope: !1476)
!1482 = !DILocation(line: 1148, column: 3, scope: !1476)
!1483 = !DILocation(line: 1150, column: 25, scope: !1387)
!1484 = !DILocation(line: 1150, column: 2, scope: !1387)
!1485 = !DILocation(line: 1152, column: 17, scope: !1387)
!1486 = !DILocation(line: 1152, column: 2, scope: !1387)
!1487 = !DILocation(line: 1153, column: 19, scope: !1387)
!1488 = !DILocation(line: 1153, column: 2, scope: !1387)
!1489 = !DILocation(line: 1154, column: 19, scope: !1387)
!1490 = !DILocation(line: 1154, column: 2, scope: !1387)
!1491 = !DILocation(line: 1156, column: 21, scope: !1387)
!1492 = !DILocation(line: 1156, column: 2, scope: !1387)
!1493 = !DILocation(line: 1158, column: 6, scope: !1387)
!1494 = !DILocation(line: 1158, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1158, column: 6)
!1496 = !DILocation(line: 1165, column: 3, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1158, column: 77)
!1498 = !DILocation(line: 1169, column: 3, scope: !1497)
!1499 = !DILocation(line: 1170, column: 2, scope: !1497)
!1500 = !DILocation(line: 1176, column: 6, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1176, column: 6)
!1502 = !DILocation(line: 1176, column: 9, scope: !1501)
!1503 = !DILocation(line: 1176, column: 13, scope: !1501)
!1504 = !DILocation(line: 1176, column: 6, scope: !1387)
!1505 = !DILocation(line: 1177, column: 3, scope: !1501)
!1506 = !DILocation(line: 1180, column: 6, scope: !1387)
!1507 = !DILocation(line: 1180, column: 7, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1180, column: 6)
!1509 = !DILocation(line: 1181, column: 37, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 1181, column: 7)
!1511 = !DILocation(line: 1181, column: 7, scope: !1510)
!1512 = !DILocation(line: 1181, column: 7, scope: !1508)
!1513 = !DILocation(line: 1181, column: 40, scope: !1510)
!1514 = !DILocation(line: 1182, column: 4, scope: !1510)
!1515 = !DILocation(line: 1186, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1185, column: 6)
!1517 = !DILocation(line: 1193, column: 37, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1193, column: 6)
!1519 = !DILocation(line: 1193, column: 6, scope: !1518)
!1520 = !DILocation(line: 1194, column: 38, scope: !1518)
!1521 = !DILocation(line: 1194, column: 7, scope: !1518)
!1522 = !DILocation(line: 1194, column: 41, scope: !1518)
!1523 = !DILocation(line: 1194, column: 44, scope: !1518)
!1524 = !DILocation(line: 1194, column: 54, scope: !1518)
!1525 = !DILocation(line: 1193, column: 6, scope: !1387)
!1526 = !DILocation(line: 1195, column: 3, scope: !1518)
!1527 = !DILocation(line: 1197, column: 29, scope: !1387)
!1528 = !DILocation(line: 1197, column: 2, scope: !1387)
!1529 = !DILocation(line: 1206, column: 31, scope: !1392)
!1530 = !DILocation(line: 1206, column: 6, scope: !1392)
!1531 = !DILocation(line: 1206, column: 51, scope: !1392)
!1532 = !DILocation(line: 1206, column: 6, scope: !1387)
!1533 = !DILocation(line: 1207, column: 6, scope: !1392)
!1534 = !DILocation(line: 1208, column: 3, scope: !1391)
!1535 = !DILocation(line: 1208, column: 3, scope: !1395)
!1536 = !DILocation(line: 1208, column: 3, scope: !1394)
!1537 = !DILocation(line: 1208, column: 3, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1208, column: 3)
!1539 = !DILocation(line: 1208, column: 3, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1208, column: 3)
!1541 = !{i64 2154960511, i64 2154960540, i64 2154960586, i64 2154960644, i64 2154960698, i64 2154960752, i64 2154960807, i64 2154960838, i64 2154961146, i64 2154961152, i64 2154961199, i64 2154961222, i64 2154961248}
!1542 = !DILocation(line: 1208, column: 3, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1208, column: 3)
!1544 = !DILocation(line: 1208, column: 3, scope: !1392)
!1545 = !DILocation(line: 1210, column: 42, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1210, column: 6)
!1547 = !DILocation(line: 1210, column: 7, scope: !1546)
!1548 = !DILocation(line: 1211, column: 27, scope: !1546)
!1549 = !DILocation(line: 1211, column: 7, scope: !1546)
!1550 = !DILocation(line: 1210, column: 6, scope: !1387)
!1551 = !DILocation(line: 1212, column: 3, scope: !1546)
!1552 = !DILocation(line: 1215, column: 16, scope: !1387)
!1553 = !DILocation(line: 1215, column: 2, scope: !1387)
!1554 = !DILocation(line: 1216, column: 1, scope: !1387)
!1555 = distinct !DISubprogram(name: "cpu_detect_tlb_amd", scope: !3, file: !3, line: 1235, type: !184, scopeLine: 1236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562}
!1557 = !DILocalVariable(name: "c", arg: 1, scope: !1555, file: !3, line: 1235, type: !84)
!1558 = !DILocalVariable(name: "ebx", scope: !1555, file: !3, line: 1237, type: !52)
!1559 = !DILocalVariable(name: "eax", scope: !1555, file: !3, line: 1237, type: !52)
!1560 = !DILocalVariable(name: "ecx", scope: !1555, file: !3, line: 1237, type: !52)
!1561 = !DILocalVariable(name: "edx", scope: !1555, file: !3, line: 1237, type: !52)
!1562 = !DILocalVariable(name: "mask", scope: !1555, file: !3, line: 1238, type: !66)
!1563 = !DILocation(line: 1235, column: 52, scope: !1555)
!1564 = !DILocation(line: 1237, column: 2, scope: !1555)
!1565 = !DILocation(line: 1237, column: 6, scope: !1555)
!1566 = !DILocation(line: 1237, column: 11, scope: !1555)
!1567 = !DILocation(line: 1237, column: 16, scope: !1555)
!1568 = !DILocation(line: 1237, column: 21, scope: !1555)
!1569 = !DILocation(line: 1238, column: 2, scope: !1555)
!1570 = !DILocation(line: 1238, column: 6, scope: !1555)
!1571 = !DILocation(line: 1240, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1240, column: 6)
!1573 = !DILocation(line: 1240, column: 9, scope: !1572)
!1574 = !DILocation(line: 1240, column: 13, scope: !1572)
!1575 = !DILocation(line: 1240, column: 6, scope: !1555)
!1576 = !DILocation(line: 1241, column: 3, scope: !1572)
!1577 = !DILocation(line: 1243, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1243, column: 6)
!1579 = !DILocation(line: 1243, column: 9, scope: !1578)
!1580 = !DILocation(line: 1243, column: 30, scope: !1578)
!1581 = !DILocation(line: 1243, column: 6, scope: !1555)
!1582 = !DILocation(line: 1244, column: 3, scope: !1578)
!1583 = !DILocation(line: 1246, column: 2, scope: !1555)
!1584 = !DILocation(line: 1248, column: 25, scope: !1555)
!1585 = !DILocation(line: 1248, column: 29, scope: !1555)
!1586 = !DILocation(line: 1248, column: 38, scope: !1555)
!1587 = !DILocation(line: 1248, column: 36, scope: !1555)
!1588 = !DILocation(line: 1248, column: 24, scope: !1555)
!1589 = !DILocation(line: 1248, column: 22, scope: !1555)
!1590 = !DILocation(line: 1249, column: 24, scope: !1555)
!1591 = !DILocation(line: 1249, column: 30, scope: !1555)
!1592 = !DILocation(line: 1249, column: 28, scope: !1555)
!1593 = !DILocation(line: 1249, column: 22, scope: !1555)
!1594 = !DILocation(line: 1255, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1255, column: 6)
!1596 = !DILocation(line: 1255, column: 9, scope: !1595)
!1597 = !DILocation(line: 1255, column: 13, scope: !1595)
!1598 = !DILocation(line: 1255, column: 6, scope: !1555)
!1599 = !DILocation(line: 1256, column: 3, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1255, column: 21)
!1601 = !DILocation(line: 1257, column: 8, scope: !1600)
!1602 = !DILocation(line: 1258, column: 2, scope: !1600)
!1603 = !DILocation(line: 1261, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1261, column: 6)
!1605 = !DILocation(line: 1261, column: 13, scope: !1604)
!1606 = !DILocation(line: 1261, column: 22, scope: !1604)
!1607 = !DILocation(line: 1261, column: 20, scope: !1604)
!1608 = !DILocation(line: 1261, column: 6, scope: !1555)
!1609 = !DILocation(line: 1262, column: 26, scope: !1604)
!1610 = !DILocation(line: 1262, column: 48, scope: !1604)
!1611 = !DILocation(line: 1262, column: 55, scope: !1604)
!1612 = !DILocation(line: 1262, column: 25, scope: !1604)
!1613 = !DILocation(line: 1262, column: 23, scope: !1604)
!1614 = !DILocation(line: 1262, column: 3, scope: !1604)
!1615 = !DILocation(line: 1264, column: 26, scope: !1604)
!1616 = !DILocation(line: 1264, column: 30, scope: !1604)
!1617 = !DILocation(line: 1264, column: 39, scope: !1604)
!1618 = !DILocation(line: 1264, column: 37, scope: !1604)
!1619 = !DILocation(line: 1264, column: 25, scope: !1604)
!1620 = !DILocation(line: 1264, column: 23, scope: !1604)
!1621 = !DILocation(line: 1267, column: 24, scope: !1555)
!1622 = !DILocation(line: 1267, column: 44, scope: !1555)
!1623 = !DILocation(line: 1267, column: 22, scope: !1555)
!1624 = !DILocation(line: 1270, column: 8, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1270, column: 6)
!1626 = !DILocation(line: 1270, column: 14, scope: !1625)
!1627 = !DILocation(line: 1270, column: 12, scope: !1625)
!1628 = !DILocation(line: 1270, column: 6, scope: !1555)
!1629 = !DILocation(line: 1272, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1272, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 1270, column: 21)
!1632 = !DILocation(line: 1272, column: 10, scope: !1630)
!1633 = !DILocation(line: 1272, column: 14, scope: !1630)
!1634 = !DILocation(line: 1272, column: 22, scope: !1630)
!1635 = !DILocation(line: 1272, column: 25, scope: !1630)
!1636 = !DILocation(line: 1272, column: 28, scope: !1630)
!1637 = !DILocation(line: 1272, column: 38, scope: !1630)
!1638 = !DILocation(line: 1272, column: 7, scope: !1631)
!1639 = !DILocation(line: 1273, column: 24, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1272, column: 47)
!1641 = !DILocation(line: 1274, column: 3, scope: !1640)
!1642 = !DILocation(line: 1275, column: 4, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1274, column: 10)
!1644 = !DILocation(line: 1276, column: 26, scope: !1643)
!1645 = !DILocation(line: 1276, column: 30, scope: !1643)
!1646 = !DILocation(line: 1276, column: 24, scope: !1643)
!1647 = !DILocation(line: 1278, column: 2, scope: !1631)
!1648 = !DILocation(line: 1279, column: 25, scope: !1625)
!1649 = !DILocation(line: 1279, column: 31, scope: !1625)
!1650 = !DILocation(line: 1279, column: 29, scope: !1625)
!1651 = !DILocation(line: 1279, column: 23, scope: !1625)
!1652 = !DILocation(line: 1281, column: 24, scope: !1555)
!1653 = !DILocation(line: 1281, column: 44, scope: !1555)
!1654 = !DILocation(line: 1281, column: 22, scope: !1555)
!1655 = !DILocation(line: 1282, column: 1, scope: !1555)
!1656 = distinct !DISubprogram(name: "early_init_amd_mc", scope: !3, file: !3, line: 516, type: !184, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1657)
!1657 = !{!1658, !1659, !1660}
!1658 = !DILocalVariable(name: "c", arg: 1, scope: !1656, file: !3, line: 516, type: !84)
!1659 = !DILocalVariable(name: "bits", scope: !1656, file: !3, line: 519, type: !7)
!1660 = !DILocalVariable(name: "ecx", scope: !1656, file: !3, line: 519, type: !7)
!1661 = !DILocation(line: 516, column: 51, scope: !1656)
!1662 = !DILocation(line: 519, column: 2, scope: !1656)
!1663 = !DILocation(line: 519, column: 11, scope: !1656)
!1664 = !DILocation(line: 519, column: 17, scope: !1656)
!1665 = !DILocation(line: 522, column: 6, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 522, column: 6)
!1667 = !DILocation(line: 522, column: 9, scope: !1666)
!1668 = !DILocation(line: 522, column: 30, scope: !1666)
!1669 = !DILocation(line: 522, column: 6, scope: !1656)
!1670 = !DILocation(line: 523, column: 3, scope: !1666)
!1671 = !DILocation(line: 525, column: 8, scope: !1656)
!1672 = !DILocation(line: 525, column: 6, scope: !1656)
!1673 = !DILocation(line: 527, column: 22, scope: !1656)
!1674 = !DILocation(line: 527, column: 26, scope: !1656)
!1675 = !DILocation(line: 527, column: 34, scope: !1656)
!1676 = !DILocation(line: 527, column: 21, scope: !1656)
!1677 = !DILocation(line: 527, column: 2, scope: !1656)
!1678 = !DILocation(line: 527, column: 5, scope: !1656)
!1679 = !DILocation(line: 527, column: 19, scope: !1656)
!1680 = !DILocation(line: 530, column: 10, scope: !1656)
!1681 = !DILocation(line: 530, column: 14, scope: !1656)
!1682 = !DILocation(line: 530, column: 21, scope: !1656)
!1683 = !DILocation(line: 530, column: 7, scope: !1656)
!1684 = !DILocation(line: 533, column: 6, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 533, column: 6)
!1686 = !DILocation(line: 533, column: 11, scope: !1685)
!1687 = !DILocation(line: 533, column: 6, scope: !1656)
!1688 = !DILocation(line: 534, column: 3, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 533, column: 17)
!1690 = !DILocation(line: 534, column: 16, scope: !1689)
!1691 = !DILocation(line: 534, column: 13, scope: !1689)
!1692 = !DILocation(line: 534, column: 24, scope: !1689)
!1693 = !DILocation(line: 534, column: 27, scope: !1689)
!1694 = !DILocation(line: 534, column: 22, scope: !1689)
!1695 = !DILocation(line: 535, column: 8, scope: !1689)
!1696 = distinct !{!1696, !1688, !1695, !1697, !1698}
!1697 = !{!"llvm.loop.mustprogress"}
!1698 = !{!"llvm.loop.unroll.disable"}
!1699 = !DILocation(line: 536, column: 2, scope: !1689)
!1700 = !DILocation(line: 538, column: 23, scope: !1656)
!1701 = !DILocation(line: 538, column: 2, scope: !1656)
!1702 = !DILocation(line: 538, column: 5, scope: !1656)
!1703 = !DILocation(line: 538, column: 21, scope: !1656)
!1704 = !DILocation(line: 540, column: 1, scope: !1656)
!1705 = distinct !DISubprogram(name: "set_bit", scope: !1706, file: !1706, line: 26, type: !1707, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1710)
!1706 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !64, !1709}
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!1710 = !{!1711, !1712}
!1711 = !DILocalVariable(name: "nr", arg: 1, scope: !1705, file: !1706, line: 26, type: !64)
!1712 = !DILocalVariable(name: "addr", arg: 2, scope: !1705, file: !1706, line: 26, type: !1709)
!1713 = !DILocation(line: 26, column: 42, scope: !1705)
!1714 = !DILocation(line: 26, column: 70, scope: !1705)
!1715 = !DILocation(line: 28, column: 26, scope: !1705)
!1716 = !DILocation(line: 28, column: 33, scope: !1705)
!1717 = !DILocation(line: 28, column: 31, scope: !1705)
!1718 = !DILocation(line: 28, column: 2, scope: !1705)
!1719 = !DILocation(line: 29, column: 15, scope: !1705)
!1720 = !DILocation(line: 29, column: 19, scope: !1705)
!1721 = !DILocation(line: 29, column: 2, scope: !1705)
!1722 = !DILocation(line: 30, column: 1, scope: !1705)
!1723 = !DISubprogram(name: "read_pci_config", scope: !1724, file: !1724, line: 10, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1724 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!52, !152, !152, !152, !152}
!1727 = !DISubprogram(name: "msr_set_bit", scope: !529, file: !529, line: 310, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!44, !52, !152}
!1730 = distinct !DISubprogram(name: "cpu_has_amd_erratum", scope: !3, file: !3, line: 73, type: !1731, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1734)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!148, !84, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1743}
!1735 = !DILocalVariable(name: "cpu", arg: 1, scope: !1730, file: !3, line: 73, type: !84)
!1736 = !DILocalVariable(name: "erratum", arg: 2, scope: !1730, file: !3, line: 73, type: !1733)
!1737 = !DILocalVariable(name: "osvw_id", scope: !1730, file: !3, line: 75, type: !44)
!1738 = !DILocalVariable(name: "range", scope: !1730, file: !3, line: 76, type: !52)
!1739 = !DILocalVariable(name: "ms", scope: !1730, file: !3, line: 77, type: !52)
!1740 = !DILocalVariable(name: "osvw_len", scope: !1741, file: !3, line: 81, type: !56)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 80, column: 38)
!1742 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 79, column: 6)
!1743 = !DILocalVariable(name: "osvw_bits", scope: !1744, file: !3, line: 85, type: !56)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 84, column: 27)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 84, column: 7)
!1746 = !DILocation(line: 73, column: 53, scope: !1730)
!1747 = !DILocation(line: 73, column: 69, scope: !1730)
!1748 = !DILocation(line: 75, column: 2, scope: !1730)
!1749 = !DILocation(line: 75, column: 6, scope: !1730)
!1750 = !DILocation(line: 75, column: 24, scope: !1730)
!1751 = !DILocation(line: 75, column: 16, scope: !1730)
!1752 = !DILocation(line: 76, column: 2, scope: !1730)
!1753 = !DILocation(line: 76, column: 6, scope: !1730)
!1754 = !DILocation(line: 77, column: 2, scope: !1730)
!1755 = !DILocation(line: 77, column: 6, scope: !1730)
!1756 = !DILocation(line: 79, column: 6, scope: !1742)
!1757 = !DILocation(line: 79, column: 14, scope: !1742)
!1758 = !DILocation(line: 79, column: 19, scope: !1742)
!1759 = !DILocation(line: 79, column: 22, scope: !1742)
!1760 = !DILocation(line: 79, column: 30, scope: !1742)
!1761 = !DILocation(line: 79, column: 38, scope: !1742)
!1762 = !DILocation(line: 79, column: 6, scope: !1730)
!1763 = !DILocation(line: 80, column: 6, scope: !1742)
!1764 = !DILocation(line: 81, column: 3, scope: !1741)
!1765 = !DILocation(line: 81, column: 7, scope: !1741)
!1766 = !DILocation(line: 83, column: 3, scope: !1741)
!1767 = !DILocation(line: 84, column: 7, scope: !1745)
!1768 = !DILocation(line: 84, column: 17, scope: !1745)
!1769 = !DILocation(line: 84, column: 15, scope: !1745)
!1770 = !DILocation(line: 84, column: 7, scope: !1741)
!1771 = !DILocation(line: 85, column: 4, scope: !1744)
!1772 = !DILocation(line: 85, column: 8, scope: !1744)
!1773 = !DILocation(line: 87, column: 4, scope: !1744)
!1774 = !DILocation(line: 89, column: 11, scope: !1744)
!1775 = !DILocation(line: 89, column: 33, scope: !1744)
!1776 = !DILocation(line: 89, column: 41, scope: !1744)
!1777 = !DILocation(line: 89, column: 29, scope: !1744)
!1778 = !DILocation(line: 89, column: 21, scope: !1744)
!1779 = !DILocation(line: 89, column: 4, scope: !1744)
!1780 = !DILocation(line: 90, column: 3, scope: !1745)
!1781 = !DILocation(line: 91, column: 2, scope: !1742)
!1782 = !DILocation(line: 91, column: 2, scope: !1741)
!1783 = !DILocation(line: 94, column: 8, scope: !1730)
!1784 = !DILocation(line: 94, column: 13, scope: !1730)
!1785 = !DILocation(line: 94, column: 23, scope: !1730)
!1786 = !DILocation(line: 94, column: 31, scope: !1730)
!1787 = !DILocation(line: 94, column: 36, scope: !1730)
!1788 = !DILocation(line: 94, column: 29, scope: !1730)
!1789 = !DILocation(line: 94, column: 5, scope: !1730)
!1790 = !DILocation(line: 95, column: 2, scope: !1730)
!1791 = !DILocation(line: 95, column: 26, scope: !1730)
!1792 = !DILocation(line: 95, column: 18, scope: !1730)
!1793 = !DILocation(line: 95, column: 16, scope: !1730)
!1794 = !DILocation(line: 96, column: 8, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 96, column: 7)
!1796 = !DILocation(line: 96, column: 13, scope: !1795)
!1797 = !DILocation(line: 96, column: 20, scope: !1795)
!1798 = !DILocation(line: 96, column: 17, scope: !1795)
!1799 = !DILocation(line: 96, column: 51, scope: !1795)
!1800 = !DILocation(line: 97, column: 8, scope: !1795)
!1801 = !DILocation(line: 97, column: 14, scope: !1795)
!1802 = !DILocation(line: 97, column: 11, scope: !1795)
!1803 = !DILocation(line: 97, column: 44, scope: !1795)
!1804 = !DILocation(line: 98, column: 8, scope: !1795)
!1805 = !DILocation(line: 98, column: 14, scope: !1795)
!1806 = !DILocation(line: 98, column: 11, scope: !1795)
!1807 = !DILocation(line: 96, column: 7, scope: !1730)
!1808 = !DILocation(line: 99, column: 4, scope: !1795)
!1809 = distinct !{!1809, !1790, !1810, !1697, !1698}
!1810 = !DILocation(line: 99, column: 11, scope: !1730)
!1811 = !DILocation(line: 101, column: 2, scope: !1730)
!1812 = !DILocation(line: 102, column: 1, scope: !1730)
!1813 = distinct !DISubprogram(name: "early_detect_mem_encrypt", scope: !3, file: !3, line: 654, type: !184, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1814)
!1814 = !{!1815, !1816, !1817, !1820}
!1815 = !DILocalVariable(name: "c", arg: 1, scope: !1813, file: !3, line: 654, type: !84)
!1816 = !DILocalVariable(name: "msr", scope: !1813, file: !3, line: 656, type: !56)
!1817 = !DILabel(scope: !1818, name: "clear_all", file: !3, line: 697)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 672, column: 66)
!1819 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 672, column: 6)
!1820 = !DILabel(scope: !1818, name: "clear_sev", file: !3, line: 699)
!1821 = !DILocation(line: 654, column: 58, scope: !1813)
!1822 = !DILocation(line: 656, column: 2, scope: !1813)
!1823 = !DILocation(line: 656, column: 6, scope: !1813)
!1824 = !DILocation(line: 672, column: 34, scope: !1819)
!1825 = !DILocation(line: 672, column: 6, scope: !1819)
!1826 = !DILocation(line: 672, column: 6, scope: !1813)
!1827 = !DILocation(line: 672, column: 37, scope: !1819)
!1828 = !DILocation(line: 674, column: 3, scope: !1818)
!1829 = !DILocation(line: 675, column: 9, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 675, column: 7)
!1831 = !DILocation(line: 675, column: 13, scope: !1830)
!1832 = !DILocation(line: 675, column: 7, scope: !1818)
!1833 = !DILocation(line: 676, column: 4, scope: !1830)
!1834 = !DILocation(line: 683, column: 24, scope: !1818)
!1835 = !DILocation(line: 683, column: 46, scope: !1818)
!1836 = !DILocation(line: 683, column: 52, scope: !1818)
!1837 = !DILocation(line: 683, column: 3, scope: !1818)
!1838 = !DILocation(line: 683, column: 6, scope: !1818)
!1839 = !DILocation(line: 683, column: 20, scope: !1818)
!1840 = !DILocation(line: 689, column: 4, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 688, column: 7)
!1842 = !DILocation(line: 691, column: 3, scope: !1818)
!1843 = !DILocation(line: 692, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 692, column: 7)
!1845 = !DILocation(line: 692, column: 13, scope: !1844)
!1846 = !DILocation(line: 692, column: 7, scope: !1818)
!1847 = !DILocation(line: 693, column: 4, scope: !1844)
!1848 = !DILocation(line: 695, column: 3, scope: !1818)
!1849 = !DILocation(line: 697, column: 1, scope: !1818)
!1850 = !DILocation(line: 698, column: 3, scope: !1818)
!1851 = !DILocation(line: 699, column: 1, scope: !1818)
!1852 = !DILocation(line: 700, column: 3, scope: !1818)
!1853 = !DILocation(line: 701, column: 3, scope: !1818)
!1854 = !DILocation(line: 702, column: 2, scope: !1818)
!1855 = !DILocation(line: 703, column: 1, scope: !1813)
!1856 = distinct !DISubprogram(name: "native_read_msr", scope: !529, file: !529, line: 114, type: !1857, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!58, !7}
!1859 = !{!1860, !1861}
!1860 = !DILocalVariable(name: "msr", arg: 1, scope: !1856, file: !529, line: 114, type: !7)
!1861 = !DILocalVariable(name: "val", scope: !1856, file: !529, line: 116, type: !58)
!1862 = !DILocation(line: 114, column: 63, scope: !1856)
!1863 = !DILocation(line: 116, column: 2, scope: !1856)
!1864 = !DILocation(line: 116, column: 21, scope: !1856)
!1865 = !DILocation(line: 118, column: 16, scope: !1856)
!1866 = !DILocation(line: 118, column: 8, scope: !1856)
!1867 = !DILocation(line: 118, column: 6, scope: !1856)
!1868 = !DILocation(line: 120, column: 6, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1856, file: !529, line: 120, column: 6)
!1870 = !DILocation(line: 120, column: 6, scope: !1856)
!1871 = !DILocation(line: 121, column: 21, scope: !1869)
!1872 = !DILocation(line: 121, column: 26, scope: !1869)
!1873 = !DILocation(line: 121, column: 3, scope: !1869)
!1874 = !DILocation(line: 123, column: 9, scope: !1856)
!1875 = !DILocation(line: 124, column: 1, scope: !1856)
!1876 = !DILocation(line: 123, column: 2, scope: !1856)
!1877 = !DISubprogram(name: "_printk", scope: !1878, file: !1878, line: 153, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1878 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!44, !73, null}
!1881 = distinct !DISubprogram(name: "cpuid_ebx", scope: !1882, file: !1882, line: 103, type: !1883, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1882 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!7, !7}
!1885 = !{!1886, !1887, !1888, !1889, !1890}
!1886 = !DILocalVariable(name: "op", arg: 1, scope: !1881, file: !1882, line: 103, type: !7)
!1887 = !DILocalVariable(name: "eax", scope: !1881, file: !1882, line: 105, type: !7)
!1888 = !DILocalVariable(name: "ebx", scope: !1881, file: !1882, line: 105, type: !7)
!1889 = !DILocalVariable(name: "ecx", scope: !1881, file: !1882, line: 105, type: !7)
!1890 = !DILocalVariable(name: "edx", scope: !1881, file: !1882, line: 105, type: !7)
!1891 = !DILocation(line: 103, column: 51, scope: !1881)
!1892 = !DILocation(line: 105, column: 2, scope: !1881)
!1893 = !DILocation(line: 105, column: 15, scope: !1881)
!1894 = !DILocation(line: 105, column: 20, scope: !1881)
!1895 = !DILocation(line: 105, column: 25, scope: !1881)
!1896 = !DILocation(line: 105, column: 30, scope: !1881)
!1897 = !DILocation(line: 107, column: 8, scope: !1881)
!1898 = !DILocation(line: 107, column: 2, scope: !1881)
!1899 = !DILocation(line: 109, column: 9, scope: !1881)
!1900 = !DILocation(line: 110, column: 1, scope: !1881)
!1901 = !DILocation(line: 109, column: 2, scope: !1881)
!1902 = distinct !DISubprogram(name: "cpuid_ecx", scope: !1882, file: !1882, line: 112, type: !1883, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1903 = !{!1904, !1905, !1906, !1907, !1908}
!1904 = !DILocalVariable(name: "op", arg: 1, scope: !1902, file: !1882, line: 112, type: !7)
!1905 = !DILocalVariable(name: "eax", scope: !1902, file: !1882, line: 114, type: !7)
!1906 = !DILocalVariable(name: "ebx", scope: !1902, file: !1882, line: 114, type: !7)
!1907 = !DILocalVariable(name: "ecx", scope: !1902, file: !1882, line: 114, type: !7)
!1908 = !DILocalVariable(name: "edx", scope: !1902, file: !1882, line: 114, type: !7)
!1909 = !DILocation(line: 112, column: 51, scope: !1902)
!1910 = !DILocation(line: 114, column: 2, scope: !1902)
!1911 = !DILocation(line: 114, column: 15, scope: !1902)
!1912 = !DILocation(line: 114, column: 20, scope: !1902)
!1913 = !DILocation(line: 114, column: 25, scope: !1902)
!1914 = !DILocation(line: 114, column: 30, scope: !1902)
!1915 = !DILocation(line: 116, column: 8, scope: !1902)
!1916 = !DILocation(line: 116, column: 2, scope: !1902)
!1917 = !DILocation(line: 118, column: 9, scope: !1902)
!1918 = !DILocation(line: 119, column: 1, scope: !1902)
!1919 = !DILocation(line: 118, column: 2, scope: !1902)
!1920 = distinct !DISubprogram(name: "cpuid", scope: !1882, file: !1882, line: 72, type: !1921, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1924)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !7, !1923, !1923, !1923, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1924 = !{!1925, !1926, !1927, !1928, !1929}
!1925 = !DILocalVariable(name: "op", arg: 1, scope: !1920, file: !1882, line: 72, type: !7)
!1926 = !DILocalVariable(name: "eax", arg: 2, scope: !1920, file: !1882, line: 73, type: !1923)
!1927 = !DILocalVariable(name: "ebx", arg: 3, scope: !1920, file: !1882, line: 73, type: !1923)
!1928 = !DILocalVariable(name: "ecx", arg: 4, scope: !1920, file: !1882, line: 74, type: !1923)
!1929 = !DILocalVariable(name: "edx", arg: 5, scope: !1920, file: !1882, line: 74, type: !1923)
!1930 = !DILocation(line: 72, column: 39, scope: !1920)
!1931 = !DILocation(line: 73, column: 19, scope: !1920)
!1932 = !DILocation(line: 73, column: 38, scope: !1920)
!1933 = !DILocation(line: 74, column: 19, scope: !1920)
!1934 = !DILocation(line: 74, column: 38, scope: !1920)
!1935 = !DILocation(line: 76, column: 9, scope: !1920)
!1936 = !DILocation(line: 76, column: 3, scope: !1920)
!1937 = !DILocation(line: 76, column: 7, scope: !1920)
!1938 = !DILocation(line: 77, column: 3, scope: !1920)
!1939 = !DILocation(line: 77, column: 7, scope: !1920)
!1940 = !DILocation(line: 78, column: 10, scope: !1920)
!1941 = !DILocation(line: 78, column: 15, scope: !1920)
!1942 = !DILocation(line: 78, column: 20, scope: !1920)
!1943 = !DILocation(line: 78, column: 25, scope: !1920)
!1944 = !DILocation(line: 78, column: 2, scope: !1920)
!1945 = !DILocation(line: 79, column: 1, scope: !1920)
!1946 = distinct !DISubprogram(name: "native_cpuid", scope: !1882, file: !1882, line: 30, type: !1947, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1923, !1923, !1923, !1923}
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DILocalVariable(name: "eax", arg: 1, scope: !1946, file: !1882, line: 30, type: !1923)
!1951 = !DILocalVariable(name: "ebx", arg: 2, scope: !1946, file: !1882, line: 30, type: !1923)
!1952 = !DILocalVariable(name: "ecx", arg: 3, scope: !1946, file: !1882, line: 31, type: !1923)
!1953 = !DILocalVariable(name: "edx", arg: 4, scope: !1946, file: !1882, line: 31, type: !1923)
!1954 = !DILocation(line: 30, column: 47, scope: !1946)
!1955 = !DILocation(line: 30, column: 66, scope: !1946)
!1956 = !DILocation(line: 31, column: 19, scope: !1946)
!1957 = !DILocation(line: 31, column: 38, scope: !1946)
!1958 = !DILocation(line: 35, column: 15, scope: !1946)
!1959 = !DILocation(line: 36, column: 15, scope: !1946)
!1960 = !DILocation(line: 37, column: 15, scope: !1946)
!1961 = !DILocation(line: 38, column: 15, scope: !1946)
!1962 = !DILocation(line: 39, column: 14, scope: !1946)
!1963 = !DILocation(line: 39, column: 13, scope: !1946)
!1964 = !DILocation(line: 39, column: 26, scope: !1946)
!1965 = !DILocation(line: 39, column: 25, scope: !1946)
!1966 = !DILocation(line: 34, column: 2, scope: !1946)
!1967 = !{i64 1019546}
!1968 = !DILocation(line: 41, column: 1, scope: !1946)
!1969 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1970, file: !1970, line: 80, type: !1971, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1980)
!1970 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1973, !1976}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 61, baseType: !1977)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1978, line: 72, baseType: !1979)
!1978 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1978, line: 16, baseType: !46)
!1980 = !{!1981, !1982}
!1981 = !DILocalVariable(name: "v", arg: 1, scope: !1969, file: !1970, line: 80, type: !1973)
!1982 = !DILocalVariable(name: "size", arg: 2, scope: !1969, file: !1970, line: 80, type: !1976)
!1983 = !DILocation(line: 80, column: 74, scope: !1969)
!1984 = !DILocation(line: 80, column: 84, scope: !1969)
!1985 = !DILocation(line: 82, column: 20, scope: !1969)
!1986 = !DILocation(line: 82, column: 23, scope: !1969)
!1987 = !DILocation(line: 82, column: 2, scope: !1969)
!1988 = !DILocation(line: 83, column: 2, scope: !1969)
!1989 = !DILocation(line: 84, column: 1, scope: !1969)
!1990 = distinct !DISubprogram(name: "arch_set_bit", scope: !508, file: !508, line: 52, type: !1707, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1991)
!1991 = !{!1992, !1993}
!1992 = !DILocalVariable(name: "nr", arg: 1, scope: !1990, file: !508, line: 52, type: !64)
!1993 = !DILocalVariable(name: "addr", arg: 2, scope: !1990, file: !508, line: 52, type: !1709)
!1994 = !DILocation(line: 52, column: 19, scope: !1990)
!1995 = !DILocation(line: 52, column: 47, scope: !1990)
!1996 = !DILocation(line: 54, column: 27, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !508, line: 54, column: 6)
!1998 = !DILocation(line: 54, column: 6, scope: !1997)
!1999 = !DILocation(line: 54, column: 6, scope: !1990)
!2000 = !DILocation(line: 56, column: 6, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !508, line: 54, column: 32)
!2002 = !DILocation(line: 57, column: 12, scope: !2001)
!2003 = !DILocation(line: 55, column: 3, scope: !2001)
!2004 = !{i64 2147794105, i64 2147794144, i64 2147794165, i64 2147794202, i64 2147794225, i64 2147794095}
!2005 = !DILocation(line: 59, column: 2, scope: !2001)
!2006 = !DILocation(line: 61, column: 8, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1997, file: !508, line: 59, column: 9)
!2008 = !DILocation(line: 61, column: 32, scope: !2007)
!2009 = !DILocation(line: 60, column: 3, scope: !2007)
!2010 = !{i64 2147794390, i64 2147794429, i64 2147794450, i64 2147794487, i64 2147794510, i64 2147794380}
!2011 = !DILocation(line: 63, column: 1, scope: !1990)
!2012 = distinct !DISubprogram(name: "kasan_check_write", scope: !2013, file: !2013, line: 44, type: !2014, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2016)
!2013 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!148, !1973, !7}
!2016 = !{!2017, !2018}
!2017 = !DILocalVariable(name: "p", arg: 1, scope: !2012, file: !2013, line: 44, type: !1973)
!2018 = !DILocalVariable(name: "size", arg: 2, scope: !2012, file: !2013, line: 44, type: !7)
!2019 = !DILocation(line: 44, column: 59, scope: !2012)
!2020 = !DILocation(line: 44, column: 75, scope: !2012)
!2021 = !DILocation(line: 46, column: 2, scope: !2012)
!2022 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2023, file: !2023, line: 229, type: !2024, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2023 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !1973, !1976, !44}
!2026 = !{!2027, !2028, !2029}
!2027 = !DILocalVariable(name: "ptr", arg: 1, scope: !2022, file: !2023, line: 229, type: !1973)
!2028 = !DILocalVariable(name: "size", arg: 2, scope: !2022, file: !2023, line: 229, type: !1976)
!2029 = !DILocalVariable(name: "type", arg: 3, scope: !2022, file: !2023, line: 230, type: !44)
!2030 = !DILocation(line: 229, column: 60, scope: !2022)
!2031 = !DILocation(line: 229, column: 72, scope: !2022)
!2032 = !DILocation(line: 230, column: 15, scope: !2022)
!2033 = !DILocation(line: 230, column: 23, scope: !2022)
!2034 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !650, file: !650, line: 150, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !7}
!2037 = distinct !DISubprogram(name: "__rdmsr", scope: !529, file: !529, line: 80, type: !1857, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DILocalVariable(name: "msr", arg: 1, scope: !2037, file: !529, line: 80, type: !7)
!2040 = !DILocalVariable(name: "low", scope: !2037, file: !529, line: 82, type: !46)
!2041 = !DILocalVariable(name: "high", scope: !2037, file: !529, line: 82, type: !46)
!2042 = !DILocation(line: 80, column: 64, scope: !2037)
!2043 = !DILocation(line: 82, column: 2, scope: !2037)
!2044 = !DILocation(line: 87, column: 45, scope: !2037)
!2045 = !DILocation(line: 84, column: 2, scope: !2037)
!2046 = !{i64 1031533, i64 1031554, i64 2149225203, i64 2149225247, i64 2149225270, i64 2149225303, i64 2149225334, i64 2149225373}
!2047 = !DILocation(line: 89, column: 9, scope: !2037)
!2048 = !DILocation(line: 90, column: 1, scope: !2037)
!2049 = !DILocation(line: 89, column: 2, scope: !2037)
!2050 = distinct !DISubprogram(name: "cpuid_edx", scope: !1882, file: !1882, line: 121, type: !1883, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2056}
!2052 = !DILocalVariable(name: "op", arg: 1, scope: !2050, file: !1882, line: 121, type: !7)
!2053 = !DILocalVariable(name: "eax", scope: !2050, file: !1882, line: 123, type: !7)
!2054 = !DILocalVariable(name: "ebx", scope: !2050, file: !1882, line: 123, type: !7)
!2055 = !DILocalVariable(name: "ecx", scope: !2050, file: !1882, line: 123, type: !7)
!2056 = !DILocalVariable(name: "edx", scope: !2050, file: !1882, line: 123, type: !7)
!2057 = !DILocation(line: 121, column: 51, scope: !2050)
!2058 = !DILocation(line: 123, column: 2, scope: !2050)
!2059 = !DILocation(line: 123, column: 15, scope: !2050)
!2060 = !DILocation(line: 123, column: 20, scope: !2050)
!2061 = !DILocation(line: 123, column: 25, scope: !2050)
!2062 = !DILocation(line: 123, column: 30, scope: !2050)
!2063 = !DILocation(line: 125, column: 8, scope: !2050)
!2064 = !DILocation(line: 125, column: 2, scope: !2050)
!2065 = !DILocation(line: 127, column: 9, scope: !2050)
!2066 = !DILocation(line: 128, column: 1, scope: !2050)
!2067 = !DILocation(line: 127, column: 2, scope: !2050)
!2068 = !DISubprogram(name: "get_random_u32", scope: !2069, file: !2069, line: 42, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2069 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!2070 = !DISubprogram(name: "use_mwaitx_delay", scope: !2071, file: !2071, line: 10, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2071 = !DIFile(filename: "./arch/x86/include/asm/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1669c2cc60c632f0c76a6da415ad94bc")
!2072 = distinct !DISubprogram(name: "resctrl_cpu_detect", scope: !2073, file: !2073, line: 102, type: !184, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2074)
!2073 = !DIFile(filename: "./arch/x86/include/asm/resctrl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ef930dce4a55a465a40dcdf540c10a0")
!2074 = !{!2075}
!2075 = !DILocalVariable(name: "c", arg: 1, scope: !2072, file: !2073, line: 102, type: !84)
!2076 = !DILocation(line: 102, column: 59, scope: !2072)
!2077 = !DILocation(line: 102, column: 63, scope: !2072)
!2078 = !DISubprogram(name: "__warn_printk", scope: !2079, file: !2079, line: 93, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2079 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !73, null}
!2082 = !DISubprogram(name: "clear_cpu_cap", scope: !650, file: !650, line: 151, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !84, !7}
!2085 = distinct !DISubprogram(name: "read_apic_id", scope: !316, file: !316, line: 522, type: !2086, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!7}
!2088 = !{!2089}
!2089 = !DILocalVariable(name: "reg", scope: !2085, file: !316, line: 524, type: !7)
!2090 = !DILocation(line: 524, column: 2, scope: !2085)
!2091 = !DILocation(line: 524, column: 15, scope: !2085)
!2092 = !DILocation(line: 524, column: 21, scope: !2085)
!2093 = !DILocation(line: 526, column: 9, scope: !2085)
!2094 = !DILocation(line: 526, column: 15, scope: !2085)
!2095 = !DILocation(line: 526, column: 27, scope: !2085)
!2096 = !DILocation(line: 527, column: 1, scope: !2085)
!2097 = !DILocation(line: 526, column: 2, scope: !2085)
!2098 = distinct !DISubprogram(name: "init_amd_k5", scope: !3, file: !3, line: 160, type: !184, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2099 = !{!2100}
!2100 = !DILocalVariable(name: "c", arg: 1, scope: !2098, file: !3, line: 160, type: !84)
!2101 = !DILocation(line: 160, column: 45, scope: !2098)
!2102 = !DILocation(line: 177, column: 1, scope: !2098)
!2103 = distinct !DISubprogram(name: "init_amd_k6", scope: !3, file: !3, line: 179, type: !184, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2104 = !{!2105}
!2105 = !DILocalVariable(name: "c", arg: 1, scope: !2103, file: !3, line: 179, type: !84)
!2106 = !DILocation(line: 179, column: 45, scope: !2103)
!2107 = !DILocation(line: 271, column: 1, scope: !2103)
!2108 = distinct !DISubprogram(name: "init_amd_k7", scope: !3, file: !3, line: 273, type: !184, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2109 = !{!2110}
!2110 = !DILocalVariable(name: "c", arg: 1, scope: !2108, file: !3, line: 273, type: !84)
!2111 = !DILocation(line: 273, column: 45, scope: !2108)
!2112 = !DILocation(line: 345, column: 1, scope: !2108)
!2113 = distinct !DISubprogram(name: "init_amd_k8", scope: !3, file: !3, line: 813, type: !184, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2114 = !{!2115, !2116, !2117}
!2115 = !DILocalVariable(name: "c", arg: 1, scope: !2113, file: !3, line: 813, type: !84)
!2116 = !DILocalVariable(name: "level", scope: !2113, file: !3, line: 815, type: !52)
!2117 = !DILocalVariable(name: "value", scope: !2113, file: !3, line: 816, type: !56)
!2118 = !DILocation(line: 813, column: 45, scope: !2113)
!2119 = !DILocation(line: 815, column: 2, scope: !2113)
!2120 = !DILocation(line: 815, column: 6, scope: !2113)
!2121 = !DILocation(line: 816, column: 2, scope: !2113)
!2122 = !DILocation(line: 816, column: 6, scope: !2113)
!2123 = !DILocation(line: 819, column: 10, scope: !2113)
!2124 = !DILocation(line: 819, column: 8, scope: !2113)
!2125 = !DILocation(line: 820, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 820, column: 6)
!2127 = !DILocation(line: 820, column: 13, scope: !2126)
!2128 = !DILocation(line: 820, column: 23, scope: !2126)
!2129 = !DILocation(line: 820, column: 26, scope: !2126)
!2130 = !DILocation(line: 820, column: 32, scope: !2126)
!2131 = !DILocation(line: 820, column: 42, scope: !2126)
!2132 = !DILocation(line: 820, column: 45, scope: !2126)
!2133 = !DILocation(line: 820, column: 51, scope: !2126)
!2134 = !DILocation(line: 820, column: 6, scope: !2113)
!2135 = !DILocation(line: 821, column: 3, scope: !2126)
!2136 = !DILocation(line: 828, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 828, column: 6)
!2138 = !DILocation(line: 828, column: 9, scope: !2137)
!2139 = !DILocation(line: 828, column: 19, scope: !2137)
!2140 = !DILocation(line: 828, column: 26, scope: !2137)
!2141 = !DILocation(line: 828, column: 6, scope: !2113)
!2142 = !DILocation(line: 828, column: 29, scope: !2137)
!2143 = !DILocation(line: 829, column: 17, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 828, column: 62)
!2145 = !DILocation(line: 829, column: 3, scope: !2144)
!2146 = !DILocation(line: 830, column: 8, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 830, column: 7)
!2148 = !DILocation(line: 830, column: 7, scope: !2144)
!2149 = !DILocation(line: 831, column: 10, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 830, column: 45)
!2151 = !DILocation(line: 832, column: 32, scope: !2150)
!2152 = !DILocation(line: 832, column: 4, scope: !2150)
!2153 = !DILocation(line: 833, column: 3, scope: !2150)
!2154 = !DILocation(line: 834, column: 2, scope: !2144)
!2155 = !DILocation(line: 836, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 836, column: 6)
!2157 = !DILocation(line: 836, column: 10, scope: !2156)
!2158 = !DILocation(line: 836, column: 6, scope: !2113)
!2159 = !DILocation(line: 837, column: 10, scope: !2156)
!2160 = !DILocation(line: 837, column: 13, scope: !2156)
!2161 = !DILocation(line: 837, column: 3, scope: !2156)
!2162 = !DILocation(line: 847, column: 2, scope: !2113)
!2163 = !DILocation(line: 849, column: 2, scope: !2113)
!2164 = !DILocation(line: 850, column: 1, scope: !2113)
!2165 = distinct !DISubprogram(name: "init_amd_gh", scope: !3, file: !3, line: 852, type: !184, scopeLine: 853, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "c", arg: 1, scope: !2165, file: !3, line: 852, type: !84)
!2168 = !DILocation(line: 852, column: 45, scope: !2165)
!2169 = !DILocation(line: 856, column: 6, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 856, column: 6)
!2171 = !DILocation(line: 856, column: 8, scope: !2170)
!2172 = !DILocation(line: 856, column: 6, scope: !2165)
!2173 = !DILocation(line: 857, column: 3, scope: !2170)
!2174 = !DILocation(line: 859, column: 2, scope: !2165)
!2175 = !DILocation(line: 870, column: 2, scope: !2165)
!2176 = !DILocation(line: 881, column: 2, scope: !2165)
!2177 = !DILocation(line: 883, column: 26, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 883, column: 6)
!2179 = !DILocation(line: 883, column: 6, scope: !2178)
!2180 = !DILocation(line: 883, column: 6, scope: !2165)
!2181 = !DILocation(line: 884, column: 3, scope: !2178)
!2182 = !DILocation(line: 885, column: 1, scope: !2165)
!2183 = distinct !DISubprogram(name: "init_amd_ln", scope: !3, file: !3, line: 887, type: !184, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "c", arg: 1, scope: !2183, file: !3, line: 887, type: !84)
!2186 = !DILocation(line: 887, column: 45, scope: !2183)
!2187 = !DILocation(line: 893, column: 2, scope: !2183)
!2188 = !DILocation(line: 894, column: 1, scope: !2183)
!2189 = distinct !DISubprogram(name: "init_amd_bd", scope: !3, file: !3, line: 954, type: !184, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2190 = !{!2191, !2192}
!2191 = !DILocalVariable(name: "c", arg: 1, scope: !2189, file: !3, line: 954, type: !84)
!2192 = !DILocalVariable(name: "value", scope: !2189, file: !3, line: 956, type: !56)
!2193 = !DILocation(line: 954, column: 45, scope: !2189)
!2194 = !DILocation(line: 956, column: 2, scope: !2189)
!2195 = !DILocation(line: 956, column: 6, scope: !2189)
!2196 = !DILocation(line: 962, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 962, column: 6)
!2198 = !DILocation(line: 962, column: 10, scope: !2197)
!2199 = !DILocation(line: 962, column: 20, scope: !2197)
!2200 = !DILocation(line: 962, column: 29, scope: !2197)
!2201 = !DILocation(line: 962, column: 33, scope: !2197)
!2202 = !DILocation(line: 962, column: 36, scope: !2197)
!2203 = !DILocation(line: 962, column: 46, scope: !2197)
!2204 = !DILocation(line: 962, column: 6, scope: !2189)
!2205 = !DILocation(line: 963, column: 8, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 963, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 962, column: 55)
!2208 = !DILocation(line: 963, column: 45, scope: !2206)
!2209 = !DILocation(line: 963, column: 50, scope: !2206)
!2210 = !DILocation(line: 963, column: 56, scope: !2206)
!2211 = !DILocation(line: 963, column: 7, scope: !2207)
!2212 = !DILocation(line: 964, column: 10, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 963, column: 65)
!2214 = !DILocation(line: 965, column: 33, scope: !2213)
!2215 = !DILocation(line: 965, column: 4, scope: !2213)
!2216 = !DILocation(line: 966, column: 3, scope: !2213)
!2217 = !DILocation(line: 967, column: 2, scope: !2207)
!2218 = !DILocation(line: 974, column: 25, scope: !2189)
!2219 = !DILocation(line: 974, column: 2, scope: !2189)
!2220 = !DILocation(line: 975, column: 1, scope: !2189)
!2221 = distinct !DISubprogram(name: "init_amd_jg", scope: !3, file: !3, line: 944, type: !184, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2222 = !{!2223}
!2223 = !DILocalVariable(name: "c", arg: 1, scope: !2221, file: !3, line: 944, type: !84)
!2224 = !DILocation(line: 944, column: 45, scope: !2221)
!2225 = !DILocation(line: 951, column: 25, scope: !2221)
!2226 = !DILocation(line: 951, column: 2, scope: !2221)
!2227 = !DILocation(line: 952, column: 1, scope: !2221)
!2228 = distinct !DISubprogram(name: "init_amd_zn", scope: !3, file: !3, line: 1012, type: !184, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2229)
!2229 = !{!2230}
!2230 = !DILocalVariable(name: "c", arg: 1, scope: !2228, file: !3, line: 1012, type: !84)
!2231 = !DILocation(line: 1012, column: 45, scope: !2228)
!2232 = !DILocation(line: 1014, column: 2, scope: !2228)
!2233 = !DILocation(line: 1014, column: 2, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 1014, column: 2)
!2235 = !DILocation(line: 1016, column: 24, scope: !2228)
!2236 = !DILocation(line: 1018, column: 1, scope: !2228)
!2237 = !DILocation(line: 1020, column: 47, scope: !419)
!2238 = !DILocation(line: 1022, column: 19, scope: !419)
!2239 = !DILocation(line: 1022, column: 2, scope: !419)
!2240 = !DILocation(line: 1025, column: 6, scope: !419)
!2241 = !DILocation(line: 1025, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !419, file: !3, line: 1025, column: 6)
!2243 = !DILocation(line: 1028, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 1025, column: 43)
!2245 = !DILocation(line: 1028, column: 8, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 1028, column: 7)
!2247 = !DILocation(line: 1029, column: 4, scope: !2246)
!2248 = !DILocation(line: 1036, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 1036, column: 7)
!2250 = !DILocation(line: 1036, column: 10, scope: !2249)
!2251 = !DILocation(line: 1036, column: 14, scope: !2249)
!2252 = !DILocation(line: 1036, column: 22, scope: !2249)
!2253 = !DILocation(line: 1036, column: 7, scope: !2244)
!2254 = !DILocation(line: 1036, column: 26, scope: !2249)
!2255 = !DILocation(line: 1037, column: 4, scope: !2249)
!2256 = !DILocation(line: 1038, column: 2, scope: !2244)
!2257 = !DILocation(line: 1040, column: 2, scope: !423)
!2258 = !DILocation(line: 1040, column: 2, scope: !425)
!2259 = !DILocation(line: 1040, column: 2, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !425, file: !3, line: 1040, column: 2)
!2261 = !DILocation(line: 0, scope: !2260)
!2262 = !DILocation(line: 1040, column: 2, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 1040, column: 2)
!2264 = !DILocation(line: 1040, column: 2, scope: !426)
!2265 = !DILocation(line: 1040, column: 2, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !426, file: !3, line: 1040, column: 2)
!2267 = !DILocation(line: 1040, column: 2, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 1040, column: 2)
!2269 = !DILocation(line: 1040, column: 2, scope: !419)
!2270 = !DILocation(line: 1041, column: 2, scope: !419)
!2271 = !DILocation(line: 1041, column: 2, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !419, file: !3, line: 1041, column: 2)
!2273 = !DILocation(line: 1042, column: 1, scope: !419)
!2274 = distinct !DISubprogram(name: "init_amd_zen2", scope: !3, file: !3, line: 1082, type: !184, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2275)
!2275 = !{!2276}
!2276 = !DILocalVariable(name: "c", arg: 1, scope: !2274, file: !3, line: 1082, type: !84)
!2277 = !DILocation(line: 1082, column: 47, scope: !2274)
!2278 = !DILocation(line: 1084, column: 19, scope: !2274)
!2279 = !DILocation(line: 1084, column: 2, scope: !2274)
!2280 = !DILocation(line: 1085, column: 22, scope: !2274)
!2281 = !DILocation(line: 1085, column: 2, scope: !2274)
!2282 = !DILocation(line: 1086, column: 1, scope: !2274)
!2283 = distinct !DISubprogram(name: "init_amd_zen3", scope: !3, file: !3, line: 1088, type: !184, scopeLine: 1089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2284)
!2284 = !{!2285}
!2285 = !DILocalVariable(name: "c", arg: 1, scope: !2283, file: !3, line: 1088, type: !84)
!2286 = !DILocation(line: 1088, column: 47, scope: !2283)
!2287 = !DILocation(line: 1090, column: 1, scope: !2283)
!2288 = distinct !DISubprogram(name: "init_amd_zen4", scope: !3, file: !3, line: 1092, type: !184, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2289 = !{!2290}
!2290 = !DILocalVariable(name: "c", arg: 1, scope: !2288, file: !3, line: 1092, type: !84)
!2291 = !DILocation(line: 1092, column: 47, scope: !2288)
!2292 = !DILocation(line: 1094, column: 1, scope: !2288)
!2293 = !DISubprogram(name: "cpu_detect_cache_sizes", scope: !175, file: !175, line: 68, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2294 = distinct !DISubprogram(name: "amd_detect_cmp", scope: !3, file: !3, line: 445, type: !184, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2302, !2304, !2306, !2309}
!2296 = !DILocalVariable(name: "c", arg: 1, scope: !2294, file: !3, line: 445, type: !84)
!2297 = !DILocalVariable(name: "bits", scope: !2294, file: !3, line: 447, type: !7)
!2298 = !DILocalVariable(name: "cpu", scope: !2294, file: !3, line: 448, type: !44)
!2299 = !DILocalVariable(name: "pscr_ret__", scope: !2300, file: !3, line: 448, type: !44)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 448, column: 12)
!2301 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 448, column: 12)
!2302 = !DILocalVariable(name: "__vpp_verify", scope: !2303, file: !3, line: 448, type: !573)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 448, column: 12)
!2304 = !DILocalVariable(name: "pfo_val__", scope: !2305, file: !3, line: 448, type: !52)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 448, column: 12)
!2306 = !DILocalVariable(name: "__vpp_verify", scope: !2307, file: !3, line: 456, type: !573)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 456, column: 2)
!2308 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 456, column: 2)
!2309 = !DILocalVariable(name: "__ptr", scope: !2310, file: !3, line: 456, type: !46)
!2310 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 456, column: 2)
!2311 = !DILocation(line: 445, column: 48, scope: !2294)
!2312 = !DILocation(line: 447, column: 2, scope: !2294)
!2313 = !DILocation(line: 447, column: 11, scope: !2294)
!2314 = !DILocation(line: 448, column: 2, scope: !2294)
!2315 = !DILocation(line: 448, column: 6, scope: !2294)
!2316 = !DILocation(line: 448, column: 12, scope: !2301)
!2317 = !DILocation(line: 448, column: 12, scope: !2300)
!2318 = !DILocation(line: 448, column: 12, scope: !2303)
!2319 = !DILocation(line: 448, column: 12, scope: !2305)
!2320 = !{i64 2154707908}
!2321 = !DILocation(line: 450, column: 9, scope: !2294)
!2322 = !DILocation(line: 450, column: 12, scope: !2294)
!2323 = !DILocation(line: 450, column: 7, scope: !2294)
!2324 = !DILocation(line: 452, column: 19, scope: !2294)
!2325 = !DILocation(line: 452, column: 22, scope: !2294)
!2326 = !DILocation(line: 452, column: 46, scope: !2294)
!2327 = !DILocation(line: 452, column: 43, scope: !2294)
!2328 = !DILocation(line: 452, column: 51, scope: !2294)
!2329 = !DILocation(line: 452, column: 37, scope: !2294)
!2330 = !DILocation(line: 452, column: 2, scope: !2294)
!2331 = !DILocation(line: 452, column: 5, scope: !2294)
!2332 = !DILocation(line: 452, column: 17, scope: !2294)
!2333 = !DILocation(line: 454, column: 20, scope: !2294)
!2334 = !DILocation(line: 454, column: 23, scope: !2294)
!2335 = !DILocation(line: 454, column: 41, scope: !2294)
!2336 = !DILocation(line: 454, column: 38, scope: !2294)
!2337 = !DILocation(line: 454, column: 2, scope: !2294)
!2338 = !DILocation(line: 454, column: 5, scope: !2294)
!2339 = !DILocation(line: 454, column: 18, scope: !2294)
!2340 = !DILocation(line: 456, column: 45, scope: !2294)
!2341 = !DILocation(line: 456, column: 48, scope: !2294)
!2342 = !DILocation(line: 456, column: 29, scope: !2294)
!2343 = !DILocation(line: 456, column: 32, scope: !2294)
!2344 = !DILocation(line: 456, column: 43, scope: !2294)
!2345 = !DILocation(line: 456, column: 2, scope: !2308)
!2346 = !DILocation(line: 456, column: 2, scope: !2307)
!2347 = !DILocation(line: 456, column: 2, scope: !2310)
!2348 = !DILocation(line: 456, column: 27, scope: !2294)
!2349 = !DILocation(line: 457, column: 1, scope: !2294)
!2350 = distinct !DISubprogram(name: "amd_get_topology", scope: !3, file: !3, line: 392, type: !184, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2351 = !{!2352, !2353, !2354, !2357, !2359, !2361, !2364, !2365, !2366, !2367, !2368, !2371, !2374}
!2352 = !DILocalVariable(name: "c", arg: 1, scope: !2350, file: !3, line: 392, type: !84)
!2353 = !DILocalVariable(name: "cpu", scope: !2350, file: !3, line: 394, type: !44)
!2354 = !DILocalVariable(name: "pscr_ret__", scope: !2355, file: !3, line: 394, type: !44)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 394, column: 12)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 394, column: 12)
!2357 = !DILocalVariable(name: "__vpp_verify", scope: !2358, file: !3, line: 394, type: !573)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 394, column: 12)
!2359 = !DILocalVariable(name: "pfo_val__", scope: !2360, file: !3, line: 394, type: !52)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 394, column: 12)
!2361 = !DILocalVariable(name: "err", scope: !2362, file: !3, line: 398, type: !44)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 397, column: 41)
!2363 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 397, column: 6)
!2364 = !DILocalVariable(name: "eax", scope: !2362, file: !3, line: 399, type: !52)
!2365 = !DILocalVariable(name: "ebx", scope: !2362, file: !3, line: 399, type: !52)
!2366 = !DILocalVariable(name: "ecx", scope: !2362, file: !3, line: 399, type: !52)
!2367 = !DILocalVariable(name: "edx", scope: !2362, file: !3, line: 399, type: !52)
!2368 = !DILocalVariable(name: "value", scope: !2369, file: !3, line: 426, type: !56)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 425, column: 49)
!2370 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 425, column: 13)
!2371 = !DILocalVariable(name: "__vpp_verify", scope: !2372, file: !3, line: 431, type: !573)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 431, column: 3)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 431, column: 3)
!2374 = !DILocalVariable(name: "__ptr", scope: !2375, file: !3, line: 431, type: !46)
!2375 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 431, column: 3)
!2376 = !DILocation(line: 392, column: 50, scope: !2350)
!2377 = !DILocation(line: 394, column: 2, scope: !2350)
!2378 = !DILocation(line: 394, column: 6, scope: !2350)
!2379 = !DILocation(line: 394, column: 12, scope: !2356)
!2380 = !DILocation(line: 394, column: 12, scope: !2355)
!2381 = !DILocation(line: 394, column: 12, scope: !2358)
!2382 = !DILocation(line: 394, column: 12, scope: !2360)
!2383 = !{i64 2154692875}
!2384 = !DILocation(line: 397, column: 6, scope: !2350)
!2385 = !DILocation(line: 397, column: 6, scope: !2363)
!2386 = !DILocation(line: 398, column: 3, scope: !2362)
!2387 = !DILocation(line: 398, column: 7, scope: !2362)
!2388 = !DILocation(line: 399, column: 3, scope: !2362)
!2389 = !DILocation(line: 399, column: 7, scope: !2362)
!2390 = !DILocation(line: 399, column: 12, scope: !2362)
!2391 = !DILocation(line: 399, column: 17, scope: !2362)
!2392 = !DILocation(line: 399, column: 22, scope: !2362)
!2393 = !DILocation(line: 401, column: 3, scope: !2362)
!2394 = !DILocation(line: 403, column: 20, scope: !2362)
!2395 = !DILocation(line: 403, column: 24, scope: !2362)
!2396 = !DILocation(line: 403, column: 3, scope: !2362)
!2397 = !DILocation(line: 403, column: 6, scope: !2362)
!2398 = !DILocation(line: 403, column: 18, scope: !2362)
!2399 = !DILocation(line: 405, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 405, column: 7)
!2401 = !DILocation(line: 405, column: 10, scope: !2400)
!2402 = !DILocation(line: 405, column: 14, scope: !2400)
!2403 = !DILocation(line: 405, column: 7, scope: !2362)
!2404 = !DILocation(line: 406, column: 15, scope: !2400)
!2405 = !DILocation(line: 406, column: 19, scope: !2400)
!2406 = !DILocation(line: 406, column: 4, scope: !2400)
!2407 = !DILocation(line: 406, column: 7, scope: !2400)
!2408 = !DILocation(line: 406, column: 13, scope: !2400)
!2409 = !DILocation(line: 408, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 408, column: 7)
!2411 = !DILocation(line: 408, column: 10, scope: !2410)
!2412 = !DILocation(line: 408, column: 14, scope: !2410)
!2413 = !DILocation(line: 408, column: 7, scope: !2362)
!2414 = !DILocation(line: 409, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 408, column: 23)
!2416 = !DILocation(line: 409, column: 25, scope: !2415)
!2417 = !DILocation(line: 409, column: 4, scope: !2415)
!2418 = !DILocation(line: 409, column: 7, scope: !2415)
!2419 = !DILocation(line: 409, column: 19, scope: !2415)
!2420 = !DILocation(line: 411, column: 8, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 411, column: 8)
!2422 = !DILocation(line: 411, column: 25, scope: !2421)
!2423 = !DILocation(line: 411, column: 8, scope: !2415)
!2424 = !DILocation(line: 412, column: 25, scope: !2421)
!2425 = !DILocation(line: 412, column: 5, scope: !2421)
!2426 = !DILocation(line: 412, column: 8, scope: !2421)
!2427 = !DILocation(line: 412, column: 22, scope: !2421)
!2428 = !DILocation(line: 413, column: 3, scope: !2415)
!2429 = !DILocation(line: 419, column: 34, scope: !2362)
!2430 = !DILocation(line: 419, column: 9, scope: !2362)
!2431 = !DILocation(line: 419, column: 7, scope: !2362)
!2432 = !DILocation(line: 420, column: 8, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 420, column: 7)
!2434 = !DILocation(line: 420, column: 7, scope: !2362)
!2435 = !DILocation(line: 421, column: 41, scope: !2433)
!2436 = !DILocation(line: 421, column: 44, scope: !2433)
!2437 = !DILocation(line: 421, column: 25, scope: !2433)
!2438 = !DILocation(line: 421, column: 4, scope: !2433)
!2439 = !DILocation(line: 421, column: 7, scope: !2433)
!2440 = !DILocation(line: 421, column: 23, scope: !2433)
!2441 = !DILocation(line: 423, column: 29, scope: !2362)
!2442 = !DILocation(line: 423, column: 32, scope: !2362)
!2443 = !DILocation(line: 423, column: 3, scope: !2362)
!2444 = !DILocation(line: 425, column: 2, scope: !2363)
!2445 = !DILocation(line: 425, column: 2, scope: !2362)
!2446 = !DILocation(line: 425, column: 13, scope: !2363)
!2447 = !DILocation(line: 425, column: 13, scope: !2370)
!2448 = !DILocation(line: 426, column: 3, scope: !2369)
!2449 = !DILocation(line: 426, column: 7, scope: !2369)
!2450 = !DILocation(line: 428, column: 3, scope: !2369)
!2451 = !DILocation(line: 429, column: 19, scope: !2369)
!2452 = !DILocation(line: 429, column: 25, scope: !2369)
!2453 = !DILocation(line: 429, column: 3, scope: !2369)
!2454 = !DILocation(line: 429, column: 6, scope: !2369)
!2455 = !DILocation(line: 429, column: 17, scope: !2369)
!2456 = !DILocation(line: 431, column: 30, scope: !2369)
!2457 = !DILocation(line: 431, column: 33, scope: !2369)
!2458 = !DILocation(line: 431, column: 3, scope: !2373)
!2459 = !DILocation(line: 431, column: 3, scope: !2372)
!2460 = !DILocation(line: 431, column: 3, scope: !2375)
!2461 = !DILocation(line: 431, column: 28, scope: !2369)
!2462 = !DILocation(line: 432, column: 2, scope: !2370)
!2463 = !DILocation(line: 432, column: 2, scope: !2369)
!2464 = !DILocation(line: 433, column: 3, scope: !2370)
!2465 = !DILocation(line: 435, column: 6, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 435, column: 6)
!2467 = !DILocation(line: 435, column: 23, scope: !2466)
!2468 = !DILocation(line: 435, column: 6, scope: !2350)
!2469 = !DILocation(line: 436, column: 3, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 435, column: 28)
!2471 = !DILocation(line: 437, column: 24, scope: !2470)
!2472 = !DILocation(line: 437, column: 3, scope: !2470)
!2473 = !DILocation(line: 438, column: 2, scope: !2470)
!2474 = !DILocation(line: 439, column: 1, scope: !2350)
!2475 = distinct !DISubprogram(name: "srat_detect_node", scope: !3, file: !3, line: 465, type: !184, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2476 = !{!2477, !2478, !2479, !2482, !2484, !2486, !2487, !2488}
!2477 = !DILocalVariable(name: "c", arg: 1, scope: !2475, file: !3, line: 465, type: !84)
!2478 = !DILocalVariable(name: "cpu", scope: !2475, file: !3, line: 468, type: !44)
!2479 = !DILocalVariable(name: "pscr_ret__", scope: !2480, file: !3, line: 468, type: !44)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 468, column: 12)
!2481 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 468, column: 12)
!2482 = !DILocalVariable(name: "__vpp_verify", scope: !2483, file: !3, line: 468, type: !573)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 468, column: 12)
!2484 = !DILocalVariable(name: "pfo_val__", scope: !2485, file: !3, line: 468, type: !52)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 468, column: 12)
!2486 = !DILocalVariable(name: "node", scope: !2475, file: !3, line: 469, type: !44)
!2487 = !DILocalVariable(name: "apicid", scope: !2475, file: !3, line: 470, type: !7)
!2488 = !DILocalVariable(name: "ht_nodeid", scope: !2489, file: !3, line: 504, type: !44)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 484, column: 26)
!2490 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 484, column: 6)
!2491 = !DILocation(line: 465, column: 50, scope: !2475)
!2492 = !DILocation(line: 468, column: 2, scope: !2475)
!2493 = !DILocation(line: 468, column: 6, scope: !2475)
!2494 = !DILocation(line: 468, column: 12, scope: !2481)
!2495 = !DILocation(line: 468, column: 12, scope: !2480)
!2496 = !DILocation(line: 468, column: 12, scope: !2483)
!2497 = !DILocation(line: 468, column: 12, scope: !2485)
!2498 = !{i64 2154714118}
!2499 = !DILocation(line: 469, column: 2, scope: !2475)
!2500 = !DILocation(line: 469, column: 6, scope: !2475)
!2501 = !DILocation(line: 470, column: 2, scope: !2475)
!2502 = !DILocation(line: 470, column: 11, scope: !2475)
!2503 = !DILocation(line: 470, column: 20, scope: !2475)
!2504 = !DILocation(line: 470, column: 23, scope: !2475)
!2505 = !DILocation(line: 472, column: 23, scope: !2475)
!2506 = !DILocation(line: 472, column: 9, scope: !2475)
!2507 = !DILocation(line: 472, column: 7, scope: !2475)
!2508 = !DILocation(line: 473, column: 6, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 473, column: 6)
!2510 = !DILocation(line: 473, column: 11, scope: !2509)
!2511 = !DILocation(line: 473, column: 6, scope: !2475)
!2512 = !DILocation(line: 474, column: 21, scope: !2509)
!2513 = !DILocation(line: 474, column: 10, scope: !2509)
!2514 = !DILocation(line: 474, column: 8, scope: !2509)
!2515 = !DILocation(line: 474, column: 3, scope: !2509)
!2516 = !DILocation(line: 481, column: 18, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 481, column: 6)
!2518 = !DILocation(line: 481, column: 6, scope: !2517)
!2519 = !DILocation(line: 481, column: 6, scope: !2475)
!2520 = !DILocation(line: 482, column: 15, scope: !2517)
!2521 = !DILocation(line: 482, column: 28, scope: !2517)
!2522 = !DILocation(line: 482, column: 31, scope: !2517)
!2523 = !DILocation(line: 482, column: 3, scope: !2517)
!2524 = !DILocation(line: 484, column: 7, scope: !2490)
!2525 = !DILocation(line: 484, column: 6, scope: !2475)
!2526 = !DILocation(line: 504, column: 3, scope: !2489)
!2527 = !DILocation(line: 504, column: 7, scope: !2489)
!2528 = !DILocation(line: 504, column: 19, scope: !2489)
!2529 = !DILocation(line: 504, column: 22, scope: !2489)
!2530 = !DILocation(line: 506, column: 24, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 506, column: 7)
!2532 = !DILocation(line: 506, column: 7, scope: !2531)
!2533 = !DILocation(line: 506, column: 35, scope: !2531)
!2534 = !DILocation(line: 506, column: 7, scope: !2489)
!2535 = !DILocation(line: 507, column: 28, scope: !2531)
!2536 = !DILocation(line: 507, column: 11, scope: !2531)
!2537 = !DILocation(line: 507, column: 9, scope: !2531)
!2538 = !DILocation(line: 507, column: 4, scope: !2531)
!2539 = !DILocation(line: 509, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 509, column: 7)
!2541 = !DILocation(line: 509, column: 7, scope: !2489)
!2542 = !DILocation(line: 510, column: 23, scope: !2540)
!2543 = !DILocation(line: 510, column: 11, scope: !2540)
!2544 = !DILocation(line: 510, column: 9, scope: !2540)
!2545 = !DILocation(line: 510, column: 4, scope: !2540)
!2546 = !DILocation(line: 511, column: 2, scope: !2490)
!2547 = !DILocation(line: 511, column: 2, scope: !2489)
!2548 = !DILocation(line: 512, column: 16, scope: !2475)
!2549 = !DILocation(line: 512, column: 21, scope: !2475)
!2550 = !DILocation(line: 512, column: 2, scope: !2475)
!2551 = !DILocation(line: 514, column: 1, scope: !2475)
!2552 = !DISubprogram(name: "init_amd_cacheinfo", scope: !175, file: !175, line: 71, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2553 = !DISubprogram(name: "check_null_seg_clears_base", scope: !175, file: !175, line: 79, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2554 = distinct !DISubprogram(name: "spectre_v2_in_eibrs_mode", scope: !175, file: !175, line: 90, type: !2555, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!148, !27}
!2557 = !{!2558}
!2558 = !DILocalVariable(name: "mode", arg: 1, scope: !2554, file: !175, line: 90, type: !27)
!2559 = !DILocation(line: 90, column: 72, scope: !2554)
!2560 = !DILocation(line: 92, column: 9, scope: !2554)
!2561 = !DILocation(line: 92, column: 14, scope: !2554)
!2562 = !DILocation(line: 92, column: 34, scope: !2554)
!2563 = !DILocation(line: 93, column: 9, scope: !2554)
!2564 = !DILocation(line: 93, column: 14, scope: !2554)
!2565 = !DILocation(line: 93, column: 44, scope: !2554)
!2566 = !DILocation(line: 94, column: 9, scope: !2554)
!2567 = !DILocation(line: 94, column: 14, scope: !2554)
!2568 = !DILocation(line: 92, column: 2, scope: !2554)
!2569 = !DILocation(line: 397, column: 42, scope: !315)
!2570 = !DILocation(line: 399, column: 9, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !315, file: !316, line: 399, column: 9)
!2572 = !DILocation(line: 399, column: 37, scope: !315)
!2573 = !DILocation(line: 399, column: 9, scope: !315)
!2574 = !DILocation(line: 399, column: 2, scope: !315)
!2575 = distinct !DISubprogram(name: "cpuid_eax", scope: !1882, file: !1882, line: 94, type: !1883, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581}
!2577 = !DILocalVariable(name: "op", arg: 1, scope: !2575, file: !1882, line: 94, type: !7)
!2578 = !DILocalVariable(name: "eax", scope: !2575, file: !1882, line: 96, type: !7)
!2579 = !DILocalVariable(name: "ebx", scope: !2575, file: !1882, line: 96, type: !7)
!2580 = !DILocalVariable(name: "ecx", scope: !2575, file: !1882, line: 96, type: !7)
!2581 = !DILocalVariable(name: "edx", scope: !2575, file: !1882, line: 96, type: !7)
!2582 = !DILocation(line: 94, column: 51, scope: !2575)
!2583 = !DILocation(line: 96, column: 2, scope: !2575)
!2584 = !DILocation(line: 96, column: 15, scope: !2575)
!2585 = !DILocation(line: 96, column: 20, scope: !2575)
!2586 = !DILocation(line: 96, column: 25, scope: !2575)
!2587 = !DILocation(line: 96, column: 30, scope: !2575)
!2588 = !DILocation(line: 98, column: 8, scope: !2575)
!2589 = !DILocation(line: 98, column: 2, scope: !2575)
!2590 = !DILocation(line: 100, column: 9, scope: !2575)
!2591 = !DILocation(line: 101, column: 1, scope: !2575)
!2592 = !DILocation(line: 100, column: 2, scope: !2575)
!2593 = !DILocation(line: 104, column: 44, scope: !326)
!2594 = !DILocation(line: 104, column: 69, scope: !326)
!2595 = !DILocation(line: 106, column: 2, scope: !326)
!2596 = !DILocation(line: 106, column: 6, scope: !326)
!2597 = !DILocation(line: 107, column: 2, scope: !326)
!2598 = !DILocation(line: 107, column: 6, scope: !326)
!2599 = !DILocation(line: 109, column: 2, scope: !339)
!2600 = !DILocation(line: 109, column: 2, scope: !341)
!2601 = !DILocation(line: 109, column: 2, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !341, file: !3, line: 109, column: 2)
!2603 = !DILocation(line: 0, scope: !2602)
!2604 = !DILocation(line: 109, column: 2, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 109, column: 2)
!2606 = !DILocation(line: 109, column: 2, scope: !342)
!2607 = !DILocation(line: 109, column: 2, scope: !345)
!2608 = !DILocation(line: 109, column: 2, scope: !349)
!2609 = !DILocation(line: 109, column: 2, scope: !348)
!2610 = !DILocation(line: 109, column: 2, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !348, file: !3, line: 109, column: 2)
!2612 = !DILocation(line: 109, column: 2, scope: !347)
!2613 = !DILocation(line: 109, column: 2, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !347, file: !3, line: 109, column: 2)
!2615 = !DILocation(line: 109, column: 2, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !347, file: !3, line: 109, column: 2)
!2617 = !{i64 2154686209, i64 2154686238, i64 2154686284, i64 2154686342, i64 2154686396, i64 2154686450, i64 2154686505, i64 2154686536, i64 2154686844, i64 2154686850, i64 2154686897, i64 2154686920, i64 2154686946}
!2618 = !DILocation(line: 109, column: 2, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !347, file: !3, line: 109, column: 2)
!2620 = !DILocation(line: 109, column: 2, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !348, file: !3, line: 109, column: 2)
!2622 = !DILocation(line: 109, column: 2, scope: !326)
!2623 = !DILocation(line: 112, column: 12, scope: !326)
!2624 = !DILocation(line: 112, column: 2, scope: !326)
!2625 = !DILocation(line: 112, column: 10, scope: !326)
!2626 = !DILocation(line: 113, column: 2, scope: !326)
!2627 = !DILocation(line: 113, column: 10, scope: !326)
!2628 = !DILocation(line: 115, column: 24, scope: !326)
!2629 = !DILocation(line: 115, column: 8, scope: !326)
!2630 = !DILocation(line: 115, column: 6, scope: !326)
!2631 = !DILocation(line: 117, column: 7, scope: !326)
!2632 = !DILocation(line: 117, column: 23, scope: !326)
!2633 = !DILocation(line: 117, column: 18, scope: !326)
!2634 = !DILocation(line: 117, column: 31, scope: !326)
!2635 = !DILocation(line: 117, column: 15, scope: !326)
!2636 = !DILocation(line: 117, column: 3, scope: !326)
!2637 = !DILocation(line: 117, column: 5, scope: !326)
!2638 = !DILocation(line: 119, column: 9, scope: !326)
!2639 = !DILocation(line: 120, column: 1, scope: !326)
!2640 = !DILocation(line: 119, column: 2, scope: !326)
!2641 = !DILocation(line: 122, column: 44, scope: !360)
!2642 = !DILocation(line: 122, column: 68, scope: !360)
!2643 = !DILocation(line: 124, column: 2, scope: !360)
!2644 = !DILocation(line: 124, column: 6, scope: !360)
!2645 = !DILocation(line: 126, column: 2, scope: !368)
!2646 = !DILocation(line: 126, column: 2, scope: !370)
!2647 = !DILocation(line: 126, column: 2, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !370, file: !3, line: 126, column: 2)
!2649 = !DILocation(line: 0, scope: !2648)
!2650 = !DILocation(line: 126, column: 2, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 126, column: 2)
!2652 = !DILocation(line: 126, column: 2, scope: !371)
!2653 = !DILocation(line: 126, column: 2, scope: !374)
!2654 = !DILocation(line: 126, column: 2, scope: !378)
!2655 = !DILocation(line: 126, column: 2, scope: !377)
!2656 = !DILocation(line: 126, column: 2, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !377, file: !3, line: 126, column: 2)
!2658 = !DILocation(line: 126, column: 2, scope: !376)
!2659 = !DILocation(line: 126, column: 2, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !376, file: !3, line: 126, column: 2)
!2661 = !DILocation(line: 126, column: 2, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !376, file: !3, line: 126, column: 2)
!2663 = !{i64 2154689045, i64 2154689074, i64 2154689120, i64 2154689178, i64 2154689232, i64 2154689286, i64 2154689341, i64 2154689372, i64 2154689680, i64 2154689686, i64 2154689733, i64 2154689756, i64 2154689782}
!2664 = !DILocation(line: 126, column: 2, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !376, file: !3, line: 126, column: 2)
!2666 = !DILocation(line: 126, column: 2, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !377, file: !3, line: 126, column: 2)
!2668 = !DILocation(line: 126, column: 2, scope: !360)
!2669 = !DILocation(line: 129, column: 17, scope: !360)
!2670 = !DILocation(line: 129, column: 12, scope: !360)
!2671 = !DILocation(line: 129, column: 2, scope: !360)
!2672 = !DILocation(line: 129, column: 10, scope: !360)
!2673 = !DILocation(line: 130, column: 12, scope: !360)
!2674 = !DILocation(line: 130, column: 2, scope: !360)
!2675 = !DILocation(line: 130, column: 10, scope: !360)
!2676 = !DILocation(line: 131, column: 12, scope: !360)
!2677 = !DILocation(line: 131, column: 16, scope: !360)
!2678 = !DILocation(line: 131, column: 2, scope: !360)
!2679 = !DILocation(line: 131, column: 10, scope: !360)
!2680 = !DILocation(line: 132, column: 2, scope: !360)
!2681 = !DILocation(line: 132, column: 10, scope: !360)
!2682 = !DILocation(line: 134, column: 25, scope: !360)
!2683 = !DILocation(line: 134, column: 9, scope: !360)
!2684 = !DILocation(line: 135, column: 1, scope: !360)
!2685 = !DILocation(line: 134, column: 2, scope: !360)
!2686 = !DISubprogram(name: "strcpy", scope: !859, file: !859, line: 63, type: !2687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!167, !167, !73}
!2689 = !DISubprogram(name: "rdmsr_safe_regs", scope: !529, file: !529, line: 168, type: !2690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!44, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!2693 = !DISubprogram(name: "wrmsr_safe_regs", scope: !529, file: !529, line: 169, type: !2690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2694 = !DISubprogram(name: "check_enable_amd_mmconf_dmi", scope: !2695, file: !2695, line: 7, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2695 = !DIFile(filename: "./arch/x86/include/asm/mmconfig.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f81b8a987807a8cfafdc3a3ba664b162")
!2696 = !DISubprogram(name: "fam10h_check_enable_mmcfg", scope: !2695, file: !2695, line: 6, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2697 = !DISubprogram(name: "msr_clear_bit", scope: !529, file: !529, line: 311, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2698 = !DILocation(line: 912, column: 56, scope: !388)
!2699 = !DILocation(line: 926, column: 8, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !388, file: !3, line: 926, column: 6)
!2701 = !DILocation(line: 926, column: 21, scope: !2700)
!2702 = !DILocation(line: 926, column: 32, scope: !2700)
!2703 = !DILocation(line: 926, column: 35, scope: !2700)
!2704 = !DILocation(line: 926, column: 6, scope: !388)
!2705 = !DILocation(line: 927, column: 3, scope: !2700)
!2706 = !DILocation(line: 929, column: 2, scope: !388)
!2707 = !DILocation(line: 935, column: 6, scope: !394)
!2708 = !DILocation(line: 935, column: 19, scope: !394)
!2709 = !DILocation(line: 935, column: 6, scope: !388)
!2710 = !DILocation(line: 936, column: 3, scope: !392)
!2711 = !DILocation(line: 936, column: 3, scope: !396)
!2712 = !DILocation(line: 936, column: 3, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !396, file: !3, line: 936, column: 3)
!2714 = !DILocation(line: 0, scope: !2713)
!2715 = !DILocation(line: 936, column: 3, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 936, column: 3)
!2717 = !DILocation(line: 936, column: 3, scope: !397)
!2718 = !DILocation(line: 936, column: 3, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !397, file: !3, line: 936, column: 3)
!2720 = !DILocation(line: 936, column: 3, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 936, column: 3)
!2722 = !DILocation(line: 936, column: 3, scope: !393)
!2723 = !DILocation(line: 937, column: 3, scope: !393)
!2724 = !DILocation(line: 940, column: 16, scope: !388)
!2725 = !DILocation(line: 940, column: 2, scope: !388)
!2726 = !DILocation(line: 941, column: 2, scope: !400)
!2727 = !DILocation(line: 941, column: 2, scope: !402)
!2728 = !DILocation(line: 941, column: 2, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !402, file: !3, line: 941, column: 2)
!2730 = !DILocation(line: 0, scope: !2729)
!2731 = !DILocation(line: 941, column: 2, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 941, column: 2)
!2733 = !DILocation(line: 941, column: 2, scope: !403)
!2734 = !DILocation(line: 941, column: 2, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !403, file: !3, line: 941, column: 2)
!2736 = !DILocation(line: 941, column: 2, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 941, column: 2)
!2738 = !DILocation(line: 941, column: 2, scope: !388)
!2739 = !DILocation(line: 942, column: 1, scope: !388)
!2740 = distinct !DISubprogram(name: "fix_erratum_1386", scope: !3, file: !3, line: 977, type: !184, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2741)
!2741 = !{!2742}
!2742 = !DILocalVariable(name: "c", arg: 1, scope: !2740, file: !3, line: 977, type: !84)
!2743 = !DILocation(line: 977, column: 50, scope: !2740)
!2744 = !DILocation(line: 987, column: 16, scope: !2740)
!2745 = !DILocation(line: 987, column: 2, scope: !2740)
!2746 = !DILocation(line: 988, column: 1, scope: !2740)
!2747 = !DILocation(line: 1066, column: 53, scope: !432)
!2748 = !DILocation(line: 1068, column: 6, scope: !432)
!2749 = !DILocation(line: 1068, column: 6, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !432, file: !3, line: 1068, column: 6)
!2751 = !DILocation(line: 1069, column: 3, scope: !2750)
!2752 = !DILocation(line: 1071, column: 6, scope: !432)
!2753 = !DILocation(line: 1071, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !432, file: !3, line: 1071, column: 6)
!2755 = !DILocation(line: 1072, column: 3, scope: !2754)
!2756 = !DILocation(line: 1074, column: 7, scope: !438)
!2757 = !DILocation(line: 1074, column: 6, scope: !432)
!2758 = !DILocation(line: 1075, column: 3, scope: !436)
!2759 = !DILocation(line: 1075, column: 3, scope: !440)
!2760 = !DILocation(line: 1075, column: 3, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !440, file: !3, line: 1075, column: 3)
!2762 = !DILocation(line: 0, scope: !2761)
!2763 = !DILocation(line: 1075, column: 3, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1075, column: 3)
!2765 = !DILocation(line: 1075, column: 3, scope: !441)
!2766 = !DILocation(line: 1075, column: 3, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !441, file: !3, line: 1075, column: 3)
!2768 = !DILocation(line: 1075, column: 3, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1075, column: 3)
!2770 = !DILocation(line: 1075, column: 3, scope: !437)
!2771 = !DILocation(line: 1076, column: 3, scope: !437)
!2772 = !DILocation(line: 1077, column: 2, scope: !437)
!2773 = !DILocation(line: 1078, column: 3, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !438, file: !3, line: 1077, column: 9)
!2775 = !DILocation(line: 1080, column: 1, scope: !432)
!2776 = distinct !DISubprogram(name: "cpu_has_zenbleed_microcode", scope: !3, file: !3, line: 1044, type: !2777, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!148}
!2779 = !{!2780}
!2780 = !DILocalVariable(name: "good_rev", scope: !2776, file: !3, line: 1046, type: !52)
!2781 = !DILocation(line: 1046, column: 2, scope: !2776)
!2782 = !DILocation(line: 1046, column: 6, scope: !2776)
!2783 = !DILocation(line: 1048, column: 24, scope: !2776)
!2784 = !DILocation(line: 1048, column: 10, scope: !2776)
!2785 = !DILocation(line: 1048, column: 2, scope: !2776)
!2786 = !DILocation(line: 1049, column: 31, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1048, column: 35)
!2788 = !DILocation(line: 1049, column: 45, scope: !2787)
!2789 = !DILocation(line: 1050, column: 31, scope: !2787)
!2790 = !DILocation(line: 1050, column: 45, scope: !2787)
!2791 = !DILocation(line: 1051, column: 31, scope: !2787)
!2792 = !DILocation(line: 1051, column: 45, scope: !2787)
!2793 = !DILocation(line: 1052, column: 31, scope: !2787)
!2794 = !DILocation(line: 1052, column: 45, scope: !2787)
!2795 = !DILocation(line: 1053, column: 31, scope: !2787)
!2796 = !DILocation(line: 1053, column: 45, scope: !2787)
!2797 = !DILocation(line: 1056, column: 3, scope: !2787)
!2798 = !DILocation(line: 1060, column: 20, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1060, column: 6)
!2800 = !DILocation(line: 1060, column: 32, scope: !2799)
!2801 = !DILocation(line: 1060, column: 30, scope: !2799)
!2802 = !DILocation(line: 1060, column: 6, scope: !2776)
!2803 = !DILocation(line: 1061, column: 3, scope: !2799)
!2804 = !DILocation(line: 1063, column: 2, scope: !2776)
!2805 = !DILocation(line: 1064, column: 1, scope: !2776)
!2806 = !DISubprogram(name: "detect_extended_topology", scope: !175, file: !175, line: 76, type: !2807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!44, !84}
!2809 = distinct !DISubprogram(name: "get_count_order", scope: !2810, file: !2810, line: 211, type: !2811, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2810 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!44, !7}
!2813 = !{!2814}
!2814 = !DILocalVariable(name: "count", arg: 1, scope: !2809, file: !2810, line: 211, type: !7)
!2815 = !DILocation(line: 211, column: 48, scope: !2809)
!2816 = !DILocation(line: 213, column: 6, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2809, file: !2810, line: 213, column: 6)
!2818 = !DILocation(line: 213, column: 12, scope: !2817)
!2819 = !DILocation(line: 213, column: 6, scope: !2809)
!2820 = !DILocation(line: 214, column: 3, scope: !2817)
!2821 = !DILocation(line: 216, column: 13, scope: !2809)
!2822 = !DILocation(line: 216, column: 9, scope: !2809)
!2823 = !DILocation(line: 216, column: 2, scope: !2809)
!2824 = !DILocation(line: 217, column: 1, scope: !2809)
!2825 = !DISubprogram(name: "cacheinfo_amd_init_llc_id", scope: !2826, file: !2826, line: 10, type: !2827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2826 = !DIFile(filename: "./arch/x86/include/asm/cacheinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72510c6c59c3c1d875de31fb2baaf624")
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !84, !44}
!2829 = distinct !DISubprogram(name: "legacy_fixup_core_id", scope: !3, file: !3, line: 375, type: !184, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2830)
!2830 = !{!2831, !2832}
!2831 = !DILocalVariable(name: "c", arg: 1, scope: !2829, file: !3, line: 375, type: !84)
!2832 = !DILocalVariable(name: "cus_per_node", scope: !2829, file: !3, line: 377, type: !52)
!2833 = !DILocation(line: 375, column: 54, scope: !2829)
!2834 = !DILocation(line: 377, column: 2, scope: !2829)
!2835 = !DILocation(line: 377, column: 6, scope: !2829)
!2836 = !DILocation(line: 379, column: 6, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 379, column: 6)
!2838 = !DILocation(line: 379, column: 9, scope: !2837)
!2839 = !DILocation(line: 379, column: 13, scope: !2837)
!2840 = !DILocation(line: 379, column: 6, scope: !2829)
!2841 = !DILocation(line: 380, column: 3, scope: !2837)
!2842 = !DILocation(line: 382, column: 17, scope: !2829)
!2843 = !DILocation(line: 382, column: 20, scope: !2829)
!2844 = !DILocation(line: 382, column: 36, scope: !2829)
!2845 = !DILocation(line: 382, column: 34, scope: !2829)
!2846 = !DILocation(line: 382, column: 15, scope: !2829)
!2847 = !DILocation(line: 383, column: 20, scope: !2829)
!2848 = !DILocation(line: 383, column: 2, scope: !2829)
!2849 = !DILocation(line: 383, column: 5, scope: !2829)
!2850 = !DILocation(line: 383, column: 17, scope: !2829)
!2851 = !DILocation(line: 384, column: 1, scope: !2829)
!2852 = distinct !DISubprogram(name: "fls", scope: !508, file: !508, line: 359, type: !2811, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "x", arg: 1, scope: !2852, file: !508, line: 359, type: !7)
!2855 = !DILocalVariable(name: "r", scope: !2852, file: !508, line: 361, type: !44)
!2856 = !DILocation(line: 359, column: 45, scope: !2852)
!2857 = !DILocation(line: 361, column: 2, scope: !2852)
!2858 = !DILocation(line: 361, column: 6, scope: !2852)
!2859 = !DILocation(line: 375, column: 14, scope: !2852)
!2860 = !DILocation(line: 373, column: 2, scope: !2852)
!2861 = !{i64 305854}
!2862 = !DILocation(line: 386, column: 9, scope: !2852)
!2863 = !DILocation(line: 386, column: 11, scope: !2852)
!2864 = !DILocation(line: 387, column: 1, scope: !2852)
!2865 = !DILocation(line: 386, column: 2, scope: !2852)
!2866 = !DISubprogram(name: "numa_cpu_node", scope: !2867, file: !2867, line: 36, type: !2868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2867 = !DIFile(filename: "./arch/x86/include/asm/numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd854ea31756e2db308aa8bc404b389b")
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!44, !44}
!2870 = !DISubprogram(name: "get_llc_id", scope: !38, file: !38, line: 696, type: !2871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!66, !7}
!2873 = distinct !DISubprogram(name: "node_state", scope: !17, file: !17, line: 421, type: !2874, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!44, !44, !16}
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "node", arg: 1, scope: !2873, file: !17, line: 421, type: !44)
!2878 = !DILocalVariable(name: "state", arg: 2, scope: !2873, file: !17, line: 421, type: !16)
!2879 = !DILocation(line: 421, column: 34, scope: !2873)
!2880 = !DILocation(line: 421, column: 57, scope: !2873)
!2881 = !DILocation(line: 423, column: 9, scope: !2873)
!2882 = !DILocation(line: 423, column: 2, scope: !2873)
!2883 = distinct !DISubprogram(name: "nearby_node", scope: !3, file: !3, line: 352, type: !2868, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DILocalVariable(name: "apicid", arg: 1, scope: !2883, file: !3, line: 352, type: !44)
!2886 = !DILocalVariable(name: "i", scope: !2883, file: !3, line: 354, type: !44)
!2887 = !DILocalVariable(name: "node", scope: !2883, file: !3, line: 354, type: !44)
!2888 = !DILocation(line: 352, column: 28, scope: !2883)
!2889 = !DILocation(line: 354, column: 2, scope: !2883)
!2890 = !DILocation(line: 354, column: 6, scope: !2883)
!2891 = !DILocation(line: 354, column: 9, scope: !2883)
!2892 = !DILocation(line: 356, column: 11, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 356, column: 2)
!2894 = !DILocation(line: 356, column: 18, scope: !2893)
!2895 = !DILocation(line: 356, column: 9, scope: !2893)
!2896 = !DILocation(line: 356, column: 7, scope: !2893)
!2897 = !DILocation(line: 356, column: 23, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 356, column: 2)
!2899 = !DILocation(line: 356, column: 25, scope: !2898)
!2900 = !DILocation(line: 356, column: 2, scope: !2893)
!2901 = !DILocation(line: 357, column: 27, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 356, column: 36)
!2903 = !DILocation(line: 357, column: 10, scope: !2902)
!2904 = !DILocation(line: 357, column: 8, scope: !2902)
!2905 = !DILocation(line: 358, column: 7, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 358, column: 7)
!2907 = !DILocation(line: 358, column: 12, scope: !2906)
!2908 = !DILocation(line: 358, column: 28, scope: !2906)
!2909 = !DILocation(line: 358, column: 31, scope: !2906)
!2910 = !DILocation(line: 358, column: 7, scope: !2902)
!2911 = !DILocation(line: 359, column: 11, scope: !2906)
!2912 = !DILocation(line: 359, column: 4, scope: !2906)
!2913 = !DILocation(line: 360, column: 2, scope: !2902)
!2914 = !DILocation(line: 356, column: 32, scope: !2898)
!2915 = !DILocation(line: 356, column: 2, scope: !2898)
!2916 = distinct !{!2916, !2900, !2917, !1697, !1698}
!2917 = !DILocation(line: 360, column: 2, scope: !2893)
!2918 = !DILocation(line: 361, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 361, column: 2)
!2920 = !DILocation(line: 361, column: 18, scope: !2919)
!2921 = !DILocation(line: 361, column: 9, scope: !2919)
!2922 = !DILocation(line: 361, column: 7, scope: !2919)
!2923 = !DILocation(line: 361, column: 23, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 361, column: 2)
!2925 = !DILocation(line: 361, column: 25, scope: !2924)
!2926 = !DILocation(line: 361, column: 2, scope: !2919)
!2927 = !DILocation(line: 362, column: 27, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 361, column: 48)
!2929 = !DILocation(line: 362, column: 10, scope: !2928)
!2930 = !DILocation(line: 362, column: 8, scope: !2928)
!2931 = !DILocation(line: 363, column: 7, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 363, column: 7)
!2933 = !DILocation(line: 363, column: 12, scope: !2932)
!2934 = !DILocation(line: 363, column: 28, scope: !2932)
!2935 = !DILocation(line: 363, column: 31, scope: !2932)
!2936 = !DILocation(line: 363, column: 7, scope: !2928)
!2937 = !DILocation(line: 364, column: 11, scope: !2932)
!2938 = !DILocation(line: 364, column: 4, scope: !2932)
!2939 = !DILocation(line: 365, column: 2, scope: !2928)
!2940 = !DILocation(line: 361, column: 44, scope: !2924)
!2941 = !DILocation(line: 361, column: 2, scope: !2924)
!2942 = distinct !{!2942, !2926, !2943, !1697, !1698}
!2943 = !DILocation(line: 365, column: 2, scope: !2919)
!2944 = !DILocation(line: 366, column: 9, scope: !2883)
!2945 = !DILocation(line: 366, column: 2, scope: !2883)
!2946 = !DILocation(line: 367, column: 1, scope: !2883)
!2947 = !DISubprogram(name: "numa_set_node", scope: !2867, file: !2867, line: 54, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !44, !44}
!2950 = distinct !DISubprogram(name: "const_test_bit", scope: !2951, file: !2951, line: 166, type: !509, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2952)
!2951 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!2952 = !{!2953, !2954, !2955, !2956, !2957}
!2953 = !DILocalVariable(name: "nr", arg: 1, scope: !2950, file: !2951, line: 166, type: !46)
!2954 = !DILocalVariable(name: "addr", arg: 2, scope: !2950, file: !2951, line: 166, type: !511)
!2955 = !DILocalVariable(name: "p", scope: !2950, file: !2951, line: 168, type: !71)
!2956 = !DILocalVariable(name: "mask", scope: !2950, file: !2951, line: 169, type: !46)
!2957 = !DILocalVariable(name: "val", scope: !2950, file: !2951, line: 170, type: !46)
!2958 = !DILocation(line: 166, column: 30, scope: !2950)
!2959 = !DILocation(line: 166, column: 64, scope: !2950)
!2960 = !DILocation(line: 168, column: 2, scope: !2950)
!2961 = !DILocation(line: 168, column: 23, scope: !2950)
!2962 = !DILocation(line: 168, column: 50, scope: !2950)
!2963 = !DILocation(line: 168, column: 57, scope: !2950)
!2964 = !DILocation(line: 168, column: 55, scope: !2950)
!2965 = !DILocation(line: 169, column: 2, scope: !2950)
!2966 = !DILocation(line: 169, column: 16, scope: !2950)
!2967 = !DILocation(line: 169, column: 23, scope: !2950)
!2968 = !DILocation(line: 170, column: 2, scope: !2950)
!2969 = !DILocation(line: 170, column: 16, scope: !2950)
!2970 = !DILocation(line: 170, column: 23, scope: !2950)
!2971 = !DILocation(line: 170, column: 22, scope: !2950)
!2972 = !DILocation(line: 172, column: 12, scope: !2950)
!2973 = !DILocation(line: 172, column: 18, scope: !2950)
!2974 = !DILocation(line: 172, column: 16, scope: !2950)
!2975 = !DILocation(line: 172, column: 10, scope: !2950)
!2976 = !DILocation(line: 172, column: 9, scope: !2950)
!2977 = !DILocation(line: 173, column: 1, scope: !2950)
!2978 = !DILocation(line: 172, column: 2, scope: !2950)
!2979 = distinct !DISubprogram(name: "_test_bit", scope: !2980, file: !2980, line: 139, type: !509, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2981)
!2980 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2981 = !{!2982, !2983}
!2982 = !DILocalVariable(name: "nr", arg: 1, scope: !2979, file: !2980, line: 139, type: !46)
!2983 = !DILocalVariable(name: "addr", arg: 2, scope: !2979, file: !2980, line: 139, type: !511)
!2984 = !DILocation(line: 139, column: 25, scope: !2979)
!2985 = !DILocation(line: 139, column: 59, scope: !2979)
!2986 = !DILocation(line: 141, column: 25, scope: !2979)
!2987 = !DILocation(line: 141, column: 32, scope: !2979)
!2988 = !DILocation(line: 141, column: 30, scope: !2979)
!2989 = !DILocation(line: 141, column: 2, scope: !2979)
!2990 = !DILocation(line: 142, column: 23, scope: !2979)
!2991 = !DILocation(line: 142, column: 27, scope: !2979)
!2992 = !DILocation(line: 142, column: 9, scope: !2979)
!2993 = !DILocation(line: 142, column: 2, scope: !2979)
!2994 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1970, file: !1970, line: 66, type: !1971, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2995)
!2995 = !{!2996, !2997}
!2996 = !DILocalVariable(name: "v", arg: 1, scope: !2994, file: !1970, line: 66, type: !1973)
!2997 = !DILocalVariable(name: "size", arg: 2, scope: !2994, file: !1970, line: 66, type: !1976)
!2998 = !DILocation(line: 66, column: 73, scope: !2994)
!2999 = !DILocation(line: 66, column: 83, scope: !2994)
!3000 = !DILocation(line: 68, column: 19, scope: !2994)
!3001 = !DILocation(line: 68, column: 22, scope: !2994)
!3002 = !DILocation(line: 68, column: 2, scope: !2994)
!3003 = !DILocation(line: 69, column: 2, scope: !2994)
!3004 = !DILocation(line: 70, column: 1, scope: !2994)
!3005 = distinct !DISubprogram(name: "kasan_check_read", scope: !2013, file: !2013, line: 40, type: !2014, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3006)
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "p", arg: 1, scope: !3005, file: !2013, line: 40, type: !1973)
!3008 = !DILocalVariable(name: "size", arg: 2, scope: !3005, file: !2013, line: 40, type: !7)
!3009 = !DILocation(line: 40, column: 58, scope: !3005)
!3010 = !DILocation(line: 40, column: 74, scope: !3005)
!3011 = !DILocation(line: 42, column: 2, scope: !3005)
!3012 = distinct !DISubprogram(name: "__first_node", scope: !17, file: !17, line: 264, type: !3013, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3021)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!7, !3015}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3017)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !17, line: 99, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 99, size: 64, elements: !3019)
!3019 = !{!3020}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3018, file: !17, line: 99, baseType: !81, size: 64)
!3021 = !{!3022, !3023, !3025}
!3022 = !DILocalVariable(name: "srcp", arg: 1, scope: !3012, file: !17, line: 264, type: !3015)
!3023 = !DILocalVariable(name: "__UNIQUE_ID___x98", scope: !3024, file: !17, line: 266, type: !7)
!3024 = distinct !DILexicalBlock(scope: !3012, file: !17, line: 266, column: 9)
!3025 = !DILocalVariable(name: "__UNIQUE_ID___y99", scope: !3024, file: !17, line: 266, type: !7)
!3026 = !DILocation(line: 264, column: 59, scope: !3012)
!3027 = !DILocation(line: 266, column: 9, scope: !3024)
!3028 = !DILocation(line: 266, column: 9, scope: !3012)
!3029 = !DILocation(line: 266, column: 2, scope: !3012)
!3030 = distinct !DISubprogram(name: "find_first_bit", scope: !3031, file: !3031, line: 200, type: !3032, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3034)
!3031 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!46, !71, !46}
!3034 = !{!3035, !3036, !3037}
!3035 = !DILocalVariable(name: "addr", arg: 1, scope: !3030, file: !3031, line: 200, type: !71)
!3036 = !DILocalVariable(name: "size", arg: 2, scope: !3030, file: !3031, line: 200, type: !46)
!3037 = !DILocalVariable(name: "val", scope: !3038, file: !3031, line: 203, type: !46)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3031, line: 202, column: 31)
!3039 = distinct !DILexicalBlock(scope: !3030, file: !3031, line: 202, column: 6)
!3040 = !DILocation(line: 200, column: 51, scope: !3030)
!3041 = !DILocation(line: 200, column: 71, scope: !3030)
!3042 = !DILocation(line: 202, column: 6, scope: !3039)
!3043 = !DILocation(line: 202, column: 6, scope: !3030)
!3044 = !DILocation(line: 203, column: 3, scope: !3038)
!3045 = !DILocation(line: 203, column: 17, scope: !3038)
!3046 = !DILocation(line: 203, column: 24, scope: !3038)
!3047 = !DILocation(line: 203, column: 23, scope: !3038)
!3048 = !DILocation(line: 203, column: 31, scope: !3038)
!3049 = !DILocation(line: 203, column: 29, scope: !3038)
!3050 = !DILocation(line: 205, column: 10, scope: !3038)
!3051 = !DILocation(line: 205, column: 16, scope: !3038)
!3052 = !DILocation(line: 205, column: 29, scope: !3038)
!3053 = !DILocation(line: 205, column: 3, scope: !3038)
!3054 = !DILocation(line: 206, column: 2, scope: !3039)
!3055 = !DILocation(line: 208, column: 25, scope: !3030)
!3056 = !DILocation(line: 208, column: 31, scope: !3030)
!3057 = !DILocation(line: 208, column: 9, scope: !3030)
!3058 = !DILocation(line: 208, column: 2, scope: !3030)
!3059 = !DILocation(line: 209, column: 1, scope: !3030)
!3060 = distinct !DISubprogram(name: "variable__ffs", scope: !508, file: !508, line: 250, type: !3061, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!46, !46}
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "word", arg: 1, scope: !3060, file: !508, line: 250, type: !46)
!3065 = !DILocation(line: 250, column: 66, scope: !3060)
!3066 = !DILocation(line: 254, column: 11, scope: !3060)
!3067 = !DILocation(line: 252, column: 2, scope: !3060)
!3068 = !{i64 302792}
!3069 = !DILocation(line: 255, column: 9, scope: !3060)
!3070 = !DILocation(line: 255, column: 2, scope: !3060)
!3071 = !DISubprogram(name: "_find_first_bit", scope: !3031, file: !3031, line: 21, type: !3032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3072 = distinct !DISubprogram(name: "native_write_msr", scope: !529, file: !529, line: 143, type: !673, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3073 = !{!3074, !3075, !3076}
!3074 = !DILocalVariable(name: "msr", arg: 1, scope: !3072, file: !529, line: 143, type: !7)
!3075 = !DILocalVariable(name: "low", arg: 2, scope: !3072, file: !529, line: 143, type: !52)
!3076 = !DILocalVariable(name: "high", arg: 3, scope: !3072, file: !529, line: 143, type: !52)
!3077 = !DILocation(line: 143, column: 31, scope: !3072)
!3078 = !DILocation(line: 143, column: 40, scope: !3072)
!3079 = !DILocation(line: 143, column: 49, scope: !3072)
!3080 = !DILocation(line: 145, column: 10, scope: !3072)
!3081 = !DILocation(line: 145, column: 15, scope: !3072)
!3082 = !DILocation(line: 145, column: 20, scope: !3072)
!3083 = !DILocation(line: 145, column: 2, scope: !3072)
!3084 = !DILocation(line: 147, column: 6, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3072, file: !529, line: 147, column: 6)
!3086 = !DILocation(line: 147, column: 6, scope: !3072)
!3087 = !DILocation(line: 148, column: 22, scope: !3085)
!3088 = !DILocation(line: 148, column: 33, scope: !3085)
!3089 = !DILocation(line: 148, column: 28, scope: !3085)
!3090 = !DILocation(line: 148, column: 38, scope: !3085)
!3091 = !DILocation(line: 148, column: 46, scope: !3085)
!3092 = !DILocation(line: 148, column: 44, scope: !3085)
!3093 = !DILocation(line: 148, column: 3, scope: !3085)
!3094 = !DILocation(line: 149, column: 1, scope: !3072)
!3095 = distinct !DISubprogram(name: "__wrmsr", scope: !529, file: !529, line: 92, type: !673, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DILocalVariable(name: "msr", arg: 1, scope: !3095, file: !529, line: 92, type: !7)
!3098 = !DILocalVariable(name: "low", arg: 2, scope: !3095, file: !529, line: 92, type: !52)
!3099 = !DILocalVariable(name: "high", arg: 3, scope: !3095, file: !529, line: 92, type: !52)
!3100 = !DILocation(line: 92, column: 50, scope: !3095)
!3101 = !DILocation(line: 92, column: 59, scope: !3095)
!3102 = !DILocation(line: 92, column: 68, scope: !3095)
!3103 = !DILocation(line: 97, column: 17, scope: !3095)
!3104 = !DILocation(line: 97, column: 27, scope: !3095)
!3105 = !DILocation(line: 97, column: 38, scope: !3095)
!3106 = !DILocation(line: 94, column: 2, scope: !3095)
!3107 = !{i64 1031789, i64 1031810, i64 2149225702, i64 2149225746, i64 2149225769, i64 2149225802, i64 2149225833, i64 2149225872}
!3108 = !DILocation(line: 98, column: 1, scope: !3095)
!3109 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !805, file: !805, line: 53, type: !3110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !3112, !808, !43, !148, !75}
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !805, line: 18, baseType: !3113)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!148, !44, !43}
