; ModuleID = 'arch/x86/kernel/cpu/microcode/intel.c'
source_filename = "arch/x86/kernel/cpu/microcode/intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_collect_cpu_info: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_collect_cpu_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_find_matching_signature: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_find_matching_signature ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_microcode_sanity_check: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad intel_microcode_sanity_check ; .previous"
module asm ".section\09\22.initcallearly.init..kmod_microcode__290_400_save_builtin_microcode\22, \22a\22\09\09"
module asm "__initcall__kmod_microcode__290_400_save_builtin_microcodeearly:\09\09\09"
module asm ".long\09__initstub__kmod_microcode__290_400_save_builtin_microcodeearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.microcode_ops = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ucode_cpu_info = type { %struct.cpu_signature, ptr }
%struct.cpu_signature = type { i32, i32, i32 }
%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.microcode_header_intel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.extended_sigtable = type { i32, i32, [3 x i32], [0 x %struct.extended_signature] }
%struct.extended_signature = type { i32, i32, i32 }
%struct.anon.14 = type { i8, i8, i8, i8 }
%struct.early_load_data = type { i32, i32 }
%struct.cpio_data = type { ptr, i64, [18 x i8] }
%struct.microcode_intel = type { %struct.microcode_header_intel, [0 x i32] }
%struct.firmware = type { i64, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon.16, %union.anon.17, %union.anon.20 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { %struct.iovec }
%struct.iovec = type { ptr, i64 }
%union.anon.20 = type { i64 }
%struct.kvec = type { ptr, i64 }
%struct.anon.18 = type { %union.anon.19, i64 }
%union.anon.19 = type { ptr }

@__UNIQUE_ID___addressable_intel_collect_cpu_info287 = internal global ptr @intel_collect_cpu_info, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_intel_find_matching_signature288 = internal global ptr @intel_find_matching_signature, section ".discard.addressable", align 8, !dbg !275
@.str = private unnamed_addr constant [51 x i8] c"\013microcode: Error: bad microcode data file size.\0A\00", align 1, !dbg !277
@.str.1 = private unnamed_addr constant [77 x i8] c"\013microcode: Error: invalid/unknown microcode update format. Header type %d\0A\00", align 1, !dbg !282
@.str.2 = private unnamed_addr constant [57 x i8] c"\013microcode: Error: truncated extended signature table.\0A\00", align 1, !dbg !287
@.str.3 = private unnamed_addr constant [61 x i8] c"\013microcode: Error: extended signature table size mismatch.\0A\00", align 1, !dbg !292
@.str.4 = private unnamed_addr constant [63 x i8] c"\014microcode: Bad extended signature table checksum, aborting.\0A\00", align 1, !dbg !297
@.str.5 = private unnamed_addr constant [53 x i8] c"\013microcode: Bad microcode data checksum, aborting.\0A\00", align 1, !dbg !302
@.str.6 = private unnamed_addr constant [57 x i8] c"\013microcode: Bad extended signature checksum, aborting.\0A\00", align 1, !dbg !307
@__UNIQUE_ID___addressable_intel_microcode_sanity_check289 = internal global ptr @intel_microcode_sanity_check, section ".discard.addressable", align 8, !dbg !309
@__UNIQUE_ID___addressable___initstub__kmod_microcode__290_400_save_builtin_microcodeearly291 = internal global ptr @__initstub__kmod_microcode__290_400_save_builtin_microcodeearly, section ".discard.addressable", align 8, !dbg !311
@ucode_patch_va = internal global ptr null, section ".data..read_mostly", align 8, !dbg !318
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"\013microcode: Intel CPU family 0x%x not supported\0A\00", align 1, !dbg !313
@microcode_intel_ops = internal global %struct.microcode_ops { ptr @request_microcode_fw, ptr null, ptr @apply_microcode_late, ptr @collect_cpu_info, ptr @finalize_late_load, i8 2 }, align 8, !dbg !338
@dis_ucode_ldr = external dso_local global i8, align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"\013microcode: Unable to allocate microcode memory size: %u\0A\00", align 1, !dbg !320
@ucode_path = internal constant [38 x i8] c"kernel/x86/microcode/GenuineIntel.bin\00", align 16, !dbg !330
@.str.9 = private unnamed_addr constant [27 x i8] c"intel-ucode/%02x-%02x-%02x\00", align 1, !dbg !325
@llc_size_per_core = internal global i32 0, section ".data..ro_after_init", align 4, !dbg !336
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@is_blacklisted.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4664
@.str.10 = private unnamed_addr constant [86 x i8] c"\013microcode: Erratum BDX90: late loading with revision < 0x0b000021 (0x%x) disabled.\0A\00", align 1, !dbg !4691
@is_blacklisted.__already_done.11 = internal global i8 0, section ".data..once", align 1, !dbg !4696
@.str.12 = private unnamed_addr constant [103 x i8] c"\013microcode: Please consider either early loading through initrd/built-in or a potential BIOS update.\0A\00", align 1, !dbg !4698
@ucode_cpu_info = external dso_local global [0 x %struct.ucode_cpu_info], align 8
@force_minrev = external dso_local global i8, align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"\013microcode: error! Truncated or inaccessible header in microcode data file\0A\00", align 1, !dbg !4703
@.str.14 = private unnamed_addr constant [75 x i8] c"\013microcode: error! Bad data in microcode data file (totalsize too small)\0A\00", align 1, !dbg !4705
@.str.15 = private unnamed_addr constant [71 x i8] c"\013microcode: error! Bad data in microcode data file (truncated file?)\0A\00", align 1, !dbg !4710
@ucode_patch_late = internal global ptr null, section ".data..read_mostly", align 8, !dbg !4721
@.str.16 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4715
@.str.17 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !4723
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.18 = private unnamed_addr constant [38 x i8] c"arch/x86/kernel/cpu/microcode/intel.c\00", align 1, !dbg !4726
@.str.19 = private unnamed_addr constant [62 x i8] c"\016microcode: Updated to revision 0x%x, date = %04x-%02x-%02x\0A\00", align 1, !dbg !4729
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_intel_collect_cpu_info287, ptr @__UNIQUE_ID___addressable_intel_find_matching_signature288, ptr @__UNIQUE_ID___addressable_intel_microcode_sanity_check289, ptr @__UNIQUE_ID___addressable___initstub__kmod_microcode__290_400_save_builtin_microcodeearly291], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @intel_collect_cpu_info(ptr noundef %sig) #0 align 16 !dbg !4743 {
entry:
  %sig.addr = alloca ptr, align 8
  %val = alloca [2 x i32], align 4
  %__val = alloca i64, align 8
  store ptr %sig, ptr %sig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !4747, metadata !DIExpression()), !dbg !4753
  %call = call i32 @cpuid_eax(i32 noundef 1) #18, !dbg !4754
  %0 = load ptr, ptr %sig.addr, align 8, !dbg !4755
  %sig1 = getelementptr inbounds %struct.cpu_signature, ptr %0, i32 0, i32 0, !dbg !4756
  store i32 %call, ptr %sig1, align 4, !dbg !4757
  %1 = load ptr, ptr %sig.addr, align 8, !dbg !4758
  %pf = getelementptr inbounds %struct.cpu_signature, ptr %1, i32 0, i32 1, !dbg !4759
  store i32 0, ptr %pf, align 4, !dbg !4760
  %call2 = call i32 @intel_get_microcode_revision() #18, !dbg !4761
  %2 = load ptr, ptr %sig.addr, align 8, !dbg !4762
  %rev = getelementptr inbounds %struct.cpu_signature, ptr %2, i32 0, i32 2, !dbg !4763
  store i32 %call2, ptr %rev, align 4, !dbg !4764
  %3 = load ptr, ptr %sig.addr, align 8, !dbg !4765
  %sig3 = getelementptr inbounds %struct.cpu_signature, ptr %3, i32 0, i32 0, !dbg !4766
  %4 = load i32, ptr %sig3, align 4, !dbg !4766
  %call4 = call i32 @x86_model(i32 noundef %4) #18, !dbg !4767
  %cmp = icmp uge i32 %call4, 5, !dbg !4768
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4769

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %sig.addr, align 8, !dbg !4770
  %sig5 = getelementptr inbounds %struct.cpu_signature, ptr %5, i32 0, i32 0, !dbg !4771
  %6 = load i32, ptr %sig5, align 4, !dbg !4771
  %call6 = call i32 @x86_family(i32 noundef %6) #18, !dbg !4772
  %cmp7 = icmp ugt i32 %call6, 6, !dbg !4773
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4774

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #19, !dbg !4775
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4748, metadata !DIExpression()), !dbg !4776
  br label %do.body, !dbg !4777

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #19, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !4751, metadata !DIExpression()), !dbg !4778
  %call8 = call i64 @__rdmsr(i32 noundef 23) #18, !dbg !4778
  store i64 %call8, ptr %__val, align 8, !dbg !4778
  %7 = load i64, ptr %__val, align 8, !dbg !4778
  %conv = trunc i64 %7 to i32, !dbg !4778
  %arrayidx = getelementptr [2 x i32], ptr %val, i64 0, i64 0, !dbg !4778
  store i32 %conv, ptr %arrayidx, align 4, !dbg !4778
  %8 = load i64, ptr %__val, align 8, !dbg !4778
  %shr = lshr i64 %8, 32, !dbg !4778
  %conv9 = trunc i64 %shr to i32, !dbg !4778
  %arrayidx10 = getelementptr [2 x i32], ptr %val, i64 0, i64 1, !dbg !4778
  store i32 %conv9, ptr %arrayidx10, align 4, !dbg !4778
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #19, !dbg !4777
  br label %do.cond, !dbg !4778

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4778

do.end:                                           ; preds = %do.cond
  %arrayidx11 = getelementptr [2 x i32], ptr %val, i64 0, i64 1, !dbg !4779
  %9 = load i32, ptr %arrayidx11, align 4, !dbg !4779
  %shr12 = lshr i32 %9, 18, !dbg !4780
  %and = and i32 %shr12, 7, !dbg !4781
  %shl = shl i32 1, %and, !dbg !4782
  %10 = load ptr, ptr %sig.addr, align 8, !dbg !4783
  %pf13 = getelementptr inbounds %struct.cpu_signature, ptr %10, i32 0, i32 1, !dbg !4784
  store i32 %shl, ptr %pf13, align 4, !dbg !4785
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #19, !dbg !4786
  br label %if.end, !dbg !4787

if.end:                                           ; preds = %do.end, %lor.lhs.false
  ret void, !dbg !4788
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_eax(i32 noundef %op) #2 align 16 !dbg !4789 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4794, metadata !DIExpression()), !dbg !4799
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #19, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !4795, metadata !DIExpression()), !dbg !4801
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #19, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !4796, metadata !DIExpression()), !dbg !4802
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #19, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !4797, metadata !DIExpression()), !dbg !4803
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #19, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !4798, metadata !DIExpression()), !dbg !4804
  %0 = load i32, ptr %op.addr, align 4, !dbg !4805
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #18, !dbg !4806
  %1 = load i32, ptr %eax, align 4, !dbg !4807
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #19, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #19, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #19, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #19, !dbg !4808
  ret i32 %1, !dbg !4809
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_get_microcode_revision() #2 align 16 !dbg !4810 {
entry:
  %rev = alloca i32, align 4
  %dummy = alloca i32, align 4
  %__val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %rev) #19, !dbg !4818
  call void @llvm.dbg.declare(metadata ptr %rev, metadata !4814, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #19, !dbg !4818
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !4815, metadata !DIExpression()), !dbg !4820
  call void @__wrmsr(i32 noundef 139, i32 noundef 0, i32 noundef 0) #18, !dbg !4821
  %call = call i32 @native_cpuid_eax(i32 noundef 1) #18, !dbg !4822
  br label %do.body, !dbg !4823

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #19, !dbg !4824
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !4816, metadata !DIExpression()), !dbg !4824
  %call1 = call i64 @__rdmsr(i32 noundef 139) #18, !dbg !4824
  store i64 %call1, ptr %__val, align 8, !dbg !4824
  %0 = load i64, ptr %__val, align 8, !dbg !4824
  %conv = trunc i64 %0 to i32, !dbg !4824
  store i32 %conv, ptr %dummy, align 4, !dbg !4824
  %1 = load i64, ptr %__val, align 8, !dbg !4824
  %shr = lshr i64 %1, 32, !dbg !4824
  %conv2 = trunc i64 %shr to i32, !dbg !4824
  store i32 %conv2, ptr %rev, align 4, !dbg !4824
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #19, !dbg !4823
  br label %do.cond, !dbg !4824

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4824

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %rev, align 4, !dbg !4825
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #19, !dbg !4826
  call void @llvm.lifetime.end.p0(i64 4, ptr %rev) #19, !dbg !4826
  ret i32 %2, !dbg !4827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4828 dso_local i32 @x86_model(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4830 dso_local i32 @x86_family(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #5 align 16 !dbg !4831 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4836, metadata !DIExpression()), !dbg !4839
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #19, !dbg !4840
  call void @llvm.dbg.declare(metadata ptr %low, metadata !4837, metadata !DIExpression()), !dbg !4840
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #19, !dbg !4840
  call void @llvm.dbg.declare(metadata ptr %high, metadata !4838, metadata !DIExpression()), !dbg !4840
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4841
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #19, !dbg !4842, !srcloc !4843
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !4842
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !4842
  store i64 %asmresult, ptr %low, align 8, !dbg !4842
  store i64 %asmresult1, ptr %high, align 8, !dbg !4842
  %2 = load i64, ptr %low, align 8, !dbg !4844
  %3 = load i64, ptr %high, align 8, !dbg !4844
  %shl = shl i64 %3, 32, !dbg !4844
  %or = or i64 %2, %shl, !dbg !4844
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #19, !dbg !4845
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #19, !dbg !4845
  ret i64 %or, !dbg !4846
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @intel_find_matching_signature(ptr noundef %mc, ptr noundef %sig) #0 align 16 !dbg !4847 {
entry:
  %retval = alloca i1, align 1
  %mc.addr = alloca ptr, align 8
  %sig.addr = alloca ptr, align 8
  %mc_hdr = alloca ptr, align 8
  %ext_sig = alloca ptr, align 8
  %ext_hdr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mc, ptr %mc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mc.addr, metadata !4851, metadata !DIExpression()), !dbg !4872
  store ptr %sig, ptr %sig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !4852, metadata !DIExpression()), !dbg !4873
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc_hdr) #19, !dbg !4874
  call void @llvm.dbg.declare(metadata ptr %mc_hdr, metadata !4853, metadata !DIExpression()), !dbg !4875
  %0 = load ptr, ptr %mc.addr, align 8, !dbg !4876
  store ptr %0, ptr %mc_hdr, align 8, !dbg !4875
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_sig) #19, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %ext_sig, metadata !4854, metadata !DIExpression()), !dbg !4878
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_hdr) #19, !dbg !4879
  call void @llvm.dbg.declare(metadata ptr %ext_hdr, metadata !4861, metadata !DIExpression()), !dbg !4880
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !4881
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4871, metadata !DIExpression()), !dbg !4882
  %1 = load ptr, ptr %sig.addr, align 8, !dbg !4883
  %2 = load ptr, ptr %mc_hdr, align 8, !dbg !4885
  %sig1 = getelementptr inbounds %struct.microcode_header_intel, ptr %2, i32 0, i32 3, !dbg !4886
  %3 = load i32, ptr %sig1, align 4, !dbg !4886
  %4 = load ptr, ptr %mc_hdr, align 8, !dbg !4887
  %pf = getelementptr inbounds %struct.microcode_header_intel, ptr %4, i32 0, i32 6, !dbg !4888
  %5 = load i32, ptr %pf, align 4, !dbg !4888
  %call = call zeroext i1 @cpu_signatures_match(ptr noundef %1, i32 noundef %3, i32 noundef %5) #18, !dbg !4889
  br i1 %call, label %if.then, label %if.end, !dbg !4890

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4891

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %mc_hdr, align 8, !dbg !4892
  %call2 = call i32 @get_totalsize(ptr noundef %6) #18, !dbg !4894
  %conv = zext i32 %call2 to i64, !dbg !4894
  %7 = load ptr, ptr %mc_hdr, align 8, !dbg !4895
  %call3 = call i32 @intel_microcode_get_datasize(ptr noundef %7) #18, !dbg !4896
  %conv4 = sext i32 %call3 to i64, !dbg !4896
  %add = add i64 %conv4, 48, !dbg !4897
  %cmp = icmp ule i64 %conv, %add, !dbg !4898
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4899

if.then6:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4900

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %mc.addr, align 8, !dbg !4901
  %9 = load ptr, ptr %mc_hdr, align 8, !dbg !4902
  %call8 = call i32 @intel_microcode_get_datasize(ptr noundef %9) #18, !dbg !4903
  %idx.ext = sext i32 %call8 to i64, !dbg !4904
  %add.ptr = getelementptr i8, ptr %8, i64 %idx.ext, !dbg !4904
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i64 48, !dbg !4905
  store ptr %add.ptr9, ptr %ext_hdr, align 8, !dbg !4906
  %10 = load ptr, ptr %ext_hdr, align 8, !dbg !4907
  %add.ptr10 = getelementptr i8, ptr %10, i64 20, !dbg !4908
  store ptr %add.ptr10, ptr %ext_sig, align 8, !dbg !4909
  store i32 0, ptr %i, align 4, !dbg !4910
  br label %for.cond, !dbg !4912

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load i32, ptr %i, align 4, !dbg !4913
  %12 = load ptr, ptr %ext_hdr, align 8, !dbg !4915
  %count = getelementptr inbounds %struct.extended_sigtable, ptr %12, i32 0, i32 0, !dbg !4916
  %13 = load i32, ptr %count, align 4, !dbg !4916
  %cmp11 = icmp ult i32 %11, %13, !dbg !4917
  br i1 %cmp11, label %for.body, label %for.end, !dbg !4918

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %sig.addr, align 8, !dbg !4919
  %15 = load ptr, ptr %ext_sig, align 8, !dbg !4922
  %sig13 = getelementptr inbounds %struct.extended_signature, ptr %15, i32 0, i32 0, !dbg !4923
  %16 = load i32, ptr %sig13, align 4, !dbg !4923
  %17 = load ptr, ptr %ext_sig, align 8, !dbg !4924
  %pf14 = getelementptr inbounds %struct.extended_signature, ptr %17, i32 0, i32 1, !dbg !4925
  %18 = load i32, ptr %pf14, align 4, !dbg !4925
  %call15 = call zeroext i1 @cpu_signatures_match(ptr noundef %14, i32 noundef %16, i32 noundef %18) #18, !dbg !4926
  br i1 %call15, label %if.then16, label %if.end17, !dbg !4927

if.then16:                                        ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !4928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4928

if.end17:                                         ; preds = %for.body
  %19 = load ptr, ptr %ext_sig, align 8, !dbg !4929
  %incdec.ptr = getelementptr %struct.extended_signature, ptr %19, i32 1, !dbg !4929
  store ptr %incdec.ptr, ptr %ext_sig, align 8, !dbg !4929
  br label %for.inc, !dbg !4930

for.inc:                                          ; preds = %if.end17
  %20 = load i32, ptr %i, align 4, !dbg !4931
  %inc = add i32 %20, 1, !dbg !4931
  store i32 %inc, ptr %i, align 4, !dbg !4931
  br label %for.cond, !dbg !4932, !llvm.loop !4933

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !4937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4937

cleanup:                                          ; preds = %for.end, %if.then16, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !4938
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_hdr) #19, !dbg !4938
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_sig) #19, !dbg !4938
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc_hdr) #19, !dbg !4938
  %21 = load i1, ptr %retval, align 1, !dbg !4938
  ret i1 %21, !dbg !4938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_signatures_match(ptr noundef %s1, i32 noundef %sig2, i32 noundef %pf2) #2 align 16 !dbg !4939 {
entry:
  %retval = alloca i1, align 1
  %s1.addr = alloca ptr, align 8
  %sig2.addr = alloca i32, align 4
  %pf2.addr = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !4943, metadata !DIExpression()), !dbg !4946
  store i32 %sig2, ptr %sig2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig2.addr, metadata !4944, metadata !DIExpression()), !dbg !4947
  store i32 %pf2, ptr %pf2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pf2.addr, metadata !4945, metadata !DIExpression()), !dbg !4948
  %0 = load ptr, ptr %s1.addr, align 8, !dbg !4949
  %sig = getelementptr inbounds %struct.cpu_signature, ptr %0, i32 0, i32 0, !dbg !4951
  %1 = load i32, ptr %sig, align 4, !dbg !4951
  %2 = load i32, ptr %sig2.addr, align 4, !dbg !4952
  %cmp = icmp ne i32 %1, %2, !dbg !4953
  br i1 %cmp, label %if.then, label %if.end, !dbg !4954

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4955
  br label %return, !dbg !4955

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s1.addr, align 8, !dbg !4956
  %pf = getelementptr inbounds %struct.cpu_signature, ptr %3, i32 0, i32 1, !dbg !4957
  %4 = load i32, ptr %pf, align 4, !dbg !4957
  %tobool = icmp ne i32 %4, 0, !dbg !4956
  br i1 %tobool, label %lor.rhs, label %land.lhs.true, !dbg !4958

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %pf2.addr, align 4, !dbg !4959
  %tobool1 = icmp ne i32 %5, 0, !dbg !4959
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !4960

lor.rhs:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %s1.addr, align 8, !dbg !4961
  %pf3 = getelementptr inbounds %struct.cpu_signature, ptr %6, i32 0, i32 1, !dbg !4962
  %7 = load i32, ptr %pf3, align 4, !dbg !4962
  %8 = load i32, ptr %pf2.addr, align 4, !dbg !4963
  %and = and i32 %7, %8, !dbg !4964
  %tobool4 = icmp ne i32 %and, 0, !dbg !4960
  br label %lor.end, !dbg !4960

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true ], [ %tobool4, %lor.rhs ]
  store i1 %9, ptr %retval, align 1, !dbg !4965
  br label %return, !dbg !4965

return:                                           ; preds = %lor.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !4966
  ret i1 %10, !dbg !4966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_totalsize(ptr noundef %hdr) #2 align 16 !dbg !4967 {
entry:
  %hdr.addr = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !4973
  %datasize = getelementptr inbounds %struct.microcode_header_intel, ptr %0, i32 0, i32 7, !dbg !4974
  %1 = load i32, ptr %datasize, align 4, !dbg !4974
  %tobool = icmp ne i32 %1, 0, !dbg !4973
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4973

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !4975
  %totalsize = getelementptr inbounds %struct.microcode_header_intel, ptr %2, i32 0, i32 8, !dbg !4976
  %3 = load i32, ptr %totalsize, align 4, !dbg !4976
  %conv = zext i32 %3 to i64, !dbg !4975
  br label %cond.end, !dbg !4973

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4973

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ 2048, %cond.false ], !dbg !4973
  %conv1 = trunc i64 %cond to i32, !dbg !4973
  ret i32 %conv1, !dbg !4977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_microcode_get_datasize(ptr noundef %hdr) #2 align 16 !dbg !4978 {
entry:
  %hdr.addr = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !4984
  %datasize = getelementptr inbounds %struct.microcode_header_intel, ptr %0, i32 0, i32 7, !dbg !4985
  %1 = load i32, ptr %datasize, align 4, !dbg !4985
  %tobool = icmp ne i32 %1, 0, !dbg !4984
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4984

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4984

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 2000, %cond.false ], !dbg !4984
  ret i32 %cond, !dbg !4986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_microcode_sanity_check(ptr noundef %mc, i1 noundef zeroext %print_err, i32 noundef %hdr_type) #0 align 16 !dbg !4987 {
entry:
  %retval = alloca i32, align 4
  %mc.addr = alloca ptr, align 8
  %print_err.addr = alloca i8, align 1
  %hdr_type.addr = alloca i32, align 4
  %total_size = alloca i64, align 8
  %data_size = alloca i64, align 8
  %ext_table_size = alloca i64, align 8
  %mc_header = alloca ptr, align 8
  %ext_header = alloca ptr, align 8
  %sum = alloca i32, align 4
  %orig_sum = alloca i32, align 4
  %ext_sigcount = alloca i32, align 4
  %i = alloca i32, align 4
  %ext_sig = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %ext_table_sum = alloca i32, align 4
  %ext_tablep = alloca ptr, align 8
  %tmp36 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %tmp116 = alloca i32, align 4
  store ptr %mc, ptr %mc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mc.addr, metadata !4991, metadata !DIExpression()), !dbg !5008
  %frombool = zext i1 %print_err to i8
  store i8 %frombool, ptr %print_err.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %print_err.addr, metadata !4992, metadata !DIExpression()), !dbg !5009
  store i32 %hdr_type, ptr %hdr_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hdr_type.addr, metadata !4993, metadata !DIExpression()), !dbg !5010
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_size) #19, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %total_size, metadata !4994, metadata !DIExpression()), !dbg !5012
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_size) #19, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %data_size, metadata !4995, metadata !DIExpression()), !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_table_size) #19, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %ext_table_size, metadata !4996, metadata !DIExpression()), !dbg !5014
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc_header) #19, !dbg !5015
  call void @llvm.dbg.declare(metadata ptr %mc_header, metadata !4997, metadata !DIExpression()), !dbg !5016
  %0 = load ptr, ptr %mc.addr, align 8, !dbg !5017
  store ptr %0, ptr %mc_header, align 8, !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_header) #19, !dbg !5018
  call void @llvm.dbg.declare(metadata ptr %ext_header, metadata !4998, metadata !DIExpression()), !dbg !5019
  store ptr null, ptr %ext_header, align 8, !dbg !5019
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #19, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !4999, metadata !DIExpression()), !dbg !5021
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_sum) #19, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %orig_sum, metadata !5000, metadata !DIExpression()), !dbg !5022
  call void @llvm.lifetime.start.p0(i64 4, ptr %ext_sigcount) #19, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %ext_sigcount, metadata !5001, metadata !DIExpression()), !dbg !5023
  store i32 0, ptr %ext_sigcount, align 4, !dbg !5023
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5002, metadata !DIExpression()), !dbg !5024
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_sig) #19, !dbg !5025
  call void @llvm.dbg.declare(metadata ptr %ext_sig, metadata !5003, metadata !DIExpression()), !dbg !5026
  %1 = load ptr, ptr %mc_header, align 8, !dbg !5027
  %call = call i32 @get_totalsize(ptr noundef %1) #18, !dbg !5028
  %conv = zext i32 %call to i64, !dbg !5028
  store i64 %conv, ptr %total_size, align 8, !dbg !5029
  %2 = load ptr, ptr %mc_header, align 8, !dbg !5030
  %call1 = call i32 @intel_microcode_get_datasize(ptr noundef %2) #18, !dbg !5031
  %conv2 = sext i32 %call1 to i64, !dbg !5031
  store i64 %conv2, ptr %data_size, align 8, !dbg !5032
  %3 = load i64, ptr %data_size, align 8, !dbg !5033
  %add = add i64 %3, 48, !dbg !5035
  %4 = load i64, ptr %total_size, align 8, !dbg !5036
  %cmp = icmp ugt i64 %add, %4, !dbg !5037
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5038

if.then:                                          ; preds = %entry
  %5 = load i8, ptr %print_err.addr, align 1, !dbg !5039, !range !5042, !noundef !1048
  %tobool = trunc i8 %5 to i1, !dbg !5039
  br i1 %tobool, label %if.then4, label %if.end, !dbg !5043

if.then4:                                         ; preds = %if.then
  br label %do.body, !dbg !5044

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !5046

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5046

do.end:                                           ; preds = %do.cond
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #20, !dbg !5044
  store i32 %call5, ptr %tmp, align 4, !dbg !5046
  %6 = load i32, ptr %tmp, align 4, !dbg !5044
  br label %if.end, !dbg !5048

if.end:                                           ; preds = %do.end, %if.then
  store i32 -22, ptr %retval, align 4, !dbg !5049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5049

if.end6:                                          ; preds = %entry
  %7 = load ptr, ptr %mc_header, align 8, !dbg !5050
  %ldrver = getelementptr inbounds %struct.microcode_header_intel, ptr %7, i32 0, i32 5, !dbg !5052
  %8 = load i32, ptr %ldrver, align 4, !dbg !5052
  %cmp7 = icmp ne i32 %8, 1, !dbg !5053
  br i1 %cmp7, label %if.then11, label %lor.lhs.false, !dbg !5054

lor.lhs.false:                                    ; preds = %if.end6
  %9 = load ptr, ptr %mc_header, align 8, !dbg !5055
  %hdrver = getelementptr inbounds %struct.microcode_header_intel, ptr %9, i32 0, i32 0, !dbg !5056
  %10 = load i32, ptr %hdrver, align 4, !dbg !5056
  %11 = load i32, ptr %hdr_type.addr, align 4, !dbg !5057
  %cmp9 = icmp ne i32 %10, %11, !dbg !5058
  br i1 %cmp9, label %if.then11, label %if.end21, !dbg !5059

if.then11:                                        ; preds = %lor.lhs.false, %if.end6
  %12 = load i8, ptr %print_err.addr, align 1, !dbg !5060, !range !5042, !noundef !1048
  %tobool12 = trunc i8 %12 to i1, !dbg !5060
  br i1 %tobool12, label %if.then13, label %if.end20, !dbg !5063

if.then13:                                        ; preds = %if.then11
  br label %do.body14, !dbg !5064

do.body14:                                        ; preds = %if.then13
  br label %do.cond15, !dbg !5066

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5066

do.end16:                                         ; preds = %do.cond15
  %13 = load ptr, ptr %mc_header, align 8, !dbg !5064
  %hdrver18 = getelementptr inbounds %struct.microcode_header_intel, ptr %13, i32 0, i32 0, !dbg !5064
  %14 = load i32, ptr %hdrver18, align 4, !dbg !5064
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %14) #20, !dbg !5064
  store i32 %call19, ptr %tmp17, align 4, !dbg !5066
  %15 = load i32, ptr %tmp17, align 4, !dbg !5064
  br label %if.end20, !dbg !5068

if.end20:                                         ; preds = %do.end16, %if.then11
  store i32 -22, ptr %retval, align 4, !dbg !5069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5069

if.end21:                                         ; preds = %lor.lhs.false
  %16 = load i64, ptr %total_size, align 8, !dbg !5070
  %17 = load i64, ptr %data_size, align 8, !dbg !5071
  %add22 = add i64 48, %17, !dbg !5072
  %sub = sub i64 %16, %add22, !dbg !5073
  store i64 %sub, ptr %ext_table_size, align 8, !dbg !5074
  %18 = load i64, ptr %ext_table_size, align 8, !dbg !5075
  %tobool23 = icmp ne i64 %18, 0, !dbg !5075
  br i1 %tobool23, label %if.then24, label %if.end70, !dbg !5076

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %ext_table_sum) #19, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %ext_table_sum, metadata !5004, metadata !DIExpression()), !dbg !5078
  store i32 0, ptr %ext_table_sum, align 4, !dbg !5078
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext_tablep) #19, !dbg !5079
  call void @llvm.dbg.declare(metadata ptr %ext_tablep, metadata !5007, metadata !DIExpression()), !dbg !5080
  %19 = load i64, ptr %ext_table_size, align 8, !dbg !5081
  %cmp25 = icmp ult i64 %19, 20, !dbg !5083
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27, !dbg !5084

lor.lhs.false27:                                  ; preds = %if.then24
  %20 = load i64, ptr %ext_table_size, align 8, !dbg !5085
  %sub28 = sub i64 %20, 20, !dbg !5086
  %rem = urem i64 %sub28, 12, !dbg !5087
  %tobool29 = icmp ne i64 %rem, 0, !dbg !5087
  br i1 %tobool29, label %if.then30, label %if.end39, !dbg !5088

if.then30:                                        ; preds = %lor.lhs.false27, %if.then24
  %21 = load i8, ptr %print_err.addr, align 1, !dbg !5089, !range !5042, !noundef !1048
  %tobool31 = trunc i8 %21 to i1, !dbg !5089
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !5092

if.then32:                                        ; preds = %if.then30
  br label %do.body33, !dbg !5093

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !5095

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5095

do.end35:                                         ; preds = %do.cond34
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #20, !dbg !5093
  store i32 %call37, ptr %tmp36, align 4, !dbg !5095
  %22 = load i32, ptr %tmp36, align 4, !dbg !5093
  br label %if.end38, !dbg !5097

if.end38:                                         ; preds = %do.end35, %if.then30
  store i32 -22, ptr %retval, align 4, !dbg !5098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5098

if.end39:                                         ; preds = %lor.lhs.false27
  %23 = load ptr, ptr %mc.addr, align 8, !dbg !5099
  %add.ptr = getelementptr i8, ptr %23, i64 48, !dbg !5100
  %24 = load i64, ptr %data_size, align 8, !dbg !5101
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i64 %24, !dbg !5102
  store ptr %add.ptr40, ptr %ext_header, align 8, !dbg !5103
  %25 = load i64, ptr %ext_table_size, align 8, !dbg !5104
  %26 = load ptr, ptr %ext_header, align 8, !dbg !5106
  %call41 = call i32 @exttable_size(ptr noundef %26) #18, !dbg !5107
  %conv42 = zext i32 %call41 to i64, !dbg !5107
  %cmp43 = icmp ne i64 %25, %conv42, !dbg !5108
  br i1 %cmp43, label %if.then45, label %if.end54, !dbg !5109

if.then45:                                        ; preds = %if.end39
  %27 = load i8, ptr %print_err.addr, align 1, !dbg !5110, !range !5042, !noundef !1048
  %tobool46 = trunc i8 %27 to i1, !dbg !5110
  br i1 %tobool46, label %if.then47, label %if.end53, !dbg !5113

if.then47:                                        ; preds = %if.then45
  br label %do.body48, !dbg !5114

do.body48:                                        ; preds = %if.then47
  br label %do.cond49, !dbg !5116

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !5116

do.end50:                                         ; preds = %do.cond49
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #20, !dbg !5114
  store i32 %call52, ptr %tmp51, align 4, !dbg !5116
  %28 = load i32, ptr %tmp51, align 4, !dbg !5114
  br label %if.end53, !dbg !5118

if.end53:                                         ; preds = %do.end50, %if.then45
  store i32 -14, ptr %retval, align 4, !dbg !5119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5119

if.end54:                                         ; preds = %if.end39
  %29 = load ptr, ptr %ext_header, align 8, !dbg !5120
  %count = getelementptr inbounds %struct.extended_sigtable, ptr %29, i32 0, i32 0, !dbg !5121
  %30 = load i32, ptr %count, align 4, !dbg !5121
  store i32 %30, ptr %ext_sigcount, align 4, !dbg !5122
  %31 = load ptr, ptr %ext_header, align 8, !dbg !5123
  store ptr %31, ptr %ext_tablep, align 8, !dbg !5124
  %32 = load i64, ptr %ext_table_size, align 8, !dbg !5125
  %div = udiv i64 %32, 4, !dbg !5126
  %conv55 = trunc i64 %div to i32, !dbg !5125
  store i32 %conv55, ptr %i, align 4, !dbg !5127
  br label %while.cond, !dbg !5128

while.cond:                                       ; preds = %while.body, %if.end54
  %33 = load i32, ptr %i, align 4, !dbg !5129
  %dec = add i32 %33, -1, !dbg !5129
  store i32 %dec, ptr %i, align 4, !dbg !5129
  %tobool56 = icmp ne i32 %33, 0, !dbg !5128
  br i1 %tobool56, label %while.body, label %while.end, !dbg !5128

while.body:                                       ; preds = %while.cond
  %34 = load ptr, ptr %ext_tablep, align 8, !dbg !5130
  %35 = load i32, ptr %i, align 4, !dbg !5131
  %idxprom = zext i32 %35 to i64, !dbg !5130
  %arrayidx = getelementptr i32, ptr %34, i64 %idxprom, !dbg !5130
  %36 = load i32, ptr %arrayidx, align 4, !dbg !5130
  %37 = load i32, ptr %ext_table_sum, align 4, !dbg !5132
  %add57 = add i32 %37, %36, !dbg !5132
  store i32 %add57, ptr %ext_table_sum, align 4, !dbg !5132
  br label %while.cond, !dbg !5128, !llvm.loop !5133

while.end:                                        ; preds = %while.cond
  %38 = load i32, ptr %ext_table_sum, align 4, !dbg !5135
  %tobool58 = icmp ne i32 %38, 0, !dbg !5135
  br i1 %tobool58, label %if.then59, label %if.end68, !dbg !5137

if.then59:                                        ; preds = %while.end
  %39 = load i8, ptr %print_err.addr, align 1, !dbg !5138, !range !5042, !noundef !1048
  %tobool60 = trunc i8 %39 to i1, !dbg !5138
  br i1 %tobool60, label %if.then61, label %if.end67, !dbg !5141

if.then61:                                        ; preds = %if.then59
  br label %do.body62, !dbg !5142

do.body62:                                        ; preds = %if.then61
  br label %do.cond63, !dbg !5144

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !5144

do.end64:                                         ; preds = %do.cond63
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #20, !dbg !5142
  store i32 %call66, ptr %tmp65, align 4, !dbg !5144
  %40 = load i32, ptr %tmp65, align 4, !dbg !5142
  br label %if.end67, !dbg !5146

if.end67:                                         ; preds = %do.end64, %if.then59
  store i32 -22, ptr %retval, align 4, !dbg !5147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5147

if.end68:                                         ; preds = %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5148
  br label %cleanup, !dbg !5148

cleanup:                                          ; preds = %if.end68, %if.end67, %if.end53, %if.end38
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_tablep) #19, !dbg !5148
  call void @llvm.lifetime.end.p0(i64 4, ptr %ext_table_sum) #19, !dbg !5148
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end70, !dbg !5149

if.end70:                                         ; preds = %cleanup.cont, %if.end21
  store i32 0, ptr %orig_sum, align 4, !dbg !5150
  %41 = load i64, ptr %data_size, align 8, !dbg !5151
  %add71 = add i64 48, %41, !dbg !5152
  %div72 = udiv i64 %add71, 4, !dbg !5153
  %conv73 = trunc i64 %div72 to i32, !dbg !5154
  store i32 %conv73, ptr %i, align 4, !dbg !5155
  br label %while.cond74, !dbg !5156

while.cond74:                                     ; preds = %while.body77, %if.end70
  %42 = load i32, ptr %i, align 4, !dbg !5157
  %dec75 = add i32 %42, -1, !dbg !5157
  store i32 %dec75, ptr %i, align 4, !dbg !5157
  %tobool76 = icmp ne i32 %42, 0, !dbg !5156
  br i1 %tobool76, label %while.body77, label %while.end81, !dbg !5156

while.body77:                                     ; preds = %while.cond74
  %43 = load ptr, ptr %mc.addr, align 8, !dbg !5158
  %44 = load i32, ptr %i, align 4, !dbg !5159
  %idxprom78 = zext i32 %44 to i64, !dbg !5160
  %arrayidx79 = getelementptr i32, ptr %43, i64 %idxprom78, !dbg !5160
  %45 = load i32, ptr %arrayidx79, align 4, !dbg !5160
  %46 = load i32, ptr %orig_sum, align 4, !dbg !5161
  %add80 = add i32 %46, %45, !dbg !5161
  store i32 %add80, ptr %orig_sum, align 4, !dbg !5161
  br label %while.cond74, !dbg !5156, !llvm.loop !5162

while.end81:                                      ; preds = %while.cond74
  %47 = load i32, ptr %orig_sum, align 4, !dbg !5164
  %tobool82 = icmp ne i32 %47, 0, !dbg !5164
  br i1 %tobool82, label %if.then83, label %if.end92, !dbg !5166

if.then83:                                        ; preds = %while.end81
  %48 = load i8, ptr %print_err.addr, align 1, !dbg !5167, !range !5042, !noundef !1048
  %tobool84 = trunc i8 %48 to i1, !dbg !5167
  br i1 %tobool84, label %if.then85, label %if.end91, !dbg !5170

if.then85:                                        ; preds = %if.then83
  br label %do.body86, !dbg !5171

do.body86:                                        ; preds = %if.then85
  br label %do.cond87, !dbg !5173

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !5173

do.end88:                                         ; preds = %do.cond87
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #20, !dbg !5171
  store i32 %call90, ptr %tmp89, align 4, !dbg !5173
  %49 = load i32, ptr %tmp89, align 4, !dbg !5171
  br label %if.end91, !dbg !5175

if.end91:                                         ; preds = %do.end88, %if.then83
  store i32 -22, ptr %retval, align 4, !dbg !5176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5176

if.end92:                                         ; preds = %while.end81
  %50 = load i64, ptr %ext_table_size, align 8, !dbg !5177
  %tobool93 = icmp ne i64 %50, 0, !dbg !5177
  br i1 %tobool93, label %if.end95, label %if.then94, !dbg !5179

if.then94:                                        ; preds = %if.end92
  store i32 0, ptr %retval, align 4, !dbg !5180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5180

if.end95:                                         ; preds = %if.end92
  store i32 0, ptr %i, align 4, !dbg !5181
  br label %for.cond, !dbg !5183

for.cond:                                         ; preds = %for.inc, %if.end95
  %51 = load i32, ptr %i, align 4, !dbg !5184
  %52 = load i32, ptr %ext_sigcount, align 4, !dbg !5186
  %cmp96 = icmp ult i32 %51, %52, !dbg !5187
  br i1 %cmp96, label %for.body, label %for.end, !dbg !5188

for.body:                                         ; preds = %for.cond
  %53 = load ptr, ptr %ext_header, align 8, !dbg !5189
  %add.ptr98 = getelementptr i8, ptr %53, i64 20, !dbg !5191
  %54 = load i32, ptr %i, align 4, !dbg !5192
  %conv99 = zext i32 %54 to i64, !dbg !5192
  %mul = mul i64 12, %conv99, !dbg !5193
  %add.ptr100 = getelementptr i8, ptr %add.ptr98, i64 %mul, !dbg !5194
  store ptr %add.ptr100, ptr %ext_sig, align 8, !dbg !5195
  %55 = load ptr, ptr %mc_header, align 8, !dbg !5196
  %sig = getelementptr inbounds %struct.microcode_header_intel, ptr %55, i32 0, i32 3, !dbg !5197
  %56 = load i32, ptr %sig, align 4, !dbg !5197
  %57 = load ptr, ptr %mc_header, align 8, !dbg !5198
  %pf = getelementptr inbounds %struct.microcode_header_intel, ptr %57, i32 0, i32 6, !dbg !5199
  %58 = load i32, ptr %pf, align 4, !dbg !5199
  %add101 = add i32 %56, %58, !dbg !5200
  %59 = load ptr, ptr %mc_header, align 8, !dbg !5201
  %cksum = getelementptr inbounds %struct.microcode_header_intel, ptr %59, i32 0, i32 4, !dbg !5202
  %60 = load i32, ptr %cksum, align 4, !dbg !5202
  %add102 = add i32 %add101, %60, !dbg !5203
  %61 = load ptr, ptr %ext_sig, align 8, !dbg !5204
  %sig103 = getelementptr inbounds %struct.extended_signature, ptr %61, i32 0, i32 0, !dbg !5205
  %62 = load i32, ptr %sig103, align 4, !dbg !5205
  %63 = load ptr, ptr %ext_sig, align 8, !dbg !5206
  %pf104 = getelementptr inbounds %struct.extended_signature, ptr %63, i32 0, i32 1, !dbg !5207
  %64 = load i32, ptr %pf104, align 4, !dbg !5207
  %add105 = add i32 %62, %64, !dbg !5208
  %65 = load ptr, ptr %ext_sig, align 8, !dbg !5209
  %cksum106 = getelementptr inbounds %struct.extended_signature, ptr %65, i32 0, i32 2, !dbg !5210
  %66 = load i32, ptr %cksum106, align 4, !dbg !5210
  %add107 = add i32 %add105, %66, !dbg !5211
  %sub108 = sub i32 %add102, %add107, !dbg !5212
  store i32 %sub108, ptr %sum, align 4, !dbg !5213
  %67 = load i32, ptr %sum, align 4, !dbg !5214
  %tobool109 = icmp ne i32 %67, 0, !dbg !5214
  br i1 %tobool109, label %if.then110, label %if.end119, !dbg !5216

if.then110:                                       ; preds = %for.body
  %68 = load i8, ptr %print_err.addr, align 1, !dbg !5217, !range !5042, !noundef !1048
  %tobool111 = trunc i8 %68 to i1, !dbg !5217
  br i1 %tobool111, label %if.then112, label %if.end118, !dbg !5220

if.then112:                                       ; preds = %if.then110
  br label %do.body113, !dbg !5221

do.body113:                                       ; preds = %if.then112
  br label %do.cond114, !dbg !5223

do.cond114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !5223

do.end115:                                        ; preds = %do.cond114
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #20, !dbg !5221
  store i32 %call117, ptr %tmp116, align 4, !dbg !5223
  %69 = load i32, ptr %tmp116, align 4, !dbg !5221
  br label %if.end118, !dbg !5225

if.end118:                                        ; preds = %do.end115, %if.then110
  store i32 -22, ptr %retval, align 4, !dbg !5226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5226

if.end119:                                        ; preds = %for.body
  br label %for.inc, !dbg !5227

for.inc:                                          ; preds = %if.end119
  %70 = load i32, ptr %i, align 4, !dbg !5228
  %inc = add i32 %70, 1, !dbg !5228
  store i32 %inc, ptr %i, align 4, !dbg !5228
  br label %for.cond, !dbg !5229, !llvm.loop !5230

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5232

cleanup120:                                       ; preds = %for.end, %if.end118, %if.then94, %if.end91, %cleanup, %if.end20, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_sig) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 4, ptr %ext_sigcount) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_sum) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_header) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc_header) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext_table_size) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_size) #19, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_size) #19, !dbg !5233
  %71 = load i32, ptr %retval, align 4, !dbg !5233
  ret i32 %71, !dbg !5233
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5234 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @exttable_size(ptr noundef %et) #2 align 16 !dbg !5238 {
entry:
  %et.addr = alloca ptr, align 8
  store ptr %et, ptr %et.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %et.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  %0 = load ptr, ptr %et.addr, align 8, !dbg !5244
  %count = getelementptr inbounds %struct.extended_sigtable, ptr %0, i32 0, i32 0, !dbg !5245
  %1 = load i32, ptr %count, align 4, !dbg !5245
  %conv = zext i32 %1 to i64, !dbg !5244
  %mul = mul i64 %conv, 12, !dbg !5246
  %add = add i64 %mul, 20, !dbg !5247
  %conv1 = trunc i64 %add to i32, !dbg !5244
  ret i32 %conv1, !dbg !5248
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_microcode__290_400_save_builtin_microcodeearly() #7 section ".init.text" align 16 !dbg !5249 {
entry:
  %call = call i32 @save_builtin_microcode() #20, !dbg !5250
  ret i32 %call, !dbg !5250
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @save_builtin_microcode() #7 section ".init.text" align 16 !dbg !5251 {
entry:
  %retval = alloca i32, align 4
  %uci = alloca %struct.ucode_cpu_info, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr %uci) #19, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5253, metadata !DIExpression()), !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #19, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5258, metadata !DIExpression()), !dbg !5266
  store ptr @ucode_patch_va, ptr %__ai_ptr, align 8, !dbg !5266
  br label %do.body, !dbg !5266

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5267

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5267

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %__ai_ptr, align 8, !dbg !5266
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #18, !dbg !5266
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #19, !dbg !5269
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5262, metadata !DIExpression()), !dbg !5269
  store ptr null, ptr %__ret, align 8, !dbg !5269
  %1 = load ptr, ptr %__ret, align 8, !dbg !5269
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !5269
  %3 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %2, ptr %1, ptr elementtype(ptr) %2) #19, !dbg !5269, !srcloc !5270
  store ptr %3, ptr %__ret, align 8, !dbg !5269
  %4 = load ptr, ptr %__ret, align 8, !dbg !5269
  store ptr %4, ptr %tmp1, align 8, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #19, !dbg !5266
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5269
  store ptr %5, ptr %tmp, align 8, !dbg !5266
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #19, !dbg !5271
  %6 = load ptr, ptr %tmp, align 8, !dbg !5266
  %cmp = icmp ne ptr %6, inttoptr (i64 1 to ptr), !dbg !5272
  br i1 %cmp, label %if.then, label %if.end, !dbg !5273

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !5274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5274

if.end:                                           ; preds = %do.end
  %7 = load i8, ptr @dis_ucode_ldr, align 1, !dbg !5275, !range !5042, !noundef !1048
  %tobool = trunc i8 %7 to i1, !dbg !5275
  br i1 %tobool, label %if.then4, label %lor.lhs.false, !dbg !5277

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i8, ptr getelementptr inbounds (%struct.anon.14, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5278
  %conv = zext i8 %8 to i32, !dbg !5279
  %cmp2 = icmp ne i32 %conv, 0, !dbg !5280
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5281

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5282

if.end5:                                          ; preds = %lor.lhs.false
  %call = call ptr @get_microcode_blob(ptr noundef %uci, i1 noundef zeroext true) #20, !dbg !5283
  %mc = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5284
  store ptr %call, ptr %mc, align 8, !dbg !5285
  %mc6 = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5286
  %9 = load ptr, ptr %mc6, align 8, !dbg !5286
  %tobool7 = icmp ne ptr %9, null, !dbg !5288
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5289

if.then8:                                         ; preds = %if.end5
  %mc9 = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5290
  %10 = load ptr, ptr %mc9, align 8, !dbg !5290
  call void @save_microcode_patch(ptr noundef %10) #18, !dbg !5291
  br label %if.end10, !dbg !5291

if.end10:                                         ; preds = %if.then8, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !5292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5292

cleanup:                                          ; preds = %if.end10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %uci) #19, !dbg !5293
  %11 = load i32, ptr %retval, align 4, !dbg !5293
  ret i32 %11, !dbg !5293
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @load_ucode_intel_bsp(ptr noundef %ed) #7 section ".init.text" align 16 !dbg !5294 {
entry:
  %ed.addr = alloca ptr, align 8
  %uci = alloca %struct.ucode_cpu_info, align 8
  store ptr %ed, ptr %ed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ed.addr, metadata !5303, metadata !DIExpression()), !dbg !5305
  call void @llvm.lifetime.start.p0(i64 24, ptr %uci) #19, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5304, metadata !DIExpression()), !dbg !5307
  %call = call ptr @get_microcode_blob(ptr noundef %uci, i1 noundef zeroext false) #20, !dbg !5308
  %mc = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5309
  store ptr %call, ptr %mc, align 8, !dbg !5310
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 0, !dbg !5311
  %rev = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig, i32 0, i32 2, !dbg !5312
  %0 = load i32, ptr %rev, align 8, !dbg !5312
  %1 = load ptr, ptr %ed.addr, align 8, !dbg !5313
  %old_rev = getelementptr inbounds %struct.early_load_data, ptr %1, i32 0, i32 0, !dbg !5314
  store i32 %0, ptr %old_rev, align 4, !dbg !5315
  %mc1 = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5316
  %2 = load ptr, ptr %mc1, align 8, !dbg !5316
  %tobool = icmp ne ptr %2, null, !dbg !5318
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5319

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @apply_microcode_early(ptr noundef %uci) #18, !dbg !5320
  %cmp = icmp eq i32 %call2, 3, !dbg !5321
  br i1 %cmp, label %if.then, label %if.end, !dbg !5322

if.then:                                          ; preds = %land.lhs.true
  store ptr inttoptr (i64 1 to ptr), ptr @ucode_patch_va, align 8, !dbg !5323
  %cpu_sig3 = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 0, !dbg !5325
  %rev4 = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig3, i32 0, i32 2, !dbg !5326
  %3 = load i32, ptr %rev4, align 8, !dbg !5326
  %4 = load ptr, ptr %ed.addr, align 8, !dbg !5327
  %new_rev = getelementptr inbounds %struct.early_load_data, ptr %4, i32 0, i32 1, !dbg !5328
  store i32 %3, ptr %new_rev, align 4, !dbg !5329
  br label %if.end, !dbg !5330

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr %uci) #19, !dbg !5331
  ret void, !dbg !5331
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @get_microcode_blob(ptr noundef %uci, i1 noundef zeroext %save) #7 section ".init.text" align 16 !dbg !5332 {
entry:
  %retval = alloca ptr, align 8
  %uci.addr = alloca ptr, align 8
  %save.addr = alloca i8, align 1
  %cp = alloca %struct.cpio_data, align 8
  %tmp = alloca %struct.cpio_data, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uci, ptr %uci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uci.addr, metadata !5337, metadata !DIExpression()), !dbg !5349
  %frombool = zext i1 %save to i8
  store i8 %frombool, ptr %save.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %save.addr, metadata !5338, metadata !DIExpression()), !dbg !5350
  call void @llvm.lifetime.start.p0(i64 40, ptr %cp) #19, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !5339, metadata !DIExpression()), !dbg !5352
  %0 = load ptr, ptr %uci.addr, align 8, !dbg !5353
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %0, i32 0, i32 0, !dbg !5354
  call void @intel_collect_cpu_info(ptr noundef %cpu_sig) #18, !dbg !5355
  %call = call zeroext i1 @load_builtin_intel_microcode(ptr noundef %cp) #20, !dbg !5356
  br i1 %call, label %if.end, label %if.then, !dbg !5358

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp) #19, !dbg !5359
  call void @find_microcode_in_initrd(ptr dead_on_unwind writable sret(%struct.cpio_data) align 8 %tmp, ptr noundef @ucode_path) #18, !dbg !5359
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cp, ptr align 8 %tmp, i64 40, i1 false), !dbg !5359
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp) #19, !dbg !5359
  br label %if.end, !dbg !5360

if.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.cpio_data, ptr %cp, i32 0, i32 0, !dbg !5361
  %1 = load ptr, ptr %data, align 8, !dbg !5361
  %tobool = icmp ne ptr %1, null, !dbg !5363
  br i1 %tobool, label %land.lhs.true, label %if.then2, !dbg !5364

land.lhs.true:                                    ; preds = %if.end
  %size = getelementptr inbounds %struct.cpio_data, ptr %cp, i32 0, i32 1, !dbg !5365
  %2 = load i64, ptr %size, align 8, !dbg !5365
  %tobool1 = icmp ne i64 %2, 0, !dbg !5366
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5367

if.then2:                                         ; preds = %land.lhs.true, %if.end
  store ptr null, ptr %retval, align 8, !dbg !5368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5368

if.end3:                                          ; preds = %land.lhs.true
  %data4 = getelementptr inbounds %struct.cpio_data, ptr %cp, i32 0, i32 0, !dbg !5369
  %3 = load ptr, ptr %data4, align 8, !dbg !5369
  %size5 = getelementptr inbounds %struct.cpio_data, ptr %cp, i32 0, i32 1, !dbg !5370
  %4 = load i64, ptr %size5, align 8, !dbg !5370
  %5 = load ptr, ptr %uci.addr, align 8, !dbg !5371
  %6 = load i8, ptr %save.addr, align 1, !dbg !5372, !range !5042, !noundef !1048
  %tobool6 = trunc i8 %6 to i1, !dbg !5372
  %call7 = call ptr @scan_microcode(ptr noundef %3, i64 noundef %4, ptr noundef %5, i1 noundef zeroext %tobool6) #20, !dbg !5373
  store ptr %call7, ptr %retval, align 8, !dbg !5374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5374

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 40, ptr %cp) #19, !dbg !5375
  %7 = load ptr, ptr %retval, align 8, !dbg !5375
  ret ptr %7, !dbg !5375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apply_microcode_early(ptr noundef %uci) #0 align 16 !dbg !5376 {
entry:
  %uci.addr = alloca ptr, align 8
  %mc = alloca ptr, align 8
  %cur_rev = alloca i32, align 4
  store ptr %uci, ptr %uci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uci.addr, metadata !5380, metadata !DIExpression()), !dbg !5383
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc) #19, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %mc, metadata !5381, metadata !DIExpression()), !dbg !5385
  %0 = load ptr, ptr %uci.addr, align 8, !dbg !5386
  %mc1 = getelementptr inbounds %struct.ucode_cpu_info, ptr %0, i32 0, i32 1, !dbg !5387
  %1 = load ptr, ptr %mc1, align 8, !dbg !5387
  store ptr %1, ptr %mc, align 8, !dbg !5385
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_rev) #19, !dbg !5388
  call void @llvm.dbg.declare(metadata ptr %cur_rev, metadata !5382, metadata !DIExpression()), !dbg !5389
  %2 = load ptr, ptr %uci.addr, align 8, !dbg !5390
  %3 = load ptr, ptr %mc, align 8, !dbg !5391
  %call = call i32 @__apply_microcode(ptr noundef %2, ptr noundef %3, ptr noundef %cur_rev) #18, !dbg !5392
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_rev) #19, !dbg !5393
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc) #19, !dbg !5393
  ret i32 %call, !dbg !5394
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @load_ucode_intel_ap() #0 align 16 !dbg !5395 {
entry:
  %uci = alloca %struct.ucode_cpu_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %uci) #19, !dbg !5398
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5397, metadata !DIExpression()), !dbg !5399
  %0 = load ptr, ptr @ucode_patch_va, align 8, !dbg !5400
  %mc = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5401
  store ptr %0, ptr %mc, align 8, !dbg !5402
  %mc1 = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5403
  %1 = load ptr, ptr %mc1, align 8, !dbg !5403
  %tobool = icmp ne ptr %1, null, !dbg !5405
  br i1 %tobool, label %if.then, label %if.end, !dbg !5406

if.then:                                          ; preds = %entry
  %call = call i32 @apply_microcode_early(ptr noundef %uci) #18, !dbg !5407
  br label %if.end, !dbg !5407

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr %uci) #19, !dbg !5408
  ret void, !dbg !5408
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @reload_ucode_intel() #0 align 16 !dbg !5409 {
entry:
  %uci = alloca %struct.ucode_cpu_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %uci) #19, !dbg !5412
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5411, metadata !DIExpression()), !dbg !5413
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 0, !dbg !5414
  call void @llvm.memset.p0.i64(ptr align 8 %cpu_sig, i8 0, i64 12, i1 false), !dbg !5414
  %mc = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5414
  %0 = load ptr, ptr @ucode_patch_va, align 8, !dbg !5415
  store ptr %0, ptr %mc, align 8, !dbg !5414
  %mc1 = getelementptr inbounds %struct.ucode_cpu_info, ptr %uci, i32 0, i32 1, !dbg !5416
  %1 = load ptr, ptr %mc1, align 8, !dbg !5416
  %tobool = icmp ne ptr %1, null, !dbg !5418
  br i1 %tobool, label %if.then, label %if.end, !dbg !5419

if.then:                                          ; preds = %entry
  %call = call i32 @apply_microcode_early(ptr noundef %uci) #18, !dbg !5420
  br label %if.end, !dbg !5420

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr %uci) #19, !dbg !5421
  ret void, !dbg !5421
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @init_intel_microcode() #7 section ".init.text" align 16 !dbg !5422 {
entry:
  %retval = alloca ptr, align 8
  %c = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5427, metadata !DIExpression()), !dbg !5429
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !5429
  %0 = load ptr, ptr %c, align 8, !dbg !5430
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !5432
  %x86_vendor = getelementptr inbounds %struct.anon.14, ptr %1, i32 0, i32 2, !dbg !5432
  %2 = load i8, ptr %x86_vendor, align 2, !dbg !5432
  %conv = zext i8 %2 to i32, !dbg !5430
  %cmp = icmp ne i32 %conv, 0, !dbg !5433
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5434

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !5435
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !5436
  %x86 = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 1, !dbg !5436
  %5 = load i8, ptr %x86, align 1, !dbg !5436
  %conv2 = zext i8 %5 to i32, !dbg !5435
  %cmp3 = icmp slt i32 %conv2, 6, !dbg !5437
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !5438

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  br i1 false, label %cond.true, label %cond.false, !dbg !5439

cond.true:                                        ; preds = %lor.lhs.false5
  br i1 true, label %if.then, label %if.end, !dbg !5440

cond.false:                                       ; preds = %lor.lhs.false5
  %6 = load ptr, ptr %c, align 8, !dbg !5440
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 10, !dbg !5440
  %arraydecay = getelementptr inbounds [24 x i32], ptr %7, i64 0, i64 0, !dbg !5440
  %call = call zeroext i1 @arch_test_bit(i64 noundef 30, ptr noundef %arraydecay) #18, !dbg !5440
  br i1 %call, label %if.then, label %if.end, !dbg !5439

if.then:                                          ; preds = %cond.false, %cond.true, %lor.lhs.false, %entry
  br label %do.body, !dbg !5441

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5444

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5444

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %c, align 8, !dbg !5441
  %9 = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 0, !dbg !5441
  %x867 = getelementptr inbounds %struct.anon.14, ptr %9, i32 0, i32 1, !dbg !5441
  %10 = load i8, ptr %x867, align 1, !dbg !5441
  %conv8 = zext i8 %10 to i32, !dbg !5441
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %conv8) #20, !dbg !5441
  store i32 %call9, ptr %tmp, align 4, !dbg !5444
  %11 = load i32, ptr %tmp, align 4, !dbg !5441
  store ptr null, ptr %retval, align 8, !dbg !5446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5446

if.end:                                           ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %c, align 8, !dbg !5447
  call void @calc_llc_size_per_core(ptr noundef %12) #20, !dbg !5448
  store ptr @microcode_intel_ops, ptr %retval, align 8, !dbg !5449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5449

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !5450
  %13 = load ptr, ptr %retval, align 8, !dbg !5450
  ret ptr %13, !dbg !5450
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5451 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5459, metadata !DIExpression()), !dbg !5461
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5460, metadata !DIExpression()), !dbg !5462
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5463
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5464
  br i1 %1, label %cond.true, label %cond.false, !dbg !5464

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5465
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5466
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5467
  %conv = zext i1 %call to i32, !dbg !5467
  br label %cond.end, !dbg !5464

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5468
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5469
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !5470
  %conv2 = zext i1 %call1 to i32, !dbg !5470
  br label %cond.end, !dbg !5464

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5464
  %tobool = icmp ne i32 %cond, 0, !dbg !5464
  ret i1 %tobool, !dbg !5471
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @calc_llc_size_per_core(ptr noundef %c) #7 section ".init.text" align 16 !dbg !5472 {
entry:
  %c.addr = alloca ptr, align 8
  %llc_size = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5476, metadata !DIExpression()), !dbg !5481
  call void @llvm.lifetime.start.p0(i64 8, ptr %llc_size) #19, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %llc_size, metadata !5477, metadata !DIExpression()), !dbg !5483
  %0 = load ptr, ptr %c.addr, align 8, !dbg !5484
  %x86_cache_size = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 13, !dbg !5485
  %1 = load i32, ptr %x86_cache_size, align 8, !dbg !5485
  %conv = zext i32 %1 to i64, !dbg !5484
  %mul = mul i64 %conv, 1024, !dbg !5486
  store i64 %mul, ptr %llc_size, align 8, !dbg !5483
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #19, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !5478, metadata !DIExpression()), !dbg !5487
  %2 = load ptr, ptr %c.addr, align 8, !dbg !5487
  %x86_max_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 21, !dbg !5487
  %3 = load i16, ptr %x86_max_cores, align 8, !dbg !5487
  %conv1 = zext i16 %3 to i32, !dbg !5487
  store i32 %conv1, ptr %__base, align 4, !dbg !5487
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #19, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !5480, metadata !DIExpression()), !dbg !5487
  %4 = load i64, ptr %llc_size, align 8, !dbg !5487
  %5 = load i32, ptr %__base, align 4, !dbg !5487
  %conv2 = zext i32 %5 to i64, !dbg !5487
  %rem = urem i64 %4, %conv2, !dbg !5487
  %conv3 = trunc i64 %rem to i32, !dbg !5487
  store i32 %conv3, ptr %__rem, align 4, !dbg !5487
  %6 = load i64, ptr %llc_size, align 8, !dbg !5487
  %7 = load i32, ptr %__base, align 4, !dbg !5487
  %conv4 = zext i32 %7 to i64, !dbg !5487
  %div = udiv i64 %6, %conv4, !dbg !5487
  store i64 %div, ptr %llc_size, align 8, !dbg !5487
  %8 = load i32, ptr %__rem, align 4, !dbg !5487
  store i32 %8, ptr %tmp, align 4, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #19, !dbg !5488
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #19, !dbg !5488
  %9 = load i32, ptr %tmp, align 4, !dbg !5487
  %10 = load i64, ptr %llc_size, align 8, !dbg !5489
  %conv5 = trunc i64 %10 to i32, !dbg !5490
  store i32 %conv5, ptr @llc_size_per_core, align 4, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %llc_size) #19, !dbg !5492
  ret void, !dbg !5492
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #2 align 16 !dbg !5493 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5497, metadata !DIExpression()), !dbg !5502
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !5498, metadata !DIExpression()), !dbg !5503
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !5499, metadata !DIExpression()), !dbg !5504
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !5500, metadata !DIExpression()), !dbg !5505
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !5501, metadata !DIExpression()), !dbg !5506
  %0 = load i32, ptr %op.addr, align 4, !dbg !5507
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !5508
  store i32 %0, ptr %1, align 4, !dbg !5509
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !5510
  store i32 0, ptr %2, align 4, !dbg !5511
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !5512
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !5513
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !5514
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !5515
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #18, !dbg !5516
  ret void, !dbg !5517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #2 align 16 !dbg !5518 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !5522, metadata !DIExpression()), !dbg !5526
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !5523, metadata !DIExpression()), !dbg !5527
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !5524, metadata !DIExpression()), !dbg !5528
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !5525, metadata !DIExpression()), !dbg !5529
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !5530
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !5531
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !5532
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !5533
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !5534
  %5 = load i32, ptr %4, align 4, !dbg !5535
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !5536
  %7 = load i32, ptr %6, align 4, !dbg !5537
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #19, !dbg !5538, !srcloc !5539
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !5538
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !5538
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !5538
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !5538
  store i32 %asmresult, ptr %0, align 4, !dbg !5538
  store i32 %asmresult1, ptr %1, align 4, !dbg !5538
  store i32 %asmresult2, ptr %2, align 4, !dbg !5538
  store i32 %asmresult3, ptr %3, align 4, !dbg !5538
  ret void, !dbg !5540
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #5 align 16 !dbg !5541 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5545, metadata !DIExpression()), !dbg !5548
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5546, metadata !DIExpression()), !dbg !5549
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !5547, metadata !DIExpression()), !dbg !5550
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5551
  %1 = load i32, ptr %low.addr, align 4, !dbg !5552
  %2 = load i32, ptr %high.addr, align 4, !dbg !5553
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #19, !dbg !5554, !srcloc !5555
  ret void, !dbg !5556
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_cpuid_eax(i32 noundef %op) #2 align 16 !dbg !5557 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5559, metadata !DIExpression()), !dbg !5564
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #19, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !5560, metadata !DIExpression()), !dbg !5564
  %0 = load i32, ptr %op.addr, align 4, !dbg !5564
  store i32 %0, ptr %eax, align 4, !dbg !5564
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #19, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !5561, metadata !DIExpression()), !dbg !5564
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #19, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !5562, metadata !DIExpression()), !dbg !5564
  store i32 0, ptr %ecx, align 4, !dbg !5564
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #19, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !5563, metadata !DIExpression()), !dbg !5564
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #18, !dbg !5564
  %1 = load i32, ptr %eax, align 4, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #19, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #19, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #19, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #19, !dbg !5564
  ret i32 %1, !dbg !5564
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5565 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5573, metadata !DIExpression()), !dbg !5575
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5574, metadata !DIExpression()), !dbg !5576
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5577
  %1 = load i64, ptr %size.addr, align 8, !dbg !5578
  %conv = trunc i64 %1 to i32, !dbg !5578
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5579
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5580
  %3 = load i64, ptr %size.addr, align 8, !dbg !5580
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !5580
  ret void, !dbg !5581
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @save_microcode_patch(ptr noundef %patch) #0 align 16 !dbg !5582 {
entry:
  %patch.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %mc = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %patch, ptr %patch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %patch.addr, metadata !5586, metadata !DIExpression()), !dbg !5589
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #19, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5587, metadata !DIExpression()), !dbg !5591
  %0 = load ptr, ptr %patch.addr, align 8, !dbg !5592
  %hdr = getelementptr inbounds %struct.microcode_intel, ptr %0, i32 0, i32 0, !dbg !5593
  %call = call i32 @get_totalsize(ptr noundef %hdr) #18, !dbg !5594
  store i32 %call, ptr %size, align 4, !dbg !5591
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc) #19, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %mc, metadata !5588, metadata !DIExpression()), !dbg !5596
  %1 = load ptr, ptr %patch.addr, align 8, !dbg !5597
  %2 = load i32, ptr %size, align 4, !dbg !5598
  %conv = zext i32 %2 to i64, !dbg !5598
  %call1 = call ptr @kvmemdup(ptr noundef %1, i64 noundef %conv, i32 noundef 3264) #21, !dbg !5599
  store ptr %call1, ptr %mc, align 8, !dbg !5600
  %3 = load ptr, ptr %mc, align 8, !dbg !5601
  %tobool = icmp ne ptr %3, null, !dbg !5601
  br i1 %tobool, label %if.then, label %if.else, !dbg !5603

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mc, align 8, !dbg !5604
  call void @update_ucode_pointer(ptr noundef %4) #18, !dbg !5605
  br label %if.end, !dbg !5605

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !5606

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !5608

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5608

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %size, align 4, !dbg !5606
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %5) #20, !dbg !5606
  store i32 %call2, ptr %tmp, align 4, !dbg !5608
  %6 = load i32, ptr %tmp, align 4, !dbg !5606
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc) #19, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #19, !dbg !5610
  ret void, !dbg !5610
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !5611 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5616, metadata !DIExpression()), !dbg !5618
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5617, metadata !DIExpression()), !dbg !5619
  ret i1 true, !dbg !5620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !5621 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5626, metadata !DIExpression()), !dbg !5629
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5627, metadata !DIExpression()), !dbg !5630
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5628, metadata !DIExpression()), !dbg !5631
  ret void, !dbg !5632
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !5633 dso_local ptr @kvmemdup(ptr noundef, i64 noundef, i32 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_ucode_pointer(ptr noundef %mc) #0 align 16 !dbg !5637 {
entry:
  %mc.addr = alloca ptr, align 8
  store ptr %mc, ptr %mc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mc.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  %0 = load ptr, ptr @ucode_patch_va, align 8, !dbg !5641
  call void @kvfree(ptr noundef %0) #18, !dbg !5642
  %1 = load ptr, ptr %mc.addr, align 8, !dbg !5643
  store ptr %1, ptr @ucode_patch_va, align 8, !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5646 dso_local void @kvfree(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @load_builtin_intel_microcode(ptr noundef %cp) #7 section ".init.text" align 16 !dbg !5650 {
entry:
  %retval = alloca i1, align 1
  %cp.addr = alloca ptr, align 8
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %fw = alloca %struct.firmware, align 8
  %name = alloca [30 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cp, ptr %cp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !5655, metadata !DIExpression()), !dbg !5673
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #19, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !5656, metadata !DIExpression()), !dbg !5675
  store i32 1, ptr %eax, align 4, !dbg !5675
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #19, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !5657, metadata !DIExpression()), !dbg !5676
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #19, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !5658, metadata !DIExpression()), !dbg !5677
  store i32 0, ptr %ecx, align 4, !dbg !5677
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #19, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !5659, metadata !DIExpression()), !dbg !5678
  call void @llvm.lifetime.start.p0(i64 24, ptr %fw) #19, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %fw, metadata !5660, metadata !DIExpression()), !dbg !5680
  call void @llvm.lifetime.start.p0(i64 30, ptr %name) #19, !dbg !5681
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5669, metadata !DIExpression()), !dbg !5682
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #18, !dbg !5683
  %arraydecay = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0, !dbg !5684
  %0 = load i32, ptr %eax, align 4, !dbg !5685
  %call = call i32 @x86_family(i32 noundef %0) #18, !dbg !5686
  %1 = load i32, ptr %eax, align 4, !dbg !5687
  %call1 = call i32 @x86_model(i32 noundef %1) #18, !dbg !5688
  %2 = load i32, ptr %eax, align 4, !dbg !5689
  %call2 = call i32 @x86_stepping(i32 noundef %2) #18, !dbg !5690
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.9, i32 noundef %call, i32 noundef %call1, i32 noundef %call2) #18, !dbg !5691
  %arraydecay4 = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0, !dbg !5692
  %call5 = call zeroext i1 @firmware_request_builtin(ptr noundef %fw, ptr noundef %arraydecay4) #18, !dbg !5694
  br i1 %call5, label %if.then, label %if.end, !dbg !5695

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 0, !dbg !5696
  %3 = load i64, ptr %size, align 8, !dbg !5696
  %4 = load ptr, ptr %cp.addr, align 8, !dbg !5698
  %size6 = getelementptr inbounds %struct.cpio_data, ptr %4, i32 0, i32 1, !dbg !5699
  store i64 %3, ptr %size6, align 8, !dbg !5700
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1, !dbg !5701
  %5 = load ptr, ptr %data, align 8, !dbg !5701
  %6 = load ptr, ptr %cp.addr, align 8, !dbg !5702
  %data7 = getelementptr inbounds %struct.cpio_data, ptr %6, i32 0, i32 0, !dbg !5703
  store ptr %5, ptr %data7, align 8, !dbg !5704
  store i1 true, ptr %retval, align 1, !dbg !5705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5705

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5706

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 30, ptr %name) #19, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 24, ptr %fw) #19, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #19, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #19, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #19, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #19, !dbg !5707
  %7 = load i1, ptr %retval, align 1, !dbg !5707
  ret i1 %7, !dbg !5707
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5708 dso_local void @find_microcode_in_initrd(ptr dead_on_unwind writable sret(%struct.cpio_data) align 8, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @scan_microcode(ptr noundef %data, i64 noundef %size, ptr noundef %uci, i1 noundef zeroext %save) #7 section ".init.text" align 16 !dbg !5711 {
entry:
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %uci.addr = alloca ptr, align 8
  %save.addr = alloca i8, align 1
  %mc_header = alloca ptr, align 8
  %patch = alloca ptr, align 8
  %cur_rev = alloca i32, align 4
  %mc_size = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5715, metadata !DIExpression()), !dbg !5723
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5716, metadata !DIExpression()), !dbg !5724
  store ptr %uci, ptr %uci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uci.addr, metadata !5717, metadata !DIExpression()), !dbg !5725
  %frombool = zext i1 %save to i8
  store i8 %frombool, ptr %save.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %save.addr, metadata !5718, metadata !DIExpression()), !dbg !5726
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc_header) #19, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %mc_header, metadata !5719, metadata !DIExpression()), !dbg !5728
  call void @llvm.lifetime.start.p0(i64 8, ptr %patch) #19, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %patch, metadata !5720, metadata !DIExpression()), !dbg !5730
  store ptr null, ptr %patch, align 8, !dbg !5730
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_rev) #19, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %cur_rev, metadata !5721, metadata !DIExpression()), !dbg !5732
  %0 = load ptr, ptr %uci.addr, align 8, !dbg !5733
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %0, i32 0, i32 0, !dbg !5734
  %rev = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig, i32 0, i32 2, !dbg !5735
  %1 = load i32, ptr %rev, align 8, !dbg !5735
  store i32 %1, ptr %cur_rev, align 4, !dbg !5732
  call void @llvm.lifetime.start.p0(i64 4, ptr %mc_size) #19, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %mc_size, metadata !5722, metadata !DIExpression()), !dbg !5737
  br label %for.cond, !dbg !5738

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5739
  %cmp = icmp uge i64 %2, 48, !dbg !5742
  br i1 %cmp, label %for.body, label %for.end, !dbg !5743

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5744
  store ptr %3, ptr %mc_header, align 8, !dbg !5746
  %4 = load ptr, ptr %mc_header, align 8, !dbg !5747
  %call = call i32 @get_totalsize(ptr noundef %4) #18, !dbg !5748
  store i32 %call, ptr %mc_size, align 4, !dbg !5749
  %5 = load i32, ptr %mc_size, align 4, !dbg !5750
  %tobool = icmp ne i32 %5, 0, !dbg !5750
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5752

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, ptr %mc_size, align 4, !dbg !5753
  %conv = zext i32 %6 to i64, !dbg !5753
  %7 = load i64, ptr %size.addr, align 8, !dbg !5754
  %cmp1 = icmp ugt i64 %conv, %7, !dbg !5755
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !5756

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %data.addr, align 8, !dbg !5757
  %call4 = call i32 @intel_microcode_sanity_check(ptr noundef %8, i1 noundef zeroext false, i32 noundef 1) #18, !dbg !5758
  %cmp5 = icmp slt i32 %call4, 0, !dbg !5759
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5760

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  br label %for.end, !dbg !5761

if.end:                                           ; preds = %lor.lhs.false3
  %9 = load ptr, ptr %data.addr, align 8, !dbg !5762
  %10 = load ptr, ptr %uci.addr, align 8, !dbg !5764
  %cpu_sig7 = getelementptr inbounds %struct.ucode_cpu_info, ptr %10, i32 0, i32 0, !dbg !5765
  %call8 = call zeroext i1 @intel_find_matching_signature(ptr noundef %9, ptr noundef %cpu_sig7) #18, !dbg !5766
  br i1 %call8, label %if.end10, label %if.then9, !dbg !5767

if.then9:                                         ; preds = %if.end
  br label %for.inc, !dbg !5768

if.end10:                                         ; preds = %if.end
  %11 = load i8, ptr %save.addr, align 1, !dbg !5769, !range !5042, !noundef !1048
  %tobool11 = trunc i8 %11 to i1, !dbg !5769
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !5771

if.then12:                                        ; preds = %if.end10
  %12 = load i32, ptr %cur_rev, align 4, !dbg !5772
  %13 = load ptr, ptr %mc_header, align 8, !dbg !5775
  %rev13 = getelementptr inbounds %struct.microcode_header_intel, ptr %13, i32 0, i32 1, !dbg !5776
  %14 = load i32, ptr %rev13, align 4, !dbg !5776
  %cmp14 = icmp ne i32 %12, %14, !dbg !5777
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5778

if.then16:                                        ; preds = %if.then12
  br label %for.inc, !dbg !5779

if.end17:                                         ; preds = %if.then12
  br label %if.end23, !dbg !5780

if.else:                                          ; preds = %if.end10
  %15 = load i32, ptr %cur_rev, align 4, !dbg !5781
  %16 = load ptr, ptr %mc_header, align 8, !dbg !5783
  %rev18 = getelementptr inbounds %struct.microcode_header_intel, ptr %16, i32 0, i32 1, !dbg !5784
  %17 = load i32, ptr %rev18, align 4, !dbg !5784
  %cmp19 = icmp uge i32 %15, %17, !dbg !5785
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5786

if.then21:                                        ; preds = %if.else
  br label %for.inc, !dbg !5787

if.end22:                                         ; preds = %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end17
  %18 = load ptr, ptr %data.addr, align 8, !dbg !5789
  store ptr %18, ptr %patch, align 8, !dbg !5790
  %19 = load ptr, ptr %mc_header, align 8, !dbg !5791
  %rev24 = getelementptr inbounds %struct.microcode_header_intel, ptr %19, i32 0, i32 1, !dbg !5792
  %20 = load i32, ptr %rev24, align 4, !dbg !5792
  store i32 %20, ptr %cur_rev, align 4, !dbg !5793
  br label %for.inc, !dbg !5794

for.inc:                                          ; preds = %if.end23, %if.then21, %if.then16, %if.then9
  %21 = load i32, ptr %mc_size, align 4, !dbg !5795
  %conv25 = zext i32 %21 to i64, !dbg !5795
  %22 = load i64, ptr %size.addr, align 8, !dbg !5796
  %sub = sub i64 %22, %conv25, !dbg !5796
  store i64 %sub, ptr %size.addr, align 8, !dbg !5796
  %23 = load i32, ptr %mc_size, align 4, !dbg !5797
  %24 = load ptr, ptr %data.addr, align 8, !dbg !5798
  %idx.ext = zext i32 %23 to i64, !dbg !5798
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !5798
  store ptr %add.ptr, ptr %data.addr, align 8, !dbg !5798
  br label %for.cond, !dbg !5799, !llvm.loop !5800

for.end:                                          ; preds = %if.then, %for.cond
  %25 = load i64, ptr %size.addr, align 8, !dbg !5802
  %tobool26 = icmp ne i64 %25, 0, !dbg !5802
  br i1 %tobool26, label %cond.true, label %cond.false, !dbg !5802

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !5802

cond.false:                                       ; preds = %for.end
  %26 = load ptr, ptr %patch, align 8, !dbg !5803
  br label %cond.end, !dbg !5802

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %26, %cond.false ], !dbg !5802
  call void @llvm.lifetime.end.p0(i64 4, ptr %mc_size) #19, !dbg !5804
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_rev) #19, !dbg !5804
  call void @llvm.lifetime.end.p0(i64 8, ptr %patch) #19, !dbg !5804
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc_header) #19, !dbg !5804
  ret ptr %cond, !dbg !5805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5806 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5810 dso_local i32 @x86_stepping(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5811 dso_local zeroext i1 @firmware_request_builtin(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__apply_microcode(ptr noundef %uci, ptr noundef %mc, ptr noundef %cur_rev) #0 align 16 !dbg !5815 {
entry:
  %retval = alloca i32, align 4
  %uci.addr = alloca ptr, align 8
  %mc.addr = alloca ptr, align 8
  %cur_rev.addr = alloca ptr, align 8
  %rev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uci, ptr %uci.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uci.addr, metadata !5819, metadata !DIExpression()), !dbg !5823
  store ptr %mc, ptr %mc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mc.addr, metadata !5820, metadata !DIExpression()), !dbg !5824
  store ptr %cur_rev, ptr %cur_rev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur_rev.addr, metadata !5821, metadata !DIExpression()), !dbg !5825
  call void @llvm.lifetime.start.p0(i64 4, ptr %rev) #19, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %rev, metadata !5822, metadata !DIExpression()), !dbg !5827
  %0 = load ptr, ptr %mc.addr, align 8, !dbg !5828
  %tobool = icmp ne ptr %0, null, !dbg !5828
  br i1 %tobool, label %if.end, label %if.then, !dbg !5830

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !5831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5831

if.end:                                           ; preds = %entry
  %call = call i32 @intel_get_microcode_revision() #18, !dbg !5832
  %1 = load ptr, ptr %cur_rev.addr, align 8, !dbg !5833
  store i32 %call, ptr %1, align 4, !dbg !5834
  %2 = load ptr, ptr %cur_rev.addr, align 8, !dbg !5835
  %3 = load i32, ptr %2, align 4, !dbg !5837
  %4 = load ptr, ptr %mc.addr, align 8, !dbg !5838
  %hdr = getelementptr inbounds %struct.microcode_intel, ptr %4, i32 0, i32 0, !dbg !5839
  %rev1 = getelementptr inbounds %struct.microcode_header_intel, ptr %hdr, i32 0, i32 1, !dbg !5840
  %5 = load i32, ptr %rev1, align 4, !dbg !5840
  %cmp = icmp uge i32 %3, %5, !dbg !5841
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5842

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %cur_rev.addr, align 8, !dbg !5843
  %7 = load i32, ptr %6, align 4, !dbg !5845
  %8 = load ptr, ptr %uci.addr, align 8, !dbg !5846
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %8, i32 0, i32 0, !dbg !5847
  %rev3 = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig, i32 0, i32 2, !dbg !5848
  store i32 %7, ptr %rev3, align 8, !dbg !5849
  store i32 0, ptr %retval, align 4, !dbg !5850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5850

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %mc.addr, align 8, !dbg !5851
  %bits = getelementptr inbounds %struct.microcode_intel, ptr %9, i32 0, i32 1, !dbg !5851
  %arraydecay = getelementptr inbounds [0 x i32], ptr %bits, i64 0, i64 0, !dbg !5851
  %10 = ptrtoint ptr %arraydecay to i64, !dbg !5851
  %conv = trunc i64 %10 to i32, !dbg !5851
  %11 = load ptr, ptr %mc.addr, align 8, !dbg !5851
  %bits5 = getelementptr inbounds %struct.microcode_intel, ptr %11, i32 0, i32 1, !dbg !5851
  %arraydecay6 = getelementptr inbounds [0 x i32], ptr %bits5, i64 0, i64 0, !dbg !5851
  %12 = ptrtoint ptr %arraydecay6 to i64, !dbg !5851
  %shr = lshr i64 %12, 32, !dbg !5851
  %conv7 = trunc i64 %shr to i32, !dbg !5851
  call void @__wrmsr(i32 noundef 121, i32 noundef %conv, i32 noundef %conv7) #18, !dbg !5851
  %call8 = call i32 @intel_get_microcode_revision() #18, !dbg !5852
  store i32 %call8, ptr %rev, align 4, !dbg !5853
  %13 = load i32, ptr %rev, align 4, !dbg !5854
  %14 = load ptr, ptr %mc.addr, align 8, !dbg !5856
  %hdr9 = getelementptr inbounds %struct.microcode_intel, ptr %14, i32 0, i32 0, !dbg !5857
  %rev10 = getelementptr inbounds %struct.microcode_header_intel, ptr %hdr9, i32 0, i32 1, !dbg !5858
  %15 = load i32, ptr %rev10, align 4, !dbg !5858
  %cmp11 = icmp ne i32 %13, %15, !dbg !5859
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5860

if.then13:                                        ; preds = %if.end4
  store i32 5, ptr %retval, align 4, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

if.end14:                                         ; preds = %if.end4
  %16 = load i32, ptr %rev, align 4, !dbg !5862
  %17 = load ptr, ptr %uci.addr, align 8, !dbg !5863
  %cpu_sig15 = getelementptr inbounds %struct.ucode_cpu_info, ptr %17, i32 0, i32 0, !dbg !5864
  %rev16 = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig15, i32 0, i32 2, !dbg !5865
  store i32 %16, ptr %rev16, align 8, !dbg !5866
  store i32 3, ptr %retval, align 4, !dbg !5867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5867

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rev) #19, !dbg !5868
  %18 = load i32, ptr %retval, align 4, !dbg !5868
  ret i32 %18, !dbg !5868
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5869 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5873, metadata !DIExpression()), !dbg !5875
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5874, metadata !DIExpression()), !dbg !5876
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5877
  %and = and i64 %0, 63, !dbg !5878
  %shl = shl i64 1, %and, !dbg !5879
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5880
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5881
  %shr = ashr i64 %2, 6, !dbg !5882
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5880
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5880
  %and1 = and i64 %shl, %3, !dbg !5883
  %cmp = icmp ne i64 %and1, 0, !dbg !5884
  ret i1 %cmp, !dbg !5885
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5886 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5888, metadata !DIExpression()), !dbg !5891
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5889, metadata !DIExpression()), !dbg !5892
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !5893
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5890, metadata !DIExpression()), !dbg !5894
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5895
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5896
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !5897, !srcloc !5898
  %3 = icmp ult i8 %2, 2, !dbg !5897
  call void @llvm.assume(i1 %3), !dbg !5897
  store i8 %2, ptr %oldbit, align 1, !dbg !5897
  %4 = load i8, ptr %oldbit, align 1, !dbg !5899, !range !5042, !noundef !1048
  %tobool = trunc i8 %4 to i1, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !5900
  ret i1 %tobool, !dbg !5901
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @request_microcode_fw(i32 noundef %cpu, ptr noundef %device) #0 align 16 !dbg !5902 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %firmware = alloca ptr, align 8
  %iter = alloca %struct.iov_iter, align 8
  %ret = alloca i32, align 4
  %kvec = alloca %struct.kvec, align 8
  %name = alloca [30 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5904, metadata !DIExpression()), !dbg !5919
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5905, metadata !DIExpression()), !dbg !5920
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5906, metadata !DIExpression()), !dbg !5922
  br label %do.body, !dbg !5923

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5907, metadata !DIExpression()), !dbg !5924
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5924
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5924
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !5923
  br label %do.cond, !dbg !5924

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5924

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5925
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5910, metadata !DIExpression()), !dbg !5925
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !5925
  %1 = load i64, ptr %__ptr, align 8, !dbg !5925
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5925
  %idxprom = sext i32 %2 to i64, !dbg !5925
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5925
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5925
  %add = add i64 %1, %3, !dbg !5925
  %4 = inttoptr i64 %add to ptr, !dbg !5925
  store ptr %4, ptr %tmp1, align 8, !dbg !5925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5923
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5925
  store ptr %5, ptr %tmp, align 8, !dbg !5924
  %6 = load ptr, ptr %tmp, align 8, !dbg !5923
  store ptr %6, ptr %c, align 8, !dbg !5922
  call void @llvm.lifetime.start.p0(i64 8, ptr %firmware) #19, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %firmware, metadata !5912, metadata !DIExpression()), !dbg !5927
  call void @llvm.lifetime.start.p0(i64 40, ptr %iter) #19, !dbg !5928
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5915, metadata !DIExpression()), !dbg !5929
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5930
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5916, metadata !DIExpression()), !dbg !5931
  call void @llvm.lifetime.start.p0(i64 16, ptr %kvec) #19, !dbg !5932
  call void @llvm.dbg.declare(metadata ptr %kvec, metadata !5917, metadata !DIExpression()), !dbg !5933
  call void @llvm.lifetime.start.p0(i64 30, ptr %name) #19, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5918, metadata !DIExpression()), !dbg !5935
  %7 = load i32, ptr %cpu.addr, align 4, !dbg !5936
  %call = call zeroext i1 @is_blacklisted(i32 noundef %7) #18, !dbg !5938
  br i1 %call, label %if.then, label %if.end, !dbg !5939

if.then:                                          ; preds = %do.end
  store i32 4, ptr %retval, align 4, !dbg !5940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5940

if.end:                                           ; preds = %do.end
  %arraydecay = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0, !dbg !5941
  %8 = load ptr, ptr %c, align 8, !dbg !5942
  %9 = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 0, !dbg !5943
  %x86 = getelementptr inbounds %struct.anon.14, ptr %9, i32 0, i32 1, !dbg !5943
  %10 = load i8, ptr %x86, align 1, !dbg !5943
  %conv = zext i8 %10 to i32, !dbg !5942
  %11 = load ptr, ptr %c, align 8, !dbg !5944
  %12 = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 0, !dbg !5945
  %x86_model = getelementptr inbounds %struct.anon.14, ptr %12, i32 0, i32 0, !dbg !5945
  %13 = load i8, ptr %x86_model, align 8, !dbg !5945
  %conv2 = zext i8 %13 to i32, !dbg !5944
  %14 = load ptr, ptr %c, align 8, !dbg !5946
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 1, !dbg !5947
  %15 = load i8, ptr %x86_stepping, align 4, !dbg !5947
  %conv3 = zext i8 %15 to i32, !dbg !5946
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.9, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #18, !dbg !5948
  %arraydecay5 = getelementptr inbounds [30 x i8], ptr %name, i64 0, i64 0, !dbg !5949
  %16 = load ptr, ptr %device.addr, align 8, !dbg !5951
  %call6 = call i32 @request_firmware_direct(ptr noundef %firmware, ptr noundef %arraydecay5, ptr noundef %16) #18, !dbg !5952
  %tobool = icmp ne i32 %call6, 0, !dbg !5952
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !5953

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %tmp8, align 4, !dbg !5954
  %17 = load i32, ptr %tmp8, align 4, !dbg !5958
  store i32 4, ptr %retval, align 4, !dbg !5959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5959

if.end9:                                          ; preds = %if.end
  %18 = load ptr, ptr %firmware, align 8, !dbg !5960
  %data = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1, !dbg !5961
  %19 = load ptr, ptr %data, align 8, !dbg !5961
  %iov_base = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 0, !dbg !5962
  store ptr %19, ptr %iov_base, align 8, !dbg !5963
  %20 = load ptr, ptr %firmware, align 8, !dbg !5964
  %size = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 0, !dbg !5965
  %21 = load i64, ptr %size, align 8, !dbg !5965
  %iov_len = getelementptr inbounds %struct.kvec, ptr %kvec, i32 0, i32 1, !dbg !5966
  store i64 %21, ptr %iov_len, align 8, !dbg !5967
  %22 = load ptr, ptr %firmware, align 8, !dbg !5968
  %size10 = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 0, !dbg !5969
  %23 = load i64, ptr %size10, align 8, !dbg !5969
  call void @iov_iter_kvec(ptr noundef %iter, i32 noundef 1, ptr noundef %kvec, i64 noundef 1, i64 noundef %23) #18, !dbg !5970
  %24 = load i32, ptr %cpu.addr, align 4, !dbg !5971
  %call11 = call i32 @parse_microcode_blobs(i32 noundef %24, ptr noundef %iter) #18, !dbg !5972
  store i32 %call11, ptr %ret, align 4, !dbg !5973
  %25 = load ptr, ptr %firmware, align 8, !dbg !5974
  call void @release_firmware(ptr noundef %25) #18, !dbg !5975
  %26 = load i32, ptr %ret, align 4, !dbg !5976
  store i32 %26, ptr %retval, align 4, !dbg !5977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5977

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 30, ptr %name) #19, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 16, ptr %kvec) #19, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 40, ptr %iter) #19, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 8, ptr %firmware) #19, !dbg !5978
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !5978
  %27 = load i32, ptr %retval, align 4, !dbg !5978
  ret i32 %27, !dbg !5978
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apply_microcode_late(i32 noundef %cpu) #0 align 16 !dbg !5979 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %uci = alloca ptr, align 8
  %mc = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cur_rev = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp24 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %__vpp_verify63 = alloca ptr, align 8
  %tmp66 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp67 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5981, metadata !DIExpression()), !dbg !6004
  call void @llvm.lifetime.start.p0(i64 8, ptr %uci) #19, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !5982, metadata !DIExpression()), !dbg !6006
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6007
  %idx.ext = sext i32 %0 to i64, !dbg !6008
  %add.ptr = getelementptr %struct.ucode_cpu_info, ptr @ucode_cpu_info, i64 %idx.ext, !dbg !6008
  store ptr %add.ptr, ptr %uci, align 8, !dbg !6006
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc) #19, !dbg !6009
  call void @llvm.dbg.declare(metadata ptr %mc, metadata !5983, metadata !DIExpression()), !dbg !6010
  %1 = load ptr, ptr @ucode_patch_late, align 8, !dbg !6011
  store ptr %1, ptr %mc, align 8, !dbg !6010
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5984, metadata !DIExpression()), !dbg !6013
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_rev) #19, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %cur_rev, metadata !5985, metadata !DIExpression()), !dbg !6015
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5986, metadata !DIExpression()), !dbg !6016
  call void @__this_cpu_preempt_check(ptr noundef @.str.17) #18, !dbg !6017
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #19, !dbg !6018
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5989, metadata !DIExpression()), !dbg !6018
  br label %do.body, !dbg !6018

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5992, metadata !DIExpression()), !dbg !6019
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6019
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6019
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6018
  br label %do.cond, !dbg !6019

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6019

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #19, !dbg !6020
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5994, metadata !DIExpression()), !dbg !6020
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #22, !dbg !6020, !srcloc !6021
  store i32 %3, ptr %pfo_val__, align 4, !dbg !6020
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !6020
  %conv = zext i32 %4 to i64, !dbg !6020
  %conv2 = trunc i64 %conv to i32, !dbg !6020
  store i32 %conv2, ptr %tmp1, align 4, !dbg !6020
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #19, !dbg !6018
  %5 = load i32, ptr %tmp1, align 4, !dbg !6020
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !6018
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !6018
  store i32 %6, ptr %tmp3, align 4, !dbg !6018
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #19, !dbg !6017
  %7 = load i32, ptr %tmp3, align 4, !dbg !6018
  store i32 %7, ptr %tmp, align 4, !dbg !6017
  %8 = load i32, ptr %tmp, align 4, !dbg !6017
  %9 = load i32, ptr %cpu.addr, align 4, !dbg !6016
  %cmp = icmp ne i32 %8, %9, !dbg !6016
  %lnot = xor i1 %cmp, true, !dbg !6016
  %lnot5 = xor i1 %lnot, true, !dbg !6016
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6016
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6016
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6022
  %tobool = icmp ne i32 %10, 0, !dbg !6022
  %lnot6 = xor i1 %tobool, true, !dbg !6022
  %lnot8 = xor i1 %lnot6, true, !dbg !6022
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6022
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6022
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !6022
  %tobool11 = icmp ne i64 %expval, 0, !dbg !6022
  br i1 %tobool11, label %if.then, label %if.end, !dbg !6016

if.then:                                          ; preds = %do.end
  br label %do.body12, !dbg !6022

do.body12:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5996, metadata !DIExpression()), !dbg !6023
  store i32 2307, ptr %__flags, align 4, !dbg !6023
  br label %do.body13, !dbg !6023

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !6024

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6024

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6023

do.body16:                                        ; preds = %do.end15
  %11 = load i32, ptr %__flags, align 4, !dbg !6026
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 447, i32 %11, i64 12) #19, !dbg !6026, !srcloc !6028
  br label %do.cond17, !dbg !6026

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6026

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !6023

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !6029

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !6029

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !6022
  br label %do.cond22, !dbg !6023

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !6023

do.end23:                                         ; preds = %do.cond22
  br label %if.end, !dbg !6023

if.end:                                           ; preds = %do.end23, %do.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6016
  %tobool25 = icmp ne i32 %12, 0, !dbg !6016
  %lnot26 = xor i1 %tobool25, true, !dbg !6016
  %lnot28 = xor i1 %lnot26, true, !dbg !6016
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !6016
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !6016
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !6016
  store i64 %expval31, ptr %tmp24, align 8, !dbg !6022
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6031
  %13 = load i64, ptr %tmp24, align 8, !dbg !6016
  %tobool32 = icmp ne i64 %13, 0, !dbg !6031
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6032

if.then33:                                        ; preds = %if.end
  store i32 5, ptr %retval, align 4, !dbg !6033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6033

if.end34:                                         ; preds = %if.end
  %14 = load ptr, ptr %uci, align 8, !dbg !6034
  %15 = load ptr, ptr %mc, align 8, !dbg !6035
  %call = call i32 @__apply_microcode(ptr noundef %14, ptr noundef %15, ptr noundef %cur_rev) #18, !dbg !6036
  store i32 %call, ptr %ret, align 4, !dbg !6037
  %16 = load i32, ptr %ret, align 4, !dbg !6038
  %cmp35 = icmp ne i32 %16, 3, !dbg !6040
  br i1 %cmp35, label %land.lhs.true, label %if.end40, !dbg !6041

land.lhs.true:                                    ; preds = %if.end34
  %17 = load i32, ptr %ret, align 4, !dbg !6042
  %cmp37 = icmp ne i32 %17, 0, !dbg !6043
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !6044

if.then39:                                        ; preds = %land.lhs.true
  %18 = load i32, ptr %ret, align 4, !dbg !6045
  store i32 %18, ptr %retval, align 4, !dbg !6046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6046

if.end40:                                         ; preds = %land.lhs.true, %if.end34
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !6047
  %tobool41 = icmp ne i32 %19, 0, !dbg !6047
  br i1 %tobool41, label %if.end59, label %land.lhs.true42, !dbg !6049

land.lhs.true42:                                  ; preds = %if.end40
  %20 = load ptr, ptr %uci, align 8, !dbg !6050
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %20, i32 0, i32 0, !dbg !6051
  %rev = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig, i32 0, i32 2, !dbg !6052
  %21 = load i32, ptr %rev, align 8, !dbg !6052
  %22 = load i32, ptr %cur_rev, align 4, !dbg !6053
  %cmp43 = icmp ne i32 %21, %22, !dbg !6054
  br i1 %cmp43, label %if.then45, label %if.end59, !dbg !6055

if.then45:                                        ; preds = %land.lhs.true42
  br label %do.body46, !dbg !6056

do.body46:                                        ; preds = %if.then45
  br label %do.cond47, !dbg !6059

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6059

do.end48:                                         ; preds = %do.cond47
  %23 = load ptr, ptr %uci, align 8, !dbg !6056
  %cpu_sig50 = getelementptr inbounds %struct.ucode_cpu_info, ptr %23, i32 0, i32 0, !dbg !6056
  %rev51 = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig50, i32 0, i32 2, !dbg !6056
  %24 = load i32, ptr %rev51, align 8, !dbg !6056
  %25 = load ptr, ptr %mc, align 8, !dbg !6056
  %hdr = getelementptr inbounds %struct.microcode_intel, ptr %25, i32 0, i32 0, !dbg !6056
  %date = getelementptr inbounds %struct.microcode_header_intel, ptr %hdr, i32 0, i32 2, !dbg !6056
  %26 = load i32, ptr %date, align 4, !dbg !6056
  %and = and i32 %26, 65535, !dbg !6056
  %27 = load ptr, ptr %mc, align 8, !dbg !6056
  %hdr52 = getelementptr inbounds %struct.microcode_intel, ptr %27, i32 0, i32 0, !dbg !6056
  %date53 = getelementptr inbounds %struct.microcode_header_intel, ptr %hdr52, i32 0, i32 2, !dbg !6056
  %28 = load i32, ptr %date53, align 4, !dbg !6056
  %shr = lshr i32 %28, 24, !dbg !6056
  %29 = load ptr, ptr %mc, align 8, !dbg !6056
  %hdr54 = getelementptr inbounds %struct.microcode_intel, ptr %29, i32 0, i32 0, !dbg !6056
  %date55 = getelementptr inbounds %struct.microcode_header_intel, ptr %hdr54, i32 0, i32 2, !dbg !6056
  %30 = load i32, ptr %date55, align 4, !dbg !6056
  %shr56 = lshr i32 %30, 16, !dbg !6056
  %and57 = and i32 %shr56, 255, !dbg !6056
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i32 noundef %24, i32 noundef %and, i32 noundef %shr, i32 noundef %and57) #20, !dbg !6056
  store i32 %call58, ptr %tmp49, align 4, !dbg !6059
  %31 = load i32, ptr %tmp49, align 4, !dbg !6056
  br label %if.end59, !dbg !6061

if.end59:                                         ; preds = %do.end48, %land.lhs.true42, %if.end40
  %32 = load ptr, ptr %uci, align 8, !dbg !6062
  %cpu_sig60 = getelementptr inbounds %struct.ucode_cpu_info, ptr %32, i32 0, i32 0, !dbg !6063
  %rev61 = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig60, i32 0, i32 2, !dbg !6064
  %33 = load i32, ptr %rev61, align 8, !dbg !6064
  br label %do.body62, !dbg !6065

do.body62:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify63) #19, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify63, metadata !5999, metadata !DIExpression()), !dbg !6066
  store ptr null, ptr %__vpp_verify63, align 8, !dbg !6066
  %34 = load ptr, ptr %__vpp_verify63, align 8, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify63) #19, !dbg !6065
  br label %do.cond64, !dbg !6066

do.cond64:                                        ; preds = %do.body62
  br label %do.end65, !dbg !6066

do.end65:                                         ; preds = %do.cond64
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6002, metadata !DIExpression()), !dbg !6067
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !6067
  %35 = load i64, ptr %__ptr, align 8, !dbg !6067
  %36 = load i32, ptr %cpu.addr, align 4, !dbg !6067
  %idxprom = sext i32 %36 to i64, !dbg !6067
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6067
  %37 = load i64, ptr %arrayidx, align 8, !dbg !6067
  %add = add i64 %35, %37, !dbg !6067
  %38 = inttoptr i64 %add to ptr, !dbg !6067
  store ptr %38, ptr %tmp67, align 8, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !6065
  %39 = load ptr, ptr %tmp67, align 8, !dbg !6067
  store ptr %39, ptr %tmp66, align 8, !dbg !6066
  %40 = load ptr, ptr %tmp66, align 8, !dbg !6065
  %microcode = getelementptr inbounds %struct.cpuinfo_x86, ptr %40, i32 0, i32 33, !dbg !6068
  store i32 %33, ptr %microcode, align 8, !dbg !6069
  %41 = load i32, ptr %cpu.addr, align 4, !dbg !6070
  %tobool68 = icmp ne i32 %41, 0, !dbg !6070
  br i1 %tobool68, label %if.end72, label %if.then69, !dbg !6072

if.then69:                                        ; preds = %do.end65
  %42 = load ptr, ptr %uci, align 8, !dbg !6073
  %cpu_sig70 = getelementptr inbounds %struct.ucode_cpu_info, ptr %42, i32 0, i32 0, !dbg !6074
  %rev71 = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig70, i32 0, i32 2, !dbg !6075
  %43 = load i32, ptr %rev71, align 8, !dbg !6075
  store i32 %43, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 33), align 8, !dbg !6076
  br label %if.end72, !dbg !6077

if.end72:                                         ; preds = %if.then69, %do.end65
  %44 = load i32, ptr %ret, align 4, !dbg !6078
  store i32 %44, ptr %retval, align 4, !dbg !6079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6079

cleanup:                                          ; preds = %if.end72, %if.then39, %if.then33
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_rev) #19, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc) #19, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %uci) #19, !dbg !6080
  %45 = load i32, ptr %retval, align 4, !dbg !6080
  ret i32 %45, !dbg !6080
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @collect_cpu_info(i32 noundef %cpu_num, ptr noundef %csig) #0 align 16 !dbg !6081 {
entry:
  %cpu_num.addr = alloca i32, align 4
  %csig.addr = alloca ptr, align 8
  store i32 %cpu_num, ptr %cpu_num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu_num.addr, metadata !6083, metadata !DIExpression()), !dbg !6085
  store ptr %csig, ptr %csig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %csig.addr, metadata !6084, metadata !DIExpression()), !dbg !6086
  %0 = load ptr, ptr %csig.addr, align 8, !dbg !6087
  call void @intel_collect_cpu_info(ptr noundef %0) #18, !dbg !6088
  ret i32 0, !dbg !6089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @finalize_late_load(i32 noundef %result) #0 align 16 !dbg !6090 {
entry:
  %result.addr = alloca i32, align 4
  store i32 %result, ptr %result.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  %0 = load i32, ptr %result.addr, align 4, !dbg !6094
  %tobool = icmp ne i32 %0, 0, !dbg !6094
  br i1 %tobool, label %if.else, label %if.then, !dbg !6096

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @ucode_patch_late, align 8, !dbg !6097
  call void @update_ucode_pointer(ptr noundef %1) #18, !dbg !6098
  br label %if.end, !dbg !6098

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr @ucode_patch_late, align 8, !dbg !6099
  call void @kvfree(ptr noundef %2) #18, !dbg !6100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store ptr null, ptr @ucode_patch_late, align 8, !dbg !6101
  ret void, !dbg !6102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_blacklisted(i32 noundef %cpu) #0 align 16 !dbg !4666 {
entry:
  %retval = alloca i1, align 1
  %cpu.addr = alloca i32, align 4
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp26 = alloca i64, align 8
  %tmp39 = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  %__ret_do_once50 = alloca i8, align 1
  %__ret_cond51 = alloca i8, align 1
  %__ret_once58 = alloca i8, align 1
  %tmp75 = alloca i64, align 8
  %tmp88 = alloca i32, align 4
  %tmp91 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4670, metadata !DIExpression()), !dbg !6103
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !6104
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4671, metadata !DIExpression()), !dbg !6105
  br label %do.body, !dbg !6106

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6107
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4672, metadata !DIExpression()), !dbg !6107
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6107
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6107
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6106
  br label %do.cond, !dbg !6107

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6107

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4675, metadata !DIExpression()), !dbg !6108
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !6108
  %1 = load i64, ptr %__ptr, align 8, !dbg !6108
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6108
  %idxprom = zext i32 %2 to i64, !dbg !6108
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6108
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6108
  %add = add i64 %1, %3, !dbg !6108
  %4 = inttoptr i64 %add to ptr, !dbg !6108
  store ptr %4, ptr %tmp1, align 8, !dbg !6108
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !6106
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6108
  store ptr %5, ptr %tmp, align 8, !dbg !6107
  %6 = load ptr, ptr %tmp, align 8, !dbg !6106
  store ptr %6, ptr %c, align 8, !dbg !6105
  %7 = load ptr, ptr %c, align 8, !dbg !6109
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 0, !dbg !6110
  %x86 = getelementptr inbounds %struct.anon.14, ptr %8, i32 0, i32 1, !dbg !6110
  %9 = load i8, ptr %x86, align 1, !dbg !6110
  %conv = zext i8 %9 to i32, !dbg !6109
  %cmp = icmp eq i32 %conv, 6, !dbg !6111
  br i1 %cmp, label %land.lhs.true, label %if.end99, !dbg !6112

land.lhs.true:                                    ; preds = %do.end
  %10 = load ptr, ptr %c, align 8, !dbg !6113
  %11 = getelementptr inbounds %struct.cpuinfo_x86, ptr %10, i32 0, i32 0, !dbg !6114
  %x86_model = getelementptr inbounds %struct.anon.14, ptr %11, i32 0, i32 0, !dbg !6114
  %12 = load i8, ptr %x86_model, align 8, !dbg !6114
  %conv3 = zext i8 %12 to i32, !dbg !6113
  %cmp4 = icmp eq i32 %conv3, 79, !dbg !6115
  br i1 %cmp4, label %land.lhs.true6, label %if.end99, !dbg !6116

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %c, align 8, !dbg !6117
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 1, !dbg !6118
  %14 = load i8, ptr %x86_stepping, align 4, !dbg !6118
  %conv7 = zext i8 %14 to i32, !dbg !6117
  %cmp8 = icmp eq i32 %conv7, 1, !dbg !6119
  br i1 %cmp8, label %land.lhs.true10, label %if.end99, !dbg !6120

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %15 = load i32, ptr @llc_size_per_core, align 4, !dbg !6121
  %cmp11 = icmp ugt i32 %15, 2621440, !dbg !6122
  br i1 %cmp11, label %land.lhs.true13, label %if.end99, !dbg !6123

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %16 = load ptr, ptr %c, align 8, !dbg !6124
  %microcode = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 33, !dbg !6125
  %17 = load i32, ptr %microcode, align 8, !dbg !6125
  %cmp14 = icmp ult i32 %17, 184549409, !dbg !6126
  br i1 %cmp14, label %if.then, label %if.end99, !dbg !6127

if.then:                                          ; preds = %land.lhs.true13
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #19, !dbg !6128
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4677, metadata !DIExpression()), !dbg !6128
  store i8 1, ptr %__ret_do_once, align 1, !dbg !6128
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #19, !dbg !6129
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4681, metadata !DIExpression()), !dbg !6129
  %18 = load i8, ptr %__ret_do_once, align 1, !dbg !6129, !range !5042, !noundef !1048
  %tobool = trunc i8 %18 to i1, !dbg !6129
  %lnot = xor i1 %tobool, true, !dbg !6129
  %lnot16 = xor i1 %lnot, true, !dbg !6129
  %frombool = zext i1 %lnot16 to i8, !dbg !6129
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !6129
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #19, !dbg !6129
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4684, metadata !DIExpression()), !dbg !6129
  store i8 0, ptr %__ret_once, align 1, !dbg !6129
  %19 = load i8, ptr %__ret_cond, align 1, !dbg !6130, !range !5042, !noundef !1048
  %tobool17 = trunc i8 %19 to i1, !dbg !6130
  br i1 %tobool17, label %land.rhs, label %land.end, !dbg !6130

land.rhs:                                         ; preds = %if.then
  %20 = load i8, ptr @is_blacklisted.__already_done, align 1, !dbg !6130, !range !5042, !noundef !1048
  %tobool19 = trunc i8 %20 to i1, !dbg !6130
  %lnot20 = xor i1 %tobool19, true, !dbg !6130
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %21 = phi i1 [ false, %if.then ], [ %lnot20, %land.rhs ], !dbg !6132
  %lnot21 = xor i1 %21, true, !dbg !6130
  %lnot22 = xor i1 %lnot21, true, !dbg !6130
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !6130
  %conv23 = sext i32 %lnot.ext to i64, !dbg !6130
  %expval = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6130
  %tobool24 = icmp ne i64 %expval, 0, !dbg !6130
  br i1 %tobool24, label %if.then25, label %if.end, !dbg !6129

if.then25:                                        ; preds = %land.end
  store i8 1, ptr @is_blacklisted.__already_done, align 1, !dbg !6133
  store i8 1, ptr %__ret_once, align 1, !dbg !6133
  br label %if.end, !dbg !6133

if.end:                                           ; preds = %if.then25, %land.end
  %22 = load i8, ptr %__ret_once, align 1, !dbg !6129, !range !5042, !noundef !1048
  %tobool27 = trunc i8 %22 to i1, !dbg !6129
  %lnot28 = xor i1 %tobool27, true, !dbg !6129
  %lnot30 = xor i1 %lnot28, true, !dbg !6129
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !6129
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !6129
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !6129
  store i64 %expval33, ptr %tmp26, align 8, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #19, !dbg !6135
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #19, !dbg !6135
  %23 = load i64, ptr %tmp26, align 8, !dbg !6129
  %tobool34 = icmp ne i64 %23, 0, !dbg !6135
  br i1 %tobool34, label %if.then35, label %if.end41, !dbg !6128

if.then35:                                        ; preds = %if.end
  br label %do.body36, !dbg !6136

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !6138

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !6138

do.end38:                                         ; preds = %do.cond37
  %24 = load ptr, ptr %c, align 8, !dbg !6136
  %microcode40 = getelementptr inbounds %struct.cpuinfo_x86, ptr %24, i32 0, i32 33, !dbg !6136
  %25 = load i32, ptr %microcode40, align 8, !dbg !6136
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i32 noundef %25) #20, !dbg !6136
  store i32 %call, ptr %tmp39, align 4, !dbg !6138
  %26 = load i32, ptr %tmp39, align 4, !dbg !6136
  br label %if.end41, !dbg !6135

if.end41:                                         ; preds = %do.end38, %if.end
  %27 = load i8, ptr %__ret_do_once, align 1, !dbg !6128, !range !5042, !noundef !1048
  %tobool43 = trunc i8 %27 to i1, !dbg !6128
  %lnot44 = xor i1 %tobool43, true, !dbg !6128
  %lnot46 = xor i1 %lnot44, true, !dbg !6128
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !6128
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !6128
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !6128
  store i64 %expval49, ptr %tmp42, align 8, !dbg !6135
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #19, !dbg !6140
  %28 = load i64, ptr %tmp42, align 8, !dbg !6128
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once50) #19, !dbg !6141
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once50, metadata !4685, metadata !DIExpression()), !dbg !6141
  store i8 1, ptr %__ret_do_once50, align 1, !dbg !6141
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond51) #19, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %__ret_cond51, metadata !4687, metadata !DIExpression()), !dbg !6142
  %29 = load i8, ptr %__ret_do_once50, align 1, !dbg !6142, !range !5042, !noundef !1048
  %tobool52 = trunc i8 %29 to i1, !dbg !6142
  %lnot53 = xor i1 %tobool52, true, !dbg !6142
  %lnot55 = xor i1 %lnot53, true, !dbg !6142
  %frombool57 = zext i1 %lnot55 to i8, !dbg !6142
  store i8 %frombool57, ptr %__ret_cond51, align 1, !dbg !6142
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once58) #19, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %__ret_once58, metadata !4690, metadata !DIExpression()), !dbg !6142
  store i8 0, ptr %__ret_once58, align 1, !dbg !6142
  %30 = load i8, ptr %__ret_cond51, align 1, !dbg !6143, !range !5042, !noundef !1048
  %tobool59 = trunc i8 %30 to i1, !dbg !6143
  br i1 %tobool59, label %land.rhs61, label %land.end65, !dbg !6143

land.rhs61:                                       ; preds = %if.end41
  %31 = load i8, ptr @is_blacklisted.__already_done.11, align 1, !dbg !6143, !range !5042, !noundef !1048
  %tobool62 = trunc i8 %31 to i1, !dbg !6143
  %lnot63 = xor i1 %tobool62, true, !dbg !6143
  br label %land.end65

land.end65:                                       ; preds = %land.rhs61, %if.end41
  %32 = phi i1 [ false, %if.end41 ], [ %lnot63, %land.rhs61 ], !dbg !6145
  %lnot66 = xor i1 %32, true, !dbg !6143
  %lnot68 = xor i1 %lnot66, true, !dbg !6143
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !6143
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !6143
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 0), !dbg !6143
  %tobool72 = icmp ne i64 %expval71, 0, !dbg !6143
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !6142

if.then73:                                        ; preds = %land.end65
  store i8 1, ptr @is_blacklisted.__already_done.11, align 1, !dbg !6146
  store i8 1, ptr %__ret_once58, align 1, !dbg !6146
  br label %if.end74, !dbg !6146

if.end74:                                         ; preds = %if.then73, %land.end65
  %33 = load i8, ptr %__ret_once58, align 1, !dbg !6142, !range !5042, !noundef !1048
  %tobool76 = trunc i8 %33 to i1, !dbg !6142
  %lnot77 = xor i1 %tobool76, true, !dbg !6142
  %lnot79 = xor i1 %lnot77, true, !dbg !6142
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !6142
  %conv81 = sext i32 %lnot.ext80 to i64, !dbg !6142
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0), !dbg !6142
  store i64 %expval82, ptr %tmp75, align 8, !dbg !6143
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once58) #19, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond51) #19, !dbg !6148
  %34 = load i64, ptr %tmp75, align 8, !dbg !6142
  %tobool83 = icmp ne i64 %34, 0, !dbg !6148
  br i1 %tobool83, label %if.then84, label %if.end90, !dbg !6141

if.then84:                                        ; preds = %if.end74
  br label %do.body85, !dbg !6149

do.body85:                                        ; preds = %if.then84
  br label %do.cond86, !dbg !6151

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !6151

do.end87:                                         ; preds = %do.cond86
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #20, !dbg !6149
  store i32 %call89, ptr %tmp88, align 4, !dbg !6151
  %35 = load i32, ptr %tmp88, align 4, !dbg !6149
  br label %if.end90, !dbg !6148

if.end90:                                         ; preds = %do.end87, %if.end74
  %36 = load i8, ptr %__ret_do_once50, align 1, !dbg !6141, !range !5042, !noundef !1048
  %tobool92 = trunc i8 %36 to i1, !dbg !6141
  %lnot93 = xor i1 %tobool92, true, !dbg !6141
  %lnot95 = xor i1 %lnot93, true, !dbg !6141
  %lnot.ext96 = zext i1 %lnot95 to i32, !dbg !6141
  %conv97 = sext i32 %lnot.ext96 to i64, !dbg !6141
  %expval98 = call i64 @llvm.expect.i64(i64 %conv97, i64 0), !dbg !6141
  store i64 %expval98, ptr %tmp91, align 8, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once50) #19, !dbg !6153
  %37 = load i64, ptr %tmp91, align 8, !dbg !6141
  store i1 true, ptr %retval, align 1, !dbg !6154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6154

if.end99:                                         ; preds = %land.lhs.true13, %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %do.end
  store i1 false, ptr %retval, align 1, !dbg !6155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6155

cleanup:                                          ; preds = %if.end99, %if.end90
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !6156
  %38 = load i1, ptr %retval, align 1, !dbg !6156
  ret i1 %38, !dbg !6156
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6157 dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6161 dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_microcode_blobs(i32 noundef %cpu, ptr noundef %iter) #0 align 16 !dbg !6164 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %iter.addr = alloca ptr, align 8
  %uci = alloca ptr, align 8
  %cur_rev = alloca i32, align 4
  %curr_mc_size = alloca i32, align 4
  %new_mc = alloca ptr, align 8
  %mc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %mc_header = alloca %struct.microcode_header_intel, align 4
  %mc_size = alloca i32, align 4
  %data_size = alloca i32, align 4
  %data = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6168, metadata !DIExpression()), !dbg !6182
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !6169, metadata !DIExpression()), !dbg !6183
  call void @llvm.lifetime.start.p0(i64 8, ptr %uci) #19, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %uci, metadata !6170, metadata !DIExpression()), !dbg !6185
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6186
  %idx.ext = sext i32 %0 to i64, !dbg !6187
  %add.ptr = getelementptr %struct.ucode_cpu_info, ptr @ucode_cpu_info, i64 %idx.ext, !dbg !6187
  store ptr %add.ptr, ptr %uci, align 8, !dbg !6185
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_rev) #19, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %cur_rev, metadata !6171, metadata !DIExpression()), !dbg !6189
  %1 = load ptr, ptr %uci, align 8, !dbg !6190
  %cpu_sig = getelementptr inbounds %struct.ucode_cpu_info, ptr %1, i32 0, i32 0, !dbg !6191
  %rev = getelementptr inbounds %struct.cpu_signature, ptr %cpu_sig, i32 0, i32 2, !dbg !6192
  %2 = load i32, ptr %rev, align 8, !dbg !6192
  store i32 %2, ptr %cur_rev, align 4, !dbg !6189
  call void @llvm.lifetime.start.p0(i64 4, ptr %curr_mc_size) #19, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %curr_mc_size, metadata !6172, metadata !DIExpression()), !dbg !6194
  store i32 0, ptr %curr_mc_size, align 4, !dbg !6194
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_mc) #19, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %new_mc, metadata !6173, metadata !DIExpression()), !dbg !6196
  store ptr null, ptr %new_mc, align 8, !dbg !6196
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc) #19, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %mc, metadata !6175, metadata !DIExpression()), !dbg !6197
  store ptr null, ptr %mc, align 8, !dbg !6197
  %3 = load i8, ptr @force_minrev, align 1, !dbg !6198, !range !5042, !noundef !1048
  %tobool = trunc i8 %3 to i1, !dbg !6198
  br i1 %tobool, label %if.then, label %if.end, !dbg !6200

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !6201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !6201

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6202

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %4 = load ptr, ptr %iter.addr, align 8, !dbg !6203
  %call = call i64 @iov_iter_count(ptr noundef %4) #18, !dbg !6204
  %tobool1 = icmp ne i64 %call, 0, !dbg !6202
  br i1 %tobool1, label %while.body, label %while.end, !dbg !6202

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 48, ptr %mc_header) #19, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %mc_header, metadata !6176, metadata !DIExpression()), !dbg !6206
  call void @llvm.lifetime.start.p0(i64 4, ptr %mc_size) #19, !dbg !6207
  call void @llvm.dbg.declare(metadata ptr %mc_size, metadata !6178, metadata !DIExpression()), !dbg !6208
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_size) #19, !dbg !6207
  call void @llvm.dbg.declare(metadata ptr %data_size, metadata !6179, metadata !DIExpression()), !dbg !6209
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #19, !dbg !6210
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6180, metadata !DIExpression()), !dbg !6211
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !6212
  %call2 = call zeroext i1 @copy_from_iter_full(ptr noundef %mc_header, i64 noundef 48, ptr noundef %5) #18, !dbg !6214
  br i1 %call2, label %if.end5, label %if.then3, !dbg !6215

if.then3:                                         ; preds = %while.body
  br label %do.body, !dbg !6216

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6219

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6219

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #20, !dbg !6216
  store i32 %call4, ptr %tmp, align 4, !dbg !6219
  %6 = load i32, ptr %tmp, align 4, !dbg !6216
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6221

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @get_totalsize(ptr noundef %mc_header) #18, !dbg !6222
  store i32 %call6, ptr %mc_size, align 4, !dbg !6223
  %7 = load i32, ptr %mc_size, align 4, !dbg !6224
  %conv = zext i32 %7 to i64, !dbg !6224
  %cmp = icmp ult i64 %conv, 48, !dbg !6226
  br i1 %cmp, label %if.then8, label %if.end14, !dbg !6227

if.then8:                                         ; preds = %if.end5
  br label %do.body9, !dbg !6228

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !6231

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6231

do.end11:                                         ; preds = %do.cond10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #20, !dbg !6228
  store i32 %call13, ptr %tmp12, align 4, !dbg !6231
  %8 = load i32, ptr %tmp12, align 4, !dbg !6228
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6233

if.end14:                                         ; preds = %if.end5
  %9 = load i32, ptr %mc_size, align 4, !dbg !6234
  %conv15 = zext i32 %9 to i64, !dbg !6234
  %sub = sub i64 %conv15, 48, !dbg !6235
  %conv16 = trunc i64 %sub to i32, !dbg !6234
  store i32 %conv16, ptr %data_size, align 4, !dbg !6236
  %10 = load i32, ptr %data_size, align 4, !dbg !6237
  %conv17 = zext i32 %10 to i64, !dbg !6237
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !6239
  %call18 = call i64 @iov_iter_count(ptr noundef %11) #18, !dbg !6240
  %cmp19 = icmp ugt i64 %conv17, %call18, !dbg !6241
  br i1 %cmp19, label %if.then21, label %if.end27, !dbg !6242

if.then21:                                        ; preds = %if.end14
  br label %do.body22, !dbg !6243

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !6246

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !6246

do.end24:                                         ; preds = %do.cond23
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #20, !dbg !6243
  store i32 %call26, ptr %tmp25, align 4, !dbg !6246
  %12 = load i32, ptr %tmp25, align 4, !dbg !6243
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6248

if.end27:                                         ; preds = %if.end14
  %13 = load ptr, ptr %mc, align 8, !dbg !6249
  %tobool28 = icmp ne ptr %13, null, !dbg !6249
  br i1 %tobool28, label %lor.lhs.false, label %if.then31, !dbg !6251

lor.lhs.false:                                    ; preds = %if.end27
  %14 = load i32, ptr %mc_size, align 4, !dbg !6252
  %15 = load i32, ptr %curr_mc_size, align 4, !dbg !6253
  %cmp29 = icmp ugt i32 %14, %15, !dbg !6254
  br i1 %cmp29, label %if.then31, label %if.end37, !dbg !6255

if.then31:                                        ; preds = %lor.lhs.false, %if.end27
  %16 = load ptr, ptr %mc, align 8, !dbg !6256
  call void @kvfree(ptr noundef %16) #18, !dbg !6258
  %17 = load i32, ptr %mc_size, align 4, !dbg !6259
  %conv32 = zext i32 %17 to i64, !dbg !6259
  %call33 = call noalias ptr @kvmalloc(i64 noundef %conv32, i32 noundef 3264) #23, !dbg !6260
  store ptr %call33, ptr %mc, align 8, !dbg !6261
  %18 = load ptr, ptr %mc, align 8, !dbg !6262
  %tobool34 = icmp ne ptr %18, null, !dbg !6262
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !6264

if.then35:                                        ; preds = %if.then31
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6265

if.end36:                                         ; preds = %if.then31
  %19 = load i32, ptr %mc_size, align 4, !dbg !6266
  store i32 %19, ptr %curr_mc_size, align 4, !dbg !6267
  br label %if.end37, !dbg !6268

if.end37:                                         ; preds = %if.end36, %lor.lhs.false
  %20 = load ptr, ptr %mc, align 8, !dbg !6269
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 4 %mc_header, i64 48, i1 false), !dbg !6270
  %21 = load ptr, ptr %mc, align 8, !dbg !6271
  %add.ptr38 = getelementptr i8, ptr %21, i64 48, !dbg !6272
  store ptr %add.ptr38, ptr %data, align 8, !dbg !6273
  %22 = load ptr, ptr %data, align 8, !dbg !6274
  %23 = load i32, ptr %data_size, align 4, !dbg !6276
  %conv39 = zext i32 %23 to i64, !dbg !6276
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !6277
  %call40 = call zeroext i1 @copy_from_iter_full(ptr noundef %22, i64 noundef %conv39, ptr noundef %24) #18, !dbg !6278
  br i1 %call40, label %lor.lhs.false41, label %if.then45, !dbg !6279

lor.lhs.false41:                                  ; preds = %if.end37
  %25 = load ptr, ptr %mc, align 8, !dbg !6280
  %call42 = call i32 @intel_microcode_sanity_check(ptr noundef %25, i1 noundef zeroext true, i32 noundef 1) #18, !dbg !6281
  %cmp43 = icmp slt i32 %call42, 0, !dbg !6282
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !6283

if.then45:                                        ; preds = %lor.lhs.false41, %if.end37
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6284

if.end46:                                         ; preds = %lor.lhs.false41
  %26 = load i32, ptr %cur_rev, align 4, !dbg !6285
  %rev47 = getelementptr inbounds %struct.microcode_header_intel, ptr %mc_header, i32 0, i32 1, !dbg !6287
  %27 = load i32, ptr %rev47, align 4, !dbg !6287
  %cmp48 = icmp uge i32 %26, %27, !dbg !6288
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !6289

if.then50:                                        ; preds = %if.end46
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6290, !llvm.loop !6291

if.end51:                                         ; preds = %if.end46
  %28 = load ptr, ptr %mc, align 8, !dbg !6293
  %29 = load ptr, ptr %uci, align 8, !dbg !6295
  %cpu_sig52 = getelementptr inbounds %struct.ucode_cpu_info, ptr %29, i32 0, i32 0, !dbg !6296
  %call53 = call zeroext i1 @intel_find_matching_signature(ptr noundef %28, ptr noundef %cpu_sig52) #18, !dbg !6297
  br i1 %call53, label %if.end55, label %if.then54, !dbg !6298

if.then54:                                        ; preds = %if.end51
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6299, !llvm.loop !6291

if.end55:                                         ; preds = %if.end51
  %30 = load ptr, ptr %new_mc, align 8, !dbg !6300
  call void @kvfree(ptr noundef %30) #18, !dbg !6301
  %rev56 = getelementptr inbounds %struct.microcode_header_intel, ptr %mc_header, i32 0, i32 1, !dbg !6302
  %31 = load i32, ptr %rev56, align 4, !dbg !6302
  store i32 %31, ptr %cur_rev, align 4, !dbg !6303
  %32 = load ptr, ptr %mc, align 8, !dbg !6304
  store ptr %32, ptr %new_mc, align 8, !dbg !6305
  store ptr null, ptr %mc, align 8, !dbg !6306
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6292
  br label %cleanup, !dbg !6292

cleanup:                                          ; preds = %if.then45, %if.then35, %do.end24, %do.end11, %do.end, %if.end55, %if.then54, %if.then50
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #19, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_size) #19, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 4, ptr %mc_size) #19, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 48, ptr %mc_header) #19, !dbg !6292
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup67 [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
    i32 6, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6202, !llvm.loop !6291

while.end:                                        ; preds = %while.cond
  %33 = load ptr, ptr %iter.addr, align 8, !dbg !6307
  %call60 = call i64 @iov_iter_count(ptr noundef %33) #18, !dbg !6309
  %tobool61 = icmp ne i64 %call60, 0, !dbg !6309
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !6310

if.then62:                                        ; preds = %while.end
  br label %fail, !dbg !6311

if.end63:                                         ; preds = %while.end
  %34 = load ptr, ptr %mc, align 8, !dbg !6312
  call void @kvfree(ptr noundef %34) #18, !dbg !6313
  %35 = load ptr, ptr %new_mc, align 8, !dbg !6314
  %tobool64 = icmp ne ptr %35, null, !dbg !6314
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !6316

if.then65:                                        ; preds = %if.end63
  store i32 4, ptr %retval, align 4, !dbg !6317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !6317

if.end66:                                         ; preds = %if.end63
  %36 = load ptr, ptr %new_mc, align 8, !dbg !6318
  store ptr %36, ptr @ucode_patch_late, align 8, !dbg !6319
  store i32 1, ptr %retval, align 4, !dbg !6320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !6320

fail:                                             ; preds = %cleanup, %if.then62
  call void @llvm.dbg.label(metadata !6181), !dbg !6321
  %37 = load ptr, ptr %mc, align 8, !dbg !6322
  call void @kvfree(ptr noundef %37) #18, !dbg !6323
  %38 = load ptr, ptr %new_mc, align 8, !dbg !6324
  call void @kvfree(ptr noundef %38) #18, !dbg !6325
  store i32 5, ptr %retval, align 4, !dbg !6326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !6326

cleanup67:                                        ; preds = %fail, %if.end66, %if.then65, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc) #19, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_mc) #19, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 4, ptr %curr_mc_size) #19, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_rev) #19, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 8, ptr %uci) #19, !dbg !6327
  %39 = load i32, ptr %retval, align 4, !dbg !6327
  ret i32 %39, !dbg !6327
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6328 dso_local void @release_firmware(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iov_iter_count(ptr noundef %i) #2 align 16 !dbg !6331 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6337, metadata !DIExpression()), !dbg !6338
  %0 = load ptr, ptr %i.addr, align 8, !dbg !6339
  %1 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6, !dbg !6340
  %count = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 1, !dbg !6340
  %2 = load i64, ptr %count, align 8, !dbg !6340
  ret i64 %2, !dbg !6341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @copy_from_iter_full(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #5 align 16 !dbg !6342 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  %copied = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6346, metadata !DIExpression()), !dbg !6350
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6347, metadata !DIExpression()), !dbg !6351
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6348, metadata !DIExpression()), !dbg !6352
  call void @llvm.lifetime.start.p0(i64 8, ptr %copied) #19, !dbg !6353
  call void @llvm.dbg.declare(metadata ptr %copied, metadata !6349, metadata !DIExpression()), !dbg !6354
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6355
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !6356
  %2 = load ptr, ptr %i.addr, align 8, !dbg !6357
  %call = call i64 @copy_from_iter(ptr noundef %0, i64 noundef %1, ptr noundef %2) #18, !dbg !6358
  store i64 %call, ptr %copied, align 8, !dbg !6354
  %3 = load i64, ptr %copied, align 8, !dbg !6359
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6359
  %cmp = icmp eq i64 %3, %4, !dbg !6359
  %lnot = xor i1 %cmp, true, !dbg !6359
  %lnot1 = xor i1 %lnot, true, !dbg !6359
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6359
  %conv = sext i32 %lnot.ext to i64, !dbg !6359
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6359
  %tobool = icmp ne i64 %expval, 0, !dbg !6359
  br i1 %tobool, label %if.then, label %if.end, !dbg !6361

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6362

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %i.addr, align 8, !dbg !6363
  %6 = load i64, ptr %copied, align 8, !dbg !6364
  call void @iov_iter_revert(ptr noundef %5, i64 noundef %6) #18, !dbg !6365
  store i1 false, ptr %retval, align 1, !dbg !6366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6366

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %copied) #19, !dbg !6367
  %7 = load i1, ptr %retval, align 1, !dbg !6367
  ret i1 %7, !dbg !6367
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !6368 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6372, metadata !DIExpression()), !dbg !6374
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6373, metadata !DIExpression()), !dbg !6375
  %0 = load i64, ptr %size.addr, align 8, !dbg !6376
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6377
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #23, !dbg !6378
  ret ptr %call, !dbg !6379
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #5 align 16 !dbg !6380 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6384, metadata !DIExpression()), !dbg !6387
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6385, metadata !DIExpression()), !dbg !6388
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6386, metadata !DIExpression()), !dbg !6389
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6390
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !6392
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !6393
  br i1 %call, label %if.then, label %if.end, !dbg !6394

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6395
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !6396
  %4 = load ptr, ptr %i.addr, align 8, !dbg !6397
  %call1 = call i64 @_copy_from_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #18, !dbg !6398
  store i64 %call1, ptr %retval, align 8, !dbg !6399
  br label %return, !dbg !6399

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6400
  br label %return, !dbg !6400

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !6401
  ret i64 %5, !dbg !6401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6402 dso_local void @iov_iter_revert(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !6405 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6409, metadata !DIExpression()), !dbg !6419
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6410, metadata !DIExpression()), !dbg !6420
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6411, metadata !DIExpression()), !dbg !6421
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #19, !dbg !6422
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6412, metadata !DIExpression()), !dbg !6423
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6424
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6425
  %conv = trunc i64 %1 to i32, !dbg !6425
  store i32 %conv, ptr %sz, align 4, !dbg !6423
  %2 = load i32, ptr %sz, align 4, !dbg !6426
  %cmp = icmp sge i32 %2, 0, !dbg !6426
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6426

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6426
  %conv2 = sext i32 %3 to i64, !dbg !6426
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6426
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6426
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6428
  %lnot = xor i1 %5, true, !dbg !6426
  %lnot5 = xor i1 %lnot, true, !dbg !6426
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6426
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6426
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6426
  %tobool = icmp ne i64 %expval, 0, !dbg !6426
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6429

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6430
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6433
  br i1 %7, label %if.else, label %if.then7, !dbg !6434

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6435
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6436
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !6437
  br label %if.end11, !dbg !6437

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6438, !range !5042, !noundef !1048
  %tobool8 = trunc i8 %10 to i1, !dbg !6438
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6440

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !6441, !srcloc !6442
  br label %if.end, !dbg !6441

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !6443, !srcloc !6444
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6445

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6446
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6413, metadata !DIExpression()), !dbg !6446
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6446
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6446
  %lnot15 = xor i1 %cmp13, true, !dbg !6446
  %lnot17 = xor i1 %lnot15, true, !dbg !6446
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6446
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6446
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6447
  %tobool19 = icmp ne i32 %12, 0, !dbg !6447
  %lnot20 = xor i1 %tobool19, true, !dbg !6447
  %lnot22 = xor i1 %lnot20, true, !dbg !6447
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6447
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6447
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6447
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6447
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6446

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6447

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6416, metadata !DIExpression()), !dbg !6448
  store i32 2307, ptr %__flags, align 4, !dbg !6448
  br label %do.body28, !dbg !6448

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6449

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6449

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6448

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6451
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 249, i32 %13, i64 12) #19, !dbg !6451, !srcloc !6453
  br label %do.cond30, !dbg !6451

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6451

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6448

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6454

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6454

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !6447
  br label %do.cond35, !dbg !6448

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6448

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6448

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6446
  %tobool38 = icmp ne i32 %14, 0, !dbg !6446
  %lnot39 = xor i1 %tobool38, true, !dbg !6446
  %lnot41 = xor i1 %lnot39, true, !dbg !6446
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6446
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6446
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6446
  store i64 %expval44, ptr %tmp, align 8, !dbg !6447
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6456
  %15 = load i64, ptr %tmp, align 8, !dbg !6446
  %tobool45 = icmp ne i64 %15, 0, !dbg !6456
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6457

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6458

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6459
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6460
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6461, !range !5042, !noundef !1048
  %tobool48 = trunc i8 %18 to i1, !dbg !6461
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !6462
  store i1 true, ptr %retval, align 1, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6463

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #19, !dbg !6464
  %19 = load i1, ptr %retval, align 1, !dbg !6464
  ret i1 %19, !dbg !6464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6465 dso_local i64 @_copy_from_iter(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #2 align 16 !dbg !6466 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6470, metadata !DIExpression()), !dbg !6472
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6471, metadata !DIExpression()), !dbg !6473
  %0 = load i32, ptr %size.addr, align 4, !dbg !6474
  %1 = load i64, ptr %count.addr, align 8, !dbg !6476
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !6477
  ret void, !dbg !6478
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6479 dso_local void @__bad_copy_from() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6480 dso_local void @__bad_copy_to() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #2 align 16 !dbg !6481 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6485, metadata !DIExpression()), !dbg !6488
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6486, metadata !DIExpression()), !dbg !6489
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6487, metadata !DIExpression()), !dbg !6490
  ret void, !dbg !6491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6492 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6493 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !6496 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6501, metadata !DIExpression()), !dbg !6502
  ret void, !dbg !6503
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(1) }
attributes #22 = { nounwind memory(read) }
attributes #23 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741}
!llvm.ident = !{!4742}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_collect_cpu_info287", scope: !2, file: !3, line: 85, type: !162, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/microcode/.intel.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/microcode/microcode\22 -D KBUILD_BASENAME=\22intel\22 -D KBUILD_MODNAME=\22microcode\22 -D __KBUILD_MODNAME=kmod_microcode -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/microcode/intel.ll arch/x86/kernel/cpu/microcode/intel.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !157, globals: !274, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/microcode/intel.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d03bd6209c00df40d2938f936f8184e4")
!4 = !{!5, !11, !22, !29, !34, !40, !45, !53, !69, !77, !83, !90, !97, !103, !109, !116, !124, !132, !141, !146, !151}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucode_state", file: !12, line: 13, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "arch/x86/kernel/cpu/microcode/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06054e61546338d51fa3eb8b2ecf727f")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DIEnumerator(name: "UCODE_OK", value: 0)
!15 = !DIEnumerator(name: "UCODE_NEW", value: 1)
!16 = !DIEnumerator(name: "UCODE_NEW_SAFE", value: 2)
!17 = !DIEnumerator(name: "UCODE_UPDATED", value: 3)
!18 = !DIEnumerator(name: "UCODE_NFOUND", value: 4)
!19 = !DIEnumerator(name: "UCODE_ERROR", value: 5)
!20 = !DIEnumerator(name: "UCODE_TIMEOUT", value: 6)
!21 = !DIEnumerator(name: "UCODE_OFFLINE", value: 7)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !23, line: 312, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!26 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!27 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!28 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !30, line: 2052, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!33 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !35, line: 54, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "USRQUOTA", value: 0)
!38 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!39 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !41, line: 65, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!44 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !54, line: 1325, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!56 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!57 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!58 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!59 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!60 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!61 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!62 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!63 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!64 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!65 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!66 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!67 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!68 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !70, line: 68, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!73 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !78, line: 16, baseType: !7, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "TT_NONE", value: 0)
!81 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!82 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !84, line: 51, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!87 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!88 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!89 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !91, line: 15, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!94 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!95 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!96 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !98, line: 26, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!101 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!102 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!157 = !{!158, !162, !163, !164, !125, !189, !191, !194, !196, !190, !197, !7, !198, !273}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !159, line: 21, baseType: !160)
!159 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !161, line: 27, baseType: !7)
!161 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "microcode_intel", file: !166, line: 44, size: 384, elements: !167)
!166 = !DIFile(filename: "./arch/x86/include/asm/microcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76281ed1dc19c9b2cc0725843fac83fb")
!167 = !{!168, !185}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !165, file: !166, line: 45, baseType: !169, size: 384)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "microcode_header_intel", file: !166, line: 30, size: 384, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "hdrver", scope: !169, file: !166, line: 31, baseType: !7, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !169, file: !166, line: 32, baseType: !7, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !169, file: !166, line: 33, baseType: !7, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !169, file: !166, line: 34, baseType: !7, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !169, file: !166, line: 35, baseType: !7, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ldrver", scope: !169, file: !166, line: 36, baseType: !7, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !169, file: !166, line: 37, baseType: !7, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "datasize", scope: !169, file: !166, line: 38, baseType: !7, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "totalsize", scope: !169, file: !166, line: 39, baseType: !7, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "metasize", scope: !169, file: !166, line: 40, baseType: !7, size: 32, offset: 288)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !169, file: !166, line: 41, baseType: !182, size: 64, offset: 320)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 2)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !165, file: !166, line: 46, baseType: !186, offset: 384)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: -1)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !159, line: 23, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !161, line: 31, baseType: !193)
!193 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !195, line: 154, baseType: !7)
!195 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !195, line: 113, baseType: !191)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !200, line: 83, size: 2368, elements: !201)
!200 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!201 = !{!202, !215, !216, !217, !221, !222, !223, !224, !225, !226, !227, !235, !240, !244, !245, !246, !247, !248, !249, !250, !251, !252, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !269, !270, !272}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !200, line: 84, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !200, line: 84, size: 32, elements: !204)
!204 = !{!205, !214}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !200, line: 90, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !200, line: 90, size: 32, elements: !207)
!207 = !{!208, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !206, file: !200, line: 91, baseType: !209, size: 8)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !161, line: 21, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !206, file: !200, line: 93, baseType: !209, size: 8, offset: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !206, file: !200, line: 95, baseType: !209, size: 8, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !206, file: !200, line: 96, baseType: !209, size: 8, offset: 24)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !203, file: !200, line: 99, baseType: !160, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !199, file: !200, line: 101, baseType: !209, size: 8, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !199, file: !200, line: 104, baseType: !125, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !199, file: !200, line: 107, baseType: !218, size: 160, offset: 96)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 160, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 5)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !199, file: !200, line: 109, baseType: !209, size: 8, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !199, file: !200, line: 110, baseType: !209, size: 8, offset: 264)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !199, file: !200, line: 112, baseType: !209, size: 8, offset: 272)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !199, file: !200, line: 113, baseType: !209, size: 8, offset: 280)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !199, file: !200, line: 115, baseType: !160, size: 32, offset: 288)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !199, file: !200, line: 117, baseType: !125, size: 32, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !200, line: 123, baseType: !228, size: 768, offset: 384)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !200, line: 123, size: 768, elements: !229)
!229 = !{!230, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !228, file: !200, line: 124, baseType: !231, size: 768)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 768, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 24)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !228, file: !200, line: 125, baseType: !190, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !199, file: !200, line: 127, baseType: !236, size: 128, offset: 1152)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !238)
!237 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!238 = !{!239}
!239 = !DISubrange(count: 16)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !199, file: !200, line: 128, baseType: !241, size: 512, offset: 1280)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 512, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !199, file: !200, line: 130, baseType: !7, size: 32, offset: 1792)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !199, file: !200, line: 131, baseType: !125, size: 32, offset: 1824)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !199, file: !200, line: 133, baseType: !125, size: 32, offset: 1856)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !199, file: !200, line: 134, baseType: !125, size: 32, offset: 1888)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !199, file: !200, line: 135, baseType: !125, size: 32, offset: 1920)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !199, file: !200, line: 136, baseType: !125, size: 32, offset: 1952)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !199, file: !200, line: 137, baseType: !190, size: 64, offset: 1984)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !199, file: !200, line: 139, baseType: !191, size: 64, offset: 2048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !199, file: !200, line: 141, baseType: !253, size: 16, offset: 2112)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !159, line: 19, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !161, line: 24, baseType: !255)
!255 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !199, file: !200, line: 142, baseType: !253, size: 16, offset: 2128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !199, file: !200, line: 143, baseType: !253, size: 16, offset: 2144)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !199, file: !200, line: 144, baseType: !253, size: 16, offset: 2160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !199, file: !200, line: 146, baseType: !253, size: 16, offset: 2176)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !199, file: !200, line: 148, baseType: !253, size: 16, offset: 2192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !199, file: !200, line: 150, baseType: !253, size: 16, offset: 2208)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !199, file: !200, line: 152, baseType: !253, size: 16, offset: 2224)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !199, file: !200, line: 153, baseType: !253, size: 16, offset: 2240)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !199, file: !200, line: 154, baseType: !253, size: 16, offset: 2256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !199, file: !200, line: 156, baseType: !253, size: 16, offset: 2272)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !199, file: !200, line: 158, baseType: !267, size: 8, offset: 2288)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !195, line: 35, baseType: !268)
!268 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !199, file: !200, line: 159, baseType: !158, size: 32, offset: 2304)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !199, file: !200, line: 161, baseType: !271, size: 8, offset: 2336)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !159, line: 17, baseType: !209)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !199, file: !200, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!274 = !{!0, !275, !277, !282, !287, !292, !297, !302, !307, !309, !311, !313, !318, !320, !325, !330, !336, !338, !4664, !4691, !4696, !4698, !4703, !4705, !4710, !4715, !4721, !4723, !4726, !4729}
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_find_matching_signature288", scope: !2, file: !3, line: 121, type: !162, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 408, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 51)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 616, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 77)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 456, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 57)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 488, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 61)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 504, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 63)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 424, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 53)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !289, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_microcode_sanity_check289", scope: !2, file: !3, line: 235, type: !162, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_microcode__290_400_save_builtin_microcodeearly291", scope: !2, file: !3, line: 400, type: !162, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 625, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 400, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 50)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "ucode_patch_va", scope: !2, file: !3, line: 37, type: !164, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 472, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 59)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 216, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 27)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "ucode_path", scope: !2, file: !3, line: 32, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 304, elements: !334)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!334 = !{!335}
!335 = !DISubrange(count: 38)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "llc_size_per_core", scope: !2, file: !3, line: 41, type: !7, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "microcode_intel_ops", scope: !2, file: !3, line: 603, type: !340, isLocal: true, isDefinition: true)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "microcode_ops", file: !12, line: 24, size: 384, elements: !341)
!341 = !{!342, !4645, !4647, !4651, !4661, !4662, !4663}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "request_microcode_fw", scope: !340, file: !12, line: 25, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!11, !125, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !110, line: 705, size: 5824, elements: !348)
!348 = !{!349, !4300, !4301, !4304, !4305, !4358, !4428, !4429, !4430, !4431, !4432, !4439, !4531, !4544, !4554, !4558, !4560, !4561, !4562, !4566, !4573, !4574, !4577, !4580, !4584, !4587, !4588, !4589, !4590, !4591, !4592, !4622, !4623, !4624, !4627, !4630, !4639, !4640, !4641, !4642, !4643, !4644}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !347, file: !110, line: 706, baseType: !350, size: 512)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !351, line: 64, size: 512, elements: !352)
!351 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!352 = !{!353, !355, !361, !363, !442, !4187, !4290, !4295, !4296, !4297, !4298, !4299}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !351, line: 65, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !350, file: !351, line: 66, baseType: !356, size: 128, offset: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !195, line: 190, size: 128, elements: !357)
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !195, line: 191, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !356, file: !195, line: 191, baseType: !359, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !350, file: !351, line: 67, baseType: !362, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !350, file: !351, line: 68, baseType: !364, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !351, line: 168, size: 768, elements: !366)
!366 = !{!367, !368, !403, !404}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !365, file: !351, line: 169, baseType: !356, size: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !365, file: !351, line: 170, baseType: !369, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !370, line: 29, baseType: !371)
!370 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !370, line: 17, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !370, line: 18, baseType: !374, size: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !370, line: 18, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !374, file: !370, line: 19, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !378, line: 14, size: 32, elements: !379)
!378 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !377, file: !378, line: 15, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !382, line: 44, baseType: !383)
!382 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !382, line: 14, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !382, line: 15, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !382, line: 15, size: 32, elements: !387)
!387 = !{!388, !393, !398}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !382, line: 16, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !195, line: 174, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 172, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !390, file: !195, line: 173, baseType: !125, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !382, line: 24, baseType: !394, size: 16)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !382, line: 24, size: 16, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !394, file: !382, line: 25, baseType: !271, size: 8)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !394, file: !382, line: 26, baseType: !271, size: 8, offset: 8)
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !382, line: 28, baseType: !399, size: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !382, line: 28, size: 32, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !399, file: !382, line: 29, baseType: !253, size: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !399, file: !382, line: 30, baseType: !253, size: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !365, file: !351, line: 171, baseType: !350, size: 512, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !365, file: !351, line: 172, baseType: !405, size: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !351, line: 133, size: 192, elements: !408)
!408 = !{!409, !416, !421}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !407, file: !351, line: 134, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!125, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !351, line: 135, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!354, !414}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !407, file: !351, line: 136, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!125, !414, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !351, line: 125, size: 20736, elements: !428)
!428 = !{!429, !434, !436, !437, !441}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !427, file: !351, line: 126, baseType: !430, size: 192)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !432)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!432 = !{!433}
!433 = !DISubrange(count: 3)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !427, file: !351, line: 127, baseType: !435, size: 4096, offset: 192)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 4096, elements: !242)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !427, file: !351, line: 128, baseType: !125, size: 32, offset: 4288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !427, file: !351, line: 129, baseType: !438, size: 16384, offset: 4320)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 16384, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 2048)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !427, file: !351, line: 130, baseType: !125, size: 32, offset: 20704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !350, file: !351, line: 69, baseType: !443, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !351, line: 116, size: 384, elements: !446)
!446 = !{!447, !451, !479, !4149, !4177, !4181}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !445, file: !351, line: 117, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !362}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !445, file: !351, line: 118, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !455, line: 254, size: 128, elements: !456)
!455 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!456 = !{!457, !472}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !454, file: !455, line: 255, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !362, !466, !431}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !195, line: 66, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !463, line: 73, baseType: !464)
!463 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !463, line: 15, baseType: !465)
!465 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !455, line: 30, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !455, line: 31, baseType: !354, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !467, file: !455, line: 32, baseType: !471, size: 16, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !195, line: 24, baseType: !255)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !454, file: !455, line: 256, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!461, !362, !466, !354, !476}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 61, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !463, line: 72, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !463, line: 16, baseType: !190)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !445, file: !351, line: 119, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !455, line: 84, size: 320, elements: !484)
!484 = !{!485, !486, !490, !4145, !4147}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !455, line: 85, baseType: !354, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !483, file: !455, line: 86, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!471, !362, !466, !125}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !483, file: !455, line: 88, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!471, !362, !494, !125}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !455, line: 175, size: 512, elements: !496)
!496 = !{!497, !498, !499, !500, !4136, !4140, !4141}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !495, file: !455, line: 176, baseType: !467, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !495, file: !455, line: 177, baseType: !476, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !495, file: !455, line: 178, baseType: !162, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !495, file: !455, line: 179, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !30, line: 472, size: 1536, align: 64, elements: !506)
!506 = !{!507, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !4130, !4131, !4132, !4133, !4134, !4135}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !505, file: !30, line: 473, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !30, line: 641, size: 4800, elements: !510)
!510 = !{!511, !512, !513, !521, !522, !529, !530, !533, !534, !3908, !3909, !3910, !3911, !3912, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3952, !3955, !3956, !3957, !3966, !3967, !3968, !3969}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !509, file: !30, line: 642, baseType: !471, size: 16)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !509, file: !30, line: 643, baseType: !255, size: 16, offset: 16)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !509, file: !30, line: 644, baseType: !514, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !515, line: 23, baseType: !516)
!515 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 21, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !516, file: !515, line: 22, baseType: !519, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !195, line: 37, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !463, line: 49, baseType: !7)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !509, file: !30, line: 645, baseType: !356, size: 128, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !509, file: !30, line: 646, baseType: !523, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !515, line: 28, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 26, size: 32, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !524, file: !515, line: 27, baseType: !527, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !195, line: 38, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !463, line: 50, baseType: !7)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !509, file: !30, line: 647, baseType: !7, size: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !509, file: !30, line: 650, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !30, line: 607, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !509, file: !30, line: 651, baseType: !531, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !509, file: !30, line: 654, baseType: !535, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !30, line: 1966, size: 2048, align: 512, elements: !538)
!538 = !{!539, !3742, !3752, !3756, !3760, !3764, !3768, !3772, !3776, !3780, !3784, !3785, !3789, !3793, !3830, !3859, !3863, !3869, !3873, !3877, !3881, !3885, !3889, !3895, !3899}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !537, file: !30, line: 1967, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !508, !543, !7}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !545, line: 82, size: 1536, elements: !546)
!545 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!546 = !{!547, !548, !558, !566, !567, !582, !583, !587, !600, !3725, !3726, !3727, !3728, !3734, !3735, !3736}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !544, file: !545, line: 84, baseType: !7, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !544, file: !545, line: 85, baseType: !549, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !550, line: 275, baseType: !551)
!550 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !550, line: 275, size: 32, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !551, file: !550, line: 275, baseType: !554, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !550, line: 69, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !550, line: 64, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !555, file: !550, line: 65, baseType: !7, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !544, file: !545, line: 86, baseType: !559, size: 128, offset: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !560, line: 38, size: 128, elements: !561)
!560 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!561 = !{!562, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !560, line: 39, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !559, file: !560, line: 39, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !544, file: !545, line: 87, baseType: !543, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !544, file: !545, line: 88, baseType: !568, size: 128, offset: 256)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !545, line: 49, size: 128, elements: !569)
!569 = !{!570, !579}
!570 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !545, line: 50, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !568, file: !545, line: 50, size: 64, elements: !572)
!572 = !{!573, !578}
!573 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !545, line: 51, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !545, line: 51, size: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !574, file: !545, line: 52, baseType: !158, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !574, file: !545, line: 52, baseType: !158, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !571, file: !545, line: 54, baseType: !191, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !568, file: !545, line: 56, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !544, file: !545, line: 89, baseType: !508, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !544, file: !545, line: 91, baseType: !584, size: 256, offset: 448)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !544, file: !545, line: 94, baseType: !588, size: 64, offset: 704)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !589, line: 25, size: 64, elements: !590)
!589 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !589, line: 26, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 26, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !592, file: !589, line: 28, baseType: !192, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !589, line: 30, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !592, file: !589, line: 30, size: 64, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !589, line: 31, baseType: !369, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !596, file: !589, line: 32, baseType: !125, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !544, file: !545, line: 95, baseType: !601, size: 64, offset: 768)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !545, line: 128, size: 1024, align: 512, elements: !604)
!604 = !{!605, !609, !610, !617, !623, !627, !631, !635, !636, !640, !644, !3715, !3719}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !603, file: !545, line: 129, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!125, !543, !7}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !603, file: !545, line: 130, baseType: !606, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !603, file: !545, line: 131, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!125, !614, !616}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !603, file: !545, line: 132, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!125, !614, !7, !354, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !603, file: !545, line: 134, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!125, !614}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !603, file: !545, line: 135, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!125, !543}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !603, file: !545, line: 136, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !543}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !603, file: !545, line: 137, baseType: !632, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !603, file: !545, line: 138, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !543, !508}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !603, file: !545, line: 139, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!431, !543, !431, !125}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !603, file: !545, line: 140, baseType: !645, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !3714}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !650, line: 70, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!651 = !{!652, !653, !3710, !3711}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !649, file: !650, line: 71, baseType: !543, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !649, file: !650, line: 72, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !30, line: 1190, size: 10752, elements: !656)
!656 = !{!657, !658, !661, !662, !663, !667, !1141, !1280, !1320, !1410, !1414, !1415, !1416, !1417, !1418, !1427, !1428, !1429, !1430, !1435, !1439, !1440, !1443, !1446, !1449, !1452, !1453, !1454, !1495, !3643, !3644, !3645, !3646, !3647, !3648, !3651, !3653, !3660, !3661, !3662, !3663, !3664, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !655, file: !30, line: 1191, baseType: !356, size: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !655, file: !30, line: 1192, baseType: !659, size: 32, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !195, line: 21, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !195, line: 18, baseType: !158)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !655, file: !30, line: 1193, baseType: !210, size: 8, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !655, file: !30, line: 1194, baseType: !190, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !655, file: !30, line: 1195, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !195, line: 52, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !463, line: 88, baseType: !666)
!666 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !655, file: !30, line: 1196, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !30, line: 2366, size: 576, elements: !670)
!670 = !{!671, !672, !673, !680, !684, !688, !692, !1126, !1127, !1131, !1133, !1134, !1135, !1137, !1138, !1139, !1140}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !669, file: !30, line: 2367, baseType: !354, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !669, file: !30, line: 2368, baseType: !125, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !669, file: !30, line: 2376, baseType: !674, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!125, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !679, line: 32, flags: DIFlagFwdDecl)
!679 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !669, file: !30, line: 2377, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !30, line: 75, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !669, file: !30, line: 2378, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!543, !668, !125, !354, !162}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !669, file: !30, line: 2380, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !654}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !669, file: !30, line: 2381, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !23, line: 402, size: 9216, align: 512, elements: !695)
!695 = !{!696, !697, !698, !702, !724, !750, !751, !752, !753, !757, !762, !763, !783, !839, !840, !841, !842, !843, !844, !845, !846, !854, !858, !883, !903, !904, !905, !906, !915, !938, !939, !942, !945, !946, !947, !948, !949, !950, !951, !956, !957, !1085, !1093, !1094, !1095, !1097, !1101, !1102, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1119, !1120, !1121, !1125}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !694, file: !23, line: 403, baseType: !22, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !694, file: !23, line: 406, baseType: !356, size: 128, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !694, file: !23, line: 409, baseType: !699, size: 448, offset: 192)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 448, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 56)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !694, file: !23, line: 417, baseType: !703, size: 768, offset: 640)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !23, line: 45, size: 768, elements: !704)
!704 = !{!705, !706, !707, !708, !711}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !703, file: !23, line: 46, baseType: !350, size: 512)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !703, file: !23, line: 47, baseType: !693, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !703, file: !23, line: 48, baseType: !362, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !703, file: !23, line: 49, baseType: !709, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !23, line: 49, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !703, file: !23, line: 50, baseType: !712, size: 64, offset: 704)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !714, line: 26, size: 256, elements: !715)
!714 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !713, file: !714, line: 27, baseType: !7, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !713, file: !714, line: 28, baseType: !718, size: 192, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !719, line: 43, size: 192, elements: !720)
!719 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!720 = !{!721, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !718, file: !719, line: 44, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !378, line: 23, baseType: !377)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !718, file: !719, line: 45, baseType: !356, size: 128, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !694, file: !23, line: 418, baseType: !725, size: 64, offset: 1408)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !23, line: 53, size: 448, elements: !727)
!727 = !{!728, !729, !734, !738, !742, !746}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !726, file: !23, line: 54, baseType: !467, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !726, file: !23, line: 55, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!461, !725, !733, !431}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !726, file: !23, line: 57, baseType: !735, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!461, !725, !733, !354, !476}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !726, file: !23, line: 59, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !693, !354}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !726, file: !23, line: 60, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!125, !693}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !726, file: !23, line: 61, baseType: !747, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !693}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !694, file: !23, line: 419, baseType: !354, size: 64, offset: 1472)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !694, file: !23, line: 420, baseType: !354, size: 64, offset: 1536)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !694, file: !23, line: 421, baseType: !362, size: 64, offset: 1600)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !694, file: !23, line: 424, baseType: !754, size: 64, offset: 1664)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !23, line: 424, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !694, file: !23, line: 425, baseType: !758, size: 64, offset: 1728)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !159, line: 20, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !161, line: 26, baseType: !125)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !694, file: !23, line: 426, baseType: !7, size: 32, offset: 1792)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !694, file: !23, line: 435, baseType: !764, size: 256, offset: 1856)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !765, line: 66, size: 256, elements: !766)
!765 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!766 = !{!767, !776, !777, !782}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !764, file: !765, line: 67, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !769, line: 13, baseType: !770)
!769 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !195, line: 181, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 179, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !771, file: !195, line: 180, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !159, line: 22, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !161, line: 30, baseType: !666)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !764, file: !765, line: 68, baseType: !722, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !764, file: !765, line: 70, baseType: !778, size: 32, offset: 96)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !779, line: 15, size: 32, elements: !780)
!779 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !778, file: !779, line: 20, baseType: !389, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !764, file: !765, line: 72, baseType: !356, size: 128, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !694, file: !23, line: 437, baseType: !784, size: 64, offset: 2112)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !786, line: 69, size: 320, elements: !787)
!786 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!787 = !{!788, !789, !790, !810, !812, !816, !817}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !786, line: 70, baseType: !354, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !785, file: !786, line: 71, baseType: !693, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !785, file: !786, line: 72, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !786, line: 47, size: 256, elements: !794)
!794 = !{!795, !796, !802, !806}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !786, line: 49, baseType: !7, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !793, file: !786, line: 51, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!125, !354, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !793, file: !786, line: 53, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!125, !431, !800}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !793, file: !786, line: 55, baseType: !807, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !162}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !785, file: !786, line: 73, baseType: !811, size: 16, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !785, file: !786, line: 74, baseType: !813, size: 8, offset: 208)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !159, line: 16, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !161, line: 20, baseType: !815)
!815 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !786, line: 75, baseType: !271, size: 8, offset: 216)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !786, line: 76, baseType: !818, size: 64, offset: 256)
!818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !785, file: !786, line: 76, size: 64, elements: !819)
!819 = !{!820, !821, !828}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !818, file: !786, line: 77, baseType: !162, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !818, file: !786, line: 78, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !786, line: 86, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !824, file: !786, line: 87, baseType: !7, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !824, file: !786, line: 88, baseType: !431, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !818, file: !786, line: 79, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !786, line: 92, size: 256, elements: !832)
!832 = !{!833, !834, !835, !837, !838}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !831, file: !786, line: 94, baseType: !7, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !831, file: !786, line: 95, baseType: !7, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !831, file: !786, line: 96, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !831, file: !786, line: 97, baseType: !791, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !831, file: !786, line: 98, baseType: !162, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !694, file: !23, line: 438, baseType: !7, size: 32, offset: 2176)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !694, file: !23, line: 441, baseType: !7, size: 32, offset: 2208)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !694, file: !23, line: 442, baseType: !754, size: 64, offset: 2240)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !694, file: !23, line: 443, baseType: !758, size: 64, offset: 2304)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !694, file: !23, line: 444, baseType: !267, size: 8, offset: 2368)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !694, file: !23, line: 451, baseType: !267, size: 8, offset: 2376)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !694, file: !23, line: 454, baseType: !7, size: 32, offset: 2400)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !694, file: !23, line: 455, baseType: !847, size: 64, offset: 2432)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !849, line: 23, size: 96, elements: !850)
!849 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!850 = !{!851, !852, !853}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !848, file: !849, line: 24, baseType: !125, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !848, file: !849, line: 24, baseType: !125, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !848, file: !849, line: 24, baseType: !125, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !694, file: !23, line: 458, baseType: !855, size: 64, offset: 2496)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!125}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !694, file: !23, line: 460, baseType: !859, size: 4032, align: 512, offset: 2560)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 4032, elements: !881)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !23, line: 362, size: 576, elements: !861)
!861 = !{!862, !863, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !860, file: !23, line: 363, baseType: !162, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !860, file: !23, line: 364, baseType: !7, size: 32, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !860, file: !23, line: 367, baseType: !865, size: 448, offset: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !23, line: 319, size: 448, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !865, file: !23, line: 320, baseType: !693, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !865, file: !23, line: 321, baseType: !869, size: 384, offset: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !870, line: 40, size: 384, elements: !871)
!870 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !869, file: !870, line: 41, baseType: !873, size: 384, align: 64)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 384, align: 64, elements: !183)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !875, line: 5, size: 192, align: 64, elements: !876)
!875 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!876 = !{!877, !878, !880}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !874, file: !875, line: 6, baseType: !190, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !874, file: !875, line: 7, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !874, file: !875, line: 8, baseType: !879, size: 64, offset: 128)
!881 = !{!882}
!882 = !DISubrange(count: 7)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !694, file: !23, line: 463, baseType: !884, size: 192, offset: 6592)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !885, line: 8, size: 192, elements: !886)
!885 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !884, file: !885, line: 10, baseType: !7, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !884, file: !885, line: 11, baseType: !273, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !884, file: !885, line: 12, baseType: !890, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !892, line: 59, size: 48, elements: !893)
!892 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!893 = !{!894, !898, !899, !900, !901, !902}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !891, file: !892, line: 60, baseType: !895, size: 16)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !159, line: 18, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !161, line: 23, baseType: !897)
!897 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !891, file: !892, line: 61, baseType: !895, size: 16, offset: 16)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !891, file: !892, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !891, file: !892, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !892, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !891, file: !892, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !694, file: !23, line: 465, baseType: !190, size: 64, offset: 6784)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !694, file: !23, line: 469, baseType: !7, size: 32, offset: 6848)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !694, file: !23, line: 470, baseType: !356, size: 128, offset: 6912)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !694, file: !23, line: 471, baseType: !907, size: 64, offset: 7040)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !909, line: 33, size: 96, elements: !910)
!909 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!910 = !{!911, !912, !913, !914}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !908, file: !909, line: 37, baseType: !125, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !908, file: !909, line: 43, baseType: !125, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !908, file: !909, line: 45, baseType: !255, size: 16, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !908, file: !909, line: 47, baseType: !255, size: 16, offset: 80)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !694, file: !23, line: 476, baseType: !916, size: 64, offset: 7104)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !23, line: 378, size: 256, elements: !918)
!918 = !{!919, !935, !936, !937}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !917, file: !23, line: 379, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !922, line: 204, baseType: !923)
!922 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !922, line: 197, size: 192, elements: !924)
!924 = !{!925, !927, !928, !929, !931, !933}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !923, file: !922, line: 198, baseType: !926, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !922, line: 21, baseType: !160)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !923, file: !922, line: 199, baseType: !210, size: 8, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !923, file: !922, line: 200, baseType: !210, size: 8, offset: 40)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !923, file: !922, line: 201, baseType: !930, size: 16, offset: 48)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !922, line: 17, baseType: !254)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !923, file: !922, line: 202, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !922, line: 16, baseType: !192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !923, file: !922, line: 203, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !922, line: 22, baseType: !192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !917, file: !23, line: 380, baseType: !7, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !917, file: !23, line: 381, baseType: !431, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !917, file: !23, line: 382, baseType: !431, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !694, file: !23, line: 477, baseType: !917, size: 256, offset: 7168)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !694, file: !23, line: 480, baseType: !940, size: 64, offset: 7424)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !23, line: 480, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !694, file: !23, line: 483, baseType: !943, size: 64, offset: 7488)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !23, line: 483, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !694, file: !23, line: 488, baseType: !431, size: 64, offset: 7552)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !694, file: !23, line: 492, baseType: !162, size: 64, offset: 7616)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !694, file: !23, line: 493, baseType: !7, size: 32, offset: 7680)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !694, file: !23, line: 495, baseType: !162, size: 64, offset: 7744)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !694, file: !23, line: 496, baseType: !7, size: 32, offset: 7808)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !694, file: !23, line: 499, baseType: !7, size: 32, offset: 7840)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !694, file: !23, line: 500, baseType: !952, size: 64, offset: 7872)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !954, line: 45, baseType: !955)
!954 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !694, file: !23, line: 503, baseType: !7, size: 32, offset: 7936)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !694, file: !23, line: 504, baseType: !958, size: 64, offset: 8000)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !961, line: 96, size: 192, elements: !962)
!961 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!962 = !{!963, !964, !1045, !1049}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !960, file: !961, line: 97, baseType: !7, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !960, file: !961, line: 98, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !961, line: 24, size: 3072, elements: !967)
!967 = !{!968, !970, !971, !972, !973, !997, !998, !999, !1000, !1018, !1030, !1031, !1042, !1043, !1044}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !966, file: !961, line: 26, baseType: !969, size: 128)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 128, elements: !183)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !966, file: !961, line: 27, baseType: !969, size: 128, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !966, file: !961, line: 28, baseType: !125, size: 32, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !966, file: !961, line: 31, baseType: !369, size: 32, align: 512, offset: 512)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !966, file: !961, line: 32, baseType: !974, size: 960, offset: 576)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !975, line: 206, size: 960, elements: !976)
!975 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!976 = !{!977, !986, !991, !993, !994, !996}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !974, file: !975, line: 207, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !195, line: 232, size: 128, align: 64, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !979, file: !195, line: 233, baseType: !978, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !979, file: !195, line: 234, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !978}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !974, file: !975, line: 208, baseType: !987, size: 256, offset: 64)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 256, elements: !989)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!989 = !{!990}
!990 = !DISubrange(count: 4)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !974, file: !975, line: 209, baseType: !992, size: 256, offset: 320)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !989)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !974, file: !975, line: 213, baseType: !465, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !974, file: !975, line: 215, baseType: !995, size: 256, offset: 640)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !989)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !975, line: 216, baseType: !271, size: 8, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !966, file: !961, line: 33, baseType: !190, size: 64, offset: 1536)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !966, file: !961, line: 34, baseType: !190, size: 64, offset: 1600)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !966, file: !961, line: 35, baseType: !267, size: 8, offset: 1664)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !966, file: !961, line: 36, baseType: !1001, size: 320, offset: 1728)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1002, line: 11, size: 320, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1003 = !{!1004, !1011, !1012, !1017}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1001, file: !1002, line: 16, baseType: !1005, size: 128)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !195, line: 198, size: 128, elements: !1006)
!1006 = !{!1007, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1005, file: !195, line: 199, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1005, file: !195, line: 199, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1001, file: !1002, line: 17, baseType: !190, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1001, file: !1002, line: 18, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !1002, line: 19, baseType: !158, size: 32, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !966, file: !961, line: 37, baseType: !1019, size: 256, offset: 2048)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1020, line: 98, size: 256, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1019, file: !1020, line: 99, baseType: !768, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1019, file: !1020, line: 100, baseType: !356, size: 128, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1019, file: !1020, line: 101, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1020, line: 21, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !966, file: !961, line: 38, baseType: !979, size: 128, align: 64, offset: 2304)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !966, file: !961, line: 39, baseType: !1032, size: 64, offset: 2432)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !961, line: 49, size: 768, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1033, file: !961, line: 50, baseType: !369, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1033, file: !961, line: 51, baseType: !992, size: 256, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1033, file: !961, line: 53, baseType: !992, size: 256, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1033, file: !961, line: 54, baseType: !190, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1033, file: !961, line: 55, baseType: !1032, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1033, file: !961, line: 56, baseType: !125, size: 32, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1033, file: !961, line: 57, baseType: !125, size: 32, offset: 736)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !966, file: !961, line: 40, baseType: !190, size: 64, offset: 2496)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !966, file: !961, line: 42, baseType: !125, size: 32, offset: 2560)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !966, file: !961, line: 43, baseType: !959, size: 64, offset: 2624)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !960, file: !961, line: 99, baseType: !1046, offset: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1047, line: 211, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1048 = !{}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !960, file: !961, line: 100, baseType: !1050, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !961, line: 63, size: 3008, elements: !1052)
!1052 = !{!1053, !1054, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1084}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1051, file: !961, line: 64, baseType: !1032, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1051, file: !961, line: 65, baseType: !1055, size: 192, offset: 64)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 192, elements: !432)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1051, file: !961, line: 67, baseType: !125, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1051, file: !961, line: 68, baseType: !764, size: 256, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1051, file: !961, line: 69, baseType: !369, size: 32, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1051, file: !961, line: 70, baseType: !764, size: 256, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1051, file: !961, line: 71, baseType: !190, size: 64, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1051, file: !961, line: 72, baseType: !190, size: 64, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1051, file: !961, line: 73, baseType: !190, size: 64, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1051, file: !961, line: 74, baseType: !190, size: 64, offset: 1088)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1051, file: !961, line: 75, baseType: !190, size: 64, offset: 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1051, file: !961, line: 76, baseType: !190, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1051, file: !961, line: 77, baseType: !190, size: 64, offset: 1280)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1051, file: !961, line: 78, baseType: !190, size: 64, offset: 1344)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1051, file: !961, line: 79, baseType: !267, size: 8, offset: 1408)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1051, file: !961, line: 80, baseType: !190, size: 64, offset: 1472)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1051, file: !961, line: 81, baseType: !764, size: 256, offset: 1536)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1051, file: !961, line: 82, baseType: !713, size: 256, offset: 1792)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1051, file: !961, line: 84, baseType: !389, size: 32, offset: 2048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1051, file: !961, line: 87, baseType: !190, size: 64, offset: 2112)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1051, file: !961, line: 88, baseType: !190, size: 64, offset: 2176)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1051, file: !961, line: 89, baseType: !1076, size: 704, offset: 2240)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1020, line: 111, size: 704, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1083}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1076, file: !1020, line: 112, baseType: !1019, size: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1076, file: !1020, line: 113, baseType: !1001, size: 320, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1076, file: !1020, line: 116, baseType: !1081, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1020, line: 18, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1076, file: !1020, line: 117, baseType: !125, size: 32, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1051, file: !961, line: 90, baseType: !959, size: 64, offset: 2944)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !694, file: !23, line: 515, baseType: !1086, size: 64, offset: 8064)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1088, line: 117, size: 128, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1087, file: !1088, line: 118, baseType: !760, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1087, file: !1088, line: 119, baseType: !760, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1087, file: !1088, line: 120, baseType: !465, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !694, file: !23, line: 516, baseType: !7, size: 32, offset: 8128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !694, file: !23, line: 519, baseType: !7, size: 32, offset: 8160)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !694, file: !23, line: 520, baseType: !1096, size: 64, offset: 8192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !694, file: !23, line: 523, baseType: !1098, size: 64, offset: 8256)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !23, line: 523, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !694, file: !23, line: 524, baseType: !7, size: 32, offset: 8320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !694, file: !23, line: 525, baseType: !1103, size: 64, offset: 8384)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !23, line: 525, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !694, file: !23, line: 526, baseType: !7, size: 32, offset: 8448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !694, file: !23, line: 533, baseType: !162, size: 64, offset: 8512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !694, file: !23, line: 534, baseType: !7, size: 32, offset: 8576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !694, file: !23, line: 535, baseType: !189, size: 64, offset: 8640)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !694, file: !23, line: 536, baseType: !7, size: 32, offset: 8704)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !694, file: !23, line: 539, baseType: !125, size: 32, offset: 8736)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !694, file: !23, line: 540, baseType: !1113, size: 64, offset: 8768)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1115, line: 32, size: 64, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1114, file: !1115, line: 33, baseType: !760, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1114, file: !1115, line: 34, baseType: !760, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !694, file: !23, line: 563, baseType: !356, size: 128, offset: 8832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !694, file: !23, line: 565, baseType: !356, size: 128, offset: 8960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !694, file: !23, line: 568, baseType: !1122, size: 64, offset: 9088)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !694, file: !23, line: 570, baseType: !389, size: 32, offset: 9152)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !30, line: 2382, baseType: !668, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !669, file: !30, line: 2383, baseType: !1128, size: 64, offset: 512)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !195, line: 194, size: 64, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1128, file: !195, line: 195, baseType: !1008, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !669, file: !30, line: 2385, baseType: !1132, offset: 576)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1047, line: 206, elements: !1048)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !669, file: !30, line: 2386, baseType: !1132, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !669, file: !30, line: 2387, baseType: !1132, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !669, file: !30, line: 2388, baseType: !1136, offset: 576)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, elements: !432)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !669, file: !30, line: 2390, baseType: !1132, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !669, file: !30, line: 2391, baseType: !1132, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !669, file: !30, line: 2392, baseType: !1132, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !669, file: !30, line: 2393, baseType: !1132, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !655, file: !30, line: 1197, baseType: !1142, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !30, line: 2057, size: 1664, elements: !1145)
!1145 = !{!1146, !1150, !1154, !1155, !1159, !1165, !1169, !1170, !1171, !1175, !1179, !1183, !1184, !1185, !1191, !1195, !1196, !1203, !1204, !1205, !1206, !1210, !1214, !1263, !1278, !1279}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1144, file: !30, line: 2058, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!508, !654}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1144, file: !30, line: 2059, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !508}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1144, file: !30, line: 2060, baseType: !1151, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1144, file: !30, line: 2062, baseType: !1156, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !508, !125}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1144, file: !30, line: 2063, baseType: !1160, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!125, !508, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !30, line: 309, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1144, file: !30, line: 2064, baseType: !1166, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!125, !508}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1144, file: !30, line: 2065, baseType: !1151, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1144, file: !30, line: 2066, baseType: !689, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1144, file: !30, line: 2067, baseType: !1172, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!125, !654, !125}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1144, file: !30, line: 2068, baseType: !1176, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!125, !654, !29}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1144, file: !30, line: 2069, baseType: !1180, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!125, !654}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1144, file: !30, line: 2070, baseType: !1176, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1144, file: !30, line: 2071, baseType: !1180, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1144, file: !30, line: 2072, baseType: !1186, size: 64, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!125, !543, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !30, line: 62, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1144, file: !30, line: 2073, baseType: !1192, size: 64, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!125, !654, !273, !431}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1144, file: !30, line: 2074, baseType: !689, size: 64, offset: 960)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1144, file: !30, line: 2076, baseType: !1197, size: 64, offset: 1024)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!125, !1200, !543}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1202, line: 66, flags: DIFlagFwdDecl)
!1202 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1144, file: !30, line: 2077, baseType: !1197, size: 64, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1144, file: !30, line: 2078, baseType: !1197, size: 64, offset: 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1144, file: !30, line: 2079, baseType: !1197, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1144, file: !30, line: 2081, baseType: !1207, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!461, !654, !125, !431, !476, !664}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1144, file: !30, line: 2082, baseType: !1211, size: 64, offset: 1344)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!461, !654, !125, !354, !476, !664}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1144, file: !30, line: 2083, baseType: !1215, size: 64, offset: 1408)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!1218, !508}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !35, line: 296, size: 1664, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1246, !1247, !1248}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1220, file: !35, line: 297, baseType: !1005, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1220, file: !35, line: 298, baseType: !356, size: 128, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1220, file: !35, line: 299, baseType: !356, size: 128, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1220, file: !35, line: 300, baseType: !356, size: 128, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1220, file: !35, line: 301, baseType: !764, size: 256, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1220, file: !35, line: 302, baseType: !369, size: 32, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1220, file: !35, line: 303, baseType: !389, size: 32, offset: 800)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1220, file: !35, line: 304, baseType: !654, size: 64, offset: 832)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1220, file: !35, line: 305, baseType: !1231, size: 64, offset: 896)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !35, line: 68, size: 64, elements: !1232)
!1232 = !{!1233, !1245}
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !35, line: 69, baseType: !1234, size: 32)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !35, line: 69, size: 32, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1234, file: !35, line: 70, baseType: !514, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1234, file: !35, line: 71, baseType: !523, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1234, file: !35, line: 72, baseType: !1239, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1240, line: 24, baseType: !1241)
!1240 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1240, line: 22, size: 32, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1241, file: !1240, line: 23, baseType: !1244, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1240, line: 20, baseType: !520)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1231, file: !35, line: 74, baseType: !34, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1220, file: !35, line: 306, baseType: !664, size: 64, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1220, file: !35, line: 307, baseType: !190, size: 64, offset: 1024)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1220, file: !35, line: 308, baseType: !1249, size: 576, offset: 1088)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !35, line: 205, size: 576, elements: !1250)
!1250 = !{!1251, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1262}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1249, file: !35, line: 206, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !35, line: 66, baseType: !666)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1249, file: !35, line: 207, baseType: !1252, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1249, file: !35, line: 208, baseType: !1252, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1249, file: !35, line: 209, baseType: !1252, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1249, file: !35, line: 210, baseType: !1252, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1249, file: !35, line: 211, baseType: !1252, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1249, file: !35, line: 212, baseType: !1252, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1249, file: !35, line: 213, baseType: !1260, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1261, line: 8, baseType: !775)
!1261 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1249, file: !35, line: 214, baseType: !1260, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1144, file: !30, line: 2085, baseType: !1264, size: 64, offset: 1472)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!465, !654, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1269, line: 15, size: 256, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1270 = !{!1271, !1272, !1273, !1274, !1275}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1268, file: !1269, line: 16, baseType: !194, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1268, file: !1269, line: 19, baseType: !125, size: 32, offset: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1268, file: !1269, line: 26, baseType: !190, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1268, file: !1269, line: 33, baseType: !190, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1268, file: !1269, line: 36, baseType: !1276, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !54, line: 33, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1144, file: !30, line: 2087, baseType: !1264, size: 64, offset: 1536)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1144, file: !30, line: 2089, baseType: !689, size: 64, offset: 1600)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !655, file: !30, line: 1198, baseType: !1281, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !35, line: 324, size: 704, elements: !1284)
!1284 = !{!1285, !1289, !1293, !1297, !1298, !1299, !1300, !1301, !1306, !1311, !1315}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1283, file: !35, line: 325, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!125, !1219}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1283, file: !35, line: 326, baseType: !1290, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!1219, !654, !125}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1283, file: !35, line: 327, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !1219}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1283, file: !35, line: 328, baseType: !1286, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1283, file: !35, line: 329, baseType: !1286, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1283, file: !35, line: 330, baseType: !1286, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1283, file: !35, line: 331, baseType: !1172, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1283, file: !35, line: 334, baseType: !1302, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1305, !508}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1283, file: !35, line: 335, baseType: !1307, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!125, !508, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1283, file: !35, line: 337, baseType: !1312, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!125, !508, !1305}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1283, file: !35, line: 339, baseType: !1316, size: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!125, !654, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !655, file: !30, line: 1199, baseType: !1321, size: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !35, line: 430, size: 704, elements: !1324)
!1324 = !{!1325, !1336, !1337, !1341, !1342, !1343, !1358, !1381, !1385, !1386, !1409}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1323, file: !35, line: 431, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!125, !654, !125, !125, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1332, line: 8, size: 128, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1331, file: !1332, line: 9, baseType: !648, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1331, file: !1332, line: 10, baseType: !543, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1323, file: !35, line: 432, baseType: !1172, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1323, file: !35, line: 433, baseType: !1338, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!125, !654, !7}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1323, file: !35, line: 434, baseType: !1338, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1323, file: !35, line: 435, baseType: !1172, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1323, file: !35, line: 436, baseType: !1344, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!125, !654, !125, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !35, line: 417, size: 256, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1348, file: !35, line: 418, baseType: !125, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1348, file: !35, line: 419, baseType: !7, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1348, file: !35, line: 420, baseType: !7, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1348, file: !35, line: 422, baseType: !7, size: 32, offset: 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1348, file: !35, line: 423, baseType: !7, size: 32, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1348, file: !35, line: 424, baseType: !7, size: 32, offset: 160)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1348, file: !35, line: 425, baseType: !7, size: 32, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1348, file: !35, line: 426, baseType: !7, size: 32, offset: 224)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1323, file: !35, line: 437, baseType: !1359, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!125, !654, !1231, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !35, line: 345, size: 960, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1363, file: !35, line: 346, baseType: !125, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1363, file: !35, line: 347, baseType: !191, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1363, file: !35, line: 348, baseType: !191, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1363, file: !35, line: 349, baseType: !191, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1363, file: !35, line: 350, baseType: !191, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1363, file: !35, line: 351, baseType: !191, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1363, file: !35, line: 352, baseType: !191, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1363, file: !35, line: 353, baseType: !774, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1363, file: !35, line: 355, baseType: !774, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1363, file: !35, line: 356, baseType: !125, size: 32, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1363, file: !35, line: 357, baseType: !125, size: 32, offset: 608)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1363, file: !35, line: 358, baseType: !191, size: 64, offset: 640)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1363, file: !35, line: 359, baseType: !191, size: 64, offset: 704)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1363, file: !35, line: 360, baseType: !191, size: 64, offset: 768)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1363, file: !35, line: 361, baseType: !774, size: 64, offset: 832)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1363, file: !35, line: 362, baseType: !125, size: 32, offset: 896)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1323, file: !35, line: 438, baseType: !1382, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!125, !654, !1319, !1362}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1323, file: !35, line: 440, baseType: !1359, size: 64, offset: 512)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1323, file: !35, line: 441, baseType: !1387, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!125, !654, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !35, line: 411, size: 1408, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1391, file: !35, line: 412, baseType: !7, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1391, file: !35, line: 413, baseType: !1395, size: 1344, offset: 64)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1396, size: 1344, elements: !432)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !35, line: 397, size: 448, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1408}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !35, line: 398, baseType: !7, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1396, file: !35, line: 399, baseType: !7, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1396, file: !35, line: 401, baseType: !7, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1396, file: !35, line: 402, baseType: !7, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1396, file: !35, line: 403, baseType: !7, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1396, file: !35, line: 404, baseType: !7, size: 32, offset: 160)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1396, file: !35, line: 405, baseType: !7, size: 32, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1396, file: !35, line: 406, baseType: !193, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1396, file: !35, line: 407, baseType: !1407, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !195, line: 132, baseType: !191)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1396, file: !35, line: 408, baseType: !1407, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1323, file: !35, line: 442, baseType: !1338, size: 64, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !655, file: !30, line: 1200, baseType: !1411, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !30, line: 54, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !655, file: !30, line: 1201, baseType: !190, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !655, file: !30, line: 1202, baseType: !190, size: 64, offset: 704)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !655, file: !30, line: 1203, baseType: !190, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !655, file: !30, line: 1204, baseType: !543, size: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !655, file: !30, line: 1205, baseType: !1419, size: 320, offset: 896)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1420, line: 48, size: 320, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1421 = !{!1422, !1423, !1424, !1425, !1426}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1419, file: !1420, line: 49, baseType: !768, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1419, file: !1420, line: 55, baseType: !768, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1419, file: !1420, line: 57, baseType: !778, size: 32, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1419, file: !1420, line: 59, baseType: !722, size: 32, offset: 160)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1419, file: !1420, line: 60, baseType: !356, size: 128, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !655, file: !30, line: 1206, baseType: !125, size: 32, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !655, file: !30, line: 1207, baseType: !389, size: 32, offset: 1248)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !655, file: !30, line: 1209, baseType: !162, size: 64, offset: 1280)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !655, file: !30, line: 1211, baseType: !1431, size: 64, offset: 1344)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !30, line: 1211, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !655, file: !30, line: 1223, baseType: !1436, size: 64, offset: 1408)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !560, line: 34, size: 64, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1436, file: !560, line: 35, baseType: !563, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !655, file: !30, line: 1224, baseType: !356, size: 128, offset: 1472)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !655, file: !30, line: 1225, baseType: !1441, size: 64, offset: 1600)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !30, line: 1225, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !655, file: !30, line: 1226, baseType: !1444, size: 64, offset: 1664)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !30, line: 1226, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !655, file: !30, line: 1227, baseType: !1447, size: 64, offset: 1728)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 50, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !655, file: !30, line: 1228, baseType: !1450, size: 64, offset: 1792)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !30, line: 1228, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !655, file: !30, line: 1229, baseType: !1005, size: 128, offset: 1856)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !655, file: !30, line: 1230, baseType: !7, size: 32, offset: 1984)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !655, file: !30, line: 1231, baseType: !1455, size: 2496, offset: 2048)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !35, line: 521, size: 2496, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1461, !1493}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !35, line: 522, baseType: !7, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1455, file: !35, line: 523, baseType: !1419, size: 320, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1455, file: !35, line: 524, baseType: !1460, size: 192, offset: 384)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 192, elements: !432)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1455, file: !35, line: 525, baseType: !1462, size: 1728, offset: 576)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 1728, elements: !432)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !35, line: 222, size: 576, elements: !1464)
!1464 = !{!1465, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1463, file: !35, line: 223, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !35, line: 445, size: 256, elements: !1468)
!1468 = !{!1469, !1470, !1483, !1484}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1467, file: !35, line: 446, baseType: !125, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1467, file: !35, line: 447, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !35, line: 312, size: 512, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1473, file: !35, line: 313, baseType: !1172, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1473, file: !35, line: 314, baseType: !1172, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1473, file: !35, line: 315, baseType: !1172, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1473, file: !35, line: 316, baseType: !1172, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1473, file: !35, line: 317, baseType: !1286, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1473, file: !35, line: 318, baseType: !1286, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1473, file: !35, line: 319, baseType: !1286, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1473, file: !35, line: 320, baseType: !1316, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1467, file: !35, line: 448, baseType: !693, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1467, file: !35, line: 449, baseType: !1466, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1463, file: !35, line: 224, baseType: !125, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1463, file: !35, line: 226, baseType: !356, size: 128, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1463, file: !35, line: 227, baseType: !190, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1463, file: !35, line: 228, baseType: !7, size: 32, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1463, file: !35, line: 229, baseType: !7, size: 32, offset: 352)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1463, file: !35, line: 230, baseType: !1252, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1463, file: !35, line: 231, baseType: !1252, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1463, file: !35, line: 232, baseType: !162, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1455, file: !35, line: 526, baseType: !1494, size: 192, offset: 2304)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 192, elements: !432)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !655, file: !30, line: 1233, baseType: !1496, size: 2368, offset: 4544)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !30, line: 1184, size: 2368, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1496, file: !30, line: 1185, baseType: !255, size: 16)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1496, file: !30, line: 1186, baseType: !255, size: 16, offset: 16)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1496, file: !30, line: 1187, baseType: !1501, size: 2304, offset: 64)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 2304, elements: !432)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1503, line: 12, size: 768, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1504 = !{!1505, !1519, !1520, !3641, !3642}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1502, file: !1503, line: 13, baseType: !1506, size: 384)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1507, line: 17, size: 384, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1508 = !{!1509, !1510, !1511, !1518}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1506, file: !1507, line: 18, baseType: !125, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1506, file: !1507, line: 19, baseType: !125, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1506, file: !1507, line: 20, baseType: !1512, size: 192, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1513, line: 41, baseType: !1514)
!1513 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1513, line: 37, size: 192, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1513, line: 38, baseType: !369, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1514, file: !1513, line: 39, baseType: !356, size: 128, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1506, file: !1507, line: 22, baseType: !979, size: 128, align: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1502, file: !1503, line: 14, baseType: !836, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1502, file: !1503, line: 15, baseType: !1521, size: 64, offset: 448)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1522, line: 16, size: 64, elements: !1523)
!1522 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1521, file: !1522, line: 17, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1202, line: 746, size: 58368, elements: !1527)
!1527 = !{!1528, !1536, !1537, !1538, !1544, !1545, !1546, !1547, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1618, !1629, !1724, !1728, !1731, !1762, !1763, !1764, !1765, !1776, !1778, !1779, !1780, !1781, !1782, !1783, !1794, !1795, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1812, !1813, !1820, !1821, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2832, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2880, !2886, !2887, !2888, !2889, !2890, !2891, !2894, !2901, !2906, !2909, !2912, !2915, !2918, !3056, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3094, !3095, !3096, !3105, !3113, !3114, !3115, !3116, !3117, !3122, !3123, !3124, !3127, !3128, !3131, !3134, !3137, !3145, !3148, !3149, !3235, !3236, !3237, !3238, !3239, !3245, !3246, !3247, !3248, !3251, !3252, !3255, !3258, !3259, !3262, !3263, !3264, !3267, !3268, !3269, !3270, !3271, !3272, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3304, !3305, !3311, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3323, !3395, !3397, !3398, !3399, !3400, !3401, !3402, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3419, !3420, !3421}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1526, file: !1202, line: 752, baseType: !1529, size: 192)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1530, line: 56, size: 192, elements: !1531)
!1530 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1531 = !{!1532, !1533, !1534, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !1530, line: 57, baseType: !190, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1529, file: !1530, line: 58, baseType: !190, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1529, file: !1530, line: 59, baseType: !158, size: 32, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1529, file: !1530, line: 61, baseType: !158, size: 32, offset: 160)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1526, file: !1202, line: 754, baseType: !7, size: 32, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1526, file: !1202, line: 767, baseType: !162, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1526, file: !1202, line: 768, baseType: !1539, size: 32, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1540, line: 113, baseType: !1541)
!1540 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1540, line: 111, size: 32, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1541, file: !1540, line: 112, baseType: !389, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1526, file: !1202, line: 770, baseType: !7, size: 32, offset: 352)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1526, file: !1202, line: 771, baseType: !7, size: 32, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1526, file: !1202, line: 774, baseType: !125, size: 32, offset: 416)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1526, file: !1202, line: 775, baseType: !1548, size: 128, offset: 448)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1549, line: 58, size: 128, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1550 = !{!1551, !1557, !1562, !1563}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1548, file: !1549, line: 59, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1553, line: 60, size: 64, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1552, file: !1553, line: 61, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1549, line: 60, baseType: !1558, size: 32, offset: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1549, line: 60, size: 32, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1558, file: !1549, line: 61, baseType: !7, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1558, file: !1549, line: 62, baseType: !389, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1548, file: !1549, line: 65, baseType: !253, size: 16, offset: 96)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1548, file: !1549, line: 65, baseType: !253, size: 16, offset: 112)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1526, file: !1202, line: 776, baseType: !7, size: 32, offset: 576)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1526, file: !1202, line: 777, baseType: !190, size: 64, offset: 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1526, file: !1202, line: 778, baseType: !1525, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1526, file: !1202, line: 787, baseType: !125, size: 32, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1526, file: !1202, line: 788, baseType: !125, size: 32, offset: 800)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1526, file: !1202, line: 790, baseType: !125, size: 32, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1526, file: !1202, line: 792, baseType: !125, size: 32, offset: 864)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1526, file: !1202, line: 793, baseType: !125, size: 32, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1526, file: !1202, line: 794, baseType: !125, size: 32, offset: 928)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1526, file: !1202, line: 795, baseType: !7, size: 32, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1526, file: !1202, line: 797, baseType: !1575, size: 2048, offset: 1024)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1202, line: 551, size: 2048, elements: !1576)
!1576 = !{!1577, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1597, !1600, !1601, !1602}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1575, file: !1202, line: 553, baseType: !1578, size: 128)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1202, line: 411, size: 128, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1578, file: !1202, line: 412, baseType: !190, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1578, file: !1202, line: 413, baseType: !158, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1575, file: !1202, line: 554, baseType: !874, size: 192, align: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1575, file: !1202, line: 555, baseType: !191, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1575, file: !1202, line: 556, baseType: !191, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1575, file: !1202, line: 558, baseType: !356, size: 128, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1575, file: !1202, line: 559, baseType: !7, size: 32, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1575, file: !1202, line: 561, baseType: !191, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1575, file: !1202, line: 562, baseType: !191, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1575, file: !1202, line: 563, baseType: !191, size: 64, offset: 768)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1575, file: !1202, line: 564, baseType: !191, size: 64, offset: 832)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1575, file: !1202, line: 565, baseType: !774, size: 64, offset: 896)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1575, file: !1202, line: 566, baseType: !191, size: 64, offset: 960)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1575, file: !1202, line: 568, baseType: !191, size: 64, offset: 1024)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1575, file: !1202, line: 571, baseType: !125, size: 32, offset: 1088)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1575, file: !1202, line: 572, baseType: !1596, size: 64, offset: 1152)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1575, file: !1202, line: 574, baseType: !1598, size: 64, offset: 1216)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1202, line: 49, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1575, file: !1202, line: 576, baseType: !1598, size: 64, offset: 1280)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1575, file: !1202, line: 578, baseType: !190, size: 64, offset: 1344)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1575, file: !1202, line: 588, baseType: !1603, size: 512, align: 512, offset: 1536)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1202, line: 497, size: 512, align: 512, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1603, file: !1202, line: 498, baseType: !191, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1603, file: !1202, line: 499, baseType: !191, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1603, file: !1202, line: 500, baseType: !191, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1603, file: !1202, line: 501, baseType: !158, size: 32, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1603, file: !1202, line: 502, baseType: !158, size: 32, offset: 224)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1603, file: !1202, line: 503, baseType: !190, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1603, file: !1202, line: 504, baseType: !190, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1603, file: !1202, line: 505, baseType: !190, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1603, file: !1202, line: 506, baseType: !1614, size: 64, align: 64, offset: 448)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1202, line: 445, size: 64, align: 64, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1614, file: !1202, line: 446, baseType: !7, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1614, file: !1202, line: 447, baseType: !7, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1526, file: !1202, line: 798, baseType: !1619, size: 384, offset: 3072)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1202, line: 592, size: 384, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1619, file: !1202, line: 593, baseType: !356, size: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1619, file: !1202, line: 594, baseType: !190, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1619, file: !1202, line: 595, baseType: !190, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1619, file: !1202, line: 596, baseType: !7, size: 32, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1619, file: !1202, line: 597, baseType: !255, size: 16, offset: 288)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1619, file: !1202, line: 598, baseType: !255, size: 16, offset: 304)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1619, file: !1202, line: 600, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1526, file: !1202, line: 799, baseType: !1630, size: 1792, offset: 3456)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1202, line: 610, size: 1792, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1721, !1722}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1630, file: !1202, line: 611, baseType: !874, size: 192, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1630, file: !1202, line: 618, baseType: !191, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1630, file: !1202, line: 619, baseType: !191, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1630, file: !1202, line: 620, baseType: !191, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1630, file: !1202, line: 621, baseType: !191, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1630, file: !1202, line: 622, baseType: !191, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1630, file: !1202, line: 629, baseType: !774, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1630, file: !1202, line: 630, baseType: !191, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1202, line: 631, baseType: !7, size: 32, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1630, file: !1202, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1630, file: !1202, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1630, file: !1202, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1630, file: !1202, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1630, file: !1202, line: 662, baseType: !1646, size: 512, offset: 704)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !41, line: 118, size: 512, elements: !1647)
!1647 = !{!1648, !1656, !1657, !1662, !1717, !1718, !1719, !1720}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1646, file: !41, line: 119, baseType: !1649, size: 256)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1650, line: 9, size: 256, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1649, file: !1650, line: 10, baseType: !874, size: 192, align: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1649, file: !1650, line: 11, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1655, line: 29, baseType: !774)
!1655 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1646, file: !41, line: 120, baseType: !1654, size: 64, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1646, file: !41, line: 121, baseType: !1658, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!40, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1646, file: !41, line: 122, baseType: !1663, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !41, line: 159, size: 512, align: 512, elements: !1665)
!1665 = !{!1666, !1691, !1692, !1695, !1700, !1701, !1712, !1716}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1664, file: !41, line: 160, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !41, line: 215, size: 4608, align: 512, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1668, file: !41, line: 216, baseType: !722, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1668, file: !41, line: 217, baseType: !7, size: 32, offset: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1668, file: !41, line: 218, baseType: !7, size: 32, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1668, file: !41, line: 219, baseType: !7, size: 32, offset: 96)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1668, file: !41, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1668, file: !41, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1668, file: !41, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1668, file: !41, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1668, file: !41, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1668, file: !41, line: 226, baseType: !7, size: 32, offset: 160)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1668, file: !41, line: 227, baseType: !255, size: 16, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1668, file: !41, line: 228, baseType: !255, size: 16, offset: 208)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1668, file: !41, line: 229, baseType: !7, size: 32, offset: 224)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1668, file: !41, line: 235, baseType: !1654, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1668, file: !41, line: 236, baseType: !1661, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1668, file: !41, line: 237, baseType: !1654, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1668, file: !41, line: 238, baseType: !1661, size: 64, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1668, file: !41, line: 239, baseType: !1688, size: 4096, align: 512, offset: 512)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1664, size: 4096, align: 512, elements: !1689)
!1689 = !{!1690}
!1690 = !DISubrange(count: 8)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1664, file: !41, line: 161, baseType: !7, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1664, file: !41, line: 162, baseType: !1693, size: 32, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !195, line: 32, baseType: !1694)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !463, line: 96, baseType: !125)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1664, file: !41, line: 163, baseType: !1696, size: 32, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !550, line: 274, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !550, line: 274, size: 32, elements: !1698)
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1697, file: !550, line: 274, baseType: !554, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1664, file: !41, line: 164, baseType: !1661, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1664, file: !41, line: 165, baseType: !1702, size: 128, offset: 256)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1650, line: 14, size: 128, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1702, file: !1650, line: 15, baseType: !1705, size: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !875, line: 26, size: 128, elements: !1706)
!1706 = !{!1707, !1711}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1705, file: !875, line: 27, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !875, line: 12, size: 64, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1708, file: !875, line: 13, baseType: !879, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1705, file: !875, line: 28, baseType: !879, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1664, file: !41, line: 166, baseType: !1713, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1654}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1664, file: !41, line: 167, baseType: !1654, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1646, file: !41, line: 123, baseType: !271, size: 8, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1646, file: !41, line: 124, baseType: !271, size: 8, offset: 456)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1646, file: !41, line: 125, baseType: !271, size: 8, offset: 464)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1646, file: !41, line: 126, baseType: !271, size: 8, offset: 472)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1630, file: !1202, line: 671, baseType: !1646, size: 512, offset: 1216)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1630, file: !1202, line: 679, baseType: !1723, size: 64, offset: 1728)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1526, file: !1202, line: 800, baseType: !1725, size: 64, offset: 5248)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1202, line: 800, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1526, file: !1202, line: 809, baseType: !1729, size: 64, offset: 5312)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1202, line: 70, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1526, file: !1202, line: 825, baseType: !1732, size: 2048, align: 512, offset: 5632)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1202, line: 509, size: 2048, align: 512, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1732, file: !1202, line: 511, baseType: !191, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1732, file: !1202, line: 512, baseType: !191, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1732, file: !1202, line: 513, baseType: !191, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1732, file: !1202, line: 514, baseType: !191, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1732, file: !1202, line: 515, baseType: !191, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1732, file: !1202, line: 516, baseType: !191, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1732, file: !1202, line: 518, baseType: !191, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1732, file: !1202, line: 519, baseType: !191, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1732, file: !1202, line: 520, baseType: !774, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1732, file: !1202, line: 522, baseType: !191, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1732, file: !1202, line: 523, baseType: !191, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1732, file: !1202, line: 524, baseType: !774, size: 64, offset: 704)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1732, file: !1202, line: 526, baseType: !774, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1732, file: !1202, line: 527, baseType: !191, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1732, file: !1202, line: 529, baseType: !191, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1732, file: !1202, line: 530, baseType: !191, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1732, file: !1202, line: 531, baseType: !191, size: 64, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1732, file: !1202, line: 532, baseType: !191, size: 64, offset: 1088)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1732, file: !1202, line: 533, baseType: !191, size: 64, offset: 1152)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1732, file: !1202, line: 535, baseType: !191, size: 64, offset: 1216)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1732, file: !1202, line: 536, baseType: !191, size: 64, offset: 1280)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1732, file: !1202, line: 537, baseType: !191, size: 64, offset: 1344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1732, file: !1202, line: 538, baseType: !191, size: 64, offset: 1408)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1732, file: !1202, line: 539, baseType: !191, size: 64, offset: 1472)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1732, file: !1202, line: 540, baseType: !191, size: 64, offset: 1536)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1732, file: !1202, line: 541, baseType: !191, size: 64, offset: 1600)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1732, file: !1202, line: 542, baseType: !191, size: 64, offset: 1664)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1732, file: !1202, line: 543, baseType: !191, size: 64, offset: 1728)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1526, file: !1202, line: 833, baseType: !7, size: 32, offset: 7680)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1526, file: !1202, line: 836, baseType: !7, size: 32, offset: 7712)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1526, file: !1202, line: 837, baseType: !125, size: 32, offset: 7744)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1526, file: !1202, line: 838, baseType: !1766, size: 64, offset: 7808)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1769, line: 19, baseType: !1770)
!1769 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1769, line: 19, size: 64, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1770, file: !1769, line: 19, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 1)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1526, file: !1202, line: 839, baseType: !1777, size: 64, offset: 7872)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1526, file: !1202, line: 840, baseType: !1768, size: 64, offset: 7936)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1526, file: !1202, line: 841, baseType: !162, size: 64, offset: 8000)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1526, file: !1202, line: 843, baseType: !255, size: 16, offset: 8064)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1526, file: !1202, line: 845, baseType: !255, size: 16, offset: 8080)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1526, file: !1202, line: 848, baseType: !125, size: 32, offset: 8096)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1526, file: !1202, line: 849, baseType: !1784, size: 32, offset: 8128)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1202, line: 718, size: 32, elements: !1785)
!1785 = !{!1786, !1793}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1784, file: !1202, line: 724, baseType: !1787, size: 32)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !1202, line: 719, size: 32, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1787, file: !1202, line: 720, baseType: !271, size: 8)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1787, file: !1202, line: 721, baseType: !271, size: 8, offset: 8)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1787, file: !1202, line: 722, baseType: !271, size: 8, offset: 16)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1787, file: !1202, line: 723, baseType: !271, size: 8, offset: 24)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1784, file: !1202, line: 725, baseType: !158, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1526, file: !1202, line: 850, baseType: !356, size: 128, offset: 8192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1526, file: !1202, line: 851, baseType: !1796, size: 64, offset: 8320)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1202, line: 60, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1526, file: !1202, line: 855, baseType: !190, size: 64, offset: 8384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1526, file: !1202, line: 856, baseType: !271, size: 8, offset: 8448)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1526, file: !1202, line: 857, baseType: !271, size: 8, offset: 8456)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1526, file: !1202, line: 858, baseType: !125, size: 32, offset: 8480)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1526, file: !1202, line: 859, baseType: !356, size: 128, offset: 8512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1526, file: !1202, line: 860, baseType: !125, size: 32, offset: 8640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1526, file: !1202, line: 861, baseType: !356, size: 128, offset: 8704)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1526, file: !1202, line: 873, baseType: !1806, size: 256, offset: 8832)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1202, line: 376, size: 256, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1806, file: !1202, line: 381, baseType: !190, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1806, file: !1202, line: 384, baseType: !193, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1806, file: !1202, line: 389, baseType: !193, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1806, file: !1202, line: 392, baseType: !193, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1526, file: !1202, line: 875, baseType: !356, size: 128, offset: 9088)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1526, file: !1202, line: 877, baseType: !1814, size: 320, offset: 9216)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1815, line: 86, size: 320, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1816 = !{!1817, !1818, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1814, file: !1815, line: 87, baseType: !125, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1814, file: !1815, line: 88, baseType: !356, size: 128, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1814, file: !1815, line: 89, baseType: !356, size: 128, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1526, file: !1202, line: 878, baseType: !874, size: 192, align: 64, offset: 9536)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1526, file: !1202, line: 881, baseType: !1822, size: 64, offset: 9728)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !54, line: 733, size: 10240, elements: !1824)
!1824 = !{!1825, !2752}
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !54, line: 734, baseType: !1826, size: 10240)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1823, file: !54, line: 734, size: 10240, elements: !1827)
!1827 = !{!1828, !1832, !1845, !2629, !2630, !2631, !2632, !2633, !2634, !2641, !2642, !2643, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2682, !2684, !2687, !2732, !2733, !2734, !2737, !2738, !2739, !2742, !2743, !2744, !2750, !2751}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !54, line: 739, baseType: !1829, size: 512, align: 512)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1826, file: !54, line: 739, size: 512, align: 512, elements: !1830)
!1830 = !{!1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1829, file: !54, line: 747, baseType: !389, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1826, file: !54, line: 750, baseType: !1833, size: 128, offset: 512)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1834, line: 218, size: 128, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1835 = !{!1836, !1843, !1844}
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1834, line: 219, baseType: !1837, size: 32)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !1834, line: 219, size: 32, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1837, file: !1834, line: 220, baseType: !369, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1837, file: !1834, line: 221, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1834, line: 197, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1834, line: 197, elements: !1048)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1833, file: !1834, line: 223, baseType: !7, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1833, file: !1834, line: 224, baseType: !162, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1826, file: !54, line: 752, baseType: !1846, size: 64, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!190, !1849, !190, !190, !190, !190}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !30, line: 994, size: 1856, align: 64, elements: !1851)
!1851 = !{!1852, !1858, !1859, !1861, !1862, !1863, !1864, !1865, !1913, !2103, !2112, !2113, !2114, !2619, !2620, !2621, !2622, !2624, !2625, !2628}
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !30, line: 995, baseType: !1853, size: 128)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1850, file: !30, line: 995, size: 128, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1853, file: !30, line: 996, baseType: !1552, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1853, file: !30, line: 997, baseType: !979, size: 128, align: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1853, file: !30, line: 998, baseType: !7, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1850, file: !30, line: 1005, baseType: !369, size: 32, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1850, file: !30, line: 1006, baseType: !1860, size: 32, offset: 160)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !195, line: 156, baseType: !7)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1850, file: !30, line: 1007, baseType: !768, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1850, file: !30, line: 1008, baseType: !764, size: 256, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1850, file: !30, line: 1009, baseType: !664, size: 64, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1850, file: !30, line: 1010, baseType: !7, size: 32, offset: 576)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1850, file: !30, line: 1011, baseType: !1866, size: 256, offset: 640)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !30, line: 948, size: 256, elements: !1867)
!1867 = !{!1868, !1889, !1909, !1910, !1911, !1912}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1866, file: !30, line: 949, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1870, line: 34, baseType: !1871)
!1870 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1870, line: 25, size: 64, elements: !1872)
!1872 = !{!1873}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1871, file: !1870, line: 26, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1875, line: 27, baseType: !1876)
!1875 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1875, line: 13, size: 64, elements: !1877)
!1877 = !{!1878, !1888}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !1875, line: 14, baseType: !1879, size: 32)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !1875, line: 14, size: 32, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1879, file: !1875, line: 15, baseType: !389, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !1875, line: 16, baseType: !1883, size: 32)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1875, line: 16, size: 32, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1883, file: !1875, line: 18, baseType: !271, size: 8)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1883, file: !1875, line: 19, baseType: !1887, size: 24, offset: 8)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 24, elements: !432)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1876, file: !1875, line: 26, baseType: !381, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1866, file: !30, line: 950, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1898, !1899, !1900, !1901}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1891, file: !46, line: 61, baseType: !1539, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1891, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1891, file: !46, line: 63, baseType: !369, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1891, file: !46, line: 65, baseType: !1897, size: 256, offset: 128)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 256, elements: !989)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1891, file: !46, line: 66, baseType: !1128, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1891, file: !46, line: 68, baseType: !1512, size: 192, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1891, file: !46, line: 69, baseType: !979, size: 128, align: 64, offset: 640)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1891, file: !46, line: 70, baseType: !1902, offset: 768)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1903, elements: !187)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1903, file: !46, line: 55, baseType: !125, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1903, file: !46, line: 56, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1866, file: !30, line: 951, baseType: !45, size: 32, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1866, file: !30, line: 952, baseType: !514, size: 32, offset: 160)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1866, file: !30, line: 952, baseType: !514, size: 32, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1866, file: !30, line: 953, baseType: !125, size: 32, offset: 224)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1850, file: !30, line: 1012, baseType: !1914, size: 64, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1917, line: 110, size: 1472, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1935, !1936, !1937, !1938, !1939, !1940, !2048, !2049, !2050, !2051, !2052, !2083, !2086, !2090, !2098}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1916, file: !1917, line: 111, baseType: !768, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1916, file: !1917, line: 112, baseType: !514, size: 32, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1916, file: !1917, line: 113, baseType: !523, size: 32, offset: 96)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1916, file: !1917, line: 114, baseType: !514, size: 32, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1916, file: !1917, line: 115, baseType: !523, size: 32, offset: 160)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1916, file: !1917, line: 116, baseType: !514, size: 32, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1916, file: !1917, line: 117, baseType: !523, size: 32, offset: 224)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1916, file: !1917, line: 118, baseType: !514, size: 32, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1916, file: !1917, line: 119, baseType: !523, size: 32, offset: 288)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1916, file: !1917, line: 120, baseType: !7, size: 32, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1916, file: !1917, line: 121, baseType: !1930, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1931, line: 24, baseType: !1932)
!1931 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1931, line: 24, size: 64, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1932, file: !1931, line: 24, baseType: !191, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1916, file: !1917, line: 122, baseType: !1930, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1916, file: !1917, line: 123, baseType: !1930, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1916, file: !1917, line: 124, baseType: !1930, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1916, file: !1917, line: 125, baseType: !1930, size: 64, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1916, file: !1917, line: 127, baseType: !210, size: 8, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1916, file: !1917, line: 129, baseType: !1941, size: 64, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1943, line: 195, size: 1728, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1944 = !{!1945, !1946, !1949, !1954, !1955, !1958, !1959, !1964, !1965, !1966, !1967, !1970, !1971, !1972, !1973, !1974, !2012, !2033}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1942, file: !1943, line: 196, baseType: !1539, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1942, file: !1943, line: 197, baseType: !1947, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1943, line: 28, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !195, line: 104, baseType: !760)
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1943, line: 198, baseType: !1950, size: 192, offset: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !1943, line: 198, size: 192, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1950, file: !1943, line: 199, baseType: !356, size: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1950, file: !1943, line: 200, baseType: !874, size: 192, align: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1942, file: !1943, line: 205, baseType: !1419, size: 320, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1942, file: !1943, line: 206, baseType: !1956, size: 64, offset: 576)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1943, line: 206, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1942, file: !1943, line: 207, baseType: !162, size: 64, offset: 640)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1943, line: 208, baseType: !1960, size: 64, offset: 704)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !1943, line: 208, size: 64, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1960, file: !1943, line: 209, baseType: !1260, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1960, file: !1943, line: 210, baseType: !1260, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1942, file: !1943, line: 212, baseType: !1260, size: 64, offset: 768)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1942, file: !1943, line: 213, baseType: !514, size: 32, offset: 832)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1942, file: !1943, line: 214, baseType: !523, size: 32, offset: 864)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1942, file: !1943, line: 215, baseType: !1968, size: 32, offset: 896)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1943, line: 31, baseType: !1969)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !195, line: 110, baseType: !158)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1942, file: !1943, line: 216, baseType: !255, size: 16, offset: 928)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1942, file: !1943, line: 217, baseType: !255, size: 16, offset: 944)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1942, file: !1943, line: 221, baseType: !897, size: 16, offset: 960)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1942, file: !1943, line: 228, baseType: !190, size: 64, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1943, line: 245, baseType: !1975, size: 320, offset: 1088)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !1943, line: 245, size: 320, elements: !1976)
!1976 = !{!1977, !2004}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1975, file: !1943, line: 246, baseType: !1978, size: 320)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1943, line: 114, size: 320, elements: !1979)
!1979 = !{!1980, !1981, !1993, !1996, !2003}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1978, file: !1943, line: 116, baseType: !190, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1978, file: !1943, line: 117, baseType: !1982, size: 64, offset: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1978, file: !1943, line: 117, size: 64, elements: !1983)
!1983 = !{!1984, !1992}
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1943, line: 118, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1943, line: 118, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1985, file: !1943, line: 120, baseType: !253, size: 16)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1985, file: !1943, line: 121, baseType: !1989, size: 48, offset: 16)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 48, elements: !1990)
!1990 = !{!1991}
!1991 = !DISubrange(count: 6)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1982, file: !1943, line: 127, baseType: !190, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1978, file: !1943, line: 129, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1943, line: 102, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1978, file: !1943, line: 130, baseType: !1997, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1943, line: 108, size: 192, elements: !1999)
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1998, file: !1943, line: 109, baseType: !979, size: 128, align: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1998, file: !1943, line: 110, baseType: !1539, size: 32, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1998, file: !1943, line: 111, baseType: !267, size: 8, offset: 160)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1978, file: !1943, line: 131, baseType: !354, size: 64, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1975, file: !1943, line: 247, baseType: !2005, size: 320)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1975, file: !1943, line: 247, size: 320, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010, !2011}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2005, file: !1943, line: 248, baseType: !190, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2005, file: !1943, line: 249, baseType: !190, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2005, file: !1943, line: 250, baseType: !1994, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2005, file: !1943, line: 251, baseType: !1997, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2005, file: !1943, line: 252, baseType: !431, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1943, line: 260, baseType: !2013, size: 256, offset: 1408)
!2013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !1943, line: 260, size: 256, elements: !2014)
!2014 = !{!2015, !2021}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2013, file: !1943, line: 261, baseType: !2016, size: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1943, line: 134, size: 256, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2016, file: !1943, line: 135, baseType: !162, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2016, file: !1943, line: 136, baseType: !2020, size: 256)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !989)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2013, file: !1943, line: 262, baseType: !2022, size: 256)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2013, file: !1943, line: 262, size: 256, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2022, file: !1943, line: 264, baseType: !356, size: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2022, file: !1943, line: 265, baseType: !2026, size: 128, offset: 128)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2027, line: 22, size: 128, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2028 = !{!2029, !2032}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2026, file: !2027, line: 23, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2027, line: 23, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2026, file: !2027, line: 24, baseType: !190, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1942, file: !1943, line: 280, baseType: !2034, size: 64, offset: 1664)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1943, line: 176, size: 192, elements: !2036)
!2036 = !{!2037, !2046, !2047}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2035, file: !1943, line: 177, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1943, line: 171, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!125, !1941, !2042, !2044, !1941}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2035, file: !1943, line: 178, baseType: !1941, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2035, file: !1943, line: 179, baseType: !1994, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1916, file: !1917, line: 130, baseType: !1941, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1916, file: !1917, line: 131, baseType: !1941, size: 64, offset: 896)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1916, file: !1917, line: 132, baseType: !1941, size: 64, offset: 960)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1916, file: !1917, line: 135, baseType: !162, size: 64, offset: 1024)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1916, file: !1917, line: 137, baseType: !2053, size: 64, offset: 1088)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2055, line: 14, size: 1088, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2056 = !{!2057, !2058, !2067, !2068, !2069, !2070, !2071, !2072}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2054, file: !2055, line: 15, baseType: !1539, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2054, file: !2055, line: 17, baseType: !2059, size: 320, offset: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2060, line: 22, size: 320, elements: !2061)
!2060 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2061 = !{!2062, !2063, !2064, !2065}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2059, file: !2060, line: 23, baseType: !722, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2059, file: !2060, line: 24, baseType: !774, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2059, file: !2060, line: 26, baseType: !356, size: 128, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2059, file: !2060, line: 28, baseType: !2066, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2054, file: !2055, line: 19, baseType: !190, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2054, file: !2055, line: 20, baseType: !768, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2054, file: !2055, line: 23, baseType: !1005, size: 128, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2054, file: !2055, line: 24, baseType: !514, size: 32, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2054, file: !2055, line: 29, baseType: !768, size: 64, offset: 704)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2054, file: !2055, line: 36, baseType: !2073, size: 320, offset: 768)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2074, line: 15, size: 320, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2073, file: !2074, line: 16, baseType: !722, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2073, file: !2074, line: 18, baseType: !125, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2073, file: !2074, line: 19, baseType: !125, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2073, file: !2074, line: 20, baseType: !125, size: 32, offset: 96)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2073, file: !2074, line: 21, baseType: !125, size: 32, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2073, file: !2074, line: 22, baseType: !190, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2073, file: !2074, line: 23, baseType: !190, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1916, file: !1917, line: 138, baseType: !2084, size: 64, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !54, line: 901, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1916, file: !1917, line: 139, baseType: !2087, size: 64, offset: 1216)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2089, line: 16, flags: DIFlagFwdDecl)
!2089 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1916, file: !1917, line: 140, baseType: !2091, size: 64, offset: 1280)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1917, line: 25, size: 64, elements: !2093)
!2093 = !{!2094, !2095, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2092, file: !1917, line: 26, baseType: !389, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2092, file: !1917, line: 27, baseType: !125, size: 32, offset: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2092, file: !1917, line: 28, baseType: !2097, offset: 64)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, elements: !187)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !1917, line: 142, baseType: !2099, size: 128, offset: 1344)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !1917, line: 142, size: 128, elements: !2100)
!2100 = !{!2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2099, file: !1917, line: 143, baseType: !125, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2099, file: !1917, line: 144, baseType: !979, size: 128, align: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1850, file: !30, line: 1013, baseType: !2104, size: 256, offset: 960)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !30, line: 970, size: 256, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2104, file: !30, line: 971, baseType: !190, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2104, file: !30, line: 972, baseType: !7, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2104, file: !30, line: 973, baseType: !7, size: 32, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2104, file: !30, line: 974, baseType: !7, size: 32, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2104, file: !30, line: 975, baseType: !7, size: 32, offset: 160)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2104, file: !30, line: 976, baseType: !664, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1850, file: !30, line: 1014, baseType: !1331, size: 128, offset: 1216)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1850, file: !30, line: 1015, baseType: !508, size: 64, offset: 1344)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1850, file: !30, line: 1016, baseType: !2115, size: 64, offset: 1408)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !30, line: 1914, size: 2112, elements: !2118)
!2118 = !{!2119, !2120, !2124, !2129, !2133, !2217, !2218, !2224, !2237, !2245, !2249, !2250, !2541, !2542, !2546, !2551, !2552, !2556, !2560, !2566, !2567, !2571, !2572, !2578, !2582, !2586, !2592, !2596, !2600, !2604, !2608, !2609, !2615}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2117, file: !30, line: 1915, baseType: !693, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2117, file: !30, line: 1916, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!664, !1849, !664, !125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2117, file: !30, line: 1917, baseType: !2125, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!461, !1849, !431, !476, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2117, file: !30, line: 1918, baseType: !2130, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!461, !1849, !354, !476, !2128}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2117, file: !30, line: 1919, baseType: !2134, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!461, !2137, !2159}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !30, line: 373, size: 384, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2146, !2147, !2148, !2149}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2138, file: !30, line: 374, baseType: !1849, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2138, file: !30, line: 375, baseType: !664, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2138, file: !30, line: 376, baseType: !2143, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2137, !465}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2138, file: !30, line: 377, baseType: !162, size: 64, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2138, file: !30, line: 378, baseType: !125, size: 32, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2138, file: !30, line: 379, baseType: !253, size: 16, offset: 288)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2138, file: !30, line: 380, baseType: !2150, size: 64, offset: 320)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2138, file: !30, line: 380, size: 64, elements: !2151)
!2151 = !{!2152, !2155}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2150, file: !30, line: 386, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !30, line: 386, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2150, file: !30, line: 395, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!461, !162}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2161, line: 41, size: 320, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2173, !2212}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2160, file: !2161, line: 42, baseType: !271, size: 8)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2160, file: !2161, line: 43, baseType: !267, size: 8, offset: 8)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2160, file: !2161, line: 44, baseType: !267, size: 8, offset: 16)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2160, file: !2161, line: 45, baseType: !267, size: 8, offset: 24)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2160, file: !2161, line: 46, baseType: !267, size: 8, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !2161, line: 47, baseType: !2169, size: 64, offset: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !2161, line: 47, size: 64, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2169, file: !2161, line: 48, baseType: !476, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2169, file: !2161, line: 49, baseType: !125, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !2161, line: 61, baseType: !2174, size: 128, offset: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !2161, line: 61, size: 128, elements: !2175)
!2175 = !{!2176, !2182}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2174, file: !2161, line: 67, baseType: !2177, size: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2178, line: 17, size: 128, elements: !2179)
!2178 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2177, file: !2178, line: 19, baseType: !162, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2177, file: !2178, line: 20, baseType: !477, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2161, line: 68, baseType: !2183, size: 128)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2174, file: !2161, line: 68, size: 128, elements: !2184)
!2184 = !{!2185, !2211}
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2183, file: !2161, line: 69, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2183, file: !2161, line: 69, size: 64, elements: !2187)
!2187 = !{!2188, !2191, !2198, !2202, !2210}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2186, file: !2161, line: 71, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2186, file: !2161, line: 72, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2161, line: 17, size: 128, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2194, file: !2161, line: 18, baseType: !162, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2194, file: !2161, line: 19, baseType: !476, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2186, file: !2161, line: 73, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2201)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2161, line: 73, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2186, file: !2161, line: 74, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2205, line: 296, size: 128, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2204, file: !2205, line: 297, baseType: !369, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2204, file: !2205, line: 299, baseType: !194, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2204, file: !2205, line: 300, baseType: !162, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2186, file: !2161, line: 75, baseType: !162, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2183, file: !2161, line: 77, baseType: !476, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !2161, line: 80, baseType: !2213, size: 64, offset: 256)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !2161, line: 80, size: 64, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2213, file: !2161, line: 81, baseType: !190, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2213, file: !2161, line: 82, baseType: !664, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2117, file: !30, line: 1920, baseType: !2134, size: 64, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2117, file: !30, line: 1921, baseType: !2219, size: 64, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!125, !2137, !2222, !7}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !30, line: 53, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2117, file: !30, line: 1923, baseType: !2225, size: 64, offset: 448)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!125, !1849, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !30, line: 1858, size: 128, elements: !2230)
!2230 = !{!2231, !2236}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2229, file: !30, line: 1859, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !30, line: 1855, baseType: !2233)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!267, !2228, !354, !125, !664, !191, !7}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2229, file: !30, line: 1860, baseType: !664, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2117, file: !30, line: 1924, baseType: !2238, size: 64, offset: 512)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2241, !1849, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2242, line: 59, baseType: !7)
!2242 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !679, line: 31, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2117, file: !30, line: 1925, baseType: !2246, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!465, !1849, !7, !190}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2117, file: !30, line: 1926, baseType: !2246, size: 64, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2117, file: !30, line: 1927, baseType: !2251, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!125, !1849, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !54, line: 625, size: 1344, elements: !2256)
!2256 = !{!2257, !2266, !2267, !2275, !2282, !2283, !2288, !2289, !2294, !2295, !2298, !2534, !2535, !2536, !2537, !2538, !2539}
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !54, line: 628, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !54, line: 628, size: 128, elements: !2259)
!2259 = !{!2260, !2265}
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !54, line: 629, baseType: !2261, size: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2258, file: !54, line: 629, size: 128, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2261, file: !54, line: 631, baseType: !190, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2261, file: !54, line: 632, baseType: !190, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2258, file: !54, line: 635, baseType: !979, size: 128, align: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2255, file: !54, line: 639, baseType: !1822, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2255, file: !54, line: 640, baseType: !2268, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2269, line: 297, baseType: !2270)
!2269 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2269, line: 297, size: 64, elements: !2271)
!2271 = !{!2272}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2270, file: !2269, line: 297, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2274, line: 19, baseType: !190)
!2274 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !54, line: 646, baseType: !2276, size: 64, offset: 256)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !54, line: 646, size: 64, elements: !2277)
!2277 = !{!2278, !2281}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2276, file: !54, line: 647, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !54, line: 542, baseType: !190)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2276, file: !54, line: 648, baseType: !2280, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2255, file: !54, line: 666, baseType: !125, size: 32, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2255, file: !54, line: 667, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !54, line: 579, size: 320, elements: !2286)
!2286 = !{!2287}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2285, file: !54, line: 580, baseType: !1419, size: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2255, file: !54, line: 670, baseType: !267, size: 8, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2255, file: !54, line: 681, baseType: !2290, size: 256, offset: 512)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2255, file: !54, line: 678, size: 256, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2290, file: !54, line: 679, baseType: !874, size: 192, align: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2290, file: !54, line: 680, baseType: !190, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2255, file: !54, line: 689, baseType: !356, size: 128, offset: 768)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2255, file: !54, line: 691, baseType: !2296, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !54, line: 691, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2255, file: !54, line: 694, baseType: !2299, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2302, line: 563, size: 1024, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2303 = !{!2304, !2308, !2309, !2313, !2317, !2321, !2498, !2502, !2506, !2510, !2511, !2512, !2516, !2520, !2526, !2530}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2301, file: !2302, line: 564, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2254}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2301, file: !2302, line: 569, baseType: !2305, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2301, file: !2302, line: 571, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!125, !2254, !190}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2301, file: !2302, line: 572, baseType: !2314, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!125, !2254}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2301, file: !2302, line: 578, baseType: !2318, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!125, !2254, !190, !190, !190}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2301, file: !2302, line: 580, baseType: !2322, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !54, line: 1184, baseType: !7)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2302, line: 512, size: 896, elements: !2328)
!2328 = !{!2329, !2337, !2338, !2345, !2352, !2362, !2491, !2492, !2494, !2496}
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2327, file: !2302, line: 513, baseType: !2330, size: 320)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2327, file: !2302, line: 513, size: 320, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2335, !2336}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2330, file: !2302, line: 514, baseType: !2254, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2330, file: !2302, line: 515, baseType: !194, size: 32, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2330, file: !2302, line: 516, baseType: !190, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2330, file: !2302, line: 517, baseType: !190, size: 64, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2330, file: !2302, line: 518, baseType: !190, size: 64, offset: 256)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2327, file: !2302, line: 520, baseType: !53, size: 32, offset: 320)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2327, file: !2302, line: 522, baseType: !2339, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2274, line: 22, baseType: !2341)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2274, line: 22, size: 64, elements: !2342)
!2342 = !{!2343}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2341, file: !2274, line: 22, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2274, line: 15, baseType: !190)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2327, file: !2302, line: 524, baseType: !2346, size: 64, offset: 448)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2269, line: 372, baseType: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2269, line: 372, size: 64, elements: !2349)
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2348, file: !2269, line: 372, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2274, line: 16, baseType: !190)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2327, file: !2302, line: 527, baseType: !2353, size: 64, offset: 512)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2327, file: !2302, line: 527, size: 64, elements: !2354)
!2354 = !{!2355, !2361}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2353, file: !2302, line: 528, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2274, line: 21, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2274, line: 21, size: 64, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2357, file: !2274, line: 21, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2274, line: 14, baseType: !190)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2353, file: !2302, line: 529, baseType: !2340, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2327, file: !2302, line: 534, baseType: !2363, size: 64, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !54, line: 74, size: 512, align: 128, elements: !2365)
!2365 = !{!2366, !2367, !2485, !2490}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2364, file: !54, line: 75, baseType: !190, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !54, line: 83, baseType: !2368, size: 320, offset: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2364, file: !54, line: 83, size: 320, elements: !2369)
!2369 = !{!2370, !2391, !2405, !2409, !2484}
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !54, line: 84, baseType: !2371, size: 320)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !54, line: 84, size: 320, elements: !2372)
!2372 = !{!2373, !2384, !2385, !2390}
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !54, line: 90, baseType: !2374, size: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !54, line: 90, size: 128, elements: !2375)
!2375 = !{!2376, !2377, !2382, !2383}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2374, file: !54, line: 91, baseType: !356, size: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, scope: !2374, file: !54, line: 94, baseType: !2378, size: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2374, file: !54, line: 94, size: 128, elements: !2379)
!2379 = !{!2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2378, file: !54, line: 96, baseType: !162, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2378, file: !54, line: 98, baseType: !7, size: 32, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2374, file: !54, line: 102, baseType: !356, size: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2374, file: !54, line: 103, baseType: !356, size: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2371, file: !54, line: 106, baseType: !504, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !54, line: 107, baseType: !2386, size: 64, offset: 192)
!2386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !54, line: 107, size: 64, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2386, file: !54, line: 108, baseType: !190, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2386, file: !54, line: 109, baseType: !190, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2371, file: !54, line: 117, baseType: !190, size: 64, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !54, line: 119, baseType: !2392, size: 320)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !54, line: 119, size: 320, elements: !2393)
!2393 = !{!2394, !2395, !2398, !2399, !2400}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2392, file: !54, line: 124, baseType: !190, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2392, file: !54, line: 125, baseType: !2396, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !54, line: 125, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2392, file: !54, line: 126, baseType: !190, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2392, file: !54, line: 127, baseType: !190, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !54, line: 128, baseType: !2401, size: 64, offset: 256)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2392, file: !54, line: 128, size: 64, elements: !2402)
!2402 = !{!2403, !2404}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2401, file: !54, line: 133, baseType: !190, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2401, file: !54, line: 138, baseType: !768, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !54, line: 141, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !54, line: 141, size: 64, elements: !2407)
!2407 = !{!2408}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2406, file: !54, line: 142, baseType: !190, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !54, line: 144, baseType: !2410, size: 128)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !54, line: 144, size: 128, elements: !2411)
!2411 = !{!2412, !2483}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2410, file: !54, line: 146, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !70, line: 126, size: 1216, elements: !2415)
!2415 = !{!2416, !2426, !2447, !2448, !2449, !2450, !2451, !2465, !2466, !2467}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2414, file: !70, line: 127, baseType: !2417, size: 384)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !70, line: 21, size: 384, elements: !2418)
!2418 = !{!2419, !2420, !2422, !2423, !2424, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2417, file: !70, line: 22, baseType: !190, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2417, file: !70, line: 23, baseType: !2421, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2417, file: !70, line: 24, baseType: !2421, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2417, file: !70, line: 25, baseType: !190, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2417, file: !70, line: 26, baseType: !190, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2417, file: !70, line: 27, baseType: !190, size: 64, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2414, file: !70, line: 128, baseType: !2427, size: 128, offset: 384)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2428, line: 105, size: 128, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2429 = !{!2430, !2431}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2427, file: !2428, line: 110, baseType: !190, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2427, file: !2428, line: 118, baseType: !2432, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2428, line: 95, size: 448, elements: !2434)
!2434 = !{!2435, !2436, !2442, !2443, !2444, !2445, !2446}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2433, file: !2428, line: 96, baseType: !768, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2433, file: !2428, line: 97, baseType: !2437, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2428, line: 60, baseType: !2439)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2433, file: !2428, line: 98, baseType: !2437, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2433, file: !2428, line: 99, baseType: !267, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2433, file: !2428, line: 100, baseType: !267, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2433, file: !2428, line: 101, baseType: !979, size: 128, align: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2433, file: !2428, line: 102, baseType: !2441, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2414, file: !70, line: 129, baseType: !713, size: 256, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2414, file: !70, line: 130, baseType: !69, size: 32, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2414, file: !70, line: 131, baseType: !7, size: 32, offset: 800)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2414, file: !70, line: 132, baseType: !190, size: 64, offset: 832)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2414, file: !70, line: 133, baseType: !2452, size: 64, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !70, line: 77, size: 192, elements: !2455)
!2455 = !{!2456, !2460, !2461}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2454, file: !70, line: 83, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !2363}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2454, file: !70, line: 89, baseType: !2322, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2454, file: !70, line: 100, baseType: !2462, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!125, !2413, !190, !190, !125}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2414, file: !70, line: 134, baseType: !162, size: 64, offset: 960)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2414, file: !70, line: 135, baseType: !125, size: 32, offset: 1024)
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2414, file: !70, line: 136, baseType: !2468, size: 128, offset: 1088)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2414, file: !70, line: 136, size: 128, elements: !2469)
!2469 = !{!2470, !2476}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2468, file: !70, line: 137, baseType: !2471, size: 128)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2472, line: 6, size: 128, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2471, file: !2472, line: 7, baseType: !191, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2471, file: !2472, line: 8, baseType: !191, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !70, line: 138, baseType: !2477)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2468, file: !70, line: 138, elements: !2478)
!2478 = !{!2479, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2477, file: !70, line: 138, baseType: !2480)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2477, file: !70, line: 138, elements: !1048)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2477, file: !70, line: 138, baseType: !2482)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2471, elements: !187)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2410, file: !54, line: 147, baseType: !162, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2368, file: !54, line: 161, baseType: !979, size: 128, align: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !54, line: 164, baseType: !2486, size: 32, offset: 384)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2364, file: !54, line: 164, size: 32, elements: !2487)
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2486, file: !54, line: 169, baseType: !389, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2486, file: !54, line: 177, baseType: !7, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2364, file: !54, line: 181, baseType: !389, size: 32, offset: 416)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2327, file: !2302, line: 535, baseType: !2363, size: 64, offset: 640)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2327, file: !2302, line: 541, baseType: !2493, size: 64, offset: 704)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2327, file: !2302, line: 545, baseType: !2495, size: 64, offset: 768)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2327, file: !2302, line: 549, baseType: !2497, size: 64, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2269, line: 520, baseType: !2363)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2301, file: !2302, line: 581, baseType: !2499, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2325, !2326, !7}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2301, file: !2302, line: 582, baseType: !2503, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2325, !2326, !190, !190}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2301, file: !2302, line: 584, baseType: !2507, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!190, !2254}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2301, file: !2302, line: 588, baseType: !2322, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2301, file: !2302, line: 591, baseType: !2322, size: 64, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2301, file: !2302, line: 597, baseType: !2513, size: 64, offset: 704)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!125, !2254, !190, !162, !125, !125}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2301, file: !2302, line: 603, baseType: !2517, size: 64, offset: 768)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!354, !2254}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2301, file: !2302, line: 613, baseType: !2521, size: 64, offset: 832)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!125, !2254, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !54, line: 717, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2301, file: !2302, line: 625, baseType: !2527, size: 64, offset: 896)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!2524, !2254, !190}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2301, file: !2302, line: 633, baseType: !2531, size: 64, offset: 960)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!2363, !2254, !190}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2255, file: !54, line: 697, baseType: !190, size: 64, offset: 1024)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2255, file: !54, line: 699, baseType: !1849, size: 64, offset: 1088)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2255, file: !54, line: 700, baseType: !162, size: 64, offset: 1152)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2255, file: !54, line: 711, baseType: !768, size: 64, offset: 1216)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2255, file: !54, line: 717, baseType: !2524, size: 64, offset: 1280)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2255, file: !54, line: 722, baseType: !2540, offset: 1344)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !54, line: 570, elements: !1048)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2117, file: !30, line: 1928, baseType: !190, size: 64, offset: 768)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2117, file: !30, line: 1929, baseType: !2543, size: 64, offset: 832)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!125, !508, !1849}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2117, file: !30, line: 1930, baseType: !2547, size: 64, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!125, !1849, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !30, line: 1061, baseType: !162)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2117, file: !30, line: 1931, baseType: !2543, size: 64, offset: 960)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2117, file: !30, line: 1932, baseType: !2553, size: 64, offset: 1024)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!125, !1849, !664, !664, !125}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2117, file: !30, line: 1933, baseType: !2557, size: 64, offset: 1088)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!125, !125, !1849, !125}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2117, file: !30, line: 1934, baseType: !2561, size: 64, offset: 1152)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!125, !1849, !125, !2564}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !30, line: 1063, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2117, file: !30, line: 1935, baseType: !1846, size: 64, offset: 1216)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2117, file: !30, line: 1936, baseType: !2568, size: 64, offset: 1280)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!125, !125}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2117, file: !30, line: 1937, baseType: !2561, size: 64, offset: 1344)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2117, file: !30, line: 1938, baseType: !2573, size: 64, offset: 1408)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!461, !2576, !1849, !2128, !476, !7}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1202, line: 59, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2117, file: !30, line: 1939, baseType: !2579, size: 64, offset: 1472)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!461, !1849, !2128, !2576, !476, !7}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2117, file: !30, line: 1940, baseType: !2583, size: 64, offset: 1536)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !1849}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2117, file: !30, line: 1941, baseType: !2587, size: 64, offset: 1600)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!125, !1849, !125, !2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2117, file: !30, line: 1942, baseType: !2593, size: 64, offset: 1664)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!465, !1849, !125, !664, !664}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2117, file: !30, line: 1944, baseType: !2597, size: 64, offset: 1728)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !1200, !1849}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2117, file: !30, line: 1948, baseType: !2601, size: 64, offset: 1792)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!461, !1849, !664, !1849, !664, !476, !7}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2117, file: !30, line: 1950, baseType: !2605, size: 64, offset: 1856)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!664, !1849, !664, !1849, !664, !664, !7}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2117, file: !30, line: 1953, baseType: !2553, size: 64, offset: 1920)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2117, file: !30, line: 1954, baseType: !2610, size: 64, offset: 1984)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!125, !2613, !7}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !30, line: 1911, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2117, file: !30, line: 1955, baseType: !2616, size: 64, offset: 2048)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!125, !2613, !2222, !7}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1850, file: !30, line: 1018, baseType: !191, size: 64, offset: 1472)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1850, file: !30, line: 1020, baseType: !162, size: 64, offset: 1536)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1850, file: !30, line: 1023, baseType: !162, size: 64, offset: 1600)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1850, file: !30, line: 1027, baseType: !2623, size: 64, offset: 1664)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1850, file: !30, line: 1029, baseType: !504, size: 64, offset: 1728)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1850, file: !30, line: 1030, baseType: !2626, size: 32, offset: 1792)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2627, line: 8, baseType: !158)
!2627 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1850, file: !30, line: 1031, baseType: !2626, size: 32, offset: 1824)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1826, file: !54, line: 756, baseType: !190, size: 64, offset: 704)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1826, file: !54, line: 757, baseType: !190, size: 64, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1826, file: !54, line: 760, baseType: !190, size: 64, offset: 832)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1826, file: !54, line: 761, baseType: !190, size: 64, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1826, file: !54, line: 763, baseType: !190, size: 64, offset: 960)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1826, file: !54, line: 764, baseType: !2635, size: 64, offset: 1024)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2269, line: 299, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2269, line: 299, size: 64, elements: !2638)
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2637, file: !2269, line: 299, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2274, line: 18, baseType: !190)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1826, file: !54, line: 773, baseType: !389, size: 32, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1826, file: !54, line: 785, baseType: !389, size: 32, offset: 1120)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1826, file: !54, line: 795, baseType: !2644, size: 64, offset: 1152)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !54, line: 726, size: 128, elements: !2646)
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2645, file: !54, line: 727, baseType: !191, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2645, file: !54, line: 728, baseType: !125, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1826, file: !54, line: 801, baseType: !190, size: 64, offset: 1216)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1826, file: !54, line: 804, baseType: !768, size: 64, offset: 1280)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1826, file: !54, line: 806, baseType: !125, size: 32, offset: 1344)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1826, file: !54, line: 808, baseType: !369, size: 32, offset: 1376)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1826, file: !54, line: 823, baseType: !1419, size: 320, offset: 1408)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1826, file: !54, line: 825, baseType: !356, size: 128, offset: 1728)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1826, file: !54, line: 845, baseType: !125, size: 32, offset: 1856)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1826, file: !54, line: 849, baseType: !190, size: 64, offset: 1920)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1826, file: !54, line: 850, baseType: !190, size: 64, offset: 1984)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1826, file: !54, line: 852, baseType: !190, size: 64, offset: 2048)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1826, file: !54, line: 853, baseType: !190, size: 64, offset: 2112)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1826, file: !54, line: 854, baseType: !770, size: 64, offset: 2176)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1826, file: !54, line: 855, baseType: !190, size: 64, offset: 2240)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1826, file: !54, line: 856, baseType: !190, size: 64, offset: 2304)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1826, file: !54, line: 857, baseType: !190, size: 64, offset: 2368)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1826, file: !54, line: 858, baseType: !190, size: 64, offset: 2432)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1826, file: !54, line: 865, baseType: !554, size: 32, offset: 2496)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1826, file: !54, line: 867, baseType: !369, size: 32, offset: 2528)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1826, file: !54, line: 869, baseType: !190, size: 64, offset: 2560)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1826, file: !54, line: 869, baseType: !190, size: 64, offset: 2624)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1826, file: !54, line: 869, baseType: !190, size: 64, offset: 2688)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1826, file: !54, line: 869, baseType: !190, size: 64, offset: 2752)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1826, file: !54, line: 870, baseType: !190, size: 64, offset: 2816)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1826, file: !54, line: 870, baseType: !190, size: 64, offset: 2880)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1826, file: !54, line: 870, baseType: !190, size: 64, offset: 2944)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1826, file: !54, line: 871, baseType: !190, size: 64, offset: 3008)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1826, file: !54, line: 871, baseType: !190, size: 64, offset: 3072)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1826, file: !54, line: 871, baseType: !190, size: 64, offset: 3136)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1826, file: !54, line: 871, baseType: !190, size: 64, offset: 3200)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1826, file: !54, line: 873, baseType: !2679, size: 3328, offset: 3264)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 3328, elements: !2680)
!2680 = !{!2681}
!2681 = !DISubrange(count: 52)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1826, file: !54, line: 875, baseType: !2683, size: 1280, offset: 6592)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2059, size: 1280, elements: !989)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1826, file: !54, line: 877, baseType: !2685, size: 64, offset: 7872)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !54, line: 877, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1826, file: !54, line: 880, baseType: !2688, size: 1088, offset: 7936)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2689, line: 72, baseType: !2690)
!2689 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2689, line: 23, size: 1088, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2699, !2700, !2701, !2702, !2729, !2730, !2731}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2690, file: !2689, line: 28, baseType: !191, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2690, file: !2689, line: 38, baseType: !770, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2690, file: !2689, line: 40, baseType: !190, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2690, file: !2689, line: 43, baseType: !1419, size: 320, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2690, file: !2689, line: 44, baseType: !2697, size: 64, offset: 512)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2689, line: 44, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2690, file: !2689, line: 48, baseType: !190, size: 64, offset: 576)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2690, file: !2689, line: 59, baseType: !764, size: 256, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2690, file: !2689, line: 60, baseType: !162, size: 64, offset: 896)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2690, file: !2689, line: 61, baseType: !2703, size: 64, offset: 960)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2706, line: 13, size: 1216, elements: !2707)
!2706 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713, !2714, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2705, file: !2706, line: 14, baseType: !162, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2705, file: !2706, line: 15, baseType: !190, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2705, file: !2706, line: 17, baseType: !190, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2705, file: !2706, line: 17, baseType: !190, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2705, file: !2706, line: 18, baseType: !190, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2705, file: !2706, line: 18, baseType: !190, size: 64, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2705, file: !2706, line: 19, baseType: !2715, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2705, file: !2706, line: 21, baseType: !465, size: 64, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2705, file: !2706, line: 23, baseType: !465, size: 64, offset: 512)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2705, file: !2706, line: 24, baseType: !465, size: 64, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2705, file: !2706, line: 25, baseType: !465, size: 64, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2705, file: !2706, line: 26, baseType: !465, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2705, file: !2706, line: 27, baseType: !465, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2705, file: !2706, line: 28, baseType: !465, size: 64, offset: 832)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2705, file: !2706, line: 29, baseType: !465, size: 64, offset: 896)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2705, file: !2706, line: 30, baseType: !465, size: 64, offset: 960)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2705, file: !2706, line: 31, baseType: !465, size: 64, offset: 1024)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2705, file: !2706, line: 32, baseType: !465, size: 64, offset: 1088)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2705, file: !2706, line: 33, baseType: !465, size: 64, offset: 1152)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2690, file: !2689, line: 63, baseType: !389, size: 32, offset: 1024)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2690, file: !2689, line: 69, baseType: !253, size: 16, offset: 1056)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2690, file: !2689, line: 70, baseType: !895, size: 16, offset: 1072)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1826, file: !54, line: 882, baseType: !190, size: 64, offset: 9024)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1826, file: !54, line: 885, baseType: !369, size: 32, offset: 9088)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1826, file: !54, line: 886, baseType: !2735, size: 64, offset: 9152)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !54, line: 732, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1826, file: !54, line: 901, baseType: !2084, size: 64, offset: 9216)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1826, file: !54, line: 904, baseType: !1849, size: 64, offset: 9280)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1826, file: !54, line: 906, baseType: !2740, size: 64, offset: 9344)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !54, line: 906, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1826, file: !54, line: 930, baseType: !389, size: 32, offset: 9408)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1826, file: !54, line: 933, baseType: !389, size: 32, offset: 9440)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1826, file: !54, line: 935, baseType: !2745, size: 64, offset: 9472)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !84, line: 103, size: 64, elements: !2746)
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2745, file: !84, line: 104, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !84, line: 101, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1826, file: !54, line: 940, baseType: !768, size: 64, offset: 9536)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1826, file: !54, line: 942, baseType: !1019, size: 256, offset: 9600)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1823, file: !54, line: 986, baseType: !2753, offset: 10240)
!2753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !187)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1526, file: !1202, line: 882, baseType: !1822, size: 64, offset: 9792)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1526, file: !1202, line: 884, baseType: !125, size: 32, offset: 9856)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1526, file: !1202, line: 885, baseType: !125, size: 32, offset: 9888)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1526, file: !1202, line: 886, baseType: !125, size: 32, offset: 9920)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1526, file: !1202, line: 888, baseType: !125, size: 32, offset: 9952)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1526, file: !1202, line: 890, baseType: !190, size: 64, offset: 9984)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1526, file: !1202, line: 893, baseType: !7, size: 32, offset: 10048)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1526, file: !1202, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1526, file: !1202, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1526, file: !1202, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1526, file: !1202, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1526, file: !1202, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1526, file: !1202, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1526, file: !1202, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1526, file: !1202, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1526, file: !1202, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1526, file: !1202, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1526, file: !1202, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1526, file: !1202, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1526, file: !1202, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1526, file: !1202, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1526, file: !1202, line: 969, baseType: !190, size: 64, offset: 10176)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1526, file: !1202, line: 971, baseType: !2777, size: 448, offset: 10240)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !78, line: 25, size: 448, elements: !2778)
!2778 = !{!2779, !2780, !2785}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2777, file: !78, line: 26, baseType: !190, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2777, file: !78, line: 27, baseType: !2781, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!465, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !2777, file: !78, line: 28, baseType: !2786, size: 320, offset: 128)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2777, file: !78, line: 28, size: 320, elements: !2787)
!2787 = !{!2788, !2797, !2822}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2786, file: !78, line: 37, baseType: !2789, size: 320)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2786, file: !78, line: 30, size: 320, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2789, file: !78, line: 31, baseType: !163, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2789, file: !78, line: 32, baseType: !158, size: 32, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2789, file: !78, line: 33, baseType: !158, size: 32, offset: 96)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2789, file: !78, line: 34, baseType: !158, size: 32, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2789, file: !78, line: 35, baseType: !191, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2789, file: !78, line: 36, baseType: !163, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2786, file: !78, line: 47, baseType: !2798, size: 192)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2786, file: !78, line: 39, size: 192, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2821}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2798, file: !78, line: 40, baseType: !1693, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2798, file: !78, line: 41, baseType: !77, size: 32, offset: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, scope: !2798, file: !78, line: 42, baseType: !2803, size: 64, offset: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2798, file: !78, line: 42, size: 64, elements: !2804)
!2804 = !{!2805, !2813}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2803, file: !78, line: 43, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2808, line: 7, size: 128, elements: !2809)
!2808 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2809 = !{!2810, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2807, file: !2808, line: 8, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !463, line: 93, baseType: !666)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2807, file: !2808, line: 9, baseType: !666, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2803, file: !78, line: 44, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2816, line: 7, size: 64, elements: !2817)
!2816 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2817 = !{!2818, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2815, file: !2816, line: 8, baseType: !2819, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2816, line: 5, baseType: !760)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2815, file: !2816, line: 9, baseType: !760, size: 32, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2798, file: !78, line: 46, baseType: !191, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2786, file: !78, line: 55, baseType: !2823, size: 256)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2786, file: !78, line: 49, size: 256, elements: !2824)
!2824 = !{!2825, !2828, !2829, !2830, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2823, file: !78, line: 50, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !78, line: 14, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2823, file: !78, line: 51, baseType: !125, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2823, file: !78, line: 52, baseType: !125, size: 32, offset: 96)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2823, file: !78, line: 53, baseType: !190, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2823, file: !78, line: 54, baseType: !190, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1526, file: !1202, line: 973, baseType: !2833, size: 32, offset: 10688)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !195, line: 27, baseType: !2834)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !463, line: 28, baseType: !125)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1526, file: !1202, line: 974, baseType: !2833, size: 32, offset: 10720)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1526, file: !1202, line: 978, baseType: !190, size: 64, offset: 10752)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1526, file: !1202, line: 987, baseType: !1525, size: 64, offset: 10816)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1526, file: !1202, line: 990, baseType: !1525, size: 64, offset: 10880)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1526, file: !1202, line: 995, baseType: !356, size: 128, offset: 10944)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1526, file: !1202, line: 996, baseType: !356, size: 128, offset: 11072)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1526, file: !1202, line: 997, baseType: !1525, size: 64, offset: 11200)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1526, file: !1202, line: 1005, baseType: !356, size: 128, offset: 11264)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1526, file: !1202, line: 1006, baseType: !356, size: 128, offset: 11392)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1526, file: !1202, line: 1009, baseType: !1890, size: 64, offset: 11520)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1526, file: !1202, line: 1010, baseType: !2846, size: 512, offset: 11584)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 512, elements: !989)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1526, file: !1202, line: 1011, baseType: !356, size: 128, offset: 12096)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1526, file: !1202, line: 1012, baseType: !356, size: 128, offset: 12224)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1526, file: !1202, line: 1014, baseType: !712, size: 64, offset: 12352)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1526, file: !1202, line: 1017, baseType: !273, size: 64, offset: 12416)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1526, file: !1202, line: 1020, baseType: !273, size: 64, offset: 12480)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1526, file: !1202, line: 1023, baseType: !162, size: 64, offset: 12544)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1526, file: !1202, line: 1025, baseType: !191, size: 64, offset: 12608)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1526, file: !1202, line: 1026, baseType: !191, size: 64, offset: 12672)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1526, file: !1202, line: 1031, baseType: !191, size: 64, offset: 12736)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1526, file: !1202, line: 1032, baseType: !2857, size: 192, offset: 12800)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1202, line: 324, size: 192, elements: !2858)
!2858 = !{!2859, !2860, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2857, file: !1202, line: 326, baseType: !191, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2857, file: !1202, line: 327, baseType: !191, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2857, file: !1202, line: 328, baseType: !722, size: 32, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1526, file: !1202, line: 1041, baseType: !190, size: 64, offset: 12992)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1526, file: !1202, line: 1042, baseType: !190, size: 64, offset: 13056)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1526, file: !1202, line: 1045, baseType: !191, size: 64, offset: 13120)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1526, file: !1202, line: 1048, baseType: !191, size: 64, offset: 13184)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1526, file: !1202, line: 1051, baseType: !190, size: 64, offset: 13248)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1526, file: !1202, line: 1052, baseType: !190, size: 64, offset: 13312)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1526, file: !1202, line: 1055, baseType: !2869, size: 640, offset: 13376)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2870, line: 132, size: 640, elements: !2871)
!2870 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2871 = !{!2872, !2878, !2879}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2869, file: !2870, line: 133, baseType: !2873, size: 576)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 576, elements: !432)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2870, line: 117, size: 192, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2874, file: !2870, line: 118, baseType: !191, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2874, file: !2870, line: 119, baseType: !1702, size: 128, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2869, file: !2870, line: 134, baseType: !7, size: 32, offset: 576)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2869, file: !2870, line: 135, baseType: !7, size: 32, offset: 608)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1526, file: !1202, line: 1058, baseType: !2881, size: 448, offset: 14016)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2870, line: 144, size: 448, elements: !2882)
!2882 = !{!2883, !2884, !2885}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2881, file: !2870, line: 145, baseType: !979, size: 128, align: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2881, file: !2870, line: 146, baseType: !764, size: 256, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2881, file: !2870, line: 147, baseType: !7, size: 32, offset: 384)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1526, file: !1202, line: 1064, baseType: !1914, size: 64, offset: 14464)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1526, file: !1202, line: 1067, baseType: !1914, size: 64, offset: 14528)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1526, file: !1202, line: 1070, baseType: !1914, size: 64, offset: 14592)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1526, file: !1202, line: 1074, baseType: !1941, size: 64, offset: 14656)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1526, file: !1202, line: 1084, baseType: !236, size: 128, offset: 14720)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1526, file: !1202, line: 1086, baseType: !2892, size: 64, offset: 14848)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1202, line: 55, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1526, file: !1202, line: 1089, baseType: !2895, size: 64, offset: 14912)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2896, line: 12, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2895, file: !2896, line: 13, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2896, line: 8, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1526, file: !1202, line: 1090, baseType: !2902, size: 128, offset: 14976)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2903, line: 13, size: 128, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2904 = !{!2905}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2902, file: !2903, line: 14, baseType: !356, size: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1526, file: !1202, line: 1097, baseType: !2907, size: 64, offset: 15104)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1202, line: 50, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1526, file: !1202, line: 1100, baseType: !2910, size: 64, offset: 15168)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1202, line: 1100, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1526, file: !1202, line: 1103, baseType: !2913, size: 64, offset: 15232)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1202, line: 53, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1526, file: !1202, line: 1107, baseType: !2916, size: 64, offset: 15296)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1202, line: 56, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1526, file: !1202, line: 1110, baseType: !2919, size: 64, offset: 15360)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2921, line: 93, size: 8768, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2970, !2979, !2980, !2982, !2983, !2984, !2987, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3025, !3026, !3033, !3043, !3046, !3047, !3050, !3051, !3052, !3053, !3054, !3055}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2920, file: !2921, line: 94, baseType: !1539, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2920, file: !2921, line: 95, baseType: !389, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2920, file: !2921, line: 96, baseType: !125, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2920, file: !2921, line: 97, baseType: !125, size: 32, offset: 96)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2920, file: !2921, line: 98, baseType: !356, size: 128, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2920, file: !2921, line: 100, baseType: !1512, size: 192, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2920, file: !2921, line: 103, baseType: !1525, size: 64, offset: 448)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2920, file: !2921, line: 106, baseType: !2931, size: 192, offset: 512)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2089, line: 32, size: 192, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2931, file: !2089, line: 33, baseType: !356, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2931, file: !2089, line: 34, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2936, line: 25, baseType: !2937)
!2936 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2936, line: 23, size: 64, elements: !2938)
!2938 = !{!2939}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2937, file: !2936, line: 24, baseType: !1773, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2920, file: !2921, line: 109, baseType: !1128, size: 64, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2920, file: !2921, line: 112, baseType: !125, size: 32, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2920, file: !2921, line: 114, baseType: !125, size: 32, offset: 800)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2920, file: !2921, line: 115, baseType: !1525, size: 64, offset: 832)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2920, file: !2921, line: 118, baseType: !125, size: 32, offset: 896)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2920, file: !2921, line: 119, baseType: !7, size: 32, offset: 928)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2920, file: !2921, line: 121, baseType: !2947, size: 64, offset: 960)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2921, line: 80, size: 448, elements: !2949)
!2949 = !{!2950, !2951, !2957}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2948, file: !2921, line: 81, baseType: !389, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2948, file: !2921, line: 82, baseType: !2952, size: 128, offset: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2921, line: 75, size: 128, elements: !2953)
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2952, file: !2921, line: 76, baseType: !1525, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2952, file: !2921, line: 77, baseType: !2956, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2948, file: !2921, line: 83, baseType: !713, size: 256, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2920, file: !2921, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2920, file: !2921, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2920, file: !2921, line: 138, baseType: !7, size: 32, offset: 1056)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2920, file: !2921, line: 139, baseType: !356, size: 128, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2920, file: !2921, line: 142, baseType: !1646, size: 512, offset: 1216)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2920, file: !2921, line: 143, baseType: !1654, size: 64, offset: 1728)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2920, file: !2921, line: 150, baseType: !2965, size: 256, offset: 1792)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2966, size: 256, elements: !183)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2921, line: 38, size: 128, elements: !2967)
!2967 = !{!2968, !2969}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2966, file: !2921, line: 39, baseType: !191, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2966, file: !2921, line: 40, baseType: !191, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2920, file: !2921, line: 156, baseType: !2971, size: 192, offset: 2048)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2921, line: 66, size: 192, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2971, file: !2921, line: 67, baseType: !2974, size: 192)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2921, line: 47, size: 192, elements: !2975)
!2975 = !{!2976, !2977, !2978}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2974, file: !2921, line: 48, baseType: !770, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2974, file: !2921, line: 49, baseType: !770, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2974, file: !2921, line: 50, baseType: !770, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2920, file: !2921, line: 160, baseType: !2869, size: 640, offset: 2240)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2920, file: !2921, line: 163, baseType: !2981, size: 256, offset: 2880)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 256, elements: !989)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2920, file: !2921, line: 169, baseType: !1890, size: 64, offset: 3136)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2920, file: !2921, line: 172, baseType: !125, size: 32, offset: 3200)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2920, file: !2921, line: 174, baseType: !2985, size: 64, offset: 3264)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2921, line: 174, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2920, file: !2921, line: 185, baseType: !2988, size: 64, offset: 3328)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !550, line: 860, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 853, size: 64, elements: !2990)
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2989, file: !550, line: 858, baseType: !549, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2989, file: !550, line: 859, baseType: !369, size: 32, offset: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2920, file: !2921, line: 186, baseType: !191, size: 64, offset: 3392)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2920, file: !2921, line: 186, baseType: !191, size: 64, offset: 3456)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2920, file: !2921, line: 186, baseType: !191, size: 64, offset: 3520)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2920, file: !2921, line: 186, baseType: !191, size: 64, offset: 3584)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2920, file: !2921, line: 187, baseType: !191, size: 64, offset: 3648)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2920, file: !2921, line: 188, baseType: !191, size: 64, offset: 3712)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2920, file: !2921, line: 189, baseType: !2857, size: 192, offset: 3776)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2920, file: !2921, line: 190, baseType: !190, size: 64, offset: 3968)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2920, file: !2921, line: 190, baseType: !190, size: 64, offset: 4032)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2920, file: !2921, line: 190, baseType: !190, size: 64, offset: 4096)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2920, file: !2921, line: 190, baseType: !190, size: 64, offset: 4160)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2920, file: !2921, line: 191, baseType: !190, size: 64, offset: 4224)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2920, file: !2921, line: 191, baseType: !190, size: 64, offset: 4288)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2920, file: !2921, line: 191, baseType: !190, size: 64, offset: 4352)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2920, file: !2921, line: 191, baseType: !190, size: 64, offset: 4416)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2920, file: !2921, line: 192, baseType: !190, size: 64, offset: 4480)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2920, file: !2921, line: 192, baseType: !190, size: 64, offset: 4544)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2920, file: !2921, line: 192, baseType: !190, size: 64, offset: 4608)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2920, file: !2921, line: 192, baseType: !190, size: 64, offset: 4672)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2920, file: !2921, line: 193, baseType: !190, size: 64, offset: 4736)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2920, file: !2921, line: 193, baseType: !190, size: 64, offset: 4800)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2920, file: !2921, line: 194, baseType: !3015, size: 448, offset: 4864)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3016, line: 12, size: 448, elements: !3017)
!3016 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3023, !3024}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3015, file: !3016, line: 15, baseType: !191, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3015, file: !3016, line: 17, baseType: !191, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3015, file: !3016, line: 19, baseType: !191, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3015, file: !3016, line: 21, baseType: !191, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3015, file: !3016, line: 29, baseType: !191, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3015, file: !3016, line: 35, baseType: !191, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3015, file: !3016, line: 44, baseType: !191, size: 64, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2920, file: !2921, line: 202, baseType: !193, size: 64, offset: 5312)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2920, file: !2921, line: 213, baseType: !3027, size: 2048, offset: 5376)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3028, size: 2048, elements: !238)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3029, line: 43, size: 128, elements: !3030)
!3029 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3028, file: !3029, line: 44, baseType: !478, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3028, file: !3029, line: 45, baseType: !478, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2920, file: !2921, line: 216, baseType: !3034, size: 448, offset: 7424)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2921, line: 30, size: 448, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3034, file: !2921, line: 31, baseType: !125, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3034, file: !2921, line: 32, baseType: !465, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3034, file: !2921, line: 33, baseType: !190, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3034, file: !2921, line: 34, baseType: !191, size: 64, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3034, file: !2921, line: 34, baseType: !191, size: 64, offset: 256)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3034, file: !2921, line: 35, baseType: !190, size: 64, offset: 320)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3034, file: !2921, line: 35, baseType: !190, size: 64, offset: 384)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2920, file: !2921, line: 219, baseType: !3044, size: 64, offset: 7872)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2921, line: 219, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2920, file: !2921, line: 222, baseType: !7, size: 32, offset: 7936)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2920, file: !2921, line: 223, baseType: !3048, size: 64, offset: 8000)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2921, line: 223, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2920, file: !2921, line: 230, baseType: !267, size: 8, offset: 8064)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2920, file: !2921, line: 231, baseType: !897, size: 16, offset: 8080)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2920, file: !2921, line: 232, baseType: !897, size: 16, offset: 8096)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2920, file: !2921, line: 234, baseType: !1822, size: 64, offset: 8128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2920, file: !2921, line: 237, baseType: !764, size: 256, offset: 8192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2920, file: !2921, line: 243, baseType: !1419, size: 320, offset: 8448)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1526, file: !1202, line: 1111, baseType: !3057, size: 64, offset: 15424)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2921, line: 20, size: 16640, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3058, file: !2921, line: 21, baseType: !369, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3058, file: !2921, line: 22, baseType: !1539, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3058, file: !2921, line: 23, baseType: !1512, size: 192, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3058, file: !2921, line: 24, baseType: !3064, size: 16384, offset: 256)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3065, size: 16384, elements: !242)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2089, line: 51, size: 256, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3065, file: !2089, line: 52, baseType: !3068, size: 256)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2089, line: 37, size: 256, elements: !3069)
!3069 = !{!3070, !3077, !3078, !3082}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3068, file: !2089, line: 39, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3072, line: 83, baseType: !3073)
!3072 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3072, line: 82, baseType: !3075)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !125}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3068, file: !2089, line: 40, baseType: !190, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3068, file: !2089, line: 46, baseType: !3079, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3072, line: 86, baseType: !3080)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3072, line: 85, baseType: !1123)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3068, file: !2089, line: 48, baseType: !2935, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1526, file: !1202, line: 1112, baseType: !2935, size: 64, offset: 15488)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1526, file: !1202, line: 1113, baseType: !2935, size: 64, offset: 15552)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1526, file: !1202, line: 1115, baseType: !2935, size: 64, offset: 15616)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1526, file: !1202, line: 1116, baseType: !2931, size: 192, offset: 15680)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1526, file: !1202, line: 1117, baseType: !190, size: 64, offset: 15872)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1526, file: !1202, line: 1118, baseType: !476, size: 64, offset: 15936)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1526, file: !1202, line: 1119, baseType: !7, size: 32, offset: 16000)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1526, file: !1202, line: 1121, baseType: !978, size: 64, offset: 16064)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1526, file: !1202, line: 1125, baseType: !3092, size: 64, offset: 16128)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1202, line: 43, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1526, file: !1202, line: 1127, baseType: !514, size: 32, offset: 16192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1526, file: !1202, line: 1128, baseType: !7, size: 32, offset: 16224)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1526, file: !1202, line: 1130, baseType: !3097, size: 128, offset: 16256)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3098, line: 37, size: 128, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3097, file: !3098, line: 38, baseType: !125, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3097, file: !3098, line: 39, baseType: !389, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3097, file: !3098, line: 40, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3098, line: 24, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1526, file: !1202, line: 1131, baseType: !3106, size: 256, offset: 16384)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3107, line: 12, size: 256, elements: !3108)
!3107 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3108 = !{!3109, !3110, !3111, !3112}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3106, file: !3107, line: 13, baseType: !431, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3106, file: !3107, line: 14, baseType: !190, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3106, file: !3107, line: 15, baseType: !190, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3106, file: !3107, line: 16, baseType: !267, size: 8, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1526, file: !1202, line: 1134, baseType: !191, size: 64, offset: 16640)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1526, file: !1202, line: 1135, baseType: !191, size: 64, offset: 16704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1526, file: !1202, line: 1138, baseType: !369, size: 32, offset: 16768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1526, file: !1202, line: 1141, baseType: !722, size: 32, offset: 16800)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1526, file: !1202, line: 1143, baseType: !3118, size: 64, offset: 16832)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1202, line: 735, size: 64, elements: !3119)
!3119 = !{!3120}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3118, file: !1202, line: 736, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1526, file: !1202, line: 1147, baseType: !1705, size: 128, offset: 16896)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1526, file: !1202, line: 1149, baseType: !1525, size: 64, offset: 17024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1526, file: !1202, line: 1151, baseType: !3125, size: 64, offset: 17088)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1202, line: 1151, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1526, file: !1202, line: 1188, baseType: !162, size: 64, offset: 17152)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1526, file: !1202, line: 1191, baseType: !3129, size: 64, offset: 17216)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1202, line: 44, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1526, file: !1202, line: 1194, baseType: !3132, size: 64, offset: 17280)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1202, line: 45, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1526, file: !1202, line: 1197, baseType: !3135, size: 64, offset: 17344)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1202, line: 61, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1526, file: !1202, line: 1199, baseType: !3138, size: 64, offset: 17408)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3140, line: 99, size: 128, elements: !3141)
!3140 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3139, file: !3140, line: 100, baseType: !768, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3139, file: !3140, line: 101, baseType: !389, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3139, file: !3140, line: 103, baseType: !255, size: 16, offset: 96)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1526, file: !1202, line: 1202, baseType: !3146, size: 64, offset: 17472)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1202, line: 48, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1526, file: !1202, line: 1205, baseType: !190, size: 64, offset: 17536)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1526, file: !1202, line: 1206, baseType: !3150, size: 64, offset: 17600)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2089, line: 14, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2089, line: 12, size: 384, elements: !3153)
!3153 = !{!3154}
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !3152, file: !2089, line: 13, baseType: !3155, size: 384)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3152, file: !2089, line: 13, size: 384, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3155, file: !2089, line: 13, baseType: !125, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3155, file: !2089, line: 13, baseType: !125, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3155, file: !2089, line: 13, baseType: !125, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3155, file: !2089, line: 13, baseType: !3161, size: 256, offset: 128)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3162, line: 37, size: 256, elements: !3163)
!3162 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3163 = !{!3164, !3169, !3182, !3188, !3197, !3224, !3229}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3161, file: !3162, line: 42, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 39, size: 64, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3165, file: !3162, line: 40, baseType: !2834, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3165, file: !3162, line: 41, baseType: !520, size: 32, offset: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3161, file: !3162, line: 50, baseType: !3170, size: 192)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 45, size: 192, elements: !3171)
!3171 = !{!3172, !3174, !3175, !3181}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3170, file: !3162, line: 46, baseType: !3173, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !463, line: 95, baseType: !125)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3170, file: !3162, line: 47, baseType: !125, size: 32, offset: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3170, file: !3162, line: 48, baseType: !3176, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3162, line: 11, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3162, line: 8, size: 64, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3177, file: !3162, line: 9, baseType: !125, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3177, file: !3162, line: 10, baseType: !162, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3170, file: !3162, line: 49, baseType: !125, size: 32, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3161, file: !3162, line: 57, baseType: !3183, size: 128)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 53, size: 128, elements: !3184)
!3184 = !{!3185, !3186, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3183, file: !3162, line: 54, baseType: !2834, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3183, file: !3162, line: 55, baseType: !520, size: 32, offset: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3183, file: !3162, line: 56, baseType: !3176, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3161, file: !3162, line: 66, baseType: !3189, size: 256)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 60, size: 256, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3196}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3189, file: !3162, line: 61, baseType: !2834, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3189, file: !3162, line: 62, baseType: !520, size: 32, offset: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3189, file: !3162, line: 63, baseType: !125, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3189, file: !3162, line: 64, baseType: !3195, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !463, line: 94, baseType: !464)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3189, file: !3162, line: 65, baseType: !3195, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3161, file: !3162, line: 105, baseType: !3198, size: 256)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 69, size: 256, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3198, file: !3162, line: 70, baseType: !162, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3162, line: 79, baseType: !3202, size: 192, offset: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3198, file: !3162, line: 79, size: 192, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3213, !3218}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3202, file: !3162, line: 81, baseType: !125, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3202, file: !3162, line: 86, baseType: !897, size: 16)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3202, file: !3162, line: 92, baseType: !3207, size: 192)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 88, size: 192, elements: !3208)
!3208 = !{!3209, !3211, !3212}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3207, file: !3162, line: 89, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 64, elements: !1689)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3207, file: !3162, line: 90, baseType: !162, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3207, file: !3162, line: 91, baseType: !162, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3202, file: !3162, line: 97, baseType: !3214, size: 96)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 94, size: 96, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3214, file: !3162, line: 95, baseType: !3210, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3214, file: !3162, line: 96, baseType: !160, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3202, file: !3162, line: 103, baseType: !3219, size: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3202, file: !3162, line: 99, size: 128, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3219, file: !3162, line: 100, baseType: !190, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3219, file: !3162, line: 101, baseType: !160, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3219, file: !3162, line: 102, baseType: !160, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3161, file: !3162, line: 111, baseType: !3225, size: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 108, size: 128, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3225, file: !3162, line: 109, baseType: !465, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3225, file: !3162, line: 110, baseType: !125, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3161, file: !3162, line: 118, baseType: !3230, size: 128)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3162, line: 114, size: 128, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3230, file: !3162, line: 115, baseType: !162, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3230, file: !3162, line: 116, baseType: !125, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3230, file: !3162, line: 117, baseType: !7, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1526, file: !1202, line: 1208, baseType: !3015, size: 448, offset: 17664)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1526, file: !1202, line: 1215, baseType: !191, size: 64, offset: 18112)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1526, file: !1202, line: 1217, baseType: !191, size: 64, offset: 18176)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1526, file: !1202, line: 1219, baseType: !191, size: 64, offset: 18240)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1526, file: !1202, line: 1223, baseType: !3240, size: 64, offset: 18304)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3241, line: 99, baseType: !3242)
!3241 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3241, line: 99, size: 64, elements: !3243)
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3242, file: !3241, line: 99, baseType: !1773, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1526, file: !1202, line: 1225, baseType: !549, size: 32, offset: 18368)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1526, file: !1202, line: 1226, baseType: !125, size: 32, offset: 18400)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1526, file: !1202, line: 1227, baseType: !125, size: 32, offset: 18432)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1526, file: !1202, line: 1231, baseType: !3249, size: 64, offset: 18496)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1202, line: 1231, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1526, file: !1202, line: 1233, baseType: !356, size: 128, offset: 18560)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1526, file: !1202, line: 1240, baseType: !3253, size: 64, offset: 18688)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1202, line: 62, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1526, file: !1202, line: 1242, baseType: !3256, size: 64, offset: 18752)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1202, line: 1242, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1526, file: !1202, line: 1244, baseType: !356, size: 128, offset: 18816)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1526, file: !1202, line: 1245, baseType: !3260, size: 64, offset: 18944)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1202, line: 51, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1526, file: !1202, line: 1246, baseType: !764, size: 256, offset: 19008)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1526, file: !1202, line: 1247, baseType: !7, size: 32, offset: 19264)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1526, file: !1202, line: 1250, baseType: !3265, size: 64, offset: 19328)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1202, line: 57, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1526, file: !1202, line: 1251, baseType: !764, size: 256, offset: 19392)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1526, file: !1202, line: 1252, baseType: !356, size: 128, offset: 19648)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1526, file: !1202, line: 1259, baseType: !2524, size: 64, offset: 19776)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1526, file: !1202, line: 1260, baseType: !897, size: 16, offset: 19840)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1526, file: !1202, line: 1261, baseType: !897, size: 16, offset: 19856)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1526, file: !1202, line: 1314, baseType: !3273, size: 64, offset: 19904)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3275, line: 62, size: 256, align: 256, elements: !3276)
!3275 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3274, file: !3275, line: 75, baseType: !160, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3274, file: !3275, line: 90, baseType: !160, size: 32, offset: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3274, file: !3275, line: 112, baseType: !192, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3274, file: !3275, line: 132, baseType: !160, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3274, file: !3275, line: 140, baseType: !160, size: 32, offset: 160)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3274, file: !3275, line: 149, baseType: !160, size: 32, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3274, file: !3275, line: 154, baseType: !3284, offset: 224)
!3284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, elements: !187)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1526, file: !1202, line: 1315, baseType: !158, size: 32, offset: 19968)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1526, file: !1202, line: 1316, baseType: !158, size: 32, offset: 20000)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1526, file: !1202, line: 1321, baseType: !190, size: 64, offset: 20032)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1526, file: !1202, line: 1325, baseType: !125, size: 32, offset: 20096)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1526, file: !1202, line: 1326, baseType: !125, size: 32, offset: 20128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1526, file: !1202, line: 1327, baseType: !125, size: 32, offset: 20160)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1526, file: !1202, line: 1328, baseType: !125, size: 32, offset: 20192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1526, file: !1202, line: 1329, baseType: !979, size: 128, align: 64, offset: 20224)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1526, file: !1202, line: 1332, baseType: !3294, size: 128, offset: 20352)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3295, line: 51, size: 128, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3296 = !{!3297, !3302, !3303}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3294, file: !3295, line: 60, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3299, line: 7, size: 64, elements: !3300)
!3299 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3298, file: !3299, line: 12, baseType: !1770, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3294, file: !3295, line: 63, baseType: !267, size: 8, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3294, file: !3295, line: 70, baseType: !267, size: 8, offset: 72)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1526, file: !1202, line: 1335, baseType: !2576, size: 64, offset: 20480)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1526, file: !1202, line: 1337, baseType: !3306, size: 128, offset: 20544)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3295, line: 39, size: 128, elements: !3307)
!3307 = !{!3308, !3309, !3310}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3306, file: !3295, line: 40, baseType: !2363, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3306, file: !3295, line: 42, baseType: !160, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3306, file: !3295, line: 43, baseType: !160, size: 32, offset: 96)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1526, file: !1202, line: 1340, baseType: !3312, size: 64, offset: 20672)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1202, line: 69, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1526, file: !1202, line: 1351, baseType: !125, size: 32, offset: 20736)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1526, file: !1202, line: 1352, baseType: !125, size: 32, offset: 20768)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1526, file: !1202, line: 1354, baseType: !190, size: 64, offset: 20800)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1526, file: !1202, line: 1364, baseType: !191, size: 64, offset: 20864)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1526, file: !1202, line: 1365, baseType: !191, size: 64, offset: 20928)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1526, file: !1202, line: 1412, baseType: !190, size: 64, offset: 20992)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1526, file: !1202, line: 1453, baseType: !3321, size: 64, offset: 21056)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1202, line: 1453, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1526, file: !1202, line: 1457, baseType: !3324, size: 64, offset: 21120)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !84, line: 61, size: 576, elements: !3326)
!3326 = !{!3327, !3328, !3347, !3350, !3351, !3384, !3394}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3325, file: !84, line: 62, baseType: !83, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3325, file: !84, line: 64, baseType: !3329, size: 192, offset: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3325, file: !84, line: 64, size: 192, elements: !3330)
!3330 = !{!3331, !3342}
!3331 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !84, line: 65, baseType: !3332, size: 192)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !84, line: 65, size: 192, elements: !3333)
!3333 = !{!3334, !3341}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3332, file: !84, line: 66, baseType: !3335, size: 128)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3336, line: 50, size: 128, elements: !3337)
!3336 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3337 = !{!3338, !3339, !3340}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3335, file: !3336, line: 52, baseType: !190, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3335, file: !3336, line: 54, baseType: !7, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3335, file: !3336, line: 55, baseType: !7, size: 32, offset: 96)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3332, file: !84, line: 67, baseType: !190, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !84, line: 70, baseType: !3343, size: 192)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3329, file: !84, line: 70, size: 192, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3343, file: !84, line: 71, baseType: !979, size: 128, align: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3343, file: !84, line: 72, baseType: !190, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3325, file: !84, line: 76, baseType: !3348, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !84, line: 76, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3325, file: !84, line: 77, baseType: !190, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3325, file: !84, line: 79, baseType: !3352, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3336, line: 25, size: 256, elements: !3354)
!3354 = !{!3355, !3361, !3365}
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !3336, line: 26, baseType: !3356, size: 128)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !3336, line: 26, size: 128, elements: !3357)
!3357 = !{!3358, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3356, file: !3336, line: 27, baseType: !3359, size: 128)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 128, elements: !238)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3356, file: !3336, line: 28, baseType: !3359, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3353, file: !3336, line: 31, baseType: !3362, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3364)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3336, line: 23, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !3336, line: 33, baseType: !3366, size: 64, offset: 192)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !3336, line: 33, size: 64, elements: !3367)
!3367 = !{!3368, !3374, !3379}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3366, file: !3336, line: 38, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 34, size: 64, elements: !3370)
!3370 = !{!3371, !3372, !3373}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3369, file: !3336, line: 35, baseType: !760, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3369, file: !3336, line: 36, baseType: !271, size: 8, offset: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3369, file: !3336, line: 37, baseType: !271, size: 8, offset: 40)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3366, file: !3336, line: 42, baseType: !3375, size: 16)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 39, size: 16, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3375, file: !3336, line: 40, baseType: !271, size: 8)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3375, file: !3336, line: 41, baseType: !271, size: 8, offset: 8)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3366, file: !3336, line: 46, baseType: !3380, size: 16)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3366, file: !3336, line: 43, size: 16, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3380, file: !3336, line: 44, baseType: !271, size: 8)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3380, file: !3336, line: 45, baseType: !271, size: 8, offset: 8)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3325, file: !84, line: 81, baseType: !3385, size: 64, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !84, line: 85, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3386, file: !84, line: 86, baseType: !3348, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3386, file: !84, line: 87, baseType: !190, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3386, file: !84, line: 88, baseType: !190, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3386, file: !84, line: 89, baseType: !190, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3386, file: !84, line: 90, baseType: !267, size: 8, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3386, file: !84, line: 92, baseType: !3385, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3325, file: !84, line: 82, baseType: !7, size: 32, offset: 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1526, file: !1202, line: 1463, baseType: !3396, offset: 21184)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1202, line: 739, elements: !1048)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1526, file: !1202, line: 1470, baseType: !979, size: 128, align: 64, offset: 21184)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1526, file: !1202, line: 1471, baseType: !1539, size: 32, offset: 21312)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1526, file: !1202, line: 1472, baseType: !125, size: 32, offset: 21344)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1526, file: !1202, line: 1474, baseType: !1525, size: 64, offset: 21376)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1526, file: !1202, line: 1475, baseType: !1001, size: 320, offset: 21440)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1526, file: !1202, line: 1478, baseType: !3403, size: 64, offset: 21760)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1202, line: 1478, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1526, file: !1202, line: 1482, baseType: !1539, size: 32, offset: 21824)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1526, file: !1202, line: 1489, baseType: !162, size: 64, offset: 21888)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1526, file: !1202, line: 1504, baseType: !162, size: 64, offset: 21952)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1526, file: !1202, line: 1505, baseType: !192, size: 64, offset: 22016)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1526, file: !1202, line: 1506, baseType: !191, size: 64, offset: 22080)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1526, file: !1202, line: 1507, baseType: !192, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1526, file: !1202, line: 1508, baseType: !192, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1526, file: !1202, line: 1509, baseType: !192, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1526, file: !1202, line: 1510, baseType: !979, size: 128, align: 64, offset: 22208)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1526, file: !1202, line: 1511, baseType: !125, size: 32, offset: 22336)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1526, file: !1202, line: 1515, baseType: !3416, size: 64, offset: 22400)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1553, line: 56, size: 64, elements: !3417)
!3417 = !{!3418}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3416, file: !1553, line: 57, baseType: !1556, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1526, file: !1202, line: 1518, baseType: !3416, size: 64, offset: 22464)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1526, file: !1202, line: 1528, baseType: !979, size: 128, align: 64, offset: 22528)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1526, file: !1202, line: 1552, baseType: !3422, size: 35328, offset: 23040)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !200, line: 430, size: 35328, elements: !3423)
!3423 = !{!3424, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3453, !3454, !3455, !3456, !3457, !3458, !3461, !3462, !3463, !3464}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3422, file: !200, line: 432, baseType: !3425, size: 192)
!3425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3426, size: 192, elements: !432)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3427, line: 16, size: 64, elements: !3428)
!3427 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3426, file: !3427, line: 17, baseType: !253, size: 16)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3426, file: !3427, line: 18, baseType: !253, size: 16, offset: 16)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3426, file: !3427, line: 19, baseType: !253, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3426, file: !3427, line: 19, baseType: !253, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3426, file: !3427, line: 19, baseType: !253, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3426, file: !3427, line: 19, baseType: !253, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3426, file: !3427, line: 19, baseType: !253, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3426, file: !3427, line: 20, baseType: !253, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3426, file: !3427, line: 20, baseType: !253, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3426, file: !3427, line: 20, baseType: !253, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3426, file: !3427, line: 20, baseType: !253, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3426, file: !3427, line: 20, baseType: !253, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3426, file: !3427, line: 20, baseType: !253, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3422, file: !200, line: 436, baseType: !190, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3422, file: !200, line: 440, baseType: !255, size: 16, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3422, file: !200, line: 441, baseType: !255, size: 16, offset: 272)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3422, file: !200, line: 442, baseType: !255, size: 16, offset: 288)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3422, file: !200, line: 443, baseType: !255, size: 16, offset: 304)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3422, file: !200, line: 447, baseType: !190, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3422, file: !200, line: 448, baseType: !190, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3422, file: !200, line: 459, baseType: !3450, size: 256, offset: 448)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3451, size: 256, elements: !989)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !200, line: 428, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3422, file: !200, line: 461, baseType: !190, size: 64, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3422, file: !200, line: 463, baseType: !190, size: 64, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3422, file: !200, line: 465, baseType: !190, size: 64, offset: 832)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3422, file: !200, line: 466, baseType: !190, size: 64, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3422, file: !200, line: 467, baseType: !190, size: 64, offset: 960)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3422, file: !200, line: 473, baseType: !3459, size: 64, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !200, line: 10, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3422, file: !200, line: 480, baseType: !190, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3422, file: !200, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3422, file: !200, line: 491, baseType: !158, size: 32, offset: 1184)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3422, file: !200, line: 501, baseType: !3465, size: 33792, offset: 1536)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3466, line: 448, size: 33792, elements: !3467)
!3466 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3467 = !{!3468, !3469, !3470, !3632, !3633, !3639, !3640}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3465, file: !3466, line: 461, baseType: !7, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3465, file: !3466, line: 468, baseType: !190, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3465, file: !3466, line: 476, baseType: !3471, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3466, line: 356, size: 33280, align: 512, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3472, file: !3466, line: 358, baseType: !7, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3472, file: !3466, line: 361, baseType: !7, size: 32, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3472, file: !3466, line: 364, baseType: !191, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3472, file: !3466, line: 367, baseType: !191, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3472, file: !3466, line: 370, baseType: !191, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3472, file: !3466, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3472, file: !3466, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3472, file: !3466, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3472, file: !3466, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3472, file: !3466, line: 397, baseType: !3484, size: 32768, offset: 512)
!3484 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3466, line: 348, size: 32768, elements: !3485)
!3485 = !{!3486, !3501, !3538, !3615, !3628}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3484, file: !3466, line: 349, baseType: !3487, size: 896)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3466, line: 12, size: 896, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3500}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3487, file: !3466, line: 13, baseType: !158, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3487, file: !3466, line: 14, baseType: !158, size: 32, offset: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3487, file: !3466, line: 15, baseType: !158, size: 32, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3487, file: !3466, line: 16, baseType: !158, size: 32, offset: 96)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3487, file: !3466, line: 17, baseType: !158, size: 32, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3487, file: !3466, line: 18, baseType: !158, size: 32, offset: 160)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3487, file: !3466, line: 19, baseType: !158, size: 32, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3487, file: !3466, line: 22, baseType: !3497, size: 640, offset: 224)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 640, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 20)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3487, file: !3466, line: 25, baseType: !158, size: 32, offset: 864)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3484, file: !3466, line: 350, baseType: !3502, size: 4096, align: 128)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3466, line: 34, size: 4096, align: 128, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3523, !3524, !3525, !3527, !3529, !3533}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3502, file: !3466, line: 35, baseType: !253, size: 16)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3502, file: !3466, line: 36, baseType: !253, size: 16, offset: 16)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3502, file: !3466, line: 37, baseType: !253, size: 16, offset: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3502, file: !3466, line: 38, baseType: !253, size: 16, offset: 48)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !3466, line: 39, baseType: !3509, size: 128, offset: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !3466, line: 39, size: 128, elements: !3510)
!3510 = !{!3511, !3516}
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !3466, line: 40, baseType: !3512, size: 128)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3509, file: !3466, line: 40, size: 128, elements: !3513)
!3513 = !{!3514, !3515}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3512, file: !3466, line: 41, baseType: !191, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3512, file: !3466, line: 42, baseType: !191, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3509, file: !3466, line: 44, baseType: !3517, size: 128)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3509, file: !3466, line: 44, size: 128, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3517, file: !3466, line: 45, baseType: !158, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3517, file: !3466, line: 46, baseType: !158, size: 32, offset: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3517, file: !3466, line: 47, baseType: !158, size: 32, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3517, file: !3466, line: 48, baseType: !158, size: 32, offset: 96)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3502, file: !3466, line: 51, baseType: !158, size: 32, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3502, file: !3466, line: 52, baseType: !158, size: 32, offset: 224)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3502, file: !3466, line: 55, baseType: !3526, size: 1024, offset: 256)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !585)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3502, file: !3466, line: 58, baseType: !3528, size: 2048, offset: 1280)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 2048, elements: !242)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3502, file: !3466, line: 60, baseType: !3530, size: 384, offset: 3328)
!3530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 384, elements: !3531)
!3531 = !{!3532}
!3532 = !DISubrange(count: 12)
!3533 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !3466, line: 62, baseType: !3534, size: 384, offset: 3712)
!3534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !3466, line: 62, size: 384, elements: !3535)
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3534, file: !3466, line: 63, baseType: !3530, size: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3534, file: !3466, line: 64, baseType: !3530, size: 384)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3484, file: !3466, line: 351, baseType: !3539, size: 1088)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3466, line: 79, size: 1088, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3614}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3539, file: !3466, line: 80, baseType: !158, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3539, file: !3466, line: 81, baseType: !158, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3539, file: !3466, line: 82, baseType: !158, size: 32, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3539, file: !3466, line: 83, baseType: !158, size: 32, offset: 96)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3539, file: !3466, line: 84, baseType: !158, size: 32, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3539, file: !3466, line: 85, baseType: !158, size: 32, offset: 160)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3539, file: !3466, line: 86, baseType: !158, size: 32, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3539, file: !3466, line: 88, baseType: !3497, size: 640, offset: 224)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3539, file: !3466, line: 89, baseType: !271, size: 8, offset: 864)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3539, file: !3466, line: 90, baseType: !271, size: 8, offset: 872)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3539, file: !3466, line: 91, baseType: !271, size: 8, offset: 880)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3539, file: !3466, line: 92, baseType: !271, size: 8, offset: 888)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3539, file: !3466, line: 93, baseType: !271, size: 8, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3539, file: !3466, line: 94, baseType: !271, size: 8, offset: 904)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3539, file: !3466, line: 95, baseType: !3556, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3558, line: 11, size: 128, elements: !3559)
!3558 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3559 = !{!3560, !3561}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3557, file: !3558, line: 12, baseType: !465, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3557, file: !3558, line: 13, baseType: !3562, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3564, line: 103, size: 1344, elements: !3565)
!3564 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3594, !3595, !3596}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3563, file: !3564, line: 109, baseType: !190, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3563, file: !3564, line: 110, baseType: !190, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3563, file: !3564, line: 111, baseType: !190, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3563, file: !3564, line: 112, baseType: !190, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3563, file: !3564, line: 113, baseType: !190, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3563, file: !3564, line: 114, baseType: !190, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3563, file: !3564, line: 117, baseType: !190, size: 64, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3563, file: !3564, line: 118, baseType: !190, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3563, file: !3564, line: 119, baseType: !190, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3563, file: !3564, line: 120, baseType: !190, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3563, file: !3564, line: 121, baseType: !190, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3563, file: !3564, line: 122, baseType: !190, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3563, file: !3564, line: 123, baseType: !190, size: 64, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3563, file: !3564, line: 124, baseType: !190, size: 64, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3563, file: !3564, line: 125, baseType: !190, size: 64, offset: 896)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3563, file: !3564, line: 139, baseType: !190, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3563, file: !3564, line: 142, baseType: !190, size: 64, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3563, file: !3564, line: 144, baseType: !3584, size: 64, offset: 1088)
!3584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3563, file: !3564, line: 144, size: 64, elements: !3585)
!3585 = !{!3586, !3587, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3584, file: !3564, line: 146, baseType: !253, size: 16)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3584, file: !3564, line: 148, baseType: !191, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3584, file: !3564, line: 150, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3564, line: 59, size: 64, elements: !3590)
!3590 = !{!3591, !3592, !3593}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3589, file: !3564, line: 61, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3589, file: !3564, line: 63, baseType: !191, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3589, file: !3564, line: 65, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3563, file: !3564, line: 153, baseType: !190, size: 64, offset: 1152)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3563, file: !3564, line: 154, baseType: !190, size: 64, offset: 1216)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3563, file: !3564, line: 156, baseType: !3597, size: 64, offset: 1280)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3563, file: !3564, line: 156, size: 64, elements: !3598)
!3598 = !{!3599, !3600, !3601}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3597, file: !3564, line: 158, baseType: !253, size: 16)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3597, file: !3564, line: 160, baseType: !191, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3597, file: !3564, line: 162, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3564, line: 69, size: 64, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3602, file: !3564, line: 71, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3602, file: !3564, line: 73, baseType: !191, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3602, file: !3564, line: 75, baseType: !191, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3602, file: !3564, line: 77, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3602, file: !3564, line: 80, baseType: !191, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3602, file: !3564, line: 83, baseType: !191, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3602, file: !3564, line: 86, baseType: !191, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3602, file: !3564, line: 88, baseType: !191, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3602, file: !3564, line: 93, baseType: !191, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3602, file: !3564, line: 100, baseType: !191, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3539, file: !3466, line: 96, baseType: !158, size: 32, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3484, file: !3466, line: 352, baseType: !3616, size: 4608, align: 512)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3466, line: 333, size: 4608, align: 512, elements: !3617)
!3617 = !{!3618, !3619, !3626}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3616, file: !3466, line: 334, baseType: !3502, size: 4096, align: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3616, file: !3466, line: 335, baseType: !3620, size: 512, offset: 4096)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3466, line: 312, size: 512, elements: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3620, file: !3466, line: 313, baseType: !191, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3620, file: !3466, line: 314, baseType: !191, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3620, file: !3466, line: 315, baseType: !3625, size: 384, offset: 128)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 384, elements: !1990)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3616, file: !3466, line: 336, baseType: !3627, offset: 4608)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, elements: !187)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3484, file: !3466, line: 353, baseType: !3629, size: 32768)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 32768, elements: !3630)
!3630 = !{!3631}
!3631 = !DISubrange(count: 4096)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3465, file: !3466, line: 484, baseType: !3471, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3465, file: !3466, line: 491, baseType: !3634, size: 128, offset: 256)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3466, line: 404, size: 128, elements: !3635)
!3635 = !{!3636, !3637, !3638}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3634, file: !3466, line: 424, baseType: !191, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3634, file: !3466, line: 432, baseType: !7, size: 32, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3634, file: !3466, line: 440, baseType: !7, size: 32, offset: 96)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3465, file: !3466, line: 498, baseType: !3634, size: 128, offset: 384)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3465, file: !3466, line: 508, baseType: !3472, size: 33280, align: 512, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1502, file: !1503, line: 16, baseType: !1512, size: 192, offset: 512)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1502, file: !1503, line: 17, baseType: !389, size: 32, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !655, file: !30, line: 1240, baseType: !162, size: 64, offset: 6912)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !655, file: !30, line: 1243, baseType: !158, size: 32, offset: 6976)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !655, file: !30, line: 1245, baseType: !1260, size: 64, offset: 7040)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !655, file: !30, line: 1246, baseType: !1260, size: 64, offset: 7104)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !655, file: !30, line: 1248, baseType: !160, size: 32, offset: 7168)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !655, file: !30, line: 1249, baseType: !3649, size: 64, offset: 7232)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !30, line: 634, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !655, file: !30, line: 1252, baseType: !3652, size: 256, offset: 7296)
!3652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !585)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !655, file: !30, line: 1253, baseType: !3654, size: 128, offset: 7552)
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3655, line: 21, baseType: !3656)
!3655 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3655, line: 19, size: 128, elements: !3657)
!3657 = !{!3658}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3656, file: !3655, line: 20, baseType: !3659, size: 128)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !238)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !655, file: !30, line: 1255, baseType: !7, size: 32, offset: 7680)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !655, file: !30, line: 1261, baseType: !764, size: 256, offset: 7744)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !655, file: !30, line: 1267, baseType: !354, size: 64, offset: 8000)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !655, file: !30, line: 1269, baseType: !601, size: 64, offset: 8064)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !655, file: !30, line: 1271, baseType: !3665, size: 448, offset: 8128)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1269, line: 63, size: 448, elements: !3666)
!3666 = !{!3667, !3672, !3673, !3674, !3675, !3676, !3677}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3665, file: !1269, line: 64, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!190, !3671, !1267}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3665, file: !1269, line: 66, baseType: !3668, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3665, file: !1269, line: 69, baseType: !465, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3665, file: !1269, line: 70, baseType: !125, size: 32, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3665, file: !1269, line: 71, baseType: !7, size: 32, offset: 224)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3665, file: !1269, line: 74, baseType: !356, size: 128, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3665, file: !1269, line: 85, baseType: !3678, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !655, file: !30, line: 1274, baseType: !768, size: 64, offset: 8576)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !655, file: !30, line: 1280, baseType: !768, size: 64, offset: 8640)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !655, file: !30, line: 1283, baseType: !125, size: 32, offset: 8704)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !655, file: !30, line: 1286, baseType: !2626, size: 32, offset: 8736)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !655, file: !30, line: 1289, baseType: !1081, size: 64, offset: 8768)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !655, file: !30, line: 1290, baseType: !1128, size: 64, offset: 8832)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !655, file: !30, line: 1297, baseType: !2084, size: 64, offset: 8896)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !655, file: !30, line: 1304, baseType: !3687, size: 64, offset: 8960)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3688, line: 49, size: 64, elements: !3689)
!3688 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3689 = !{!3690}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3687, file: !3688, line: 50, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3688, line: 41, size: 512, align: 512, elements: !3693)
!3693 = !{!3694, !3695, !3700}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3692, file: !3688, line: 43, baseType: !369, size: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3692, file: !3688, line: 45, baseType: !3696, size: 192, offset: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3688, line: 29, size: 192, elements: !3697)
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3696, file: !3688, line: 30, baseType: !356, size: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3696, file: !3688, line: 32, baseType: !465, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3692, file: !3688, line: 46, baseType: !465, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !655, file: !30, line: 1305, baseType: !3687, size: 64, offset: 9024)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !655, file: !30, line: 1306, baseType: !979, size: 128, align: 64, offset: 9088)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !655, file: !30, line: 1307, baseType: !1019, size: 256, offset: 9216)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !655, file: !30, line: 1309, baseType: !764, size: 256, offset: 9472)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !655, file: !30, line: 1314, baseType: !125, size: 32, offset: 9728)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !655, file: !30, line: 1317, baseType: !369, size: 32, align: 512, offset: 10240)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !655, file: !30, line: 1318, baseType: !356, size: 128, offset: 10304)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !655, file: !30, line: 1320, baseType: !369, size: 32, offset: 10432)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !655, file: !30, line: 1321, baseType: !356, size: 128, offset: 10496)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !649, file: !650, line: 73, baseType: !125, size: 32, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !649, file: !650, line: 74, baseType: !3712, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1931, line: 42, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !603, file: !545, line: 141, baseType: !3716, size: 64, offset: 704)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!125, !1329, !267}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !603, file: !545, line: 142, baseType: !3720, size: 64, offset: 768)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!543, !543, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !544, file: !545, line: 96, baseType: !654, size: 64, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !544, file: !545, line: 97, baseType: !190, size: 64, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !544, file: !545, line: 98, baseType: !162, size: 64, offset: 960)
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !544, file: !545, line: 100, baseType: !3729, size: 128, offset: 1024)
!3729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !545, line: 100, size: 128, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3729, file: !545, line: 101, baseType: !356, size: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3729, file: !545, line: 102, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !544, file: !545, line: 104, baseType: !356, size: 128, offset: 1152)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !544, file: !545, line: 105, baseType: !356, size: 128, offset: 1280)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !544, file: !545, line: 113, baseType: !3737, size: 128, offset: 1408)
!3737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !545, line: 109, size: 128, elements: !3738)
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3737, file: !545, line: 110, baseType: !1005, size: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3737, file: !545, line: 111, baseType: !559, size: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3737, file: !545, line: 112, baseType: !979, size: 128, align: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !537, file: !30, line: 1968, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!354, !543, !508, !3746}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3748, line: 10, size: 128, elements: !3749)
!3748 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3747, file: !3748, line: 11, baseType: !807, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3747, file: !3748, line: 12, baseType: !162, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !537, file: !30, line: 1969, baseType: !3753, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!125, !3712, !508, !125}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !537, file: !30, line: 1970, baseType: !3757, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!531, !508, !125, !267}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !537, file: !30, line: 1972, baseType: !3761, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!125, !543, !431, !125}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !537, file: !30, line: 1974, baseType: !3765, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!125, !3712, !508, !543, !471, !267}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !537, file: !30, line: 1976, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!125, !543, !508, !543}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !537, file: !30, line: 1977, baseType: !3773, size: 64, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!125, !508, !543}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !537, file: !30, line: 1978, baseType: !3777, size: 64, offset: 512)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!125, !3712, !508, !543, !354}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !537, file: !30, line: 1980, baseType: !3781, size: 64, offset: 576)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!125, !3712, !508, !543, !471}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !537, file: !30, line: 1982, baseType: !3773, size: 64, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !537, file: !30, line: 1983, baseType: !3786, size: 64, offset: 704)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!125, !3712, !508, !543, !471, !659}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !537, file: !30, line: 1985, baseType: !3790, size: 64, offset: 768)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!125, !3712, !508, !543, !508, !543, !7}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !537, file: !30, line: 1987, baseType: !3794, size: 64, offset: 832)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!125, !3712, !543, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !30, line: 226, size: 640, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3812, !3821, !3822, !3827, !3828, !3829}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3798, file: !30, line: 227, baseType: !7, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3798, file: !30, line: 228, baseType: !471, size: 16, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, scope: !3798, file: !30, line: 241, baseType: !3803, size: 32, offset: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3798, file: !30, line: 241, size: 32, elements: !3804)
!3804 = !{!3805, !3806}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3803, file: !30, line: 242, baseType: !514, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3803, file: !30, line: 243, baseType: !3807, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3808, line: 16, baseType: !3809)
!3808 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3808, line: 14, size: 32, elements: !3810)
!3810 = !{!3811}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3809, file: !3808, line: 15, baseType: !519, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3798, file: !30, line: 245, baseType: !3813, size: 32, offset: 96)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3798, file: !30, line: 245, size: 32, elements: !3814)
!3814 = !{!3815, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3813, file: !30, line: 246, baseType: !523, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3813, file: !30, line: 247, baseType: !3817, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3808, line: 20, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3808, line: 18, size: 32, elements: !3819)
!3819 = !{!3820}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3818, file: !3808, line: 19, baseType: !527, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3798, file: !30, line: 249, baseType: !664, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3798, file: !30, line: 250, baseType: !3823, size: 128, offset: 192)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1261, line: 13, size: 128, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3823, file: !1261, line: 14, baseType: !1260, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3823, file: !1261, line: 15, baseType: !465, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3798, file: !30, line: 251, baseType: !3823, size: 128, offset: 320)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3798, file: !30, line: 252, baseType: !3823, size: 128, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3798, file: !30, line: 259, baseType: !1849, size: 64, offset: 576)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !537, file: !30, line: 1988, baseType: !3831, size: 64, offset: 896)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!125, !3712, !1329, !3834, !158, !7}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3836, line: 22, size: 1280, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3837 = !{!3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3835, file: !3836, line: 23, baseType: !158, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3835, file: !3836, line: 24, baseType: !471, size: 16, offset: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3835, file: !3836, line: 25, baseType: !7, size: 32, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3835, file: !3836, line: 26, baseType: !1969, size: 32, offset: 96)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3835, file: !3836, line: 27, baseType: !191, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3835, file: !3836, line: 28, baseType: !191, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3835, file: !3836, line: 41, baseType: !191, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3835, file: !3836, line: 42, baseType: !659, size: 32, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3835, file: !3836, line: 43, baseType: !659, size: 32, offset: 352)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3835, file: !3836, line: 44, baseType: !514, size: 32, offset: 384)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3835, file: !3836, line: 45, baseType: !523, size: 32, offset: 416)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3835, file: !3836, line: 46, baseType: !664, size: 64, offset: 448)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3835, file: !3836, line: 47, baseType: !3823, size: 128, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3835, file: !3836, line: 48, baseType: !3823, size: 128, offset: 640)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3835, file: !3836, line: 49, baseType: !3823, size: 128, offset: 768)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3835, file: !3836, line: 50, baseType: !3823, size: 128, offset: 896)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3835, file: !3836, line: 51, baseType: !191, size: 64, offset: 1024)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3835, file: !3836, line: 52, baseType: !191, size: 64, offset: 1088)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3835, file: !3836, line: 53, baseType: !158, size: 32, offset: 1152)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3835, file: !3836, line: 54, baseType: !158, size: 32, offset: 1184)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3835, file: !3836, line: 55, baseType: !191, size: 64, offset: 1216)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !537, file: !30, line: 1990, baseType: !3860, size: 64, offset: 960)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!461, !543, !431, !476}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !537, file: !30, line: 1991, baseType: !3864, size: 64, offset: 1024)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!125, !508, !3867, !191, !191}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !30, line: 55, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !537, file: !30, line: 1993, baseType: !3870, size: 64, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!125, !508, !125}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !537, file: !30, line: 1994, baseType: !3874, size: 64, offset: 1152)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!125, !508, !543, !1849, !7, !471}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !537, file: !30, line: 1997, baseType: !3878, size: 64, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!125, !3712, !508, !1849, !471}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !537, file: !30, line: 1999, baseType: !3882, size: 64, offset: 1280)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!531, !3712, !543, !125}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !537, file: !30, line: 2001, baseType: !3886, size: 64, offset: 1344)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!125, !3712, !543, !531, !125}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !537, file: !30, line: 2003, baseType: !3890, size: 64, offset: 1408)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!125, !3712, !543, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !30, line: 76, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !537, file: !30, line: 2005, baseType: !3896, size: 64, offset: 1472)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!125, !543, !3893}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !537, file: !30, line: 2006, baseType: !3900, size: 64, offset: 1536)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!3903, !508}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !30, line: 3192, size: 192, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3904, file: !30, line: 3193, baseType: !2204, size: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3904, file: !30, line: 3194, baseType: !158, size: 32, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !509, file: !30, line: 655, baseType: !654, size: 64, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !509, file: !30, line: 656, baseType: !504, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !509, file: !30, line: 659, baseType: !162, size: 64, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !509, file: !30, line: 663, baseType: !190, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !30, line: 671, baseType: !3913, size: 32, offset: 704)
!3913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !30, line: 671, size: 32, elements: !3914)
!3914 = !{!3915, !3917}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3913, file: !30, line: 672, baseType: !3916, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3913, file: !30, line: 673, baseType: !7, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !509, file: !30, line: 675, baseType: !659, size: 32, offset: 736)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !509, file: !30, line: 676, baseType: !664, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !509, file: !30, line: 677, baseType: !3823, size: 128, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !509, file: !30, line: 678, baseType: !3823, size: 128, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !509, file: !30, line: 679, baseType: !3823, size: 128, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !509, file: !30, line: 680, baseType: !369, size: 32, offset: 1216)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !509, file: !30, line: 681, baseType: !255, size: 16, offset: 1248)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !509, file: !30, line: 682, baseType: !271, size: 8, offset: 1264)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !509, file: !30, line: 683, baseType: !271, size: 8, offset: 1272)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !509, file: !30, line: 684, baseType: !1407, size: 64, offset: 1280)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !509, file: !30, line: 691, baseType: !190, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !509, file: !30, line: 692, baseType: !1419, size: 320, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !509, file: !30, line: 694, baseType: !190, size: 64, offset: 1728)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !509, file: !30, line: 695, baseType: !190, size: 64, offset: 1792)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !509, file: !30, line: 697, baseType: !1005, size: 128, offset: 1856)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !509, file: !30, line: 698, baseType: !356, size: 128, offset: 1984)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !509, file: !30, line: 707, baseType: !356, size: 128, offset: 2112)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !509, file: !30, line: 708, baseType: !356, size: 128, offset: 2240)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !30, line: 709, baseType: !3937, size: 128, offset: 2368)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !30, line: 709, size: 128, elements: !3938)
!3938 = !{!3939, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3937, file: !30, line: 710, baseType: !1128, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3937, file: !30, line: 711, baseType: !979, size: 128, align: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !509, file: !30, line: 713, baseType: !770, size: 64, offset: 2496)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !509, file: !30, line: 714, baseType: !770, size: 64, offset: 2560)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !509, file: !30, line: 715, baseType: !389, size: 32, offset: 2624)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !509, file: !30, line: 716, baseType: !389, size: 32, offset: 2656)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !509, file: !30, line: 717, baseType: !389, size: 32, offset: 2688)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !509, file: !30, line: 719, baseType: !389, size: 32, offset: 2720)
!3947 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !30, line: 721, baseType: !3948, size: 64, offset: 2752)
!3948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !30, line: 721, size: 64, elements: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3948, file: !30, line: 722, baseType: !2115, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3948, file: !30, line: 723, baseType: !1151, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !509, file: !30, line: 725, baseType: !3953, size: 64, offset: 2816)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !30, line: 725, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !509, file: !30, line: 726, baseType: !505, size: 1536, align: 64, offset: 2880)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !509, file: !30, line: 727, baseType: !356, size: 128, offset: 4416)
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !30, line: 728, baseType: !3958, size: 64, offset: 4544)
!3958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !30, line: 728, size: 64, elements: !3959)
!3959 = !{!3960, !3961, !3964, !3965}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3958, file: !30, line: 729, baseType: !2576, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3958, file: !30, line: 730, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !30, line: 730, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3958, file: !30, line: 731, baseType: !431, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3958, file: !30, line: 732, baseType: !7, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !509, file: !30, line: 735, baseType: !160, size: 32, offset: 4608)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !509, file: !30, line: 738, baseType: !160, size: 32, offset: 4640)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !509, file: !30, line: 739, baseType: !3649, size: 64, offset: 4672)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !509, file: !30, line: 750, baseType: !162, size: 64, offset: 4736)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !505, file: !30, line: 474, baseType: !2204, size: 128, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !505, file: !30, line: 475, baseType: !1419, size: 320, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !505, file: !30, line: 476, baseType: !194, size: 32, offset: 512)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !505, file: !30, line: 477, baseType: !389, size: 32, offset: 544)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !505, file: !30, line: 482, baseType: !1705, size: 128, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !505, file: !30, line: 483, baseType: !190, size: 64, offset: 704)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !505, file: !30, line: 484, baseType: !190, size: 64, offset: 768)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !505, file: !30, line: 485, baseType: !3978, size: 64, offset: 832)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3980)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !30, line: 404, size: 1280, elements: !3981)
!3981 = !{!3982, !3986, !4056, !4060, !4064, !4070, !4075, !4079, !4084, !4088, !4092, !4096, !4097, !4101, !4105, !4109, !4114, !4118, !4125, !4126}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3980, file: !30, line: 405, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!125, !2363, !1163}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3980, file: !30, line: 406, baseType: !3987, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!125, !1849, !3990}
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !54, line: 293, size: 1536, elements: !3992)
!3992 = !{!3993, !4023, !4037}
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3991, file: !54, line: 295, baseType: !3994, size: 512)
!3994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3991, file: !54, line: 295, size: 512, elements: !3995)
!3995 = !{!3996, !4022}
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !54, line: 296, baseType: !3997, size: 448)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3994, file: !54, line: 296, size: 448, elements: !3998)
!3998 = !{!3999, !4000, !4009, !4010, !4011, !4020, !4021}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3997, file: !54, line: 298, baseType: !190, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !3997, file: !54, line: 299, baseType: !4001, size: 128, offset: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3997, file: !54, line: 299, size: 128, elements: !4002)
!4002 = !{!4003, !4004}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4001, file: !54, line: 300, baseType: !356, size: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, scope: !4001, file: !54, line: 302, baseType: !4005, size: 128)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4001, file: !54, line: 302, size: 128, elements: !4006)
!4006 = !{!4007, !4008}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4005, file: !54, line: 303, baseType: !162, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4005, file: !54, line: 305, baseType: !7, size: 32, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3997, file: !54, line: 310, baseType: !504, size: 64, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3997, file: !54, line: 311, baseType: !190, size: 64, offset: 256)
!4011 = !DIDerivedType(tag: DW_TAG_member, scope: !3997, file: !54, line: 312, baseType: !4012, size: 64, offset: 320)
!4012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3997, file: !54, line: 312, size: 64, elements: !4013)
!4013 = !{!4014, !4015}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4012, file: !54, line: 313, baseType: !162, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4012, file: !54, line: 314, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !54, line: 257, baseType: !4017)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 255, size: 64, elements: !4018)
!4018 = !{!4019}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4017, file: !54, line: 256, baseType: !190, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3997, file: !54, line: 316, baseType: !389, size: 32, offset: 384)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3997, file: !54, line: 317, baseType: !389, size: 32, offset: 416)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3994, file: !54, line: 323, baseType: !2364, size: 512, align: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, scope: !3991, file: !54, line: 325, baseType: !4024, size: 512, offset: 512)
!4024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3991, file: !54, line: 325, size: 512, elements: !4025)
!4025 = !{!4026, !4036}
!4026 = !DIDerivedType(tag: DW_TAG_member, scope: !4024, file: !54, line: 326, baseType: !4027, size: 320)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4024, file: !54, line: 326, size: 320, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4027, file: !54, line: 327, baseType: !190, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4027, file: !54, line: 328, baseType: !190, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4027, file: !54, line: 329, baseType: !190, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4027, file: !54, line: 331, baseType: !389, size: 32, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4027, file: !54, line: 332, baseType: !389, size: 32, offset: 224)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4027, file: !54, line: 333, baseType: !389, size: 32, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4027, file: !54, line: 335, baseType: !7, size: 32, offset: 288)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4024, file: !54, line: 339, baseType: !2364, size: 512, align: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, scope: !3991, file: !54, line: 341, baseType: !4038, size: 512, offset: 1024)
!4038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3991, file: !54, line: 341, size: 512, elements: !4039)
!4039 = !{!4040, !4049, !4055}
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !54, line: 342, baseType: !4041, size: 384)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4038, file: !54, line: 342, size: 384, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4048}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4041, file: !54, line: 343, baseType: !190, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4041, file: !54, line: 344, baseType: !190, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4041, file: !54, line: 346, baseType: !162, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4041, file: !54, line: 347, baseType: !162, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4041, file: !54, line: 348, baseType: !162, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4041, file: !54, line: 349, baseType: !162, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !54, line: 352, baseType: !4050, size: 256)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4038, file: !54, line: 352, size: 256, elements: !4051)
!4051 = !{!4052, !4053, !4054}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4050, file: !54, line: 353, baseType: !190, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4050, file: !54, line: 354, baseType: !190, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4050, file: !54, line: 356, baseType: !356, size: 128, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4038, file: !54, line: 359, baseType: !2364, size: 512, align: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3980, file: !30, line: 409, baseType: !4057, size: 64, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!125, !504, !1163}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3980, file: !30, line: 412, baseType: !4061, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!267, !504, !3990}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3980, file: !30, line: 414, baseType: !4065, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{null, !4068}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !30, line: 310, flags: DIFlagFwdDecl)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3980, file: !30, line: 416, baseType: !4071, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!125, !1849, !504, !664, !7, !4074, !2591}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3980, file: !30, line: 419, baseType: !4076, size: 64, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!125, !1849, !504, !664, !7, !7, !2363, !162}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3980, file: !30, line: 424, baseType: !4080, size: 64, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!4083, !504, !4083}
!4083 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !195, line: 131, baseType: !191)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3980, file: !30, line: 425, baseType: !4085, size: 64, offset: 512)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !3990, !476, !476}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3980, file: !30, line: 426, baseType: !4089, size: 64, offset: 576)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!267, !3990, !194}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3980, file: !30, line: 427, baseType: !4093, size: 64, offset: 640)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !3990}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3980, file: !30, line: 428, baseType: !2134, size: 64, offset: 704)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3980, file: !30, line: 433, baseType: !4098, size: 64, offset: 768)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!125, !504, !3990, !3990, !90}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3980, file: !30, line: 435, baseType: !4102, size: 64, offset: 832)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!125, !3990}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3980, file: !30, line: 436, baseType: !4106, size: 64, offset: 896)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!267, !3990, !476, !476}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3980, file: !30, line: 438, baseType: !4110, size: 64, offset: 960)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !3990, !4113, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3980, file: !30, line: 439, baseType: !4115, size: 64, offset: 1024)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!125, !504, !2363}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3980, file: !30, line: 442, baseType: !4119, size: 64, offset: 1088)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!125, !4122, !1849, !4124}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !30, line: 66, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3980, file: !30, line: 444, baseType: !2583, size: 64, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3980, file: !30, line: 445, baseType: !4127, size: 64, offset: 1216)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!125, !2137, !2159}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !505, file: !30, line: 486, baseType: !190, size: 64, offset: 896)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !505, file: !30, line: 487, baseType: !1419, size: 320, offset: 960)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !505, file: !30, line: 488, baseType: !2626, size: 32, offset: 1280)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !505, file: !30, line: 489, baseType: !369, size: 32, offset: 1312)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !505, file: !30, line: 490, baseType: !356, size: 128, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !505, file: !30, line: 491, baseType: !162, size: 64, offset: 1472)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !495, file: !455, line: 180, baseType: !4137, size: 64, offset: 320)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!461, !1849, !362, !494, !431, !664, !476}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !495, file: !455, line: 182, baseType: !4137, size: 64, offset: 384)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !495, file: !455, line: 184, baseType: !4142, size: 64, offset: 448)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!125, !1849, !362, !494, !2254}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !483, file: !455, line: 90, baseType: !4146, size: 64, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !483, file: !455, line: 91, baseType: !4148, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !445, file: !351, line: 120, baseType: !4150, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!4153, !414}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !98, line: 39, size: 384, elements: !4156)
!4156 = !{!4157, !4158, !4162, !4166, !4172, !4176}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4155, file: !98, line: 40, baseType: !97, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4155, file: !98, line: 41, baseType: !4159, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!267}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4155, file: !98, line: 42, baseType: !4163, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!162}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4155, file: !98, line: 43, baseType: !4167, size: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!2715, !4170}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !98, line: 19, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4155, file: !98, line: 44, baseType: !4173, size: 64, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!2715}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4155, file: !98, line: 45, baseType: !807, size: 64, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !445, file: !351, line: 121, baseType: !4178, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!2715, !414}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !445, file: !351, line: 122, baseType: !4182, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{null, !414, !4185, !4186}
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !350, file: !351, line: 70, baseType: !4188, size: 64, offset: 384)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !679, line: 190, size: 1152, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4282, !4283, !4284, !4285, !4286, !4289}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4189, file: !679, line: 191, baseType: !389, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4189, file: !679, line: 192, baseType: !389, size: 32, offset: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4189, file: !679, line: 202, baseType: !4188, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4189, file: !679, line: 203, baseType: !354, size: 64, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4189, file: !679, line: 205, baseType: !874, size: 192, align: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4189, file: !679, line: 207, baseType: !2715, size: 64, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4189, file: !679, line: 208, baseType: !7, size: 32, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !679, line: 209, baseType: !4199, size: 256, offset: 512)
!4199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !679, line: 209, size: 256, elements: !4200)
!4200 = !{!4201, !4210, !4214}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4199, file: !679, line: 210, baseType: !4202, size: 256)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !679, line: 153, size: 256, elements: !4203)
!4203 = !{!4204, !4205, !4206, !4209}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4202, file: !679, line: 154, baseType: !190, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4202, file: !679, line: 156, baseType: !1708, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4202, file: !679, line: 162, baseType: !4207, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !679, line: 162, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4202, file: !679, line: 167, baseType: !190, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4199, file: !679, line: 211, baseType: !4211, size: 64)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !679, line: 170, size: 64, elements: !4212)
!4212 = !{!4213}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4211, file: !679, line: 171, baseType: !4188, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4199, file: !679, line: 212, baseType: !4215, size: 256)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !679, line: 174, size: 256, elements: !4216)
!4216 = !{!4217, !4277, !4280, !4281}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4215, file: !679, line: 175, baseType: !4218, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4220)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !679, line: 271, size: 768, elements: !4221)
!4221 = !{!4222, !4242, !4246, !4250, !4254, !4258, !4262, !4266, !4267, !4268, !4269, !4273}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4220, file: !679, line: 276, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!125, !4226}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !679, line: 251, size: 1216, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4227, file: !679, line: 253, baseType: !4188, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4227, file: !679, line: 254, baseType: !1849, size: 64, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4227, file: !679, line: 255, baseType: !1200, size: 64, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4227, file: !679, line: 256, baseType: !162, size: 64, offset: 192)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4227, file: !679, line: 259, baseType: !764, size: 256, offset: 256)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4227, file: !679, line: 260, baseType: !764, size: 256, offset: 512)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4227, file: !679, line: 261, baseType: !125, size: 32, offset: 768)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4227, file: !679, line: 262, baseType: !356, size: 128, offset: 832)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4227, file: !679, line: 263, baseType: !431, size: 64, offset: 960)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4227, file: !679, line: 265, baseType: !476, size: 64, offset: 1024)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4227, file: !679, line: 266, baseType: !267, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4227, file: !679, line: 267, baseType: !267, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4227, file: !679, line: 268, baseType: !2299, size: 64, offset: 1152)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4220, file: !679, line: 277, baseType: !4243, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !4226}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4220, file: !679, line: 290, baseType: !4247, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!125, !1200, !162}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4220, file: !679, line: 292, baseType: !4251, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!162, !1200, !2128}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4220, file: !679, line: 293, baseType: !4255, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!162, !1200, !162, !2128}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4220, file: !679, line: 294, baseType: !4259, size: 64, offset: 320)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !1200, !162}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4220, file: !679, line: 296, baseType: !4263, size: 64, offset: 384)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!461, !4226, !431, !476, !664}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4220, file: !679, line: 306, baseType: !476, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4220, file: !679, line: 313, baseType: !267, size: 8, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4220, file: !679, line: 314, baseType: !4263, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4220, file: !679, line: 317, baseType: !4270, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!2241, !4226, !2243}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4220, file: !679, line: 320, baseType: !4274, size: 64, offset: 704)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!125, !4226, !2254}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4215, file: !679, line: 176, baseType: !4278, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !679, line: 35, flags: DIFlagFwdDecl)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4215, file: !679, line: 177, baseType: !664, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4215, file: !679, line: 178, baseType: !4188, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4189, file: !679, line: 215, baseType: !162, size: 64, offset: 768)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4189, file: !679, line: 221, baseType: !191, size: 64, offset: 832)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4189, file: !679, line: 223, baseType: !255, size: 16, offset: 896)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4189, file: !679, line: 224, baseType: !471, size: 16, offset: 912)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4189, file: !679, line: 225, baseType: !4287, size: 64, offset: 960)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !679, line: 36, flags: DIFlagFwdDecl)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4189, file: !679, line: 227, baseType: !979, size: 128, align: 64, offset: 1024)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !350, file: !351, line: 71, baseType: !4291, size: 32, offset: 448)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4292, line: 19, size: 32, elements: !4293)
!4292 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4293 = !{!4294}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4291, file: !4292, line: 20, baseType: !1539, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !350, file: !351, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !350, file: !351, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !350, file: !351, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !350, file: !351, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !350, file: !351, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !347, file: !110, line: 707, baseType: !346, size: 64, offset: 512)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !347, file: !110, line: 709, baseType: !4302, size: 64, offset: 576)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !110, line: 37, flags: DIFlagFwdDecl)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !347, file: !110, line: 711, baseType: !354, size: 64, offset: 640)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !347, file: !110, line: 712, baseType: !4306, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !110, line: 89, size: 384, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4318, !4323, !4327}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4308, file: !110, line: 90, baseType: !354, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4308, file: !110, line: 91, baseType: !480, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4308, file: !110, line: 92, baseType: !4313, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!125, !4316, !426}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4308, file: !110, line: 93, baseType: !4319, size: 64, offset: 192)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!431, !4316, !4322, !4185, !4186}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4308, file: !110, line: 95, baseType: !4324, size: 64, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{null, !346}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4308, file: !110, line: 97, baseType: !4328, size: 64, offset: 320)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !117, line: 286, size: 1472, elements: !4331)
!4331 = !{!4332, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4330, file: !117, line: 287, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!125, !346}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4330, file: !117, line: 288, baseType: !4324, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4330, file: !117, line: 289, baseType: !4333, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4330, file: !117, line: 290, baseType: !4333, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4330, file: !117, line: 291, baseType: !4333, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4330, file: !117, line: 292, baseType: !4333, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4330, file: !117, line: 293, baseType: !4333, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4330, file: !117, line: 294, baseType: !4333, size: 64, offset: 448)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4330, file: !117, line: 295, baseType: !4333, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4330, file: !117, line: 296, baseType: !4333, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4330, file: !117, line: 297, baseType: !4333, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4330, file: !117, line: 298, baseType: !4333, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4330, file: !117, line: 299, baseType: !4333, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4330, file: !117, line: 300, baseType: !4333, size: 64, offset: 832)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4330, file: !117, line: 301, baseType: !4333, size: 64, offset: 896)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4330, file: !117, line: 302, baseType: !4333, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4330, file: !117, line: 303, baseType: !4333, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4330, file: !117, line: 304, baseType: !4333, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4330, file: !117, line: 305, baseType: !4333, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4330, file: !117, line: 306, baseType: !4333, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4330, file: !117, line: 307, baseType: !4333, size: 64, offset: 1280)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4330, file: !117, line: 308, baseType: !4333, size: 64, offset: 1344)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4330, file: !117, line: 309, baseType: !4333, size: 64, offset: 1408)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !347, file: !110, line: 714, baseType: !4359, size: 64, offset: 768)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4361)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4362, line: 80, size: 1344, elements: !4363)
!4362 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4369, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4427}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4361, file: !4362, line: 81, baseType: !354, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4361, file: !4362, line: 82, baseType: !354, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4361, file: !4362, line: 83, baseType: !480, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4361, file: !4362, line: 84, baseType: !480, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4361, file: !4362, line: 85, baseType: !480, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4361, file: !4362, line: 87, baseType: !4370, size: 64, offset: 320)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!125, !346, !4373}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !104, line: 96, size: 1152, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4382, !4386, !4390, !4391, !4392, !4393, !4394, !4402, !4403, !4404, !4405, !4406, !4407}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4374, file: !104, line: 97, baseType: !354, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4374, file: !104, line: 98, baseType: !4359, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4374, file: !104, line: 100, baseType: !693, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4374, file: !104, line: 101, baseType: !354, size: 64, offset: 192)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4374, file: !104, line: 103, baseType: !267, size: 8, offset: 256)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4374, file: !104, line: 104, baseType: !103, size: 32, offset: 288)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4374, file: !104, line: 106, baseType: !4383, size: 64, offset: 320)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !104, line: 106, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4374, file: !104, line: 107, baseType: !4387, size: 64, offset: 384)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4389)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !104, line: 107, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4374, file: !104, line: 109, baseType: !4333, size: 64, offset: 448)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4374, file: !104, line: 110, baseType: !4324, size: 64, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4374, file: !104, line: 111, baseType: !4333, size: 64, offset: 576)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4374, file: !104, line: 112, baseType: !4324, size: 64, offset: 640)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4374, file: !104, line: 113, baseType: !4395, size: 64, offset: 704)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!125, !346, !4398}
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !117, line: 60, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !117, line: 58, size: 32, elements: !4400)
!4400 = !{!4401}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4399, file: !117, line: 59, baseType: !125, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4374, file: !104, line: 114, baseType: !4333, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4374, file: !104, line: 115, baseType: !480, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4374, file: !104, line: 116, baseType: !480, size: 64, offset: 896)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4374, file: !104, line: 118, baseType: !4328, size: 64, offset: 960)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4374, file: !104, line: 119, baseType: !4324, size: 64, offset: 1024)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4374, file: !104, line: 121, baseType: !4408, size: 64, offset: 1088)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !104, line: 121, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4361, file: !4362, line: 88, baseType: !4313, size: 64, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4361, file: !4362, line: 89, baseType: !4333, size: 64, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4361, file: !4362, line: 90, baseType: !4324, size: 64, offset: 512)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4361, file: !4362, line: 91, baseType: !4324, size: 64, offset: 576)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4361, file: !4362, line: 92, baseType: !4324, size: 64, offset: 640)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4361, file: !4362, line: 94, baseType: !4333, size: 64, offset: 704)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4361, file: !4362, line: 95, baseType: !4333, size: 64, offset: 768)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4361, file: !4362, line: 97, baseType: !4395, size: 64, offset: 832)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4361, file: !4362, line: 98, baseType: !4333, size: 64, offset: 896)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4361, file: !4362, line: 100, baseType: !4333, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4361, file: !4362, line: 102, baseType: !4333, size: 64, offset: 1024)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4361, file: !4362, line: 103, baseType: !4324, size: 64, offset: 1088)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4361, file: !4362, line: 105, baseType: !4328, size: 64, offset: 1152)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4361, file: !4362, line: 107, baseType: !4424, size: 64, offset: 1216)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4426)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4362, line: 107, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4361, file: !4362, line: 109, baseType: !267, size: 8, offset: 1280)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !347, file: !110, line: 715, baseType: !4373, size: 64, offset: 832)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !347, file: !110, line: 717, baseType: !162, size: 64, offset: 896)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !347, file: !110, line: 719, baseType: !162, size: 64, offset: 960)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !347, file: !110, line: 721, baseType: !764, size: 256, offset: 1024)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !347, file: !110, line: 725, baseType: !4433, size: 448, offset: 1280)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !110, line: 517, size: 448, elements: !4434)
!4434 = !{!4435, !4436, !4437, !4438}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4433, file: !110, line: 518, baseType: !356, size: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4433, file: !110, line: 519, baseType: !356, size: 128, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4433, file: !110, line: 520, baseType: !356, size: 128, offset: 256)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4433, file: !110, line: 521, baseType: !109, size: 32, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !347, file: !110, line: 726, baseType: !4440, size: 2496, offset: 1728)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !117, line: 663, size: 2496, elements: !4441)
!4441 = !{!4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4524, !4528}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4440, file: !117, line: 664, baseType: !4398, size: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4440, file: !117, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4440, file: !117, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4440, file: !117, line: 667, baseType: !267, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4440, file: !117, line: 668, baseType: !267, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4440, file: !117, line: 669, baseType: !267, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4440, file: !117, line: 670, baseType: !267, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4440, file: !117, line: 671, baseType: !267, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4440, file: !117, line: 672, baseType: !267, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4440, file: !117, line: 673, baseType: !267, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4440, file: !117, line: 674, baseType: !267, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4440, file: !117, line: 675, baseType: !158, size: 32, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4440, file: !117, line: 676, baseType: !369, size: 32, offset: 96)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4440, file: !117, line: 678, baseType: !356, size: 128, offset: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4440, file: !117, line: 679, baseType: !713, size: 256, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4440, file: !117, line: 680, baseType: !4458, size: 64, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4460, line: 43, size: 1536, elements: !4461)
!4460 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4459, file: !4460, line: 44, baseType: !354, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4459, file: !4460, line: 45, baseType: !125, size: 32, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4459, file: !4460, line: 46, baseType: !356, size: 128, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4459, file: !4460, line: 47, baseType: !369, size: 32, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4459, file: !4460, line: 48, baseType: !4467, size: 64, offset: 320)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !117, line: 629, flags: DIFlagFwdDecl)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4459, file: !4460, line: 49, baseType: !1001, size: 320, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4459, file: !4460, line: 50, baseType: !190, size: 64, offset: 704)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4459, file: !4460, line: 51, baseType: !1654, size: 64, offset: 768)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4459, file: !4460, line: 52, baseType: !1654, size: 64, offset: 832)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4459, file: !4460, line: 53, baseType: !1654, size: 64, offset: 896)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4459, file: !4460, line: 54, baseType: !1654, size: 64, offset: 960)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4459, file: !4460, line: 55, baseType: !1654, size: 64, offset: 1024)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4459, file: !4460, line: 56, baseType: !190, size: 64, offset: 1088)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4459, file: !4460, line: 57, baseType: !190, size: 64, offset: 1152)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4459, file: !4460, line: 58, baseType: !190, size: 64, offset: 1216)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4459, file: !4460, line: 59, baseType: !190, size: 64, offset: 1280)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4459, file: !4460, line: 60, baseType: !190, size: 64, offset: 1344)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4459, file: !4460, line: 61, baseType: !346, size: 64, offset: 1408)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4459, file: !4460, line: 62, baseType: !267, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4459, file: !4460, line: 63, baseType: !267, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4440, file: !117, line: 681, baseType: !267, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4440, file: !117, line: 682, baseType: !267, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4440, file: !117, line: 683, baseType: !267, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4440, file: !117, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4440, file: !117, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4440, file: !117, line: 690, baseType: !1646, size: 512, offset: 640)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4440, file: !117, line: 691, baseType: !191, size: 64, offset: 1152)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4440, file: !117, line: 692, baseType: !1019, size: 256, offset: 1216)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4440, file: !117, line: 693, baseType: !1512, size: 192, offset: 1472)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4440, file: !117, line: 694, baseType: !4467, size: 64, offset: 1664)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4440, file: !117, line: 695, baseType: !389, size: 32, offset: 1728)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4440, file: !117, line: 696, baseType: !389, size: 32, offset: 1760)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4440, file: !117, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4440, file: !117, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4440, file: !117, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4440, file: !117, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4440, file: !117, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4440, file: !117, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4440, file: !117, line: 703, baseType: !267, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4440, file: !117, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4440, file: !117, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4440, file: !117, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4440, file: !117, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4440, file: !117, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4440, file: !117, line: 709, baseType: !7, size: 32, offset: 1824)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4440, file: !117, line: 710, baseType: !116, size: 32, offset: 1856)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4440, file: !117, line: 711, baseType: !124, size: 32, offset: 1888)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4440, file: !117, line: 712, baseType: !124, size: 32, offset: 1920)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4440, file: !117, line: 713, baseType: !125, size: 32, offset: 1952)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4440, file: !117, line: 714, baseType: !125, size: 32, offset: 1984)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4440, file: !117, line: 715, baseType: !191, size: 64, offset: 2048)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4440, file: !117, line: 716, baseType: !191, size: 64, offset: 2112)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4440, file: !117, line: 717, baseType: !191, size: 64, offset: 2176)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4440, file: !117, line: 718, baseType: !191, size: 64, offset: 2240)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4440, file: !117, line: 720, baseType: !4519, size: 64, offset: 2304)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !117, line: 632, size: 64, elements: !4521)
!4521 = !{!4522, !4523}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4520, file: !117, line: 633, baseType: !369, size: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4520, file: !117, line: 634, baseType: !7, size: 32, offset: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4440, file: !117, line: 721, baseType: !4525, size: 64, offset: 2368)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !346, !760}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4440, file: !117, line: 722, baseType: !4529, size: 64, offset: 2432)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 722, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !347, file: !110, line: 727, baseType: !4532, size: 64, offset: 4224)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !117, line: 742, size: 1792, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4541, !4542, !4543}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4533, file: !117, line: 743, baseType: !4330, size: 1472)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4533, file: !117, line: 744, baseType: !4333, size: 64, offset: 1472)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4533, file: !117, line: 745, baseType: !4538, size: 64, offset: 1536)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !346, !267}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4533, file: !117, line: 746, baseType: !4333, size: 64, offset: 1600)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4533, file: !117, line: 747, baseType: !4324, size: 64, offset: 1664)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4533, file: !117, line: 748, baseType: !4324, size: 64, offset: 1728)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !347, file: !110, line: 736, baseType: !4545, size: 128, offset: 4288)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !110, line: 529, size: 128, elements: !4546)
!4546 = !{!4547, !4551}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4545, file: !110, line: 531, baseType: !4548, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4550, line: 13, flags: DIFlagFwdDecl)
!4550 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4545, file: !110, line: 532, baseType: !4552, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !110, line: 49, flags: DIFlagFwdDecl)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !347, file: !110, line: 738, baseType: !4555, size: 64, offset: 4416)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4557)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !110, line: 738, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !347, file: !110, line: 740, baseType: !4559, size: 64, offset: 4480)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !347, file: !110, line: 741, baseType: !191, size: 64, offset: 4544)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !347, file: !110, line: 746, baseType: !191, size: 64, offset: 4608)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !347, file: !110, line: 747, baseType: !4563, size: 64, offset: 4672)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4565)
!4565 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !110, line: 747, flags: DIFlagFwdDecl)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !347, file: !110, line: 749, baseType: !4567, size: 64, offset: 4736)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !110, line: 428, size: 128, elements: !4569)
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4568, file: !110, line: 433, baseType: !7, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4568, file: !110, line: 434, baseType: !7, size: 32, offset: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4568, file: !110, line: 435, baseType: !190, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !347, file: !110, line: 751, baseType: !356, size: 128, offset: 4800)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !347, file: !110, line: 762, baseType: !4575, size: 64, offset: 4928)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !110, line: 762, flags: DIFlagFwdDecl)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !347, file: !110, line: 770, baseType: !4578, offset: 4992)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4579, line: 5, elements: !1048)
!4579 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !347, file: !110, line: 772, baseType: !4581, size: 64, offset: 4992)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4583, line: 18, flags: DIFlagFwdDecl)
!4583 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !347, file: !110, line: 773, baseType: !4585, size: 64, offset: 5056)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4362, line: 22, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !347, file: !110, line: 776, baseType: !125, size: 32, offset: 5120)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !347, file: !110, line: 778, baseType: !659, size: 32, offset: 5152)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !347, file: !110, line: 779, baseType: !158, size: 32, offset: 5184)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !347, file: !110, line: 781, baseType: !369, size: 32, offset: 5216)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !347, file: !110, line: 782, baseType: !356, size: 128, offset: 5248)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !347, file: !110, line: 784, baseType: !4593, size: 64, offset: 5376)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4595)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4596, line: 52, size: 768, elements: !4597)
!4596 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4597 = !{!4598, !4599, !4600, !4601, !4602, !4606, !4610, !4611, !4612, !4613, !4617, !4621}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4595, file: !4596, line: 53, baseType: !354, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4595, file: !4596, line: 55, baseType: !480, size: 64, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4595, file: !4596, line: 56, baseType: !480, size: 64, offset: 128)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4595, file: !4596, line: 58, baseType: !4313, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4595, file: !4596, line: 59, baseType: !4603, size: 64, offset: 256)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!431, !4316, !4322}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4595, file: !4596, line: 61, baseType: !4607, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{null, !4593}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4595, file: !4596, line: 62, baseType: !4324, size: 64, offset: 384)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4595, file: !4596, line: 64, baseType: !4333, size: 64, offset: 448)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4595, file: !4596, line: 66, baseType: !4153, size: 64, offset: 512)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4595, file: !4596, line: 67, baseType: !4614, size: 64, offset: 576)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!2715, !4316}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4595, file: !4596, line: 69, baseType: !4618, size: 64, offset: 640)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{null, !4316, !4185, !4186}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4595, file: !4596, line: 71, baseType: !4328, size: 64, offset: 704)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !347, file: !110, line: 785, baseType: !480, size: 64, offset: 5440)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !347, file: !110, line: 787, baseType: !4324, size: 64, offset: 5504)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !347, file: !110, line: 788, baseType: !4625, size: 64, offset: 5568)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !110, line: 46, flags: DIFlagFwdDecl)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !347, file: !110, line: 789, baseType: !4628, size: 64, offset: 5632)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !110, line: 48, flags: DIFlagFwdDecl)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !347, file: !110, line: 791, baseType: !4631, size: 64, offset: 5696)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !110, line: 597, size: 128, elements: !4633)
!4633 = !{!4634, !4635, !4636, !4637, !4638}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4632, file: !110, line: 598, baseType: !132, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4632, file: !110, line: 599, baseType: !141, size: 32, offset: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4632, file: !110, line: 600, baseType: !146, size: 32, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4632, file: !110, line: 601, baseType: !267, size: 8, offset: 96)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4632, file: !110, line: 602, baseType: !267, size: 8, offset: 104)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !347, file: !110, line: 793, baseType: !151, size: 32, offset: 5760)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !347, file: !110, line: 795, baseType: !267, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !347, file: !110, line: 796, baseType: !267, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !347, file: !110, line: 797, baseType: !267, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !347, file: !110, line: 798, baseType: !267, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !347, file: !110, line: 799, baseType: !267, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "microcode_fini_cpu", scope: !340, file: !12, line: 26, baseType: !4646, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "apply_microcode", scope: !340, file: !12, line: 33, baseType: !4648, size: 64, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!11, !125}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "collect_cpu_info", scope: !340, file: !12, line: 34, baseType: !4652, size: 64, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!125, !125, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_signature", file: !166, line: 5, size: 96, elements: !4657)
!4657 = !{!4658, !4659, !4660}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4656, file: !166, line: 6, baseType: !7, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !4656, file: !166, line: 7, baseType: !7, size: 32, offset: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4656, file: !166, line: 8, baseType: !7, size: 32, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_late_load", scope: !340, file: !12, line: 35, baseType: !4646, size: 64, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "nmi_safe", scope: !340, file: !12, line: 36, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "use_nmi", scope: !340, file: !12, line: 37, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4664 = !DIGlobalVariableExpression(var: !4665, expr: !DIExpression())
!4665 = distinct !DIGlobalVariable(name: "__already_done", scope: !4666, file: !3, line: 556, type: !267, isLocal: true, isDefinition: true)
!4666 = distinct !DISubprogram(name: "is_blacklisted", scope: !3, file: !3, line: 541, type: !4667, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4669)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!267, !7}
!4669 = !{!4670, !4671, !4672, !4675, !4677, !4681, !4684, !4685, !4687, !4690}
!4670 = !DILocalVariable(name: "cpu", arg: 1, scope: !4666, file: !3, line: 541, type: !7)
!4671 = !DILocalVariable(name: "c", scope: !4666, file: !3, line: 543, type: !198)
!4672 = !DILocalVariable(name: "__vpp_verify", scope: !4673, file: !3, line: 543, type: !2715)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 543, column: 27)
!4674 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 543, column: 27)
!4675 = !DILocalVariable(name: "__ptr", scope: !4676, file: !3, line: 543, type: !190)
!4676 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 543, column: 27)
!4677 = !DILocalVariable(name: "__ret_do_once", scope: !4678, file: !3, line: 556, type: !267)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 556, column: 3)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 555, column: 33)
!4680 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 551, column: 6)
!4681 = !DILocalVariable(name: "__ret_cond", scope: !4682, file: !3, line: 556, type: !267)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 556, column: 3)
!4683 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 556, column: 3)
!4684 = !DILocalVariable(name: "__ret_once", scope: !4682, file: !3, line: 556, type: !267)
!4685 = !DILocalVariable(name: "__ret_do_once", scope: !4686, file: !3, line: 557, type: !267)
!4686 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 557, column: 3)
!4687 = !DILocalVariable(name: "__ret_cond", scope: !4688, file: !3, line: 557, type: !267)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 557, column: 3)
!4689 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 557, column: 3)
!4690 = !DILocalVariable(name: "__ret_once", scope: !4688, file: !3, line: 557, type: !267)
!4691 = !DIGlobalVariableExpression(var: !4692, expr: !DIExpression())
!4692 = distinct !DIGlobalVariable(scope: null, file: !3, line: 556, type: !4693, isLocal: true, isDefinition: true)
!4693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 688, elements: !4694)
!4694 = !{!4695}
!4695 = !DISubrange(count: 86)
!4696 = !DIGlobalVariableExpression(var: !4697, expr: !DIExpression())
!4697 = distinct !DIGlobalVariable(name: "__already_done", scope: !4666, file: !3, line: 557, type: !267, isLocal: true, isDefinition: true)
!4698 = !DIGlobalVariableExpression(var: !4699, expr: !DIExpression())
!4699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 557, type: !4700, isLocal: true, isDefinition: true)
!4700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 824, elements: !4701)
!4701 = !{!4702}
!4702 = !DISubrange(count: 103)
!4703 = !DIGlobalVariableExpression(var: !4704, expr: !DIExpression())
!4704 = distinct !DIGlobalVariable(scope: null, file: !3, line: 483, type: !284, isLocal: true, isDefinition: true)
!4705 = !DIGlobalVariableExpression(var: !4706, expr: !DIExpression())
!4706 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !4707, isLocal: true, isDefinition: true)
!4707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 600, elements: !4708)
!4708 = !{!4709}
!4709 = !DISubrange(count: 75)
!4710 = !DIGlobalVariableExpression(var: !4711, expr: !DIExpression())
!4711 = distinct !DIGlobalVariable(scope: null, file: !3, line: 494, type: !4712, isLocal: true, isDefinition: true)
!4712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 568, elements: !4713)
!4713 = !{!4714}
!4714 = !DISubrange(count: 71)
!4715 = !DIGlobalVariableExpression(var: !4716, expr: !DIExpression())
!4716 = distinct !DIGlobalVariable(scope: null, file: !4717, line: 249, type: !4718, isLocal: true, isDefinition: true)
!4717 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 224, elements: !4719)
!4719 = !{!4720}
!4720 = !DISubrange(count: 28)
!4721 = !DIGlobalVariableExpression(var: !4722, expr: !DIExpression())
!4722 = distinct !DIGlobalVariable(name: "ucode_patch_late", scope: !2, file: !3, line: 38, type: !164, isLocal: true, isDefinition: true)
!4723 = !DIGlobalVariableExpression(var: !4724, expr: !DIExpression())
!4724 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !4725, isLocal: true, isDefinition: true)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 40, elements: !219)
!4726 = !DIGlobalVariableExpression(var: !4727, expr: !DIExpression())
!4727 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !4728, isLocal: true, isDefinition: true)
!4728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 304, elements: !334)
!4729 = !DIGlobalVariableExpression(var: !4730, expr: !DIExpression())
!4730 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !4731, isLocal: true, isDefinition: true)
!4731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 496, elements: !4732)
!4732 = !{!4733}
!4733 = !DISubrange(count: 62)
!4734 = !{i32 7, !"Dwarf Version", i32 5}
!4735 = !{i32 2, !"Debug Info Version", i32 3}
!4736 = !{i32 1, !"wchar_size", i32 2}
!4737 = !{i32 8, !"cf-protection-branch", i32 1}
!4738 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4739 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4740 = !{i32 1, !"Code Model", i32 2}
!4741 = !{i32 1, !"override-stack-alignment", i32 8}
!4742 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4743 = distinct !DISubprogram(name: "intel_collect_cpu_info", scope: !3, file: !3, line: 71, type: !4744, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4746)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{null, !4655}
!4746 = !{!4747, !4748, !4751}
!4747 = !DILocalVariable(name: "sig", arg: 1, scope: !4743, file: !3, line: 71, type: !4655)
!4748 = !DILocalVariable(name: "val", scope: !4749, file: !3, line: 78, type: !182)
!4749 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 77, column: 60)
!4750 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 77, column: 6)
!4751 = !DILocalVariable(name: "__val", scope: !4752, file: !3, line: 81, type: !191)
!4752 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 81, column: 3)
!4753 = !DILocation(line: 71, column: 51, scope: !4743)
!4754 = !DILocation(line: 73, column: 13, scope: !4743)
!4755 = !DILocation(line: 73, column: 2, scope: !4743)
!4756 = !DILocation(line: 73, column: 7, scope: !4743)
!4757 = !DILocation(line: 73, column: 11, scope: !4743)
!4758 = !DILocation(line: 74, column: 2, scope: !4743)
!4759 = !DILocation(line: 74, column: 7, scope: !4743)
!4760 = !DILocation(line: 74, column: 10, scope: !4743)
!4761 = !DILocation(line: 75, column: 13, scope: !4743)
!4762 = !DILocation(line: 75, column: 2, scope: !4743)
!4763 = !DILocation(line: 75, column: 7, scope: !4743)
!4764 = !DILocation(line: 75, column: 11, scope: !4743)
!4765 = !DILocation(line: 77, column: 16, scope: !4750)
!4766 = !DILocation(line: 77, column: 21, scope: !4750)
!4767 = !DILocation(line: 77, column: 6, scope: !4750)
!4768 = !DILocation(line: 77, column: 26, scope: !4750)
!4769 = !DILocation(line: 77, column: 31, scope: !4750)
!4770 = !DILocation(line: 77, column: 45, scope: !4750)
!4771 = !DILocation(line: 77, column: 50, scope: !4750)
!4772 = !DILocation(line: 77, column: 34, scope: !4750)
!4773 = !DILocation(line: 77, column: 55, scope: !4750)
!4774 = !DILocation(line: 77, column: 6, scope: !4743)
!4775 = !DILocation(line: 78, column: 3, scope: !4749)
!4776 = !DILocation(line: 78, column: 16, scope: !4749)
!4777 = !DILocation(line: 81, column: 3, scope: !4749)
!4778 = !DILocation(line: 81, column: 3, scope: !4752)
!4779 = !DILocation(line: 82, column: 20, scope: !4749)
!4780 = !DILocation(line: 82, column: 27, scope: !4749)
!4781 = !DILocation(line: 82, column: 34, scope: !4749)
!4782 = !DILocation(line: 82, column: 15, scope: !4749)
!4783 = !DILocation(line: 82, column: 3, scope: !4749)
!4784 = !DILocation(line: 82, column: 8, scope: !4749)
!4785 = !DILocation(line: 82, column: 11, scope: !4749)
!4786 = !DILocation(line: 83, column: 2, scope: !4750)
!4787 = !DILocation(line: 83, column: 2, scope: !4749)
!4788 = !DILocation(line: 84, column: 1, scope: !4743)
!4789 = distinct !DISubprogram(name: "cpuid_eax", scope: !4790, file: !4790, line: 94, type: !4791, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4790 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!7, !7}
!4793 = !{!4794, !4795, !4796, !4797, !4798}
!4794 = !DILocalVariable(name: "op", arg: 1, scope: !4789, file: !4790, line: 94, type: !7)
!4795 = !DILocalVariable(name: "eax", scope: !4789, file: !4790, line: 96, type: !7)
!4796 = !DILocalVariable(name: "ebx", scope: !4789, file: !4790, line: 96, type: !7)
!4797 = !DILocalVariable(name: "ecx", scope: !4789, file: !4790, line: 96, type: !7)
!4798 = !DILocalVariable(name: "edx", scope: !4789, file: !4790, line: 96, type: !7)
!4799 = !DILocation(line: 94, column: 51, scope: !4789)
!4800 = !DILocation(line: 96, column: 2, scope: !4789)
!4801 = !DILocation(line: 96, column: 15, scope: !4789)
!4802 = !DILocation(line: 96, column: 20, scope: !4789)
!4803 = !DILocation(line: 96, column: 25, scope: !4789)
!4804 = !DILocation(line: 96, column: 30, scope: !4789)
!4805 = !DILocation(line: 98, column: 8, scope: !4789)
!4806 = !DILocation(line: 98, column: 2, scope: !4789)
!4807 = !DILocation(line: 100, column: 9, scope: !4789)
!4808 = !DILocation(line: 101, column: 1, scope: !4789)
!4809 = !DILocation(line: 100, column: 2, scope: !4789)
!4810 = distinct !DISubprogram(name: "intel_get_microcode_revision", scope: !166, file: !166, line: 59, type: !4811, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4813)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!158}
!4813 = !{!4814, !4815, !4816}
!4814 = !DILocalVariable(name: "rev", scope: !4810, file: !166, line: 61, type: !158)
!4815 = !DILocalVariable(name: "dummy", scope: !4810, file: !166, line: 61, type: !158)
!4816 = !DILocalVariable(name: "__val", scope: !4817, file: !166, line: 69, type: !191)
!4817 = distinct !DILexicalBlock(scope: !4810, file: !166, line: 69, column: 2)
!4818 = !DILocation(line: 61, column: 2, scope: !4810)
!4819 = !DILocation(line: 61, column: 6, scope: !4810)
!4820 = !DILocation(line: 61, column: 11, scope: !4810)
!4821 = !DILocation(line: 63, column: 2, scope: !4810)
!4822 = !DILocation(line: 66, column: 2, scope: !4810)
!4823 = !DILocation(line: 69, column: 2, scope: !4810)
!4824 = !DILocation(line: 69, column: 2, scope: !4817)
!4825 = !DILocation(line: 71, column: 9, scope: !4810)
!4826 = !DILocation(line: 72, column: 1, scope: !4810)
!4827 = !DILocation(line: 71, column: 2, scope: !4810)
!4828 = !DISubprogram(name: "x86_model", scope: !4829, file: !4829, line: 39, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4829 = !DIFile(filename: "./arch/x86/include/asm/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7621f2ef482a6250db9c8e206e21622e")
!4830 = !DISubprogram(name: "x86_family", scope: !4829, file: !4829, line: 38, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4831 = distinct !DISubprogram(name: "__rdmsr", scope: !4832, file: !4832, line: 80, type: !4833, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4835)
!4832 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!193, !7}
!4835 = !{!4836, !4837, !4838}
!4836 = !DILocalVariable(name: "msr", arg: 1, scope: !4831, file: !4832, line: 80, type: !7)
!4837 = !DILocalVariable(name: "low", scope: !4831, file: !4832, line: 82, type: !190)
!4838 = !DILocalVariable(name: "high", scope: !4831, file: !4832, line: 82, type: !190)
!4839 = !DILocation(line: 80, column: 64, scope: !4831)
!4840 = !DILocation(line: 82, column: 2, scope: !4831)
!4841 = !DILocation(line: 87, column: 45, scope: !4831)
!4842 = !DILocation(line: 84, column: 2, scope: !4831)
!4843 = !{i64 1251477, i64 1251498, i64 2149434009, i64 2149434053, i64 2149434076, i64 2149434109, i64 2149434140, i64 2149434179}
!4844 = !DILocation(line: 89, column: 9, scope: !4831)
!4845 = !DILocation(line: 90, column: 1, scope: !4831)
!4846 = !DILocation(line: 89, column: 2, scope: !4831)
!4847 = distinct !DISubprogram(name: "intel_find_matching_signature", scope: !3, file: !3, line: 97, type: !4848, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4850)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!267, !162, !4655}
!4850 = !{!4851, !4852, !4853, !4854, !4861, !4871}
!4851 = !DILocalVariable(name: "mc", arg: 1, scope: !4847, file: !3, line: 97, type: !162)
!4852 = !DILocalVariable(name: "sig", arg: 2, scope: !4847, file: !3, line: 97, type: !4655)
!4853 = !DILocalVariable(name: "mc_hdr", scope: !4847, file: !3, line: 99, type: !196)
!4854 = !DILocalVariable(name: "ext_sig", scope: !4847, file: !3, line: 100, type: !4855)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_signature", file: !3, line: 44, size: 96, elements: !4857)
!4857 = !{!4858, !4859, !4860}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4856, file: !3, line: 45, baseType: !7, size: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !4856, file: !3, line: 46, baseType: !7, size: 32, offset: 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !4856, file: !3, line: 47, baseType: !7, size: 32, offset: 64)
!4861 = !DILocalVariable(name: "ext_hdr", scope: !4847, file: !3, line: 101, type: !4862)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_sigtable", file: !3, line: 50, size: 160, elements: !4864)
!4864 = !{!4865, !4866, !4867, !4869}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4863, file: !3, line: 51, baseType: !7, size: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !4863, file: !3, line: 52, baseType: !7, size: 32, offset: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4863, file: !3, line: 53, baseType: !4868, size: 96, offset: 64)
!4868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !432)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sigs", scope: !4863, file: !3, line: 54, baseType: !4870, offset: 160)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4856, elements: !187)
!4871 = !DILocalVariable(name: "i", scope: !4847, file: !3, line: 102, type: !125)
!4872 = !DILocation(line: 97, column: 42, scope: !4847)
!4873 = !DILocation(line: 97, column: 68, scope: !4847)
!4874 = !DILocation(line: 99, column: 2, scope: !4847)
!4875 = !DILocation(line: 99, column: 33, scope: !4847)
!4876 = !DILocation(line: 99, column: 42, scope: !4847)
!4877 = !DILocation(line: 100, column: 2, scope: !4847)
!4878 = !DILocation(line: 100, column: 29, scope: !4847)
!4879 = !DILocation(line: 101, column: 2, scope: !4847)
!4880 = !DILocation(line: 101, column: 28, scope: !4847)
!4881 = !DILocation(line: 102, column: 2, scope: !4847)
!4882 = !DILocation(line: 102, column: 6, scope: !4847)
!4883 = !DILocation(line: 104, column: 27, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 104, column: 6)
!4885 = !DILocation(line: 104, column: 32, scope: !4884)
!4886 = !DILocation(line: 104, column: 40, scope: !4884)
!4887 = !DILocation(line: 104, column: 45, scope: !4884)
!4888 = !DILocation(line: 104, column: 53, scope: !4884)
!4889 = !DILocation(line: 104, column: 6, scope: !4884)
!4890 = !DILocation(line: 104, column: 6, scope: !4847)
!4891 = !DILocation(line: 105, column: 3, scope: !4884)
!4892 = !DILocation(line: 108, column: 20, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 108, column: 6)
!4894 = !DILocation(line: 108, column: 6, scope: !4893)
!4895 = !DILocation(line: 108, column: 60, scope: !4893)
!4896 = !DILocation(line: 108, column: 31, scope: !4893)
!4897 = !DILocation(line: 108, column: 68, scope: !4893)
!4898 = !DILocation(line: 108, column: 28, scope: !4893)
!4899 = !DILocation(line: 108, column: 6, scope: !4847)
!4900 = !DILocation(line: 109, column: 3, scope: !4893)
!4901 = !DILocation(line: 111, column: 12, scope: !4847)
!4902 = !DILocation(line: 111, column: 46, scope: !4847)
!4903 = !DILocation(line: 111, column: 17, scope: !4847)
!4904 = !DILocation(line: 111, column: 15, scope: !4847)
!4905 = !DILocation(line: 111, column: 54, scope: !4847)
!4906 = !DILocation(line: 111, column: 10, scope: !4847)
!4907 = !DILocation(line: 112, column: 20, scope: !4847)
!4908 = !DILocation(line: 112, column: 28, scope: !4847)
!4909 = !DILocation(line: 112, column: 10, scope: !4847)
!4910 = !DILocation(line: 114, column: 9, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 114, column: 2)
!4912 = !DILocation(line: 114, column: 7, scope: !4911)
!4913 = !DILocation(line: 114, column: 14, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 114, column: 2)
!4915 = !DILocation(line: 114, column: 18, scope: !4914)
!4916 = !DILocation(line: 114, column: 27, scope: !4914)
!4917 = !DILocation(line: 114, column: 16, scope: !4914)
!4918 = !DILocation(line: 114, column: 2, scope: !4911)
!4919 = !DILocation(line: 115, column: 28, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 115, column: 7)
!4921 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 114, column: 39)
!4922 = !DILocation(line: 115, column: 33, scope: !4920)
!4923 = !DILocation(line: 115, column: 42, scope: !4920)
!4924 = !DILocation(line: 115, column: 47, scope: !4920)
!4925 = !DILocation(line: 115, column: 56, scope: !4920)
!4926 = !DILocation(line: 115, column: 7, scope: !4920)
!4927 = !DILocation(line: 115, column: 7, scope: !4921)
!4928 = !DILocation(line: 116, column: 4, scope: !4920)
!4929 = !DILocation(line: 117, column: 10, scope: !4921)
!4930 = !DILocation(line: 118, column: 2, scope: !4921)
!4931 = !DILocation(line: 114, column: 35, scope: !4914)
!4932 = !DILocation(line: 114, column: 2, scope: !4914)
!4933 = distinct !{!4933, !4918, !4934, !4935, !4936}
!4934 = !DILocation(line: 118, column: 2, scope: !4911)
!4935 = !{!"llvm.loop.mustprogress"}
!4936 = !{!"llvm.loop.unroll.disable"}
!4937 = !DILocation(line: 119, column: 2, scope: !4847)
!4938 = !DILocation(line: 120, column: 1, scope: !4847)
!4939 = distinct !DISubprogram(name: "cpu_signatures_match", scope: !3, file: !3, line: 87, type: !4940, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4942)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!267, !4655, !7, !7}
!4942 = !{!4943, !4944, !4945}
!4943 = !DILocalVariable(name: "s1", arg: 1, scope: !4939, file: !3, line: 87, type: !4655)
!4944 = !DILocalVariable(name: "sig2", arg: 2, scope: !4939, file: !3, line: 87, type: !7)
!4945 = !DILocalVariable(name: "pf2", arg: 3, scope: !4939, file: !3, line: 88, type: !7)
!4946 = !DILocation(line: 87, column: 63, scope: !4939)
!4947 = !DILocation(line: 87, column: 80, scope: !4939)
!4948 = !DILocation(line: 88, column: 19, scope: !4939)
!4949 = !DILocation(line: 90, column: 6, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 90, column: 6)
!4951 = !DILocation(line: 90, column: 10, scope: !4950)
!4952 = !DILocation(line: 90, column: 17, scope: !4950)
!4953 = !DILocation(line: 90, column: 14, scope: !4950)
!4954 = !DILocation(line: 90, column: 6, scope: !4939)
!4955 = !DILocation(line: 91, column: 3, scope: !4950)
!4956 = !DILocation(line: 94, column: 12, scope: !4939)
!4957 = !DILocation(line: 94, column: 16, scope: !4939)
!4958 = !DILocation(line: 94, column: 19, scope: !4939)
!4959 = !DILocation(line: 94, column: 23, scope: !4939)
!4960 = !DILocation(line: 94, column: 28, scope: !4939)
!4961 = !DILocation(line: 94, column: 32, scope: !4939)
!4962 = !DILocation(line: 94, column: 36, scope: !4939)
!4963 = !DILocation(line: 94, column: 41, scope: !4939)
!4964 = !DILocation(line: 94, column: 39, scope: !4939)
!4965 = !DILocation(line: 94, column: 2, scope: !4939)
!4966 = !DILocation(line: 95, column: 1, scope: !4939)
!4967 = distinct !DISubprogram(name: "get_totalsize", scope: !3, file: !3, line: 61, type: !4968, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4970)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!7, !196}
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "hdr", arg: 1, scope: !4967, file: !3, line: 61, type: !196)
!4972 = !DILocation(line: 61, column: 73, scope: !4967)
!4973 = !DILocation(line: 63, column: 9, scope: !4967)
!4974 = !DILocation(line: 63, column: 14, scope: !4967)
!4975 = !DILocation(line: 63, column: 25, scope: !4967)
!4976 = !DILocation(line: 63, column: 30, scope: !4967)
!4977 = !DILocation(line: 63, column: 2, scope: !4967)
!4978 = distinct !DISubprogram(name: "intel_microcode_get_datasize", scope: !166, file: !166, line: 54, type: !4979, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4981)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!125, !196}
!4981 = !{!4982}
!4982 = !DILocalVariable(name: "hdr", arg: 1, scope: !4978, file: !166, line: 54, type: !196)
!4983 = !DILocation(line: 54, column: 79, scope: !4978)
!4984 = !DILocation(line: 56, column: 9, scope: !4978)
!4985 = !DILocation(line: 56, column: 14, scope: !4978)
!4986 = !DILocation(line: 56, column: 2, scope: !4978)
!4987 = distinct !DISubprogram(name: "intel_microcode_sanity_check", scope: !3, file: !3, line: 137, type: !4988, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!125, !162, !267, !125}
!4990 = !{!4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5007}
!4991 = !DILocalVariable(name: "mc", arg: 1, scope: !4987, file: !3, line: 137, type: !162)
!4992 = !DILocalVariable(name: "print_err", arg: 2, scope: !4987, file: !3, line: 137, type: !267)
!4993 = !DILocalVariable(name: "hdr_type", arg: 3, scope: !4987, file: !3, line: 137, type: !125)
!4994 = !DILocalVariable(name: "total_size", scope: !4987, file: !3, line: 139, type: !190)
!4995 = !DILocalVariable(name: "data_size", scope: !4987, file: !3, line: 139, type: !190)
!4996 = !DILocalVariable(name: "ext_table_size", scope: !4987, file: !3, line: 139, type: !190)
!4997 = !DILocalVariable(name: "mc_header", scope: !4987, file: !3, line: 140, type: !196)
!4998 = !DILocalVariable(name: "ext_header", scope: !4987, file: !3, line: 141, type: !4862)
!4999 = !DILocalVariable(name: "sum", scope: !4987, file: !3, line: 142, type: !158)
!5000 = !DILocalVariable(name: "orig_sum", scope: !4987, file: !3, line: 142, type: !158)
!5001 = !DILocalVariable(name: "ext_sigcount", scope: !4987, file: !3, line: 142, type: !158)
!5002 = !DILocalVariable(name: "i", scope: !4987, file: !3, line: 142, type: !158)
!5003 = !DILocalVariable(name: "ext_sig", scope: !4987, file: !3, line: 143, type: !4855)
!5004 = !DILocalVariable(name: "ext_table_sum", scope: !5005, file: !3, line: 163, type: !158)
!5005 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 162, column: 22)
!5006 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 162, column: 6)
!5007 = !DILocalVariable(name: "ext_tablep", scope: !5005, file: !3, line: 164, type: !163)
!5008 = !DILocation(line: 137, column: 40, scope: !4987)
!5009 = !DILocation(line: 137, column: 49, scope: !4987)
!5010 = !DILocation(line: 137, column: 64, scope: !4987)
!5011 = !DILocation(line: 139, column: 2, scope: !4987)
!5012 = !DILocation(line: 139, column: 16, scope: !4987)
!5013 = !DILocation(line: 139, column: 28, scope: !4987)
!5014 = !DILocation(line: 139, column: 39, scope: !4987)
!5015 = !DILocation(line: 140, column: 2, scope: !4987)
!5016 = !DILocation(line: 140, column: 33, scope: !4987)
!5017 = !DILocation(line: 140, column: 45, scope: !4987)
!5018 = !DILocation(line: 141, column: 2, scope: !4987)
!5019 = !DILocation(line: 141, column: 28, scope: !4987)
!5020 = !DILocation(line: 142, column: 2, scope: !4987)
!5021 = !DILocation(line: 142, column: 6, scope: !4987)
!5022 = !DILocation(line: 142, column: 11, scope: !4987)
!5023 = !DILocation(line: 142, column: 21, scope: !4987)
!5024 = !DILocation(line: 142, column: 39, scope: !4987)
!5025 = !DILocation(line: 143, column: 2, scope: !4987)
!5026 = !DILocation(line: 143, column: 29, scope: !4987)
!5027 = !DILocation(line: 145, column: 29, scope: !4987)
!5028 = !DILocation(line: 145, column: 15, scope: !4987)
!5029 = !DILocation(line: 145, column: 13, scope: !4987)
!5030 = !DILocation(line: 146, column: 43, scope: !4987)
!5031 = !DILocation(line: 146, column: 14, scope: !4987)
!5032 = !DILocation(line: 146, column: 12, scope: !4987)
!5033 = !DILocation(line: 148, column: 6, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 148, column: 6)
!5035 = !DILocation(line: 148, column: 16, scope: !5034)
!5036 = !DILocation(line: 148, column: 35, scope: !5034)
!5037 = !DILocation(line: 148, column: 33, scope: !5034)
!5038 = !DILocation(line: 148, column: 6, scope: !4987)
!5039 = !DILocation(line: 149, column: 7, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 149, column: 7)
!5041 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 148, column: 47)
!5042 = !{i8 0, i8 2}
!5043 = !DILocation(line: 149, column: 7, scope: !5041)
!5044 = !DILocation(line: 150, column: 4, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 150, column: 4)
!5046 = !DILocation(line: 150, column: 4, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 150, column: 4)
!5048 = !DILocation(line: 150, column: 4, scope: !5040)
!5049 = !DILocation(line: 151, column: 3, scope: !5041)
!5050 = !DILocation(line: 154, column: 6, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 154, column: 6)
!5052 = !DILocation(line: 154, column: 17, scope: !5051)
!5053 = !DILocation(line: 154, column: 24, scope: !5051)
!5054 = !DILocation(line: 154, column: 29, scope: !5051)
!5055 = !DILocation(line: 154, column: 32, scope: !5051)
!5056 = !DILocation(line: 154, column: 43, scope: !5051)
!5057 = !DILocation(line: 154, column: 53, scope: !5051)
!5058 = !DILocation(line: 154, column: 50, scope: !5051)
!5059 = !DILocation(line: 154, column: 6, scope: !4987)
!5060 = !DILocation(line: 155, column: 7, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 155, column: 7)
!5062 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 154, column: 63)
!5063 = !DILocation(line: 155, column: 7, scope: !5062)
!5064 = !DILocation(line: 156, column: 4, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 156, column: 4)
!5066 = !DILocation(line: 156, column: 4, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 156, column: 4)
!5068 = !DILocation(line: 156, column: 4, scope: !5061)
!5069 = !DILocation(line: 158, column: 3, scope: !5062)
!5070 = !DILocation(line: 161, column: 19, scope: !4987)
!5071 = !DILocation(line: 161, column: 50, scope: !4987)
!5072 = !DILocation(line: 161, column: 48, scope: !4987)
!5073 = !DILocation(line: 161, column: 30, scope: !4987)
!5074 = !DILocation(line: 161, column: 17, scope: !4987)
!5075 = !DILocation(line: 162, column: 6, scope: !5006)
!5076 = !DILocation(line: 162, column: 6, scope: !4987)
!5077 = !DILocation(line: 163, column: 3, scope: !5005)
!5078 = !DILocation(line: 163, column: 7, scope: !5005)
!5079 = !DILocation(line: 164, column: 3, scope: !5005)
!5080 = !DILocation(line: 164, column: 8, scope: !5005)
!5081 = !DILocation(line: 166, column: 7, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 166, column: 7)
!5083 = !DILocation(line: 166, column: 22, scope: !5082)
!5084 = !DILocation(line: 166, column: 40, scope: !5082)
!5085 = !DILocation(line: 167, column: 9, scope: !5082)
!5086 = !DILocation(line: 167, column: 24, scope: !5082)
!5087 = !DILocation(line: 167, column: 43, scope: !5082)
!5088 = !DILocation(line: 166, column: 7, scope: !5005)
!5089 = !DILocation(line: 168, column: 8, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 168, column: 8)
!5091 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 167, column: 66)
!5092 = !DILocation(line: 168, column: 8, scope: !5091)
!5093 = !DILocation(line: 169, column: 5, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 169, column: 5)
!5095 = !DILocation(line: 169, column: 5, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 169, column: 5)
!5097 = !DILocation(line: 169, column: 5, scope: !5090)
!5098 = !DILocation(line: 170, column: 4, scope: !5091)
!5099 = !DILocation(line: 173, column: 16, scope: !5005)
!5100 = !DILocation(line: 173, column: 19, scope: !5005)
!5101 = !DILocation(line: 173, column: 38, scope: !5005)
!5102 = !DILocation(line: 173, column: 36, scope: !5005)
!5103 = !DILocation(line: 173, column: 14, scope: !5005)
!5104 = !DILocation(line: 174, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 174, column: 7)
!5106 = !DILocation(line: 174, column: 39, scope: !5105)
!5107 = !DILocation(line: 174, column: 25, scope: !5105)
!5108 = !DILocation(line: 174, column: 22, scope: !5105)
!5109 = !DILocation(line: 174, column: 7, scope: !5005)
!5110 = !DILocation(line: 175, column: 8, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 175, column: 8)
!5112 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 174, column: 52)
!5113 = !DILocation(line: 175, column: 8, scope: !5112)
!5114 = !DILocation(line: 176, column: 5, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 176, column: 5)
!5116 = !DILocation(line: 176, column: 5, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 176, column: 5)
!5118 = !DILocation(line: 176, column: 5, scope: !5111)
!5119 = !DILocation(line: 177, column: 4, scope: !5112)
!5120 = !DILocation(line: 180, column: 18, scope: !5005)
!5121 = !DILocation(line: 180, column: 30, scope: !5005)
!5122 = !DILocation(line: 180, column: 16, scope: !5005)
!5123 = !DILocation(line: 186, column: 23, scope: !5005)
!5124 = !DILocation(line: 186, column: 14, scope: !5005)
!5125 = !DILocation(line: 188, column: 7, scope: !5005)
!5126 = !DILocation(line: 188, column: 22, scope: !5005)
!5127 = !DILocation(line: 188, column: 5, scope: !5005)
!5128 = !DILocation(line: 189, column: 3, scope: !5005)
!5129 = !DILocation(line: 189, column: 11, scope: !5005)
!5130 = !DILocation(line: 190, column: 21, scope: !5005)
!5131 = !DILocation(line: 190, column: 32, scope: !5005)
!5132 = !DILocation(line: 190, column: 18, scope: !5005)
!5133 = distinct !{!5133, !5128, !5134, !4935, !4936}
!5134 = !DILocation(line: 190, column: 33, scope: !5005)
!5135 = !DILocation(line: 192, column: 7, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 192, column: 7)
!5137 = !DILocation(line: 192, column: 7, scope: !5005)
!5138 = !DILocation(line: 193, column: 8, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 193, column: 8)
!5140 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 192, column: 22)
!5141 = !DILocation(line: 193, column: 8, scope: !5140)
!5142 = !DILocation(line: 194, column: 5, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 194, column: 5)
!5144 = !DILocation(line: 194, column: 5, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5143, file: !3, line: 194, column: 5)
!5146 = !DILocation(line: 194, column: 5, scope: !5139)
!5147 = !DILocation(line: 195, column: 4, scope: !5140)
!5148 = !DILocation(line: 197, column: 2, scope: !5006)
!5149 = !DILocation(line: 197, column: 2, scope: !5005)
!5150 = !DILocation(line: 204, column: 11, scope: !4987)
!5151 = !DILocation(line: 205, column: 24, scope: !4987)
!5152 = !DILocation(line: 205, column: 22, scope: !4987)
!5153 = !DILocation(line: 205, column: 35, scope: !4987)
!5154 = !DILocation(line: 205, column: 6, scope: !4987)
!5155 = !DILocation(line: 205, column: 4, scope: !4987)
!5156 = !DILocation(line: 206, column: 2, scope: !4987)
!5157 = !DILocation(line: 206, column: 10, scope: !4987)
!5158 = !DILocation(line: 207, column: 23, scope: !4987)
!5159 = !DILocation(line: 207, column: 27, scope: !4987)
!5160 = !DILocation(line: 207, column: 15, scope: !4987)
!5161 = !DILocation(line: 207, column: 12, scope: !4987)
!5162 = distinct !{!5162, !5156, !5163, !4935, !4936}
!5163 = !DILocation(line: 207, column: 28, scope: !4987)
!5164 = !DILocation(line: 209, column: 6, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 209, column: 6)
!5166 = !DILocation(line: 209, column: 6, scope: !4987)
!5167 = !DILocation(line: 210, column: 7, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 210, column: 7)
!5169 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 209, column: 16)
!5170 = !DILocation(line: 210, column: 7, scope: !5169)
!5171 = !DILocation(line: 211, column: 4, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 211, column: 4)
!5173 = !DILocation(line: 211, column: 4, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 211, column: 4)
!5175 = !DILocation(line: 211, column: 4, scope: !5168)
!5176 = !DILocation(line: 212, column: 3, scope: !5169)
!5177 = !DILocation(line: 215, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 215, column: 6)
!5179 = !DILocation(line: 215, column: 6, scope: !4987)
!5180 = !DILocation(line: 216, column: 3, scope: !5178)
!5181 = !DILocation(line: 221, column: 9, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 221, column: 2)
!5183 = !DILocation(line: 221, column: 7, scope: !5182)
!5184 = !DILocation(line: 221, column: 14, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 221, column: 2)
!5186 = !DILocation(line: 221, column: 18, scope: !5185)
!5187 = !DILocation(line: 221, column: 16, scope: !5185)
!5188 = !DILocation(line: 221, column: 2, scope: !5182)
!5189 = !DILocation(line: 222, column: 21, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 221, column: 37)
!5191 = !DILocation(line: 222, column: 32, scope: !5190)
!5192 = !DILocation(line: 223, column: 27, scope: !5190)
!5193 = !DILocation(line: 223, column: 25, scope: !5190)
!5194 = !DILocation(line: 222, column: 50, scope: !5190)
!5195 = !DILocation(line: 222, column: 11, scope: !5190)
!5196 = !DILocation(line: 225, column: 10, scope: !5190)
!5197 = !DILocation(line: 225, column: 21, scope: !5190)
!5198 = !DILocation(line: 225, column: 27, scope: !5190)
!5199 = !DILocation(line: 225, column: 38, scope: !5190)
!5200 = !DILocation(line: 225, column: 25, scope: !5190)
!5201 = !DILocation(line: 225, column: 43, scope: !5190)
!5202 = !DILocation(line: 225, column: 54, scope: !5190)
!5203 = !DILocation(line: 225, column: 41, scope: !5190)
!5204 = !DILocation(line: 226, column: 10, scope: !5190)
!5205 = !DILocation(line: 226, column: 19, scope: !5190)
!5206 = !DILocation(line: 226, column: 25, scope: !5190)
!5207 = !DILocation(line: 226, column: 34, scope: !5190)
!5208 = !DILocation(line: 226, column: 23, scope: !5190)
!5209 = !DILocation(line: 226, column: 39, scope: !5190)
!5210 = !DILocation(line: 226, column: 48, scope: !5190)
!5211 = !DILocation(line: 226, column: 37, scope: !5190)
!5212 = !DILocation(line: 225, column: 61, scope: !5190)
!5213 = !DILocation(line: 225, column: 7, scope: !5190)
!5214 = !DILocation(line: 227, column: 7, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 227, column: 7)
!5216 = !DILocation(line: 227, column: 7, scope: !5190)
!5217 = !DILocation(line: 228, column: 8, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 228, column: 8)
!5219 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 227, column: 12)
!5220 = !DILocation(line: 228, column: 8, scope: !5219)
!5221 = !DILocation(line: 229, column: 5, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 229, column: 5)
!5223 = !DILocation(line: 229, column: 5, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 229, column: 5)
!5225 = !DILocation(line: 229, column: 5, scope: !5218)
!5226 = !DILocation(line: 230, column: 4, scope: !5219)
!5227 = !DILocation(line: 232, column: 2, scope: !5190)
!5228 = !DILocation(line: 221, column: 33, scope: !5185)
!5229 = !DILocation(line: 221, column: 2, scope: !5185)
!5230 = distinct !{!5230, !5188, !5231, !4935, !4936}
!5231 = !DILocation(line: 232, column: 2, scope: !5182)
!5232 = !DILocation(line: 233, column: 2, scope: !4987)
!5233 = !DILocation(line: 234, column: 1, scope: !4987)
!5234 = !DISubprogram(name: "_printk", scope: !5235, file: !5235, line: 153, type: !5236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5235 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!125, !354, null}
!5238 = distinct !DISubprogram(name: "exttable_size", scope: !3, file: !3, line: 66, type: !5239, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!7, !4862}
!5241 = !{!5242}
!5242 = !DILocalVariable(name: "et", arg: 1, scope: !5238, file: !3, line: 66, type: !4862)
!5243 = !DILocation(line: 66, column: 68, scope: !5238)
!5244 = !DILocation(line: 68, column: 9, scope: !5238)
!5245 = !DILocation(line: 68, column: 13, scope: !5238)
!5246 = !DILocation(line: 68, column: 19, scope: !5238)
!5247 = !DILocation(line: 68, column: 40, scope: !5238)
!5248 = !DILocation(line: 68, column: 2, scope: !5238)
!5249 = distinct !DISubprogram(name: "__initstub__kmod_microcode__290_400_save_builtin_microcodeearly", scope: !3, file: !3, line: 400, type: !856, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5250 = !DILocation(line: 400, column: 1, scope: !5249)
!5251 = distinct !DISubprogram(name: "save_builtin_microcode", scope: !3, file: !3, line: 385, type: !856, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5252)
!5252 = !{!5253, !5258, !5262}
!5253 = !DILocalVariable(name: "uci", scope: !5251, file: !3, line: 387, type: !5254)
!5254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucode_cpu_info", file: !166, line: 11, size: 192, elements: !5255)
!5255 = !{!5256, !5257}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_sig", scope: !5254, file: !166, line: 12, baseType: !4656, size: 96)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !5254, file: !166, line: 13, baseType: !162, size: 64, offset: 128)
!5258 = !DILocalVariable(name: "__ai_ptr", scope: !5259, file: !3, line: 389, type: !5261)
!5259 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 389, column: 6)
!5260 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 389, column: 6)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!5262 = !DILocalVariable(name: "__ret", scope: !5263, file: !3, line: 389, type: !164)
!5263 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 389, column: 6)
!5264 = !DILocation(line: 387, column: 2, scope: !5251)
!5265 = !DILocation(line: 387, column: 24, scope: !5251)
!5266 = !DILocation(line: 389, column: 6, scope: !5259)
!5267 = !DILocation(line: 389, column: 6, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 389, column: 6)
!5269 = !DILocation(line: 389, column: 6, scope: !5263)
!5270 = !{i64 2154472614}
!5271 = !DILocation(line: 389, column: 6, scope: !5260)
!5272 = !DILocation(line: 389, column: 34, scope: !5260)
!5273 = !DILocation(line: 389, column: 6, scope: !5251)
!5274 = !DILocation(line: 390, column: 3, scope: !5260)
!5275 = !DILocation(line: 392, column: 6, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 392, column: 6)
!5277 = !DILocation(line: 392, column: 20, scope: !5276)
!5278 = !DILocation(line: 392, column: 37, scope: !5276)
!5279 = !DILocation(line: 392, column: 23, scope: !5276)
!5280 = !DILocation(line: 392, column: 48, scope: !5276)
!5281 = !DILocation(line: 392, column: 6, scope: !5251)
!5282 = !DILocation(line: 393, column: 3, scope: !5276)
!5283 = !DILocation(line: 395, column: 11, scope: !5251)
!5284 = !DILocation(line: 395, column: 6, scope: !5251)
!5285 = !DILocation(line: 395, column: 9, scope: !5251)
!5286 = !DILocation(line: 396, column: 10, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 396, column: 6)
!5288 = !DILocation(line: 396, column: 6, scope: !5287)
!5289 = !DILocation(line: 396, column: 6, scope: !5251)
!5290 = !DILocation(line: 397, column: 28, scope: !5287)
!5291 = !DILocation(line: 397, column: 3, scope: !5287)
!5292 = !DILocation(line: 398, column: 2, scope: !5251)
!5293 = !DILocation(line: 399, column: 1, scope: !5251)
!5294 = distinct !DISubprogram(name: "load_ucode_intel_bsp", scope: !3, file: !3, line: 403, type: !5295, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5302)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{null, !5297}
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "early_load_data", file: !12, line: 40, size: 64, elements: !5299)
!5299 = !{!5300, !5301}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "old_rev", scope: !5298, file: !12, line: 41, baseType: !158, size: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "new_rev", scope: !5298, file: !12, line: 42, baseType: !158, size: 32, offset: 32)
!5302 = !{!5303, !5304}
!5303 = !DILocalVariable(name: "ed", arg: 1, scope: !5294, file: !3, line: 403, type: !5297)
!5304 = !DILocalVariable(name: "uci", scope: !5294, file: !3, line: 405, type: !5254)
!5305 = !DILocation(line: 403, column: 58, scope: !5294)
!5306 = !DILocation(line: 405, column: 2, scope: !5294)
!5307 = !DILocation(line: 405, column: 24, scope: !5294)
!5308 = !DILocation(line: 407, column: 11, scope: !5294)
!5309 = !DILocation(line: 407, column: 6, scope: !5294)
!5310 = !DILocation(line: 407, column: 9, scope: !5294)
!5311 = !DILocation(line: 408, column: 20, scope: !5294)
!5312 = !DILocation(line: 408, column: 28, scope: !5294)
!5313 = !DILocation(line: 408, column: 2, scope: !5294)
!5314 = !DILocation(line: 408, column: 6, scope: !5294)
!5315 = !DILocation(line: 408, column: 14, scope: !5294)
!5316 = !DILocation(line: 410, column: 10, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 410, column: 6)
!5318 = !DILocation(line: 410, column: 6, scope: !5317)
!5319 = !DILocation(line: 410, column: 13, scope: !5317)
!5320 = !DILocation(line: 410, column: 16, scope: !5317)
!5321 = !DILocation(line: 410, column: 44, scope: !5317)
!5322 = !DILocation(line: 410, column: 6, scope: !5294)
!5323 = !DILocation(line: 411, column: 18, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 410, column: 62)
!5325 = !DILocation(line: 412, column: 21, scope: !5324)
!5326 = !DILocation(line: 412, column: 29, scope: !5324)
!5327 = !DILocation(line: 412, column: 3, scope: !5324)
!5328 = !DILocation(line: 412, column: 7, scope: !5324)
!5329 = !DILocation(line: 412, column: 15, scope: !5324)
!5330 = !DILocation(line: 413, column: 2, scope: !5324)
!5331 = !DILocation(line: 414, column: 1, scope: !5294)
!5332 = distinct !DISubprogram(name: "get_microcode_blob", scope: !3, file: !3, line: 363, type: !5333, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5336)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!164, !5335, !267}
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5336 = !{!5337, !5338, !5339}
!5337 = !DILocalVariable(name: "uci", arg: 1, scope: !5332, file: !3, line: 363, type: !5335)
!5338 = !DILocalVariable(name: "save", arg: 2, scope: !5332, file: !3, line: 363, type: !267)
!5339 = !DILocalVariable(name: "cp", scope: !5332, file: !3, line: 365, type: !5340)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpio_data", file: !5341, line: 9, size: 320, elements: !5342)
!5341 = !DIFile(filename: "./include/linux/earlycpio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c701ce9fd3d94067c5868d60432fc97e")
!5342 = !{!5343, !5344, !5345}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5340, file: !5341, line: 10, baseType: !162, size: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5340, file: !5341, line: 11, baseType: !476, size: 64, offset: 64)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5340, file: !5341, line: 12, baseType: !5346, size: 144, offset: 128)
!5346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 144, elements: !5347)
!5347 = !{!5348}
!5348 = !DISubrange(count: 18)
!5349 = !DILocation(line: 363, column: 81, scope: !5332)
!5350 = !DILocation(line: 363, column: 91, scope: !5332)
!5351 = !DILocation(line: 365, column: 2, scope: !5332)
!5352 = !DILocation(line: 365, column: 19, scope: !5332)
!5353 = !DILocation(line: 367, column: 26, scope: !5332)
!5354 = !DILocation(line: 367, column: 31, scope: !5332)
!5355 = !DILocation(line: 367, column: 2, scope: !5332)
!5356 = !DILocation(line: 369, column: 7, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 369, column: 6)
!5358 = !DILocation(line: 369, column: 6, scope: !5332)
!5359 = !DILocation(line: 370, column: 8, scope: !5357)
!5360 = !DILocation(line: 370, column: 3, scope: !5357)
!5361 = !DILocation(line: 372, column: 11, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 372, column: 6)
!5363 = !DILocation(line: 372, column: 8, scope: !5362)
!5364 = !DILocation(line: 372, column: 16, scope: !5362)
!5365 = !DILocation(line: 372, column: 22, scope: !5362)
!5366 = !DILocation(line: 372, column: 19, scope: !5362)
!5367 = !DILocation(line: 372, column: 6, scope: !5332)
!5368 = !DILocation(line: 373, column: 3, scope: !5362)
!5369 = !DILocation(line: 375, column: 27, scope: !5332)
!5370 = !DILocation(line: 375, column: 36, scope: !5332)
!5371 = !DILocation(line: 375, column: 42, scope: !5332)
!5372 = !DILocation(line: 375, column: 47, scope: !5332)
!5373 = !DILocation(line: 375, column: 9, scope: !5332)
!5374 = !DILocation(line: 375, column: 2, scope: !5332)
!5375 = !DILocation(line: 376, column: 1, scope: !5332)
!5376 = distinct !DISubprogram(name: "apply_microcode_early", scope: !3, file: !3, line: 333, type: !5377, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5379)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{!11, !5335}
!5379 = !{!5380, !5381, !5382}
!5380 = !DILocalVariable(name: "uci", arg: 1, scope: !5376, file: !3, line: 333, type: !5335)
!5381 = !DILocalVariable(name: "mc", scope: !5376, file: !3, line: 335, type: !164)
!5382 = !DILocalVariable(name: "cur_rev", scope: !5376, file: !3, line: 336, type: !158)
!5383 = !DILocation(line: 333, column: 70, scope: !5376)
!5384 = !DILocation(line: 335, column: 2, scope: !5376)
!5385 = !DILocation(line: 335, column: 26, scope: !5376)
!5386 = !DILocation(line: 335, column: 31, scope: !5376)
!5387 = !DILocation(line: 335, column: 36, scope: !5376)
!5388 = !DILocation(line: 336, column: 2, scope: !5376)
!5389 = !DILocation(line: 336, column: 6, scope: !5376)
!5390 = !DILocation(line: 338, column: 27, scope: !5376)
!5391 = !DILocation(line: 338, column: 32, scope: !5376)
!5392 = !DILocation(line: 338, column: 9, scope: !5376)
!5393 = !DILocation(line: 339, column: 1, scope: !5376)
!5394 = !DILocation(line: 338, column: 2, scope: !5376)
!5395 = distinct !DISubprogram(name: "load_ucode_intel_ap", scope: !3, file: !3, line: 416, type: !1123, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5396)
!5396 = !{!5397}
!5397 = !DILocalVariable(name: "uci", scope: !5395, file: !3, line: 418, type: !5254)
!5398 = !DILocation(line: 418, column: 2, scope: !5395)
!5399 = !DILocation(line: 418, column: 24, scope: !5395)
!5400 = !DILocation(line: 420, column: 11, scope: !5395)
!5401 = !DILocation(line: 420, column: 6, scope: !5395)
!5402 = !DILocation(line: 420, column: 9, scope: !5395)
!5403 = !DILocation(line: 421, column: 10, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 421, column: 6)
!5405 = !DILocation(line: 421, column: 6, scope: !5404)
!5406 = !DILocation(line: 421, column: 6, scope: !5395)
!5407 = !DILocation(line: 422, column: 3, scope: !5404)
!5408 = !DILocation(line: 423, column: 1, scope: !5395)
!5409 = distinct !DISubprogram(name: "reload_ucode_intel", scope: !3, file: !3, line: 426, type: !1123, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5410)
!5410 = !{!5411}
!5411 = !DILocalVariable(name: "uci", scope: !5409, file: !3, line: 428, type: !5254)
!5412 = !DILocation(line: 428, column: 2, scope: !5409)
!5413 = !DILocation(line: 428, column: 24, scope: !5409)
!5414 = !DILocation(line: 428, column: 30, scope: !5409)
!5415 = !DILocation(line: 428, column: 38, scope: !5409)
!5416 = !DILocation(line: 430, column: 10, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 430, column: 6)
!5418 = !DILocation(line: 430, column: 6, scope: !5417)
!5419 = !DILocation(line: 430, column: 6, scope: !5409)
!5420 = !DILocation(line: 431, column: 3, scope: !5417)
!5421 = !DILocation(line: 432, column: 1, scope: !5409)
!5422 = distinct !DISubprogram(name: "init_intel_microcode", scope: !3, file: !3, line: 619, type: !5423, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5426)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!5425}
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!5426 = !{!5427}
!5427 = !DILocalVariable(name: "c", scope: !5422, file: !3, line: 621, type: !198)
!5428 = !DILocation(line: 621, column: 2, scope: !5422)
!5429 = !DILocation(line: 621, column: 22, scope: !5422)
!5430 = !DILocation(line: 623, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 623, column: 6)
!5432 = !DILocation(line: 623, column: 9, scope: !5431)
!5433 = !DILocation(line: 623, column: 20, scope: !5431)
!5434 = !DILocation(line: 623, column: 40, scope: !5431)
!5435 = !DILocation(line: 623, column: 43, scope: !5431)
!5436 = !DILocation(line: 623, column: 46, scope: !5431)
!5437 = !DILocation(line: 623, column: 50, scope: !5431)
!5438 = !DILocation(line: 623, column: 54, scope: !5431)
!5439 = !DILocation(line: 623, column: 6, scope: !5422)
!5440 = !DILocation(line: 624, column: 6, scope: !5431)
!5441 = !DILocation(line: 625, column: 3, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 625, column: 3)
!5443 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 624, column: 36)
!5444 = !DILocation(line: 625, column: 3, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 625, column: 3)
!5446 = !DILocation(line: 626, column: 3, scope: !5443)
!5447 = !DILocation(line: 629, column: 25, scope: !5422)
!5448 = !DILocation(line: 629, column: 2, scope: !5422)
!5449 = !DILocation(line: 631, column: 2, scope: !5422)
!5450 = !DILocation(line: 632, column: 1, scope: !5422)
!5451 = distinct !DISubprogram(name: "arch_test_bit", scope: !5452, file: !5452, line: 237, type: !5453, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5458)
!5452 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!267, !190, !5455}
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5457)
!5457 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !190)
!5458 = !{!5459, !5460}
!5459 = !DILocalVariable(name: "nr", arg: 1, scope: !5451, file: !5452, line: 237, type: !190)
!5460 = !DILocalVariable(name: "addr", arg: 2, scope: !5451, file: !5452, line: 237, type: !5455)
!5461 = !DILocation(line: 237, column: 29, scope: !5451)
!5462 = !DILocation(line: 237, column: 63, scope: !5451)
!5463 = !DILocation(line: 239, column: 30, scope: !5451)
!5464 = !DILocation(line: 239, column: 9, scope: !5451)
!5465 = !DILocation(line: 239, column: 54, scope: !5451)
!5466 = !DILocation(line: 239, column: 58, scope: !5451)
!5467 = !DILocation(line: 239, column: 36, scope: !5451)
!5468 = !DILocation(line: 240, column: 26, scope: !5451)
!5469 = !DILocation(line: 240, column: 30, scope: !5451)
!5470 = !DILocation(line: 240, column: 8, scope: !5451)
!5471 = !DILocation(line: 239, column: 2, scope: !5451)
!5472 = distinct !DISubprogram(name: "calc_llc_size_per_core", scope: !3, file: !3, line: 611, type: !5473, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5475)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{null, !198}
!5475 = !{!5476, !5477, !5478, !5480}
!5476 = !DILocalVariable(name: "c", arg: 1, scope: !5472, file: !3, line: 611, type: !198)
!5477 = !DILocalVariable(name: "llc_size", scope: !5472, file: !3, line: 613, type: !191)
!5478 = !DILocalVariable(name: "__base", scope: !5479, file: !3, line: 615, type: !1969)
!5479 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 615, column: 2)
!5480 = !DILocalVariable(name: "__rem", scope: !5479, file: !3, line: 615, type: !1969)
!5481 = !DILocation(line: 611, column: 63, scope: !5472)
!5482 = !DILocation(line: 613, column: 2, scope: !5472)
!5483 = !DILocation(line: 613, column: 6, scope: !5472)
!5484 = !DILocation(line: 613, column: 17, scope: !5472)
!5485 = !DILocation(line: 613, column: 20, scope: !5472)
!5486 = !DILocation(line: 613, column: 35, scope: !5472)
!5487 = !DILocation(line: 615, column: 2, scope: !5479)
!5488 = !DILocation(line: 615, column: 2, scope: !5472)
!5489 = !DILocation(line: 616, column: 36, scope: !5472)
!5490 = !DILocation(line: 616, column: 22, scope: !5472)
!5491 = !DILocation(line: 616, column: 20, scope: !5472)
!5492 = !DILocation(line: 617, column: 1, scope: !5472)
!5493 = distinct !DISubprogram(name: "cpuid", scope: !4790, file: !4790, line: 72, type: !5494, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5496)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !7, !836, !836, !836, !836}
!5496 = !{!5497, !5498, !5499, !5500, !5501}
!5497 = !DILocalVariable(name: "op", arg: 1, scope: !5493, file: !4790, line: 72, type: !7)
!5498 = !DILocalVariable(name: "eax", arg: 2, scope: !5493, file: !4790, line: 73, type: !836)
!5499 = !DILocalVariable(name: "ebx", arg: 3, scope: !5493, file: !4790, line: 73, type: !836)
!5500 = !DILocalVariable(name: "ecx", arg: 4, scope: !5493, file: !4790, line: 74, type: !836)
!5501 = !DILocalVariable(name: "edx", arg: 5, scope: !5493, file: !4790, line: 74, type: !836)
!5502 = !DILocation(line: 72, column: 39, scope: !5493)
!5503 = !DILocation(line: 73, column: 19, scope: !5493)
!5504 = !DILocation(line: 73, column: 38, scope: !5493)
!5505 = !DILocation(line: 74, column: 19, scope: !5493)
!5506 = !DILocation(line: 74, column: 38, scope: !5493)
!5507 = !DILocation(line: 76, column: 9, scope: !5493)
!5508 = !DILocation(line: 76, column: 3, scope: !5493)
!5509 = !DILocation(line: 76, column: 7, scope: !5493)
!5510 = !DILocation(line: 77, column: 3, scope: !5493)
!5511 = !DILocation(line: 77, column: 7, scope: !5493)
!5512 = !DILocation(line: 78, column: 10, scope: !5493)
!5513 = !DILocation(line: 78, column: 15, scope: !5493)
!5514 = !DILocation(line: 78, column: 20, scope: !5493)
!5515 = !DILocation(line: 78, column: 25, scope: !5493)
!5516 = !DILocation(line: 78, column: 2, scope: !5493)
!5517 = !DILocation(line: 79, column: 1, scope: !5493)
!5518 = distinct !DISubprogram(name: "native_cpuid", scope: !4790, file: !4790, line: 30, type: !5519, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5521)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{null, !836, !836, !836, !836}
!5521 = !{!5522, !5523, !5524, !5525}
!5522 = !DILocalVariable(name: "eax", arg: 1, scope: !5518, file: !4790, line: 30, type: !836)
!5523 = !DILocalVariable(name: "ebx", arg: 2, scope: !5518, file: !4790, line: 30, type: !836)
!5524 = !DILocalVariable(name: "ecx", arg: 3, scope: !5518, file: !4790, line: 31, type: !836)
!5525 = !DILocalVariable(name: "edx", arg: 4, scope: !5518, file: !4790, line: 31, type: !836)
!5526 = !DILocation(line: 30, column: 47, scope: !5518)
!5527 = !DILocation(line: 30, column: 66, scope: !5518)
!5528 = !DILocation(line: 31, column: 19, scope: !5518)
!5529 = !DILocation(line: 31, column: 38, scope: !5518)
!5530 = !DILocation(line: 35, column: 15, scope: !5518)
!5531 = !DILocation(line: 36, column: 15, scope: !5518)
!5532 = !DILocation(line: 37, column: 15, scope: !5518)
!5533 = !DILocation(line: 38, column: 15, scope: !5518)
!5534 = !DILocation(line: 39, column: 14, scope: !5518)
!5535 = !DILocation(line: 39, column: 13, scope: !5518)
!5536 = !DILocation(line: 39, column: 26, scope: !5518)
!5537 = !DILocation(line: 39, column: 25, scope: !5518)
!5538 = !DILocation(line: 34, column: 2, scope: !5518)
!5539 = !{i64 1239490}
!5540 = !DILocation(line: 41, column: 1, scope: !5518)
!5541 = distinct !DISubprogram(name: "__wrmsr", scope: !4832, file: !4832, line: 92, type: !5542, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5544)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{null, !7, !158, !158}
!5544 = !{!5545, !5546, !5547}
!5545 = !DILocalVariable(name: "msr", arg: 1, scope: !5541, file: !4832, line: 92, type: !7)
!5546 = !DILocalVariable(name: "low", arg: 2, scope: !5541, file: !4832, line: 92, type: !158)
!5547 = !DILocalVariable(name: "high", arg: 3, scope: !5541, file: !4832, line: 92, type: !158)
!5548 = !DILocation(line: 92, column: 50, scope: !5541)
!5549 = !DILocation(line: 92, column: 59, scope: !5541)
!5550 = !DILocation(line: 92, column: 68, scope: !5541)
!5551 = !DILocation(line: 97, column: 17, scope: !5541)
!5552 = !DILocation(line: 97, column: 27, scope: !5541)
!5553 = !DILocation(line: 97, column: 38, scope: !5541)
!5554 = !DILocation(line: 94, column: 2, scope: !5541)
!5555 = !{i64 1251733, i64 1251754, i64 2149434508, i64 2149434552, i64 2149434575, i64 2149434608, i64 2149434639, i64 2149434678}
!5556 = !DILocation(line: 98, column: 1, scope: !5541)
!5557 = distinct !DISubprogram(name: "native_cpuid_eax", scope: !4790, file: !4790, line: 56, type: !4791, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5558)
!5558 = !{!5559, !5560, !5561, !5562, !5563}
!5559 = !DILocalVariable(name: "op", arg: 1, scope: !5557, file: !4790, line: 56, type: !7)
!5560 = !DILocalVariable(name: "eax", scope: !5557, file: !4790, line: 56, type: !7)
!5561 = !DILocalVariable(name: "ebx", scope: !5557, file: !4790, line: 56, type: !7)
!5562 = !DILocalVariable(name: "ecx", scope: !5557, file: !4790, line: 56, type: !7)
!5563 = !DILocalVariable(name: "edx", scope: !5557, file: !4790, line: 56, type: !7)
!5564 = !DILocation(line: 56, column: 1, scope: !5557)
!5565 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5566, file: !5566, line: 94, type: !5567, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5572)
!5566 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5567 = !DISubroutineType(types: !5568)
!5568 = !{null, !5569, !476}
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5571)
!5571 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5572 = !{!5573, !5574}
!5573 = !DILocalVariable(name: "v", arg: 1, scope: !5565, file: !5566, line: 94, type: !5569)
!5574 = !DILocalVariable(name: "size", arg: 2, scope: !5565, file: !5566, line: 94, type: !476)
!5575 = !DILocation(line: 94, column: 79, scope: !5565)
!5576 = !DILocation(line: 94, column: 89, scope: !5565)
!5577 = !DILocation(line: 96, column: 20, scope: !5565)
!5578 = !DILocation(line: 96, column: 23, scope: !5565)
!5579 = !DILocation(line: 96, column: 2, scope: !5565)
!5580 = !DILocation(line: 97, column: 2, scope: !5565)
!5581 = !DILocation(line: 98, column: 1, scope: !5565)
!5582 = distinct !DISubprogram(name: "save_microcode_patch", scope: !3, file: !3, line: 248, type: !5583, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5585)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !164}
!5585 = !{!5586, !5587, !5588}
!5586 = !DILocalVariable(name: "patch", arg: 1, scope: !5582, file: !3, line: 248, type: !164)
!5587 = !DILocalVariable(name: "size", scope: !5582, file: !3, line: 250, type: !7)
!5588 = !DILocalVariable(name: "mc", scope: !5582, file: !3, line: 251, type: !164)
!5589 = !DILocation(line: 248, column: 58, scope: !5582)
!5590 = !DILocation(line: 250, column: 2, scope: !5582)
!5591 = !DILocation(line: 250, column: 15, scope: !5582)
!5592 = !DILocation(line: 250, column: 37, scope: !5582)
!5593 = !DILocation(line: 250, column: 44, scope: !5582)
!5594 = !DILocation(line: 250, column: 22, scope: !5582)
!5595 = !DILocation(line: 251, column: 2, scope: !5582)
!5596 = !DILocation(line: 251, column: 26, scope: !5582)
!5597 = !DILocation(line: 253, column: 16, scope: !5582)
!5598 = !DILocation(line: 253, column: 23, scope: !5582)
!5599 = !DILocation(line: 253, column: 7, scope: !5582)
!5600 = !DILocation(line: 253, column: 5, scope: !5582)
!5601 = !DILocation(line: 254, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 254, column: 6)
!5603 = !DILocation(line: 254, column: 6, scope: !5582)
!5604 = !DILocation(line: 255, column: 24, scope: !5602)
!5605 = !DILocation(line: 255, column: 3, scope: !5602)
!5606 = !DILocation(line: 257, column: 3, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 257, column: 3)
!5608 = !DILocation(line: 257, column: 3, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 257, column: 3)
!5610 = !DILocation(line: 258, column: 1, scope: !5582)
!5611 = distinct !DISubprogram(name: "kasan_check_write", scope: !5612, file: !5612, line: 44, type: !5613, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5615)
!5612 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!267, !5569, !7}
!5615 = !{!5616, !5617}
!5616 = !DILocalVariable(name: "p", arg: 1, scope: !5611, file: !5612, line: 44, type: !5569)
!5617 = !DILocalVariable(name: "size", arg: 2, scope: !5611, file: !5612, line: 44, type: !7)
!5618 = !DILocation(line: 44, column: 59, scope: !5611)
!5619 = !DILocation(line: 44, column: 75, scope: !5611)
!5620 = !DILocation(line: 46, column: 2, scope: !5611)
!5621 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5622, file: !5622, line: 229, type: !5623, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5625)
!5622 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5623 = !DISubroutineType(types: !5624)
!5624 = !{null, !5569, !476, !125}
!5625 = !{!5626, !5627, !5628}
!5626 = !DILocalVariable(name: "ptr", arg: 1, scope: !5621, file: !5622, line: 229, type: !5569)
!5627 = !DILocalVariable(name: "size", arg: 2, scope: !5621, file: !5622, line: 229, type: !476)
!5628 = !DILocalVariable(name: "type", arg: 3, scope: !5621, file: !5622, line: 230, type: !125)
!5629 = !DILocation(line: 229, column: 60, scope: !5621)
!5630 = !DILocation(line: 229, column: 72, scope: !5621)
!5631 = !DILocation(line: 230, column: 15, scope: !5621)
!5632 = !DILocation(line: 230, column: 23, scope: !5621)
!5633 = !DISubprogram(name: "kvmemdup", scope: !5634, file: !5634, line: 220, type: !5635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5634 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!162, !2715, !476, !194}
!5637 = distinct !DISubprogram(name: "update_ucode_pointer", scope: !3, file: !3, line: 237, type: !5583, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5638)
!5638 = !{!5639}
!5639 = !DILocalVariable(name: "mc", arg: 1, scope: !5637, file: !3, line: 237, type: !164)
!5640 = !DILocation(line: 237, column: 58, scope: !5637)
!5641 = !DILocation(line: 239, column: 9, scope: !5637)
!5642 = !DILocation(line: 239, column: 2, scope: !5637)
!5643 = !DILocation(line: 245, column: 19, scope: !5637)
!5644 = !DILocation(line: 245, column: 17, scope: !5637)
!5645 = !DILocation(line: 246, column: 1, scope: !5637)
!5646 = !DISubprogram(name: "kvfree", scope: !5647, file: !5647, line: 766, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5647 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !2715}
!5650 = distinct !DISubprogram(name: "load_builtin_intel_microcode", scope: !3, file: !3, line: 341, type: !5651, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5654)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!267, !5653}
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5654 = !{!5655, !5656, !5657, !5658, !5659, !5660, !5669}
!5655 = !DILocalVariable(name: "cp", arg: 1, scope: !5650, file: !3, line: 341, type: !5653)
!5656 = !DILocalVariable(name: "eax", scope: !5650, file: !3, line: 343, type: !7)
!5657 = !DILocalVariable(name: "ebx", scope: !5650, file: !3, line: 343, type: !7)
!5658 = !DILocalVariable(name: "ecx", scope: !5650, file: !3, line: 343, type: !7)
!5659 = !DILocalVariable(name: "edx", scope: !5650, file: !3, line: 343, type: !7)
!5660 = !DILocalVariable(name: "fw", scope: !5650, file: !3, line: 344, type: !5661)
!5661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5662, line: 12, size: 192, elements: !5663)
!5662 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a94668a811664b50b12e1246efadf209")
!5663 = !{!5664, !5665, !5668}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5661, file: !5662, line: 13, baseType: !476, size: 64)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5661, file: !5662, line: 14, baseType: !5666, size: 64, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5661, file: !5662, line: 17, baseType: !162, size: 64, offset: 128)
!5669 = !DILocalVariable(name: "name", scope: !5650, file: !3, line: 345, type: !5670)
!5670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 240, elements: !5671)
!5671 = !{!5672}
!5672 = !DISubrange(count: 30)
!5673 = !DILocation(line: 341, column: 67, scope: !5650)
!5674 = !DILocation(line: 343, column: 2, scope: !5650)
!5675 = !DILocation(line: 343, column: 15, scope: !5650)
!5676 = !DILocation(line: 343, column: 24, scope: !5650)
!5677 = !DILocation(line: 343, column: 29, scope: !5650)
!5678 = !DILocation(line: 343, column: 38, scope: !5650)
!5679 = !DILocation(line: 344, column: 2, scope: !5650)
!5680 = !DILocation(line: 344, column: 18, scope: !5650)
!5681 = !DILocation(line: 345, column: 2, scope: !5650)
!5682 = !DILocation(line: 345, column: 7, scope: !5650)
!5683 = !DILocation(line: 350, column: 2, scope: !5650)
!5684 = !DILocation(line: 352, column: 10, scope: !5650)
!5685 = !DILocation(line: 353, column: 14, scope: !5650)
!5686 = !DILocation(line: 353, column: 3, scope: !5650)
!5687 = !DILocation(line: 353, column: 30, scope: !5650)
!5688 = !DILocation(line: 353, column: 20, scope: !5650)
!5689 = !DILocation(line: 353, column: 49, scope: !5650)
!5690 = !DILocation(line: 353, column: 36, scope: !5650)
!5691 = !DILocation(line: 352, column: 2, scope: !5650)
!5692 = !DILocation(line: 355, column: 36, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 355, column: 6)
!5694 = !DILocation(line: 355, column: 6, scope: !5693)
!5695 = !DILocation(line: 355, column: 6, scope: !5650)
!5696 = !DILocation(line: 356, column: 17, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 355, column: 43)
!5698 = !DILocation(line: 356, column: 3, scope: !5697)
!5699 = !DILocation(line: 356, column: 7, scope: !5697)
!5700 = !DILocation(line: 356, column: 12, scope: !5697)
!5701 = !DILocation(line: 357, column: 25, scope: !5697)
!5702 = !DILocation(line: 357, column: 3, scope: !5697)
!5703 = !DILocation(line: 357, column: 7, scope: !5697)
!5704 = !DILocation(line: 357, column: 12, scope: !5697)
!5705 = !DILocation(line: 358, column: 3, scope: !5697)
!5706 = !DILocation(line: 360, column: 2, scope: !5650)
!5707 = !DILocation(line: 361, column: 1, scope: !5650)
!5708 = !DISubprogram(name: "find_microcode_in_initrd", scope: !12, file: !12, line: 47, type: !5709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!5340, !354}
!5711 = distinct !DISubprogram(name: "scan_microcode", scope: !3, file: !3, line: 261, type: !5712, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5714)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!164, !162, !476, !5335, !267}
!5714 = !{!5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722}
!5715 = !DILocalVariable(name: "data", arg: 1, scope: !5711, file: !3, line: 261, type: !162)
!5716 = !DILocalVariable(name: "size", arg: 2, scope: !5711, file: !3, line: 261, type: !476)
!5717 = !DILocalVariable(name: "uci", arg: 3, scope: !5711, file: !3, line: 262, type: !5335)
!5718 = !DILocalVariable(name: "save", arg: 4, scope: !5711, file: !3, line: 263, type: !267)
!5719 = !DILocalVariable(name: "mc_header", scope: !5711, file: !3, line: 265, type: !196)
!5720 = !DILocalVariable(name: "patch", scope: !5711, file: !3, line: 266, type: !164)
!5721 = !DILocalVariable(name: "cur_rev", scope: !5711, file: !3, line: 267, type: !158)
!5722 = !DILocalVariable(name: "mc_size", scope: !5711, file: !3, line: 268, type: !7)
!5723 = !DILocation(line: 261, column: 60, scope: !5711)
!5724 = !DILocation(line: 261, column: 73, scope: !5711)
!5725 = !DILocation(line: 262, column: 35, scope: !5711)
!5726 = !DILocation(line: 263, column: 17, scope: !5711)
!5727 = !DILocation(line: 265, column: 2, scope: !5711)
!5728 = !DILocation(line: 265, column: 33, scope: !5711)
!5729 = !DILocation(line: 266, column: 2, scope: !5711)
!5730 = !DILocation(line: 266, column: 26, scope: !5711)
!5731 = !DILocation(line: 267, column: 2, scope: !5711)
!5732 = !DILocation(line: 267, column: 6, scope: !5711)
!5733 = !DILocation(line: 267, column: 16, scope: !5711)
!5734 = !DILocation(line: 267, column: 21, scope: !5711)
!5735 = !DILocation(line: 267, column: 29, scope: !5711)
!5736 = !DILocation(line: 268, column: 2, scope: !5711)
!5737 = !DILocation(line: 268, column: 15, scope: !5711)
!5738 = !DILocation(line: 270, column: 2, scope: !5711)
!5739 = !DILocation(line: 270, column: 9, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 270, column: 2)
!5741 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 270, column: 2)
!5742 = !DILocation(line: 270, column: 14, scope: !5740)
!5743 = !DILocation(line: 270, column: 2, scope: !5741)
!5744 = !DILocation(line: 271, column: 48, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 270, column: 90)
!5746 = !DILocation(line: 271, column: 13, scope: !5745)
!5747 = !DILocation(line: 273, column: 27, scope: !5745)
!5748 = !DILocation(line: 273, column: 13, scope: !5745)
!5749 = !DILocation(line: 273, column: 11, scope: !5745)
!5750 = !DILocation(line: 274, column: 8, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 274, column: 7)
!5752 = !DILocation(line: 274, column: 16, scope: !5751)
!5753 = !DILocation(line: 274, column: 19, scope: !5751)
!5754 = !DILocation(line: 274, column: 29, scope: !5751)
!5755 = !DILocation(line: 274, column: 27, scope: !5751)
!5756 = !DILocation(line: 274, column: 34, scope: !5751)
!5757 = !DILocation(line: 275, column: 36, scope: !5751)
!5758 = !DILocation(line: 275, column: 7, scope: !5751)
!5759 = !DILocation(line: 275, column: 75, scope: !5751)
!5760 = !DILocation(line: 274, column: 7, scope: !5745)
!5761 = !DILocation(line: 276, column: 4, scope: !5751)
!5762 = !DILocation(line: 278, column: 38, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 278, column: 7)
!5764 = !DILocation(line: 278, column: 45, scope: !5763)
!5765 = !DILocation(line: 278, column: 50, scope: !5763)
!5766 = !DILocation(line: 278, column: 8, scope: !5763)
!5767 = !DILocation(line: 278, column: 7, scope: !5745)
!5768 = !DILocation(line: 279, column: 4, scope: !5763)
!5769 = !DILocation(line: 288, column: 7, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 288, column: 7)
!5771 = !DILocation(line: 288, column: 7, scope: !5745)
!5772 = !DILocation(line: 289, column: 8, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 289, column: 8)
!5774 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 288, column: 13)
!5775 = !DILocation(line: 289, column: 19, scope: !5773)
!5776 = !DILocation(line: 289, column: 30, scope: !5773)
!5777 = !DILocation(line: 289, column: 16, scope: !5773)
!5778 = !DILocation(line: 289, column: 8, scope: !5774)
!5779 = !DILocation(line: 290, column: 5, scope: !5773)
!5780 = !DILocation(line: 291, column: 3, scope: !5774)
!5781 = !DILocation(line: 291, column: 14, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 291, column: 14)
!5783 = !DILocation(line: 291, column: 25, scope: !5782)
!5784 = !DILocation(line: 291, column: 36, scope: !5782)
!5785 = !DILocation(line: 291, column: 22, scope: !5782)
!5786 = !DILocation(line: 291, column: 14, scope: !5770)
!5787 = !DILocation(line: 292, column: 4, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 291, column: 41)
!5789 = !DILocation(line: 295, column: 11, scope: !5745)
!5790 = !DILocation(line: 295, column: 9, scope: !5745)
!5791 = !DILocation(line: 296, column: 13, scope: !5745)
!5792 = !DILocation(line: 296, column: 24, scope: !5745)
!5793 = !DILocation(line: 296, column: 11, scope: !5745)
!5794 = !DILocation(line: 297, column: 2, scope: !5745)
!5795 = !DILocation(line: 270, column: 64, scope: !5740)
!5796 = !DILocation(line: 270, column: 61, scope: !5740)
!5797 = !DILocation(line: 270, column: 81, scope: !5740)
!5798 = !DILocation(line: 270, column: 78, scope: !5740)
!5799 = !DILocation(line: 270, column: 2, scope: !5740)
!5800 = distinct !{!5800, !5743, !5801, !4935, !4936}
!5801 = !DILocation(line: 297, column: 2, scope: !5741)
!5802 = !DILocation(line: 299, column: 9, scope: !5711)
!5803 = !DILocation(line: 299, column: 23, scope: !5711)
!5804 = !DILocation(line: 300, column: 1, scope: !5711)
!5805 = !DILocation(line: 299, column: 2, scope: !5711)
!5806 = !DISubprogram(name: "sprintf", scope: !5807, file: !5807, line: 10, type: !5808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5807 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!125, !431, !354, null}
!5810 = !DISubprogram(name: "x86_stepping", scope: !4829, file: !4829, line: 40, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5811 = !DISubprogram(name: "firmware_request_builtin", scope: !5662, file: !5662, line: 86, type: !5812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!267, !5814, !354}
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5815 = distinct !DISubprogram(name: "__apply_microcode", scope: !3, file: !3, line: 302, type: !5816, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5818)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!11, !5335, !164, !163}
!5818 = !{!5819, !5820, !5821, !5822}
!5819 = !DILocalVariable(name: "uci", arg: 1, scope: !5815, file: !3, line: 302, type: !5335)
!5820 = !DILocalVariable(name: "mc", arg: 2, scope: !5815, file: !3, line: 303, type: !164)
!5821 = !DILocalVariable(name: "cur_rev", arg: 3, scope: !5815, file: !3, line: 304, type: !163)
!5822 = !DILocalVariable(name: "rev", scope: !5815, file: !3, line: 306, type: !158)
!5823 = !DILocation(line: 302, column: 66, scope: !5815)
!5824 = !DILocation(line: 303, column: 32, scope: !5815)
!5825 = !DILocation(line: 304, column: 13, scope: !5815)
!5826 = !DILocation(line: 306, column: 2, scope: !5815)
!5827 = !DILocation(line: 306, column: 6, scope: !5815)
!5828 = !DILocation(line: 308, column: 7, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 308, column: 6)
!5830 = !DILocation(line: 308, column: 6, scope: !5815)
!5831 = !DILocation(line: 309, column: 3, scope: !5829)
!5832 = !DILocation(line: 316, column: 13, scope: !5815)
!5833 = !DILocation(line: 316, column: 3, scope: !5815)
!5834 = !DILocation(line: 316, column: 11, scope: !5815)
!5835 = !DILocation(line: 317, column: 7, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 317, column: 6)
!5837 = !DILocation(line: 317, column: 6, scope: !5836)
!5838 = !DILocation(line: 317, column: 18, scope: !5836)
!5839 = !DILocation(line: 317, column: 22, scope: !5836)
!5840 = !DILocation(line: 317, column: 26, scope: !5836)
!5841 = !DILocation(line: 317, column: 15, scope: !5836)
!5842 = !DILocation(line: 317, column: 6, scope: !5815)
!5843 = !DILocation(line: 318, column: 23, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 317, column: 31)
!5845 = !DILocation(line: 318, column: 22, scope: !5844)
!5846 = !DILocation(line: 318, column: 3, scope: !5844)
!5847 = !DILocation(line: 318, column: 8, scope: !5844)
!5848 = !DILocation(line: 318, column: 16, scope: !5844)
!5849 = !DILocation(line: 318, column: 20, scope: !5844)
!5850 = !DILocation(line: 319, column: 3, scope: !5844)
!5851 = !DILocation(line: 323, column: 2, scope: !5815)
!5852 = !DILocation(line: 325, column: 8, scope: !5815)
!5853 = !DILocation(line: 325, column: 6, scope: !5815)
!5854 = !DILocation(line: 326, column: 6, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 326, column: 6)
!5856 = !DILocation(line: 326, column: 13, scope: !5855)
!5857 = !DILocation(line: 326, column: 17, scope: !5855)
!5858 = !DILocation(line: 326, column: 21, scope: !5855)
!5859 = !DILocation(line: 326, column: 10, scope: !5855)
!5860 = !DILocation(line: 326, column: 6, scope: !5815)
!5861 = !DILocation(line: 327, column: 3, scope: !5855)
!5862 = !DILocation(line: 329, column: 21, scope: !5815)
!5863 = !DILocation(line: 329, column: 2, scope: !5815)
!5864 = !DILocation(line: 329, column: 7, scope: !5815)
!5865 = !DILocation(line: 329, column: 15, scope: !5815)
!5866 = !DILocation(line: 329, column: 19, scope: !5815)
!5867 = !DILocation(line: 330, column: 2, scope: !5815)
!5868 = !DILocation(line: 331, column: 1, scope: !5815)
!5869 = distinct !DISubprogram(name: "constant_test_bit", scope: !5452, file: !5452, line: 204, type: !5870, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5872)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!267, !465, !5455}
!5872 = !{!5873, !5874}
!5873 = !DILocalVariable(name: "nr", arg: 1, scope: !5869, file: !5452, line: 204, type: !465)
!5874 = !DILocalVariable(name: "addr", arg: 2, scope: !5869, file: !5452, line: 204, type: !5455)
!5875 = !DILocation(line: 204, column: 52, scope: !5869)
!5876 = !DILocation(line: 204, column: 86, scope: !5869)
!5877 = !DILocation(line: 206, column: 19, scope: !5869)
!5878 = !DILocation(line: 206, column: 22, scope: !5869)
!5879 = !DILocation(line: 206, column: 15, scope: !5869)
!5880 = !DILocation(line: 207, column: 4, scope: !5869)
!5881 = !DILocation(line: 207, column: 9, scope: !5869)
!5882 = !DILocation(line: 207, column: 12, scope: !5869)
!5883 = !DILocation(line: 206, column: 44, scope: !5869)
!5884 = !DILocation(line: 207, column: 37, scope: !5869)
!5885 = !DILocation(line: 206, column: 2, scope: !5869)
!5886 = distinct !DISubprogram(name: "variable_test_bit", scope: !5452, file: !5452, line: 224, type: !5870, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5887)
!5887 = !{!5888, !5889, !5890}
!5888 = !DILocalVariable(name: "nr", arg: 1, scope: !5886, file: !5452, line: 224, type: !465)
!5889 = !DILocalVariable(name: "addr", arg: 2, scope: !5886, file: !5452, line: 224, type: !5455)
!5890 = !DILocalVariable(name: "oldbit", scope: !5886, file: !5452, line: 226, type: !267)
!5891 = !DILocation(line: 224, column: 52, scope: !5886)
!5892 = !DILocation(line: 224, column: 86, scope: !5886)
!5893 = !DILocation(line: 226, column: 2, scope: !5886)
!5894 = !DILocation(line: 226, column: 7, scope: !5886)
!5895 = !DILocation(line: 231, column: 33, scope: !5886)
!5896 = !DILocation(line: 231, column: 46, scope: !5886)
!5897 = !DILocation(line: 228, column: 2, scope: !5886)
!5898 = !{i64 2148079379, i64 2148079453}
!5899 = !DILocation(line: 233, column: 9, scope: !5886)
!5900 = !DILocation(line: 234, column: 1, scope: !5886)
!5901 = !DILocation(line: 233, column: 2, scope: !5886)
!5902 = distinct !DISubprogram(name: "request_microcode_fw", scope: !3, file: !3, line: 564, type: !344, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5903)
!5903 = !{!5904, !5905, !5906, !5907, !5910, !5912, !5915, !5916, !5917, !5918}
!5904 = !DILocalVariable(name: "cpu", arg: 1, scope: !5902, file: !3, line: 564, type: !125)
!5905 = !DILocalVariable(name: "device", arg: 2, scope: !5902, file: !3, line: 564, type: !346)
!5906 = !DILocalVariable(name: "c", scope: !5902, file: !3, line: 566, type: !198)
!5907 = !DILocalVariable(name: "__vpp_verify", scope: !5908, file: !3, line: 566, type: !2715)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 566, column: 27)
!5909 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 566, column: 27)
!5910 = !DILocalVariable(name: "__ptr", scope: !5911, file: !3, line: 566, type: !190)
!5911 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 566, column: 27)
!5912 = !DILocalVariable(name: "firmware", scope: !5902, file: !3, line: 567, type: !5913)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5661)
!5915 = !DILocalVariable(name: "iter", scope: !5902, file: !3, line: 568, type: !2160)
!5916 = !DILocalVariable(name: "ret", scope: !5902, file: !3, line: 569, type: !11)
!5917 = !DILocalVariable(name: "kvec", scope: !5902, file: !3, line: 570, type: !2194)
!5918 = !DILocalVariable(name: "name", scope: !5902, file: !3, line: 571, type: !5670)
!5919 = !DILocation(line: 564, column: 50, scope: !5902)
!5920 = !DILocation(line: 564, column: 70, scope: !5902)
!5921 = !DILocation(line: 566, column: 2, scope: !5902)
!5922 = !DILocation(line: 566, column: 22, scope: !5902)
!5923 = !DILocation(line: 566, column: 27, scope: !5909)
!5924 = !DILocation(line: 566, column: 27, scope: !5908)
!5925 = !DILocation(line: 566, column: 27, scope: !5911)
!5926 = !DILocation(line: 567, column: 2, scope: !5902)
!5927 = !DILocation(line: 567, column: 25, scope: !5902)
!5928 = !DILocation(line: 568, column: 2, scope: !5902)
!5929 = !DILocation(line: 568, column: 18, scope: !5902)
!5930 = !DILocation(line: 569, column: 2, scope: !5902)
!5931 = !DILocation(line: 569, column: 19, scope: !5902)
!5932 = !DILocation(line: 570, column: 2, scope: !5902)
!5933 = !DILocation(line: 570, column: 14, scope: !5902)
!5934 = !DILocation(line: 571, column: 2, scope: !5902)
!5935 = !DILocation(line: 571, column: 7, scope: !5902)
!5936 = !DILocation(line: 573, column: 21, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 573, column: 6)
!5938 = !DILocation(line: 573, column: 6, scope: !5937)
!5939 = !DILocation(line: 573, column: 6, scope: !5902)
!5940 = !DILocation(line: 574, column: 3, scope: !5937)
!5941 = !DILocation(line: 576, column: 10, scope: !5902)
!5942 = !DILocation(line: 577, column: 3, scope: !5902)
!5943 = !DILocation(line: 577, column: 6, scope: !5902)
!5944 = !DILocation(line: 577, column: 11, scope: !5902)
!5945 = !DILocation(line: 577, column: 14, scope: !5902)
!5946 = !DILocation(line: 577, column: 25, scope: !5902)
!5947 = !DILocation(line: 577, column: 28, scope: !5902)
!5948 = !DILocation(line: 576, column: 2, scope: !5902)
!5949 = !DILocation(line: 579, column: 41, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 579, column: 6)
!5951 = !DILocation(line: 579, column: 47, scope: !5950)
!5952 = !DILocation(line: 579, column: 6, scope: !5950)
!5953 = !DILocation(line: 579, column: 6, scope: !5902)
!5954 = !DILocation(line: 580, column: 3, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 580, column: 3)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 580, column: 3)
!5957 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 579, column: 56)
!5958 = !DILocation(line: 580, column: 3, scope: !5956)
!5959 = !DILocation(line: 581, column: 3, scope: !5957)
!5960 = !DILocation(line: 584, column: 26, scope: !5902)
!5961 = !DILocation(line: 584, column: 36, scope: !5902)
!5962 = !DILocation(line: 584, column: 7, scope: !5902)
!5963 = !DILocation(line: 584, column: 16, scope: !5902)
!5964 = !DILocation(line: 585, column: 17, scope: !5902)
!5965 = !DILocation(line: 585, column: 27, scope: !5902)
!5966 = !DILocation(line: 585, column: 7, scope: !5902)
!5967 = !DILocation(line: 585, column: 15, scope: !5902)
!5968 = !DILocation(line: 586, column: 46, scope: !5902)
!5969 = !DILocation(line: 586, column: 56, scope: !5902)
!5970 = !DILocation(line: 586, column: 2, scope: !5902)
!5971 = !DILocation(line: 587, column: 30, scope: !5902)
!5972 = !DILocation(line: 587, column: 8, scope: !5902)
!5973 = !DILocation(line: 587, column: 6, scope: !5902)
!5974 = !DILocation(line: 589, column: 19, scope: !5902)
!5975 = !DILocation(line: 589, column: 2, scope: !5902)
!5976 = !DILocation(line: 591, column: 9, scope: !5902)
!5977 = !DILocation(line: 591, column: 2, scope: !5902)
!5978 = !DILocation(line: 592, column: 1, scope: !5902)
!5979 = distinct !DISubprogram(name: "apply_microcode_late", scope: !3, file: !3, line: 440, type: !4649, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5980)
!5980 = !{!5981, !5982, !5983, !5984, !5985, !5986, !5989, !5992, !5994, !5996, !5999, !6002}
!5981 = !DILocalVariable(name: "cpu", arg: 1, scope: !5979, file: !3, line: 440, type: !125)
!5982 = !DILocalVariable(name: "uci", scope: !5979, file: !3, line: 442, type: !5335)
!5983 = !DILocalVariable(name: "mc", scope: !5979, file: !3, line: 443, type: !164)
!5984 = !DILocalVariable(name: "ret", scope: !5979, file: !3, line: 444, type: !11)
!5985 = !DILocalVariable(name: "cur_rev", scope: !5979, file: !3, line: 445, type: !158)
!5986 = !DILocalVariable(name: "__ret_warn_on", scope: !5987, file: !3, line: 447, type: !125)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 447, column: 6)
!5988 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 447, column: 6)
!5989 = !DILocalVariable(name: "pscr_ret__", scope: !5990, file: !3, line: 447, type: !125)
!5990 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 447, column: 6)
!5991 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 447, column: 6)
!5992 = !DILocalVariable(name: "__vpp_verify", scope: !5993, file: !3, line: 447, type: !2715)
!5993 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 447, column: 6)
!5994 = !DILocalVariable(name: "pfo_val__", scope: !5995, file: !3, line: 447, type: !158)
!5995 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 447, column: 6)
!5996 = !DILocalVariable(name: "__flags", scope: !5997, file: !3, line: 447, type: !125)
!5997 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 447, column: 6)
!5998 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 447, column: 6)
!5999 = !DILocalVariable(name: "__vpp_verify", scope: !6000, file: !3, line: 460, type: !2715)
!6000 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 460, column: 2)
!6001 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 460, column: 2)
!6002 = !DILocalVariable(name: "__ptr", scope: !6003, file: !3, line: 460, type: !190)
!6003 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 460, column: 2)
!6004 = !DILocation(line: 440, column: 50, scope: !5979)
!6005 = !DILocation(line: 442, column: 2, scope: !5979)
!6006 = !DILocation(line: 442, column: 25, scope: !5979)
!6007 = !DILocation(line: 442, column: 48, scope: !5979)
!6008 = !DILocation(line: 442, column: 46, scope: !5979)
!6009 = !DILocation(line: 443, column: 2, scope: !5979)
!6010 = !DILocation(line: 443, column: 26, scope: !5979)
!6011 = !DILocation(line: 443, column: 31, scope: !5979)
!6012 = !DILocation(line: 444, column: 2, scope: !5979)
!6013 = !DILocation(line: 444, column: 19, scope: !5979)
!6014 = !DILocation(line: 445, column: 2, scope: !5979)
!6015 = !DILocation(line: 445, column: 6, scope: !5979)
!6016 = !DILocation(line: 447, column: 6, scope: !5987)
!6017 = !DILocation(line: 447, column: 6, scope: !5991)
!6018 = !DILocation(line: 447, column: 6, scope: !5990)
!6019 = !DILocation(line: 447, column: 6, scope: !5993)
!6020 = !DILocation(line: 447, column: 6, scope: !5995)
!6021 = !{i64 2154484314}
!6022 = !DILocation(line: 447, column: 6, scope: !5998)
!6023 = !DILocation(line: 447, column: 6, scope: !5997)
!6024 = !DILocation(line: 447, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 447, column: 6)
!6026 = !DILocation(line: 447, column: 6, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 447, column: 6)
!6028 = !{i64 2154485242, i64 2154485271, i64 2154485317, i64 2154485375, i64 2154485429, i64 2154485483, i64 2154485538, i64 2154485569, i64 2154485877, i64 2154485883, i64 2154485930, i64 2154485953, i64 2154485979}
!6029 = !DILocation(line: 447, column: 6, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 447, column: 6)
!6031 = !DILocation(line: 447, column: 6, scope: !5988)
!6032 = !DILocation(line: 447, column: 6, scope: !5979)
!6033 = !DILocation(line: 448, column: 3, scope: !5988)
!6034 = !DILocation(line: 450, column: 26, scope: !5979)
!6035 = !DILocation(line: 450, column: 31, scope: !5979)
!6036 = !DILocation(line: 450, column: 8, scope: !5979)
!6037 = !DILocation(line: 450, column: 6, scope: !5979)
!6038 = !DILocation(line: 451, column: 6, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 451, column: 6)
!6040 = !DILocation(line: 451, column: 10, scope: !6039)
!6041 = !DILocation(line: 451, column: 27, scope: !6039)
!6042 = !DILocation(line: 451, column: 30, scope: !6039)
!6043 = !DILocation(line: 451, column: 34, scope: !6039)
!6044 = !DILocation(line: 451, column: 6, scope: !5979)
!6045 = !DILocation(line: 452, column: 10, scope: !6039)
!6046 = !DILocation(line: 452, column: 3, scope: !6039)
!6047 = !DILocation(line: 454, column: 7, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 454, column: 6)
!6049 = !DILocation(line: 454, column: 11, scope: !6048)
!6050 = !DILocation(line: 454, column: 14, scope: !6048)
!6051 = !DILocation(line: 454, column: 19, scope: !6048)
!6052 = !DILocation(line: 454, column: 27, scope: !6048)
!6053 = !DILocation(line: 454, column: 34, scope: !6048)
!6054 = !DILocation(line: 454, column: 31, scope: !6048)
!6055 = !DILocation(line: 454, column: 6, scope: !5979)
!6056 = !DILocation(line: 455, column: 3, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 455, column: 3)
!6058 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 454, column: 43)
!6059 = !DILocation(line: 455, column: 3, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 455, column: 3)
!6061 = !DILocation(line: 458, column: 2, scope: !6058)
!6062 = !DILocation(line: 460, column: 29, scope: !5979)
!6063 = !DILocation(line: 460, column: 34, scope: !5979)
!6064 = !DILocation(line: 460, column: 42, scope: !5979)
!6065 = !DILocation(line: 460, column: 2, scope: !6001)
!6066 = !DILocation(line: 460, column: 2, scope: !6000)
!6067 = !DILocation(line: 460, column: 2, scope: !6003)
!6068 = !DILocation(line: 460, column: 16, scope: !5979)
!6069 = !DILocation(line: 460, column: 27, scope: !5979)
!6070 = !DILocation(line: 461, column: 7, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 461, column: 6)
!6072 = !DILocation(line: 461, column: 6, scope: !5979)
!6073 = !DILocation(line: 462, column: 29, scope: !6071)
!6074 = !DILocation(line: 462, column: 34, scope: !6071)
!6075 = !DILocation(line: 462, column: 42, scope: !6071)
!6076 = !DILocation(line: 462, column: 27, scope: !6071)
!6077 = !DILocation(line: 462, column: 3, scope: !6071)
!6078 = !DILocation(line: 464, column: 9, scope: !5979)
!6079 = !DILocation(line: 464, column: 2, scope: !5979)
!6080 = !DILocation(line: 465, column: 1, scope: !5979)
!6081 = distinct !DISubprogram(name: "collect_cpu_info", scope: !3, file: !3, line: 434, type: !4653, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6082)
!6082 = !{!6083, !6084}
!6083 = !DILocalVariable(name: "cpu_num", arg: 1, scope: !6081, file: !3, line: 434, type: !125)
!6084 = !DILocalVariable(name: "csig", arg: 2, scope: !6081, file: !3, line: 434, type: !4655)
!6085 = !DILocation(line: 434, column: 33, scope: !6081)
!6086 = !DILocation(line: 434, column: 64, scope: !6081)
!6087 = !DILocation(line: 436, column: 25, scope: !6081)
!6088 = !DILocation(line: 436, column: 2, scope: !6081)
!6089 = !DILocation(line: 437, column: 2, scope: !6081)
!6090 = distinct !DISubprogram(name: "finalize_late_load", scope: !3, file: !3, line: 594, type: !3075, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6091)
!6091 = !{!6092}
!6092 = !DILocalVariable(name: "result", arg: 1, scope: !6090, file: !3, line: 594, type: !125)
!6093 = !DILocation(line: 594, column: 36, scope: !6090)
!6094 = !DILocation(line: 596, column: 7, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 596, column: 6)
!6096 = !DILocation(line: 596, column: 6, scope: !6090)
!6097 = !DILocation(line: 597, column: 24, scope: !6095)
!6098 = !DILocation(line: 597, column: 3, scope: !6095)
!6099 = !DILocation(line: 599, column: 10, scope: !6095)
!6100 = !DILocation(line: 599, column: 3, scope: !6095)
!6101 = !DILocation(line: 600, column: 19, scope: !6090)
!6102 = !DILocation(line: 601, column: 1, scope: !6090)
!6103 = !DILocation(line: 541, column: 41, scope: !4666)
!6104 = !DILocation(line: 543, column: 2, scope: !4666)
!6105 = !DILocation(line: 543, column: 22, scope: !4666)
!6106 = !DILocation(line: 543, column: 27, scope: !4674)
!6107 = !DILocation(line: 543, column: 27, scope: !4673)
!6108 = !DILocation(line: 543, column: 27, scope: !4676)
!6109 = !DILocation(line: 551, column: 6, scope: !4680)
!6110 = !DILocation(line: 551, column: 9, scope: !4680)
!6111 = !DILocation(line: 551, column: 13, scope: !4680)
!6112 = !DILocation(line: 551, column: 18, scope: !4680)
!6113 = !DILocation(line: 552, column: 6, scope: !4680)
!6114 = !DILocation(line: 552, column: 9, scope: !4680)
!6115 = !DILocation(line: 552, column: 19, scope: !4680)
!6116 = !DILocation(line: 552, column: 45, scope: !4680)
!6117 = !DILocation(line: 553, column: 6, scope: !4680)
!6118 = !DILocation(line: 553, column: 9, scope: !4680)
!6119 = !DILocation(line: 553, column: 22, scope: !4680)
!6120 = !DILocation(line: 553, column: 30, scope: !4680)
!6121 = !DILocation(line: 554, column: 6, scope: !4680)
!6122 = !DILocation(line: 554, column: 24, scope: !4680)
!6123 = !DILocation(line: 554, column: 34, scope: !4680)
!6124 = !DILocation(line: 555, column: 6, scope: !4680)
!6125 = !DILocation(line: 555, column: 9, scope: !4680)
!6126 = !DILocation(line: 555, column: 19, scope: !4680)
!6127 = !DILocation(line: 551, column: 6, scope: !4666)
!6128 = !DILocation(line: 556, column: 3, scope: !4678)
!6129 = !DILocation(line: 556, column: 3, scope: !4682)
!6130 = !DILocation(line: 556, column: 3, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 556, column: 3)
!6132 = !DILocation(line: 0, scope: !6131)
!6133 = !DILocation(line: 556, column: 3, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 556, column: 3)
!6135 = !DILocation(line: 556, column: 3, scope: !4683)
!6136 = !DILocation(line: 556, column: 3, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 556, column: 3)
!6138 = !DILocation(line: 556, column: 3, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6137, file: !3, line: 556, column: 3)
!6140 = !DILocation(line: 556, column: 3, scope: !4679)
!6141 = !DILocation(line: 557, column: 3, scope: !4686)
!6142 = !DILocation(line: 557, column: 3, scope: !4688)
!6143 = !DILocation(line: 557, column: 3, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 557, column: 3)
!6145 = !DILocation(line: 0, scope: !6144)
!6146 = !DILocation(line: 557, column: 3, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 557, column: 3)
!6148 = !DILocation(line: 557, column: 3, scope: !4689)
!6149 = !DILocation(line: 557, column: 3, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 557, column: 3)
!6151 = !DILocation(line: 557, column: 3, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 557, column: 3)
!6153 = !DILocation(line: 557, column: 3, scope: !4679)
!6154 = !DILocation(line: 558, column: 3, scope: !4679)
!6155 = !DILocation(line: 561, column: 2, scope: !4666)
!6156 = !DILocation(line: 562, column: 1, scope: !4666)
!6157 = !DISubprogram(name: "request_firmware_direct", scope: !5662, file: !5662, line: 106, type: !6158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!125, !6160, !354, !346}
!6160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!6161 = !DISubprogram(name: "iov_iter_kvec", scope: !2161, file: !2161, line: 280, type: !6162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{null, !2159, !7, !2192, !190, !476}
!6164 = distinct !DISubprogram(name: "parse_microcode_blobs", scope: !3, file: !3, line: 467, type: !6165, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6167)
!6165 = !DISubroutineType(types: !6166)
!6166 = !{!11, !125, !2159}
!6167 = !{!6168, !6169, !6170, !6171, !6172, !6173, !6175, !6176, !6178, !6179, !6180, !6181}
!6168 = !DILocalVariable(name: "cpu", arg: 1, scope: !6164, file: !3, line: 467, type: !125)
!6169 = !DILocalVariable(name: "iter", arg: 2, scope: !6164, file: !3, line: 467, type: !2159)
!6170 = !DILocalVariable(name: "uci", scope: !6164, file: !3, line: 469, type: !5335)
!6171 = !DILocalVariable(name: "cur_rev", scope: !6164, file: !3, line: 470, type: !125)
!6172 = !DILocalVariable(name: "curr_mc_size", scope: !6164, file: !3, line: 471, type: !7)
!6173 = !DILocalVariable(name: "new_mc", scope: !6164, file: !3, line: 472, type: !6174)
!6174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!6175 = !DILocalVariable(name: "mc", scope: !6164, file: !3, line: 472, type: !6174)
!6176 = !DILocalVariable(name: "mc_header", scope: !6177, file: !3, line: 478, type: !169)
!6177 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 477, column: 31)
!6178 = !DILocalVariable(name: "mc_size", scope: !6177, file: !3, line: 479, type: !7)
!6179 = !DILocalVariable(name: "data_size", scope: !6177, file: !3, line: 479, type: !7)
!6180 = !DILocalVariable(name: "data", scope: !6177, file: !3, line: 480, type: !6174)
!6181 = !DILabel(scope: !6164, name: "fail", file: !3, line: 535)
!6182 = !DILocation(line: 467, column: 51, scope: !6164)
!6183 = !DILocation(line: 467, column: 73, scope: !6164)
!6184 = !DILocation(line: 469, column: 2, scope: !6164)
!6185 = !DILocation(line: 469, column: 25, scope: !6164)
!6186 = !DILocation(line: 469, column: 48, scope: !6164)
!6187 = !DILocation(line: 469, column: 46, scope: !6164)
!6188 = !DILocation(line: 470, column: 2, scope: !6164)
!6189 = !DILocation(line: 470, column: 6, scope: !6164)
!6190 = !DILocation(line: 470, column: 16, scope: !6164)
!6191 = !DILocation(line: 470, column: 21, scope: !6164)
!6192 = !DILocation(line: 470, column: 29, scope: !6164)
!6193 = !DILocation(line: 471, column: 2, scope: !6164)
!6194 = !DILocation(line: 471, column: 15, scope: !6164)
!6195 = !DILocation(line: 472, column: 2, scope: !6164)
!6196 = !DILocation(line: 472, column: 6, scope: !6164)
!6197 = !DILocation(line: 472, column: 22, scope: !6164)
!6198 = !DILocation(line: 474, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 474, column: 6)
!6200 = !DILocation(line: 474, column: 6, scope: !6164)
!6201 = !DILocation(line: 475, column: 3, scope: !6199)
!6202 = !DILocation(line: 477, column: 2, scope: !6164)
!6203 = !DILocation(line: 477, column: 24, scope: !6164)
!6204 = !DILocation(line: 477, column: 9, scope: !6164)
!6205 = !DILocation(line: 478, column: 3, scope: !6177)
!6206 = !DILocation(line: 478, column: 33, scope: !6177)
!6207 = !DILocation(line: 479, column: 3, scope: !6177)
!6208 = !DILocation(line: 479, column: 16, scope: !6177)
!6209 = !DILocation(line: 479, column: 25, scope: !6177)
!6210 = !DILocation(line: 480, column: 3, scope: !6177)
!6211 = !DILocation(line: 480, column: 7, scope: !6177)
!6212 = !DILocation(line: 482, column: 59, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 482, column: 7)
!6214 = !DILocation(line: 482, column: 8, scope: !6213)
!6215 = !DILocation(line: 482, column: 7, scope: !6177)
!6216 = !DILocation(line: 483, column: 4, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 483, column: 4)
!6218 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 482, column: 66)
!6219 = !DILocation(line: 483, column: 4, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 483, column: 4)
!6221 = !DILocation(line: 484, column: 4, scope: !6218)
!6222 = !DILocation(line: 487, column: 13, scope: !6177)
!6223 = !DILocation(line: 487, column: 11, scope: !6177)
!6224 = !DILocation(line: 488, column: 7, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 488, column: 7)
!6226 = !DILocation(line: 488, column: 15, scope: !6225)
!6227 = !DILocation(line: 488, column: 7, scope: !6177)
!6228 = !DILocation(line: 489, column: 4, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 489, column: 4)
!6230 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 488, column: 36)
!6231 = !DILocation(line: 489, column: 4, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 489, column: 4)
!6233 = !DILocation(line: 490, column: 4, scope: !6230)
!6234 = !DILocation(line: 492, column: 15, scope: !6177)
!6235 = !DILocation(line: 492, column: 23, scope: !6177)
!6236 = !DILocation(line: 492, column: 13, scope: !6177)
!6237 = !DILocation(line: 493, column: 7, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 493, column: 7)
!6239 = !DILocation(line: 493, column: 34, scope: !6238)
!6240 = !DILocation(line: 493, column: 19, scope: !6238)
!6241 = !DILocation(line: 493, column: 17, scope: !6238)
!6242 = !DILocation(line: 493, column: 7, scope: !6177)
!6243 = !DILocation(line: 494, column: 4, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 494, column: 4)
!6245 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 493, column: 41)
!6246 = !DILocation(line: 494, column: 4, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 494, column: 4)
!6248 = !DILocation(line: 495, column: 4, scope: !6245)
!6249 = !DILocation(line: 499, column: 8, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 499, column: 7)
!6251 = !DILocation(line: 499, column: 11, scope: !6250)
!6252 = !DILocation(line: 499, column: 14, scope: !6250)
!6253 = !DILocation(line: 499, column: 24, scope: !6250)
!6254 = !DILocation(line: 499, column: 22, scope: !6250)
!6255 = !DILocation(line: 499, column: 7, scope: !6177)
!6256 = !DILocation(line: 500, column: 11, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 499, column: 38)
!6258 = !DILocation(line: 500, column: 4, scope: !6257)
!6259 = !DILocation(line: 501, column: 18, scope: !6257)
!6260 = !DILocation(line: 501, column: 9, scope: !6257)
!6261 = !DILocation(line: 501, column: 7, scope: !6257)
!6262 = !DILocation(line: 502, column: 9, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 502, column: 8)
!6264 = !DILocation(line: 502, column: 8, scope: !6257)
!6265 = !DILocation(line: 503, column: 5, scope: !6263)
!6266 = !DILocation(line: 504, column: 19, scope: !6257)
!6267 = !DILocation(line: 504, column: 17, scope: !6257)
!6268 = !DILocation(line: 505, column: 3, scope: !6257)
!6269 = !DILocation(line: 507, column: 10, scope: !6177)
!6270 = !DILocation(line: 507, column: 3, scope: !6177)
!6271 = !DILocation(line: 508, column: 10, scope: !6177)
!6272 = !DILocation(line: 508, column: 13, scope: !6177)
!6273 = !DILocation(line: 508, column: 8, scope: !6177)
!6274 = !DILocation(line: 509, column: 28, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 509, column: 7)
!6276 = !DILocation(line: 509, column: 34, scope: !6275)
!6277 = !DILocation(line: 509, column: 45, scope: !6275)
!6278 = !DILocation(line: 509, column: 8, scope: !6275)
!6279 = !DILocation(line: 509, column: 51, scope: !6275)
!6280 = !DILocation(line: 510, column: 36, scope: !6275)
!6281 = !DILocation(line: 510, column: 7, scope: !6275)
!6282 = !DILocation(line: 510, column: 72, scope: !6275)
!6283 = !DILocation(line: 509, column: 7, scope: !6177)
!6284 = !DILocation(line: 511, column: 4, scope: !6275)
!6285 = !DILocation(line: 513, column: 7, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 513, column: 7)
!6287 = !DILocation(line: 513, column: 28, scope: !6286)
!6288 = !DILocation(line: 513, column: 15, scope: !6286)
!6289 = !DILocation(line: 513, column: 7, scope: !6177)
!6290 = !DILocation(line: 514, column: 4, scope: !6286)
!6291 = distinct !{!6291, !6202, !6292, !4935, !4936}
!6292 = !DILocation(line: 523, column: 2, scope: !6164)
!6293 = !DILocation(line: 516, column: 38, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 516, column: 7)
!6295 = !DILocation(line: 516, column: 43, scope: !6294)
!6296 = !DILocation(line: 516, column: 48, scope: !6294)
!6297 = !DILocation(line: 516, column: 8, scope: !6294)
!6298 = !DILocation(line: 516, column: 7, scope: !6177)
!6299 = !DILocation(line: 517, column: 4, scope: !6294)
!6300 = !DILocation(line: 519, column: 10, scope: !6177)
!6301 = !DILocation(line: 519, column: 3, scope: !6177)
!6302 = !DILocation(line: 520, column: 23, scope: !6177)
!6303 = !DILocation(line: 520, column: 11, scope: !6177)
!6304 = !DILocation(line: 521, column: 13, scope: !6177)
!6305 = !DILocation(line: 521, column: 11, scope: !6177)
!6306 = !DILocation(line: 522, column: 6, scope: !6177)
!6307 = !DILocation(line: 525, column: 21, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 525, column: 6)
!6309 = !DILocation(line: 525, column: 6, scope: !6308)
!6310 = !DILocation(line: 525, column: 6, scope: !6164)
!6311 = !DILocation(line: 526, column: 3, scope: !6308)
!6312 = !DILocation(line: 528, column: 9, scope: !6164)
!6313 = !DILocation(line: 528, column: 2, scope: !6164)
!6314 = !DILocation(line: 529, column: 7, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 529, column: 6)
!6316 = !DILocation(line: 529, column: 6, scope: !6164)
!6317 = !DILocation(line: 530, column: 3, scope: !6315)
!6318 = !DILocation(line: 532, column: 47, scope: !6164)
!6319 = !DILocation(line: 532, column: 19, scope: !6164)
!6320 = !DILocation(line: 533, column: 2, scope: !6164)
!6321 = !DILocation(line: 535, column: 1, scope: !6164)
!6322 = !DILocation(line: 536, column: 9, scope: !6164)
!6323 = !DILocation(line: 536, column: 2, scope: !6164)
!6324 = !DILocation(line: 537, column: 9, scope: !6164)
!6325 = !DILocation(line: 537, column: 2, scope: !6164)
!6326 = !DILocation(line: 538, column: 2, scope: !6164)
!6327 = !DILocation(line: 539, column: 1, scope: !6164)
!6328 = !DISubprogram(name: "release_firmware", scope: !5662, file: !5662, line: 114, type: !6329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6329 = !DISubroutineType(types: !6330)
!6330 = !{null, !5913}
!6331 = distinct !DISubprogram(name: "iov_iter_count", scope: !2161, file: !2161, line: 296, type: !6332, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6336)
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!476, !6334}
!6334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6335, size: 64)
!6335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2160)
!6336 = !{!6337}
!6337 = !DILocalVariable(name: "i", arg: 1, scope: !6331, file: !2161, line: 296, type: !6334)
!6338 = !DILocation(line: 296, column: 60, scope: !6331)
!6339 = !DILocation(line: 298, column: 9, scope: !6331)
!6340 = !DILocation(line: 298, column: 12, scope: !6331)
!6341 = !DILocation(line: 298, column: 2, scope: !6331)
!6342 = distinct !DISubprogram(name: "copy_from_iter_full", scope: !2161, file: !2161, line: 214, type: !6343, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6345)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!267, !162, !476, !2159}
!6345 = !{!6346, !6347, !6348, !6349}
!6346 = !DILocalVariable(name: "addr", arg: 1, scope: !6342, file: !2161, line: 214, type: !162)
!6347 = !DILocalVariable(name: "bytes", arg: 2, scope: !6342, file: !2161, line: 214, type: !476)
!6348 = !DILocalVariable(name: "i", arg: 3, scope: !6342, file: !2161, line: 214, type: !2159)
!6349 = !DILocalVariable(name: "copied", scope: !6342, file: !2161, line: 216, type: !476)
!6350 = !DILocation(line: 214, column: 32, scope: !6342)
!6351 = !DILocation(line: 214, column: 45, scope: !6342)
!6352 = !DILocation(line: 214, column: 69, scope: !6342)
!6353 = !DILocation(line: 216, column: 2, scope: !6342)
!6354 = !DILocation(line: 216, column: 9, scope: !6342)
!6355 = !DILocation(line: 216, column: 33, scope: !6342)
!6356 = !DILocation(line: 216, column: 39, scope: !6342)
!6357 = !DILocation(line: 216, column: 46, scope: !6342)
!6358 = !DILocation(line: 216, column: 18, scope: !6342)
!6359 = !DILocation(line: 217, column: 6, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6342, file: !2161, line: 217, column: 6)
!6361 = !DILocation(line: 217, column: 6, scope: !6342)
!6362 = !DILocation(line: 218, column: 3, scope: !6360)
!6363 = !DILocation(line: 219, column: 18, scope: !6342)
!6364 = !DILocation(line: 219, column: 21, scope: !6342)
!6365 = !DILocation(line: 219, column: 2, scope: !6342)
!6366 = !DILocation(line: 220, column: 2, scope: !6342)
!6367 = !DILocation(line: 221, column: 1, scope: !6342)
!6368 = distinct !DISubprogram(name: "kvmalloc", scope: !5647, file: !5647, line: 736, type: !6369, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6371)
!6369 = !DISubroutineType(types: !6370)
!6370 = !{!162, !476, !194}
!6371 = !{!6372, !6373}
!6372 = !DILocalVariable(name: "size", arg: 1, scope: !6368, file: !5647, line: 736, type: !476)
!6373 = !DILocalVariable(name: "flags", arg: 2, scope: !6368, file: !5647, line: 736, type: !194)
!6374 = !DILocation(line: 736, column: 53, scope: !6368)
!6375 = !DILocation(line: 736, column: 65, scope: !6368)
!6376 = !DILocation(line: 738, column: 23, scope: !6368)
!6377 = !DILocation(line: 738, column: 29, scope: !6368)
!6378 = !DILocation(line: 738, column: 9, scope: !6368)
!6379 = !DILocation(line: 738, column: 2, scope: !6368)
!6380 = distinct !DISubprogram(name: "copy_from_iter", scope: !2161, file: !2161, line: 206, type: !6381, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6383)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!476, !162, !476, !2159}
!6383 = !{!6384, !6385, !6386}
!6384 = !DILocalVariable(name: "addr", arg: 1, scope: !6380, file: !2161, line: 206, type: !162)
!6385 = !DILocalVariable(name: "bytes", arg: 2, scope: !6380, file: !2161, line: 206, type: !476)
!6386 = !DILocalVariable(name: "i", arg: 3, scope: !6380, file: !2161, line: 206, type: !2159)
!6387 = !DILocation(line: 206, column: 29, scope: !6380)
!6388 = !DILocation(line: 206, column: 42, scope: !6380)
!6389 = !DILocation(line: 206, column: 66, scope: !6380)
!6390 = !DILocation(line: 208, column: 22, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6380, file: !2161, line: 208, column: 6)
!6392 = !DILocation(line: 208, column: 28, scope: !6391)
!6393 = !DILocation(line: 208, column: 6, scope: !6391)
!6394 = !DILocation(line: 208, column: 6, scope: !6380)
!6395 = !DILocation(line: 209, column: 26, scope: !6391)
!6396 = !DILocation(line: 209, column: 32, scope: !6391)
!6397 = !DILocation(line: 209, column: 39, scope: !6391)
!6398 = !DILocation(line: 209, column: 10, scope: !6391)
!6399 = !DILocation(line: 209, column: 3, scope: !6391)
!6400 = !DILocation(line: 210, column: 2, scope: !6380)
!6401 = !DILocation(line: 211, column: 1, scope: !6380)
!6402 = !DISubprogram(name: "iov_iter_revert", scope: !2161, file: !2161, line: 169, type: !6403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{null, !2159, !476}
!6405 = distinct !DISubprogram(name: "check_copy_size", scope: !4717, file: !4717, line: 237, type: !6406, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6408)
!6406 = !DISubroutineType(types: !6407)
!6407 = !{!267, !2715, !476, !267}
!6408 = !{!6409, !6410, !6411, !6412, !6413, !6416}
!6409 = !DILocalVariable(name: "addr", arg: 1, scope: !6405, file: !4717, line: 237, type: !2715)
!6410 = !DILocalVariable(name: "bytes", arg: 2, scope: !6405, file: !4717, line: 237, type: !476)
!6411 = !DILocalVariable(name: "is_source", arg: 3, scope: !6405, file: !4717, line: 237, type: !267)
!6412 = !DILocalVariable(name: "sz", scope: !6405, file: !4717, line: 239, type: !125)
!6413 = !DILocalVariable(name: "__ret_warn_on", scope: !6414, file: !4717, line: 249, type: !125)
!6414 = distinct !DILexicalBlock(scope: !6415, file: !4717, line: 249, column: 6)
!6415 = distinct !DILexicalBlock(scope: !6405, file: !4717, line: 249, column: 6)
!6416 = !DILocalVariable(name: "__flags", scope: !6417, file: !4717, line: 249, type: !125)
!6417 = distinct !DILexicalBlock(scope: !6418, file: !4717, line: 249, column: 6)
!6418 = distinct !DILexicalBlock(scope: !6414, file: !4717, line: 249, column: 6)
!6419 = !DILocation(line: 237, column: 29, scope: !6405)
!6420 = !DILocation(line: 237, column: 42, scope: !6405)
!6421 = !DILocation(line: 237, column: 54, scope: !6405)
!6422 = !DILocation(line: 239, column: 2, scope: !6405)
!6423 = !DILocation(line: 239, column: 6, scope: !6405)
!6424 = !DILocation(line: 239, column: 33, scope: !6405)
!6425 = !DILocation(line: 239, column: 11, scope: !6405)
!6426 = !DILocation(line: 240, column: 6, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6405, file: !4717, line: 240, column: 6)
!6428 = !DILocation(line: 0, scope: !6427)
!6429 = !DILocation(line: 240, column: 6, scope: !6405)
!6430 = !DILocation(line: 241, column: 29, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !4717, line: 241, column: 7)
!6432 = distinct !DILexicalBlock(scope: !6427, file: !4717, line: 240, column: 39)
!6433 = !DILocation(line: 241, column: 8, scope: !6431)
!6434 = !DILocation(line: 241, column: 7, scope: !6432)
!6435 = !DILocation(line: 242, column: 18, scope: !6431)
!6436 = !DILocation(line: 242, column: 22, scope: !6431)
!6437 = !DILocation(line: 242, column: 4, scope: !6431)
!6438 = !DILocation(line: 243, column: 12, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6431, file: !4717, line: 243, column: 12)
!6440 = !DILocation(line: 243, column: 12, scope: !6431)
!6441 = !DILocation(line: 244, column: 4, scope: !6439)
!6442 = !{i32 899933}
!6443 = !DILocation(line: 246, column: 4, scope: !6439)
!6444 = !{i32 899962}
!6445 = !DILocation(line: 247, column: 3, scope: !6432)
!6446 = !DILocation(line: 249, column: 6, scope: !6414)
!6447 = !DILocation(line: 249, column: 6, scope: !6418)
!6448 = !DILocation(line: 249, column: 6, scope: !6417)
!6449 = !DILocation(line: 249, column: 6, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6417, file: !4717, line: 249, column: 6)
!6451 = !DILocation(line: 249, column: 6, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6417, file: !4717, line: 249, column: 6)
!6453 = !{i64 2149536963, i64 2149536992, i64 2149537038, i64 2149537096, i64 2149537150, i64 2149537204, i64 2149537259, i64 2149537290, i64 2149537598, i64 2149537604, i64 2149537651, i64 2149537674, i64 2149537700}
!6454 = !DILocation(line: 249, column: 6, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6417, file: !4717, line: 249, column: 6)
!6456 = !DILocation(line: 249, column: 6, scope: !6415)
!6457 = !DILocation(line: 249, column: 6, scope: !6405)
!6458 = !DILocation(line: 250, column: 3, scope: !6415)
!6459 = !DILocation(line: 251, column: 20, scope: !6405)
!6460 = !DILocation(line: 251, column: 26, scope: !6405)
!6461 = !DILocation(line: 251, column: 33, scope: !6405)
!6462 = !DILocation(line: 251, column: 2, scope: !6405)
!6463 = !DILocation(line: 252, column: 2, scope: !6405)
!6464 = !DILocation(line: 253, column: 1, scope: !6405)
!6465 = !DISubprogram(name: "_copy_from_iter", scope: !2161, file: !2161, line: 179, type: !6381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = distinct !DISubprogram(name: "copy_overflow", scope: !4717, file: !4717, line: 230, type: !6467, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6469)
!6467 = !DISubroutineType(types: !6468)
!6468 = !{null, !125, !190}
!6469 = !{!6470, !6471}
!6470 = !DILocalVariable(name: "size", arg: 1, scope: !6466, file: !4717, line: 230, type: !125)
!6471 = !DILocalVariable(name: "count", arg: 2, scope: !6466, file: !4717, line: 230, type: !190)
!6472 = !DILocation(line: 230, column: 38, scope: !6466)
!6473 = !DILocation(line: 230, column: 58, scope: !6466)
!6474 = !DILocation(line: 233, column: 19, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6466, file: !4717, line: 232, column: 6)
!6476 = !DILocation(line: 233, column: 25, scope: !6475)
!6477 = !DILocation(line: 233, column: 3, scope: !6475)
!6478 = !DILocation(line: 234, column: 1, scope: !6466)
!6479 = !DISubprogram(name: "__bad_copy_from", scope: !4717, file: !4717, line: 224, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6480 = !DISubprogram(name: "__bad_copy_to", scope: !4717, file: !4717, line: 226, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6481 = distinct !DISubprogram(name: "check_object_size", scope: !4717, file: !4717, line: 218, type: !6482, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6484)
!6482 = !DISubroutineType(types: !6483)
!6483 = !{null, !2715, !190, !267}
!6484 = !{!6485, !6486, !6487}
!6485 = !DILocalVariable(name: "ptr", arg: 1, scope: !6481, file: !4717, line: 218, type: !2715)
!6486 = !DILocalVariable(name: "n", arg: 2, scope: !6481, file: !4717, line: 218, type: !190)
!6487 = !DILocalVariable(name: "to_user", arg: 3, scope: !6481, file: !4717, line: 219, type: !267)
!6488 = !DILocation(line: 218, column: 50, scope: !6481)
!6489 = !DILocation(line: 218, column: 69, scope: !6481)
!6490 = !DILocation(line: 219, column: 15, scope: !6481)
!6491 = !DILocation(line: 220, column: 3, scope: !6481)
!6492 = !DISubprogram(name: "__copy_overflow", scope: !4717, file: !4717, line: 228, type: !6467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6493 = !DISubprogram(name: "kvmalloc_node", scope: !5647, file: !5647, line: 735, type: !6494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6494 = !DISubroutineType(types: !6495)
!6495 = !{!162, !476, !194, !125}
!6496 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !6497, file: !6497, line: 313, type: !6498, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6500)
!6497 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!6498 = !DISubroutineType(types: !6499)
!6499 = !{null, !354}
!6500 = !{!6501}
!6501 = !DILocalVariable(name: "op", arg: 1, scope: !6496, file: !6497, line: 313, type: !354)
!6502 = !DILocation(line: 313, column: 66, scope: !6496)
!6503 = !DILocation(line: 313, column: 72, scope: !6496)
