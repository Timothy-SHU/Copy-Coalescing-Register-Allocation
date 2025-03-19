; ModuleID = 'arch/x86/kernel/cpu/mtrr/cleanup.c'
source_filename = "arch/x86/kernel/cpu/mtrr/cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.var_mtrr_range_state = type { i64, i64, i8 }
%struct.range = type { i64, i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }
%struct.mtrr_state_type = type { [256 x %struct.mtrr_var_range], [88 x i8], i8, i8, i8 }
%struct.mtrr_var_range = type { i32, i32, i32, i32 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.mtrr_ops = type { i32, ptr, ptr, ptr, ptr, ptr }

@__setup_str_disable_mtrr_trim_setup = internal constant [18 x i8] c"disable_mtrr_trim\00", section ".init.rodata", align 1, !dbg !0
@__setup_disable_mtrr_trim_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_disable_mtrr_trim_setup, ptr @disable_mtrr_trim_setup, i32 1 }, section ".init.setup", align 8, !dbg !35
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@disable_mtrr_trim = internal global i32 0, align 4, !dbg !94
@range_state = internal global [256 x %struct.var_mtrr_range_state] zeroinitializer, section ".init.data", align 16, !dbg !82
@num_var_ranges = external dso_local global i32, align 4
@mtrr_if = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [45 x i8] c"\016CPU MTRRs all blank - virtualized system.\0A\00", align 1, !dbg !47
@range = internal global [256 x %struct.range] zeroinitializer, section ".init.data", align 16, !dbg !67
@nr_range = internal global i32 0, section ".init.data", align 4, !dbg !80
@mtrr_tom2 = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [81 x i8] c"\014WARNING: BIOS bug: CPU MTRRs don't cover all of memory, losing %lluMB of RAM.\0A\00", align 1, !dbg !52
@changed_by_mtrr_cleanup = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"arch/x86/kernel/cpu/mtrr/cleanup.c\00", align 1, !dbg !57
@.str.3 = private unnamed_addr constant [24 x i8] c"\016update e820 for mtrr\0A\00", align 1, !dbg !62
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@mtrr_debug = external dso_local global i8, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\016After WB checking\0A\00", align 1, !dbg !96
@.str.5 = private unnamed_addr constant [35 x i8] c"\016MTRR MAP PFN: %016llx - %016llx\0A\00", align 1, !dbg !101
@mtrr_state = external dso_local global %struct.mtrr_state_type, align 4
@.str.6 = private unnamed_addr constant [101 x i8] c"\014WARNING: BIOS bug: VAR MTRR %d contains strange UC entry under 1M, check with your system vendor!\0A\00", align 1, !dbg !103
@.str.7 = private unnamed_addr constant [21 x i8] c"\016After UC checking\0A\00", align 1, !dbg !108
@.str.8 = private unnamed_addr constant [17 x i8] c"\016After sorting\0A\00", align 1, !dbg !110
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_disable_mtrr_trim_setup], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @mtrr_cleanup() #0 section ".init.text" align 16 !dbg !127 {
entry:
  ret i32 0, !dbg !130
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @disable_mtrr_trim_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !131 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 1, ptr @disable_mtrr_trim, align 4, !dbg !135
  ret i32 0, !dbg !136
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @amd_special_default_mtrr() #0 section ".init.text" align 16 !dbg !137 {
entry:
  %retval = alloca i32, align 4
  %l = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #11, !dbg !145
  call void @llvm.dbg.declare(metadata ptr %l, metadata !139, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #11, !dbg !145
  call void @llvm.dbg.declare(metadata ptr %h, metadata !140, metadata !DIExpression()), !dbg !147
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !148
  %conv = zext i8 %0 to i32, !dbg !150
  %cmp = icmp ne i32 %conv, 2, !dbg !151
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !152

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !153
  %conv2 = zext i8 %1 to i32, !dbg !154
  %cmp3 = icmp ne i32 %conv2, 9, !dbg !155
  br i1 %cmp3, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !157

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !158
  %conv5 = zext i8 %2 to i32, !dbg !160
  %cmp6 = icmp slt i32 %conv5, 15, !dbg !161
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !162

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !163

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #11, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !141, metadata !DIExpression()), !dbg !164
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #11, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !144, metadata !DIExpression()), !dbg !164
  %call = call i64 @native_read_msr_safe(i32 noundef -1073676272, ptr noundef %__err) #12, !dbg !164
  store i64 %call, ptr %__val, align 8, !dbg !164
  %3 = load i64, ptr %__val, align 8, !dbg !164
  %conv10 = trunc i64 %3 to i32, !dbg !164
  store i32 %conv10, ptr %l, align 4, !dbg !164
  %4 = load i64, ptr %__val, align 8, !dbg !164
  %shr = lshr i64 %4, 32, !dbg !164
  %conv11 = trunc i64 %shr to i32, !dbg !164
  store i32 %conv11, ptr %h, align 4, !dbg !164
  %5 = load i32, ptr %__err, align 4, !dbg !164
  store i32 %5, ptr %tmp, align 4, !dbg !164
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #11, !dbg !165
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #11, !dbg !165
  %6 = load i32, ptr %tmp, align 4, !dbg !164
  %cmp12 = icmp slt i32 %6, 0, !dbg !166
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !167

if.then14:                                        ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !168

if.end15:                                         ; preds = %if.end9
  %7 = load i32, ptr %l, align 4, !dbg !169
  %and = and i32 %7, 6291456, !dbg !171
  %cmp16 = icmp eq i32 %and, 6291456, !dbg !172
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !173

if.then18:                                        ; preds = %if.end15
  store i32 1, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

if.end19:                                         ; preds = %if.end15
  store i32 0, ptr %retval, align 4, !dbg !175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !175

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then14, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #11, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #11, !dbg !176
  %8 = load i32, ptr %retval, align 4, !dbg !176
  ret i32 %8, !dbg !176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #3 align 16 !dbg !177 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !183, metadata !DIExpression()), !dbg !187
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !184, metadata !DIExpression()), !dbg !188
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #11, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %low, metadata !185, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #11, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %high, metadata !186, metadata !DIExpression()), !dbg !189
  %0 = load ptr, ptr %err.addr, align 8, !dbg !190
  %1 = load i32, ptr %msr.addr, align 4, !dbg !191
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #11, !dbg !192, !srcloc !193
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !192
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !192
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !192
  store i32 %asmresult, ptr %0, align 4, !dbg !192
  store i64 %asmresult1, ptr %low, align 8, !dbg !192
  store i64 %asmresult2, ptr %high, align 8, !dbg !192
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #12, !dbg !194
  br i1 %call, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !197
  %4 = load i64, ptr %low, align 8, !dbg !198
  %5 = load i64, ptr %high, align 8, !dbg !198
  %shl = shl i64 %5, 32, !dbg !198
  %or = or i64 %4, %shl, !dbg !198
  %6 = load ptr, ptr %err.addr, align 8, !dbg !199
  %7 = load i32, ptr %6, align 4, !dbg !200
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #12, !dbg !201
  br label %if.end, !dbg !201

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !202
  %9 = load i64, ptr %high, align 8, !dbg !202
  %shl3 = shl i64 %9, 32, !dbg !202
  %or4 = or i64 %8, %shl3, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #11, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #11, !dbg !203
  ret i64 %or4, !dbg !204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @mtrr_trim_uncached_memory(i64 noundef %end_pfn) #0 section ".init.text" align 16 !dbg !205 {
entry:
  %retval = alloca i32, align 4
  %end_pfn.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %highest_pfn = alloca i64, align 8
  %def = alloca i64, align 8
  %dummy = alloca i64, align 8
  %type = alloca i8, align 1
  %total_trim_size = alloca i64, align 8
  %num = alloca [8 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp155 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp178 = alloca i64, align 8
  %tmp190 = alloca i32, align 4
  store i64 %end_pfn, ptr %end_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end_pfn.addr, metadata !209, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %i, metadata !210, metadata !DIExpression()), !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #11, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %base, metadata !211, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %size, metadata !212, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 8, ptr %highest_pfn) #11, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %highest_pfn, metadata !213, metadata !DIExpression()), !dbg !237
  store i64 0, ptr %highest_pfn, align 8, !dbg !237
  call void @llvm.lifetime.start.p0(i64 8, ptr %def) #11, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %def, metadata !214, metadata !DIExpression()), !dbg !238
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #11, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !215, metadata !DIExpression()), !dbg !239
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #11, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %type, metadata !216, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_trim_size) #11, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %total_trim_size, metadata !217, metadata !DIExpression()), !dbg !243
  call void @llvm.lifetime.start.p0(i64 32, ptr %num) #11, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %num, metadata !218, metadata !DIExpression()), !dbg !245
  %call = call zeroext i1 @mtrr_enabled() #12, !dbg !246
  br i1 %call, label %if.end, label %if.then, !dbg !248

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !249

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !250

cond.true:                                        ; preds = %if.end
  br i1 false, label %lor.lhs.false, label %if.then7, !dbg !252

cond.false:                                       ; preds = %if.end
  br i1 false, label %cond.true1, label %cond.false5, !dbg !250

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !252

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %lor.lhs.false, label %if.then7, !dbg !252

cond.false3:                                      ; preds = %cond.true1
  %call4 = call zeroext i1 @arch_test_bit(i64 noundef 12, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !252
  br i1 %call4, label %lor.lhs.false, label %if.then7, !dbg !252

cond.false5:                                      ; preds = %cond.false
  %call6 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 12) #12, !dbg !252
  br i1 %call6, label %lor.lhs.false, label %if.then7, !dbg !250

lor.lhs.false:                                    ; preds = %cond.false5, %cond.false3, %cond.true2, %cond.true
  %0 = load i32, ptr @disable_mtrr_trim, align 4, !dbg !253
  %tobool = icmp ne i32 %0, 0, !dbg !253
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !254

if.then7:                                         ; preds = %lor.lhs.false, %cond.false5, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !255

if.end8:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !256

do.body:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #11, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !222, metadata !DIExpression()), !dbg !257
  %call9 = call i64 @native_read_msr(i32 noundef 767) #12, !dbg !257
  store i64 %call9, ptr %__val, align 8, !dbg !257
  %1 = load i64, ptr %__val, align 8, !dbg !257
  %conv = trunc i64 %1 to i32, !dbg !257
  %conv10 = zext i32 %conv to i64, !dbg !257
  store i64 %conv10, ptr %def, align 8, !dbg !257
  %2 = load i64, ptr %__val, align 8, !dbg !257
  %shr = lshr i64 %2, 32, !dbg !257
  %conv11 = trunc i64 %shr to i32, !dbg !257
  %conv12 = zext i32 %conv11 to i64, !dbg !257
  store i64 %conv12, ptr %dummy, align 8, !dbg !257
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #11, !dbg !256
  br label %do.cond, !dbg !257

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !257

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %def, align 8, !dbg !258
  %and = and i64 %3, 255, !dbg !258
  store i64 %and, ptr %def, align 8, !dbg !258
  %4 = load i64, ptr %def, align 8, !dbg !259
  %cmp = icmp ne i64 %4, 0, !dbg !261
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !262

if.then14:                                        ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

if.end15:                                         ; preds = %do.end
  call void @llvm.memset.p0.i64(ptr align 16 @range_state, i8 0, i64 6144, i1 false), !dbg !264
  store i64 0, ptr %i, align 8, !dbg !265
  br label %for.cond, !dbg !267

for.cond:                                         ; preds = %for.inc, %if.end15
  %5 = load i64, ptr %i, align 8, !dbg !268
  %6 = load i32, ptr @num_var_ranges, align 4, !dbg !270
  %conv16 = zext i32 %6 to i64, !dbg !270
  %cmp17 = icmp ult i64 %5, %conv16, !dbg !271
  br i1 %cmp17, label %for.body, label %for.end, !dbg !272

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr @mtrr_if, align 8, !dbg !273
  %get = getelementptr inbounds %struct.mtrr_ops, ptr %7, i32 0, i32 2, !dbg !275
  %8 = load ptr, ptr %get, align 8, !dbg !275
  %9 = load i64, ptr %i, align 8, !dbg !276
  %conv19 = trunc i64 %9 to i32, !dbg !276
  call void %8(i32 noundef %conv19, ptr noundef %base, ptr noundef %size, ptr noundef %type) #12, !dbg !273
  %10 = load i64, ptr %base, align 8, !dbg !277
  %11 = load i64, ptr %i, align 8, !dbg !278
  %arrayidx = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %11, !dbg !279
  %base_pfn = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx, i32 0, i32 0, !dbg !280
  store i64 %10, ptr %base_pfn, align 8, !dbg !281
  %12 = load i64, ptr %size, align 8, !dbg !282
  %13 = load i64, ptr %i, align 8, !dbg !283
  %arrayidx20 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %13, !dbg !284
  %size_pfn = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx20, i32 0, i32 1, !dbg !285
  store i64 %12, ptr %size_pfn, align 8, !dbg !286
  %14 = load i8, ptr %type, align 1, !dbg !287
  %15 = load i64, ptr %i, align 8, !dbg !288
  %arrayidx21 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %15, !dbg !289
  %type22 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx21, i32 0, i32 2, !dbg !290
  store i8 %14, ptr %type22, align 8, !dbg !291
  br label %for.inc, !dbg !292

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %i, align 8, !dbg !293
  %inc = add i64 %16, 1, !dbg !293
  store i64 %inc, ptr %i, align 8, !dbg !293
  br label %for.cond, !dbg !294, !llvm.loop !295

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !299
  br label %for.cond23, !dbg !301

for.cond23:                                       ; preds = %for.inc44, %for.end
  %17 = load i64, ptr %i, align 8, !dbg !302
  %18 = load i32, ptr @num_var_ranges, align 4, !dbg !304
  %conv24 = zext i32 %18 to i64, !dbg !304
  %cmp25 = icmp ult i64 %17, %conv24, !dbg !305
  br i1 %cmp25, label %for.body27, label %for.end46, !dbg !306

for.body27:                                       ; preds = %for.cond23
  %19 = load i64, ptr %i, align 8, !dbg !307
  %arrayidx28 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %19, !dbg !309
  %type29 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx28, i32 0, i32 2, !dbg !310
  %20 = load i8, ptr %type29, align 8, !dbg !310
  store i8 %20, ptr %type, align 1, !dbg !311
  %21 = load i8, ptr %type, align 1, !dbg !312
  %conv30 = zext i8 %21 to i32, !dbg !312
  %cmp31 = icmp ne i32 %conv30, 6, !dbg !314
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !315

if.then33:                                        ; preds = %for.body27
  br label %for.inc44, !dbg !316

if.end34:                                         ; preds = %for.body27
  %22 = load i64, ptr %i, align 8, !dbg !317
  %arrayidx35 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %22, !dbg !318
  %base_pfn36 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx35, i32 0, i32 0, !dbg !319
  %23 = load i64, ptr %base_pfn36, align 8, !dbg !319
  store i64 %23, ptr %base, align 8, !dbg !320
  %24 = load i64, ptr %i, align 8, !dbg !321
  %arrayidx37 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %24, !dbg !322
  %size_pfn38 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx37, i32 0, i32 1, !dbg !323
  %25 = load i64, ptr %size_pfn38, align 8, !dbg !323
  store i64 %25, ptr %size, align 8, !dbg !324
  %26 = load i64, ptr %highest_pfn, align 8, !dbg !325
  %27 = load i64, ptr %base, align 8, !dbg !327
  %28 = load i64, ptr %size, align 8, !dbg !328
  %add = add i64 %27, %28, !dbg !329
  %cmp39 = icmp ult i64 %26, %add, !dbg !330
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !331

if.then41:                                        ; preds = %if.end34
  %29 = load i64, ptr %base, align 8, !dbg !332
  %30 = load i64, ptr %size, align 8, !dbg !333
  %add42 = add i64 %29, %30, !dbg !334
  store i64 %add42, ptr %highest_pfn, align 8, !dbg !335
  br label %if.end43, !dbg !336

if.end43:                                         ; preds = %if.then41, %if.end34
  br label %for.inc44, !dbg !337

for.inc44:                                        ; preds = %if.end43, %if.then33
  %31 = load i64, ptr %i, align 8, !dbg !338
  %inc45 = add i64 %31, 1, !dbg !338
  store i64 %inc45, ptr %i, align 8, !dbg !338
  br label %for.cond23, !dbg !339, !llvm.loop !340

for.end46:                                        ; preds = %for.cond23
  %32 = load i64, ptr %highest_pfn, align 8, !dbg !342
  %tobool47 = icmp ne i64 %32, 0, !dbg !342
  br i1 %tobool47, label %if.end53, label %if.then48, !dbg !344

if.then48:                                        ; preds = %for.end46
  br label %do.body49, !dbg !345

do.body49:                                        ; preds = %if.then48
  br label %do.cond50, !dbg !348

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !348

do.end51:                                         ; preds = %do.cond50
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #13, !dbg !345
  store i32 %call52, ptr %tmp, align 4, !dbg !348
  %33 = load i32, ptr %tmp, align 4, !dbg !345
  store i32 0, ptr %retval, align 4, !dbg !350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !350

if.end53:                                         ; preds = %for.end46
  %arraydecay = getelementptr inbounds [8 x i32], ptr %num, i64 0, i64 0, !dbg !351
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 32, i1 false), !dbg !351
  store i64 0, ptr %i, align 8, !dbg !352
  br label %for.cond54, !dbg !354

for.cond54:                                       ; preds = %for.inc73, %if.end53
  %34 = load i64, ptr %i, align 8, !dbg !355
  %35 = load i32, ptr @num_var_ranges, align 4, !dbg !357
  %conv55 = zext i32 %35 to i64, !dbg !357
  %cmp56 = icmp ult i64 %34, %conv55, !dbg !358
  br i1 %cmp56, label %for.body58, label %for.end75, !dbg !359

for.body58:                                       ; preds = %for.cond54
  %36 = load i64, ptr %i, align 8, !dbg !360
  %arrayidx59 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %36, !dbg !362
  %type60 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx59, i32 0, i32 2, !dbg !363
  %37 = load i8, ptr %type60, align 8, !dbg !363
  store i8 %37, ptr %type, align 1, !dbg !364
  %38 = load i8, ptr %type, align 1, !dbg !365
  %conv61 = zext i8 %38 to i32, !dbg !365
  %cmp62 = icmp sge i32 %conv61, 7, !dbg !367
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !368

if.then64:                                        ; preds = %for.body58
  br label %for.inc73, !dbg !369

if.end65:                                         ; preds = %for.body58
  %39 = load i64, ptr %i, align 8, !dbg !370
  %arrayidx66 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %39, !dbg !371
  %size_pfn67 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx66, i32 0, i32 1, !dbg !372
  %40 = load i64, ptr %size_pfn67, align 8, !dbg !372
  store i64 %40, ptr %size, align 8, !dbg !373
  %41 = load i64, ptr %size, align 8, !dbg !374
  %tobool68 = icmp ne i64 %41, 0, !dbg !374
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !376

if.then69:                                        ; preds = %if.end65
  store i8 7, ptr %type, align 1, !dbg !377
  br label %if.end70, !dbg !378

if.end70:                                         ; preds = %if.then69, %if.end65
  %42 = load i8, ptr %type, align 1, !dbg !379
  %idxprom = zext i8 %42 to i64, !dbg !380
  %arrayidx71 = getelementptr [8 x i32], ptr %num, i64 0, i64 %idxprom, !dbg !380
  %43 = load i32, ptr %arrayidx71, align 4, !dbg !381
  %inc72 = add i32 %43, 1, !dbg !381
  store i32 %inc72, ptr %arrayidx71, align 4, !dbg !381
  br label %for.inc73, !dbg !382

for.inc73:                                        ; preds = %if.end70, %if.then64
  %44 = load i64, ptr %i, align 8, !dbg !383
  %inc74 = add i64 %44, 1, !dbg !383
  store i64 %inc74, ptr %i, align 8, !dbg !383
  br label %for.cond54, !dbg !384, !llvm.loop !385

for.end75:                                        ; preds = %for.cond54
  %arrayidx76 = getelementptr [8 x i32], ptr %num, i64 0, i64 6, !dbg !387
  %45 = load i32, ptr %arrayidx76, align 8, !dbg !387
  %tobool77 = icmp ne i32 %45, 0, !dbg !387
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !389

if.then78:                                        ; preds = %for.end75
  store i32 0, ptr %retval, align 4, !dbg !390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !390

if.end79:                                         ; preds = %for.end75
  %arrayidx80 = getelementptr [8 x i32], ptr %num, i64 0, i64 6, !dbg !391
  %46 = load i32, ptr %arrayidx80, align 8, !dbg !391
  %arrayidx81 = getelementptr [8 x i32], ptr %num, i64 0, i64 0, !dbg !393
  %47 = load i32, ptr %arrayidx81, align 16, !dbg !393
  %add82 = add i32 %46, %47, !dbg !394
  %48 = load i32, ptr @num_var_ranges, align 4, !dbg !395
  %arrayidx83 = getelementptr [8 x i32], ptr %num, i64 0, i64 7, !dbg !396
  %49 = load i32, ptr %arrayidx83, align 4, !dbg !396
  %sub = sub i32 %48, %49, !dbg !397
  %cmp84 = icmp ne i32 %add82, %sub, !dbg !398
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !399

if.then86:                                        ; preds = %if.end79
  store i32 0, ptr %retval, align 4, !dbg !400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !400

if.end87:                                         ; preds = %if.end79
  call void @llvm.memset.p0.i64(ptr align 16 @range, i8 0, i64 4096, i1 false), !dbg !401
  store i32 0, ptr @nr_range, align 4, !dbg !402
  %50 = load i64, ptr @mtrr_tom2, align 8, !dbg !403
  %tobool88 = icmp ne i64 %50, 0, !dbg !403
  br i1 %tobool88, label %if.then89, label %if.end106, !dbg !405

if.then89:                                        ; preds = %if.end87
  %51 = load i32, ptr @nr_range, align 4, !dbg !406
  %idxprom90 = sext i32 %51 to i64, !dbg !408
  %arrayidx91 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %idxprom90, !dbg !408
  %start = getelementptr inbounds %struct.range, ptr %arrayidx91, i32 0, i32 0, !dbg !409
  store i64 1048576, ptr %start, align 16, !dbg !410
  %52 = load i64, ptr @mtrr_tom2, align 8, !dbg !411
  %shr92 = lshr i64 %52, 12, !dbg !412
  %53 = load i32, ptr @nr_range, align 4, !dbg !413
  %idxprom93 = sext i32 %53 to i64, !dbg !414
  %arrayidx94 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %idxprom93, !dbg !414
  %end = getelementptr inbounds %struct.range, ptr %arrayidx94, i32 0, i32 1, !dbg !415
  store i64 %shr92, ptr %end, align 8, !dbg !416
  %54 = load i64, ptr %highest_pfn, align 8, !dbg !417
  %55 = load i32, ptr @nr_range, align 4, !dbg !419
  %idxprom95 = sext i32 %55 to i64, !dbg !420
  %arrayidx96 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %idxprom95, !dbg !420
  %end97 = getelementptr inbounds %struct.range, ptr %arrayidx96, i32 0, i32 1, !dbg !421
  %56 = load i64, ptr %end97, align 8, !dbg !421
  %cmp98 = icmp ult i64 %54, %56, !dbg !422
  br i1 %cmp98, label %if.then100, label %if.end104, !dbg !423

if.then100:                                       ; preds = %if.then89
  %57 = load i32, ptr @nr_range, align 4, !dbg !424
  %idxprom101 = sext i32 %57 to i64, !dbg !425
  %arrayidx102 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %idxprom101, !dbg !425
  %end103 = getelementptr inbounds %struct.range, ptr %arrayidx102, i32 0, i32 1, !dbg !426
  %58 = load i64, ptr %end103, align 8, !dbg !426
  store i64 %58, ptr %highest_pfn, align 8, !dbg !427
  br label %if.end104, !dbg !428

if.end104:                                        ; preds = %if.then100, %if.then89
  %59 = load i32, ptr @nr_range, align 4, !dbg !429
  %inc105 = add i32 %59, 1, !dbg !429
  store i32 %inc105, ptr @nr_range, align 4, !dbg !429
  br label %if.end106, !dbg !430

if.end106:                                        ; preds = %if.end104, %if.end87
  %60 = load i32, ptr @nr_range, align 4, !dbg !431
  %call107 = call i32 @x86_get_mtrr_mem_range(ptr noundef @range, i32 noundef %60, i64 noundef 0, i64 noundef 0) #13, !dbg !432
  store i32 %call107, ptr @nr_range, align 4, !dbg !433
  store i64 0, ptr %total_trim_size, align 8, !dbg !434
  %61 = load i64, ptr @range, align 16, !dbg !435
  %tobool108 = icmp ne i64 %61, 0, !dbg !437
  br i1 %tobool108, label %if.then109, label %if.end112, !dbg !438

if.then109:                                       ; preds = %if.end106
  %62 = load i64, ptr @range, align 16, !dbg !439
  %call110 = call i64 @real_trim_memory(i64 noundef 0, i64 noundef %62) #13, !dbg !440
  %63 = load i64, ptr %total_trim_size, align 8, !dbg !441
  %add111 = add i64 %63, %call110, !dbg !441
  store i64 %add111, ptr %total_trim_size, align 8, !dbg !441
  br label %if.end112, !dbg !442

if.end112:                                        ; preds = %if.then109, %if.end106
  store i64 0, ptr %i, align 8, !dbg !443
  br label %for.cond113, !dbg !445

for.cond113:                                      ; preds = %for.inc135, %if.end112
  %64 = load i64, ptr %i, align 8, !dbg !446
  %65 = load i32, ptr @nr_range, align 4, !dbg !448
  %sub114 = sub i32 %65, 1, !dbg !449
  %conv115 = sext i32 %sub114 to i64, !dbg !448
  %cmp116 = icmp ult i64 %64, %conv115, !dbg !450
  br i1 %cmp116, label %for.body118, label %for.end137, !dbg !451

for.body118:                                      ; preds = %for.cond113
  %66 = load i64, ptr %i, align 8, !dbg !452
  %arrayidx119 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %66, !dbg !455
  %end120 = getelementptr inbounds %struct.range, ptr %arrayidx119, i32 0, i32 1, !dbg !456
  %67 = load i64, ptr %end120, align 8, !dbg !456
  %68 = load i64, ptr %i, align 8, !dbg !457
  %add121 = add i64 %68, 1, !dbg !458
  %arrayidx122 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %add121, !dbg !459
  %start123 = getelementptr inbounds %struct.range, ptr %arrayidx122, i32 0, i32 0, !dbg !460
  %69 = load i64, ptr %start123, align 16, !dbg !460
  %cmp124 = icmp ult i64 %67, %69, !dbg !461
  br i1 %cmp124, label %if.then126, label %if.end134, !dbg !462

if.then126:                                       ; preds = %for.body118
  %70 = load i64, ptr %i, align 8, !dbg !463
  %arrayidx127 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %70, !dbg !464
  %end128 = getelementptr inbounds %struct.range, ptr %arrayidx127, i32 0, i32 1, !dbg !465
  %71 = load i64, ptr %end128, align 8, !dbg !465
  %72 = load i64, ptr %i, align 8, !dbg !466
  %add129 = add i64 %72, 1, !dbg !467
  %arrayidx130 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %add129, !dbg !468
  %start131 = getelementptr inbounds %struct.range, ptr %arrayidx130, i32 0, i32 0, !dbg !469
  %73 = load i64, ptr %start131, align 16, !dbg !469
  %call132 = call i64 @real_trim_memory(i64 noundef %71, i64 noundef %73) #13, !dbg !470
  %74 = load i64, ptr %total_trim_size, align 8, !dbg !471
  %add133 = add i64 %74, %call132, !dbg !471
  store i64 %add133, ptr %total_trim_size, align 8, !dbg !471
  br label %if.end134, !dbg !472

if.end134:                                        ; preds = %if.then126, %for.body118
  br label %for.inc135, !dbg !473

for.inc135:                                       ; preds = %if.end134
  %75 = load i64, ptr %i, align 8, !dbg !474
  %inc136 = add i64 %75, 1, !dbg !474
  store i64 %inc136, ptr %i, align 8, !dbg !474
  br label %for.cond113, !dbg !475, !llvm.loop !476

for.end137:                                       ; preds = %for.cond113
  %76 = load i32, ptr @nr_range, align 4, !dbg !478
  %sub138 = sub i32 %76, 1, !dbg !479
  %conv139 = sext i32 %sub138 to i64, !dbg !478
  store i64 %conv139, ptr %i, align 8, !dbg !480
  %77 = load i64, ptr %i, align 8, !dbg !481
  %arrayidx140 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %77, !dbg !483
  %end141 = getelementptr inbounds %struct.range, ptr %arrayidx140, i32 0, i32 1, !dbg !484
  %78 = load i64, ptr %end141, align 8, !dbg !484
  %79 = load i64, ptr %end_pfn.addr, align 8, !dbg !485
  %cmp142 = icmp ult i64 %78, %79, !dbg !486
  br i1 %cmp142, label %if.then144, label %if.end149, !dbg !487

if.then144:                                       ; preds = %for.end137
  %80 = load i64, ptr %i, align 8, !dbg !488
  %arrayidx145 = getelementptr [256 x %struct.range], ptr @range, i64 0, i64 %80, !dbg !489
  %end146 = getelementptr inbounds %struct.range, ptr %arrayidx145, i32 0, i32 1, !dbg !490
  %81 = load i64, ptr %end146, align 8, !dbg !490
  %82 = load i64, ptr %end_pfn.addr, align 8, !dbg !491
  %call147 = call i64 @real_trim_memory(i64 noundef %81, i64 noundef %82) #13, !dbg !492
  %83 = load i64, ptr %total_trim_size, align 8, !dbg !493
  %add148 = add i64 %83, %call147, !dbg !493
  store i64 %add148, ptr %total_trim_size, align 8, !dbg !493
  br label %if.end149, !dbg !494

if.end149:                                        ; preds = %if.then144, %for.end137
  %84 = load i64, ptr %total_trim_size, align 8, !dbg !495
  %tobool150 = icmp ne i64 %84, 0, !dbg !495
  br i1 %tobool150, label %if.then151, label %if.end192, !dbg !496

if.then151:                                       ; preds = %if.end149
  br label %do.body152, !dbg !497

do.body152:                                       ; preds = %if.then151
  br label %do.cond153, !dbg !499

do.cond153:                                       ; preds = %do.body152
  br label %do.end154, !dbg !499

do.end154:                                        ; preds = %do.cond153
  %85 = load i64, ptr %total_trim_size, align 8, !dbg !497
  %shr156 = lshr i64 %85, 20, !dbg !497
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %shr156) #13, !dbg !497
  store i32 %call157, ptr %tmp155, align 4, !dbg !499
  %86 = load i32, ptr %tmp155, align 4, !dbg !497
  %87 = load i32, ptr @changed_by_mtrr_cleanup, align 4, !dbg !501
  %tobool158 = icmp ne i32 %87, 0, !dbg !501
  br i1 %tobool158, label %if.end186, label %if.then159, !dbg !502

if.then159:                                       ; preds = %do.end154
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !224, metadata !DIExpression()), !dbg !503
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !503
  %88 = load i32, ptr %__ret_warn_on, align 4, !dbg !504
  %tobool160 = icmp ne i32 %88, 0, !dbg !504
  %lnot = xor i1 %tobool160, true, !dbg !504
  %lnot161 = xor i1 %lnot, true, !dbg !504
  %lnot.ext = zext i1 %lnot161 to i32, !dbg !504
  %conv162 = sext i32 %lnot.ext to i64, !dbg !504
  %expval = call i64 @llvm.expect.i64(i64 %conv162, i64 0), !dbg !504
  %tobool163 = icmp ne i64 %expval, 0, !dbg !504
  br i1 %tobool163, label %if.then164, label %if.end177, !dbg !503

if.then164:                                       ; preds = %if.then159
  br label %do.body165, !dbg !504

do.body165:                                       ; preds = %if.then164
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !229, metadata !DIExpression()), !dbg !505
  store i32 2305, ptr %__flags, align 4, !dbg !505
  br label %do.body166, !dbg !505

do.body166:                                       ; preds = %do.body165
  br label %do.cond167, !dbg !506

do.cond167:                                       ; preds = %do.body166
  br label %do.end168, !dbg !506

do.end168:                                        ; preds = %do.cond167
  br label %do.body169, !dbg !505

do.body169:                                       ; preds = %do.end168
  %89 = load i32, ptr %__flags, align 4, !dbg !508
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 971, i32 %89, i64 12) #11, !dbg !508, !srcloc !510
  br label %do.cond170, !dbg !508

do.cond170:                                       ; preds = %do.body169
  br label %do.end171, !dbg !508

do.end171:                                        ; preds = %do.cond170
  br label %do.body172, !dbg !505

do.body172:                                       ; preds = %do.end171
  br label %do.cond173, !dbg !511

do.cond173:                                       ; preds = %do.body172
  br label %do.end174, !dbg !511

do.end174:                                        ; preds = %do.cond173
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !504
  br label %do.cond175, !dbg !505

do.cond175:                                       ; preds = %do.end174
  br label %do.end176, !dbg !505

do.end176:                                        ; preds = %do.cond175
  br label %if.end177, !dbg !505

if.end177:                                        ; preds = %do.end176, %if.then159
  %90 = load i32, ptr %__ret_warn_on, align 4, !dbg !503
  %tobool179 = icmp ne i32 %90, 0, !dbg !503
  %lnot180 = xor i1 %tobool179, true, !dbg !503
  %lnot182 = xor i1 %lnot180, true, !dbg !503
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !503
  %conv184 = sext i32 %lnot.ext183 to i64, !dbg !503
  %expval185 = call i64 @llvm.expect.i64(i64 %conv184, i64 0), !dbg !503
  store i64 %expval185, ptr %tmp178, align 8, !dbg !504
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !513
  %91 = load i64, ptr %tmp178, align 8, !dbg !503
  br label %if.end186, !dbg !513

if.end186:                                        ; preds = %if.end177, %do.end154
  br label %do.body187, !dbg !514

do.body187:                                       ; preds = %if.end186
  br label %do.cond188, !dbg !516

do.cond188:                                       ; preds = %do.body187
  br label %do.end189, !dbg !516

do.end189:                                        ; preds = %do.cond188
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #13, !dbg !514
  store i32 %call191, ptr %tmp190, align 4, !dbg !516
  %92 = load i32, ptr %tmp190, align 4, !dbg !514
  call void @e820__update_table_print() #12, !dbg !518
  store i32 1, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end192:                                        ; preds = %if.end149
  store i32 0, ptr %retval, align 4, !dbg !520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !520

cleanup:                                          ; preds = %if.end192, %do.end189, %if.then86, %if.then78, %do.end51, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %num) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_trim_size) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %def) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %highest_pfn) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !521
  %93 = load i32, ptr %retval, align 4, !dbg !521
  ret i32 %93, !dbg !521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mtrr_enabled() #3 align 16 !dbg !522 {
entry:
  %0 = load ptr, ptr @mtrr_if, align 8, !dbg !529
  %tobool = icmp ne ptr %0, null, !dbg !530
  %lnot = xor i1 %tobool, true, !dbg !530
  %lnot1 = xor i1 %lnot, true, !dbg !531
  ret i1 %lnot1, !dbg !532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !533 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !541, metadata !DIExpression()), !dbg !543
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !542, metadata !DIExpression()), !dbg !544
  %0 = load i64, ptr %nr.addr, align 8, !dbg !545
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !546
  br i1 %1, label %cond.true, label %cond.false, !dbg !546

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !547
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !548
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !549
  %conv = zext i1 %call to i32, !dbg !549
  br label %cond.end, !dbg !546

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !550
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !551
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !552
  %conv2 = zext i1 %call1 to i32, !dbg !552
  br label %cond.end, !dbg !546

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !546
  %tobool = icmp ne i32 %cond, 0, !dbg !546
  ret i1 %tobool, !dbg !553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !554 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !562, metadata !DIExpression()), !dbg !565
  %0 = load i16, ptr %bit.addr, align 2, !dbg !566
  %1 = load i16, ptr %bit.addr, align 2, !dbg !567
  %conv = zext i16 %1 to i32, !dbg !567
  %and = and i32 %conv, 7, !dbg !568
  %shl = shl i32 1, %and, !dbg !569
  %2 = load i16, ptr %bit.addr, align 2, !dbg !570
  %conv1 = zext i16 %2 to i32, !dbg !570
  %shr = ashr i32 %conv1, 3, !dbg !571
  %idxprom = sext i32 %shr to i64, !dbg !572
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !572
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #11
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !573, !srcloc !574

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !573

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !563), !dbg !575
  store i1 true, ptr %retval, align 1, !dbg !576
  br label %return, !dbg !576

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !564), !dbg !577
  store i1 false, ptr %retval, align 1, !dbg !578
  br label %return, !dbg !578

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !579
  ret i1 %3, !dbg !579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #3 align 16 !dbg !580 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !584, metadata !DIExpression()), !dbg !586
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %val, metadata !585, metadata !DIExpression()), !dbg !588
  %0 = load i32, ptr %msr.addr, align 4, !dbg !589
  %call = call i64 @__rdmsr(i32 noundef %0) #12, !dbg !590
  store i64 %call, ptr %val, align 8, !dbg !591
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #12, !dbg !592
  br i1 %call1, label %if.then, label %if.end, !dbg !594

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !595
  %2 = load i64, ptr %val, align 8, !dbg !596
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #12, !dbg !597
  br label %if.end, !dbg !597

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !598
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !599
  ret i64 %3, !dbg !600
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !601 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @x86_get_mtrr_mem_range(ptr noundef %range, i32 noundef %nr_range, i64 noundef %extra_remove_base, i64 noundef %extra_remove_size) #0 section ".init.text" align 16 !dbg !605 {
entry:
  %range.addr = alloca ptr, align 8
  %nr_range.addr = alloca i32, align 4
  %extra_remove_base.addr = alloca i64, align 8
  %extra_remove_size.addr = alloca i64, align 8
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  %type = alloca i8, align 1
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %tmp99 = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  %tmp141 = alloca i32, align 4
  %tmp156 = alloca i32, align 4
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !610, metadata !DIExpression()), !dbg !618
  store i32 %nr_range, ptr %nr_range.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_range.addr, metadata !611, metadata !DIExpression()), !dbg !619
  store i64 %extra_remove_base, ptr %extra_remove_base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extra_remove_base.addr, metadata !612, metadata !DIExpression()), !dbg !620
  store i64 %extra_remove_size, ptr %extra_remove_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extra_remove_size.addr, metadata !613, metadata !DIExpression()), !dbg !621
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #11, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %base, metadata !614, metadata !DIExpression()), !dbg !623
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %size, metadata !615, metadata !DIExpression()), !dbg !624
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #11, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %type, metadata !616, metadata !DIExpression()), !dbg !626
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %i, metadata !617, metadata !DIExpression()), !dbg !628
  store i32 0, ptr %i, align 4, !dbg !629
  br label %for.cond, !dbg !631

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !632
  %1 = load i32, ptr @num_var_ranges, align 4, !dbg !634
  %cmp = icmp ult i32 %0, %1, !dbg !635
  br i1 %cmp, label %for.body, label %for.end, !dbg !636

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !637
  %idxprom = sext i32 %2 to i64, !dbg !639
  %arrayidx = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %idxprom, !dbg !639
  %type1 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx, i32 0, i32 2, !dbg !640
  %3 = load i8, ptr %type1, align 8, !dbg !640
  store i8 %3, ptr %type, align 1, !dbg !641
  %4 = load i8, ptr %type, align 1, !dbg !642
  %conv = zext i8 %4 to i32, !dbg !642
  %cmp2 = icmp ne i32 %conv, 6, !dbg !644
  br i1 %cmp2, label %if.then, label %if.end, !dbg !645

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !646

if.end:                                           ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !647
  %idxprom4 = sext i32 %5 to i64, !dbg !648
  %arrayidx5 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %idxprom4, !dbg !648
  %base_pfn = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx5, i32 0, i32 0, !dbg !649
  %6 = load i64, ptr %base_pfn, align 8, !dbg !649
  store i64 %6, ptr %base, align 8, !dbg !650
  %7 = load i32, ptr %i, align 4, !dbg !651
  %idxprom6 = sext i32 %7 to i64, !dbg !652
  %arrayidx7 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %idxprom6, !dbg !652
  %size_pfn = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx7, i32 0, i32 1, !dbg !653
  %8 = load i64, ptr %size_pfn, align 8, !dbg !653
  store i64 %8, ptr %size, align 8, !dbg !654
  %9 = load ptr, ptr %range.addr, align 8, !dbg !655
  %10 = load i32, ptr %nr_range.addr, align 4, !dbg !656
  %11 = load i64, ptr %base, align 8, !dbg !657
  %12 = load i64, ptr %base, align 8, !dbg !658
  %13 = load i64, ptr %size, align 8, !dbg !659
  %add = add i64 %12, %13, !dbg !660
  %call = call i32 @add_range_with_merge(ptr noundef %9, i32 noundef 256, i32 noundef %10, i64 noundef %11, i64 noundef %add) #12, !dbg !661
  store i32 %call, ptr %nr_range.addr, align 4, !dbg !662
  br label %for.inc, !dbg !663

for.inc:                                          ; preds = %if.end, %if.then
  %14 = load i32, ptr %i, align 4, !dbg !664
  %inc = add i32 %14, 1, !dbg !664
  store i32 %inc, ptr %i, align 4, !dbg !664
  br label %for.cond, !dbg !665, !llvm.loop !666

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !668

do.body:                                          ; preds = %for.end
  %15 = load i8, ptr @mtrr_debug, align 1, !dbg !669, !range !672, !noundef !673
  %tobool = trunc i8 %15 to i1, !dbg !669
  br i1 %tobool, label %if.then8, label %if.end11, !dbg !674

if.then8:                                         ; preds = %do.body
  br label %do.body9, !dbg !675

do.body9:                                         ; preds = %if.then8
  br label %do.cond, !dbg !677

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !677

do.end:                                           ; preds = %do.cond
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #13, !dbg !675
  store i32 %call10, ptr %tmp, align 4, !dbg !677
  %16 = load i32, ptr %tmp, align 4, !dbg !675
  br label %if.end11, !dbg !669

if.end11:                                         ; preds = %do.end, %do.body
  br label %do.cond12, !dbg !674

do.cond12:                                        ; preds = %if.end11
  br label %do.end13, !dbg !674

do.end13:                                         ; preds = %do.cond12
  store i32 0, ptr %i, align 4, !dbg !679
  br label %for.cond14, !dbg !681

for.cond14:                                       ; preds = %for.inc33, %do.end13
  %17 = load i32, ptr %i, align 4, !dbg !682
  %18 = load i32, ptr %nr_range.addr, align 4, !dbg !684
  %cmp15 = icmp slt i32 %17, %18, !dbg !685
  br i1 %cmp15, label %for.body17, label %for.end35, !dbg !686

for.body17:                                       ; preds = %for.cond14
  br label %do.body18, !dbg !687

do.body18:                                        ; preds = %for.body17
  %19 = load i8, ptr @mtrr_debug, align 1, !dbg !688, !range !672, !noundef !673
  %tobool19 = trunc i8 %19 to i1, !dbg !688
  br i1 %tobool19, label %if.then20, label %if.end30, !dbg !691

if.then20:                                        ; preds = %do.body18
  br label %do.body21, !dbg !692

do.body21:                                        ; preds = %if.then20
  br label %do.cond22, !dbg !694

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !694

do.end23:                                         ; preds = %do.cond22
  %20 = load ptr, ptr %range.addr, align 8, !dbg !692
  %21 = load i32, ptr %i, align 4, !dbg !692
  %idxprom25 = sext i32 %21 to i64, !dbg !692
  %arrayidx26 = getelementptr %struct.range, ptr %20, i64 %idxprom25, !dbg !692
  %start = getelementptr inbounds %struct.range, ptr %arrayidx26, i32 0, i32 0, !dbg !692
  %22 = load i64, ptr %start, align 8, !dbg !692
  %23 = load ptr, ptr %range.addr, align 8, !dbg !692
  %24 = load i32, ptr %i, align 4, !dbg !692
  %idxprom27 = sext i32 %24 to i64, !dbg !692
  %arrayidx28 = getelementptr %struct.range, ptr %23, i64 %idxprom27, !dbg !692
  %end = getelementptr inbounds %struct.range, ptr %arrayidx28, i32 0, i32 1, !dbg !692
  %25 = load i64, ptr %end, align 8, !dbg !692
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %22, i64 noundef %25) #13, !dbg !692
  store i32 %call29, ptr %tmp24, align 4, !dbg !694
  %26 = load i32, ptr %tmp24, align 4, !dbg !692
  br label %if.end30, !dbg !688

if.end30:                                         ; preds = %do.end23, %do.body18
  br label %do.cond31, !dbg !691

do.cond31:                                        ; preds = %if.end30
  br label %do.end32, !dbg !691

do.end32:                                         ; preds = %do.cond31
  br label %for.inc33, !dbg !691

for.inc33:                                        ; preds = %do.end32
  %27 = load i32, ptr %i, align 4, !dbg !696
  %inc34 = add i32 %27, 1, !dbg !696
  store i32 %inc34, ptr %i, align 4, !dbg !696
  br label %for.cond14, !dbg !697, !llvm.loop !698

for.end35:                                        ; preds = %for.cond14
  store i32 0, ptr %i, align 4, !dbg !700
  br label %for.cond36, !dbg !702

for.cond36:                                       ; preds = %for.inc86, %for.end35
  %28 = load i32, ptr %i, align 4, !dbg !703
  %29 = load i32, ptr @num_var_ranges, align 4, !dbg !705
  %cmp37 = icmp ult i32 %28, %29, !dbg !706
  br i1 %cmp37, label %for.body39, label %for.end88, !dbg !707

for.body39:                                       ; preds = %for.cond36
  %30 = load i32, ptr %i, align 4, !dbg !708
  %idxprom40 = sext i32 %30 to i64, !dbg !710
  %arrayidx41 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %idxprom40, !dbg !710
  %type42 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx41, i32 0, i32 2, !dbg !711
  %31 = load i8, ptr %type42, align 8, !dbg !711
  store i8 %31, ptr %type, align 1, !dbg !712
  %32 = load i8, ptr %type, align 1, !dbg !713
  %conv43 = zext i8 %32 to i32, !dbg !713
  %cmp44 = icmp ne i32 %conv43, 0, !dbg !715
  br i1 %cmp44, label %land.lhs.true, label %if.end50, !dbg !716

land.lhs.true:                                    ; preds = %for.body39
  %33 = load i8, ptr %type, align 1, !dbg !717
  %conv46 = zext i8 %33 to i32, !dbg !717
  %cmp47 = icmp ne i32 %conv46, 5, !dbg !718
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !719

if.then49:                                        ; preds = %land.lhs.true
  br label %for.inc86, !dbg !720

if.end50:                                         ; preds = %land.lhs.true, %for.body39
  %34 = load i32, ptr %i, align 4, !dbg !721
  %idxprom51 = sext i32 %34 to i64, !dbg !722
  %arrayidx52 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %idxprom51, !dbg !722
  %size_pfn53 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx52, i32 0, i32 1, !dbg !723
  %35 = load i64, ptr %size_pfn53, align 8, !dbg !723
  store i64 %35, ptr %size, align 8, !dbg !724
  %36 = load i64, ptr %size, align 8, !dbg !725
  %tobool54 = icmp ne i64 %36, 0, !dbg !725
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !727

if.then55:                                        ; preds = %if.end50
  br label %for.inc86, !dbg !728

if.end56:                                         ; preds = %if.end50
  %37 = load i32, ptr %i, align 4, !dbg !729
  %idxprom57 = sext i32 %37 to i64, !dbg !730
  %arrayidx58 = getelementptr [256 x %struct.var_mtrr_range_state], ptr @range_state, i64 0, i64 %idxprom57, !dbg !730
  %base_pfn59 = getelementptr inbounds %struct.var_mtrr_range_state, ptr %arrayidx58, i32 0, i32 0, !dbg !731
  %38 = load i64, ptr %base_pfn59, align 8, !dbg !731
  store i64 %38, ptr %base, align 8, !dbg !732
  %39 = load i64, ptr %base, align 8, !dbg !733
  %cmp60 = icmp ult i64 %39, 256, !dbg !735
  br i1 %cmp60, label %land.lhs.true62, label %if.end84, !dbg !736

land.lhs.true62:                                  ; preds = %if.end56
  %40 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 3), align 1, !dbg !737, !range !672, !noundef !673
  %tobool63 = trunc i8 %40 to i1, !dbg !737
  br i1 %tobool63, label %land.lhs.true65, label %if.end84, !dbg !738

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %41 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !739
  %conv66 = zext i8 %41 to i64, !dbg !740
  %and = and i64 %conv66, 2, !dbg !741
  %tobool67 = icmp ne i64 %and, 0, !dbg !741
  br i1 %tobool67, label %land.lhs.true68, label %if.end84, !dbg !742

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %42 = load i8, ptr getelementptr inbounds (%struct.mtrr_state_type, ptr @mtrr_state, i32 0, i32 2), align 4, !dbg !743
  %conv69 = zext i8 %42 to i64, !dbg !744
  %and70 = and i64 %conv69, 1, !dbg !745
  %tobool71 = icmp ne i64 %and70, 0, !dbg !745
  br i1 %tobool71, label %if.then72, label %if.end84, !dbg !746

if.then72:                                        ; preds = %land.lhs.true68
  br label %do.body73, !dbg !747

do.body73:                                        ; preds = %if.then72
  br label %do.cond74, !dbg !750

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !750

do.end75:                                         ; preds = %do.cond74
  %43 = load i32, ptr %i, align 4, !dbg !747
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %43) #13, !dbg !747
  store i32 %call77, ptr %tmp76, align 4, !dbg !750
  %44 = load i32, ptr %tmp76, align 4, !dbg !747
  %45 = load i64, ptr %base, align 8, !dbg !752
  %46 = load i64, ptr %size, align 8, !dbg !754
  %add78 = add i64 %45, %46, !dbg !755
  %cmp79 = icmp ule i64 %add78, 256, !dbg !756
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !757

if.then81:                                        ; preds = %do.end75
  br label %for.inc86, !dbg !758

if.end82:                                         ; preds = %do.end75
  %47 = load i64, ptr %base, align 8, !dbg !759
  %sub = sub i64 256, %47, !dbg !760
  %48 = load i64, ptr %size, align 8, !dbg !761
  %sub83 = sub i64 %48, %sub, !dbg !761
  store i64 %sub83, ptr %size, align 8, !dbg !761
  store i64 256, ptr %base, align 8, !dbg !762
  br label %if.end84, !dbg !763

if.end84:                                         ; preds = %if.end82, %land.lhs.true68, %land.lhs.true65, %land.lhs.true62, %if.end56
  %49 = load ptr, ptr %range.addr, align 8, !dbg !764
  %50 = load i64, ptr %base, align 8, !dbg !765
  %51 = load i64, ptr %base, align 8, !dbg !766
  %52 = load i64, ptr %size, align 8, !dbg !767
  %add85 = add i64 %51, %52, !dbg !768
  call void @subtract_range(ptr noundef %49, i32 noundef 256, i64 noundef %50, i64 noundef %add85) #12, !dbg !769
  br label %for.inc86, !dbg !770

for.inc86:                                        ; preds = %if.end84, %if.then81, %if.then55, %if.then49
  %53 = load i32, ptr %i, align 4, !dbg !771
  %inc87 = add i32 %53, 1, !dbg !771
  store i32 %inc87, ptr %i, align 4, !dbg !771
  br label %for.cond36, !dbg !772, !llvm.loop !773

for.end88:                                        ; preds = %for.cond36
  %54 = load i64, ptr %extra_remove_size.addr, align 8, !dbg !775
  %tobool89 = icmp ne i64 %54, 0, !dbg !775
  br i1 %tobool89, label %if.then90, label %if.end92, !dbg !777

if.then90:                                        ; preds = %for.end88
  %55 = load ptr, ptr %range.addr, align 8, !dbg !778
  %56 = load i64, ptr %extra_remove_base.addr, align 8, !dbg !779
  %57 = load i64, ptr %extra_remove_base.addr, align 8, !dbg !780
  %58 = load i64, ptr %extra_remove_size.addr, align 8, !dbg !781
  %add91 = add i64 %57, %58, !dbg !782
  call void @subtract_range(ptr noundef %55, i32 noundef 256, i64 noundef %56, i64 noundef %add91) #12, !dbg !783
  br label %if.end92, !dbg !783

if.end92:                                         ; preds = %if.then90, %for.end88
  br label %do.body93, !dbg !784

do.body93:                                        ; preds = %if.end92
  %59 = load i8, ptr @mtrr_debug, align 1, !dbg !785, !range !672, !noundef !673
  %tobool94 = trunc i8 %59 to i1, !dbg !785
  br i1 %tobool94, label %if.then95, label %if.end101, !dbg !788

if.then95:                                        ; preds = %do.body93
  br label %do.body96, !dbg !789

do.body96:                                        ; preds = %if.then95
  br label %do.cond97, !dbg !791

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !791

do.end98:                                         ; preds = %do.cond97
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #13, !dbg !789
  store i32 %call100, ptr %tmp99, align 4, !dbg !791
  %60 = load i32, ptr %tmp99, align 4, !dbg !789
  br label %if.end101, !dbg !785

if.end101:                                        ; preds = %do.end98, %do.body93
  br label %do.cond102, !dbg !788

do.cond102:                                       ; preds = %if.end101
  br label %do.end103, !dbg !788

do.end103:                                        ; preds = %do.cond102
  store i32 0, ptr %i, align 4, !dbg !793
  br label %for.cond104, !dbg !795

for.cond104:                                      ; preds = %for.inc131, %do.end103
  %61 = load i32, ptr %i, align 4, !dbg !796
  %cmp105 = icmp slt i32 %61, 256, !dbg !798
  br i1 %cmp105, label %for.body107, label %for.end133, !dbg !799

for.body107:                                      ; preds = %for.cond104
  %62 = load ptr, ptr %range.addr, align 8, !dbg !800
  %63 = load i32, ptr %i, align 4, !dbg !803
  %idxprom108 = sext i32 %63 to i64, !dbg !800
  %arrayidx109 = getelementptr %struct.range, ptr %62, i64 %idxprom108, !dbg !800
  %end110 = getelementptr inbounds %struct.range, ptr %arrayidx109, i32 0, i32 1, !dbg !804
  %64 = load i64, ptr %end110, align 8, !dbg !804
  %tobool111 = icmp ne i64 %64, 0, !dbg !800
  br i1 %tobool111, label %if.end113, label %if.then112, !dbg !805

if.then112:                                       ; preds = %for.body107
  br label %for.inc131, !dbg !806

if.end113:                                        ; preds = %for.body107
  br label %do.body114, !dbg !807

do.body114:                                       ; preds = %if.end113
  %65 = load i8, ptr @mtrr_debug, align 1, !dbg !808, !range !672, !noundef !673
  %tobool115 = trunc i8 %65 to i1, !dbg !808
  br i1 %tobool115, label %if.then116, label %if.end128, !dbg !811

if.then116:                                       ; preds = %do.body114
  br label %do.body117, !dbg !812

do.body117:                                       ; preds = %if.then116
  br label %do.cond118, !dbg !814

do.cond118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !814

do.end119:                                        ; preds = %do.cond118
  %66 = load ptr, ptr %range.addr, align 8, !dbg !812
  %67 = load i32, ptr %i, align 4, !dbg !812
  %idxprom121 = sext i32 %67 to i64, !dbg !812
  %arrayidx122 = getelementptr %struct.range, ptr %66, i64 %idxprom121, !dbg !812
  %start123 = getelementptr inbounds %struct.range, ptr %arrayidx122, i32 0, i32 0, !dbg !812
  %68 = load i64, ptr %start123, align 8, !dbg !812
  %69 = load ptr, ptr %range.addr, align 8, !dbg !812
  %70 = load i32, ptr %i, align 4, !dbg !812
  %idxprom124 = sext i32 %70 to i64, !dbg !812
  %arrayidx125 = getelementptr %struct.range, ptr %69, i64 %idxprom124, !dbg !812
  %end126 = getelementptr inbounds %struct.range, ptr %arrayidx125, i32 0, i32 1, !dbg !812
  %71 = load i64, ptr %end126, align 8, !dbg !812
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %68, i64 noundef %71) #13, !dbg !812
  store i32 %call127, ptr %tmp120, align 4, !dbg !814
  %72 = load i32, ptr %tmp120, align 4, !dbg !812
  br label %if.end128, !dbg !808

if.end128:                                        ; preds = %do.end119, %do.body114
  br label %do.cond129, !dbg !811

do.cond129:                                       ; preds = %if.end128
  br label %do.end130, !dbg !811

do.end130:                                        ; preds = %do.cond129
  br label %for.inc131, !dbg !816

for.inc131:                                       ; preds = %do.end130, %if.then112
  %73 = load i32, ptr %i, align 4, !dbg !817
  %inc132 = add i32 %73, 1, !dbg !817
  store i32 %inc132, ptr %i, align 4, !dbg !817
  br label %for.cond104, !dbg !818, !llvm.loop !819

for.end133:                                       ; preds = %for.cond104
  %74 = load ptr, ptr %range.addr, align 8, !dbg !821
  %call134 = call i32 @clean_sort_range(ptr noundef %74, i32 noundef 256) #12, !dbg !822
  store i32 %call134, ptr %nr_range.addr, align 4, !dbg !823
  br label %do.body135, !dbg !824

do.body135:                                       ; preds = %for.end133
  %75 = load i8, ptr @mtrr_debug, align 1, !dbg !825, !range !672, !noundef !673
  %tobool136 = trunc i8 %75 to i1, !dbg !825
  br i1 %tobool136, label %if.then137, label %if.end143, !dbg !828

if.then137:                                       ; preds = %do.body135
  br label %do.body138, !dbg !829

do.body138:                                       ; preds = %if.then137
  br label %do.cond139, !dbg !831

do.cond139:                                       ; preds = %do.body138
  br label %do.end140, !dbg !831

do.end140:                                        ; preds = %do.cond139
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #13, !dbg !829
  store i32 %call142, ptr %tmp141, align 4, !dbg !831
  %76 = load i32, ptr %tmp141, align 4, !dbg !829
  br label %if.end143, !dbg !825

if.end143:                                        ; preds = %do.end140, %do.body135
  br label %do.cond144, !dbg !828

do.cond144:                                       ; preds = %if.end143
  br label %do.end145, !dbg !828

do.end145:                                        ; preds = %do.cond144
  store i32 0, ptr %i, align 4, !dbg !833
  br label %for.cond146, !dbg !835

for.cond146:                                      ; preds = %for.inc167, %do.end145
  %77 = load i32, ptr %i, align 4, !dbg !836
  %78 = load i32, ptr %nr_range.addr, align 4, !dbg !838
  %cmp147 = icmp slt i32 %77, %78, !dbg !839
  br i1 %cmp147, label %for.body149, label %for.end169, !dbg !840

for.body149:                                      ; preds = %for.cond146
  br label %do.body150, !dbg !841

do.body150:                                       ; preds = %for.body149
  %79 = load i8, ptr @mtrr_debug, align 1, !dbg !842, !range !672, !noundef !673
  %tobool151 = trunc i8 %79 to i1, !dbg !842
  br i1 %tobool151, label %if.then152, label %if.end164, !dbg !845

if.then152:                                       ; preds = %do.body150
  br label %do.body153, !dbg !846

do.body153:                                       ; preds = %if.then152
  br label %do.cond154, !dbg !848

do.cond154:                                       ; preds = %do.body153
  br label %do.end155, !dbg !848

do.end155:                                        ; preds = %do.cond154
  %80 = load ptr, ptr %range.addr, align 8, !dbg !846
  %81 = load i32, ptr %i, align 4, !dbg !846
  %idxprom157 = sext i32 %81 to i64, !dbg !846
  %arrayidx158 = getelementptr %struct.range, ptr %80, i64 %idxprom157, !dbg !846
  %start159 = getelementptr inbounds %struct.range, ptr %arrayidx158, i32 0, i32 0, !dbg !846
  %82 = load i64, ptr %start159, align 8, !dbg !846
  %83 = load ptr, ptr %range.addr, align 8, !dbg !846
  %84 = load i32, ptr %i, align 4, !dbg !846
  %idxprom160 = sext i32 %84 to i64, !dbg !846
  %arrayidx161 = getelementptr %struct.range, ptr %83, i64 %idxprom160, !dbg !846
  %end162 = getelementptr inbounds %struct.range, ptr %arrayidx161, i32 0, i32 1, !dbg !846
  %85 = load i64, ptr %end162, align 8, !dbg !846
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i64 noundef %82, i64 noundef %85) #13, !dbg !846
  store i32 %call163, ptr %tmp156, align 4, !dbg !848
  %86 = load i32, ptr %tmp156, align 4, !dbg !846
  br label %if.end164, !dbg !842

if.end164:                                        ; preds = %do.end155, %do.body150
  br label %do.cond165, !dbg !845

do.cond165:                                       ; preds = %if.end164
  br label %do.end166, !dbg !845

do.end166:                                        ; preds = %do.cond165
  br label %for.inc167, !dbg !845

for.inc167:                                       ; preds = %do.end166
  %87 = load i32, ptr %i, align 4, !dbg !850
  %inc168 = add i32 %87, 1, !dbg !850
  store i32 %inc168, ptr %i, align 4, !dbg !850
  br label %for.cond146, !dbg !851, !llvm.loop !852

for.end169:                                       ; preds = %for.cond146
  %88 = load i32, ptr %nr_range.addr, align 4, !dbg !854
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !855
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #11, !dbg !855
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !855
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #11, !dbg !855
  ret i32 %88, !dbg !856
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @real_trim_memory(i64 noundef %start_pfn, i64 noundef %limit_pfn) #0 section ".init.text" align 16 !dbg !857 {
entry:
  %start_pfn.addr = alloca i64, align 8
  %limit_pfn.addr = alloca i64, align 8
  %trim_start = alloca i64, align 8
  %trim_size = alloca i64, align 8
  store i64 %start_pfn, ptr %start_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_pfn.addr, metadata !861, metadata !DIExpression()), !dbg !865
  store i64 %limit_pfn, ptr %limit_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit_pfn.addr, metadata !862, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 8, ptr %trim_start) #11, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %trim_start, metadata !863, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %trim_size) #11, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %trim_size, metadata !864, metadata !DIExpression()), !dbg !869
  %0 = load i64, ptr %start_pfn.addr, align 8, !dbg !870
  store i64 %0, ptr %trim_start, align 8, !dbg !871
  %1 = load i64, ptr %trim_start, align 8, !dbg !872
  %shl = shl i64 %1, 12, !dbg !872
  store i64 %shl, ptr %trim_start, align 8, !dbg !872
  %2 = load i64, ptr %limit_pfn.addr, align 8, !dbg !873
  store i64 %2, ptr %trim_size, align 8, !dbg !874
  %3 = load i64, ptr %trim_size, align 8, !dbg !875
  %shl1 = shl i64 %3, 12, !dbg !875
  store i64 %shl1, ptr %trim_size, align 8, !dbg !875
  %4 = load i64, ptr %trim_start, align 8, !dbg !876
  %5 = load i64, ptr %trim_size, align 8, !dbg !877
  %sub = sub i64 %5, %4, !dbg !877
  store i64 %sub, ptr %trim_size, align 8, !dbg !877
  %6 = load i64, ptr %trim_start, align 8, !dbg !878
  %7 = load i64, ptr %trim_size, align 8, !dbg !879
  %call = call i64 @e820__range_update(i64 noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 2) #12, !dbg !880
  call void @llvm.lifetime.end.p0(i64 8, ptr %trim_size) #11, !dbg !881
  call void @llvm.lifetime.end.p0(i64 8, ptr %trim_start) #11, !dbg !881
  ret i64 %call, !dbg !882
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !883 dso_local void @e820__update_table_print() #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !887 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !917, metadata !DIExpression()), !dbg !918
  %0 = load ptr, ptr %key.addr, align 8, !dbg !919
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !920
  ret i1 %call, !dbg !921
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !922 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !925 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !930, metadata !DIExpression()), !dbg !933
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !931, metadata !DIExpression()), !dbg !934
  %0 = load ptr, ptr %key.addr, align 8, !dbg !935
  %1 = load i8, ptr %branch.addr, align 1, !dbg !936, !range !672, !noundef !673
  %tobool = trunc i8 %1 to i1, !dbg !936
  %conv = zext i1 %tobool to i32, !dbg !936
  %or = or i32 2, %conv, !dbg !937
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !938, !srcloc !939

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !940
  br label %return, !dbg !940

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !932), !dbg !941
  store i1 true, ptr %retval, align 1, !dbg !942
  br label %return, !dbg !942

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !943
  ret i1 %2, !dbg !943
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !944 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !948, metadata !DIExpression()), !dbg !950
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !949, metadata !DIExpression()), !dbg !951
  %0 = load i64, ptr %nr.addr, align 8, !dbg !952
  %and = and i64 %0, 63, !dbg !953
  %shl = shl i64 1, %and, !dbg !954
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !955
  %2 = load i64, ptr %nr.addr, align 8, !dbg !956
  %shr = ashr i64 %2, 6, !dbg !957
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !955
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !955
  %and1 = and i64 %shl, %3, !dbg !958
  %cmp = icmp ne i64 %and1, 0, !dbg !959
  ret i1 %cmp, !dbg !960
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !961 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !963, metadata !DIExpression()), !dbg !966
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !964, metadata !DIExpression()), !dbg !967
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !968
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !965, metadata !DIExpression()), !dbg !969
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !970
  %1 = load i64, ptr %nr.addr, align 8, !dbg !971
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !972, !srcloc !973
  %3 = icmp ult i8 %2, 2, !dbg !972
  call void @llvm.assume(i1 %3), !dbg !972
  store i8 %2, ptr %oldbit, align 1, !dbg !972
  %4 = load i8, ptr %oldbit, align 1, !dbg !974, !range !672, !noundef !673
  %tobool = trunc i8 %4 to i1, !dbg !974
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !975
  ret i1 %tobool, !dbg !976
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #4 align 16 !dbg !977 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !979, metadata !DIExpression()), !dbg !982
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #11, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %low, metadata !980, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #11, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %high, metadata !981, metadata !DIExpression()), !dbg !983
  %0 = load i32, ptr %msr.addr, align 4, !dbg !984
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !985, !srcloc !986
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !985
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !985
  store i64 %asmresult, ptr %low, align 8, !dbg !985
  store i64 %asmresult1, ptr %high, align 8, !dbg !985
  %2 = load i64, ptr %low, align 8, !dbg !987
  %3 = load i64, ptr %high, align 8, !dbg !987
  %shl = shl i64 %3, 32, !dbg !987
  %or = or i64 %2, %shl, !dbg !987
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #11, !dbg !988
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #11, !dbg !988
  ret i64 %or, !dbg !989
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !990 dso_local i32 @add_range_with_merge(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !993 dso_local void @subtract_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !996 dso_local i32 @clean_sort_range(ptr noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !999 dso_local i64 @e820__range_update(i64 noundef, i64 noundef, i32 noundef, i32 noundef) #8

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_disable_mtrr_trim_setup", scope: !2, file: !3, line: 808, type: !115, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/mtrr/.cleanup.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mtrr/cleanup\22 -D KBUILD_BASENAME=\22cleanup\22 -D KBUILD_MODNAME=\22cleanup\22 -D __KBUILD_MODNAME=kmod_cleanup -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mtrr/cleanup.ll arch/x86/kernel/cpu/mtrr/cleanup.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/mtrr/cleanup.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "521a593989de3d68e12f456e8b873a05")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !12, line: 10, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!14 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!15 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!16 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!17 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!18 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!19 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!20 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!21 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!22 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!23 = !{!24, !28, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !{!35, !47, !52, !57, !62, !67, !80, !82, !94, !0, !96, !101, !103, !108, !110}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__setup_disable_mtrr_trim_setup", scope: !2, file: !3, line: 808, type: !37, isLocal: true, isDefinition: true, align: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !38, line: 324, size: 192, elements: !39)
!38 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!39 = !{!40, !41, !46}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !37, file: !38, line: 325, baseType: !31, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !37, file: !38, line: 326, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!28, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !37, file: !38, line: 327, baseType: !28, size: 32, offset: 128)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 912, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 360, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 45)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 967, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 648, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 81)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 971, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 280, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 35)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 973, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "range", scope: !2, file: !3, line: 53, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32768, elements: !78)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !71, line: 6, size: 128, elements: !72)
!71 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!72 = !{!73, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !70, file: !71, line: 7, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !76)
!76 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !70, file: !71, line: 8, baseType: !74, size: 64, offset: 64)
!78 = !{!79}
!79 = !DISubrange(count: 256)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "nr_range", scope: !2, file: !3, line: 54, type: !28, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "range_state", scope: !2, file: !3, line: 56, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 49152, elements: !78)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_mtrr_range_state", file: !3, line: 36, size: 192, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !85, file: !3, line: 37, baseType: !30, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "size_pfn", scope: !85, file: !3, line: 38, baseType: !30, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !3, line: 39, baseType: !90, size: 8, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "mtrr_type", file: !91, line: 79, baseType: !92)
!91 = !DIFile(filename: "./arch/x86/include/uapi/asm/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec45d3f08a98ea4c76b6e3b4c69c8d40")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !93)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "disable_mtrr_trim", scope: !2, file: !3, line: 801, type: !28, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 168, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 21)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !59, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 808, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 101)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !98, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 136, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 17)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 144, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 18)
!118 = !{i32 7, !"Dwarf Version", i32 5}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 8, !"cf-protection-branch", i32 1}
!122 = !{i32 4, !"function_return_thunk_extern", i32 1}
!123 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!124 = !{i32 1, !"Code Model", i32 2}
!125 = !{i32 1, !"override-stack-alignment", i32 8}
!126 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!127 = distinct !DISubprogram(name: "mtrr_cleanup", scope: !3, file: !3, line: 795, type: !128, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!128 = !DISubroutineType(types: !129)
!129 = !{!28}
!130 = !DILocation(line: 797, column: 2, scope: !127)
!131 = distinct !DISubprogram(name: "disable_mtrr_trim_setup", scope: !3, file: !3, line: 803, type: !43, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!132 = !{!133}
!133 = !DILocalVariable(name: "str", arg: 1, scope: !131, file: !3, line: 803, type: !45)
!134 = !DILocation(line: 803, column: 49, scope: !131)
!135 = !DILocation(line: 805, column: 20, scope: !131)
!136 = !DILocation(line: 806, column: 2, scope: !131)
!137 = distinct !DISubprogram(name: "amd_special_default_mtrr", scope: !3, file: !3, line: 819, type: !128, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!138 = !{!139, !140, !141, !144}
!139 = !DILocalVariable(name: "l", scope: !137, file: !3, line: 821, type: !24)
!140 = !DILocalVariable(name: "h", scope: !137, file: !3, line: 821, type: !24)
!141 = !DILocalVariable(name: "__err", scope: !142, file: !3, line: 829, type: !28)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 829, column: 6)
!143 = distinct !DILexicalBlock(scope: !137, file: !3, line: 829, column: 6)
!144 = !DILocalVariable(name: "__val", scope: !142, file: !3, line: 829, type: !74)
!145 = !DILocation(line: 821, column: 2, scope: !137)
!146 = !DILocation(line: 821, column: 6, scope: !137)
!147 = !DILocation(line: 821, column: 9, scope: !137)
!148 = !DILocation(line: 823, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !3, line: 823, column: 6)
!150 = !DILocation(line: 823, column: 6, scope: !149)
!151 = !DILocation(line: 823, column: 31, scope: !149)
!152 = !DILocation(line: 823, column: 49, scope: !149)
!153 = !DILocation(line: 824, column: 20, scope: !149)
!154 = !DILocation(line: 824, column: 6, scope: !149)
!155 = !DILocation(line: 824, column: 31, scope: !149)
!156 = !DILocation(line: 823, column: 6, scope: !137)
!157 = !DILocation(line: 825, column: 3, scope: !149)
!158 = !DILocation(line: 826, column: 20, scope: !159)
!159 = distinct !DILexicalBlock(scope: !137, file: !3, line: 826, column: 6)
!160 = !DILocation(line: 826, column: 6, scope: !159)
!161 = !DILocation(line: 826, column: 24, scope: !159)
!162 = !DILocation(line: 826, column: 6, scope: !137)
!163 = !DILocation(line: 827, column: 3, scope: !159)
!164 = !DILocation(line: 829, column: 6, scope: !142)
!165 = !DILocation(line: 829, column: 6, scope: !143)
!166 = !DILocation(line: 829, column: 43, scope: !143)
!167 = !DILocation(line: 829, column: 6, scope: !137)
!168 = !DILocation(line: 830, column: 3, scope: !143)
!169 = !DILocation(line: 835, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !137, file: !3, line: 835, column: 6)
!171 = !DILocation(line: 835, column: 9, scope: !170)
!172 = !DILocation(line: 835, column: 47, scope: !170)
!173 = !DILocation(line: 835, column: 6, scope: !137)
!174 = !DILocation(line: 837, column: 3, scope: !170)
!175 = !DILocation(line: 838, column: 2, scope: !137)
!176 = !DILocation(line: 839, column: 1, scope: !137)
!177 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !178, file: !178, line: 126, type: !179, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!178 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!179 = !DISubroutineType(types: !180)
!180 = !{!76, !7, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(name: "msr", arg: 1, scope: !177, file: !178, line: 126, type: !7)
!184 = !DILocalVariable(name: "err", arg: 2, scope: !177, file: !178, line: 127, type: !181)
!185 = !DILocalVariable(name: "low", scope: !177, file: !178, line: 129, type: !30)
!186 = !DILocalVariable(name: "high", scope: !177, file: !178, line: 129, type: !30)
!187 = !DILocation(line: 126, column: 68, scope: !177)
!188 = !DILocation(line: 127, column: 18, scope: !177)
!189 = !DILocation(line: 129, column: 2, scope: !177)
!190 = !DILocation(line: 134, column: 23, scope: !177)
!191 = !DILocation(line: 135, column: 15, scope: !177)
!192 = !DILocation(line: 131, column: 2, scope: !177)
!193 = !{i64 2126894, i64 2126935, i64 2126939, i64 2149628501, i64 2149628526, i64 2149628561, i64 2149628778, i64 2149628831, i64 2149628862, i64 2149628893, i64 2149628971, i64 2149629005, i64 2149629043, i64 2149629086, i64 2149629109, i64 2149629147, i64 2149629169, i64 2149629200, i64 2149629285, i64 2149629319, i64 2149629357, i64 2149629400, i64 2149629423, i64 2149629461, i64 2149629483, i64 2149629517, i64 2149629579, i64 2149629602, i64 2149628627, i64 2149629676, i64 2149628738}
!194 = !DILocation(line: 136, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !177, file: !178, line: 136, column: 6)
!196 = !DILocation(line: 136, column: 6, scope: !177)
!197 = !DILocation(line: 137, column: 21, scope: !195)
!198 = !DILocation(line: 137, column: 26, scope: !195)
!199 = !DILocation(line: 137, column: 56, scope: !195)
!200 = !DILocation(line: 137, column: 55, scope: !195)
!201 = !DILocation(line: 137, column: 3, scope: !195)
!202 = !DILocation(line: 138, column: 9, scope: !177)
!203 = !DILocation(line: 139, column: 1, scope: !177)
!204 = !DILocation(line: 138, column: 2, scope: !177)
!205 = distinct !DISubprogram(name: "mtrr_trim_uncached_memory", scope: !3, file: !3, line: 867, type: !206, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!28, !30}
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !222, !224, !229}
!209 = !DILocalVariable(name: "end_pfn", arg: 1, scope: !205, file: !3, line: 867, type: !30)
!210 = !DILocalVariable(name: "i", scope: !205, file: !3, line: 869, type: !30)
!211 = !DILocalVariable(name: "base", scope: !205, file: !3, line: 869, type: !30)
!212 = !DILocalVariable(name: "size", scope: !205, file: !3, line: 869, type: !30)
!213 = !DILocalVariable(name: "highest_pfn", scope: !205, file: !3, line: 869, type: !30)
!214 = !DILocalVariable(name: "def", scope: !205, file: !3, line: 869, type: !30)
!215 = !DILocalVariable(name: "dummy", scope: !205, file: !3, line: 869, type: !30)
!216 = !DILocalVariable(name: "type", scope: !205, file: !3, line: 870, type: !90)
!217 = !DILocalVariable(name: "total_trim_size", scope: !205, file: !3, line: 871, type: !74)
!218 = !DILocalVariable(name: "num", scope: !205, file: !3, line: 873, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 8)
!222 = !DILocalVariable(name: "__val", scope: !223, file: !3, line: 885, type: !74)
!223 = distinct !DILexicalBlock(scope: !205, file: !3, line: 885, column: 2)
!224 = !DILocalVariable(name: "__ret_warn_on", scope: !225, file: !3, line: 971, type: !28)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 971, column: 4)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 970, column: 7)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 966, column: 23)
!228 = distinct !DILexicalBlock(scope: !205, file: !3, line: 966, column: 6)
!229 = !DILocalVariable(name: "__flags", scope: !230, file: !3, line: 971, type: !28)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 971, column: 4)
!231 = distinct !DILexicalBlock(scope: !225, file: !3, line: 971, column: 4)
!232 = !DILocation(line: 867, column: 52, scope: !205)
!233 = !DILocation(line: 869, column: 2, scope: !205)
!234 = !DILocation(line: 869, column: 16, scope: !205)
!235 = !DILocation(line: 869, column: 19, scope: !205)
!236 = !DILocation(line: 869, column: 25, scope: !205)
!237 = !DILocation(line: 869, column: 31, scope: !205)
!238 = !DILocation(line: 869, column: 48, scope: !205)
!239 = !DILocation(line: 869, column: 53, scope: !205)
!240 = !DILocation(line: 870, column: 2, scope: !205)
!241 = !DILocation(line: 870, column: 12, scope: !205)
!242 = !DILocation(line: 871, column: 2, scope: !205)
!243 = !DILocation(line: 871, column: 6, scope: !205)
!244 = !DILocation(line: 873, column: 2, scope: !205)
!245 = !DILocation(line: 873, column: 6, scope: !205)
!246 = !DILocation(line: 875, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !205, file: !3, line: 875, column: 6)
!248 = !DILocation(line: 875, column: 6, scope: !205)
!249 = !DILocation(line: 876, column: 3, scope: !247)
!250 = !DILocation(line: 882, column: 45, scope: !251)
!251 = distinct !DILexicalBlock(scope: !205, file: !3, line: 882, column: 6)
!252 = !DILocation(line: 882, column: 7, scope: !251)
!253 = !DILocation(line: 882, column: 48, scope: !251)
!254 = !DILocation(line: 882, column: 6, scope: !205)
!255 = !DILocation(line: 883, column: 3, scope: !251)
!256 = !DILocation(line: 885, column: 2, scope: !205)
!257 = !DILocation(line: 885, column: 2, scope: !223)
!258 = !DILocation(line: 886, column: 6, scope: !205)
!259 = !DILocation(line: 887, column: 6, scope: !260)
!260 = distinct !DILexicalBlock(scope: !205, file: !3, line: 887, column: 6)
!261 = !DILocation(line: 887, column: 10, scope: !260)
!262 = !DILocation(line: 887, column: 6, scope: !205)
!263 = !DILocation(line: 888, column: 3, scope: !260)
!264 = !DILocation(line: 891, column: 2, scope: !205)
!265 = !DILocation(line: 892, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !205, file: !3, line: 892, column: 2)
!267 = !DILocation(line: 892, column: 7, scope: !266)
!268 = !DILocation(line: 892, column: 14, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 892, column: 2)
!270 = !DILocation(line: 892, column: 18, scope: !269)
!271 = !DILocation(line: 892, column: 16, scope: !269)
!272 = !DILocation(line: 892, column: 2, scope: !266)
!273 = !DILocation(line: 893, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !3, line: 892, column: 39)
!275 = !DILocation(line: 893, column: 12, scope: !274)
!276 = !DILocation(line: 893, column: 16, scope: !274)
!277 = !DILocation(line: 894, column: 29, scope: !274)
!278 = !DILocation(line: 894, column: 15, scope: !274)
!279 = !DILocation(line: 894, column: 3, scope: !274)
!280 = !DILocation(line: 894, column: 18, scope: !274)
!281 = !DILocation(line: 894, column: 27, scope: !274)
!282 = !DILocation(line: 895, column: 29, scope: !274)
!283 = !DILocation(line: 895, column: 15, scope: !274)
!284 = !DILocation(line: 895, column: 3, scope: !274)
!285 = !DILocation(line: 895, column: 18, scope: !274)
!286 = !DILocation(line: 895, column: 27, scope: !274)
!287 = !DILocation(line: 896, column: 25, scope: !274)
!288 = !DILocation(line: 896, column: 15, scope: !274)
!289 = !DILocation(line: 896, column: 3, scope: !274)
!290 = !DILocation(line: 896, column: 18, scope: !274)
!291 = !DILocation(line: 896, column: 23, scope: !274)
!292 = !DILocation(line: 897, column: 2, scope: !274)
!293 = !DILocation(line: 892, column: 35, scope: !269)
!294 = !DILocation(line: 892, column: 2, scope: !269)
!295 = distinct !{!295, !272, !296, !297, !298}
!296 = !DILocation(line: 897, column: 2, scope: !266)
!297 = !{!"llvm.loop.mustprogress"}
!298 = !{!"llvm.loop.unroll.disable"}
!299 = !DILocation(line: 900, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !205, file: !3, line: 900, column: 2)
!301 = !DILocation(line: 900, column: 7, scope: !300)
!302 = !DILocation(line: 900, column: 14, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 900, column: 2)
!304 = !DILocation(line: 900, column: 18, scope: !303)
!305 = !DILocation(line: 900, column: 16, scope: !303)
!306 = !DILocation(line: 900, column: 2, scope: !300)
!307 = !DILocation(line: 901, column: 22, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 900, column: 39)
!309 = !DILocation(line: 901, column: 10, scope: !308)
!310 = !DILocation(line: 901, column: 25, scope: !308)
!311 = !DILocation(line: 901, column: 8, scope: !308)
!312 = !DILocation(line: 902, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !3, line: 902, column: 7)
!314 = !DILocation(line: 902, column: 12, scope: !313)
!315 = !DILocation(line: 902, column: 7, scope: !308)
!316 = !DILocation(line: 903, column: 4, scope: !313)
!317 = !DILocation(line: 904, column: 22, scope: !308)
!318 = !DILocation(line: 904, column: 10, scope: !308)
!319 = !DILocation(line: 904, column: 25, scope: !308)
!320 = !DILocation(line: 904, column: 8, scope: !308)
!321 = !DILocation(line: 905, column: 22, scope: !308)
!322 = !DILocation(line: 905, column: 10, scope: !308)
!323 = !DILocation(line: 905, column: 25, scope: !308)
!324 = !DILocation(line: 905, column: 8, scope: !308)
!325 = !DILocation(line: 906, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !308, file: !3, line: 906, column: 7)
!327 = !DILocation(line: 906, column: 21, scope: !326)
!328 = !DILocation(line: 906, column: 28, scope: !326)
!329 = !DILocation(line: 906, column: 26, scope: !326)
!330 = !DILocation(line: 906, column: 19, scope: !326)
!331 = !DILocation(line: 906, column: 7, scope: !308)
!332 = !DILocation(line: 907, column: 18, scope: !326)
!333 = !DILocation(line: 907, column: 25, scope: !326)
!334 = !DILocation(line: 907, column: 23, scope: !326)
!335 = !DILocation(line: 907, column: 16, scope: !326)
!336 = !DILocation(line: 907, column: 4, scope: !326)
!337 = !DILocation(line: 908, column: 2, scope: !308)
!338 = !DILocation(line: 900, column: 35, scope: !303)
!339 = !DILocation(line: 900, column: 2, scope: !303)
!340 = distinct !{!340, !306, !341, !297, !298}
!341 = !DILocation(line: 908, column: 2, scope: !300)
!342 = !DILocation(line: 911, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !205, file: !3, line: 911, column: 6)
!344 = !DILocation(line: 911, column: 6, scope: !205)
!345 = !DILocation(line: 912, column: 3, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 912, column: 3)
!347 = distinct !DILexicalBlock(scope: !343, file: !3, line: 911, column: 20)
!348 = !DILocation(line: 912, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !3, line: 912, column: 3)
!350 = !DILocation(line: 913, column: 3, scope: !347)
!351 = !DILocation(line: 917, column: 2, scope: !205)
!352 = !DILocation(line: 918, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !205, file: !3, line: 918, column: 2)
!354 = !DILocation(line: 918, column: 7, scope: !353)
!355 = !DILocation(line: 918, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 918, column: 2)
!357 = !DILocation(line: 918, column: 18, scope: !356)
!358 = !DILocation(line: 918, column: 16, scope: !356)
!359 = !DILocation(line: 918, column: 2, scope: !353)
!360 = !DILocation(line: 919, column: 22, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 918, column: 39)
!362 = !DILocation(line: 919, column: 10, scope: !361)
!363 = !DILocation(line: 919, column: 25, scope: !361)
!364 = !DILocation(line: 919, column: 8, scope: !361)
!365 = !DILocation(line: 920, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 920, column: 7)
!367 = !DILocation(line: 920, column: 12, scope: !366)
!368 = !DILocation(line: 920, column: 7, scope: !361)
!369 = !DILocation(line: 921, column: 4, scope: !366)
!370 = !DILocation(line: 922, column: 22, scope: !361)
!371 = !DILocation(line: 922, column: 10, scope: !361)
!372 = !DILocation(line: 922, column: 25, scope: !361)
!373 = !DILocation(line: 922, column: 8, scope: !361)
!374 = !DILocation(line: 923, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !361, file: !3, line: 923, column: 7)
!376 = !DILocation(line: 923, column: 7, scope: !361)
!377 = !DILocation(line: 924, column: 9, scope: !375)
!378 = !DILocation(line: 924, column: 4, scope: !375)
!379 = !DILocation(line: 925, column: 7, scope: !361)
!380 = !DILocation(line: 925, column: 3, scope: !361)
!381 = !DILocation(line: 925, column: 12, scope: !361)
!382 = !DILocation(line: 926, column: 2, scope: !361)
!383 = !DILocation(line: 918, column: 35, scope: !356)
!384 = !DILocation(line: 918, column: 2, scope: !356)
!385 = distinct !{!385, !359, !386, !297, !298}
!386 = !DILocation(line: 926, column: 2, scope: !353)
!387 = !DILocation(line: 929, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !205, file: !3, line: 929, column: 6)
!389 = !DILocation(line: 929, column: 6, scope: !205)
!390 = !DILocation(line: 930, column: 3, scope: !388)
!391 = !DILocation(line: 933, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !205, file: !3, line: 933, column: 6)
!393 = !DILocation(line: 933, column: 30, scope: !392)
!394 = !DILocation(line: 933, column: 28, scope: !392)
!395 = !DILocation(line: 934, column: 3, scope: !392)
!396 = !DILocation(line: 934, column: 20, scope: !392)
!397 = !DILocation(line: 934, column: 18, scope: !392)
!398 = !DILocation(line: 933, column: 56, scope: !392)
!399 = !DILocation(line: 933, column: 6, scope: !205)
!400 = !DILocation(line: 935, column: 3, scope: !392)
!401 = !DILocation(line: 937, column: 2, scope: !205)
!402 = !DILocation(line: 938, column: 11, scope: !205)
!403 = !DILocation(line: 939, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !205, file: !3, line: 939, column: 6)
!405 = !DILocation(line: 939, column: 6, scope: !205)
!406 = !DILocation(line: 940, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !3, line: 939, column: 17)
!408 = !DILocation(line: 940, column: 3, scope: !407)
!409 = !DILocation(line: 940, column: 19, scope: !407)
!410 = !DILocation(line: 940, column: 25, scope: !407)
!411 = !DILocation(line: 941, column: 25, scope: !407)
!412 = !DILocation(line: 941, column: 35, scope: !407)
!413 = !DILocation(line: 941, column: 9, scope: !407)
!414 = !DILocation(line: 941, column: 3, scope: !407)
!415 = !DILocation(line: 941, column: 19, scope: !407)
!416 = !DILocation(line: 941, column: 23, scope: !407)
!417 = !DILocation(line: 942, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !407, file: !3, line: 942, column: 7)
!419 = !DILocation(line: 942, column: 27, scope: !418)
!420 = !DILocation(line: 942, column: 21, scope: !418)
!421 = !DILocation(line: 942, column: 37, scope: !418)
!422 = !DILocation(line: 942, column: 19, scope: !418)
!423 = !DILocation(line: 942, column: 7, scope: !407)
!424 = !DILocation(line: 943, column: 24, scope: !418)
!425 = !DILocation(line: 943, column: 18, scope: !418)
!426 = !DILocation(line: 943, column: 34, scope: !418)
!427 = !DILocation(line: 943, column: 16, scope: !418)
!428 = !DILocation(line: 943, column: 4, scope: !418)
!429 = !DILocation(line: 944, column: 11, scope: !407)
!430 = !DILocation(line: 945, column: 2, scope: !407)
!431 = !DILocation(line: 946, column: 43, scope: !205)
!432 = !DILocation(line: 946, column: 13, scope: !205)
!433 = !DILocation(line: 946, column: 11, scope: !205)
!434 = !DILocation(line: 949, column: 18, scope: !205)
!435 = !DILocation(line: 950, column: 15, scope: !436)
!436 = distinct !DILexicalBlock(scope: !205, file: !3, line: 950, column: 6)
!437 = !DILocation(line: 950, column: 6, scope: !436)
!438 = !DILocation(line: 950, column: 6, scope: !205)
!439 = !DILocation(line: 951, column: 51, scope: !436)
!440 = !DILocation(line: 951, column: 22, scope: !436)
!441 = !DILocation(line: 951, column: 19, scope: !436)
!442 = !DILocation(line: 951, column: 3, scope: !436)
!443 = !DILocation(line: 954, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !205, file: !3, line: 954, column: 2)
!445 = !DILocation(line: 954, column: 7, scope: !444)
!446 = !DILocation(line: 954, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 954, column: 2)
!448 = !DILocation(line: 954, column: 18, scope: !447)
!449 = !DILocation(line: 954, column: 27, scope: !447)
!450 = !DILocation(line: 954, column: 16, scope: !447)
!451 = !DILocation(line: 954, column: 2, scope: !444)
!452 = !DILocation(line: 955, column: 13, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 955, column: 7)
!454 = distinct !DILexicalBlock(scope: !447, file: !3, line: 954, column: 37)
!455 = !DILocation(line: 955, column: 7, scope: !453)
!456 = !DILocation(line: 955, column: 16, scope: !453)
!457 = !DILocation(line: 955, column: 28, scope: !453)
!458 = !DILocation(line: 955, column: 29, scope: !453)
!459 = !DILocation(line: 955, column: 22, scope: !453)
!460 = !DILocation(line: 955, column: 33, scope: !453)
!461 = !DILocation(line: 955, column: 20, scope: !453)
!462 = !DILocation(line: 955, column: 7, scope: !454)
!463 = !DILocation(line: 956, column: 46, scope: !453)
!464 = !DILocation(line: 956, column: 40, scope: !453)
!465 = !DILocation(line: 956, column: 49, scope: !453)
!466 = !DILocation(line: 957, column: 18, scope: !453)
!467 = !DILocation(line: 957, column: 19, scope: !453)
!468 = !DILocation(line: 957, column: 12, scope: !453)
!469 = !DILocation(line: 957, column: 23, scope: !453)
!470 = !DILocation(line: 956, column: 23, scope: !453)
!471 = !DILocation(line: 956, column: 20, scope: !453)
!472 = !DILocation(line: 956, column: 4, scope: !453)
!473 = !DILocation(line: 958, column: 2, scope: !454)
!474 = !DILocation(line: 954, column: 33, scope: !447)
!475 = !DILocation(line: 954, column: 2, scope: !447)
!476 = distinct !{!476, !451, !477, !297, !298}
!477 = !DILocation(line: 958, column: 2, scope: !444)
!478 = !DILocation(line: 961, column: 6, scope: !205)
!479 = !DILocation(line: 961, column: 15, scope: !205)
!480 = !DILocation(line: 961, column: 4, scope: !205)
!481 = !DILocation(line: 962, column: 12, scope: !482)
!482 = distinct !DILexicalBlock(scope: !205, file: !3, line: 962, column: 6)
!483 = !DILocation(line: 962, column: 6, scope: !482)
!484 = !DILocation(line: 962, column: 15, scope: !482)
!485 = !DILocation(line: 962, column: 21, scope: !482)
!486 = !DILocation(line: 962, column: 19, scope: !482)
!487 = !DILocation(line: 962, column: 6, scope: !205)
!488 = !DILocation(line: 963, column: 45, scope: !482)
!489 = !DILocation(line: 963, column: 39, scope: !482)
!490 = !DILocation(line: 963, column: 48, scope: !482)
!491 = !DILocation(line: 964, column: 9, scope: !482)
!492 = !DILocation(line: 963, column: 22, scope: !482)
!493 = !DILocation(line: 963, column: 19, scope: !482)
!494 = !DILocation(line: 963, column: 3, scope: !482)
!495 = !DILocation(line: 966, column: 6, scope: !228)
!496 = !DILocation(line: 966, column: 6, scope: !205)
!497 = !DILocation(line: 967, column: 3, scope: !498)
!498 = distinct !DILexicalBlock(scope: !227, file: !3, line: 967, column: 3)
!499 = !DILocation(line: 967, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !498, file: !3, line: 967, column: 3)
!501 = !DILocation(line: 970, column: 8, scope: !226)
!502 = !DILocation(line: 970, column: 7, scope: !227)
!503 = !DILocation(line: 971, column: 4, scope: !225)
!504 = !DILocation(line: 971, column: 4, scope: !231)
!505 = !DILocation(line: 971, column: 4, scope: !230)
!506 = !DILocation(line: 971, column: 4, scope: !507)
!507 = distinct !DILexicalBlock(scope: !230, file: !3, line: 971, column: 4)
!508 = !DILocation(line: 971, column: 4, scope: !509)
!509 = distinct !DILexicalBlock(scope: !230, file: !3, line: 971, column: 4)
!510 = !{i64 2155353241, i64 2155353270, i64 2155353316, i64 2155353374, i64 2155353428, i64 2155353482, i64 2155353537, i64 2155353568, i64 2155353876, i64 2155353882, i64 2155353929, i64 2155353952, i64 2155353978}
!511 = !DILocation(line: 971, column: 4, scope: !512)
!512 = distinct !DILexicalBlock(scope: !230, file: !3, line: 971, column: 4)
!513 = !DILocation(line: 971, column: 4, scope: !226)
!514 = !DILocation(line: 973, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !227, file: !3, line: 973, column: 3)
!516 = !DILocation(line: 973, column: 3, scope: !517)
!517 = distinct !DILexicalBlock(scope: !515, file: !3, line: 973, column: 3)
!518 = !DILocation(line: 974, column: 3, scope: !227)
!519 = !DILocation(line: 976, column: 3, scope: !227)
!520 = !DILocation(line: 979, column: 2, scope: !205)
!521 = !DILocation(line: 980, column: 1, scope: !205)
!522 = distinct !DISubprogram(name: "mtrr_enabled", scope: !523, file: !523, line: 90, type: !524, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!523 = !DIFile(filename: "arch/x86/kernel/cpu/mtrr/mtrr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19252bbc0e8adbaf9fc5f7388a27e064")
!524 = !DISubroutineType(types: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !527, line: 35, baseType: !528)
!527 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!528 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!529 = !DILocation(line: 92, column: 11, scope: !522)
!530 = !DILocation(line: 92, column: 10, scope: !522)
!531 = !DILocation(line: 92, column: 9, scope: !522)
!532 = !DILocation(line: 92, column: 2, scope: !522)
!533 = distinct !DISubprogram(name: "arch_test_bit", scope: !534, file: !534, line: 237, type: !535, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!534 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!535 = !DISubroutineType(types: !536)
!536 = !{!526, !30, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!540 = !{!541, !542}
!541 = !DILocalVariable(name: "nr", arg: 1, scope: !533, file: !534, line: 237, type: !30)
!542 = !DILocalVariable(name: "addr", arg: 2, scope: !533, file: !534, line: 237, type: !537)
!543 = !DILocation(line: 237, column: 29, scope: !533)
!544 = !DILocation(line: 237, column: 63, scope: !533)
!545 = !DILocation(line: 239, column: 30, scope: !533)
!546 = !DILocation(line: 239, column: 9, scope: !533)
!547 = !DILocation(line: 239, column: 54, scope: !533)
!548 = !DILocation(line: 239, column: 58, scope: !533)
!549 = !DILocation(line: 239, column: 36, scope: !533)
!550 = !DILocation(line: 240, column: 26, scope: !533)
!551 = !DILocation(line: 240, column: 30, scope: !533)
!552 = !DILocation(line: 240, column: 8, scope: !533)
!553 = !DILocation(line: 239, column: 2, scope: !533)
!554 = distinct !DISubprogram(name: "_static_cpu_has", scope: !555, file: !555, line: 173, type: !556, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!555 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!556 = !DISubroutineType(types: !557)
!557 = !{!526, !558}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !560)
!560 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!561 = !{!562, !563, !564}
!562 = !DILocalVariable(name: "bit", arg: 1, scope: !554, file: !555, line: 173, type: !558)
!563 = !DILabel(scope: !554, name: "t_yes", file: !555, line: 187)
!564 = !DILabel(scope: !554, name: "t_no", file: !555, line: 189)
!565 = !DILocation(line: 173, column: 49, scope: !554)
!566 = !DILocation(line: 183, column: 24, scope: !554)
!567 = !DILocation(line: 184, column: 30, scope: !554)
!568 = !DILocation(line: 184, column: 34, scope: !554)
!569 = !DILocation(line: 184, column: 26, scope: !554)
!570 = !DILocation(line: 185, column: 70, scope: !554)
!571 = !DILocation(line: 185, column: 74, scope: !554)
!572 = !DILocation(line: 185, column: 25, scope: !554)
!573 = !DILocation(line: 175, column: 2, scope: !554)
!574 = !{i64 2149724789, i64 2149724822, i64 2149724828, i64 2149724844, i64 2149724863, i64 2149724894, i64 2149725847, i64 2149724436, i64 2149725853, i64 2149725901, i64 2149725965, i64 2149726029, i64 2149726086, i64 2149726293, i64 2149726341, i64 2149726405, i64 2149726469, i64 2149726526, i64 2149724554, i64 2149724579, i64 2149726736, i64 2149726864, i64 2149726797, i64 2149726878, i64 2149726892, i64 2149727008, i64 2149726953, i64 2149727022, i64 2149724713, i64 1906046, i64 1906086, i64 1906095, i64 1906145, i64 1906166, i64 1906186}
!575 = !DILocation(line: 187, column: 1, scope: !554)
!576 = !DILocation(line: 188, column: 2, scope: !554)
!577 = !DILocation(line: 189, column: 1, scope: !554)
!578 = !DILocation(line: 190, column: 2, scope: !554)
!579 = !DILocation(line: 191, column: 1, scope: !554)
!580 = distinct !DISubprogram(name: "native_read_msr", scope: !178, file: !178, line: 114, type: !581, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!76, !7}
!583 = !{!584, !585}
!584 = !DILocalVariable(name: "msr", arg: 1, scope: !580, file: !178, line: 114, type: !7)
!585 = !DILocalVariable(name: "val", scope: !580, file: !178, line: 116, type: !76)
!586 = !DILocation(line: 114, column: 63, scope: !580)
!587 = !DILocation(line: 116, column: 2, scope: !580)
!588 = !DILocation(line: 116, column: 21, scope: !580)
!589 = !DILocation(line: 118, column: 16, scope: !580)
!590 = !DILocation(line: 118, column: 8, scope: !580)
!591 = !DILocation(line: 118, column: 6, scope: !580)
!592 = !DILocation(line: 120, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !580, file: !178, line: 120, column: 6)
!594 = !DILocation(line: 120, column: 6, scope: !580)
!595 = !DILocation(line: 121, column: 21, scope: !593)
!596 = !DILocation(line: 121, column: 26, scope: !593)
!597 = !DILocation(line: 121, column: 3, scope: !593)
!598 = !DILocation(line: 123, column: 9, scope: !580)
!599 = !DILocation(line: 124, column: 1, scope: !580)
!600 = !DILocation(line: 123, column: 2, scope: !580)
!601 = !DISubprogram(name: "_printk", scope: !602, file: !602, line: 153, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!603 = !DISubroutineType(types: !604)
!604 = !{!28, !31, null}
!605 = distinct !DISubprogram(name: "x86_get_mtrr_mem_range", scope: !3, file: !3, line: 62, type: !606, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !609)
!606 = !DISubroutineType(types: !607)
!607 = !{!28, !608, !28, !30, !30}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617}
!610 = !DILocalVariable(name: "range", arg: 1, scope: !605, file: !3, line: 62, type: !608)
!611 = !DILocalVariable(name: "nr_range", arg: 2, scope: !605, file: !3, line: 62, type: !28)
!612 = !DILocalVariable(name: "extra_remove_base", arg: 3, scope: !605, file: !3, line: 63, type: !30)
!613 = !DILocalVariable(name: "extra_remove_size", arg: 4, scope: !605, file: !3, line: 64, type: !30)
!614 = !DILocalVariable(name: "base", scope: !605, file: !3, line: 66, type: !30)
!615 = !DILocalVariable(name: "size", scope: !605, file: !3, line: 66, type: !30)
!616 = !DILocalVariable(name: "type", scope: !605, file: !3, line: 67, type: !90)
!617 = !DILocalVariable(name: "i", scope: !605, file: !3, line: 68, type: !28)
!618 = !DILocation(line: 62, column: 38, scope: !605)
!619 = !DILocation(line: 62, column: 49, scope: !605)
!620 = !DILocation(line: 63, column: 24, scope: !605)
!621 = !DILocation(line: 64, column: 24, scope: !605)
!622 = !DILocation(line: 66, column: 2, scope: !605)
!623 = !DILocation(line: 66, column: 16, scope: !605)
!624 = !DILocation(line: 66, column: 22, scope: !605)
!625 = !DILocation(line: 67, column: 2, scope: !605)
!626 = !DILocation(line: 67, column: 12, scope: !605)
!627 = !DILocation(line: 68, column: 2, scope: !605)
!628 = !DILocation(line: 68, column: 6, scope: !605)
!629 = !DILocation(line: 70, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !605, file: !3, line: 70, column: 2)
!631 = !DILocation(line: 70, column: 7, scope: !630)
!632 = !DILocation(line: 70, column: 14, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 70, column: 2)
!634 = !DILocation(line: 70, column: 18, scope: !633)
!635 = !DILocation(line: 70, column: 16, scope: !633)
!636 = !DILocation(line: 70, column: 2, scope: !630)
!637 = !DILocation(line: 71, column: 22, scope: !638)
!638 = distinct !DILexicalBlock(scope: !633, file: !3, line: 70, column: 39)
!639 = !DILocation(line: 71, column: 10, scope: !638)
!640 = !DILocation(line: 71, column: 25, scope: !638)
!641 = !DILocation(line: 71, column: 8, scope: !638)
!642 = !DILocation(line: 72, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !638, file: !3, line: 72, column: 7)
!644 = !DILocation(line: 72, column: 12, scope: !643)
!645 = !DILocation(line: 72, column: 7, scope: !638)
!646 = !DILocation(line: 73, column: 4, scope: !643)
!647 = !DILocation(line: 74, column: 22, scope: !638)
!648 = !DILocation(line: 74, column: 10, scope: !638)
!649 = !DILocation(line: 74, column: 25, scope: !638)
!650 = !DILocation(line: 74, column: 8, scope: !638)
!651 = !DILocation(line: 75, column: 22, scope: !638)
!652 = !DILocation(line: 75, column: 10, scope: !638)
!653 = !DILocation(line: 75, column: 25, scope: !638)
!654 = !DILocation(line: 75, column: 8, scope: !638)
!655 = !DILocation(line: 76, column: 35, scope: !638)
!656 = !DILocation(line: 76, column: 53, scope: !638)
!657 = !DILocation(line: 77, column: 7, scope: !638)
!658 = !DILocation(line: 77, column: 13, scope: !638)
!659 = !DILocation(line: 77, column: 20, scope: !638)
!660 = !DILocation(line: 77, column: 18, scope: !638)
!661 = !DILocation(line: 76, column: 14, scope: !638)
!662 = !DILocation(line: 76, column: 12, scope: !638)
!663 = !DILocation(line: 78, column: 2, scope: !638)
!664 = !DILocation(line: 70, column: 35, scope: !633)
!665 = !DILocation(line: 70, column: 2, scope: !633)
!666 = distinct !{!666, !636, !667, !297, !298}
!667 = !DILocation(line: 78, column: 2, scope: !630)
!668 = !DILocation(line: 80, column: 2, scope: !605)
!669 = !DILocation(line: 80, column: 2, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 80, column: 2)
!671 = distinct !DILexicalBlock(scope: !605, file: !3, line: 80, column: 2)
!672 = !{i8 0, i8 2}
!673 = !{}
!674 = !DILocation(line: 80, column: 2, scope: !671)
!675 = !DILocation(line: 80, column: 2, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !3, line: 80, column: 2)
!677 = !DILocation(line: 80, column: 2, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !3, line: 80, column: 2)
!679 = !DILocation(line: 81, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !605, file: !3, line: 81, column: 2)
!681 = !DILocation(line: 81, column: 7, scope: !680)
!682 = !DILocation(line: 81, column: 14, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !3, line: 81, column: 2)
!684 = !DILocation(line: 81, column: 18, scope: !683)
!685 = !DILocation(line: 81, column: 16, scope: !683)
!686 = !DILocation(line: 81, column: 2, scope: !680)
!687 = !DILocation(line: 82, column: 3, scope: !683)
!688 = !DILocation(line: 82, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 82, column: 3)
!690 = distinct !DILexicalBlock(scope: !683, file: !3, line: 82, column: 3)
!691 = !DILocation(line: 82, column: 3, scope: !690)
!692 = !DILocation(line: 82, column: 3, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !3, line: 82, column: 3)
!694 = !DILocation(line: 82, column: 3, scope: !695)
!695 = distinct !DILexicalBlock(scope: !693, file: !3, line: 82, column: 3)
!696 = !DILocation(line: 81, column: 29, scope: !683)
!697 = !DILocation(line: 81, column: 2, scope: !683)
!698 = distinct !{!698, !686, !699, !297, !298}
!699 = !DILocation(line: 82, column: 3, scope: !680)
!700 = !DILocation(line: 86, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !605, file: !3, line: 86, column: 2)
!702 = !DILocation(line: 86, column: 7, scope: !701)
!703 = !DILocation(line: 86, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 86, column: 2)
!705 = !DILocation(line: 86, column: 18, scope: !704)
!706 = !DILocation(line: 86, column: 16, scope: !704)
!707 = !DILocation(line: 86, column: 2, scope: !701)
!708 = !DILocation(line: 87, column: 22, scope: !709)
!709 = distinct !DILexicalBlock(scope: !704, file: !3, line: 86, column: 39)
!710 = !DILocation(line: 87, column: 10, scope: !709)
!711 = !DILocation(line: 87, column: 25, scope: !709)
!712 = !DILocation(line: 87, column: 8, scope: !709)
!713 = !DILocation(line: 88, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !3, line: 88, column: 7)
!715 = !DILocation(line: 88, column: 12, scope: !714)
!716 = !DILocation(line: 88, column: 36, scope: !714)
!717 = !DILocation(line: 89, column: 7, scope: !714)
!718 = !DILocation(line: 89, column: 12, scope: !714)
!719 = !DILocation(line: 88, column: 7, scope: !709)
!720 = !DILocation(line: 90, column: 4, scope: !714)
!721 = !DILocation(line: 91, column: 22, scope: !709)
!722 = !DILocation(line: 91, column: 10, scope: !709)
!723 = !DILocation(line: 91, column: 25, scope: !709)
!724 = !DILocation(line: 91, column: 8, scope: !709)
!725 = !DILocation(line: 92, column: 8, scope: !726)
!726 = distinct !DILexicalBlock(scope: !709, file: !3, line: 92, column: 7)
!727 = !DILocation(line: 92, column: 7, scope: !709)
!728 = !DILocation(line: 93, column: 4, scope: !726)
!729 = !DILocation(line: 94, column: 22, scope: !709)
!730 = !DILocation(line: 94, column: 10, scope: !709)
!731 = !DILocation(line: 94, column: 25, scope: !709)
!732 = !DILocation(line: 94, column: 8, scope: !709)
!733 = !DILocation(line: 95, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !709, file: !3, line: 95, column: 7)
!735 = !DILocation(line: 95, column: 12, scope: !734)
!736 = !DILocation(line: 95, column: 35, scope: !734)
!737 = !DILocation(line: 95, column: 49, scope: !734)
!738 = !DILocation(line: 95, column: 60, scope: !734)
!739 = !DILocation(line: 96, column: 19, scope: !734)
!740 = !DILocation(line: 96, column: 8, scope: !734)
!741 = !DILocation(line: 96, column: 27, scope: !734)
!742 = !DILocation(line: 96, column: 54, scope: !734)
!743 = !DILocation(line: 97, column: 19, scope: !734)
!744 = !DILocation(line: 97, column: 8, scope: !734)
!745 = !DILocation(line: 97, column: 27, scope: !734)
!746 = !DILocation(line: 95, column: 7, scope: !709)
!747 = !DILocation(line: 99, column: 4, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 99, column: 4)
!749 = distinct !DILexicalBlock(scope: !734, file: !3, line: 97, column: 61)
!750 = !DILocation(line: 99, column: 4, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !3, line: 99, column: 4)
!752 = !DILocation(line: 100, column: 8, scope: !753)
!753 = distinct !DILexicalBlock(scope: !749, file: !3, line: 100, column: 8)
!754 = !DILocation(line: 100, column: 15, scope: !753)
!755 = !DILocation(line: 100, column: 13, scope: !753)
!756 = !DILocation(line: 100, column: 20, scope: !753)
!757 = !DILocation(line: 100, column: 8, scope: !749)
!758 = !DILocation(line: 101, column: 5, scope: !753)
!759 = !DILocation(line: 102, column: 35, scope: !749)
!760 = !DILocation(line: 102, column: 33, scope: !749)
!761 = !DILocation(line: 102, column: 9, scope: !749)
!762 = !DILocation(line: 103, column: 9, scope: !749)
!763 = !DILocation(line: 104, column: 3, scope: !749)
!764 = !DILocation(line: 105, column: 18, scope: !709)
!765 = !DILocation(line: 105, column: 36, scope: !709)
!766 = !DILocation(line: 105, column: 42, scope: !709)
!767 = !DILocation(line: 105, column: 49, scope: !709)
!768 = !DILocation(line: 105, column: 47, scope: !709)
!769 = !DILocation(line: 105, column: 3, scope: !709)
!770 = !DILocation(line: 106, column: 2, scope: !709)
!771 = !DILocation(line: 86, column: 35, scope: !704)
!772 = !DILocation(line: 86, column: 2, scope: !704)
!773 = distinct !{!773, !707, !774, !297, !298}
!774 = !DILocation(line: 106, column: 2, scope: !701)
!775 = !DILocation(line: 107, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !605, file: !3, line: 107, column: 6)
!777 = !DILocation(line: 107, column: 6, scope: !605)
!778 = !DILocation(line: 108, column: 18, scope: !776)
!779 = !DILocation(line: 108, column: 36, scope: !776)
!780 = !DILocation(line: 109, column: 6, scope: !776)
!781 = !DILocation(line: 109, column: 26, scope: !776)
!782 = !DILocation(line: 109, column: 24, scope: !776)
!783 = !DILocation(line: 108, column: 3, scope: !776)
!784 = !DILocation(line: 111, column: 2, scope: !605)
!785 = !DILocation(line: 111, column: 2, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 111, column: 2)
!787 = distinct !DILexicalBlock(scope: !605, file: !3, line: 111, column: 2)
!788 = !DILocation(line: 111, column: 2, scope: !787)
!789 = !DILocation(line: 111, column: 2, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 111, column: 2)
!791 = !DILocation(line: 111, column: 2, scope: !792)
!792 = distinct !DILexicalBlock(scope: !790, file: !3, line: 111, column: 2)
!793 = !DILocation(line: 112, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !605, file: !3, line: 112, column: 2)
!795 = !DILocation(line: 112, column: 7, scope: !794)
!796 = !DILocation(line: 112, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !3, line: 112, column: 2)
!798 = !DILocation(line: 112, column: 16, scope: !797)
!799 = !DILocation(line: 112, column: 2, scope: !794)
!800 = !DILocation(line: 113, column: 8, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 113, column: 7)
!802 = distinct !DILexicalBlock(scope: !797, file: !3, line: 112, column: 34)
!803 = !DILocation(line: 113, column: 14, scope: !801)
!804 = !DILocation(line: 113, column: 17, scope: !801)
!805 = !DILocation(line: 113, column: 7, scope: !802)
!806 = !DILocation(line: 114, column: 4, scope: !801)
!807 = !DILocation(line: 116, column: 3, scope: !802)
!808 = !DILocation(line: 116, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 116, column: 3)
!810 = distinct !DILexicalBlock(scope: !802, file: !3, line: 116, column: 3)
!811 = !DILocation(line: 116, column: 3, scope: !810)
!812 = !DILocation(line: 116, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !3, line: 116, column: 3)
!814 = !DILocation(line: 116, column: 3, scope: !815)
!815 = distinct !DILexicalBlock(scope: !813, file: !3, line: 116, column: 3)
!816 = !DILocation(line: 118, column: 2, scope: !802)
!817 = !DILocation(line: 112, column: 30, scope: !797)
!818 = !DILocation(line: 112, column: 2, scope: !797)
!819 = distinct !{!819, !799, !820, !297, !298}
!820 = !DILocation(line: 118, column: 2, scope: !794)
!821 = !DILocation(line: 121, column: 30, scope: !605)
!822 = !DILocation(line: 121, column: 13, scope: !605)
!823 = !DILocation(line: 121, column: 11, scope: !605)
!824 = !DILocation(line: 123, column: 2, scope: !605)
!825 = !DILocation(line: 123, column: 2, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 123, column: 2)
!827 = distinct !DILexicalBlock(scope: !605, file: !3, line: 123, column: 2)
!828 = !DILocation(line: 123, column: 2, scope: !827)
!829 = !DILocation(line: 123, column: 2, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 123, column: 2)
!831 = !DILocation(line: 123, column: 2, scope: !832)
!832 = distinct !DILexicalBlock(scope: !830, file: !3, line: 123, column: 2)
!833 = !DILocation(line: 124, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !605, file: !3, line: 124, column: 2)
!835 = !DILocation(line: 124, column: 7, scope: !834)
!836 = !DILocation(line: 124, column: 14, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 124, column: 2)
!838 = !DILocation(line: 124, column: 18, scope: !837)
!839 = !DILocation(line: 124, column: 16, scope: !837)
!840 = !DILocation(line: 124, column: 2, scope: !834)
!841 = !DILocation(line: 125, column: 3, scope: !837)
!842 = !DILocation(line: 125, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 125, column: 3)
!844 = distinct !DILexicalBlock(scope: !837, file: !3, line: 125, column: 3)
!845 = !DILocation(line: 125, column: 3, scope: !844)
!846 = !DILocation(line: 125, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !3, line: 125, column: 3)
!848 = !DILocation(line: 125, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !847, file: !3, line: 125, column: 3)
!850 = !DILocation(line: 124, column: 29, scope: !837)
!851 = !DILocation(line: 124, column: 2, scope: !837)
!852 = distinct !{!852, !840, !853, !297, !298}
!853 = !DILocation(line: 125, column: 3, scope: !834)
!854 = !DILocation(line: 128, column: 9, scope: !605)
!855 = !DILocation(line: 129, column: 1, scope: !605)
!856 = !DILocation(line: 128, column: 2, scope: !605)
!857 = distinct !DISubprogram(name: "real_trim_memory", scope: !3, file: !3, line: 842, type: !858, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!74, !30, !30}
!860 = !{!861, !862, !863, !864}
!861 = !DILocalVariable(name: "start_pfn", arg: 1, scope: !857, file: !3, line: 842, type: !30)
!862 = !DILocalVariable(name: "limit_pfn", arg: 2, scope: !857, file: !3, line: 842, type: !30)
!863 = !DILocalVariable(name: "trim_start", scope: !857, file: !3, line: 844, type: !74)
!864 = !DILocalVariable(name: "trim_size", scope: !857, file: !3, line: 844, type: !74)
!865 = !DILocation(line: 842, column: 32, scope: !857)
!866 = !DILocation(line: 842, column: 57, scope: !857)
!867 = !DILocation(line: 844, column: 2, scope: !857)
!868 = !DILocation(line: 844, column: 6, scope: !857)
!869 = !DILocation(line: 844, column: 18, scope: !857)
!870 = !DILocation(line: 846, column: 15, scope: !857)
!871 = !DILocation(line: 846, column: 13, scope: !857)
!872 = !DILocation(line: 847, column: 13, scope: !857)
!873 = !DILocation(line: 849, column: 14, scope: !857)
!874 = !DILocation(line: 849, column: 12, scope: !857)
!875 = !DILocation(line: 850, column: 12, scope: !857)
!876 = !DILocation(line: 851, column: 15, scope: !857)
!877 = !DILocation(line: 851, column: 12, scope: !857)
!878 = !DILocation(line: 853, column: 28, scope: !857)
!879 = !DILocation(line: 853, column: 40, scope: !857)
!880 = !DILocation(line: 853, column: 9, scope: !857)
!881 = !DILocation(line: 854, column: 1, scope: !857)
!882 = !DILocation(line: 853, column: 2, scope: !857)
!883 = !DISubprogram(name: "e820__update_table_print", scope: !884, file: !884, line: 23, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!884 = !DIFile(filename: "./arch/x86/include/asm/e820/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65a6719b6cd64e8daf1f569367f0fcc3")
!885 = !DISubroutineType(types: !886)
!886 = !{null}
!887 = distinct !DISubprogram(name: "static_key_false", scope: !888, file: !888, line: 205, type: !889, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!888 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!889 = !DISubroutineType(types: !890)
!890 = !{!526, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !888, line: 85, size: 128, elements: !893)
!893 = !{!894, !899}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !892, file: !888, line: 86, baseType: !895, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !527, line: 174, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 172, size: 32, elements: !897)
!897 = !{!898}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !896, file: !527, line: 173, baseType: !28, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 101, baseType: !900, size: 64, offset: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !888, line: 101, size: 64, elements: !901)
!901 = !{!902, !903, !913}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !900, file: !888, line: 102, baseType: !30, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !900, file: !888, line: 103, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !888, line: 117, size: 128, elements: !906)
!906 = !{!907, !910, !911}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !905, file: !888, line: 118, baseType: !908, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !25, line: 20, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !27, line: 26, baseType: !28)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !905, file: !888, line: 119, baseType: !908, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !905, file: !888, line: 120, baseType: !912, size: 64, offset: 64)
!912 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !900, file: !888, line: 104, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !888, line: 104, flags: DIFlagFwdDecl)
!916 = !{!917}
!917 = !DILocalVariable(name: "key", arg: 1, scope: !887, file: !888, line: 205, type: !891)
!918 = !DILocation(line: 205, column: 65, scope: !887)
!919 = !DILocation(line: 207, column: 28, scope: !887)
!920 = !DILocation(line: 207, column: 9, scope: !887)
!921 = !DILocation(line: 207, column: 2, scope: !887)
!922 = !DISubprogram(name: "do_trace_read_msr", scope: !178, file: !178, line: 65, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !7, !74, !28}
!925 = distinct !DISubprogram(name: "arch_static_branch", scope: !926, file: !926, line: 25, type: !927, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !929)
!926 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!927 = !DISubroutineType(types: !928)
!928 = !{!526, !891, !526}
!929 = !{!930, !931, !932}
!930 = !DILocalVariable(name: "key", arg: 1, scope: !925, file: !926, line: 25, type: !891)
!931 = !DILocalVariable(name: "branch", arg: 2, scope: !925, file: !926, line: 25, type: !526)
!932 = !DILabel(scope: !925, name: "l_yes", file: !926, line: 33)
!933 = !DILocation(line: 25, column: 67, scope: !925)
!934 = !DILocation(line: 25, column: 77, scope: !925)
!935 = !DILocation(line: 30, column: 13, scope: !925)
!936 = !DILocation(line: 30, column: 28, scope: !925)
!937 = !DILocation(line: 30, column: 26, scope: !925)
!938 = !DILocation(line: 27, column: 2, scope: !925)
!939 = !{i64 407140, i64 407184, i64 2147903230, i64 2147903251, i64 2147903277, i64 2147903310, i64 2147903344, i64 2147903368}
!940 = !DILocation(line: 32, column: 2, scope: !925)
!941 = !DILocation(line: 33, column: 1, scope: !925)
!942 = !DILocation(line: 34, column: 2, scope: !925)
!943 = !DILocation(line: 35, column: 1, scope: !925)
!944 = distinct !DISubprogram(name: "constant_test_bit", scope: !534, file: !534, line: 204, type: !945, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!526, !912, !537}
!947 = !{!948, !949}
!948 = !DILocalVariable(name: "nr", arg: 1, scope: !944, file: !534, line: 204, type: !912)
!949 = !DILocalVariable(name: "addr", arg: 2, scope: !944, file: !534, line: 204, type: !537)
!950 = !DILocation(line: 204, column: 52, scope: !944)
!951 = !DILocation(line: 204, column: 86, scope: !944)
!952 = !DILocation(line: 206, column: 19, scope: !944)
!953 = !DILocation(line: 206, column: 22, scope: !944)
!954 = !DILocation(line: 206, column: 15, scope: !944)
!955 = !DILocation(line: 207, column: 4, scope: !944)
!956 = !DILocation(line: 207, column: 9, scope: !944)
!957 = !DILocation(line: 207, column: 12, scope: !944)
!958 = !DILocation(line: 206, column: 44, scope: !944)
!959 = !DILocation(line: 207, column: 37, scope: !944)
!960 = !DILocation(line: 206, column: 2, scope: !944)
!961 = distinct !DISubprogram(name: "variable_test_bit", scope: !534, file: !534, line: 224, type: !945, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !962)
!962 = !{!963, !964, !965}
!963 = !DILocalVariable(name: "nr", arg: 1, scope: !961, file: !534, line: 224, type: !912)
!964 = !DILocalVariable(name: "addr", arg: 2, scope: !961, file: !534, line: 224, type: !537)
!965 = !DILocalVariable(name: "oldbit", scope: !961, file: !534, line: 226, type: !526)
!966 = !DILocation(line: 224, column: 52, scope: !961)
!967 = !DILocation(line: 224, column: 86, scope: !961)
!968 = !DILocation(line: 226, column: 2, scope: !961)
!969 = !DILocation(line: 226, column: 7, scope: !961)
!970 = !DILocation(line: 231, column: 33, scope: !961)
!971 = !DILocation(line: 231, column: 46, scope: !961)
!972 = !DILocation(line: 228, column: 2, scope: !961)
!973 = !{i64 2148269763, i64 2148269837}
!974 = !DILocation(line: 233, column: 9, scope: !961)
!975 = !DILocation(line: 234, column: 1, scope: !961)
!976 = !DILocation(line: 233, column: 2, scope: !961)
!977 = distinct !DISubprogram(name: "__rdmsr", scope: !178, file: !178, line: 80, type: !581, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!978 = !{!979, !980, !981}
!979 = !DILocalVariable(name: "msr", arg: 1, scope: !977, file: !178, line: 80, type: !7)
!980 = !DILocalVariable(name: "low", scope: !977, file: !178, line: 82, type: !30)
!981 = !DILocalVariable(name: "high", scope: !977, file: !178, line: 82, type: !30)
!982 = !DILocation(line: 80, column: 64, scope: !977)
!983 = !DILocation(line: 82, column: 2, scope: !977)
!984 = !DILocation(line: 87, column: 45, scope: !977)
!985 = !DILocation(line: 84, column: 2, scope: !977)
!986 = !{i64 2125806, i64 2125827, i64 2149627292, i64 2149627336, i64 2149627359, i64 2149627392, i64 2149627423, i64 2149627462}
!987 = !DILocation(line: 89, column: 9, scope: !977)
!988 = !DILocation(line: 90, column: 1, scope: !977)
!989 = !DILocation(line: 89, column: 2, scope: !977)
!990 = !DISubprogram(name: "add_range_with_merge", scope: !71, file: !71, line: 25, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!28, !608, !28, !28, !74, !74}
!993 = !DISubprogram(name: "subtract_range", scope: !71, file: !71, line: 28, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !608, !28, !74, !74}
!996 = !DISubprogram(name: "clean_sort_range", scope: !71, file: !71, line: 30, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!28, !608, !28}
!999 = !DISubprogram(name: "e820__range_update", scope: !884, file: !884, line: 18, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!74, !74, !74, !11, !11}
