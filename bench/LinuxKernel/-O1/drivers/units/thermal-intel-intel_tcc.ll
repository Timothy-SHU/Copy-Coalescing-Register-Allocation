; ModuleID = 'drivers/thermal/intel/intel_tcc.c'
source_filename = "drivers/thermal/intel/intel_tcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_tcc_get_tjmax: ; .asciz \22GPL\22 ; .asciz \22INTEL_TCC\22 ; .balign 8 ; .quad intel_tcc_get_tjmax ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_tcc_get_offset: ; .asciz \22GPL\22 ; .asciz \22INTEL_TCC\22 ; .balign 8 ; .quad intel_tcc_get_offset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_tcc_set_offset: ; .asciz \22GPL\22 ; .asciz \22INTEL_TCC\22 ; .balign 8 ; .quad intel_tcc_set_offset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intel_tcc_get_temp: ; .asciz \22GPL\22 ; .asciz \22INTEL_TCC\22 ; .balign 8 ; .quad intel_tcc_get_temp ; .previous"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }

@__UNIQUE_ID___addressable_intel_tcc_get_tjmax11 = internal global ptr @intel_tcc_get_tjmax, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_intel_tcc_get_offset12 = internal global ptr @intel_tcc_get_offset, section ".discard.addressable", align 8, !dbg !21
@__UNIQUE_ID___addressable_intel_tcc_set_offset13 = internal global ptr @intel_tcc_set_offset, section ".discard.addressable", align 8, !dbg !23
@__UNIQUE_ID___addressable_intel_tcc_get_temp14 = internal global ptr @intel_tcc_get_temp, section ".discard.addressable", align 8, !dbg !25
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_intel_tcc_get_tjmax11, ptr @__UNIQUE_ID___addressable_intel_tcc_get_offset12, ptr @__UNIQUE_ID___addressable_intel_tcc_set_offset13, ptr @__UNIQUE_ID___addressable_intel_tcc_get_temp14], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_tcc_get_tjmax(i32 noundef %cpu) #0 align 16 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !41, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #6, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %low, metadata !42, metadata !DIExpression()), !dbg !52
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #6, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %high, metadata !43, metadata !DIExpression()), !dbg !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #6, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %val, metadata !44, metadata !DIExpression()), !dbg !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %err, metadata !45, metadata !DIExpression()), !dbg !56
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !57
  %cmp = icmp slt i32 %0, 0, !dbg !58
  br i1 %cmp, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #6, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !46, metadata !DIExpression()), !dbg !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #6, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !49, metadata !DIExpression()), !dbg !60
  %call = call i64 @native_read_msr_safe(i32 noundef 418, ptr noundef %__err) #7, !dbg !60
  store i64 %call, ptr %__val, align 8, !dbg !60
  %1 = load i64, ptr %__val, align 8, !dbg !60
  %conv = trunc i64 %1 to i32, !dbg !60
  store i32 %conv, ptr %low, align 4, !dbg !60
  %2 = load i64, ptr %__val, align 8, !dbg !60
  %shr = lshr i64 %2, 32, !dbg !60
  %conv1 = trunc i64 %shr to i32, !dbg !60
  store i32 %conv1, ptr %high, align 4, !dbg !60
  %3 = load i32, ptr %__err, align 4, !dbg !60
  store i32 %3, ptr %tmp, align 4, !dbg !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #6, !dbg !61
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #6, !dbg !61
  %4 = load i32, ptr %tmp, align 4, !dbg !60
  store i32 %4, ptr %err, align 4, !dbg !62
  br label %if.end, !dbg !63

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !64
  %call2 = call i32 @rdmsr_safe_on_cpu(i32 noundef %5, i32 noundef 418, ptr noundef %low, ptr noundef %high) #7, !dbg !65
  store i32 %call2, ptr %err, align 4, !dbg !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %err, align 4, !dbg !67
  %tobool = icmp ne i32 %6, 0, !dbg !67
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !69

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %err, align 4, !dbg !70
  store i32 %7, ptr %retval, align 4, !dbg !71
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !71

if.end4:                                          ; preds = %if.end
  %8 = load i32, ptr %low, align 4, !dbg !72
  %shr5 = lshr i32 %8, 16, !dbg !73
  %and = and i32 %shr5, 255, !dbg !74
  store i32 %and, ptr %val, align 4, !dbg !75
  %9 = load i32, ptr %val, align 4, !dbg !76
  %tobool6 = icmp ne i32 %9, 0, !dbg !76
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !76

cond.true:                                        ; preds = %if.end4
  %10 = load i32, ptr %val, align 4, !dbg !77
  br label %cond.end, !dbg !76

cond.false:                                       ; preds = %if.end4
  br label %cond.end, !dbg !76

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ -61, %cond.false ], !dbg !76
  store i32 %cond, ptr %retval, align 4, !dbg !78
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !78

cleanup:                                          ; preds = %cond.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !79
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #6, !dbg !79
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #6, !dbg !79
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #6, !dbg !79
  %11 = load i32, ptr %retval, align 4, !dbg !79
  ret i32 %11, !dbg !79
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #3 align 16 !dbg !80 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !86, metadata !DIExpression()), !dbg !91
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !87, metadata !DIExpression()), !dbg !92
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #6, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %low, metadata !88, metadata !DIExpression()), !dbg !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #6, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %high, metadata !90, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %err.addr, align 8, !dbg !94
  %1 = load i32, ptr %msr.addr, align 4, !dbg !95
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #6, !dbg !96, !srcloc !97
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !96
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !96
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !96
  store i32 %asmresult, ptr %0, align 4, !dbg !96
  store i64 %asmresult1, ptr %low, align 8, !dbg !96
  store i64 %asmresult2, ptr %high, align 8, !dbg !96
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #7, !dbg !98
  br i1 %call, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !101
  %4 = load i64, ptr %low, align 8, !dbg !102
  %5 = load i64, ptr %high, align 8, !dbg !102
  %shl = shl i64 %5, 32, !dbg !102
  %or = or i64 %4, %shl, !dbg !102
  %6 = load ptr, ptr %err.addr, align 8, !dbg !103
  %7 = load i32, ptr %6, align 4, !dbg !104
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #7, !dbg !105
  br label %if.end, !dbg !105

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !106
  %9 = load i64, ptr %high, align 8, !dbg !106
  %shl3 = shl i64 %9, 32, !dbg !106
  %or4 = or i64 %8, %shl3, !dbg !106
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #6, !dbg !107
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #6, !dbg !107
  ret i64 %or4, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !109 dso_local i32 @rdmsr_safe_on_cpu(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_tcc_get_offset(i32 noundef %cpu) #0 align 16 !dbg !113 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %err = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !115, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #6, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %low, metadata !116, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #6, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %high, metadata !117, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %err, metadata !118, metadata !DIExpression()), !dbg !128
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !129
  %cmp = icmp slt i32 %0, 0, !dbg !130
  br i1 %cmp, label %if.then, label %if.else, !dbg !131

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !119, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !122, metadata !DIExpression()), !dbg !132
  %call = call i64 @native_read_msr_safe(i32 noundef 418, ptr noundef %__err) #7, !dbg !132
  store i64 %call, ptr %__val, align 8, !dbg !132
  %1 = load i64, ptr %__val, align 8, !dbg !132
  %conv = trunc i64 %1 to i32, !dbg !132
  store i32 %conv, ptr %low, align 4, !dbg !132
  %2 = load i64, ptr %__val, align 8, !dbg !132
  %shr = lshr i64 %2, 32, !dbg !132
  %conv1 = trunc i64 %shr to i32, !dbg !132
  store i32 %conv1, ptr %high, align 4, !dbg !132
  %3 = load i32, ptr %__err, align 4, !dbg !132
  store i32 %3, ptr %tmp, align 4, !dbg !132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #6, !dbg !133
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #6, !dbg !133
  %4 = load i32, ptr %tmp, align 4, !dbg !132
  store i32 %4, ptr %err, align 4, !dbg !134
  br label %if.end, !dbg !135

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !136
  %call2 = call i32 @rdmsr_safe_on_cpu(i32 noundef %5, i32 noundef 418, ptr noundef %low, ptr noundef %high) #7, !dbg !137
  store i32 %call2, ptr %err, align 4, !dbg !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %err, align 4, !dbg !139
  %tobool = icmp ne i32 %6, 0, !dbg !139
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !141

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %err, align 4, !dbg !142
  store i32 %7, ptr %retval, align 4, !dbg !143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !143

if.end4:                                          ; preds = %if.end
  %8 = load i32, ptr %low, align 4, !dbg !144
  %shr5 = lshr i32 %8, 24, !dbg !145
  %and = and i32 %shr5, 63, !dbg !146
  store i32 %and, ptr %retval, align 4, !dbg !147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !147

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !148
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #6, !dbg !148
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #6, !dbg !148
  %9 = load i32, ptr %retval, align 4, !dbg !148
  ret i32 %9, !dbg !148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_tcc_set_offset(i32 noundef %cpu, i32 noundef %offset) #0 align 16 !dbg !149 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !153, metadata !DIExpression()), !dbg !162
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !154, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #6, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %low, metadata !155, metadata !DIExpression()), !dbg !165
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #6, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %high, metadata !156, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %err, metadata !157, metadata !DIExpression()), !dbg !168
  %0 = load i32, ptr %offset.addr, align 4, !dbg !169
  %cmp = icmp slt i32 %0, 0, !dbg !171
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !172

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %offset.addr, align 4, !dbg !173
  %cmp1 = icmp sgt i32 %1, 63, !dbg !174
  br i1 %cmp1, label %if.then, label %if.end, !dbg !175

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !176

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !177
  %cmp2 = icmp slt i32 %2, 0, !dbg !178
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !179

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #6, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !158, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #6, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !161, metadata !DIExpression()), !dbg !180
  %call = call i64 @native_read_msr_safe(i32 noundef 418, ptr noundef %__err) #7, !dbg !180
  store i64 %call, ptr %__val, align 8, !dbg !180
  %3 = load i64, ptr %__val, align 8, !dbg !180
  %conv = trunc i64 %3 to i32, !dbg !180
  store i32 %conv, ptr %low, align 4, !dbg !180
  %4 = load i64, ptr %__val, align 8, !dbg !180
  %shr = lshr i64 %4, 32, !dbg !180
  %conv4 = trunc i64 %shr to i32, !dbg !180
  store i32 %conv4, ptr %high, align 4, !dbg !180
  %5 = load i32, ptr %__err, align 4, !dbg !180
  store i32 %5, ptr %tmp, align 4, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #6, !dbg !181
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #6, !dbg !181
  %6 = load i32, ptr %tmp, align 4, !dbg !180
  store i32 %6, ptr %err, align 4, !dbg !182
  br label %if.end6, !dbg !183

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %cpu.addr, align 4, !dbg !184
  %call5 = call i32 @rdmsr_safe_on_cpu(i32 noundef %7, i32 noundef 418, ptr noundef %low, ptr noundef %high) #7, !dbg !185
  store i32 %call5, ptr %err, align 4, !dbg !186
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %8 = load i32, ptr %err, align 4, !dbg !187
  %tobool = icmp ne i32 %8, 0, !dbg !187
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !189

if.then7:                                         ; preds = %if.end6
  %9 = load i32, ptr %err, align 4, !dbg !190
  store i32 %9, ptr %retval, align 4, !dbg !191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !191

if.end8:                                          ; preds = %if.end6
  %10 = load i32, ptr %low, align 4, !dbg !192
  %conv9 = zext i32 %10 to i64, !dbg !192
  %and = and i64 %conv9, 2147483648, !dbg !194
  %tobool10 = icmp ne i64 %and, 0, !dbg !194
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !195

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %retval, align 4, !dbg !196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !196

if.end12:                                         ; preds = %if.end8
  %11 = load i32, ptr %low, align 4, !dbg !197
  %and13 = and i32 %11, -1056964609, !dbg !197
  store i32 %and13, ptr %low, align 4, !dbg !197
  %12 = load i32, ptr %offset.addr, align 4, !dbg !198
  %shl = shl i32 %12, 24, !dbg !199
  %13 = load i32, ptr %low, align 4, !dbg !200
  %or = or i32 %13, %shl, !dbg !200
  store i32 %or, ptr %low, align 4, !dbg !200
  %14 = load i32, ptr %cpu.addr, align 4, !dbg !201
  %cmp14 = icmp slt i32 %14, 0, !dbg !203
  br i1 %cmp14, label %if.then16, label %if.else18, !dbg !204

if.then16:                                        ; preds = %if.end12
  %15 = load i32, ptr %low, align 4, !dbg !205
  %16 = load i32, ptr %high, align 4, !dbg !206
  %call17 = call i32 @wrmsr_safe(i32 noundef 418, i32 noundef %15, i32 noundef %16) #7, !dbg !207
  store i32 %call17, ptr %retval, align 4, !dbg !208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !208

if.else18:                                        ; preds = %if.end12
  %17 = load i32, ptr %cpu.addr, align 4, !dbg !209
  %18 = load i32, ptr %low, align 4, !dbg !210
  %19 = load i32, ptr %high, align 4, !dbg !211
  %call19 = call i32 @wrmsr_safe_on_cpu(i32 noundef %17, i32 noundef 418, i32 noundef %18, i32 noundef %19) #7, !dbg !212
  store i32 %call19, ptr %retval, align 4, !dbg !213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !213

cleanup:                                          ; preds = %if.else18, %if.then16, %if.then11, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !214
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #6, !dbg !214
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #6, !dbg !214
  %20 = load i32, ptr %retval, align 4, !dbg !214
  ret i32 %20, !dbg !214
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !215 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !219, metadata !DIExpression()), !dbg !222
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !220, metadata !DIExpression()), !dbg !223
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !221, metadata !DIExpression()), !dbg !224
  %0 = load i32, ptr %msr.addr, align 4, !dbg !225
  %1 = load i32, ptr %low.addr, align 4, !dbg !226
  %2 = load i32, ptr %high.addr, align 4, !dbg !227
  %call = call i32 @native_write_msr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #7, !dbg !228
  ret i32 %call, !dbg !229
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !230 dso_local i32 @wrmsr_safe_on_cpu(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intel_tcc_get_temp(i32 noundef %cpu, ptr noundef %temp, i1 noundef zeroext %pkg) #0 align 16 !dbg !233 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %temp.addr = alloca ptr, align 8
  %pkg.addr = alloca i8, align 1
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %msr = alloca i32, align 4
  %tjmax = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !240, metadata !DIExpression()), !dbg !252
  store ptr %temp, ptr %temp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !241, metadata !DIExpression()), !dbg !253
  %frombool = zext i1 %pkg to i8
  store i8 %frombool, ptr %pkg.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pkg.addr, metadata !242, metadata !DIExpression()), !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #6, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %low, metadata !243, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #6, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %high, metadata !244, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 4, ptr %msr) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !245, metadata !DIExpression()), !dbg !259
  %0 = load i8, ptr %pkg.addr, align 1, !dbg !260, !range !261, !noundef !262
  %tobool = trunc i8 %0 to i1, !dbg !260
  %1 = zext i1 %tobool to i64, !dbg !260
  %cond = select i1 %tobool, i32 433, i32 412, !dbg !260
  store i32 %cond, ptr %msr, align 4, !dbg !259
  call void @llvm.lifetime.start.p0(i64 4, ptr %tjmax) #6, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %tjmax, metadata !246, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %err, metadata !247, metadata !DIExpression()), !dbg !265
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !266
  %call = call i32 @intel_tcc_get_tjmax(i32 noundef %2) #7, !dbg !267
  store i32 %call, ptr %tjmax, align 4, !dbg !268
  %3 = load i32, ptr %tjmax, align 4, !dbg !269
  %cmp = icmp slt i32 %3, 0, !dbg !271
  br i1 %cmp, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %tjmax, align 4, !dbg !273
  store i32 %4, ptr %retval, align 4, !dbg !274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !274

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !275
  %cmp1 = icmp slt i32 %5, 0, !dbg !276
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !277

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #6, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !248, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #6, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !251, metadata !DIExpression()), !dbg !278
  %6 = load i32, ptr %msr, align 4, !dbg !278
  %call3 = call i64 @native_read_msr_safe(i32 noundef %6, ptr noundef %__err) #7, !dbg !278
  store i64 %call3, ptr %__val, align 8, !dbg !278
  %7 = load i64, ptr %__val, align 8, !dbg !278
  %conv = trunc i64 %7 to i32, !dbg !278
  store i32 %conv, ptr %low, align 4, !dbg !278
  %8 = load i64, ptr %__val, align 8, !dbg !278
  %shr = lshr i64 %8, 32, !dbg !278
  %conv4 = trunc i64 %shr to i32, !dbg !278
  store i32 %conv4, ptr %high, align 4, !dbg !278
  %9 = load i32, ptr %__err, align 4, !dbg !278
  store i32 %9, ptr %tmp, align 4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #6, !dbg !279
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #6, !dbg !279
  %10 = load i32, ptr %tmp, align 4, !dbg !278
  store i32 %10, ptr %err, align 4, !dbg !280
  br label %if.end6, !dbg !281

if.else:                                          ; preds = %if.end
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !282
  %12 = load i32, ptr %msr, align 4, !dbg !283
  %call5 = call i32 @rdmsr_safe_on_cpu(i32 noundef %11, i32 noundef %12, ptr noundef %low, ptr noundef %high) #7, !dbg !284
  store i32 %call5, ptr %err, align 4, !dbg !285
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %13 = load i32, ptr %err, align 4, !dbg !286
  %tobool7 = icmp ne i32 %13, 0, !dbg !286
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !288

if.then8:                                         ; preds = %if.end6
  %14 = load i32, ptr %err, align 4, !dbg !289
  store i32 %14, ptr %retval, align 4, !dbg !290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !290

if.end9:                                          ; preds = %if.end6
  %15 = load i32, ptr %low, align 4, !dbg !291
  %conv10 = zext i32 %15 to i64, !dbg !291
  %and = and i64 %conv10, 2147483648, !dbg !293
  %tobool11 = icmp ne i64 %and, 0, !dbg !293
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !294

if.then12:                                        ; preds = %if.end9
  store i32 -61, ptr %retval, align 4, !dbg !295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !295

if.end13:                                         ; preds = %if.end9
  %16 = load i32, ptr %tjmax, align 4, !dbg !296
  %17 = load i32, ptr %low, align 4, !dbg !297
  %shr14 = lshr i32 %17, 16, !dbg !298
  %and15 = and i32 %shr14, 127, !dbg !299
  %sub = sub i32 %16, %and15, !dbg !300
  %18 = load ptr, ptr %temp.addr, align 8, !dbg !301
  store i32 %sub, ptr %18, align 4, !dbg !302
  store i32 0, ptr %retval, align 4, !dbg !303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !304
  call void @llvm.lifetime.end.p0(i64 4, ptr %tjmax) #6, !dbg !304
  call void @llvm.lifetime.end.p0(i64 4, ptr %msr) #6, !dbg !304
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #6, !dbg !304
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #6, !dbg !304
  %19 = load i32, ptr %retval, align 4, !dbg !304
  ret i32 %19, !dbg !304
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !305 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load ptr, ptr %key.addr, align 8, !dbg !337
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #7, !dbg !338
  ret i1 %call, !dbg !339
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !340 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !343 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !348, metadata !DIExpression()), !dbg !351
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !349, metadata !DIExpression()), !dbg !352
  %0 = load ptr, ptr %key.addr, align 8, !dbg !353
  %1 = load i8, ptr %branch.addr, align 1, !dbg !354, !range !261, !noundef !262
  %tobool = trunc i8 %1 to i1, !dbg !354
  %conv = zext i1 %tobool to i32, !dbg !354
  %or = or i32 2, %conv, !dbg !355
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #6
          to label %asm.fallthrough [label %l_yes], !dbg !356, !srcloc !357

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !358
  br label %return, !dbg !358

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !350), !dbg !359
  store i1 true, ptr %retval, align 1, !dbg !360
  br label %return, !dbg !360

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !361
  ret i1 %2, !dbg !361
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_write_msr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !362 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !364, metadata !DIExpression()), !dbg !368
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !365, metadata !DIExpression()), !dbg !369
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !366, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %err, metadata !367, metadata !DIExpression()), !dbg !372
  %0 = load i32, ptr %msr.addr, align 4, !dbg !373
  %1 = load i32, ptr %low.addr, align 4, !dbg !374
  %2 = load i32, ptr %high.addr, align 4, !dbg !375
  %3 = call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #6, !dbg !376, !srcloc !377
  store i32 %3, ptr %err, align 4, !dbg !376
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #7, !dbg !378
  br i1 %call, label %if.then, label %if.end, !dbg !380

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %msr.addr, align 4, !dbg !381
  %5 = load i32, ptr %high.addr, align 4, !dbg !382
  %conv = zext i32 %5 to i64, !dbg !383
  %shl = shl i64 %conv, 32, !dbg !384
  %6 = load i32, ptr %low.addr, align 4, !dbg !385
  %conv1 = zext i32 %6 to i64, !dbg !385
  %or = or i64 %shl, %conv1, !dbg !386
  %7 = load i32, ptr %err, align 4, !dbg !387
  call void @do_trace_write_msr(i32 noundef %4, i64 noundef %or, i32 noundef %7) #7, !dbg !388
  br label %if.end, !dbg !388

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4, !dbg !389
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !390
  ret i32 %8, !dbg !391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !392 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_tcc_get_tjmax11", scope: !2, file: !3, line: 36, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/thermal/intel/.intel_tcc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/thermal/intel/intel_tcc\22 -D KBUILD_BASENAME=\22intel_tcc\22 -D KBUILD_MODNAME=\22intel_tcc\22 -D __KBUILD_MODNAME=kmod_intel_tcc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/thermal/intel/intel_tcc.ll drivers/thermal/intel/intel_tcc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/intel/intel_tcc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a96bc587208cf87bdcf6c27c6962a6e0")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !16, !17}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !7)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !13, line: 23, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !15, line: 31, baseType: !19)
!19 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!0, !21, !23, !25}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_tcc_get_offset12", scope: !2, file: !3, line: 61, type: !16, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_tcc_set_offset13", scope: !2, file: !3, line: 101, type: !16, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_tcc_get_temp14", scope: !2, file: !3, line: 139, type: !16, isLocal: true, isDefinition: true)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 8, !"cf-protection-branch", i32 1}
!31 = !{i32 4, !"function_return_thunk_extern", i32 1}
!32 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!33 = !{i32 1, !"Code Model", i32 2}
!34 = !{i32 1, !"override-stack-alignment", i32 8}
!35 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!36 = distinct !DISubprogram(name: "intel_tcc_get_tjmax", scope: !3, file: !3, line: 20, type: !37, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !39}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !{!41, !42, !43, !44, !45, !46, !49}
!41 = !DILocalVariable(name: "cpu", arg: 1, scope: !36, file: !3, line: 20, type: !39)
!42 = !DILocalVariable(name: "low", scope: !36, file: !3, line: 22, type: !12)
!43 = !DILocalVariable(name: "high", scope: !36, file: !3, line: 22, type: !12)
!44 = !DILocalVariable(name: "val", scope: !36, file: !3, line: 23, type: !39)
!45 = !DILocalVariable(name: "err", scope: !36, file: !3, line: 23, type: !39)
!46 = !DILocalVariable(name: "__err", scope: !47, file: !3, line: 26, type: !39)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 26, column: 9)
!48 = distinct !DILexicalBlock(scope: !36, file: !3, line: 25, column: 6)
!49 = !DILocalVariable(name: "__val", scope: !47, file: !3, line: 26, type: !17)
!50 = !DILocation(line: 20, column: 29, scope: !36)
!51 = !DILocation(line: 22, column: 2, scope: !36)
!52 = !DILocation(line: 22, column: 6, scope: !36)
!53 = !DILocation(line: 22, column: 11, scope: !36)
!54 = !DILocation(line: 23, column: 2, scope: !36)
!55 = !DILocation(line: 23, column: 6, scope: !36)
!56 = !DILocation(line: 23, column: 11, scope: !36)
!57 = !DILocation(line: 25, column: 6, scope: !48)
!58 = !DILocation(line: 25, column: 10, scope: !48)
!59 = !DILocation(line: 25, column: 6, scope: !36)
!60 = !DILocation(line: 26, column: 9, scope: !47)
!61 = !DILocation(line: 26, column: 9, scope: !48)
!62 = !DILocation(line: 26, column: 7, scope: !48)
!63 = !DILocation(line: 26, column: 3, scope: !48)
!64 = !DILocation(line: 28, column: 27, scope: !48)
!65 = !DILocation(line: 28, column: 9, scope: !48)
!66 = !DILocation(line: 28, column: 7, scope: !48)
!67 = !DILocation(line: 29, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !36, file: !3, line: 29, column: 6)
!69 = !DILocation(line: 29, column: 6, scope: !36)
!70 = !DILocation(line: 30, column: 10, scope: !68)
!71 = !DILocation(line: 30, column: 3, scope: !68)
!72 = !DILocation(line: 32, column: 9, scope: !36)
!73 = !DILocation(line: 32, column: 13, scope: !36)
!74 = !DILocation(line: 32, column: 20, scope: !36)
!75 = !DILocation(line: 32, column: 6, scope: !36)
!76 = !DILocation(line: 34, column: 9, scope: !36)
!77 = !DILocation(line: 34, column: 15, scope: !36)
!78 = !DILocation(line: 34, column: 2, scope: !36)
!79 = !DILocation(line: 35, column: 1, scope: !36)
!80 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !81, file: !81, line: 126, type: !82, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!81 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!82 = !DISubroutineType(types: !83)
!83 = !{!19, !7, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!85 = !{!86, !87, !88, !90}
!86 = !DILocalVariable(name: "msr", arg: 1, scope: !80, file: !81, line: 126, type: !7)
!87 = !DILocalVariable(name: "err", arg: 2, scope: !80, file: !81, line: 127, type: !84)
!88 = !DILocalVariable(name: "low", scope: !80, file: !81, line: 129, type: !89)
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DILocalVariable(name: "high", scope: !80, file: !81, line: 129, type: !89)
!91 = !DILocation(line: 126, column: 68, scope: !80)
!92 = !DILocation(line: 127, column: 18, scope: !80)
!93 = !DILocation(line: 129, column: 2, scope: !80)
!94 = !DILocation(line: 134, column: 23, scope: !80)
!95 = !DILocation(line: 135, column: 15, scope: !80)
!96 = !DILocation(line: 131, column: 2, scope: !80)
!97 = !{i64 149927, i64 149968, i64 149972, i64 2148868124, i64 2148868149, i64 2148868184, i64 2148868401, i64 2148868454, i64 2148868485, i64 2148868516, i64 2148868594, i64 2148868628, i64 2148868666, i64 2148868709, i64 2148868732, i64 2148868770, i64 2148868792, i64 2148868823, i64 2148868908, i64 2148868942, i64 2148868980, i64 2148869023, i64 2148869046, i64 2148869084, i64 2148869106, i64 2148869140, i64 2148869202, i64 2148869225, i64 2148868250, i64 2148869299, i64 2148868361}
!98 = !DILocation(line: 136, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !80, file: !81, line: 136, column: 6)
!100 = !DILocation(line: 136, column: 6, scope: !80)
!101 = !DILocation(line: 137, column: 21, scope: !99)
!102 = !DILocation(line: 137, column: 26, scope: !99)
!103 = !DILocation(line: 137, column: 56, scope: !99)
!104 = !DILocation(line: 137, column: 55, scope: !99)
!105 = !DILocation(line: 137, column: 3, scope: !99)
!106 = !DILocation(line: 138, column: 9, scope: !80)
!107 = !DILocation(line: 139, column: 1, scope: !80)
!108 = !DILocation(line: 138, column: 2, scope: !80)
!109 = !DISubprogram(name: "rdmsr_safe_on_cpu", scope: !81, file: !81, line: 320, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{!39, !7, !12, !112, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!113 = distinct !DISubprogram(name: "intel_tcc_get_offset", scope: !3, file: !3, line: 47, type: !37, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115, !116, !117, !118, !119, !122}
!115 = !DILocalVariable(name: "cpu", arg: 1, scope: !113, file: !3, line: 47, type: !39)
!116 = !DILocalVariable(name: "low", scope: !113, file: !3, line: 49, type: !12)
!117 = !DILocalVariable(name: "high", scope: !113, file: !3, line: 49, type: !12)
!118 = !DILocalVariable(name: "err", scope: !113, file: !3, line: 50, type: !39)
!119 = !DILocalVariable(name: "__err", scope: !120, file: !3, line: 53, type: !39)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 53, column: 9)
!121 = distinct !DILexicalBlock(scope: !113, file: !3, line: 52, column: 6)
!122 = !DILocalVariable(name: "__val", scope: !120, file: !3, line: 53, type: !17)
!123 = !DILocation(line: 47, column: 30, scope: !113)
!124 = !DILocation(line: 49, column: 2, scope: !113)
!125 = !DILocation(line: 49, column: 6, scope: !113)
!126 = !DILocation(line: 49, column: 11, scope: !113)
!127 = !DILocation(line: 50, column: 2, scope: !113)
!128 = !DILocation(line: 50, column: 6, scope: !113)
!129 = !DILocation(line: 52, column: 6, scope: !121)
!130 = !DILocation(line: 52, column: 10, scope: !121)
!131 = !DILocation(line: 52, column: 6, scope: !113)
!132 = !DILocation(line: 53, column: 9, scope: !120)
!133 = !DILocation(line: 53, column: 9, scope: !121)
!134 = !DILocation(line: 53, column: 7, scope: !121)
!135 = !DILocation(line: 53, column: 3, scope: !121)
!136 = !DILocation(line: 55, column: 27, scope: !121)
!137 = !DILocation(line: 55, column: 9, scope: !121)
!138 = !DILocation(line: 55, column: 7, scope: !121)
!139 = !DILocation(line: 56, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !113, file: !3, line: 56, column: 6)
!141 = !DILocation(line: 56, column: 6, scope: !113)
!142 = !DILocation(line: 57, column: 10, scope: !140)
!143 = !DILocation(line: 57, column: 3, scope: !140)
!144 = !DILocation(line: 59, column: 10, scope: !113)
!145 = !DILocation(line: 59, column: 14, scope: !113)
!146 = !DILocation(line: 59, column: 21, scope: !113)
!147 = !DILocation(line: 59, column: 2, scope: !113)
!148 = !DILocation(line: 60, column: 1, scope: !113)
!149 = distinct !DISubprogram(name: "intel_tcc_set_offset", scope: !3, file: !3, line: 74, type: !150, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!39, !39, !39}
!152 = !{!153, !154, !155, !156, !157, !158, !161}
!153 = !DILocalVariable(name: "cpu", arg: 1, scope: !149, file: !3, line: 74, type: !39)
!154 = !DILocalVariable(name: "offset", arg: 2, scope: !149, file: !3, line: 74, type: !39)
!155 = !DILocalVariable(name: "low", scope: !149, file: !3, line: 76, type: !12)
!156 = !DILocalVariable(name: "high", scope: !149, file: !3, line: 76, type: !12)
!157 = !DILocalVariable(name: "err", scope: !149, file: !3, line: 77, type: !39)
!158 = !DILocalVariable(name: "__err", scope: !159, file: !3, line: 83, type: !39)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 83, column: 9)
!160 = distinct !DILexicalBlock(scope: !149, file: !3, line: 82, column: 6)
!161 = !DILocalVariable(name: "__val", scope: !159, file: !3, line: 83, type: !17)
!162 = !DILocation(line: 74, column: 30, scope: !149)
!163 = !DILocation(line: 74, column: 39, scope: !149)
!164 = !DILocation(line: 76, column: 2, scope: !149)
!165 = !DILocation(line: 76, column: 6, scope: !149)
!166 = !DILocation(line: 76, column: 11, scope: !149)
!167 = !DILocation(line: 77, column: 2, scope: !149)
!168 = !DILocation(line: 77, column: 6, scope: !149)
!169 = !DILocation(line: 79, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !149, file: !3, line: 79, column: 6)
!171 = !DILocation(line: 79, column: 13, scope: !170)
!172 = !DILocation(line: 79, column: 17, scope: !170)
!173 = !DILocation(line: 79, column: 20, scope: !170)
!174 = !DILocation(line: 79, column: 27, scope: !170)
!175 = !DILocation(line: 79, column: 6, scope: !149)
!176 = !DILocation(line: 80, column: 3, scope: !170)
!177 = !DILocation(line: 82, column: 6, scope: !160)
!178 = !DILocation(line: 82, column: 10, scope: !160)
!179 = !DILocation(line: 82, column: 6, scope: !149)
!180 = !DILocation(line: 83, column: 9, scope: !159)
!181 = !DILocation(line: 83, column: 9, scope: !160)
!182 = !DILocation(line: 83, column: 7, scope: !160)
!183 = !DILocation(line: 83, column: 3, scope: !160)
!184 = !DILocation(line: 85, column: 27, scope: !160)
!185 = !DILocation(line: 85, column: 9, scope: !160)
!186 = !DILocation(line: 85, column: 7, scope: !160)
!187 = !DILocation(line: 86, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !149, file: !3, line: 86, column: 6)
!189 = !DILocation(line: 86, column: 6, scope: !149)
!190 = !DILocation(line: 87, column: 10, scope: !188)
!191 = !DILocation(line: 87, column: 3, scope: !188)
!192 = !DILocation(line: 90, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !149, file: !3, line: 90, column: 6)
!194 = !DILocation(line: 90, column: 10, scope: !193)
!195 = !DILocation(line: 90, column: 6, scope: !149)
!196 = !DILocation(line: 91, column: 3, scope: !193)
!197 = !DILocation(line: 93, column: 6, scope: !149)
!198 = !DILocation(line: 94, column: 9, scope: !149)
!199 = !DILocation(line: 94, column: 16, scope: !149)
!200 = !DILocation(line: 94, column: 6, scope: !149)
!201 = !DILocation(line: 96, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !149, file: !3, line: 96, column: 6)
!203 = !DILocation(line: 96, column: 10, scope: !202)
!204 = !DILocation(line: 96, column: 6, scope: !149)
!205 = !DILocation(line: 97, column: 50, scope: !202)
!206 = !DILocation(line: 97, column: 55, scope: !202)
!207 = !DILocation(line: 97, column: 10, scope: !202)
!208 = !DILocation(line: 97, column: 3, scope: !202)
!209 = !DILocation(line: 99, column: 28, scope: !202)
!210 = !DILocation(line: 99, column: 62, scope: !202)
!211 = !DILocation(line: 99, column: 67, scope: !202)
!212 = !DILocation(line: 99, column: 10, scope: !202)
!213 = !DILocation(line: 99, column: 3, scope: !202)
!214 = !DILocation(line: 100, column: 1, scope: !149)
!215 = distinct !DISubprogram(name: "wrmsr_safe", scope: !81, file: !81, line: 266, type: !216, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!39, !7, !12, !12}
!218 = !{!219, !220, !221}
!219 = !DILocalVariable(name: "msr", arg: 1, scope: !215, file: !81, line: 266, type: !7)
!220 = !DILocalVariable(name: "low", arg: 2, scope: !215, file: !81, line: 266, type: !12)
!221 = !DILocalVariable(name: "high", arg: 3, scope: !215, file: !81, line: 266, type: !12)
!222 = !DILocation(line: 266, column: 43, scope: !215)
!223 = !DILocation(line: 266, column: 52, scope: !215)
!224 = !DILocation(line: 266, column: 61, scope: !215)
!225 = !DILocation(line: 268, column: 31, scope: !215)
!226 = !DILocation(line: 268, column: 36, scope: !215)
!227 = !DILocation(line: 268, column: 41, scope: !215)
!228 = !DILocation(line: 268, column: 9, scope: !215)
!229 = !DILocation(line: 268, column: 2, scope: !215)
!230 = !DISubprogram(name: "wrmsr_safe_on_cpu", scope: !81, file: !81, line: 321, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{!39, !7, !12, !12, !12}
!233 = distinct !DISubprogram(name: "intel_tcc_get_temp", scope: !3, file: !3, line: 114, type: !234, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!234 = !DISubroutineType(types: !235)
!235 = !{!39, !39, !84, !236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !237, line: 35, baseType: !238)
!237 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!238 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !251}
!240 = !DILocalVariable(name: "cpu", arg: 1, scope: !233, file: !3, line: 114, type: !39)
!241 = !DILocalVariable(name: "temp", arg: 2, scope: !233, file: !3, line: 114, type: !84)
!242 = !DILocalVariable(name: "pkg", arg: 3, scope: !233, file: !3, line: 114, type: !236)
!243 = !DILocalVariable(name: "low", scope: !233, file: !3, line: 116, type: !12)
!244 = !DILocalVariable(name: "high", scope: !233, file: !3, line: 116, type: !12)
!245 = !DILocalVariable(name: "msr", scope: !233, file: !3, line: 117, type: !12)
!246 = !DILocalVariable(name: "tjmax", scope: !233, file: !3, line: 118, type: !39)
!247 = !DILocalVariable(name: "err", scope: !233, file: !3, line: 118, type: !39)
!248 = !DILocalVariable(name: "__err", scope: !249, file: !3, line: 125, type: !39)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 125, column: 9)
!250 = distinct !DILexicalBlock(scope: !233, file: !3, line: 124, column: 6)
!251 = !DILocalVariable(name: "__val", scope: !249, file: !3, line: 125, type: !17)
!252 = !DILocation(line: 114, column: 28, scope: !233)
!253 = !DILocation(line: 114, column: 38, scope: !233)
!254 = !DILocation(line: 114, column: 49, scope: !233)
!255 = !DILocation(line: 116, column: 2, scope: !233)
!256 = !DILocation(line: 116, column: 6, scope: !233)
!257 = !DILocation(line: 116, column: 11, scope: !233)
!258 = !DILocation(line: 117, column: 2, scope: !233)
!259 = !DILocation(line: 117, column: 6, scope: !233)
!260 = !DILocation(line: 117, column: 12, scope: !233)
!261 = !{i8 0, i8 2}
!262 = !{}
!263 = !DILocation(line: 118, column: 2, scope: !233)
!264 = !DILocation(line: 118, column: 6, scope: !233)
!265 = !DILocation(line: 118, column: 13, scope: !233)
!266 = !DILocation(line: 120, column: 30, scope: !233)
!267 = !DILocation(line: 120, column: 10, scope: !233)
!268 = !DILocation(line: 120, column: 8, scope: !233)
!269 = !DILocation(line: 121, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !233, file: !3, line: 121, column: 6)
!271 = !DILocation(line: 121, column: 12, scope: !270)
!272 = !DILocation(line: 121, column: 6, scope: !233)
!273 = !DILocation(line: 122, column: 10, scope: !270)
!274 = !DILocation(line: 122, column: 3, scope: !270)
!275 = !DILocation(line: 124, column: 6, scope: !250)
!276 = !DILocation(line: 124, column: 10, scope: !250)
!277 = !DILocation(line: 124, column: 6, scope: !233)
!278 = !DILocation(line: 125, column: 9, scope: !249)
!279 = !DILocation(line: 125, column: 9, scope: !250)
!280 = !DILocation(line: 125, column: 7, scope: !250)
!281 = !DILocation(line: 125, column: 3, scope: !250)
!282 = !DILocation(line: 127, column: 27, scope: !250)
!283 = !DILocation(line: 127, column: 32, scope: !250)
!284 = !DILocation(line: 127, column: 9, scope: !250)
!285 = !DILocation(line: 127, column: 7, scope: !250)
!286 = !DILocation(line: 128, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !233, file: !3, line: 128, column: 6)
!288 = !DILocation(line: 128, column: 6, scope: !233)
!289 = !DILocation(line: 129, column: 10, scope: !287)
!290 = !DILocation(line: 129, column: 3, scope: !287)
!291 = !DILocation(line: 132, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !233, file: !3, line: 132, column: 6)
!293 = !DILocation(line: 132, column: 12, scope: !292)
!294 = !DILocation(line: 132, column: 6, scope: !233)
!295 = !DILocation(line: 133, column: 3, scope: !292)
!296 = !DILocation(line: 135, column: 10, scope: !233)
!297 = !DILocation(line: 135, column: 20, scope: !233)
!298 = !DILocation(line: 135, column: 24, scope: !233)
!299 = !DILocation(line: 135, column: 31, scope: !233)
!300 = !DILocation(line: 135, column: 16, scope: !233)
!301 = !DILocation(line: 135, column: 3, scope: !233)
!302 = !DILocation(line: 135, column: 8, scope: !233)
!303 = !DILocation(line: 137, column: 2, scope: !233)
!304 = !DILocation(line: 138, column: 1, scope: !233)
!305 = distinct !DISubprogram(name: "static_key_false", scope: !306, file: !306, line: 205, type: !307, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!306 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!307 = !DISubroutineType(types: !308)
!308 = !{!236, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !306, line: 85, size: 128, elements: !311)
!311 = !{!312, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !310, file: !306, line: 86, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !237, line: 174, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 172, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !314, file: !237, line: 173, baseType: !39, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !306, line: 101, baseType: !318, size: 64, offset: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !306, line: 101, size: 64, elements: !319)
!319 = !{!320, !321, !331}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !318, file: !306, line: 102, baseType: !89, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !318, file: !306, line: 103, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !306, line: 117, size: 128, elements: !324)
!324 = !{!325, !328, !329}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !323, file: !306, line: 118, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !13, line: 20, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !15, line: 26, baseType: !39)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !323, file: !306, line: 119, baseType: !326, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !323, file: !306, line: 120, baseType: !330, size: 64, offset: 64)
!330 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !306, line: 104, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !306, line: 104, flags: DIFlagFwdDecl)
!334 = !{!335}
!335 = !DILocalVariable(name: "key", arg: 1, scope: !305, file: !306, line: 205, type: !309)
!336 = !DILocation(line: 205, column: 65, scope: !305)
!337 = !DILocation(line: 207, column: 28, scope: !305)
!338 = !DILocation(line: 207, column: 9, scope: !305)
!339 = !DILocation(line: 207, column: 2, scope: !305)
!340 = !DISubprogram(name: "do_trace_read_msr", scope: !81, file: !81, line: 65, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !7, !17, !39}
!343 = distinct !DISubprogram(name: "arch_static_branch", scope: !344, file: !344, line: 25, type: !345, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!344 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!345 = !DISubroutineType(types: !346)
!346 = !{!236, !309, !236}
!347 = !{!348, !349, !350}
!348 = !DILocalVariable(name: "key", arg: 1, scope: !343, file: !344, line: 25, type: !309)
!349 = !DILocalVariable(name: "branch", arg: 2, scope: !343, file: !344, line: 25, type: !236)
!350 = !DILabel(scope: !343, name: "l_yes", file: !344, line: 33)
!351 = !DILocation(line: 25, column: 67, scope: !343)
!352 = !DILocation(line: 25, column: 77, scope: !343)
!353 = !DILocation(line: 30, column: 13, scope: !343)
!354 = !DILocation(line: 30, column: 28, scope: !343)
!355 = !DILocation(line: 30, column: 26, scope: !343)
!356 = !DILocation(line: 27, column: 2, scope: !343)
!357 = !{i64 783414, i64 783458, i64 2148268141, i64 2148268162, i64 2148268188, i64 2148268221, i64 2148268255, i64 2148268279}
!358 = !DILocation(line: 32, column: 2, scope: !343)
!359 = !DILocation(line: 33, column: 1, scope: !343)
!360 = !DILocation(line: 34, column: 2, scope: !343)
!361 = !DILocation(line: 35, column: 1, scope: !343)
!362 = distinct !DISubprogram(name: "native_write_msr_safe", scope: !81, file: !81, line: 153, type: !216, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!363 = !{!364, !365, !366, !367}
!364 = !DILocalVariable(name: "msr", arg: 1, scope: !362, file: !81, line: 153, type: !7)
!365 = !DILocalVariable(name: "low", arg: 2, scope: !362, file: !81, line: 153, type: !12)
!366 = !DILocalVariable(name: "high", arg: 3, scope: !362, file: !81, line: 153, type: !12)
!367 = !DILocalVariable(name: "err", scope: !362, file: !81, line: 155, type: !39)
!368 = !DILocation(line: 153, column: 36, scope: !362)
!369 = !DILocation(line: 153, column: 45, scope: !362)
!370 = !DILocation(line: 153, column: 54, scope: !362)
!371 = !DILocation(line: 155, column: 2, scope: !362)
!372 = !DILocation(line: 155, column: 6, scope: !362)
!373 = !DILocation(line: 161, column: 15, scope: !362)
!374 = !DILocation(line: 161, column: 26, scope: !362)
!375 = !DILocation(line: 161, column: 37, scope: !362)
!376 = !DILocation(line: 157, column: 2, scope: !362)
!377 = !{i64 150678, i64 150719, i64 150723, i64 2148870031, i64 2148870056, i64 2148870091, i64 2148870308, i64 2148870361, i64 2148870392, i64 2148870423, i64 2148870501, i64 2148870535, i64 2148870573, i64 2148870616, i64 2148870639, i64 2148870677, i64 2148870699, i64 2148870730, i64 2148870815, i64 2148870849, i64 2148870887, i64 2148870930, i64 2148870953, i64 2148870991, i64 2148871013, i64 2148871047, i64 2148871109, i64 2148871132, i64 2148870157, i64 2148871206, i64 2148870268}
!378 = !DILocation(line: 163, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !362, file: !81, line: 163, column: 6)
!380 = !DILocation(line: 163, column: 6, scope: !362)
!381 = !DILocation(line: 164, column: 22, scope: !379)
!382 = !DILocation(line: 164, column: 33, scope: !379)
!383 = !DILocation(line: 164, column: 28, scope: !379)
!384 = !DILocation(line: 164, column: 38, scope: !379)
!385 = !DILocation(line: 164, column: 46, scope: !379)
!386 = !DILocation(line: 164, column: 44, scope: !379)
!387 = !DILocation(line: 164, column: 52, scope: !379)
!388 = !DILocation(line: 164, column: 3, scope: !379)
!389 = !DILocation(line: 165, column: 9, scope: !362)
!390 = !DILocation(line: 166, column: 1, scope: !362)
!391 = !DILocation(line: 165, column: 2, scope: !362)
!392 = !DISubprogram(name: "do_trace_write_msr", scope: !81, file: !81, line: 64, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
