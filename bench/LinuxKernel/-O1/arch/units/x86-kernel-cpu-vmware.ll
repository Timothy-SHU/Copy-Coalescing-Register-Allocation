; ModuleID = 'arch/x86/kernel/cpu/vmware.c'
source_filename = "arch/x86/kernel/cpu/vmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_vmware__256_327_activate_jump_labels\22, \22a\22\09\09"
module asm "__initcall__kmod_vmware__256_327_activate_jump_labels3:\09\09\09"
module asm ".long\09__initstub__kmod_vmware__256_327_activate_jump_labels3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.hypervisor_x86 = type { ptr, ptr, i32, %struct.x86_hyper_init, %struct.x86_hyper_runtime, i8 }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.0, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.1, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64, [88 x i8] }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.pv_info = type { ptr }
%struct.paravirt_patch_template = type { %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_cpu_ops = type { ptr }
%struct.pv_irq_ops = type {}
%struct.pv_mmu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pv_lock_ops = type { ptr, %struct.paravirt_callee_save, ptr, ptr, %struct.paravirt_callee_save }
%struct.paravirt_callee_save = type { ptr }
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.smp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyc2ns_data = type { i32, i32, i64 }
%struct.vmware_steal_time = type { %union.anon.6, [7 x i64] }
%union.anon.6 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon.8 }
%union.anon.8 = type { %struct.anon.9, [16 x i8] }
%struct.anon.9 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }

@__setup_str_setup_vmw_sched_clock = internal constant [19 x i8] c"no-vmw-sched-clock\00", section ".init.rodata", align 1, !dbg !0
@__setup_setup_vmw_sched_clock = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_vmw_sched_clock, ptr @setup_vmw_sched_clock, i32 1 }, section ".init.setup", align 8, !dbg !281
@__setup_str_parse_no_stealacc = internal constant [13 x i8] c"no-steal-acc\00", section ".init.rodata", align 1, !dbg !493
@__setup_parse_no_stealacc = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_no_stealacc, ptr @parse_no_stealacc, i32 1 }, section ".init.setup", align 8, !dbg !295
@__UNIQUE_ID___addressable___initstub__kmod_vmware__256_327_activate_jump_labels3257 = internal global ptr @__initstub__kmod_vmware__256_327_activate_jump_labels3, section ".discard.addressable", align 8, !dbg !297
@.str = private unnamed_addr constant [7 x i8] c"VMware\00", align 1, !dbg !299
@x86_hyper_vmware = hidden constant %struct.hypervisor_x86 { ptr @.str, ptr @vmware_platform, i32 1, %struct.x86_hyper_init { ptr @vmware_platform_setup, ptr null, ptr @vmware_legacy_x2apic_available, ptr null, ptr null, ptr null }, %struct.x86_hyper_runtime zeroinitializer, i8 0 }, section ".init.rodata", align 8, !dbg !302
@vmw_sched_clock = internal global i8 1, section ".init.data", align 1, !dbg !491
@steal_acc = internal global i8 1, section ".init.data", align 1, !dbg !498
@has_steal_clock = internal global i8 0, align 1, !dbg !500
@paravirt_steal_enabled = external dso_local global %struct.static_key, align 8
@paravirt_steal_rq_enabled = external dso_local global %struct.static_key, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"VMwareVMware\00", align 1, !dbg !502
@vmware_hypercall_mode = internal global i8 0, section ".data..ro_after_init", align 1, !dbg !510
@.str.2 = private unnamed_addr constant [34 x i8] c"\016vmware: hypercall mode: 0x%02x\0A\00", align 1, !dbg !505
@dmi_available = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"arch/x86/kernel/cpu/vmware.c\00", align 1, !dbg !512
@.str.4 = private unnamed_addr constant [57 x i8] c"\016vmware: TSC freq read from hypervisor : %lu.%03lu MHz\0A\00", align 1, !dbg !517
@preset_lpj = external dso_local global i64, align 8
@vmware_tsc_khz = internal global i64 0, section ".data..ro_after_init", align 8, !dbg !532
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@lapic_timer_period = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"\016vmware: Host bus clock speed read from hypervisor : %u Hz\0A\00", align 1, !dbg !522
@.str.6 = private unnamed_addr constant [54 x i8] c"\014vmware: Failed to get TSC freq from the hypervisor\0A\00", align 1, !dbg !527
@no_timer_check = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"VMware hypervisor\00", align 1, !dbg !534
@pv_info = external dso_local global %struct.pv_info, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__SCK__pv_steal_clock = external dso_local global %struct.static_call_key, align 8
@vmware_pv_reboot_nb = internal global %struct.notifier_block { ptr @vmware_pv_reboot_notify, ptr null, i32 0 }, align 8, !dbg !561
@smp_ops = external dso_local global %struct.smp_ops, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"x86/vmware:online\00", align 1, !dbg !539
@.str.9 = private unnamed_addr constant [65 x i8] c"\013vmware: vmware_guest: Failed to install cpu hotplug callbacks\0A\00", align 1, !dbg !541
@vmware_cyc2ns = internal global %struct.cyc2ns_data zeroinitializer, section ".data..ro_after_init", align 8, !dbg !551
@.str.10 = private unnamed_addr constant [41 x i8] c"\016vmware: using clock offset of %llu ns\0A\00", align 1, !dbg !546
@vmw_steal_time = internal global %struct.vmware_steal_time zeroinitializer, section ".data..percpu", align 64, !dbg !559
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !574
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.12 = private unnamed_addr constant [45 x i8] c"\016vmware: vmware-stealtime: cpu %d, pa %llx\0A\00", align 1, !dbg !579
@cpu_caps_set = external dso_local global [24 x i32], align 16
@llvm.compiler.used = appending global [3 x ptr] [ptr @__setup_setup_vmw_sched_clock, ptr @__setup_parse_no_stealacc, ptr @__UNIQUE_ID___addressable___initstub__kmod_vmware__256_327_activate_jump_labels3257], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @setup_vmw_sched_clock(ptr noundef %s) #0 section ".init.text" align 16 !dbg !596 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !598, metadata !DIExpression()), !dbg !599
  store i8 0, ptr @vmw_sched_clock, align 1, !dbg !600
  ret i32 0, !dbg !601
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_no_stealacc(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !602 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !604, metadata !DIExpression()), !dbg !605
  store i8 0, ptr @steal_acc, align 1, !dbg !606
  ret i32 0, !dbg !607
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_vmware__256_327_activate_jump_labels3() #0 section ".init.text" align 16 !dbg !608 {
entry:
  %call = call i32 @activate_jump_labels() #12, !dbg !611
  ret i32 %call, !dbg !611
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @activate_jump_labels() #0 section ".init.text" align 16 !dbg !612 {
entry:
  %0 = load i8, ptr @has_steal_clock, align 1, !dbg !613, !range !615, !noundef !616
  %tobool = trunc i8 %0 to i1, !dbg !613
  br i1 %tobool, label %if.then, label %if.end4, !dbg !617

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @static_key_slow_inc(ptr noundef @paravirt_steal_enabled) #13, !dbg !618
  %1 = load i8, ptr @steal_acc, align 1, !dbg !620, !range !615, !noundef !616
  %tobool1 = trunc i8 %1 to i1, !dbg !620
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !622

if.then2:                                         ; preds = %if.then
  %call3 = call zeroext i1 @static_key_slow_inc(ptr noundef @paravirt_steal_rq_enabled) #13, !dbg !623
  br label %if.end, !dbg !623

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end4, !dbg !624

if.end4:                                          ; preds = %if.end, %entry
  ret i32 0, !dbg !625
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @vmware_platform() #0 section ".init.text" align 16 !dbg !626 {
entry:
  %retval = alloca i32, align 4
  %eax = alloca i32, align 4
  %hyper_vendor_id = alloca [3 x i32], align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !635

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.else, !dbg !636

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !636
  br i1 %call, label %if.then, label %if.else, !dbg !635

if.then:                                          ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !628, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 12, ptr %hyper_vendor_id) #14, !dbg !639
  call void @llvm.dbg.declare(metadata ptr %hyper_vendor_id, metadata !631, metadata !DIExpression()), !dbg !640
  %arrayidx = getelementptr [3 x i32], ptr %hyper_vendor_id, i64 0, i64 0, !dbg !641
  %arrayidx1 = getelementptr [3 x i32], ptr %hyper_vendor_id, i64 0, i64 1, !dbg !642
  %arrayidx2 = getelementptr [3 x i32], ptr %hyper_vendor_id, i64 0, i64 2, !dbg !643
  call void @cpuid(i32 noundef 1073741824, ptr noundef %eax, ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #13, !dbg !644
  %arraydecay = getelementptr inbounds [3 x i32], ptr %hyper_vendor_id, i64 0, i64 0, !dbg !645
  %call3 = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef @.str.1, i64 noundef 12) #13, !dbg !647
  %tobool = icmp ne i32 %call3, 0, !dbg !647
  br i1 %tobool, label %if.end8, label %if.then4, !dbg !648

if.then4:                                         ; preds = %if.then
  %0 = load i32, ptr %eax, align 4, !dbg !649
  %cmp = icmp uge i32 %0, 1073741840, !dbg !652
  br i1 %cmp, label %if.then5, label %if.end, !dbg !653

if.then5:                                         ; preds = %if.then4
  %call6 = call zeroext i8 @vmware_select_hypercall() #12, !dbg !654
  store i8 %call6, ptr @vmware_hypercall_mode, align 1, !dbg !655
  br label %if.end, !dbg !656

if.end:                                           ; preds = %if.then5, %if.then4
  br label %do.body, !dbg !657

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !659

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !659

do.end:                                           ; preds = %do.cond
  %1 = load i8, ptr @vmware_hypercall_mode, align 1, !dbg !657
  %conv = zext i8 %1 to i32, !dbg !657
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv) #12, !dbg !657
  store i32 %call7, ptr %tmp, align 4, !dbg !659
  %2 = load i32, ptr %tmp, align 4, !dbg !657
  store i32 1073741824, ptr %retval, align 4, !dbg !661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !661

if.end8:                                          ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !662
  br label %cleanup, !dbg !662

cleanup:                                          ; preds = %if.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr %hyper_vendor_id) #14, !dbg !662
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !662
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18, !dbg !663

if.else:                                          ; preds = %cond.false, %cond.true
  %3 = load i32, ptr @dmi_available, align 4, !dbg !664
  %tobool10 = icmp ne i32 %3, 0, !dbg !664
  br i1 %tobool10, label %land.lhs.true, label %if.end17, !dbg !666

land.lhs.true:                                    ; preds = %if.else
  %call11 = call i32 @dmi_name_in_serial(ptr noundef @.str) #13, !dbg !667
  %tobool12 = icmp ne i32 %call11, 0, !dbg !667
  br i1 %tobool12, label %land.lhs.true13, label %if.end17, !dbg !668

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call14 = call i32 @__vmware_platform() #13, !dbg !669
  %tobool15 = icmp ne i32 %call14, 0, !dbg !669
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !670

if.then16:                                        ; preds = %land.lhs.true13
  store i32 1, ptr %retval, align 4, !dbg !671
  br label %return, !dbg !671

if.end17:                                         ; preds = %land.lhs.true13, %land.lhs.true, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %cleanup.cont
  store i32 0, ptr %retval, align 4, !dbg !672
  br label %return, !dbg !672

return:                                           ; preds = %if.end18, %if.then16, %cleanup
  %4 = load i32, ptr %retval, align 4, !dbg !673
  ret i32 %4, !dbg !673

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @vmware_platform_setup() #0 section ".init.text" align 16 !dbg !674 {
entry:
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %lpj = alloca i64, align 8
  %tsc_khz = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp40 = alloca i64, align 8
  %tmp51 = alloca i32, align 4
  %__base56 = alloca i32, align 4
  %__rem57 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !676, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !677, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !678, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !679, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpj) #14, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %lpj, metadata !680, metadata !DIExpression()), !dbg !703
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_khz) #14, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %tsc_khz, metadata !681, metadata !DIExpression()), !dbg !704
  br label %do.body, !dbg !705

do.body:                                          ; preds = %entry
  %0 = load i8, ptr @vmware_hypercall_mode, align 1, !dbg !706
  %conv = zext i8 %0 to i32, !dbg !706
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !706

sw.bb:                                            ; preds = %do.body
  %1 = call { i32, i32, i32, i32 } asm "vmcall", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 45, i32 0, i32 -1) #14, !dbg !708, !srcloc !710
  %asmresult = extractvalue { i32, i32, i32, i32 } %1, 0, !dbg !708
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %1, 1, !dbg !708
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %1, 2, !dbg !708
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %1, 3, !dbg !708
  store i32 %asmresult, ptr %eax, align 4, !dbg !708
  store i32 %asmresult1, ptr %ecx, align 4, !dbg !708
  store i32 %asmresult2, ptr %edx, align 4, !dbg !708
  store i32 %asmresult3, ptr %ebx, align 4, !dbg !708
  br label %sw.epilog, !dbg !708

sw.bb4:                                           ; preds = %do.body
  %2 = call { i32, i32, i32, i32 } asm "vmmcall", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 45, i32 0, i32 -1) #14, !dbg !708, !srcloc !711
  %asmresult5 = extractvalue { i32, i32, i32, i32 } %2, 0, !dbg !708
  %asmresult6 = extractvalue { i32, i32, i32, i32 } %2, 1, !dbg !708
  %asmresult7 = extractvalue { i32, i32, i32, i32 } %2, 2, !dbg !708
  %asmresult8 = extractvalue { i32, i32, i32, i32 } %2, 3, !dbg !708
  store i32 %asmresult5, ptr %eax, align 4, !dbg !708
  store i32 %asmresult6, ptr %ecx, align 4, !dbg !708
  store i32 %asmresult7, ptr %edx, align 4, !dbg !708
  store i32 %asmresult8, ptr %ebx, align 4, !dbg !708
  br label %sw.epilog, !dbg !708

sw.default:                                       ; preds = %do.body
  %3 = call { i32, i32, i32, i32 } asm "inl (%dx), %eax", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 45, i32 22104, i32 -1) #14, !dbg !708, !srcloc !712
  %asmresult9 = extractvalue { i32, i32, i32, i32 } %3, 0, !dbg !708
  %asmresult10 = extractvalue { i32, i32, i32, i32 } %3, 1, !dbg !708
  %asmresult11 = extractvalue { i32, i32, i32, i32 } %3, 2, !dbg !708
  %asmresult12 = extractvalue { i32, i32, i32, i32 } %3, 3, !dbg !708
  store i32 %asmresult9, ptr %eax, align 4, !dbg !708
  store i32 %asmresult10, ptr %ecx, align 4, !dbg !708
  store i32 %asmresult11, ptr %edx, align 4, !dbg !708
  store i32 %asmresult12, ptr %ebx, align 4, !dbg !708
  br label %sw.epilog, !dbg !708

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.cond, !dbg !706

do.cond:                                          ; preds = %sw.epilog
  br label %do.end, !dbg !706

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %ebx, align 4, !dbg !713
  %cmp = icmp ne i32 %4, -1, !dbg !714
  br i1 %cmp, label %if.then, label %if.else, !dbg !715

if.then:                                          ; preds = %do.end
  %5 = load i32, ptr %eax, align 4, !dbg !716
  %conv14 = zext i32 %5 to i64, !dbg !716
  %6 = load i32, ptr %ebx, align 4, !dbg !717
  %conv15 = zext i32 %6 to i64, !dbg !718
  %shl = shl i64 %conv15, 32, !dbg !719
  %or = or i64 %conv14, %shl, !dbg !720
  store i64 %or, ptr %tsc_khz, align 8, !dbg !721
  store i64 %or, ptr %lpj, align 8, !dbg !722
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #14, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !682, metadata !DIExpression()), !dbg !723
  store i32 1000, ptr %__base, align 4, !dbg !723
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #14, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !686, metadata !DIExpression()), !dbg !723
  %7 = load i64, ptr %tsc_khz, align 8, !dbg !723
  %8 = load i32, ptr %__base, align 4, !dbg !723
  %conv16 = zext i32 %8 to i64, !dbg !723
  %rem = urem i64 %7, %conv16, !dbg !723
  %conv17 = trunc i64 %rem to i32, !dbg !723
  store i32 %conv17, ptr %__rem, align 4, !dbg !723
  %9 = load i64, ptr %tsc_khz, align 8, !dbg !723
  %10 = load i32, ptr %__base, align 4, !dbg !723
  %conv18 = zext i32 %10 to i64, !dbg !723
  %div = udiv i64 %9, %conv18, !dbg !723
  store i64 %div, ptr %tsc_khz, align 8, !dbg !723
  %11 = load i32, ptr %__rem, align 4, !dbg !723
  store i32 %11, ptr %tmp, align 4, !dbg !723
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #14, !dbg !724
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #14, !dbg !724
  %12 = load i32, ptr %tmp, align 4, !dbg !723
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !687, metadata !DIExpression()), !dbg !725
  %13 = load i64, ptr %tsc_khz, align 8, !dbg !725
  %shr = lshr i64 %13, 32, !dbg !725
  %tobool = icmp ne i64 %shr, 0, !dbg !725
  %lnot = xor i1 %tobool, true, !dbg !725
  %lnot19 = xor i1 %lnot, true, !dbg !725
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !725
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !725
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !726
  %tobool20 = icmp ne i32 %14, 0, !dbg !726
  %lnot21 = xor i1 %tobool20, true, !dbg !726
  %lnot23 = xor i1 %lnot21, true, !dbg !726
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !726
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !726
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !726
  %tobool26 = icmp ne i64 %expval, 0, !dbg !726
  br i1 %tobool26, label %if.then27, label %if.end, !dbg !725

if.then27:                                        ; preds = %if.then
  br label %do.body28, !dbg !726

do.body28:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !727
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !689, metadata !DIExpression()), !dbg !727
  store i32 2305, ptr %__flags, align 4, !dbg !727
  br label %do.body29, !dbg !727

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !728

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !728

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !727

do.body32:                                        ; preds = %do.end31
  %15 = load i32, ptr %__flags, align 4, !dbg !730
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 400, i32 %15, i64 12) #14, !dbg !730, !srcloc !732
  br label %do.cond33, !dbg !730

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !730

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !727

do.body35:                                        ; preds = %do.end34
  br label %do.cond36, !dbg !733

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !733

do.end37:                                         ; preds = %do.cond36
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !726
  br label %do.cond38, !dbg !727

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !727

do.end39:                                         ; preds = %do.cond38
  br label %if.end, !dbg !727

if.end:                                           ; preds = %do.end39, %if.then
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !725
  %tobool41 = icmp ne i32 %16, 0, !dbg !725
  %lnot42 = xor i1 %tobool41, true, !dbg !725
  %lnot44 = xor i1 %lnot42, true, !dbg !725
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !725
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !725
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !725
  store i64 %expval47, ptr %tmp40, align 8, !dbg !726
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !735
  %17 = load i64, ptr %tmp40, align 8, !dbg !725
  br label %do.body48, !dbg !736

do.body48:                                        ; preds = %if.end
  br label %do.cond49, !dbg !738

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !738

do.end50:                                         ; preds = %do.cond49
  %18 = load i64, ptr %tsc_khz, align 8, !dbg !736
  %div52 = udiv i64 %18, 1000, !dbg !736
  %19 = load i64, ptr %tsc_khz, align 8, !dbg !736
  %rem53 = urem i64 %19, 1000, !dbg !736
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %div52, i64 noundef %rem53) #12, !dbg !736
  store i32 %call, ptr %tmp51, align 4, !dbg !738
  %20 = load i32, ptr %tmp51, align 4, !dbg !736
  %21 = load i64, ptr @preset_lpj, align 8, !dbg !740
  %tobool54 = icmp ne i64 %21, 0, !dbg !740
  br i1 %tobool54, label %if.end64, label %if.then55, !dbg !741

if.then55:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base56) #14, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %__base56, metadata !692, metadata !DIExpression()), !dbg !742
  store i32 1000, ptr %__base56, align 4, !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem57) #14, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %__rem57, metadata !696, metadata !DIExpression()), !dbg !742
  %22 = load i64, ptr %lpj, align 8, !dbg !742
  %23 = load i32, ptr %__base56, align 4, !dbg !742
  %conv58 = zext i32 %23 to i64, !dbg !742
  %rem59 = urem i64 %22, %conv58, !dbg !742
  %conv60 = trunc i64 %rem59 to i32, !dbg !742
  store i32 %conv60, ptr %__rem57, align 4, !dbg !742
  %24 = load i64, ptr %lpj, align 8, !dbg !742
  %25 = load i32, ptr %__base56, align 4, !dbg !742
  %conv61 = zext i32 %25 to i64, !dbg !742
  %div62 = udiv i64 %24, %conv61, !dbg !742
  store i64 %div62, ptr %lpj, align 8, !dbg !742
  %26 = load i32, ptr %__rem57, align 4, !dbg !742
  store i32 %26, ptr %tmp63, align 4, !dbg !742
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem57) #14, !dbg !743
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base56) #14, !dbg !743
  %27 = load i32, ptr %tmp63, align 4, !dbg !742
  %28 = load i64, ptr %lpj, align 8, !dbg !744
  store i64 %28, ptr @preset_lpj, align 8, !dbg !745
  br label %if.end64, !dbg !746

if.end64:                                         ; preds = %if.then55, %do.end50
  %29 = load i64, ptr %tsc_khz, align 8, !dbg !747
  store i64 %29, ptr @vmware_tsc_khz, align 8, !dbg !748
  store ptr @vmware_get_tsc_khz, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 1), align 8, !dbg !749
  store ptr @vmware_get_tsc_khz, ptr @x86_platform, align 8, !dbg !750
  %30 = load i32, ptr %ecx, align 4, !dbg !751
  %div65 = udiv i32 %30, 1000, !dbg !752
  store i32 %div65, ptr @lapic_timer_period, align 4, !dbg !753
  br label %do.body66, !dbg !754

do.body66:                                        ; preds = %if.end64
  br label %do.cond67, !dbg !756

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !756

do.end68:                                         ; preds = %do.cond67
  %31 = load i32, ptr %ecx, align 4, !dbg !754
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %31) #12, !dbg !754
  store i32 %call70, ptr %tmp69, align 4, !dbg !756
  %32 = load i32, ptr %tmp69, align 4, !dbg !754
  br label %if.end76, !dbg !758

if.else:                                          ; preds = %do.end
  br label %do.body71, !dbg !759

do.body71:                                        ; preds = %if.else
  br label %do.cond72, !dbg !762

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !762

do.end73:                                         ; preds = %do.cond72
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #12, !dbg !759
  store i32 %call75, ptr %tmp74, align 4, !dbg !762
  %33 = load i32, ptr %tmp74, align 4, !dbg !759
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %do.end68
  call void @vmware_paravirt_ops_setup() #12, !dbg !764
  store i32 1, ptr @no_timer_check, align 4, !dbg !765
  call void @vmware_set_capabilities() #12, !dbg !766
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_khz) #14, !dbg !767
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpj) #14, !dbg !767
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !767
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !767
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !767
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !767
  ret void, !dbg !767
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @vmware_legacy_x2apic_available() #0 section ".init.text" align 16 !dbg !768 {
entry:
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !770, metadata !DIExpression()), !dbg !775
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !771, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !772, metadata !DIExpression()), !dbg !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !773, metadata !DIExpression()), !dbg !778
  br label %do.body, !dbg !779

do.body:                                          ; preds = %entry
  %0 = load i8, ptr @vmware_hypercall_mode, align 1, !dbg !780
  %conv = zext i8 %0 to i32, !dbg !780
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !780

sw.bb:                                            ; preds = %do.body
  %1 = call { i32, i32, i32, i32 } asm "vmcall", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 68, i32 0, i32 -1) #14, !dbg !782, !srcloc !784
  %asmresult = extractvalue { i32, i32, i32, i32 } %1, 0, !dbg !782
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %1, 1, !dbg !782
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %1, 2, !dbg !782
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %1, 3, !dbg !782
  store i32 %asmresult, ptr %eax, align 4, !dbg !782
  store i32 %asmresult1, ptr %ecx, align 4, !dbg !782
  store i32 %asmresult2, ptr %edx, align 4, !dbg !782
  store i32 %asmresult3, ptr %ebx, align 4, !dbg !782
  br label %sw.epilog, !dbg !782

sw.bb4:                                           ; preds = %do.body
  %2 = call { i32, i32, i32, i32 } asm "vmmcall", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 68, i32 0, i32 -1) #14, !dbg !782, !srcloc !785
  %asmresult5 = extractvalue { i32, i32, i32, i32 } %2, 0, !dbg !782
  %asmresult6 = extractvalue { i32, i32, i32, i32 } %2, 1, !dbg !782
  %asmresult7 = extractvalue { i32, i32, i32, i32 } %2, 2, !dbg !782
  %asmresult8 = extractvalue { i32, i32, i32, i32 } %2, 3, !dbg !782
  store i32 %asmresult5, ptr %eax, align 4, !dbg !782
  store i32 %asmresult6, ptr %ecx, align 4, !dbg !782
  store i32 %asmresult7, ptr %edx, align 4, !dbg !782
  store i32 %asmresult8, ptr %ebx, align 4, !dbg !782
  br label %sw.epilog, !dbg !782

sw.default:                                       ; preds = %do.body
  %3 = call { i32, i32, i32, i32 } asm "inl (%dx), %eax", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 68, i32 22104, i32 -1) #14, !dbg !782, !srcloc !786
  %asmresult9 = extractvalue { i32, i32, i32, i32 } %3, 0, !dbg !782
  %asmresult10 = extractvalue { i32, i32, i32, i32 } %3, 1, !dbg !782
  %asmresult11 = extractvalue { i32, i32, i32, i32 } %3, 2, !dbg !782
  %asmresult12 = extractvalue { i32, i32, i32, i32 } %3, 3, !dbg !782
  store i32 %asmresult9, ptr %eax, align 4, !dbg !782
  store i32 %asmresult10, ptr %ecx, align 4, !dbg !782
  store i32 %asmresult11, ptr %edx, align 4, !dbg !782
  store i32 %asmresult12, ptr %ebx, align 4, !dbg !782
  br label %sw.epilog, !dbg !782

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.cond, !dbg !780

do.cond:                                          ; preds = %sw.epilog
  br label %do.end, !dbg !780

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %eax, align 4, !dbg !787
  %conv13 = zext i32 %4 to i64, !dbg !787
  %and = and i64 %conv13, 2147483648, !dbg !788
  %tobool = icmp ne i64 %and, 0, !dbg !788
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !789

land.rhs:                                         ; preds = %do.end
  %5 = load i32, ptr %eax, align 4, !dbg !790
  %conv14 = zext i32 %5 to i64, !dbg !790
  %and15 = and i64 %conv14, 8, !dbg !791
  %tobool16 = icmp ne i64 %and15, 0, !dbg !789
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %6 = phi i1 [ false, %do.end ], [ %tobool16, %land.rhs ], !dbg !792
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !793
  ret i1 %6, !dbg !794
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !795 dso_local zeroext i1 @static_key_slow_inc(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !823 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !831, metadata !DIExpression()), !dbg !833
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !832, metadata !DIExpression()), !dbg !834
  %0 = load i64, ptr %nr.addr, align 8, !dbg !835
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !836
  br i1 %1, label %cond.true, label %cond.false, !dbg !836

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !837
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !838
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !839
  %conv = zext i1 %call to i32, !dbg !839
  br label %cond.end, !dbg !836

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !840
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !841
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !842
  %conv2 = zext i1 %call1 to i32, !dbg !842
  br label %cond.end, !dbg !836

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !836
  %tobool = icmp ne i32 %cond, 0, !dbg !836
  ret i1 %tobool, !dbg !843
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #5 align 16 !dbg !844 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !850, metadata !DIExpression()), !dbg !855
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !851, metadata !DIExpression()), !dbg !856
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !852, metadata !DIExpression()), !dbg !857
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !853, metadata !DIExpression()), !dbg !858
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !854, metadata !DIExpression()), !dbg !859
  %0 = load i32, ptr %op.addr, align 4, !dbg !860
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !861
  store i32 %0, ptr %1, align 4, !dbg !862
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !863
  store i32 0, ptr %2, align 4, !dbg !864
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !865
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !866
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !867
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !868
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !dbg !869
  ret void, !dbg !870
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !871 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i8 @vmware_select_hypercall() #0 section ".init.text" align 16 !dbg !880 {
entry:
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !884, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !885, metadata !DIExpression()), !dbg !890
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !886, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !887, metadata !DIExpression()), !dbg !892
  call void @cpuid(i32 noundef 1073741840, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #13, !dbg !893
  %0 = load i32, ptr %ecx, align 4, !dbg !894
  %conv = sext i32 %0 to i64, !dbg !894
  %and = and i64 %conv, 3, !dbg !895
  %conv1 = trunc i64 %and to i8, !dbg !896
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !897
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !897
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !897
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !897
  ret i8 %conv1, !dbg !898
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !899 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !903 dso_local i32 @dmi_name_in_serial(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__vmware_platform() #5 align 16 !dbg !907 {
entry:
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !909, metadata !DIExpression()), !dbg !914
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #14, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !910, metadata !DIExpression()), !dbg !915
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #14, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !911, metadata !DIExpression()), !dbg !916
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !912, metadata !DIExpression()), !dbg !917
  br label %do.body, !dbg !918

do.body:                                          ; preds = %entry
  %0 = load i8, ptr @vmware_hypercall_mode, align 1, !dbg !919
  %conv = zext i8 %0 to i32, !dbg !919
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !919

sw.bb:                                            ; preds = %do.body
  %1 = call { i32, i32, i32, i32 } asm "vmcall", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 10, i32 0, i32 -1) #14, !dbg !921, !srcloc !923
  %asmresult = extractvalue { i32, i32, i32, i32 } %1, 0, !dbg !921
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %1, 1, !dbg !921
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %1, 2, !dbg !921
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %1, 3, !dbg !921
  store i32 %asmresult, ptr %eax, align 4, !dbg !921
  store i32 %asmresult1, ptr %ecx, align 4, !dbg !921
  store i32 %asmresult2, ptr %edx, align 4, !dbg !921
  store i32 %asmresult3, ptr %ebx, align 4, !dbg !921
  br label %sw.epilog, !dbg !921

sw.bb4:                                           ; preds = %do.body
  %2 = call { i32, i32, i32, i32 } asm "vmmcall", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 10, i32 0, i32 -1) #14, !dbg !921, !srcloc !924
  %asmresult5 = extractvalue { i32, i32, i32, i32 } %2, 0, !dbg !921
  %asmresult6 = extractvalue { i32, i32, i32, i32 } %2, 1, !dbg !921
  %asmresult7 = extractvalue { i32, i32, i32, i32 } %2, 2, !dbg !921
  %asmresult8 = extractvalue { i32, i32, i32, i32 } %2, 3, !dbg !921
  store i32 %asmresult5, ptr %eax, align 4, !dbg !921
  store i32 %asmresult6, ptr %ecx, align 4, !dbg !921
  store i32 %asmresult7, ptr %edx, align 4, !dbg !921
  store i32 %asmresult8, ptr %ebx, align 4, !dbg !921
  br label %sw.epilog, !dbg !921

sw.default:                                       ; preds = %do.body
  %3 = call { i32, i32, i32, i32 } asm "inl (%dx), %eax", "={ax},={cx},={dx},={bx},{ax},{cx},{dx},{bx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 10, i32 22104, i32 -1) #14, !dbg !921, !srcloc !925
  %asmresult9 = extractvalue { i32, i32, i32, i32 } %3, 0, !dbg !921
  %asmresult10 = extractvalue { i32, i32, i32, i32 } %3, 1, !dbg !921
  %asmresult11 = extractvalue { i32, i32, i32, i32 } %3, 2, !dbg !921
  %asmresult12 = extractvalue { i32, i32, i32, i32 } %3, 3, !dbg !921
  store i32 %asmresult9, ptr %eax, align 4, !dbg !921
  store i32 %asmresult10, ptr %ecx, align 4, !dbg !921
  store i32 %asmresult11, ptr %edx, align 4, !dbg !921
  store i32 %asmresult12, ptr %ebx, align 4, !dbg !921
  br label %sw.epilog, !dbg !921

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.cond, !dbg !919

do.cond:                                          ; preds = %sw.epilog
  br label %do.end, !dbg !919

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %eax, align 4, !dbg !926
  %cmp = icmp ne i32 %4, -1, !dbg !927
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !928

land.rhs:                                         ; preds = %do.end
  %5 = load i32, ptr %ebx, align 4, !dbg !929
  %cmp14 = icmp eq i32 %5, 1447909480, !dbg !930
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %6 = phi i1 [ false, %do.end ], [ %cmp14, %land.rhs ], !dbg !931
  %land.ext = zext i1 %6 to i32, !dbg !928
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #14, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #14, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !932
  ret i32 %land.ext, !dbg !933
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !934 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !938, metadata !DIExpression()), !dbg !940
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !939, metadata !DIExpression()), !dbg !941
  %0 = load i64, ptr %nr.addr, align 8, !dbg !942
  %and = and i64 %0, 63, !dbg !943
  %shl = shl i64 1, %and, !dbg !944
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !945
  %2 = load i64, ptr %nr.addr, align 8, !dbg !946
  %shr = ashr i64 %2, 6, !dbg !947
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !945
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !945
  %and1 = and i64 %shl, %3, !dbg !948
  %cmp = icmp ne i64 %and1, 0, !dbg !949
  ret i1 %cmp, !dbg !950
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !951 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !953, metadata !DIExpression()), !dbg !956
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !954, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !955, metadata !DIExpression()), !dbg !959
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !960
  %1 = load i64, ptr %nr.addr, align 8, !dbg !961
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !962, !srcloc !963
  %3 = icmp ult i8 %2, 2, !dbg !962
  call void @llvm.assume(i1 %3), !dbg !962
  store i8 %2, ptr %oldbit, align 1, !dbg !962
  %4 = load i8, ptr %oldbit, align 1, !dbg !964, !range !615, !noundef !616
  %tobool = trunc i8 %4 to i1, !dbg !964
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !965
  ret i1 %tobool, !dbg !966
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #5 align 16 !dbg !967 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !971, metadata !DIExpression()), !dbg !975
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !972, metadata !DIExpression()), !dbg !976
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !973, metadata !DIExpression()), !dbg !977
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !974, metadata !DIExpression()), !dbg !978
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !979
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !980
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !981
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !982
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !983
  %5 = load i32, ptr %4, align 4, !dbg !984
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !985
  %7 = load i32, ptr %6, align 4, !dbg !986
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #14, !dbg !987, !srcloc !988
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !987
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !987
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !987
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !987
  store i32 %asmresult, ptr %0, align 4, !dbg !987
  store i32 %asmresult1, ptr %1, align 4, !dbg !987
  store i32 %asmresult2, ptr %2, align 4, !dbg !987
  store i32 %asmresult3, ptr %3, align 4, !dbg !987
  ret void, !dbg !989
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vmware_get_tsc_khz() #10 align 16 !dbg !990 {
entry:
  %0 = load i64, ptr @vmware_tsc_khz, align 8, !dbg !993
  ret i64 %0, !dbg !994
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @vmware_paravirt_ops_setup() #0 section ".init.text" align 16 !dbg !995 {
entry:
  %__F = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr @.str.7, ptr @pv_info, align 8, !dbg !1004
  store ptr @_paravirt_nop, ptr @pv_ops, align 8, !dbg !1005
  %0 = load i64, ptr @vmware_tsc_khz, align 8, !dbg !1006
  %cmp = icmp eq i64 %0, 0, !dbg !1008
  br i1 %cmp, label %if.then, label %if.end, !dbg !1009

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !1010

if.end:                                           ; preds = %entry
  call void @vmware_cyc2ns_setup() #12, !dbg !1011
  %1 = load i8, ptr @vmw_sched_clock, align 1, !dbg !1012, !range !615, !noundef !616
  %tobool = trunc i8 %1 to i1, !dbg !1012
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !1014

if.then1:                                         ; preds = %if.end
  call void @paravirt_set_sched_clock(ptr noundef @vmware_sched_clock) #13, !dbg !1015
  br label %if.end2, !dbg !1015

if.end2:                                          ; preds = %if.then1, %if.end
  %call = call zeroext i1 @vmware_is_stealclock_available() #13, !dbg !1016
  br i1 %call, label %if.then3, label %if.end10, !dbg !1017

if.then3:                                         ; preds = %if.end2
  store i8 1, ptr @has_steal_clock, align 1, !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F) #14, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %__F, metadata !997, metadata !DIExpression()), !dbg !1019
  store ptr @vmware_steal_clock, ptr %__F, align 8, !dbg !1019
  %2 = load ptr, ptr %__F, align 8, !dbg !1019
  call void @__static_call_update(ptr noundef @__SCK__pv_steal_clock, ptr noundef @__SCT__pv_steal_clock, ptr noundef %2) #13, !dbg !1019
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F) #14, !dbg !1020
  %call4 = call i32 @register_reboot_notifier(ptr noundef @vmware_pv_reboot_nb) #13, !dbg !1021
  store ptr @vmware_smp_prepare_boot_cpu, ptr @smp_ops, align 8, !dbg !1022
  %call5 = call i32 @cpuhp_setup_state_nocalls(i32 noundef 202, ptr noundef @.str.8, ptr noundef @vmware_cpu_online, ptr noundef @vmware_cpu_down_prepare) #13, !dbg !1023
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1025
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1026

if.then7:                                         ; preds = %if.then3
  br label %do.body, !dbg !1027

do.body:                                          ; preds = %if.then7
  br label %do.end, !dbg !1029

do.end:                                           ; preds = %do.body
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #12, !dbg !1027
  store i32 %call8, ptr %tmp, align 4, !dbg !1029
  %3 = load i32, ptr %tmp, align 4, !dbg !1027
  br label %if.end9, !dbg !1031

if.end9:                                          ; preds = %do.end, %if.then3
  br label %if.end10, !dbg !1032

if.end10:                                         ; preds = %if.then, %if.end9, %if.end2
  ret void, !dbg !1033
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @vmware_set_capabilities() #0 section ".init.text" align 16 !dbg !1034 {
entry:
  br label %do.body, !dbg !1035

do.body:                                          ; preds = %entry
  call void @set_bit(i64 noundef 104, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1036
  call void @set_bit(i64 noundef 104, ptr noundef @cpu_caps_set) #13, !dbg !1036
  br label %do.end, !dbg !1036

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1038

do.body1:                                         ; preds = %do.end
  call void @set_bit(i64 noundef 119, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1039
  call void @set_bit(i64 noundef 119, ptr noundef @cpu_caps_set) #13, !dbg !1039
  br label %do.end2, !dbg !1039

do.end2:                                          ; preds = %do.body1
  %0 = load i64, ptr @vmware_tsc_khz, align 8, !dbg !1041
  %tobool = icmp ne i64 %0, 0, !dbg !1041
  br i1 %tobool, label %if.then, label %if.end, !dbg !1043

if.then:                                          ; preds = %do.end2
  br label %do.body3, !dbg !1044

do.body3:                                         ; preds = %if.then
  call void @set_bit(i64 noundef 127, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1045
  call void @set_bit(i64 noundef 127, ptr noundef @cpu_caps_set) #13, !dbg !1045
  br label %do.end4, !dbg !1045

do.end4:                                          ; preds = %do.body3
  br label %if.end, !dbg !1045

if.end:                                           ; preds = %do.end4, %do.end2
  %1 = load i8, ptr @vmware_hypercall_mode, align 1, !dbg !1047
  %conv = zext i8 %1 to i64, !dbg !1047
  %cmp = icmp eq i64 %conv, 2, !dbg !1049
  br i1 %cmp, label %if.then6, label %if.else, !dbg !1050

if.then6:                                         ; preds = %if.end
  br label %do.body7, !dbg !1051

do.body7:                                         ; preds = %if.then6
  call void @set_bit(i64 noundef 274, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1052
  call void @set_bit(i64 noundef 274, ptr noundef @cpu_caps_set) #13, !dbg !1052
  br label %do.end8, !dbg !1052

do.end8:                                          ; preds = %do.body7
  br label %if.end16, !dbg !1052

if.else:                                          ; preds = %if.end
  %2 = load i8, ptr @vmware_hypercall_mode, align 1, !dbg !1054
  %conv9 = zext i8 %2 to i64, !dbg !1054
  %cmp10 = icmp eq i64 %conv9, 1, !dbg !1056
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !1057

if.then12:                                        ; preds = %if.else
  br label %do.body13, !dbg !1058

do.body13:                                        ; preds = %if.then12
  call void @set_bit(i64 noundef 275, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !1059
  call void @set_bit(i64 noundef 275, ptr noundef @cpu_caps_set) #13, !dbg !1059
  br label %do.end14, !dbg !1059

do.end14:                                         ; preds = %do.body13
  br label %if.end15, !dbg !1059

if.end15:                                         ; preds = %do.end14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %do.end8
  ret void, !dbg !1061
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_paravirt_nop() #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @vmware_cyc2ns_setup() #0 section ".init.text" align 16 !dbg !1062 {
entry:
  %d = alloca ptr, align 8
  %tsc_now = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #14, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1064, metadata !DIExpression()), !dbg !1068
  store ptr @vmware_cyc2ns, ptr %d, align 8, !dbg !1068
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_now) #14, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %tsc_now, metadata !1066, metadata !DIExpression()), !dbg !1070
  %call = call i64 @rdtsc() #13, !dbg !1071
  store i64 %call, ptr %tsc_now, align 8, !dbg !1070
  %0 = load ptr, ptr %d, align 8, !dbg !1072
  %cyc2ns_mul = getelementptr inbounds %struct.cyc2ns_data, ptr %0, i32 0, i32 0, !dbg !1073
  %1 = load ptr, ptr %d, align 8, !dbg !1074
  %cyc2ns_shift = getelementptr inbounds %struct.cyc2ns_data, ptr %1, i32 0, i32 1, !dbg !1075
  %2 = load i64, ptr @vmware_tsc_khz, align 8, !dbg !1076
  %conv = trunc i64 %2 to i32, !dbg !1076
  call void @clocks_calc_mult_shift(ptr noundef %cyc2ns_mul, ptr noundef %cyc2ns_shift, i32 noundef %conv, i32 noundef 1000000, i32 noundef 0) #13, !dbg !1077
  %3 = load i64, ptr %tsc_now, align 8, !dbg !1078
  %4 = load ptr, ptr %d, align 8, !dbg !1079
  %cyc2ns_mul1 = getelementptr inbounds %struct.cyc2ns_data, ptr %4, i32 0, i32 0, !dbg !1080
  %5 = load i32, ptr %cyc2ns_mul1, align 8, !dbg !1080
  %6 = load ptr, ptr %d, align 8, !dbg !1081
  %cyc2ns_shift2 = getelementptr inbounds %struct.cyc2ns_data, ptr %6, i32 0, i32 1, !dbg !1082
  %7 = load i32, ptr %cyc2ns_shift2, align 4, !dbg !1082
  %call3 = call i64 @mul_u64_u32_shr(i64 noundef %3, i32 noundef %5, i32 noundef %7) #13, !dbg !1083
  %8 = load ptr, ptr %d, align 8, !dbg !1084
  %cyc2ns_offset = getelementptr inbounds %struct.cyc2ns_data, ptr %8, i32 0, i32 2, !dbg !1085
  store i64 %call3, ptr %cyc2ns_offset, align 8, !dbg !1086
  br label %do.body, !dbg !1087

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1089

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1089

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %d, align 8, !dbg !1087
  %cyc2ns_offset4 = getelementptr inbounds %struct.cyc2ns_data, ptr %9, i32 0, i32 2, !dbg !1087
  %10 = load i64, ptr %cyc2ns_offset4, align 8, !dbg !1087
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i64 noundef %10) #12, !dbg !1087
  store i32 %call5, ptr %tmp, align 4, !dbg !1089
  %11 = load i32, ptr %tmp, align 4, !dbg !1087
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_now) #14, !dbg !1091
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #14, !dbg !1091
  ret void, !dbg !1091
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1092 dso_local void @paravirt_set_sched_clock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vmware_sched_clock() #11 section ".noinstr.text" align 16 !dbg !1099 {
entry:
  %ns = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #14, !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !1101, metadata !DIExpression()), !dbg !1103
  %call = call i64 @rdtsc() #13, !dbg !1104
  %0 = load i32, ptr @vmware_cyc2ns, align 8, !dbg !1105
  %1 = load i32, ptr getelementptr inbounds (%struct.cyc2ns_data, ptr @vmware_cyc2ns, i32 0, i32 1), align 4, !dbg !1106
  %call1 = call i64 @mul_u64_u32_shr(i64 noundef %call, i32 noundef %0, i32 noundef %1) #13, !dbg !1107
  store i64 %call1, ptr %ns, align 8, !dbg !1108
  %2 = load i64, ptr getelementptr inbounds (%struct.cyc2ns_data, ptr @vmware_cyc2ns, i32 0, i32 2), align 8, !dbg !1109
  %3 = load i64, ptr %ns, align 8, !dbg !1110
  %sub = sub i64 %3, %2, !dbg !1110
  store i64 %sub, ptr %ns, align 8, !dbg !1110
  %4 = load i64, ptr %ns, align 8, !dbg !1111
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #14, !dbg !1112
  ret i64 %4, !dbg !1113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vmware_is_stealclock_available() #10 align 16 !dbg !1114 {
entry:
  %call = call i32 @__stealclock_disable() #13, !dbg !1115
  %cmp = icmp ne i32 %call, -1, !dbg !1116
  ret i1 %cmp, !dbg !1117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vmware_steal_clock(i32 noundef %cpu) #10 align 16 !dbg !1118 {
entry:
  %cpu.addr = alloca i32, align 4
  %steal = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %clock = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1122, metadata !DIExpression()), !dbg !1130
  call void @llvm.lifetime.start.p0(i64 8, ptr %steal) #14, !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %steal, metadata !1123, metadata !DIExpression()), !dbg !1132
  br label %do.body, !dbg !1133

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1124, metadata !DIExpression()), !dbg !1134
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1134
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !1133
  br label %do.cond, !dbg !1134

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1134

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1127, metadata !DIExpression()), !dbg !1135
  store i64 ptrtoint (ptr @vmw_steal_time to i64), ptr %__ptr, align 8, !dbg !1135
  %1 = load i64, ptr %__ptr, align 8, !dbg !1135
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1135
  %idxprom = sext i32 %2 to i64, !dbg !1135
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1135
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1135
  %add = add i64 %1, %3, !dbg !1135
  %4 = inttoptr i64 %add to ptr, !dbg !1135
  store ptr %4, ptr %tmp1, align 8, !dbg !1135
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !1133
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1135
  store ptr %5, ptr %tmp, align 8, !dbg !1134
  %6 = load ptr, ptr %tmp, align 8, !dbg !1133
  store ptr %6, ptr %steal, align 8, !dbg !1132
  call void @llvm.lifetime.start.p0(i64 8, ptr %clock) #14, !dbg !1136
  call void @llvm.dbg.declare(metadata ptr %clock, metadata !1129, metadata !DIExpression()), !dbg !1137
  br label %do.body2, !dbg !1138

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !1141

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1141

do.end4:                                          ; preds = %do.cond3
  %7 = load ptr, ptr %steal, align 8, !dbg !1138
  %8 = getelementptr inbounds %struct.vmware_steal_time, ptr %7, i32 0, i32 0, !dbg !1138
  %9 = load volatile i64, ptr %8, align 8, !dbg !1138
  store i64 %9, ptr %tmp5, align 8, !dbg !1141
  %10 = load i64, ptr %tmp5, align 8, !dbg !1138
  store i64 %10, ptr %clock, align 8, !dbg !1143
  %11 = load i64, ptr %clock, align 8, !dbg !1144
  %12 = load i32, ptr @vmware_cyc2ns, align 8, !dbg !1145
  %13 = load i32, ptr getelementptr inbounds (%struct.cyc2ns_data, ptr @vmware_cyc2ns, i32 0, i32 1), align 4, !dbg !1146
  %call = call i64 @mul_u64_u32_shr(i64 noundef %11, i32 noundef %12, i32 noundef %13) #13, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 8, ptr %clock) #14, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 8, ptr %steal) #14, !dbg !1148
  ret i64 %call, !dbg !1149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1150 dso_local void @__static_call_update(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__SCT__pv_steal_clock(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2161 dso_local i32 @register_reboot_notifier(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @vmware_smp_prepare_boot_cpu() #0 section ".init.text" align 16 !dbg !2165 {
entry:
  call void @vmware_guest_cpu_init() #13, !dbg !2166
  call void @native_smp_prepare_boot_cpu() #13, !dbg !2167
  ret void, !dbg !2168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state_nocalls(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #5 align 16 !dbg !2169 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2176, metadata !DIExpression()), !dbg !2180
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2177, metadata !DIExpression()), !dbg !2181
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !2178, metadata !DIExpression()), !dbg !2182
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !2179, metadata !DIExpression()), !dbg !2183
  %0 = load i32, ptr %state.addr, align 4, !dbg !2184
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2185
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !2186
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !2187
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #13, !dbg !2188
  ret i32 %call, !dbg !2189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vmware_cpu_online(i32 noundef %cpu) #10 align 16 !dbg !2190 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2192, metadata !DIExpression()), !dbg !2193
  br label %do.body, !dbg !2194

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #13, !dbg !2195
  br label %do.end, !dbg !2195

do.end:                                           ; preds = %do.body
  call void @vmware_guest_cpu_init() #13, !dbg !2197
  br label %do.body1, !dbg !2198

do.body1:                                         ; preds = %do.end
  call void @arch_local_irq_enable() #13, !dbg !2199
  br label %do.end2, !dbg !2199

do.end2:                                          ; preds = %do.body1
  ret i32 0, !dbg !2201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vmware_cpu_down_prepare(i32 noundef %cpu) #10 align 16 !dbg !2202 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  br label %do.body, !dbg !2206

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #13, !dbg !2207
  br label %do.end, !dbg !2207

do.end:                                           ; preds = %do.body
  call void @vmware_disable_steal_time() #13, !dbg !2209
  br label %do.body1, !dbg !2210

do.body1:                                         ; preds = %do.end
  call void @arch_local_irq_enable() #13, !dbg !2211
  br label %do.end2, !dbg !2211

do.end2:                                          ; preds = %do.body1
  ret i32 0, !dbg !2213
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc() #3 align 16 !dbg !2214 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !2221
  call void @llvm.dbg.declare(metadata ptr %low, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !2221
  call void @llvm.dbg.declare(metadata ptr %high, metadata !2220, metadata !DIExpression()), !dbg !2221
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2222, !srcloc !2223
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !2222
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !2222
  store i64 %asmresult, ptr %low, align 8, !dbg !2222
  store i64 %asmresult1, ptr %high, align 8, !dbg !2222
  %1 = load i64, ptr %low, align 8, !dbg !2224
  %2 = load i64, ptr %high, align 8, !dbg !2224
  %shl = shl i64 %2, 32, !dbg !2224
  %or = or i64 %1, %shl, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !2225
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !2225
  ret i64 %or, !dbg !2226
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2227 dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mul_u64_u32_shr(i64 noundef %a, i32 noundef %mul, i32 noundef %shift) #3 align 16 !dbg !2232 {
entry:
  %a.addr = alloca i64, align 8
  %mul.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2237, metadata !DIExpression()), !dbg !2240
  store i32 %mul, ptr %mul.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mul.addr, metadata !2238, metadata !DIExpression()), !dbg !2241
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !2239, metadata !DIExpression()), !dbg !2242
  %0 = load i64, ptr %a.addr, align 8, !dbg !2243
  %conv = zext i64 %0 to i128, !dbg !2244
  %1 = load i32, ptr %mul.addr, align 4, !dbg !2245
  %conv1 = zext i32 %1 to i128, !dbg !2245
  %mul2 = mul i128 %conv, %conv1, !dbg !2246
  %2 = load i32, ptr %shift.addr, align 4, !dbg !2247
  %sh_prom = zext i32 %2 to i128, !dbg !2248
  %shr = lshr i128 %mul2, %sh_prom, !dbg !2248
  %conv3 = trunc i128 %shr to i64, !dbg !2249
  ret i64 %conv3, !dbg !2250
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__stealclock_disable() #10 align 16 !dbg !2251 {
entry:
  %call = call i32 @vmware_cmd_stealclock(i32 noundef 0, i32 noundef 1) #13, !dbg !2252
  ret i32 %call, !dbg !2253
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vmware_cmd_stealclock(i32 noundef %arg1, i32 noundef %arg2) #10 align 16 !dbg !2254 {
entry:
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %info = alloca i32, align 4
  store i32 %arg1, ptr %arg1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg1.addr, metadata !2258, metadata !DIExpression()), !dbg !2262
  store i32 %arg2, ptr %arg2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg2.addr, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2260, metadata !DIExpression()), !dbg !2265
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #14, !dbg !2264
  call void @llvm.dbg.declare(metadata ptr %info, metadata !2261, metadata !DIExpression()), !dbg !2266
  %0 = load i32, ptr %arg1.addr, align 4, !dbg !2267
  %1 = load i32, ptr %arg2.addr, align 4, !dbg !2268
  %2 = call { i32, i32 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09movw $$0x5658, %dx; inl (%dx), %eax\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 8*32+18)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 8*32+19)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09vmcall\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09vmmcall\0A6652:\0A.popsection\0A", "={ax},={cx},{ax},{bx},{cx},{dx},{si},{di},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1447909480, i32 0, i32 91, i32 0, i32 %0, i32 %1) #14, !dbg !2269, !srcloc !2270
  %asmresult = extractvalue { i32, i32 } %2, 0, !dbg !2269
  %asmresult1 = extractvalue { i32, i32 } %2, 1, !dbg !2269
  store i32 %asmresult, ptr %result, align 4, !dbg !2269
  store i32 %asmresult1, ptr %info, align 4, !dbg !2269
  %3 = load i32, ptr %result, align 4, !dbg !2271
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #14, !dbg !2272
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2272
  ret i32 %3, !dbg !2273
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vmware_pv_reboot_notify(ptr noundef %nb, i64 noundef %code, ptr noundef %unused) #10 align 16 !dbg !2274 {
entry:
  %nb.addr = alloca ptr, align 8
  %code.addr = alloca i64, align 8
  %unused.addr = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !2276, metadata !DIExpression()), !dbg !2279
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !2277, metadata !DIExpression()), !dbg !2280
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !2278, metadata !DIExpression()), !dbg !2281
  %0 = load i64, ptr %code.addr, align 8, !dbg !2282
  %cmp = icmp eq i64 %0, 1, !dbg !2284
  br i1 %cmp, label %if.then, label %if.end, !dbg !2285

if.then:                                          ; preds = %entry
  call void @on_each_cpu(ptr noundef @vmware_pv_guest_cpu_reboot, ptr noundef null, i32 noundef 1) #13, !dbg !2286
  br label %if.end, !dbg !2286

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !2287
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu(ptr noundef %func, ptr noundef %info, i32 noundef %wait) #5 align 16 !dbg !2288 {
entry:
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2294, metadata !DIExpression()), !dbg !2297
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2295, metadata !DIExpression()), !dbg !2298
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !2296, metadata !DIExpression()), !dbg !2299
  %0 = load ptr, ptr %func.addr, align 8, !dbg !2300
  %1 = load ptr, ptr %info.addr, align 8, !dbg !2301
  %2 = load i32, ptr %wait.addr, align 4, !dbg !2302
  %tobool = icmp ne i32 %2, 0, !dbg !2302
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef @__cpu_online_mask) #13, !dbg !2303
  ret void, !dbg !2304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vmware_pv_guest_cpu_reboot(ptr noundef %unused) #10 align 16 !dbg !2305 {
entry:
  %unused.addr = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !2307, metadata !DIExpression()), !dbg !2308
  call void @vmware_disable_steal_time() #13, !dbg !2309
  ret void, !dbg !2310
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2311 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vmware_disable_steal_time() #10 align 16 !dbg !2318 {
entry:
  %0 = load i8, ptr @has_steal_clock, align 1, !dbg !2319, !range !615, !noundef !616
  %tobool = trunc i8 %0 to i1, !dbg !2319
  br i1 %tobool, label %if.end, label %if.then, !dbg !2321

if.then:                                          ; preds = %entry
  br label %return, !dbg !2322

if.end:                                           ; preds = %entry
  call void @stealclock_disable() #13, !dbg !2323
  br label %return, !dbg !2324

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stealclock_disable() #10 align 16 !dbg !2325 {
entry:
  %call = call i32 @__stealclock_disable() #13, !dbg !2326
  ret void, !dbg !2327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vmware_guest_cpu_init() #10 align 16 !dbg !2328 {
entry:
  %0 = load i8, ptr @has_steal_clock, align 1, !dbg !2329, !range !615, !noundef !616
  %tobool = trunc i8 %0 to i1, !dbg !2329
  br i1 %tobool, label %if.then, label %if.end, !dbg !2331

if.then:                                          ; preds = %entry
  call void @vmware_register_steal_time() #13, !dbg !2332
  br label %if.end, !dbg !2332

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2333
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2334 dso_local void @native_smp_prepare_boot_cpu() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vmware_register_steal_time() #10 align 16 !dbg !2336 {
entry:
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %st = alloca ptr, align 8
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2338, metadata !DIExpression()), !dbg !2353
  call void @__this_cpu_preempt_check(ptr noundef @.str.11) #13, !dbg !2354
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2355
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2339, metadata !DIExpression()), !dbg !2355
  br label %do.body, !dbg !2355

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2356
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2342, metadata !DIExpression()), !dbg !2356
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2356
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !2355
  br label %do.cond, !dbg !2356

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2356

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2344, metadata !DIExpression()), !dbg !2357
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.9, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !2357, !srcloc !2358
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2357
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2357
  %conv = zext i32 %2 to i64, !dbg !2357
  %conv2 = trunc i64 %conv to i32, !dbg !2357
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !2355
  %3 = load i32, ptr %tmp1, align 4, !dbg !2357
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2355
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2355
  store i32 %4, ptr %tmp3, align 4, !dbg !2355
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !2354
  %5 = load i32, ptr %tmp3, align 4, !dbg !2355
  store i32 %5, ptr %tmp, align 4, !dbg !2354
  %6 = load i32, ptr %tmp, align 4, !dbg !2354
  store i32 %6, ptr %cpu, align 4, !dbg !2353
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #14, !dbg !2359
  call void @llvm.dbg.declare(metadata ptr %st, metadata !2346, metadata !DIExpression()), !dbg !2360
  br label %do.body4, !dbg !2361

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #14, !dbg !2362
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !2347, metadata !DIExpression()), !dbg !2362
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !2362
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #14, !dbg !2361
  br label %do.cond6, !dbg !2362

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !2362

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !2363
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2350, metadata !DIExpression()), !dbg !2363
  store i64 ptrtoint (ptr @vmw_steal_time to i64), ptr %__ptr, align 8, !dbg !2363
  %8 = load i64, ptr %__ptr, align 8, !dbg !2363
  %9 = load i32, ptr %cpu, align 4, !dbg !2363
  %idxprom = sext i32 %9 to i64, !dbg !2363
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2363
  %10 = load i64, ptr %arrayidx, align 8, !dbg !2363
  %add = add i64 %8, %10, !dbg !2363
  %11 = inttoptr i64 %add to ptr, !dbg !2363
  store ptr %11, ptr %tmp9, align 8, !dbg !2363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !2361
  %12 = load ptr, ptr %tmp9, align 8, !dbg !2363
  store ptr %12, ptr %tmp8, align 8, !dbg !2362
  %13 = load ptr, ptr %tmp8, align 8, !dbg !2361
  store ptr %13, ptr %st, align 8, !dbg !2360
  %14 = load i8, ptr @has_steal_clock, align 1, !dbg !2364, !range !615, !noundef !616
  %tobool = trunc i8 %14 to i1, !dbg !2364
  br i1 %tobool, label %if.end, label %if.then, !dbg !2366

if.then:                                          ; preds = %do.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2367

if.end:                                           ; preds = %do.end7
  %15 = load ptr, ptr %st, align 8, !dbg !2368
  %call = call i64 @slow_virt_to_phys(ptr noundef %15) #13, !dbg !2370
  %call10 = call zeroext i1 @stealclock_enable(i64 noundef %call) #13, !dbg !2371
  br i1 %call10, label %if.end12, label %if.then11, !dbg !2372

if.then11:                                        ; preds = %if.end
  store i8 0, ptr @has_steal_clock, align 1, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2375

if.end12:                                         ; preds = %if.end
  br label %do.body13, !dbg !2376

do.body13:                                        ; preds = %if.end12
  br label %do.cond14, !dbg !2378

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2378

do.end15:                                         ; preds = %do.cond14
  %16 = load i32, ptr %cpu, align 4, !dbg !2376
  %17 = load ptr, ptr %st, align 8, !dbg !2376
  %call17 = call i64 @slow_virt_to_phys(ptr noundef %17) #13, !dbg !2376
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i32 noundef %16, i64 noundef %call17) #12, !dbg !2376
  store i32 %call18, ptr %tmp16, align 4, !dbg !2378
  %18 = load i32, ptr %tmp16, align 4, !dbg !2376
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2380
  br label %cleanup, !dbg !2380

cleanup:                                          ; preds = %do.end15, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #14, !dbg !2380
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !2380
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2380

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !2381 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2386, metadata !DIExpression()), !dbg !2387
  ret void, !dbg !2388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @stealclock_enable(i64 noundef %pa) #10 align 16 !dbg !2389 {
entry:
  %pa.addr = alloca i64, align 8
  store i64 %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !2394, metadata !DIExpression()), !dbg !2395
  %0 = load i64, ptr %pa.addr, align 8, !dbg !2396
  %shr = lshr i64 %0, 16, !dbg !2396
  %shr1 = lshr i64 %shr, 16, !dbg !2396
  %conv = trunc i64 %shr1 to i32, !dbg !2396
  %1 = load i64, ptr %pa.addr, align 8, !dbg !2397
  %and = and i64 %1, 4294967295, !dbg !2397
  %conv2 = trunc i64 %and to i32, !dbg !2397
  %call = call i32 @vmware_cmd_stealclock(i32 noundef %conv, i32 noundef %conv2) #13, !dbg !2398
  %cmp = icmp eq i32 %call, 1, !dbg !2399
  ret i1 %cmp, !dbg !2400
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2401 dso_local i64 @slow_virt_to_phys(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2404 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !2407 {
entry:
  call void @native_irq_disable() #13, !dbg !2409
  ret void, !dbg !2410
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !2411 {
entry:
  call void @native_irq_enable() #13, !dbg !2412
  ret void, !dbg !2413
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !2414 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2415, !srcloc !2416
  ret void, !dbg !2417
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !2418 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !2419, !srcloc !2420
  ret void, !dbg !2421
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2422 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2428, metadata !DIExpression()), !dbg !2430
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2429, metadata !DIExpression()), !dbg !2431
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2432
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2433
  %div = sdiv i64 %1, 64, !dbg !2433
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2434
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !2435
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2436
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2437
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !2438
  ret void, !dbg !2439
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2440 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2448, metadata !DIExpression()), !dbg !2450
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2449, metadata !DIExpression()), !dbg !2451
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2452
  %1 = load i64, ptr %size.addr, align 8, !dbg !2453
  %conv = trunc i64 %1 to i32, !dbg !2453
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !2454
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2455
  %3 = load i64, ptr %size.addr, align 8, !dbg !2455
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #13, !dbg !2455
  ret void, !dbg !2456
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2457 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2459, metadata !DIExpression()), !dbg !2461
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2460, metadata !DIExpression()), !dbg !2462
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2463
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2465
  br i1 %1, label %if.then, label %if.else, !dbg !2466

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2467
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2467
  %shr = ashr i64 %3, 3, !dbg !2467
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2467
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2469
  %and = and i64 %4, 7, !dbg !2469
  %sh_prom = trunc i64 %and to i32, !dbg !2469
  %shl = shl i32 1, %sh_prom, !dbg !2469
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #14, !dbg !2470, !srcloc !2471
  br label %if.end, !dbg !2472

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2473
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2475
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #14, !dbg !2476, !srcloc !2477
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !2479 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2484, metadata !DIExpression()), !dbg !2486
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2485, metadata !DIExpression()), !dbg !2487
  ret i1 true, !dbg !2488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !2489 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2494, metadata !DIExpression()), !dbg !2497
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2495, metadata !DIExpression()), !dbg !2498
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2496, metadata !DIExpression()), !dbg !2499
  ret void, !dbg !2500
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!587, !588, !589, !590, !591, !592, !593, !594}
!llvm.ident = !{!595}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_setup_vmw_sched_clock", scope: !2, file: !3, line: 137, type: !584, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.vmware.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/vmware\22 -D KBUILD_BASENAME=\22vmware\22 -D KBUILD_MODNAME=\22vmware\22 -D __KBUILD_MODNAME=kmod_vmware -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/vmware.ll arch/x86/kernel/cpu/vmware.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !230, globals: !280, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/vmware.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb51c0b787794f3ba74c6c8b1111ca46")
!4 = !{!5, !17, !22, !29, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_hypervisor_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/hypervisor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c3d187261c297a091f71fc8abfac2f1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "X86_HYPER_NATIVE", value: 0)
!10 = !DIEnumerator(name: "X86_HYPER_VMWARE", value: 1)
!11 = !DIEnumerator(name: "X86_HYPER_MS_HYPERV", value: 2)
!12 = !DIEnumerator(name: "X86_HYPER_XEN_PV", value: 3)
!13 = !DIEnumerator(name: "X86_HYPER_XEN_HVM", value: 4)
!14 = !DIEnumerator(name: "X86_HYPER_KVM", value: 5)
!15 = !DIEnumerator(name: "X86_HYPER_JAILHOUSE", value: 6)
!16 = !DIEnumerator(name: "X86_HYPER_ACRN", value: 7)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !23, line: 312, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!26 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!27 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!28 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !30, line: 26, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!34 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !36, line: 57, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!39 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!40 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!41 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!42 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!43 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!44 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!45 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!46 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!47 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!48 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!49 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!50 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!51 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!52 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!53 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!54 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!55 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!56 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!57 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!58 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!59 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!60 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!61 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!62 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!63 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!64 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!65 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!66 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!67 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!68 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!69 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!70 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!71 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!72 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!73 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!74 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!75 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!76 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!77 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!78 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!79 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!80 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!81 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!82 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!83 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!84 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!85 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!86 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!87 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!88 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!89 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!90 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!91 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!92 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!93 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!94 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!95 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!96 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!97 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!98 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!99 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!100 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!101 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!102 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!103 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!104 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!105 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!106 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!107 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!108 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!109 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!110 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!111 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!112 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!113 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!114 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!115 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!116 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!117 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!118 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!119 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!120 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!121 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!122 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!123 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!124 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!125 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!126 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!127 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!128 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!129 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!130 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!131 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!132 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!133 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!134 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!135 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!136 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!137 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!138 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!140 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!141 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!142 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!143 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!144 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!145 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!146 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!148 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!149 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!150 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!151 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!152 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!153 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!154 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!155 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!156 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!157 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!158 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!159 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!160 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!161 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!162 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!163 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!164 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!165 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!166 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!167 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!168 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!169 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!170 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!171 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!172 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!173 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!174 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!175 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!176 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!177 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!178 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!179 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!180 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!181 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!182 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!183 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!194 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!195 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!196 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!197 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!198 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!199 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!200 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!201 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!202 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!203 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!204 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!205 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!206 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!207 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!208 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!209 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!210 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!211 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!212 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!213 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!214 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!215 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!216 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!217 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!218 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!219 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!220 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!221 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!222 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!223 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!224 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!225 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!226 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!227 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!228 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!229 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!230 = !{!231, !37, !232, !7, !234, !240, !233, !241, !244, !245, !261, !264, !273, !243, !236, !274, !277}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !235, line: 110, baseType: !236)
!235 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !237, line: 21, baseType: !238)
!237 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !239, line: 27, baseType: !7)
!239 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !235, line: 113, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !237, line: 23, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !239, line: 31, baseType: !243)
!243 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!244 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmware_steal_time", file: !3, line: 98, size: 512, elements: !247)
!247 = !{!248, !257}
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !3, line: 99, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !3, line: 99, size: 64, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !249, file: !3, line: 100, baseType: !240, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !3, line: 101, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !3, line: 101, size: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "clock_low", scope: !253, file: !3, line: 103, baseType: !234, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "clock_high", scope: !253, file: !3, line: 104, baseType: !234, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !246, file: !3, line: 107, baseType: !258, size: 448, offset: 64)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 448, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 7)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !243)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !267, line: 19, size: 64, elements: !268)
!267 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !266, file: !267, line: 19, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 1)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !276)
!276 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !279)
!279 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!280 = !{!281, !295, !297, !299, !302, !0, !491, !493, !498, !500, !502, !505, !510, !512, !517, !522, !527, !532, !534, !539, !541, !546, !551, !559, !561, !574, !579}
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "__setup_setup_vmw_sched_clock", scope: !2, file: !3, line: 137, type: !283, isLocal: true, isDefinition: true, align: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !284, line: 324, size: 192, elements: !285)
!284 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!285 = !{!286, !289, !294}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !283, file: !284, line: 325, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !283, file: !284, line: 326, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!37, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !283, file: !284, line: 327, baseType: !37, size: 32, offset: 128)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "__setup_parse_no_stealacc", scope: !2, file: !3, line: 144, type: !283, isLocal: true, isDefinition: true, align: 64)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_vmware__256_327_activate_jump_labels3257", scope: !2, file: !3, line: 327, type: !231, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 519, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 56, elements: !259)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "x86_hyper_vmware", scope: !2, file: !3, line: 518, type: !304, isLocal: false, isDefinition: true)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hypervisor_x86", file: !6, line: 41, size: 896, elements: !306)
!306 = !{!307, !308, !312, !313, !331, !490}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !6, line: 43, baseType: !287, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !305, file: !6, line: 46, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!234}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !305, file: !6, line: 49, baseType: !5, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !305, file: !6, line: 52, baseType: !314, size: 384, offset: 192)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hyper_init", file: !315, line: 124, size: 384, elements: !316)
!315 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!316 = !{!317, !321, !322, !328, !329, !330}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "init_platform", scope: !314, file: !315, line: 125, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "guest_late_init", scope: !314, file: !315, line: 126, baseType: !318, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "x2apic_available", scope: !314, file: !315, line: 127, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !235, line: 35, baseType: !327)
!327 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "msi_ext_dest_id", scope: !314, file: !315, line: 128, baseType: !323, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem_mapping", scope: !314, file: !315, line: 129, baseType: !318, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "init_after_bootmem", scope: !314, file: !315, line: 130, baseType: !318, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !305, file: !6, line: 55, baseType: !332, size: 256, offset: 576)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hyper_runtime", file: !315, line: 270, size: 256, elements: !333)
!333 = !{!334, !338, !482, !486}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pin_vcpu", scope: !332, file: !315, line: 271, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !37}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sev_es_hcall_prepare", scope: !332, file: !315, line: 272, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342, !430}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ghcb", file: !344, line: 505, size: 32768, elements: !345)
!344 = !DIFile(filename: "./arch/x86/include/asm/svm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccde6e0fcda4269e31ba4a4ceb53d4bf")
!345 = !{!346, !413, !417, !421, !425, !429}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "save", scope: !343, file: !344, line: 506, baseType: !347, size: 8256)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ghcb_save_area", file: !344, line: 463, size: 8256, elements: !348)
!348 = !{!349, !356, !357, !361, !362, !366, !367, !371, !372, !376, !377, !378, !379, !383, !384, !385, !386, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !410, !411, !412}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x0", scope: !347, file: !344, line: 464, baseType: !350, size: 1624)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 1624, elements: !354)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !237, line: 17, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !239, line: 21, baseType: !353)
!353 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!354 = !{!355}
!355 = !DISubrange(count: 203)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cpl", scope: !347, file: !344, line: 465, baseType: !351, size: 8, offset: 1624)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0xcc", scope: !347, file: !344, line: 466, baseType: !358, size: 928, offset: 1632)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 928, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 116)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "xss", scope: !347, file: !344, line: 467, baseType: !241, size: 64, offset: 2560)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x148", scope: !347, file: !344, line: 468, baseType: !363, size: 192, offset: 2624)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 192, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 24)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "dr7", scope: !347, file: !344, line: 469, baseType: !241, size: 64, offset: 2816)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x168", scope: !347, file: !344, line: 470, baseType: !368, size: 128, offset: 2880)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 128, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !347, file: !344, line: 471, baseType: !241, size: 64, offset: 3008)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x180", scope: !347, file: !344, line: 472, baseType: !373, size: 704, offset: 3072)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 704, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 88)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !347, file: !344, line: 473, baseType: !241, size: 64, offset: 3776)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x1e0", scope: !347, file: !344, line: 474, baseType: !363, size: 192, offset: 3840)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !347, file: !344, line: 475, baseType: !241, size: 64, offset: 4032)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x200", scope: !347, file: !344, line: 476, baseType: !380, size: 2112, offset: 4096)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 2112, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 264)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !347, file: !344, line: 477, baseType: !241, size: 64, offset: 6208)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !347, file: !344, line: 478, baseType: !241, size: 64, offset: 6272)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !347, file: !344, line: 479, baseType: !241, size: 64, offset: 6336)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x320", scope: !347, file: !344, line: 480, baseType: !387, size: 64, offset: 6400)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 64, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 8)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !347, file: !344, line: 481, baseType: !241, size: 64, offset: 6464)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !347, file: !344, line: 482, baseType: !241, size: 64, offset: 6528)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !347, file: !344, line: 483, baseType: !241, size: 64, offset: 6592)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !347, file: !344, line: 484, baseType: !241, size: 64, offset: 6656)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !347, file: !344, line: 485, baseType: !241, size: 64, offset: 6720)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !347, file: !344, line: 486, baseType: !241, size: 64, offset: 6784)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !347, file: !344, line: 487, baseType: !241, size: 64, offset: 6848)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !347, file: !344, line: 488, baseType: !241, size: 64, offset: 6912)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !347, file: !344, line: 489, baseType: !241, size: 64, offset: 6976)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !347, file: !344, line: 490, baseType: !241, size: 64, offset: 7040)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !347, file: !344, line: 491, baseType: !241, size: 64, offset: 7104)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x380", scope: !347, file: !344, line: 492, baseType: !368, size: 128, offset: 7168)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sw_exit_code", scope: !347, file: !344, line: 493, baseType: !241, size: 64, offset: 7296)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sw_exit_info_1", scope: !347, file: !344, line: 494, baseType: !241, size: 64, offset: 7360)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sw_exit_info_2", scope: !347, file: !344, line: 495, baseType: !241, size: 64, offset: 7424)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sw_scratch", scope: !347, file: !344, line: 496, baseType: !241, size: 64, offset: 7488)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0x3b0", scope: !347, file: !344, line: 497, baseType: !407, size: 448, offset: 7552)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 448, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 56)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !347, file: !344, line: 498, baseType: !241, size: 64, offset: 8000)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "valid_bitmap", scope: !347, file: !344, line: 499, baseType: !368, size: 128, offset: 8064)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "x87_state_gpa", scope: !347, file: !344, line: 500, baseType: !241, size: 64, offset: 8192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_save", scope: !343, file: !344, line: 507, baseType: !414, size: 8128, offset: 8256)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 8128, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 1016)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "shared_buffer", scope: !343, file: !344, line: 509, baseType: !418, size: 16256, offset: 16384)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 16256, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 2032)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_0xff0", scope: !343, file: !344, line: 511, baseType: !422, size: 80, offset: 32640)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 80, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 10)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !343, file: !344, line: 512, baseType: !426, size: 16, offset: 32720)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !237, line: 19, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !239, line: 24, baseType: !428)
!428 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ghcb_usage", scope: !343, file: !344, line: 513, baseType: !236, size: 32, offset: 32736)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !432, line: 103, size: 1344, elements: !433)
!432 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !462, !463, !464}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !431, file: !432, line: 109, baseType: !233, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !431, file: !432, line: 110, baseType: !233, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !431, file: !432, line: 111, baseType: !233, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !431, file: !432, line: 112, baseType: !233, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !431, file: !432, line: 113, baseType: !233, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !431, file: !432, line: 114, baseType: !233, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !431, file: !432, line: 117, baseType: !233, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !431, file: !432, line: 118, baseType: !233, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !431, file: !432, line: 119, baseType: !233, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !431, file: !432, line: 120, baseType: !233, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !431, file: !432, line: 121, baseType: !233, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !431, file: !432, line: 122, baseType: !233, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !431, file: !432, line: 123, baseType: !233, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !431, file: !432, line: 124, baseType: !233, size: 64, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !431, file: !432, line: 125, baseType: !233, size: 64, offset: 896)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !431, file: !432, line: 139, baseType: !233, size: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !431, file: !432, line: 142, baseType: !233, size: 64, offset: 1024)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !432, line: 144, baseType: !452, size: 64, offset: 1088)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !432, line: 144, size: 64, elements: !453)
!453 = !{!454, !455, !456}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !452, file: !432, line: 146, baseType: !426, size: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !452, file: !432, line: 148, baseType: !241, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !452, file: !432, line: 150, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !432, line: 59, size: 64, elements: !458)
!458 = !{!459, !460, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !457, file: !432, line: 61, baseType: !241, size: 16, flags: DIFlagBitField, extraData: i64 0)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !457, file: !432, line: 63, baseType: !241, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !457, file: !432, line: 65, baseType: !241, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !432, line: 153, baseType: !233, size: 64, offset: 1152)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !431, file: !432, line: 154, baseType: !233, size: 64, offset: 1216)
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !432, line: 156, baseType: !465, size: 64, offset: 1280)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !432, line: 156, size: 64, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !465, file: !432, line: 158, baseType: !426, size: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !465, file: !432, line: 160, baseType: !241, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !465, file: !432, line: 162, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !432, line: 69, size: 64, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !470, file: !432, line: 71, baseType: !241, size: 16, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !470, file: !432, line: 73, baseType: !241, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !470, file: !432, line: 75, baseType: !241, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !470, file: !432, line: 77, baseType: !241, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !470, file: !432, line: 80, baseType: !241, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !432, line: 83, baseType: !241, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !470, file: !432, line: 86, baseType: !241, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !470, file: !432, line: 88, baseType: !241, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !470, file: !432, line: 93, baseType: !241, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !470, file: !432, line: 100, baseType: !241, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sev_es_hcall_finish", scope: !332, file: !315, line: 273, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!326, !342, !430}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_private_mmio", scope: !332, file: !315, line: 274, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!326, !241}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_nopv", scope: !305, file: !6, line: 58, baseType: !326, size: 8, offset: 832)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "vmw_sched_clock", scope: !2, file: !3, line: 127, type: !326, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "__setup_str_parse_no_stealacc", scope: !2, file: !3, line: 144, type: !495, isLocal: true, isDefinition: true, align: 8)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 104, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 13)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "steal_acc", scope: !2, file: !3, line: 130, type: !326, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "has_steal_clock", scope: !2, file: !3, line: 129, type: !326, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !3, line: 457, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 104, elements: !496)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 272, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 34)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "vmware_hypercall_mode", scope: !2, file: !3, line: 111, type: !351, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !514, isLocal: true, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 232, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 29)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !3, line: 401, type: !519, isLocal: true, isDefinition: true)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 456, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 57)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !3, line: 417, type: !524, isLocal: true, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 488, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 61)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !529, isLocal: true, isDefinition: true)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 432, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 54)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "vmware_tsc_khz", scope: !2, file: !3, line: 110, type: !233, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 331, type: !536, isLocal: true, isDefinition: true)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 144, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 18)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !3, line: 353, type: !536, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !543, isLocal: true, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 520, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 65)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !548, isLocal: true, isDefinition: true)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 328, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 41)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "vmware_cyc2ns", scope: !2, file: !3, line: 126, type: !553, isLocal: true, isDefinition: true)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyc2ns_data", file: !554, line: 29, size: 128, elements: !555)
!554 = !DIFile(filename: "./arch/x86/include/asm/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26381dd2a6e8f4b5f231663701dbc646")
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cyc2ns_mul", scope: !553, file: !554, line: 30, baseType: !236, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cyc2ns_shift", scope: !553, file: !554, line: 31, baseType: !236, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cyc2ns_offset", scope: !553, file: !554, line: 32, baseType: !241, size: 64, offset: 64)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "vmw_steal_time", scope: !2, file: !3, line: 128, type: !246, isLocal: true, isDefinition: true, align: 512)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "vmware_pv_reboot_nb", scope: !2, file: !3, line: 289, type: !563, isLocal: true, isDefinition: true)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !564, line: 54, size: 192, elements: !565)
!564 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!565 = !{!566, !572, !573}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !563, file: !564, line: 55, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !564, line: 51, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!37, !571, !233, !231}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !564, line: 56, baseType: !571, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !563, file: !564, line: 57, baseType: !37, size: 32, offset: 128)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 40, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 5)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 360, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 45)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 152, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 19)
!587 = !{i32 7, !"Dwarf Version", i32 5}
!588 = !{i32 2, !"Debug Info Version", i32 3}
!589 = !{i32 1, !"wchar_size", i32 2}
!590 = !{i32 8, !"cf-protection-branch", i32 1}
!591 = !{i32 4, !"function_return_thunk_extern", i32 1}
!592 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!593 = !{i32 1, !"Code Model", i32 2}
!594 = !{i32 1, !"override-stack-alignment", i32 8}
!595 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!596 = distinct !DISubprogram(name: "setup_vmw_sched_clock", scope: !3, file: !3, line: 132, type: !291, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!597 = !{!598}
!598 = !DILocalVariable(name: "s", arg: 1, scope: !596, file: !3, line: 132, type: !293)
!599 = !DILocation(line: 132, column: 47, scope: !596)
!600 = !DILocation(line: 134, column: 18, scope: !596)
!601 = !DILocation(line: 135, column: 2, scope: !596)
!602 = distinct !DISubprogram(name: "parse_no_stealacc", scope: !3, file: !3, line: 139, type: !291, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!603 = !{!604}
!604 = !DILocalVariable(name: "arg", arg: 1, scope: !602, file: !3, line: 139, type: !293)
!605 = !DILocation(line: 139, column: 43, scope: !602)
!606 = !DILocation(line: 141, column: 12, scope: !602)
!607 = !DILocation(line: 142, column: 2, scope: !602)
!608 = distinct !DISubprogram(name: "__initstub__kmod_vmware__256_327_activate_jump_labels3", scope: !3, file: !3, line: 327, type: !609, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!609 = !DISubroutineType(types: !610)
!610 = !{!37}
!611 = !DILocation(line: 327, column: 1, scope: !608)
!612 = distinct !DISubprogram(name: "activate_jump_labels", scope: !3, file: !3, line: 317, type: !609, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!613 = !DILocation(line: 319, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !612, file: !3, line: 319, column: 6)
!615 = !{i8 0, i8 2}
!616 = !{}
!617 = !DILocation(line: 319, column: 6, scope: !612)
!618 = !DILocation(line: 320, column: 3, scope: !619)
!619 = distinct !DILexicalBlock(scope: !614, file: !3, line: 319, column: 23)
!620 = !DILocation(line: 321, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !3, line: 321, column: 7)
!622 = !DILocation(line: 321, column: 7, scope: !619)
!623 = !DILocation(line: 322, column: 4, scope: !621)
!624 = !DILocation(line: 323, column: 2, scope: !619)
!625 = !DILocation(line: 325, column: 2, scope: !612)
!626 = distinct !DISubprogram(name: "vmware_platform", scope: !3, file: !3, line: 449, type: !310, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!627 = !{!628, !631}
!628 = !DILocalVariable(name: "eax", scope: !629, file: !3, line: 452, type: !7)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 451, column: 44)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 451, column: 6)
!631 = !DILocalVariable(name: "hyper_vendor_id", scope: !629, file: !3, line: 453, type: !632)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 3)
!635 = !DILocation(line: 451, column: 6, scope: !626)
!636 = !DILocation(line: 451, column: 6, scope: !630)
!637 = !DILocation(line: 452, column: 3, scope: !629)
!638 = !DILocation(line: 452, column: 16, scope: !629)
!639 = !DILocation(line: 453, column: 3, scope: !629)
!640 = !DILocation(line: 453, column: 16, scope: !629)
!641 = !DILocation(line: 455, column: 40, scope: !629)
!642 = !DILocation(line: 456, column: 10, scope: !629)
!643 = !DILocation(line: 456, column: 31, scope: !629)
!644 = !DILocation(line: 455, column: 3, scope: !629)
!645 = !DILocation(line: 457, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !629, file: !3, line: 457, column: 7)
!647 = !DILocation(line: 457, column: 8, scope: !646)
!648 = !DILocation(line: 457, column: 7, scope: !629)
!649 = !DILocation(line: 458, column: 8, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 458, column: 8)
!651 = distinct !DILexicalBlock(scope: !646, file: !3, line: 457, column: 53)
!652 = !DILocation(line: 458, column: 12, scope: !650)
!653 = !DILocation(line: 458, column: 8, scope: !651)
!654 = !DILocation(line: 460, column: 6, scope: !650)
!655 = !DILocation(line: 459, column: 27, scope: !650)
!656 = !DILocation(line: 459, column: 5, scope: !650)
!657 = !DILocation(line: 462, column: 4, scope: !658)
!658 = distinct !DILexicalBlock(scope: !651, file: !3, line: 462, column: 4)
!659 = !DILocation(line: 462, column: 4, scope: !660)
!660 = distinct !DILexicalBlock(scope: !658, file: !3, line: 462, column: 4)
!661 = !DILocation(line: 465, column: 4, scope: !651)
!662 = !DILocation(line: 467, column: 2, scope: !630)
!663 = !DILocation(line: 467, column: 2, scope: !629)
!664 = !DILocation(line: 467, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !630, file: !3, line: 467, column: 13)
!666 = !DILocation(line: 467, column: 27, scope: !665)
!667 = !DILocation(line: 467, column: 30, scope: !665)
!668 = !DILocation(line: 467, column: 59, scope: !665)
!669 = !DILocation(line: 468, column: 6, scope: !665)
!670 = !DILocation(line: 467, column: 13, scope: !630)
!671 = !DILocation(line: 469, column: 3, scope: !665)
!672 = !DILocation(line: 471, column: 2, scope: !626)
!673 = !DILocation(line: 472, column: 1, scope: !626)
!674 = distinct !DISubprogram(name: "vmware_platform_setup", scope: !3, file: !3, line: 390, type: !319, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !686, !687, !689, !692, !696}
!676 = !DILocalVariable(name: "eax", scope: !674, file: !3, line: 392, type: !234)
!677 = !DILocalVariable(name: "ebx", scope: !674, file: !3, line: 392, type: !234)
!678 = !DILocalVariable(name: "ecx", scope: !674, file: !3, line: 392, type: !234)
!679 = !DILocalVariable(name: "edx", scope: !674, file: !3, line: 392, type: !234)
!680 = !DILocalVariable(name: "lpj", scope: !674, file: !3, line: 393, type: !240)
!681 = !DILocalVariable(name: "tsc_khz", scope: !674, file: !3, line: 393, type: !240)
!682 = !DILocalVariable(name: "__base", scope: !683, file: !3, line: 399, type: !234)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 399, column: 3)
!684 = distinct !DILexicalBlock(scope: !685, file: !3, line: 397, column: 23)
!685 = distinct !DILexicalBlock(scope: !674, file: !3, line: 397, column: 6)
!686 = !DILocalVariable(name: "__rem", scope: !683, file: !3, line: 399, type: !234)
!687 = !DILocalVariable(name: "__ret_warn_on", scope: !688, file: !3, line: 400, type: !37)
!688 = distinct !DILexicalBlock(scope: !684, file: !3, line: 400, column: 3)
!689 = !DILocalVariable(name: "__flags", scope: !690, file: !3, line: 400, type: !37)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 400, column: 3)
!691 = distinct !DILexicalBlock(scope: !688, file: !3, line: 400, column: 3)
!692 = !DILocalVariable(name: "__base", scope: !693, file: !3, line: 406, type: !234)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 406, column: 4)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 405, column: 20)
!695 = distinct !DILexicalBlock(scope: !684, file: !3, line: 405, column: 7)
!696 = !DILocalVariable(name: "__rem", scope: !693, file: !3, line: 406, type: !234)
!697 = !DILocation(line: 392, column: 2, scope: !674)
!698 = !DILocation(line: 392, column: 11, scope: !674)
!699 = !DILocation(line: 392, column: 16, scope: !674)
!700 = !DILocation(line: 392, column: 21, scope: !674)
!701 = !DILocation(line: 392, column: 26, scope: !674)
!702 = !DILocation(line: 393, column: 2, scope: !674)
!703 = !DILocation(line: 393, column: 11, scope: !674)
!704 = !DILocation(line: 393, column: 16, scope: !674)
!705 = !DILocation(line: 395, column: 2, scope: !674)
!706 = !DILocation(line: 395, column: 2, scope: !707)
!707 = distinct !DILexicalBlock(scope: !674, file: !3, line: 395, column: 2)
!708 = !DILocation(line: 395, column: 2, scope: !709)
!709 = distinct !DILexicalBlock(scope: !707, file: !3, line: 395, column: 2)
!710 = !{i64 2153486894}
!711 = !{i64 2153487223}
!712 = !{i64 2153487471}
!713 = !DILocation(line: 397, column: 6, scope: !685)
!714 = !DILocation(line: 397, column: 10, scope: !685)
!715 = !DILocation(line: 397, column: 6, scope: !674)
!716 = !DILocation(line: 398, column: 19, scope: !684)
!717 = !DILocation(line: 398, column: 37, scope: !684)
!718 = !DILocation(line: 398, column: 27, scope: !684)
!719 = !DILocation(line: 398, column: 42, scope: !684)
!720 = !DILocation(line: 398, column: 23, scope: !684)
!721 = !DILocation(line: 398, column: 17, scope: !684)
!722 = !DILocation(line: 398, column: 7, scope: !684)
!723 = !DILocation(line: 399, column: 3, scope: !683)
!724 = !DILocation(line: 399, column: 3, scope: !684)
!725 = !DILocation(line: 400, column: 3, scope: !688)
!726 = !DILocation(line: 400, column: 3, scope: !691)
!727 = !DILocation(line: 400, column: 3, scope: !690)
!728 = !DILocation(line: 400, column: 3, scope: !729)
!729 = distinct !DILexicalBlock(scope: !690, file: !3, line: 400, column: 3)
!730 = !DILocation(line: 400, column: 3, scope: !731)
!731 = distinct !DILexicalBlock(scope: !690, file: !3, line: 400, column: 3)
!732 = !{i64 2153488462, i64 2153488491, i64 2153488537, i64 2153488595, i64 2153488649, i64 2153488703, i64 2153488758, i64 2153488789, i64 2153489097, i64 2153489103, i64 2153489150, i64 2153489173, i64 2153489199}
!733 = !DILocation(line: 400, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !690, file: !3, line: 400, column: 3)
!735 = !DILocation(line: 400, column: 3, scope: !684)
!736 = !DILocation(line: 401, column: 3, scope: !737)
!737 = distinct !DILexicalBlock(scope: !684, file: !3, line: 401, column: 3)
!738 = !DILocation(line: 401, column: 3, scope: !739)
!739 = distinct !DILexicalBlock(scope: !737, file: !3, line: 401, column: 3)
!740 = !DILocation(line: 405, column: 8, scope: !695)
!741 = !DILocation(line: 405, column: 7, scope: !684)
!742 = !DILocation(line: 406, column: 4, scope: !693)
!743 = !DILocation(line: 406, column: 4, scope: !694)
!744 = !DILocation(line: 407, column: 17, scope: !694)
!745 = !DILocation(line: 407, column: 15, scope: !694)
!746 = !DILocation(line: 408, column: 3, scope: !694)
!747 = !DILocation(line: 410, column: 20, scope: !684)
!748 = !DILocation(line: 410, column: 18, scope: !684)
!749 = !DILocation(line: 411, column: 30, scope: !684)
!750 = !DILocation(line: 412, column: 30, scope: !684)
!751 = !DILocation(line: 416, column: 24, scope: !684)
!752 = !DILocation(line: 416, column: 28, scope: !684)
!753 = !DILocation(line: 416, column: 22, scope: !684)
!754 = !DILocation(line: 417, column: 3, scope: !755)
!755 = distinct !DILexicalBlock(scope: !684, file: !3, line: 417, column: 3)
!756 = !DILocation(line: 417, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !755, file: !3, line: 417, column: 3)
!758 = !DILocation(line: 420, column: 2, scope: !684)
!759 = !DILocation(line: 421, column: 3, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 421, column: 3)
!761 = distinct !DILexicalBlock(scope: !685, file: !3, line: 420, column: 9)
!762 = !DILocation(line: 421, column: 3, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !3, line: 421, column: 3)
!764 = !DILocation(line: 424, column: 2, scope: !674)
!765 = !DILocation(line: 427, column: 17, scope: !674)
!766 = !DILocation(line: 430, column: 2, scope: !674)
!767 = !DILocation(line: 431, column: 1, scope: !674)
!768 = distinct !DISubprogram(name: "vmware_legacy_x2apic_available", scope: !3, file: !3, line: 475, type: !324, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!769 = !{!770, !771, !772, !773}
!770 = !DILocalVariable(name: "eax", scope: !768, file: !3, line: 477, type: !234)
!771 = !DILocalVariable(name: "ebx", scope: !768, file: !3, line: 477, type: !234)
!772 = !DILocalVariable(name: "ecx", scope: !768, file: !3, line: 477, type: !234)
!773 = !DILocalVariable(name: "edx", scope: !768, file: !3, line: 477, type: !234)
!774 = !DILocation(line: 477, column: 2, scope: !768)
!775 = !DILocation(line: 477, column: 11, scope: !768)
!776 = !DILocation(line: 477, column: 16, scope: !768)
!777 = !DILocation(line: 477, column: 21, scope: !768)
!778 = !DILocation(line: 477, column: 26, scope: !768)
!779 = !DILocation(line: 478, column: 2, scope: !768)
!780 = !DILocation(line: 478, column: 2, scope: !781)
!781 = distinct !DILexicalBlock(scope: !768, file: !3, line: 478, column: 2)
!782 = !DILocation(line: 478, column: 2, scope: !783)
!783 = distinct !DILexicalBlock(scope: !781, file: !3, line: 478, column: 2)
!784 = !{i64 2153502732}
!785 = !{i64 2153503075}
!786 = !{i64 2153503337}
!787 = !DILocation(line: 479, column: 11, scope: !768)
!788 = !DILocation(line: 479, column: 15, scope: !768)
!789 = !DILocation(line: 479, column: 48, scope: !768)
!790 = !DILocation(line: 480, column: 4, scope: !768)
!791 = !DILocation(line: 480, column: 8, scope: !768)
!792 = !DILocation(line: 0, scope: !768)
!793 = !DILocation(line: 481, column: 1, scope: !768)
!794 = !DILocation(line: 479, column: 2, scope: !768)
!795 = !DISubprogram(name: "static_key_slow_inc", scope: !796, file: !796, line: 227, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!797 = !DISubroutineType(types: !798)
!798 = !{!326, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !796, line: 85, size: 128, elements: !801)
!801 = !{!802, !807}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !800, file: !796, line: 86, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !235, line: 174, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 172, size: 32, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !804, file: !235, line: 173, baseType: !37, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !796, line: 101, baseType: !808, size: 64, offset: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !796, line: 101, size: 64, elements: !809)
!809 = !{!810, !811, !820}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !796, line: 102, baseType: !233, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !808, file: !796, line: 103, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !796, line: 117, size: 128, elements: !814)
!814 = !{!815, !818, !819}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !813, file: !796, line: 118, baseType: !816, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !237, line: 20, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !239, line: 26, baseType: !37)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !813, file: !796, line: 119, baseType: !816, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !813, file: !796, line: 120, baseType: !279, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !796, line: 104, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !796, line: 104, flags: DIFlagFwdDecl)
!823 = distinct !DISubprogram(name: "arch_test_bit", scope: !824, file: !824, line: 237, type: !825, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !830)
!824 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!825 = !DISubroutineType(types: !826)
!826 = !{!326, !233, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !233)
!830 = !{!831, !832}
!831 = !DILocalVariable(name: "nr", arg: 1, scope: !823, file: !824, line: 237, type: !233)
!832 = !DILocalVariable(name: "addr", arg: 2, scope: !823, file: !824, line: 237, type: !827)
!833 = !DILocation(line: 237, column: 29, scope: !823)
!834 = !DILocation(line: 237, column: 63, scope: !823)
!835 = !DILocation(line: 239, column: 30, scope: !823)
!836 = !DILocation(line: 239, column: 9, scope: !823)
!837 = !DILocation(line: 239, column: 54, scope: !823)
!838 = !DILocation(line: 239, column: 58, scope: !823)
!839 = !DILocation(line: 239, column: 36, scope: !823)
!840 = !DILocation(line: 240, column: 26, scope: !823)
!841 = !DILocation(line: 240, column: 30, scope: !823)
!842 = !DILocation(line: 240, column: 8, scope: !823)
!843 = !DILocation(line: 239, column: 2, scope: !823)
!844 = distinct !DISubprogram(name: "cpuid", scope: !845, file: !845, line: 72, type: !846, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!845 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!846 = !DISubroutineType(types: !847)
!847 = !{null, !7, !848, !848, !848, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!849 = !{!850, !851, !852, !853, !854}
!850 = !DILocalVariable(name: "op", arg: 1, scope: !844, file: !845, line: 72, type: !7)
!851 = !DILocalVariable(name: "eax", arg: 2, scope: !844, file: !845, line: 73, type: !848)
!852 = !DILocalVariable(name: "ebx", arg: 3, scope: !844, file: !845, line: 73, type: !848)
!853 = !DILocalVariable(name: "ecx", arg: 4, scope: !844, file: !845, line: 74, type: !848)
!854 = !DILocalVariable(name: "edx", arg: 5, scope: !844, file: !845, line: 74, type: !848)
!855 = !DILocation(line: 72, column: 39, scope: !844)
!856 = !DILocation(line: 73, column: 19, scope: !844)
!857 = !DILocation(line: 73, column: 38, scope: !844)
!858 = !DILocation(line: 74, column: 19, scope: !844)
!859 = !DILocation(line: 74, column: 38, scope: !844)
!860 = !DILocation(line: 76, column: 9, scope: !844)
!861 = !DILocation(line: 76, column: 3, scope: !844)
!862 = !DILocation(line: 76, column: 7, scope: !844)
!863 = !DILocation(line: 77, column: 3, scope: !844)
!864 = !DILocation(line: 77, column: 7, scope: !844)
!865 = !DILocation(line: 78, column: 10, scope: !844)
!866 = !DILocation(line: 78, column: 15, scope: !844)
!867 = !DILocation(line: 78, column: 20, scope: !844)
!868 = !DILocation(line: 78, column: 25, scope: !844)
!869 = !DILocation(line: 78, column: 2, scope: !844)
!870 = !DILocation(line: 79, column: 1, scope: !844)
!871 = !DISubprogram(name: "memcmp", scope: !872, file: !872, line: 196, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!873 = !DISubroutineType(types: !874)
!874 = !{!37, !875, !875, !877}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !878, line: 72, baseType: !879)
!878 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !878, line: 16, baseType: !233)
!880 = distinct !DISubprogram(name: "vmware_select_hypercall", scope: !3, file: !3, line: 433, type: !881, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{!351}
!883 = !{!884, !885, !886, !887}
!884 = !DILocalVariable(name: "eax", scope: !880, file: !3, line: 435, type: !37)
!885 = !DILocalVariable(name: "ebx", scope: !880, file: !3, line: 435, type: !37)
!886 = !DILocalVariable(name: "ecx", scope: !880, file: !3, line: 435, type: !37)
!887 = !DILocalVariable(name: "edx", scope: !880, file: !3, line: 435, type: !37)
!888 = !DILocation(line: 435, column: 2, scope: !880)
!889 = !DILocation(line: 435, column: 6, scope: !880)
!890 = !DILocation(line: 435, column: 11, scope: !880)
!891 = !DILocation(line: 435, column: 16, scope: !880)
!892 = !DILocation(line: 435, column: 21, scope: !880)
!893 = !DILocation(line: 437, column: 2, scope: !880)
!894 = !DILocation(line: 438, column: 10, scope: !880)
!895 = !DILocation(line: 438, column: 14, scope: !880)
!896 = !DILocation(line: 438, column: 9, scope: !880)
!897 = !DILocation(line: 440, column: 1, scope: !880)
!898 = !DILocation(line: 438, column: 2, scope: !880)
!899 = !DISubprogram(name: "_printk", scope: !900, file: !900, line: 153, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!901 = !DISubroutineType(types: !902)
!902 = !{!37, !287, null}
!903 = !DISubprogram(name: "dmi_name_in_serial", scope: !904, file: !904, line: 109, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!905 = !DISubroutineType(types: !906)
!906 = !{!37, !287}
!907 = distinct !DISubprogram(name: "__vmware_platform", scope: !3, file: !3, line: 113, type: !609, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!908 = !{!909, !910, !911, !912}
!909 = !DILocalVariable(name: "eax", scope: !907, file: !3, line: 115, type: !234)
!910 = !DILocalVariable(name: "ebx", scope: !907, file: !3, line: 115, type: !234)
!911 = !DILocalVariable(name: "ecx", scope: !907, file: !3, line: 115, type: !234)
!912 = !DILocalVariable(name: "edx", scope: !907, file: !3, line: 115, type: !234)
!913 = !DILocation(line: 115, column: 2, scope: !907)
!914 = !DILocation(line: 115, column: 11, scope: !907)
!915 = !DILocation(line: 115, column: 16, scope: !907)
!916 = !DILocation(line: 115, column: 21, scope: !907)
!917 = !DILocation(line: 115, column: 26, scope: !907)
!918 = !DILocation(line: 116, column: 2, scope: !907)
!919 = !DILocation(line: 116, column: 2, scope: !920)
!920 = distinct !DILexicalBlock(scope: !907, file: !3, line: 116, column: 2)
!921 = !DILocation(line: 116, column: 2, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !3, line: 116, column: 2)
!923 = !{i64 2153450593}
!924 = !{i64 2153450932}
!925 = !{i64 2153451190}
!926 = !DILocation(line: 117, column: 9, scope: !907)
!927 = !DILocation(line: 117, column: 13, scope: !907)
!928 = !DILocation(line: 117, column: 29, scope: !907)
!929 = !DILocation(line: 117, column: 32, scope: !907)
!930 = !DILocation(line: 117, column: 36, scope: !907)
!931 = !DILocation(line: 0, scope: !907)
!932 = !DILocation(line: 118, column: 1, scope: !907)
!933 = !DILocation(line: 117, column: 2, scope: !907)
!934 = distinct !DISubprogram(name: "constant_test_bit", scope: !824, file: !824, line: 204, type: !935, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!326, !279, !827}
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "nr", arg: 1, scope: !934, file: !824, line: 204, type: !279)
!939 = !DILocalVariable(name: "addr", arg: 2, scope: !934, file: !824, line: 204, type: !827)
!940 = !DILocation(line: 204, column: 52, scope: !934)
!941 = !DILocation(line: 204, column: 86, scope: !934)
!942 = !DILocation(line: 206, column: 19, scope: !934)
!943 = !DILocation(line: 206, column: 22, scope: !934)
!944 = !DILocation(line: 206, column: 15, scope: !934)
!945 = !DILocation(line: 207, column: 4, scope: !934)
!946 = !DILocation(line: 207, column: 9, scope: !934)
!947 = !DILocation(line: 207, column: 12, scope: !934)
!948 = !DILocation(line: 206, column: 44, scope: !934)
!949 = !DILocation(line: 207, column: 37, scope: !934)
!950 = !DILocation(line: 206, column: 2, scope: !934)
!951 = distinct !DISubprogram(name: "variable_test_bit", scope: !824, file: !824, line: 224, type: !935, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !952)
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "nr", arg: 1, scope: !951, file: !824, line: 224, type: !279)
!954 = !DILocalVariable(name: "addr", arg: 2, scope: !951, file: !824, line: 224, type: !827)
!955 = !DILocalVariable(name: "oldbit", scope: !951, file: !824, line: 226, type: !326)
!956 = !DILocation(line: 224, column: 52, scope: !951)
!957 = !DILocation(line: 224, column: 86, scope: !951)
!958 = !DILocation(line: 226, column: 2, scope: !951)
!959 = !DILocation(line: 226, column: 7, scope: !951)
!960 = !DILocation(line: 231, column: 33, scope: !951)
!961 = !DILocation(line: 231, column: 46, scope: !951)
!962 = !DILocation(line: 228, column: 2, scope: !951)
!963 = !{i64 2148008934, i64 2148009008}
!964 = !DILocation(line: 233, column: 9, scope: !951)
!965 = !DILocation(line: 234, column: 1, scope: !951)
!966 = !DILocation(line: 233, column: 2, scope: !951)
!967 = distinct !DISubprogram(name: "native_cpuid", scope: !845, file: !845, line: 30, type: !968, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !848, !848, !848, !848}
!970 = !{!971, !972, !973, !974}
!971 = !DILocalVariable(name: "eax", arg: 1, scope: !967, file: !845, line: 30, type: !848)
!972 = !DILocalVariable(name: "ebx", arg: 2, scope: !967, file: !845, line: 30, type: !848)
!973 = !DILocalVariable(name: "ecx", arg: 3, scope: !967, file: !845, line: 31, type: !848)
!974 = !DILocalVariable(name: "edx", arg: 4, scope: !967, file: !845, line: 31, type: !848)
!975 = !DILocation(line: 30, column: 47, scope: !967)
!976 = !DILocation(line: 30, column: 66, scope: !967)
!977 = !DILocation(line: 31, column: 19, scope: !967)
!978 = !DILocation(line: 31, column: 38, scope: !967)
!979 = !DILocation(line: 35, column: 15, scope: !967)
!980 = !DILocation(line: 36, column: 15, scope: !967)
!981 = !DILocation(line: 37, column: 15, scope: !967)
!982 = !DILocation(line: 38, column: 15, scope: !967)
!983 = !DILocation(line: 39, column: 14, scope: !967)
!984 = !DILocation(line: 39, column: 13, scope: !967)
!985 = !DILocation(line: 39, column: 26, scope: !967)
!986 = !DILocation(line: 39, column: 25, scope: !967)
!987 = !DILocation(line: 34, column: 2, scope: !967)
!988 = !{i64 1931043}
!989 = !DILocation(line: 41, column: 1, scope: !967)
!990 = distinct !DISubprogram(name: "vmware_get_tsc_khz", scope: !3, file: !3, line: 120, type: !991, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!991 = !DISubroutineType(types: !992)
!992 = !{!233}
!993 = !DILocation(line: 122, column: 9, scope: !990)
!994 = !DILocation(line: 122, column: 2, scope: !990)
!995 = distinct !DISubprogram(name: "vmware_paravirt_ops_setup", scope: !3, file: !3, line: 329, type: !319, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !996)
!996 = !{!997}
!997 = !DILocalVariable(name: "__F", scope: !998, file: !3, line: 344, type: !1001)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 344, column: 3)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 342, column: 40)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 342, column: 6)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!241, !37}
!1004 = !DILocation(line: 331, column: 15, scope: !995)
!1005 = !DILocation(line: 332, column: 22, scope: !995)
!1006 = !DILocation(line: 334, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !995, file: !3, line: 334, column: 6)
!1008 = !DILocation(line: 334, column: 21, scope: !1007)
!1009 = !DILocation(line: 334, column: 6, scope: !995)
!1010 = !DILocation(line: 335, column: 3, scope: !1007)
!1011 = !DILocation(line: 337, column: 2, scope: !995)
!1012 = !DILocation(line: 339, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !995, file: !3, line: 339, column: 6)
!1014 = !DILocation(line: 339, column: 6, scope: !995)
!1015 = !DILocation(line: 340, column: 3, scope: !1013)
!1016 = !DILocation(line: 342, column: 6, scope: !1000)
!1017 = !DILocation(line: 342, column: 6, scope: !995)
!1018 = !DILocation(line: 343, column: 19, scope: !999)
!1019 = !DILocation(line: 344, column: 3, scope: !998)
!1020 = !DILocation(line: 344, column: 3, scope: !999)
!1021 = !DILocation(line: 347, column: 3, scope: !999)
!1022 = !DILocation(line: 350, column: 32, scope: !999)
!1023 = !DILocation(line: 352, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !999, file: !3, line: 352, column: 7)
!1025 = !DILocation(line: 355, column: 37, scope: !1024)
!1026 = !DILocation(line: 352, column: 7, scope: !999)
!1027 = !DILocation(line: 356, column: 4, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 356, column: 4)
!1029 = !DILocation(line: 356, column: 4, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 356, column: 4)
!1031 = !DILocation(line: 356, column: 4, scope: !1024)
!1032 = !DILocation(line: 360, column: 2, scope: !999)
!1033 = !DILocation(line: 361, column: 1, scope: !995)
!1034 = distinct !DISubprogram(name: "vmware_set_capabilities", scope: !3, file: !3, line: 378, type: !319, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1035 = !DILocation(line: 380, column: 2, scope: !1034)
!1036 = !DILocation(line: 380, column: 2, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 380, column: 2)
!1038 = !DILocation(line: 381, column: 2, scope: !1034)
!1039 = !DILocation(line: 381, column: 2, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 381, column: 2)
!1041 = !DILocation(line: 382, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 382, column: 6)
!1043 = !DILocation(line: 382, column: 6, scope: !1034)
!1044 = !DILocation(line: 383, column: 3, scope: !1042)
!1045 = !DILocation(line: 383, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 383, column: 3)
!1047 = !DILocation(line: 384, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 384, column: 6)
!1049 = !DILocation(line: 384, column: 28, scope: !1048)
!1050 = !DILocation(line: 384, column: 6, scope: !1034)
!1051 = !DILocation(line: 385, column: 3, scope: !1048)
!1052 = !DILocation(line: 385, column: 3, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 385, column: 3)
!1054 = !DILocation(line: 386, column: 11, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 386, column: 11)
!1056 = !DILocation(line: 386, column: 33, scope: !1055)
!1057 = !DILocation(line: 386, column: 11, scope: !1048)
!1058 = !DILocation(line: 387, column: 3, scope: !1055)
!1059 = !DILocation(line: 387, column: 3, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 387, column: 3)
!1061 = !DILocation(line: 388, column: 1, scope: !1034)
!1062 = distinct !DISubprogram(name: "vmware_cyc2ns_setup", scope: !3, file: !3, line: 156, type: !319, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1063)
!1063 = !{!1064, !1066}
!1064 = !DILocalVariable(name: "d", scope: !1062, file: !3, line: 158, type: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!1066 = !DILocalVariable(name: "tsc_now", scope: !1062, file: !3, line: 159, type: !243)
!1067 = !DILocation(line: 158, column: 2, scope: !1062)
!1068 = !DILocation(line: 158, column: 22, scope: !1062)
!1069 = !DILocation(line: 159, column: 2, scope: !1062)
!1070 = !DILocation(line: 159, column: 21, scope: !1062)
!1071 = !DILocation(line: 159, column: 31, scope: !1062)
!1072 = !DILocation(line: 161, column: 26, scope: !1062)
!1073 = !DILocation(line: 161, column: 29, scope: !1062)
!1074 = !DILocation(line: 161, column: 42, scope: !1062)
!1075 = !DILocation(line: 161, column: 45, scope: !1062)
!1076 = !DILocation(line: 162, column: 11, scope: !1062)
!1077 = !DILocation(line: 161, column: 2, scope: !1062)
!1078 = !DILocation(line: 163, column: 37, scope: !1062)
!1079 = !DILocation(line: 163, column: 46, scope: !1062)
!1080 = !DILocation(line: 163, column: 49, scope: !1062)
!1081 = !DILocation(line: 164, column: 9, scope: !1062)
!1082 = !DILocation(line: 164, column: 12, scope: !1062)
!1083 = !DILocation(line: 163, column: 21, scope: !1062)
!1084 = !DILocation(line: 163, column: 2, scope: !1062)
!1085 = !DILocation(line: 163, column: 5, scope: !1062)
!1086 = !DILocation(line: 163, column: 19, scope: !1062)
!1087 = !DILocation(line: 166, column: 2, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 166, column: 2)
!1089 = !DILocation(line: 166, column: 2, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 166, column: 2)
!1091 = !DILocation(line: 167, column: 1, scope: !1062)
!1092 = !DISubprogram(name: "paravirt_set_sched_clock", scope: !1093, file: !1093, line: 27, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03130265545439d5fc6fd2b961c93410")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!241}
!1099 = distinct !DISubprogram(name: "vmware_sched_clock", scope: !3, file: !3, line: 146, type: !1097, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1100)
!1100 = !{!1101}
!1101 = !DILocalVariable(name: "ns", scope: !1099, file: !3, line: 148, type: !243)
!1102 = !DILocation(line: 148, column: 2, scope: !1099)
!1103 = !DILocation(line: 148, column: 21, scope: !1099)
!1104 = !DILocation(line: 150, column: 23, scope: !1099)
!1105 = !DILocation(line: 150, column: 46, scope: !1099)
!1106 = !DILocation(line: 151, column: 23, scope: !1099)
!1107 = !DILocation(line: 150, column: 7, scope: !1099)
!1108 = !DILocation(line: 150, column: 5, scope: !1099)
!1109 = !DILocation(line: 152, column: 22, scope: !1099)
!1110 = !DILocation(line: 152, column: 5, scope: !1099)
!1111 = !DILocation(line: 153, column: 9, scope: !1099)
!1112 = !DILocation(line: 154, column: 1, scope: !1099)
!1113 = !DILocation(line: 153, column: 2, scope: !1099)
!1114 = distinct !DISubprogram(name: "vmware_is_stealclock_available", scope: !3, file: !3, line: 202, type: !324, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1115 = !DILocation(line: 204, column: 9, scope: !1114)
!1116 = !DILocation(line: 204, column: 32, scope: !1114)
!1117 = !DILocation(line: 204, column: 2, scope: !1114)
!1118 = distinct !DISubprogram(name: "vmware_steal_clock", scope: !3, file: !3, line: 218, type: !1119, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!240, !37}
!1121 = !{!1122, !1123, !1124, !1127, !1129}
!1122 = !DILocalVariable(name: "cpu", arg: 1, scope: !1118, file: !3, line: 218, type: !37)
!1123 = !DILocalVariable(name: "steal", scope: !1118, file: !3, line: 220, type: !245)
!1124 = !DILocalVariable(name: "__vpp_verify", scope: !1125, file: !3, line: 220, type: !875)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 220, column: 37)
!1126 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 220, column: 37)
!1127 = !DILocalVariable(name: "__ptr", scope: !1128, file: !3, line: 220, type: !233)
!1128 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 220, column: 37)
!1129 = !DILocalVariable(name: "clock", scope: !1118, file: !3, line: 221, type: !240)
!1130 = !DILocation(line: 218, column: 40, scope: !1118)
!1131 = !DILocation(line: 220, column: 2, scope: !1118)
!1132 = !DILocation(line: 220, column: 28, scope: !1118)
!1133 = !DILocation(line: 220, column: 37, scope: !1126)
!1134 = !DILocation(line: 220, column: 37, scope: !1125)
!1135 = !DILocation(line: 220, column: 37, scope: !1128)
!1136 = !DILocation(line: 221, column: 2, scope: !1118)
!1137 = !DILocation(line: 221, column: 11, scope: !1118)
!1138 = !DILocation(line: 224, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 224, column: 11)
!1140 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 223, column: 6)
!1141 = !DILocation(line: 224, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 224, column: 11)
!1143 = !DILocation(line: 224, column: 9, scope: !1140)
!1144 = !DILocation(line: 241, column: 25, scope: !1118)
!1145 = !DILocation(line: 241, column: 46, scope: !1118)
!1146 = !DILocation(line: 242, column: 23, scope: !1118)
!1147 = !DILocation(line: 241, column: 9, scope: !1118)
!1148 = !DILocation(line: 243, column: 1, scope: !1118)
!1149 = !DILocation(line: 241, column: 2, scope: !1118)
!1150 = !DISubprogram(name: "__static_call_update", scope: !1151, file: !1151, line: 181, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !1154, !231, !231}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !1156, line: 61, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1155, file: !1156, line: 62, baseType: !231, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1155, file: !1156, line: 63, baseType: !1160, size: 64, offset: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1155, file: !1156, line: 63, size: 64, elements: !1161)
!1161 = !{!1162, !1163, !2160}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1160, file: !1156, line: 65, baseType: !233, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !1160, file: !1156, line: 66, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !1151, line: 169, size: 192, elements: !1166)
!1166 = !{!1167, !1168, !2159}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1165, file: !1151, line: 170, baseType: !1164, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1165, file: !1151, line: 171, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !23, line: 402, size: 9216, align: 512, elements: !1171)
!1171 = !{!1172, !1173, !1179, !1181, !1827, !1853, !1854, !1855, !1856, !1860, !1863, !1864, !1865, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1932, !1934, !1952, !1969, !1970, !1971, !1972, !1981, !2004, !2005, !2008, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2022, !2023, !2129, !2130, !2131, !2132, !2134, !2138, !2139, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2155, !2156, !2157, !2158}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1170, file: !23, line: 403, baseType: !22, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1170, file: !23, line: 406, baseType: !1174, size: 128, offset: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !235, line: 190, size: 128, elements: !1175)
!1175 = !{!1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !235, line: 191, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1174, file: !235, line: 191, baseType: !1177, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1170, file: !23, line: 409, baseType: !1180, size: 448, offset: 192)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 448, elements: !408)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1170, file: !23, line: 417, baseType: !1182, size: 768, offset: 640)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !23, line: 45, size: 768, elements: !1183)
!1183 = !{!1184, !1810, !1811, !1812, !1815}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1182, file: !23, line: 46, baseType: !1185, size: 512)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1186, line: 64, size: 512, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1187 = !{!1188, !1189, !1190, !1192, !1266, !1680, !1795, !1805, !1806, !1807, !1808, !1809}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1185, file: !1186, line: 65, baseType: !287, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1185, file: !1186, line: 66, baseType: !1174, size: 128, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1185, file: !1186, line: 67, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1185, file: !1186, line: 68, baseType: !1193, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1186, line: 168, size: 768, elements: !1195)
!1195 = !{!1196, !1197, !1228, !1229}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1194, file: !1186, line: 169, baseType: !1174, size: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1194, file: !1186, line: 170, baseType: !1198, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1199, line: 29, baseType: !1200)
!1199 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1199, line: 17, size: 32, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1199, line: 18, baseType: !1203, size: 32)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1200, file: !1199, line: 18, size: 32, elements: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1203, file: !1199, line: 19, baseType: !1206, size: 32)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1207, line: 14, size: 32, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1206, file: !1207, line: 15, baseType: !1210, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1211, line: 44, baseType: !1212)
!1211 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1211, line: 14, size: 32, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1211, line: 15, baseType: !1215, size: 32)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1211, line: 15, size: 32, elements: !1216)
!1216 = !{!1217, !1218, !1223}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1215, file: !1211, line: 16, baseType: !803, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1211, line: 24, baseType: !1219, size: 16)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !1211, line: 24, size: 16, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1219, file: !1211, line: 25, baseType: !351, size: 8)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1219, file: !1211, line: 26, baseType: !351, size: 8, offset: 8)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1211, line: 28, baseType: !1224, size: 32)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !1211, line: 28, size: 32, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1224, file: !1211, line: 29, baseType: !426, size: 16)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1224, file: !1211, line: 30, baseType: !426, size: 16, offset: 16)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1194, file: !1186, line: 171, baseType: !1185, size: 512, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1194, file: !1186, line: 172, baseType: !1230, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1186, line: 133, size: 192, elements: !1233)
!1233 = !{!1234, !1241, !1246}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1232, file: !1186, line: 134, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!37, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1232, file: !1186, line: 135, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!287, !1239}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1232, file: !1186, line: 136, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!37, !1239, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1186, line: 125, size: 20736, elements: !1253)
!1253 = !{!1254, !1256, !1260, !1261, !1265}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1252, file: !1186, line: 126, baseType: !1255, size: 192)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 192, elements: !633)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1252, file: !1186, line: 127, baseType: !1257, size: 4096, offset: 192)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 4096, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1252, file: !1186, line: 128, baseType: !37, size: 32, offset: 4288)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1252, file: !1186, line: 129, baseType: !1262, size: 16384, offset: 4320)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 16384, elements: !1263)
!1263 = !{!1264}
!1264 = !DISubrange(count: 2048)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1252, file: !1186, line: 130, baseType: !37, size: 32, offset: 20704)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1185, file: !1186, line: 69, baseType: !1267, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1186, line: 116, size: 384, elements: !1270)
!1270 = !{!1271, !1275, !1299, !1629, !1657, !1661}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1269, file: !1186, line: 117, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !1191}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1269, file: !1186, line: 118, baseType: !1276, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1279, line: 254, size: 128, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1280 = !{!1281, !1294}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1278, file: !1279, line: 255, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!1285, !1191, !1288, !293}
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !235, line: 66, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !878, line: 73, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !878, line: 15, baseType: !279)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1279, line: 30, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1289, file: !1279, line: 31, baseType: !287, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1289, file: !1279, line: 32, baseType: !1293, size: 16, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !235, line: 24, baseType: !428)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1278, file: !1279, line: 256, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1285, !1191, !1288, !287, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !235, line: 61, baseType: !877)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1269, file: !1186, line: 119, baseType: !1300, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1279, line: 84, size: 320, elements: !1304)
!1304 = !{!1305, !1306, !1310, !1625, !1627}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1303, file: !1279, line: 85, baseType: !287, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1303, file: !1279, line: 86, baseType: !1307, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!1293, !1191, !1288, !37}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1303, file: !1279, line: 88, baseType: !1311, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1293, !1191, !1314, !37}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1279, line: 175, size: 512, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1327, !1337, !1338}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1315, file: !1279, line: 176, baseType: !1289, size: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1315, file: !1279, line: 177, baseType: !1298, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1315, file: !1279, line: 178, baseType: !231, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1315, file: !1279, line: 179, baseType: !1321, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1326, line: 32, flags: DIFlagFwdDecl)
!1326 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1315, file: !1279, line: 180, baseType: !1328, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1285, !1331, !1191, !1314, !293, !1334, !1298}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1333, line: 537, flags: DIFlagFwdDecl)
!1333 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !235, line: 52, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !878, line: 88, baseType: !1336)
!1336 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1315, file: !1279, line: 182, baseType: !1328, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1315, file: !1279, line: 184, baseType: !1339, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!37, !1331, !1191, !1314, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1326, line: 625, size: 1344, elements: !1344)
!1344 = !{!1345, !1362, !1576, !1582, !1589, !1590, !1595, !1596, !1608, !1609, !1612, !1616, !1617, !1618, !1619, !1620, !1623}
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1326, line: 628, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !1326, line: 628, size: 128, elements: !1347)
!1347 = !{!1348, !1353}
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1326, line: 629, baseType: !1349, size: 128)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1346, file: !1326, line: 629, size: 128, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1349, file: !1326, line: 631, baseType: !233, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1349, file: !1326, line: 632, baseType: !233, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1346, file: !1326, line: 635, baseType: !1354, size: 128, align: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !235, line: 232, size: 128, align: 64, elements: !1355)
!1355 = !{!1356, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1354, file: !235, line: 233, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1354, file: !235, line: 234, baseType: !1359, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1357}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1343, file: !1326, line: 639, baseType: !1363, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1326, line: 733, size: 10240, elements: !1365)
!1365 = !{!1366, !1572}
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !1326, line: 734, baseType: !1367, size: 10240)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1364, file: !1326, line: 734, size: 10240, elements: !1368)
!1368 = !{!1369, !1373, !1386, !1390, !1391, !1392, !1393, !1394, !1395, !1403, !1404, !1405, !1411, !1412, !1421, !1422, !1423, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1470, !1482, !1485, !1538, !1539, !1540, !1543, !1546, !1547, !1550, !1551, !1552, !1559, !1560}
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1326, line: 739, baseType: !1370, size: 512, align: 512)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1326, line: 739, size: 512, align: 512, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1370, file: !1326, line: 747, baseType: !803, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1367, file: !1326, line: 750, baseType: !1374, size: 128, offset: 512)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1375, line: 218, size: 128, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1376 = !{!1377, !1384, !1385}
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1375, line: 219, baseType: !1378, size: 32)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1375, line: 219, size: 32, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1378, file: !1375, line: 220, baseType: !1198, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1378, file: !1375, line: 221, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1375, line: 197, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1375, line: 197, elements: !616)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1374, file: !1375, line: 223, baseType: !7, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1374, file: !1375, line: 224, baseType: !231, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1367, file: !1326, line: 752, baseType: !1387, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!233, !1331, !233, !233, !233, !233}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1367, file: !1326, line: 756, baseType: !233, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1367, file: !1326, line: 757, baseType: !233, size: 64, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1367, file: !1326, line: 760, baseType: !233, size: 64, offset: 832)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1367, file: !1326, line: 761, baseType: !233, size: 64, offset: 896)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1367, file: !1326, line: 763, baseType: !233, size: 64, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1367, file: !1326, line: 764, baseType: !1396, size: 64, offset: 1024)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1333, line: 299, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 299, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1398, file: !1333, line: 299, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1402, line: 18, baseType: !233)
!1402 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1367, file: !1326, line: 773, baseType: !803, size: 32, offset: 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1367, file: !1326, line: 785, baseType: !803, size: 32, offset: 1120)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1367, file: !1326, line: 795, baseType: !1406, size: 64, offset: 1152)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1326, line: 726, size: 128, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1407, file: !1326, line: 727, baseType: !241, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1407, file: !1326, line: 728, baseType: !37, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1367, file: !1326, line: 801, baseType: !233, size: 64, offset: 1216)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1367, file: !1326, line: 804, baseType: !1413, size: 64, offset: 1280)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1414, line: 13, baseType: !1415)
!1414 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !235, line: 181, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 179, size: 64, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1416, file: !235, line: 180, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !237, line: 22, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !239, line: 30, baseType: !1336)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1367, file: !1326, line: 806, baseType: !37, size: 32, offset: 1344)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1367, file: !1326, line: 808, baseType: !1198, size: 32, offset: 1376)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1367, file: !1326, line: 823, baseType: !1424, size: 320, offset: 1408)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1425, line: 48, size: 320, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1426 = !{!1427, !1428, !1429, !1434, !1436}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1424, file: !1425, line: 49, baseType: !1413, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1424, file: !1425, line: 55, baseType: !1413, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1424, file: !1425, line: 57, baseType: !1430, size: 32, offset: 128)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1431, line: 15, size: 32, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1430, file: !1431, line: 20, baseType: !803, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1424, file: !1425, line: 59, baseType: !1435, size: 32, offset: 160)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !1207, line: 23, baseType: !1206)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1424, file: !1425, line: 60, baseType: !1174, size: 128, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1367, file: !1326, line: 825, baseType: !1174, size: 128, offset: 1728)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1367, file: !1326, line: 845, baseType: !37, size: 32, offset: 1856)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1367, file: !1326, line: 849, baseType: !233, size: 64, offset: 1920)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1367, file: !1326, line: 850, baseType: !233, size: 64, offset: 1984)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1367, file: !1326, line: 852, baseType: !233, size: 64, offset: 2048)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1367, file: !1326, line: 853, baseType: !233, size: 64, offset: 2112)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1367, file: !1326, line: 854, baseType: !1415, size: 64, offset: 2176)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1367, file: !1326, line: 855, baseType: !233, size: 64, offset: 2240)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1367, file: !1326, line: 856, baseType: !233, size: 64, offset: 2304)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1367, file: !1326, line: 857, baseType: !233, size: 64, offset: 2368)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1367, file: !1326, line: 858, baseType: !233, size: 64, offset: 2432)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1367, file: !1326, line: 865, baseType: !1449, size: 32, offset: 2496)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1450, line: 69, baseType: !1451)
!1450 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1450, line: 64, size: 32, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1451, file: !1450, line: 65, baseType: !7, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1367, file: !1326, line: 867, baseType: !1198, size: 32, offset: 2528)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1367, file: !1326, line: 869, baseType: !233, size: 64, offset: 2560)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1367, file: !1326, line: 869, baseType: !233, size: 64, offset: 2624)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1367, file: !1326, line: 869, baseType: !233, size: 64, offset: 2688)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1367, file: !1326, line: 869, baseType: !233, size: 64, offset: 2752)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1367, file: !1326, line: 870, baseType: !233, size: 64, offset: 2816)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1367, file: !1326, line: 870, baseType: !233, size: 64, offset: 2880)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1367, file: !1326, line: 870, baseType: !233, size: 64, offset: 2944)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1367, file: !1326, line: 871, baseType: !233, size: 64, offset: 3008)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1367, file: !1326, line: 871, baseType: !233, size: 64, offset: 3072)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1367, file: !1326, line: 871, baseType: !233, size: 64, offset: 3136)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1367, file: !1326, line: 871, baseType: !233, size: 64, offset: 3200)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1367, file: !1326, line: 873, baseType: !1467, size: 3328, offset: 3264)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 3328, elements: !1468)
!1468 = !{!1469}
!1469 = !DISubrange(count: 52)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1367, file: !1326, line: 875, baseType: !1471, size: 1280, offset: 6592)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 1280, elements: !1480)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1473, line: 22, size: 320, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1474 = !{!1475, !1476, !1477, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !1473, line: 23, baseType: !1435, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1472, file: !1473, line: 24, baseType: !1419, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1472, file: !1473, line: 26, baseType: !1174, size: 128, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1472, file: !1473, line: 28, baseType: !1479, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!1480 = !{!1481}
!1481 = !DISubrange(count: 4)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1367, file: !1326, line: 877, baseType: !1483, size: 64, offset: 7872)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1326, line: 877, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1367, file: !1326, line: 880, baseType: !1486, size: 1088, offset: 7936)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1487, line: 72, baseType: !1488)
!1487 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1487, line: 23, size: 1088, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1497, !1498, !1506, !1507, !1532, !1533, !1534}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1488, file: !1487, line: 28, baseType: !241, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1488, file: !1487, line: 38, baseType: !1415, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1488, file: !1487, line: 40, baseType: !233, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1488, file: !1487, line: 43, baseType: !1424, size: 320, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1488, file: !1487, line: 44, baseType: !1495, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1487, line: 44, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1488, file: !1487, line: 48, baseType: !233, size: 64, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !1487, line: 59, baseType: !1499, size: 256, offset: 640)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1500, line: 66, size: 256, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1501 = !{!1502, !1503, !1504, !1505}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1499, file: !1500, line: 67, baseType: !1413, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1499, file: !1500, line: 68, baseType: !1435, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1499, file: !1500, line: 70, baseType: !1430, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1499, file: !1500, line: 72, baseType: !1174, size: 128, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1488, file: !1487, line: 60, baseType: !231, size: 64, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1488, file: !1487, line: 61, baseType: !1508, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1511, line: 13, size: 1216, elements: !1512)
!1511 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1510, file: !1511, line: 14, baseType: !231, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1510, file: !1511, line: 15, baseType: !233, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1510, file: !1511, line: 17, baseType: !233, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1510, file: !1511, line: 17, baseType: !233, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1510, file: !1511, line: 18, baseType: !233, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1510, file: !1511, line: 18, baseType: !233, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1510, file: !1511, line: 19, baseType: !875, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1510, file: !1511, line: 21, baseType: !279, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1510, file: !1511, line: 23, baseType: !279, size: 64, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1510, file: !1511, line: 24, baseType: !279, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1510, file: !1511, line: 25, baseType: !279, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1510, file: !1511, line: 26, baseType: !279, size: 64, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1510, file: !1511, line: 27, baseType: !279, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1510, file: !1511, line: 28, baseType: !279, size: 64, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1510, file: !1511, line: 29, baseType: !279, size: 64, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1510, file: !1511, line: 30, baseType: !279, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1510, file: !1511, line: 31, baseType: !279, size: 64, offset: 1024)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1510, file: !1511, line: 32, baseType: !279, size: 64, offset: 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1510, file: !1511, line: 33, baseType: !279, size: 64, offset: 1152)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1488, file: !1487, line: 63, baseType: !803, size: 32, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1488, file: !1487, line: 69, baseType: !426, size: 16, offset: 1056)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1488, file: !1487, line: 70, baseType: !1535, size: 16, offset: 1072)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !237, line: 18, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !239, line: 23, baseType: !1537)
!1537 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1367, file: !1326, line: 882, baseType: !233, size: 64, offset: 9024)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1367, file: !1326, line: 885, baseType: !1198, size: 32, offset: 9088)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1367, file: !1326, line: 886, baseType: !1541, size: 64, offset: 9152)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1326, line: 732, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1367, file: !1326, line: 901, baseType: !1544, size: 64, offset: 9216)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1326, line: 901, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1367, file: !1326, line: 904, baseType: !1331, size: 64, offset: 9280)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1367, file: !1326, line: 906, baseType: !1548, size: 64, offset: 9344)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1326, line: 906, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1367, file: !1326, line: 930, baseType: !803, size: 32, offset: 9408)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1367, file: !1326, line: 933, baseType: !803, size: 32, offset: 9440)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1367, file: !1326, line: 935, baseType: !1553, size: 64, offset: 9472)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1554, line: 103, size: 64, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1553, file: !1554, line: 104, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1554, line: 101, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1367, file: !1326, line: 940, baseType: !1413, size: 64, offset: 9536)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1367, file: !1326, line: 942, baseType: !1561, size: 256, offset: 9600)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1562, line: 98, size: 256, elements: !1563)
!1562 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1561, file: !1562, line: 99, baseType: !1413, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1561, file: !1562, line: 100, baseType: !1174, size: 128, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1561, file: !1562, line: 101, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1562, line: 21, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1364, file: !1326, line: 986, baseType: !1573, offset: 10240)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, elements: !1574)
!1574 = !{!1575}
!1575 = !DISubrange(count: -1)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1343, file: !1326, line: 640, baseType: !1577, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1333, line: 297, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1333, line: 297, size: 64, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1578, file: !1333, line: 297, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1402, line: 19, baseType: !233)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1326, line: 646, baseType: !1583, size: 64, offset: 256)
!1583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !1326, line: 646, size: 64, elements: !1584)
!1584 = !{!1585, !1588}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1583, file: !1326, line: 647, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1326, line: 542, baseType: !233)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1583, file: !1326, line: 648, baseType: !1587, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1343, file: !1326, line: 666, baseType: !37, size: 32, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1343, file: !1326, line: 667, baseType: !1591, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1326, line: 579, size: 320, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1592, file: !1326, line: 580, baseType: !1424, size: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1343, file: !1326, line: 670, baseType: !326, size: 8, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1343, file: !1326, line: 681, baseType: !1597, size: 256, offset: 512)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !1326, line: 678, size: 256, elements: !1598)
!1598 = !{!1599, !1607}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1597, file: !1326, line: 679, baseType: !1600, size: 192, align: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1601, line: 5, size: 192, align: 64, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1602 = !{!1603, !1604, !1606}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1600, file: !1601, line: 6, baseType: !233, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1600, file: !1601, line: 7, baseType: !1605, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1600, file: !1601, line: 8, baseType: !1605, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1597, file: !1326, line: 680, baseType: !233, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1343, file: !1326, line: 689, baseType: !1174, size: 128, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1343, file: !1326, line: 691, baseType: !1610, size: 64, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1326, line: 691, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1343, file: !1326, line: 694, baseType: !1613, size: 64, offset: 960)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1615)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1326, line: 694, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1343, file: !1326, line: 697, baseType: !233, size: 64, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1343, file: !1326, line: 699, baseType: !1331, size: 64, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1343, file: !1326, line: 700, baseType: !231, size: 64, offset: 1152)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1343, file: !1326, line: 711, baseType: !1413, size: 64, offset: 1216)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1343, file: !1326, line: 717, baseType: !1621, size: 64, offset: 1280)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1326, line: 717, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1343, file: !1326, line: 722, baseType: !1624, offset: 1344)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1326, line: 570, elements: !616)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1303, file: !1279, line: 90, baseType: !1626, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1303, file: !1279, line: 91, baseType: !1628, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1269, file: !1186, line: 120, baseType: !1630, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1633, !1239}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !30, line: 39, size: 384, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1643, !1649, !1653}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1635, file: !30, line: 40, baseType: !29, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1635, file: !30, line: 41, baseType: !323, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1635, file: !30, line: 42, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!231}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1635, file: !30, line: 43, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!875, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !30, line: 19, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1635, file: !30, line: 44, baseType: !1650, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!875}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1635, file: !30, line: 45, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !231}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1269, file: !1186, line: 121, baseType: !1658, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!875, !1239}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1269, file: !1186, line: 122, baseType: !1662, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1239, !1665, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1667, line: 23, baseType: !1668)
!1667 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1667, line: 21, size: 32, elements: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1668, file: !1667, line: 22, baseType: !1671, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !235, line: 37, baseType: !1672)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !878, line: 49, baseType: !7)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1667, line: 28, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1667, line: 26, size: 32, elements: !1676)
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1675, file: !1667, line: 27, baseType: !1678, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !235, line: 38, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !878, line: 50, baseType: !7)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1185, file: !1186, line: 70, baseType: !1681, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1683, line: 190, size: 1152, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1787, !1788, !1789, !1790, !1791, !1794}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1682, file: !1683, line: 191, baseType: !803, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1682, file: !1683, line: 192, baseType: !803, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1682, file: !1683, line: 202, baseType: !1681, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1682, file: !1683, line: 203, baseType: !287, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1682, file: !1683, line: 205, baseType: !1600, size: 192, align: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1682, file: !1683, line: 207, baseType: !875, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1682, file: !1683, line: 208, baseType: !7, size: 32, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 209, baseType: !1693, size: 256, offset: 512)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 209, size: 256, elements: !1694)
!1694 = !{!1695, !1707, !1711}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1693, file: !1683, line: 210, baseType: !1696, size: 256)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1683, line: 153, size: 256, elements: !1697)
!1697 = !{!1698, !1699, !1703, !1706}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1696, file: !1683, line: 154, baseType: !233, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1696, file: !1683, line: 156, baseType: !1700, size: 64, offset: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1601, line: 12, size: 64, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1700, file: !1601, line: 13, baseType: !1605, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1696, file: !1683, line: 162, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1683, line: 162, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1696, file: !1683, line: 167, baseType: !233, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1693, file: !1683, line: 211, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1683, line: 170, size: 64, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1708, file: !1683, line: 171, baseType: !1681, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1693, file: !1683, line: 212, baseType: !1712, size: 256)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1683, line: 174, size: 256, elements: !1713)
!1713 = !{!1714, !1782, !1785, !1786}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1712, file: !1683, line: 175, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1683, line: 271, size: 768, elements: !1718)
!1718 = !{!1719, !1742, !1746, !1750, !1755, !1759, !1763, !1767, !1768, !1769, !1770, !1778}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1717, file: !1683, line: 276, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!37, !1723}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1683, line: 251, size: 1216, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1724, file: !1683, line: 253, baseType: !1681, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1724, file: !1683, line: 254, baseType: !1331, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1724, file: !1683, line: 255, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1731, line: 66, flags: DIFlagFwdDecl)
!1731 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1724, file: !1683, line: 256, baseType: !231, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1724, file: !1683, line: 259, baseType: !1499, size: 256, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1724, file: !1683, line: 260, baseType: !1499, size: 256, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1724, file: !1683, line: 261, baseType: !37, size: 32, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1724, file: !1683, line: 262, baseType: !1174, size: 128, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1724, file: !1683, line: 263, baseType: !293, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1724, file: !1683, line: 265, baseType: !1298, size: 64, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1724, file: !1683, line: 266, baseType: !326, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1724, file: !1683, line: 267, baseType: !326, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1724, file: !1683, line: 268, baseType: !1613, size: 64, offset: 1152)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1717, file: !1683, line: 277, baseType: !1743, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !1723}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1717, file: !1683, line: 290, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!37, !1729, !231}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1717, file: !1683, line: 292, baseType: !1751, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!231, !1729, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1717, file: !1683, line: 293, baseType: !1756, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!231, !1729, !231, !1754}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1717, file: !1683, line: 294, baseType: !1760, size: 64, offset: 320)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1729, !231}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1717, file: !1683, line: 296, baseType: !1764, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1285, !1723, !293, !1298, !1334}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1717, file: !1683, line: 306, baseType: !1298, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1717, file: !1683, line: 313, baseType: !326, size: 8, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1717, file: !1683, line: 314, baseType: !1764, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1717, file: !1683, line: 317, baseType: !1771, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1774, !1723, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1775, line: 59, baseType: !7)
!1775 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1683, line: 31, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1717, file: !1683, line: 320, baseType: !1779, size: 64, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!37, !1723, !1342}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1712, file: !1683, line: 176, baseType: !1783, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1683, line: 35, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1712, file: !1683, line: 177, baseType: !1334, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1712, file: !1683, line: 178, baseType: !1681, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1682, file: !1683, line: 215, baseType: !231, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1682, file: !1683, line: 221, baseType: !241, size: 64, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1682, file: !1683, line: 223, baseType: !428, size: 16, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1682, file: !1683, line: 224, baseType: !1293, size: 16, offset: 912)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1682, file: !1683, line: 225, baseType: !1792, size: 64, offset: 960)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1683, line: 36, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1682, file: !1683, line: 227, baseType: !1354, size: 128, align: 64, offset: 1024)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1185, file: !1186, line: 71, baseType: !1796, size: 32, offset: 448)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1797, line: 19, size: 32, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1796, file: !1797, line: 20, baseType: !1800, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1801, line: 113, baseType: !1802)
!1801 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1801, line: 111, size: 32, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1802, file: !1801, line: 112, baseType: !803, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1185, file: !1186, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1185, file: !1186, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1185, file: !1186, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1185, file: !1186, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1185, file: !1186, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1182, file: !23, line: 47, baseType: !1169, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1182, file: !23, line: 48, baseType: !1191, size: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1182, file: !23, line: 49, baseType: !1813, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !23, line: 49, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1182, file: !23, line: 50, baseType: !1816, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1818, line: 26, size: 256, elements: !1819)
!1818 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1817, file: !1818, line: 27, baseType: !7, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1817, file: !1818, line: 28, baseType: !1822, size: 192, offset: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1823, line: 43, size: 192, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !1823, line: 44, baseType: !1435, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1822, file: !1823, line: 45, baseType: !1174, size: 128, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1170, file: !23, line: 418, baseType: !1828, size: 64, offset: 1408)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !23, line: 53, size: 448, elements: !1830)
!1830 = !{!1831, !1832, !1837, !1841, !1845, !1849}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1829, file: !23, line: 54, baseType: !1289, size: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1829, file: !23, line: 55, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1285, !1828, !1836, !293}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1829, file: !23, line: 57, baseType: !1838, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!1285, !1828, !1836, !287, !1298}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1829, file: !23, line: 59, baseType: !1842, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !1169, !287}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1829, file: !23, line: 60, baseType: !1846, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!37, !1169}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1829, file: !23, line: 61, baseType: !1850, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1169}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1170, file: !23, line: 419, baseType: !287, size: 64, offset: 1472)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1170, file: !23, line: 420, baseType: !287, size: 64, offset: 1536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1170, file: !23, line: 421, baseType: !1191, size: 64, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1170, file: !23, line: 424, baseType: !1857, size: 64, offset: 1664)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !23, line: 424, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1170, file: !23, line: 425, baseType: !1861, size: 64, offset: 1728)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1170, file: !23, line: 426, baseType: !7, size: 32, offset: 1792)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1170, file: !23, line: 435, baseType: !1499, size: 256, offset: 1856)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1170, file: !23, line: 437, baseType: !1866, size: 64, offset: 2112)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1868, line: 69, size: 320, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1869 = !{!1870, !1871, !1872, !1889, !1891, !1895, !1896}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1867, file: !1868, line: 70, baseType: !287, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1867, file: !1868, line: 71, baseType: !1169, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1867, file: !1868, line: 72, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1868, line: 47, size: 256, elements: !1876)
!1876 = !{!1877, !1878, !1884, !1888}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1868, line: 49, baseType: !7, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1875, file: !1868, line: 51, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!37, !287, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1867)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1875, file: !1868, line: 53, baseType: !1885, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!37, !293, !1882}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1875, file: !1868, line: 55, baseType: !1654, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1867, file: !1868, line: 73, baseType: !1890, size: 16, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1867, file: !1868, line: 74, baseType: !1892, size: 8, offset: 208)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !237, line: 16, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !239, line: 20, baseType: !1894)
!1894 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !1868, line: 75, baseType: !351, size: 8, offset: 216)
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !1868, line: 76, baseType: !1897, size: 64, offset: 256)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !1868, line: 76, size: 64, elements: !1898)
!1898 = !{!1899, !1900, !1907}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1897, file: !1868, line: 77, baseType: !231, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1897, file: !1868, line: 78, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1868, line: 86, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1903, file: !1868, line: 87, baseType: !7, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1903, file: !1868, line: 88, baseType: !293, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1897, file: !1868, line: 79, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1868, line: 92, size: 256, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1910, file: !1868, line: 94, baseType: !7, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1910, file: !1868, line: 95, baseType: !7, size: 32, offset: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1910, file: !1868, line: 96, baseType: !848, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1910, file: !1868, line: 97, baseType: !1873, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1910, file: !1868, line: 98, baseType: !231, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1170, file: !23, line: 438, baseType: !7, size: 32, offset: 2176)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1170, file: !23, line: 441, baseType: !7, size: 32, offset: 2208)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1170, file: !23, line: 442, baseType: !1857, size: 64, offset: 2240)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1170, file: !23, line: 443, baseType: !1861, size: 64, offset: 2304)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1170, file: !23, line: 444, baseType: !326, size: 8, offset: 2368)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1170, file: !23, line: 451, baseType: !326, size: 8, offset: 2376)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1170, file: !23, line: 454, baseType: !7, size: 32, offset: 2400)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1170, file: !23, line: 455, baseType: !1925, size: 64, offset: 2432)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1927, line: 23, size: 96, elements: !1928)
!1927 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1928 = !{!1929, !1930, !1931}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1926, file: !1927, line: 24, baseType: !37, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1926, file: !1927, line: 24, baseType: !37, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1926, file: !1927, line: 24, baseType: !37, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1170, file: !23, line: 458, baseType: !1933, size: 64, offset: 2496)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1170, file: !23, line: 460, baseType: !1935, size: 4032, align: 512, offset: 2560)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1936, size: 4032, elements: !259)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !23, line: 362, size: 576, elements: !1937)
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1936, file: !23, line: 363, baseType: !231, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1936, file: !23, line: 364, baseType: !7, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1936, file: !23, line: 367, baseType: !1941, size: 448, offset: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !23, line: 319, size: 448, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1941, file: !23, line: 320, baseType: !1169, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1941, file: !23, line: 321, baseType: !1945, size: 384, offset: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1946, line: 40, size: 384, elements: !1947)
!1946 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1947 = !{!1948}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1945, file: !1946, line: 41, baseType: !1949, size: 384, align: 64)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1600, size: 384, align: 64, elements: !1950)
!1950 = !{!1951}
!1951 = !DISubrange(count: 2)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1170, file: !23, line: 463, baseType: !1953, size: 192, offset: 6592)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1954, line: 8, size: 192, elements: !1955)
!1954 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1953, file: !1954, line: 10, baseType: !7, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1953, file: !1954, line: 11, baseType: !273, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1953, file: !1954, line: 12, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1961, line: 59, size: 48, elements: !1962)
!1961 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1960, file: !1961, line: 60, baseType: !1535, size: 16)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1960, file: !1961, line: 61, baseType: !1535, size: 16, offset: 16)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1960, file: !1961, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1960, file: !1961, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1960, file: !1961, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1960, file: !1961, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1170, file: !23, line: 465, baseType: !233, size: 64, offset: 6784)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1170, file: !23, line: 469, baseType: !7, size: 32, offset: 6848)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1170, file: !23, line: 470, baseType: !1174, size: 128, offset: 6912)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1170, file: !23, line: 471, baseType: !1973, size: 64, offset: 7040)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1975, line: 33, size: 96, elements: !1976)
!1975 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1976 = !{!1977, !1978, !1979, !1980}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1974, file: !1975, line: 37, baseType: !37, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1974, file: !1975, line: 43, baseType: !37, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1974, file: !1975, line: 45, baseType: !428, size: 16, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !1975, line: 47, baseType: !428, size: 16, offset: 80)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1170, file: !23, line: 476, baseType: !1982, size: 64, offset: 7104)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !23, line: 378, size: 256, elements: !1984)
!1984 = !{!1985, !2001, !2002, !2003}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1983, file: !23, line: 379, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1988, line: 204, baseType: !1989)
!1988 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1988, line: 197, size: 192, elements: !1990)
!1990 = !{!1991, !1993, !1994, !1995, !1997, !1999}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1989, file: !1988, line: 198, baseType: !1992, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1988, line: 21, baseType: !238)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1989, file: !1988, line: 199, baseType: !353, size: 8, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1989, file: !1988, line: 200, baseType: !353, size: 8, offset: 40)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1989, file: !1988, line: 201, baseType: !1996, size: 16, offset: 48)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1988, line: 17, baseType: !427)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1989, file: !1988, line: 202, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1988, line: 16, baseType: !242)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1989, file: !1988, line: 203, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1988, line: 22, baseType: !242)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1983, file: !23, line: 380, baseType: !7, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1983, file: !23, line: 381, baseType: !293, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1983, file: !23, line: 382, baseType: !293, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1170, file: !23, line: 477, baseType: !1983, size: 256, offset: 7168)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1170, file: !23, line: 480, baseType: !2006, size: 64, offset: 7424)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !23, line: 480, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1170, file: !23, line: 483, baseType: !2009, size: 64, offset: 7488)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !23, line: 483, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1170, file: !23, line: 488, baseType: !293, size: 64, offset: 7552)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1170, file: !23, line: 492, baseType: !231, size: 64, offset: 7616)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1170, file: !23, line: 493, baseType: !7, size: 32, offset: 7680)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1170, file: !23, line: 495, baseType: !231, size: 64, offset: 7744)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1170, file: !23, line: 496, baseType: !7, size: 32, offset: 7808)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1170, file: !23, line: 499, baseType: !7, size: 32, offset: 7840)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1170, file: !23, line: 500, baseType: !2018, size: 64, offset: 7872)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2020, line: 45, baseType: !2021)
!2020 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1170, file: !23, line: 503, baseType: !7, size: 32, offset: 7936)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1170, file: !23, line: 504, baseType: !2024, size: 64, offset: 8000)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2027, line: 96, size: 192, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2028 = !{!2029, !2030, !2090, !2093}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2026, file: !2027, line: 97, baseType: !7, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2026, file: !2027, line: 98, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2027, line: 24, size: 3072, elements: !2033)
!2033 = !{!2034, !2036, !2037, !2038, !2039, !2053, !2054, !2055, !2056, !2074, !2075, !2076, !2087, !2088, !2089}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2032, file: !2027, line: 26, baseType: !2035, size: 128)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1413, size: 128, elements: !1950)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2032, file: !2027, line: 27, baseType: !2035, size: 128, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2032, file: !2027, line: 28, baseType: !37, size: 32, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2032, file: !2027, line: 31, baseType: !1198, size: 32, align: 512, offset: 512)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2032, file: !2027, line: 32, baseType: !2040, size: 960, offset: 576)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2041, line: 206, size: 960, elements: !2042)
!2041 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2042 = !{!2043, !2044, !2047, !2049, !2050, !2052}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2040, file: !2041, line: 207, baseType: !1357, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2040, file: !2041, line: 208, baseType: !2045, size: 256, offset: 64)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 256, elements: !1480)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2040, file: !2041, line: 209, baseType: !2048, size: 256, offset: 320)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !1480)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2040, file: !2041, line: 213, baseType: !279, size: 64, offset: 576)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2040, file: !2041, line: 215, baseType: !2051, size: 256, offset: 640)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, elements: !1480)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2040, file: !2041, line: 216, baseType: !351, size: 8, offset: 896)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2032, file: !2027, line: 33, baseType: !233, size: 64, offset: 1536)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2032, file: !2027, line: 34, baseType: !233, size: 64, offset: 1600)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2032, file: !2027, line: 35, baseType: !326, size: 8, offset: 1664)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2032, file: !2027, line: 36, baseType: !2057, size: 320, offset: 1728)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2058, line: 11, size: 320, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2059 = !{!2060, !2067, !2068, !2073}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2057, file: !2058, line: 16, baseType: !2061, size: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !235, line: 198, size: 128, elements: !2062)
!2062 = !{!2063, !2065}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2061, file: !235, line: 199, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2061, file: !235, line: 199, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2057, file: !2058, line: 17, baseType: !233, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2057, file: !2058, line: 18, baseType: !2069, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !2072}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !2058, line: 19, baseType: !236, size: 32, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2032, file: !2027, line: 37, baseType: !1561, size: 256, offset: 2048)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2032, file: !2027, line: 38, baseType: !1354, size: 128, align: 64, offset: 2304)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2032, file: !2027, line: 39, baseType: !2077, size: 64, offset: 2432)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2027, line: 49, size: 768, elements: !2079)
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2078, file: !2027, line: 50, baseType: !1198, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2078, file: !2027, line: 51, baseType: !2048, size: 256, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2078, file: !2027, line: 53, baseType: !2048, size: 256, offset: 320)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2078, file: !2027, line: 54, baseType: !233, size: 64, offset: 576)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2078, file: !2027, line: 55, baseType: !2077, size: 64, offset: 640)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2078, file: !2027, line: 56, baseType: !37, size: 32, offset: 704)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2078, file: !2027, line: 57, baseType: !37, size: 32, offset: 736)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2032, file: !2027, line: 40, baseType: !233, size: 64, offset: 2496)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2032, file: !2027, line: 42, baseType: !37, size: 32, offset: 2560)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2032, file: !2027, line: 43, baseType: !2025, size: 64, offset: 2624)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2026, file: !2027, line: 99, baseType: !2091, offset: 128)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2092, line: 211, elements: !616)
!2092 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2026, file: !2027, line: 100, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2027, line: 63, size: 3008, elements: !2096)
!2096 = !{!2097, !2098, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2128}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2095, file: !2027, line: 64, baseType: !2077, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2095, file: !2027, line: 65, baseType: !2099, size: 192, offset: 64)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2077, size: 192, elements: !633)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2095, file: !2027, line: 67, baseType: !37, size: 32, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2095, file: !2027, line: 68, baseType: !1499, size: 256, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2095, file: !2027, line: 69, baseType: !1198, size: 32, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2095, file: !2027, line: 70, baseType: !1499, size: 256, offset: 640)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2095, file: !2027, line: 71, baseType: !233, size: 64, offset: 896)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2095, file: !2027, line: 72, baseType: !233, size: 64, offset: 960)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2095, file: !2027, line: 73, baseType: !233, size: 64, offset: 1024)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2095, file: !2027, line: 74, baseType: !233, size: 64, offset: 1088)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2095, file: !2027, line: 75, baseType: !233, size: 64, offset: 1152)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2095, file: !2027, line: 76, baseType: !233, size: 64, offset: 1216)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2095, file: !2027, line: 77, baseType: !233, size: 64, offset: 1280)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2095, file: !2027, line: 78, baseType: !233, size: 64, offset: 1344)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2095, file: !2027, line: 79, baseType: !326, size: 8, offset: 1408)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2095, file: !2027, line: 80, baseType: !233, size: 64, offset: 1472)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2095, file: !2027, line: 81, baseType: !1499, size: 256, offset: 1536)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2095, file: !2027, line: 82, baseType: !1817, size: 256, offset: 1792)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2095, file: !2027, line: 84, baseType: !803, size: 32, offset: 2048)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2095, file: !2027, line: 87, baseType: !233, size: 64, offset: 2112)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2095, file: !2027, line: 88, baseType: !233, size: 64, offset: 2176)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2095, file: !2027, line: 89, baseType: !2120, size: 704, offset: 2240)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1562, line: 111, size: 704, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2127}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2120, file: !1562, line: 112, baseType: !1561, size: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2120, file: !1562, line: 113, baseType: !2057, size: 320, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2120, file: !1562, line: 116, baseType: !2125, size: 64, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1562, line: 18, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2120, file: !1562, line: 117, baseType: !37, size: 32, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2095, file: !2027, line: 90, baseType: !2025, size: 64, offset: 2944)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1170, file: !23, line: 515, baseType: !812, size: 64, offset: 8064)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1170, file: !23, line: 516, baseType: !7, size: 32, offset: 8128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1170, file: !23, line: 519, baseType: !7, size: 32, offset: 8160)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1170, file: !23, line: 520, baseType: !2133, size: 64, offset: 8192)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1170, file: !23, line: 523, baseType: !2135, size: 64, offset: 8256)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !23, line: 523, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1170, file: !23, line: 524, baseType: !7, size: 32, offset: 8320)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1170, file: !23, line: 525, baseType: !2140, size: 64, offset: 8384)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !23, line: 525, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1170, file: !23, line: 526, baseType: !7, size: 32, offset: 8448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1170, file: !23, line: 533, baseType: !231, size: 64, offset: 8512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1170, file: !23, line: 534, baseType: !7, size: 32, offset: 8576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1170, file: !23, line: 535, baseType: !232, size: 64, offset: 8640)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1170, file: !23, line: 536, baseType: !7, size: 32, offset: 8704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1170, file: !23, line: 539, baseType: !37, size: 32, offset: 8736)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1170, file: !23, line: 540, baseType: !2150, size: 64, offset: 8768)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1156, line: 32, size: 64, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2151, file: !1156, line: 33, baseType: !816, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2151, file: !1156, line: 34, baseType: !816, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1170, file: !23, line: 563, baseType: !1174, size: 128, offset: 8832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1170, file: !23, line: 565, baseType: !1174, size: 128, offset: 8960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1170, file: !23, line: 568, baseType: !318, size: 64, offset: 9088)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1170, file: !23, line: 570, baseType: !803, size: 32, offset: 9152)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !1165, file: !1151, line: 172, baseType: !2150, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !1160, file: !1156, line: 67, baseType: !2150, size: 64)
!2161 = !DISubprogram(name: "register_reboot_notifier", scope: !2162, file: !2162, line: 44, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2162 = !DIFile(filename: "./include/linux/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7764077571b3c42d5acdba437f8cc057")
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!37, !571}
!2165 = distinct !DISubprogram(name: "vmware_smp_prepare_boot_cpu", scope: !3, file: !3, line: 294, type: !319, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2166 = !DILocation(line: 296, column: 2, scope: !2165)
!2167 = !DILocation(line: 297, column: 2, scope: !2165)
!2168 = !DILocation(line: 298, column: 1, scope: !2165)
!2169 = distinct !DISubprogram(name: "cpuhp_setup_state_nocalls", scope: !36, file: !36, line: 323, type: !2170, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2175)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!37, !35, !287, !2172, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!37, !7}
!2175 = !{!2176, !2177, !2178, !2179}
!2176 = !DILocalVariable(name: "state", arg: 1, scope: !2169, file: !36, line: 323, type: !35)
!2177 = !DILocalVariable(name: "name", arg: 2, scope: !2169, file: !36, line: 324, type: !287)
!2178 = !DILocalVariable(name: "startup", arg: 3, scope: !2169, file: !36, line: 325, type: !2172)
!2179 = !DILocalVariable(name: "teardown", arg: 4, scope: !2169, file: !36, line: 326, type: !2172)
!2180 = !DILocation(line: 323, column: 62, scope: !2169)
!2181 = !DILocation(line: 324, column: 22, scope: !2169)
!2182 = !DILocation(line: 325, column: 16, scope: !2169)
!2183 = !DILocation(line: 326, column: 16, scope: !2169)
!2184 = !DILocation(line: 328, column: 29, scope: !2169)
!2185 = !DILocation(line: 328, column: 36, scope: !2169)
!2186 = !DILocation(line: 328, column: 49, scope: !2169)
!2187 = !DILocation(line: 328, column: 58, scope: !2169)
!2188 = !DILocation(line: 328, column: 9, scope: !2169)
!2189 = !DILocation(line: 328, column: 2, scope: !2169)
!2190 = distinct !DISubprogram(name: "vmware_cpu_online", scope: !3, file: !3, line: 300, type: !2173, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2191)
!2191 = !{!2192}
!2192 = !DILocalVariable(name: "cpu", arg: 1, scope: !2190, file: !3, line: 300, type: !7)
!2193 = !DILocation(line: 300, column: 43, scope: !2190)
!2194 = !DILocation(line: 302, column: 2, scope: !2190)
!2195 = !DILocation(line: 302, column: 2, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 302, column: 2)
!2197 = !DILocation(line: 303, column: 2, scope: !2190)
!2198 = !DILocation(line: 304, column: 2, scope: !2190)
!2199 = !DILocation(line: 304, column: 2, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 304, column: 2)
!2201 = !DILocation(line: 305, column: 2, scope: !2190)
!2202 = distinct !DISubprogram(name: "vmware_cpu_down_prepare", scope: !3, file: !3, line: 308, type: !2173, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2203 = !{!2204}
!2204 = !DILocalVariable(name: "cpu", arg: 1, scope: !2202, file: !3, line: 308, type: !7)
!2205 = !DILocation(line: 308, column: 49, scope: !2202)
!2206 = !DILocation(line: 310, column: 2, scope: !2202)
!2207 = !DILocation(line: 310, column: 2, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 310, column: 2)
!2209 = !DILocation(line: 311, column: 2, scope: !2202)
!2210 = !DILocation(line: 312, column: 2, scope: !2202)
!2211 = !DILocation(line: 312, column: 2, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 312, column: 2)
!2213 = !DILocation(line: 313, column: 2, scope: !2202)
!2214 = distinct !DISubprogram(name: "rdtsc", scope: !2215, file: !2215, line: 180, type: !2216, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2215 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!243}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "low", scope: !2214, file: !2215, line: 182, type: !233)
!2220 = !DILocalVariable(name: "high", scope: !2214, file: !2215, line: 182, type: !233)
!2221 = !DILocation(line: 182, column: 2, scope: !2214)
!2222 = !DILocation(line: 184, column: 2, scope: !2214)
!2223 = !{i64 1942421}
!2224 = !DILocation(line: 186, column: 9, scope: !2214)
!2225 = !DILocation(line: 187, column: 1, scope: !2214)
!2226 = !DILocation(line: 186, column: 2, scope: !2214)
!2227 = !DISubprogram(name: "clocks_calc_mult_shift", scope: !2228, file: !2228, line: 224, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2228 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f664f6d0ed93221709a7301012f8ae1")
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2231, !2231, !236, !236, !236}
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!2232 = distinct !DISubprogram(name: "mul_u64_u32_shr", scope: !2233, file: !2233, line: 164, type: !2234, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2233 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!241, !241, !236, !7}
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "a", arg: 1, scope: !2232, file: !2233, line: 164, type: !241)
!2238 = !DILocalVariable(name: "mul", arg: 2, scope: !2232, file: !2233, line: 164, type: !236)
!2239 = !DILocalVariable(name: "shift", arg: 3, scope: !2232, file: !2233, line: 164, type: !7)
!2240 = !DILocation(line: 164, column: 48, scope: !2232)
!2241 = !DILocation(line: 164, column: 55, scope: !2232)
!2242 = !DILocation(line: 164, column: 73, scope: !2232)
!2243 = !DILocation(line: 166, column: 35, scope: !2232)
!2244 = !DILocation(line: 166, column: 16, scope: !2232)
!2245 = !DILocation(line: 166, column: 39, scope: !2232)
!2246 = !DILocation(line: 166, column: 37, scope: !2232)
!2247 = !DILocation(line: 166, column: 47, scope: !2232)
!2248 = !DILocation(line: 166, column: 44, scope: !2232)
!2249 = !DILocation(line: 166, column: 9, scope: !2232)
!2250 = !DILocation(line: 166, column: 2, scope: !2232)
!2251 = distinct !DISubprogram(name: "__stealclock_disable", scope: !3, file: !3, line: 192, type: !609, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2252 = !DILocation(line: 194, column: 9, scope: !2251)
!2253 = !DILocation(line: 194, column: 2, scope: !2251)
!2254 = distinct !DISubprogram(name: "vmware_cmd_stealclock", scope: !3, file: !3, line: 169, type: !2255, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!37, !234, !234}
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "arg1", arg: 1, scope: !2254, file: !3, line: 169, type: !234)
!2259 = !DILocalVariable(name: "arg2", arg: 2, scope: !2254, file: !3, line: 169, type: !234)
!2260 = !DILocalVariable(name: "result", scope: !2254, file: !3, line: 171, type: !234)
!2261 = !DILocalVariable(name: "info", scope: !2254, file: !3, line: 171, type: !234)
!2262 = !DILocation(line: 169, column: 43, scope: !2254)
!2263 = !DILocation(line: 169, column: 58, scope: !2254)
!2264 = !DILocation(line: 171, column: 2, scope: !2254)
!2265 = !DILocation(line: 171, column: 11, scope: !2254)
!2266 = !DILocation(line: 171, column: 19, scope: !2254)
!2267 = !DILocation(line: 180, column: 7, scope: !2254)
!2268 = !DILocation(line: 181, column: 7, scope: !2254)
!2269 = !DILocation(line: 173, column: 2, scope: !2254)
!2270 = !{i64 2153455736, i64 2153455769, i64 2153455775, i64 2153455791, i64 2153455810, i64 2153455841, i64 2153456844, i64 2153455279, i64 2153456850, i64 2153456898, i64 2153456962, i64 2153457026, i64 2153457083, i64 2153457290, i64 2153457338, i64 2153457402, i64 2153457466, i64 2153457523, i64 2153455397, i64 2153455422, i64 2153457730, i64 2153457852, i64 2153457791, i64 2153457866, i64 2153457880, i64 2153458003, i64 2153457941, i64 2153458017, i64 2153455556}
!2271 = !DILocation(line: 183, column: 9, scope: !2254)
!2272 = !DILocation(line: 184, column: 1, scope: !2254)
!2273 = !DILocation(line: 183, column: 2, scope: !2254)
!2274 = distinct !DISubprogram(name: "vmware_pv_reboot_notify", scope: !3, file: !3, line: 281, type: !569, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DILocalVariable(name: "nb", arg: 1, scope: !2274, file: !3, line: 281, type: !571)
!2277 = !DILocalVariable(name: "code", arg: 2, scope: !2274, file: !3, line: 282, type: !233)
!2278 = !DILocalVariable(name: "unused", arg: 3, scope: !2274, file: !3, line: 282, type: !231)
!2279 = !DILocation(line: 281, column: 59, scope: !2274)
!2280 = !DILocation(line: 282, column: 19, scope: !2274)
!2281 = !DILocation(line: 282, column: 31, scope: !2274)
!2282 = !DILocation(line: 284, column: 6, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 284, column: 6)
!2284 = !DILocation(line: 284, column: 11, scope: !2283)
!2285 = !DILocation(line: 284, column: 6, scope: !2274)
!2286 = !DILocation(line: 285, column: 3, scope: !2283)
!2287 = !DILocation(line: 286, column: 2, scope: !2274)
!2288 = distinct !DISubprogram(name: "on_each_cpu", scope: !2289, file: !2289, line: 69, type: !2290, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2293)
!2289 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !2292, !231, !37}
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !2289, line: 17, baseType: !1654)
!2293 = !{!2294, !2295, !2296}
!2294 = !DILocalVariable(name: "func", arg: 1, scope: !2288, file: !2289, line: 69, type: !2292)
!2295 = !DILocalVariable(name: "info", arg: 2, scope: !2288, file: !2289, line: 69, type: !231)
!2296 = !DILocalVariable(name: "wait", arg: 3, scope: !2288, file: !2289, line: 69, type: !37)
!2297 = !DILocation(line: 69, column: 48, scope: !2288)
!2298 = !DILocation(line: 69, column: 60, scope: !2288)
!2299 = !DILocation(line: 69, column: 70, scope: !2288)
!2300 = !DILocation(line: 71, column: 30, scope: !2288)
!2301 = !DILocation(line: 71, column: 36, scope: !2288)
!2302 = !DILocation(line: 71, column: 42, scope: !2288)
!2303 = !DILocation(line: 71, column: 2, scope: !2288)
!2304 = !DILocation(line: 72, column: 1, scope: !2288)
!2305 = distinct !DISubprogram(name: "vmware_pv_guest_cpu_reboot", scope: !3, file: !3, line: 276, type: !1655, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2306)
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "unused", arg: 1, scope: !2305, file: !3, line: 276, type: !231)
!2308 = !DILocation(line: 276, column: 46, scope: !2305)
!2309 = !DILocation(line: 278, column: 2, scope: !2305)
!2310 = !DILocation(line: 279, column: 1, scope: !2305)
!2311 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !2289, file: !2289, line: 53, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !2314, !2292, !231, !326, !264}
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !2289, line: 18, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!326, !37, !231}
!2318 = distinct !DISubprogram(name: "vmware_disable_steal_time", scope: !3, file: !3, line: 262, type: !319, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2319 = !DILocation(line: 264, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 264, column: 6)
!2321 = !DILocation(line: 264, column: 6, scope: !2318)
!2322 = !DILocation(line: 265, column: 3, scope: !2320)
!2323 = !DILocation(line: 267, column: 2, scope: !2318)
!2324 = !DILocation(line: 268, column: 1, scope: !2318)
!2325 = distinct !DISubprogram(name: "stealclock_disable", scope: !3, file: !3, line: 197, type: !319, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2326 = !DILocation(line: 199, column: 2, scope: !2325)
!2327 = !DILocation(line: 200, column: 1, scope: !2325)
!2328 = distinct !DISubprogram(name: "vmware_guest_cpu_init", scope: !3, file: !3, line: 270, type: !319, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2329 = !DILocation(line: 272, column: 6, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 272, column: 6)
!2331 = !DILocation(line: 272, column: 6, scope: !2328)
!2332 = !DILocation(line: 273, column: 3, scope: !2330)
!2333 = !DILocation(line: 274, column: 1, scope: !2328)
!2334 = !DISubprogram(name: "native_smp_prepare_boot_cpu", scope: !2335, file: !2335, line: 112, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2335 = !DIFile(filename: "./arch/x86/include/asm/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9466013197f61ce2fbb2e675d22e6f5")
!2336 = distinct !DISubprogram(name: "vmware_register_steal_time", scope: !3, file: !3, line: 245, type: !319, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2337 = !{!2338, !2339, !2342, !2344, !2346, !2347, !2350}
!2338 = !DILocalVariable(name: "cpu", scope: !2336, file: !3, line: 247, type: !37)
!2339 = !DILocalVariable(name: "pscr_ret__", scope: !2340, file: !3, line: 247, type: !37)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 247, column: 12)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 247, column: 12)
!2342 = !DILocalVariable(name: "__vpp_verify", scope: !2343, file: !3, line: 247, type: !875)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 247, column: 12)
!2344 = !DILocalVariable(name: "pfo_val__", scope: !2345, file: !3, line: 247, type: !236)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 247, column: 12)
!2346 = !DILocalVariable(name: "st", scope: !2336, file: !3, line: 248, type: !245)
!2347 = !DILocalVariable(name: "__vpp_verify", scope: !2348, file: !3, line: 248, type: !875)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 248, column: 34)
!2349 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 248, column: 34)
!2350 = !DILocalVariable(name: "__ptr", scope: !2351, file: !3, line: 248, type: !233)
!2351 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 248, column: 34)
!2352 = !DILocation(line: 247, column: 2, scope: !2336)
!2353 = !DILocation(line: 247, column: 6, scope: !2336)
!2354 = !DILocation(line: 247, column: 12, scope: !2341)
!2355 = !DILocation(line: 247, column: 12, scope: !2340)
!2356 = !DILocation(line: 247, column: 12, scope: !2343)
!2357 = !DILocation(line: 247, column: 12, scope: !2345)
!2358 = !{i64 2153474168}
!2359 = !DILocation(line: 248, column: 2, scope: !2336)
!2360 = !DILocation(line: 248, column: 28, scope: !2336)
!2361 = !DILocation(line: 248, column: 34, scope: !2349)
!2362 = !DILocation(line: 248, column: 34, scope: !2348)
!2363 = !DILocation(line: 248, column: 34, scope: !2351)
!2364 = !DILocation(line: 250, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 250, column: 6)
!2366 = !DILocation(line: 250, column: 6, scope: !2336)
!2367 = !DILocation(line: 251, column: 3, scope: !2365)
!2368 = !DILocation(line: 253, column: 43, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 253, column: 6)
!2370 = !DILocation(line: 253, column: 25, scope: !2369)
!2371 = !DILocation(line: 253, column: 7, scope: !2369)
!2372 = !DILocation(line: 253, column: 6, scope: !2336)
!2373 = !DILocation(line: 254, column: 19, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 253, column: 49)
!2375 = !DILocation(line: 255, column: 3, scope: !2374)
!2376 = !DILocation(line: 258, column: 2, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 258, column: 2)
!2378 = !DILocation(line: 258, column: 2, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 258, column: 2)
!2380 = !DILocation(line: 260, column: 1, scope: !2336)
!2381 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !2382, file: !2382, line: 313, type: !2383, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2385)
!2382 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !287}
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "op", arg: 1, scope: !2381, file: !2382, line: 313, type: !287)
!2387 = !DILocation(line: 313, column: 66, scope: !2381)
!2388 = !DILocation(line: 313, column: 72, scope: !2381)
!2389 = distinct !DISubprogram(name: "stealclock_enable", scope: !3, file: !3, line: 186, type: !2390, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2393)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!326, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !235, line: 159, baseType: !241)
!2393 = !{!2394}
!2394 = !DILocalVariable(name: "pa", arg: 1, scope: !2389, file: !3, line: 186, type: !2392)
!2395 = !DILocation(line: 186, column: 43, scope: !2389)
!2396 = !DILocation(line: 188, column: 31, scope: !2389)
!2397 = !DILocation(line: 189, column: 10, scope: !2389)
!2398 = !DILocation(line: 188, column: 9, scope: !2389)
!2399 = !DILocation(line: 189, column: 29, scope: !2389)
!2400 = !DILocation(line: 188, column: 2, scope: !2389)
!2401 = !DISubprogram(name: "slow_virt_to_phys", scope: !1333, file: !1333, line: 577, type: !2402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2392, !231}
!2404 = !DISubprogram(name: "__cpuhp_setup_state", scope: !36, file: !36, line: 263, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!37, !35, !287, !326, !2172, !2172, !326}
!2407 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2408, file: !2408, line: 70, type: !319, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2408 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2409 = !DILocation(line: 72, column: 2, scope: !2407)
!2410 = !DILocation(line: 73, column: 1, scope: !2407)
!2411 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !2408, file: !2408, line: 75, type: !319, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2412 = !DILocation(line: 77, column: 2, scope: !2411)
!2413 = !DILocation(line: 78, column: 1, scope: !2411)
!2414 = distinct !DISubprogram(name: "native_irq_disable", scope: !2408, file: !2408, line: 35, type: !319, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2415 = !DILocation(line: 37, column: 2, scope: !2414)
!2416 = !{i64 1982811}
!2417 = !DILocation(line: 38, column: 1, scope: !2414)
!2418 = distinct !DISubprogram(name: "native_irq_enable", scope: !2408, file: !2408, line: 40, type: !319, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2419 = !DILocation(line: 42, column: 2, scope: !2418)
!2420 = !{i64 1982903}
!2421 = !DILocation(line: 43, column: 1, scope: !2418)
!2422 = distinct !DISubprogram(name: "set_bit", scope: !2423, file: !2423, line: 26, type: !2424, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2423 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !279, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!2427 = !{!2428, !2429}
!2428 = !DILocalVariable(name: "nr", arg: 1, scope: !2422, file: !2423, line: 26, type: !279)
!2429 = !DILocalVariable(name: "addr", arg: 2, scope: !2422, file: !2423, line: 26, type: !2426)
!2430 = !DILocation(line: 26, column: 42, scope: !2422)
!2431 = !DILocation(line: 26, column: 70, scope: !2422)
!2432 = !DILocation(line: 28, column: 26, scope: !2422)
!2433 = !DILocation(line: 28, column: 33, scope: !2422)
!2434 = !DILocation(line: 28, column: 31, scope: !2422)
!2435 = !DILocation(line: 28, column: 2, scope: !2422)
!2436 = !DILocation(line: 29, column: 15, scope: !2422)
!2437 = !DILocation(line: 29, column: 19, scope: !2422)
!2438 = !DILocation(line: 29, column: 2, scope: !2422)
!2439 = !DILocation(line: 30, column: 1, scope: !2422)
!2440 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2441, file: !2441, line: 80, type: !2442, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2447)
!2441 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2444, !1298}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2446)
!2446 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2447 = !{!2448, !2449}
!2448 = !DILocalVariable(name: "v", arg: 1, scope: !2440, file: !2441, line: 80, type: !2444)
!2449 = !DILocalVariable(name: "size", arg: 2, scope: !2440, file: !2441, line: 80, type: !1298)
!2450 = !DILocation(line: 80, column: 74, scope: !2440)
!2451 = !DILocation(line: 80, column: 84, scope: !2440)
!2452 = !DILocation(line: 82, column: 20, scope: !2440)
!2453 = !DILocation(line: 82, column: 23, scope: !2440)
!2454 = !DILocation(line: 82, column: 2, scope: !2440)
!2455 = !DILocation(line: 83, column: 2, scope: !2440)
!2456 = !DILocation(line: 84, column: 1, scope: !2440)
!2457 = distinct !DISubprogram(name: "arch_set_bit", scope: !824, file: !824, line: 52, type: !2424, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "nr", arg: 1, scope: !2457, file: !824, line: 52, type: !279)
!2460 = !DILocalVariable(name: "addr", arg: 2, scope: !2457, file: !824, line: 52, type: !2426)
!2461 = !DILocation(line: 52, column: 19, scope: !2457)
!2462 = !DILocation(line: 52, column: 47, scope: !2457)
!2463 = !DILocation(line: 54, column: 27, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2457, file: !824, line: 54, column: 6)
!2465 = !DILocation(line: 54, column: 6, scope: !2464)
!2466 = !DILocation(line: 54, column: 6, scope: !2457)
!2467 = !DILocation(line: 56, column: 6, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !824, line: 54, column: 32)
!2469 = !DILocation(line: 57, column: 12, scope: !2468)
!2470 = !DILocation(line: 55, column: 3, scope: !2468)
!2471 = !{i64 2147995322, i64 2147995361, i64 2147995382, i64 2147995419, i64 2147995442, i64 2147995312}
!2472 = !DILocation(line: 59, column: 2, scope: !2468)
!2473 = !DILocation(line: 61, column: 8, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2464, file: !824, line: 59, column: 9)
!2475 = !DILocation(line: 61, column: 32, scope: !2474)
!2476 = !DILocation(line: 60, column: 3, scope: !2474)
!2477 = !{i64 2147995607, i64 2147995646, i64 2147995667, i64 2147995704, i64 2147995727, i64 2147995597}
!2478 = !DILocation(line: 63, column: 1, scope: !2457)
!2479 = distinct !DISubprogram(name: "kasan_check_write", scope: !2480, file: !2480, line: 44, type: !2481, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2483)
!2480 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!326, !2444, !7}
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "p", arg: 1, scope: !2479, file: !2480, line: 44, type: !2444)
!2485 = !DILocalVariable(name: "size", arg: 2, scope: !2479, file: !2480, line: 44, type: !7)
!2486 = !DILocation(line: 44, column: 59, scope: !2479)
!2487 = !DILocation(line: 44, column: 75, scope: !2479)
!2488 = !DILocation(line: 46, column: 2, scope: !2479)
!2489 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2490, file: !2490, line: 229, type: !2491, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2493)
!2490 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2444, !1298, !37}
!2493 = !{!2494, !2495, !2496}
!2494 = !DILocalVariable(name: "ptr", arg: 1, scope: !2489, file: !2490, line: 229, type: !2444)
!2495 = !DILocalVariable(name: "size", arg: 2, scope: !2489, file: !2490, line: 229, type: !1298)
!2496 = !DILocalVariable(name: "type", arg: 3, scope: !2489, file: !2490, line: 230, type: !37)
!2497 = !DILocation(line: 229, column: 60, scope: !2489)
!2498 = !DILocation(line: 229, column: 72, scope: !2489)
!2499 = !DILocation(line: 230, column: 15, scope: !2489)
!2500 = !DILocation(line: 230, column: 23, scope: !2489)
