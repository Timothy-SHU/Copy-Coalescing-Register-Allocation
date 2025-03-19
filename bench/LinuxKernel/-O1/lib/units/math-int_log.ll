; ModuleID = 'lib/math/int_log.c'
source_filename = "lib/math/int_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intlog2: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad intlog2 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_intlog10: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad intlog10 ; .previous"

@.str = private unnamed_addr constant [19 x i8] c"lib/math/int_log.c\00", align 1, !dbg !0
@logtable = internal constant [256 x i16] [i16 0, i16 369, i16 736, i16 1102, i16 1466, i16 1829, i16 2190, i16 2551, i16 2909, i16 3267, i16 3623, i16 3978, i16 4331, i16 4683, i16 5034, i16 5384, i16 5732, i16 6079, i16 6425, i16 6769, i16 7112, i16 7454, i16 7795, i16 8134, i16 8473, i16 8810, i16 9146, i16 9480, i16 9814, i16 10146, i16 10477, i16 10807, i16 11136, i16 11464, i16 11791, i16 12116, i16 12440, i16 12764, i16 13086, i16 13407, i16 13727, i16 14046, i16 14363, i16 14680, i16 14996, i16 15310, i16 15624, i16 15937, i16 16248, i16 16559, i16 16868, i16 17177, i16 17484, i16 17791, i16 18096, i16 18401, i16 18704, i16 19007, i16 19308, i16 19609, i16 19909, i16 20207, i16 20505, i16 20802, i16 21098, i16 21393, i16 21687, i16 21980, i16 22272, i16 22564, i16 22854, i16 23144, i16 23433, i16 23720, i16 24007, i16 24293, i16 24579, i16 24863, i16 25146, i16 25429, i16 25711, i16 25992, i16 26272, i16 26551, i16 26830, i16 27108, i16 27384, i16 27660, i16 27936, i16 28210, i16 28484, i16 28757, i16 29029, i16 29300, i16 29571, i16 29840, i16 30109, i16 30378, i16 30645, i16 30912, i16 31178, i16 31443, i16 31707, i16 31971, i16 32234, i16 32496, i16 32758, i16 -32517, i16 -32257, i16 -31998, i16 -31739, i16 -31481, i16 -31224, i16 -30967, i16 -30711, i16 -30456, i16 -30202, i16 -29948, i16 -29695, i16 -29442, i16 -29190, i16 -28939, i16 -28689, i16 -28439, i16 -28190, i16 -27941, i16 -27694, i16 -27446, i16 -27200, i16 -26954, i16 -26709, i16 -26464, i16 -26220, i16 -25977, i16 -25734, i16 -25492, i16 -25250, i16 -25009, i16 -24769, i16 -24530, i16 -24290, i16 -24052, i16 -23814, i16 -23577, i16 -23340, i16 -23104, i16 -22869, i16 -22634, i16 -22399, i16 -22166, i16 -21933, i16 -21700, i16 -21468, i16 -21236, i16 -21006, i16 -20775, i16 -20546, i16 -20316, i16 -20088, i16 -19860, i16 -19632, i16 -19405, i16 -19179, i16 -18953, i16 -18727, i16 -18502, i16 -18278, i16 -18054, i16 -17831, i16 -17608, i16 -17386, i16 -17164, i16 -16943, i16 -16723, i16 -16502, i16 -16283, i16 -16064, i16 -15845, i16 -15627, i16 -15409, i16 -15192, i16 -14976, i16 -14760, i16 -14544, i16 -14329, i16 -14114, i16 -13900, i16 -13686, i16 -13473, i16 -13260, i16 -13048, i16 -12836, i16 -12625, i16 -12414, i16 -12204, i16 -11994, i16 -11785, i16 -11576, i16 -11367, i16 -11159, i16 -10952, i16 -10745, i16 -10538, i16 -10332, i16 -10126, i16 -9921, i16 -9716, i16 -9511, i16 -9307, i16 -9104, i16 -8901, i16 -8698, i16 -8496, i16 -8294, i16 -8093, i16 -7892, i16 -7691, i16 -7491, i16 -7291, i16 -7092, i16 -6893, i16 -6695, i16 -6497, i16 -6299, i16 -6102, i16 -5905, i16 -5709, i16 -5513, i16 -5317, i16 -5122, i16 -4927, i16 -4733, i16 -4539, i16 -4346, i16 -4152, i16 -3960, i16 -3767, i16 -3575, i16 -3384, i16 -3193, i16 -3002, i16 -2811, i16 -2621, i16 -2432, i16 -2242, i16 -2053, i16 -1865, i16 -1677, i16 -1489, i16 -1302, i16 -1115, i16 -928, i16 -742, i16 -556, i16 -370, i16 -185], align 16, !dbg !7
@__UNIQUE_ID___addressable_intlog23 = internal global ptr @intlog2, section ".discard.addressable", align 8, !dbg !14
@__UNIQUE_ID___addressable_intlog104 = internal global ptr @intlog10, section ".discard.addressable", align 8, !dbg !16
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_intlog23, ptr @__UNIQUE_ID___addressable_intlog104], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intlog2(i32 noundef %value) #0 align 16 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %msb = alloca i32, align 4
  %logentry = alloca i32, align 4
  %significand = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !41, metadata !DIExpression()), !dbg !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %msb) #5, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %msb, metadata !42, metadata !DIExpression()), !dbg !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %logentry) #5, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %logentry, metadata !43, metadata !DIExpression()), !dbg !57
  call void @llvm.lifetime.start.p0(i64 4, ptr %significand) #5, !dbg !58
  call void @llvm.dbg.declare(metadata ptr %significand, metadata !44, metadata !DIExpression()), !dbg !59
  call void @llvm.lifetime.start.p0(i64 4, ptr %interpolation) #5, !dbg !60
  call void @llvm.dbg.declare(metadata ptr %interpolation, metadata !45, metadata !DIExpression()), !dbg !61
  %0 = load i32, ptr %value.addr, align 4, !dbg !62
  %cmp = icmp eq i32 %0, 0, !dbg !62
  %lnot = xor i1 %cmp, true, !dbg !62
  %lnot1 = xor i1 %lnot, true, !dbg !62
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !62
  %conv = sext i32 %lnot.ext to i64, !dbg !62
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !62
  %tobool = icmp ne i64 %expval, 0, !dbg !62
  br i1 %tobool, label %if.then, label %if.end27, !dbg !63

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !46, metadata !DIExpression()), !dbg !64
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !64
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !65
  %tobool2 = icmp ne i32 %1, 0, !dbg !65
  %lnot3 = xor i1 %tobool2, true, !dbg !65
  %lnot5 = xor i1 %lnot3, true, !dbg !65
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !65
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !65
  %expval8 = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !65
  %tobool9 = icmp ne i64 %expval8, 0, !dbg !65
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !64

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !65

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #5, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !50, metadata !DIExpression()), !dbg !66
  store i32 2305, ptr %__flags, align 4, !dbg !66
  br label %do.body11, !dbg !66

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !67

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !67

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !66

do.body12:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !69
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 63, i32 %2, i64 12) #5, !dbg !69, !srcloc !71
  br label %do.cond13, !dbg !69

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !69

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !66

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !72

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !72

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #5, !dbg !65
  br label %do.cond18, !dbg !66

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !66

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !66

if.end:                                           ; preds = %do.end19, %if.then
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !64
  %tobool20 = icmp ne i32 %3, 0, !dbg !64
  %lnot21 = xor i1 %tobool20, true, !dbg !64
  %lnot23 = xor i1 %lnot21, true, !dbg !64
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !64
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !64
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !64
  store i64 %expval26, ptr %tmp, align 8, !dbg !65
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !74
  %4 = load i64, ptr %tmp, align 8, !dbg !64
  store i32 0, ptr %retval, align 4, !dbg !75
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !75

if.end27:                                         ; preds = %entry
  %5 = load i32, ptr %value.addr, align 4, !dbg !76
  %call = call i32 @fls(i32 noundef %5) #6, !dbg !77
  %sub = sub i32 %call, 1, !dbg !78
  store i32 %sub, ptr %msb, align 4, !dbg !79
  %6 = load i32, ptr %value.addr, align 4, !dbg !80
  %7 = load i32, ptr %msb, align 4, !dbg !81
  %sub28 = sub i32 31, %7, !dbg !82
  %shl = shl i32 %6, %sub28, !dbg !83
  store i32 %shl, ptr %significand, align 4, !dbg !84
  %8 = load i32, ptr %significand, align 4, !dbg !85
  %shr = lshr i32 %8, 23, !dbg !86
  %conv29 = zext i32 %shr to i64, !dbg !87
  %rem = urem i64 %conv29, 256, !dbg !88
  %conv30 = trunc i64 %rem to i32, !dbg !87
  store i32 %conv30, ptr %logentry, align 4, !dbg !89
  %9 = load i32, ptr %significand, align 4, !dbg !90
  %and = and i32 %9, 8388607, !dbg !91
  %10 = load i32, ptr %logentry, align 4, !dbg !92
  %add = add i32 %10, 1, !dbg !93
  %conv31 = zext i32 %add to i64, !dbg !94
  %rem32 = urem i64 %conv31, 256, !dbg !95
  %arrayidx = getelementptr [256 x i16], ptr @logtable, i64 0, i64 %rem32, !dbg !96
  %11 = load i16, ptr %arrayidx, align 2, !dbg !96
  %conv33 = zext i16 %11 to i32, !dbg !96
  %12 = load i32, ptr %logentry, align 4, !dbg !97
  %idxprom = zext i32 %12 to i64, !dbg !98
  %arrayidx34 = getelementptr [256 x i16], ptr @logtable, i64 0, i64 %idxprom, !dbg !98
  %13 = load i16, ptr %arrayidx34, align 2, !dbg !98
  %conv35 = zext i16 %13 to i32, !dbg !98
  %sub36 = sub i32 %conv33, %conv35, !dbg !99
  %and37 = and i32 %sub36, 65535, !dbg !100
  %mul = mul i32 %and, %and37, !dbg !101
  %shr38 = lshr i32 %mul, 15, !dbg !102
  store i32 %shr38, ptr %interpolation, align 4, !dbg !103
  %14 = load i32, ptr %msb, align 4, !dbg !104
  %shl39 = shl i32 %14, 24, !dbg !105
  %15 = load i32, ptr %logentry, align 4, !dbg !106
  %idxprom40 = zext i32 %15 to i64, !dbg !107
  %arrayidx41 = getelementptr [256 x i16], ptr @logtable, i64 0, i64 %idxprom40, !dbg !107
  %16 = load i16, ptr %arrayidx41, align 2, !dbg !107
  %conv42 = zext i16 %16 to i32, !dbg !107
  %shl43 = shl i32 %conv42, 8, !dbg !108
  %add44 = add i32 %shl39, %shl43, !dbg !109
  %17 = load i32, ptr %interpolation, align 4, !dbg !110
  %add45 = add i32 %add44, %17, !dbg !111
  store i32 %add45, ptr %retval, align 4, !dbg !112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !112

cleanup:                                          ; preds = %if.end27, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %interpolation) #5, !dbg !113
  call void @llvm.lifetime.end.p0(i64 4, ptr %significand) #5, !dbg !113
  call void @llvm.lifetime.end.p0(i64 4, ptr %logentry) #5, !dbg !113
  call void @llvm.lifetime.end.p0(i64 4, ptr %msb) #5, !dbg !113
  %18 = load i32, ptr %retval, align 4, !dbg !113
  ret i32 %18, !dbg !113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #4 align 16 !dbg !114 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !119, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %r, metadata !120, metadata !DIExpression()), !dbg !123
  %0 = load i32, ptr %x.addr, align 4, !dbg !124
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #7, !dbg !125, !srcloc !126
  store i32 %1, ptr %r, align 4, !dbg !125
  %2 = load i32, ptr %r, align 4, !dbg !127
  %add = add i32 %2, 1, !dbg !128
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5, !dbg !129
  ret i32 %add, !dbg !130
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @intlog10(i32 noundef %value) #0 align 16 !dbg !131 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %log = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !133, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #5, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %log, metadata !134, metadata !DIExpression()), !dbg !147
  %0 = load i32, ptr %value.addr, align 4, !dbg !148
  %cmp = icmp eq i32 %0, 0, !dbg !148
  %lnot = xor i1 %cmp, true, !dbg !148
  %lnot1 = xor i1 %lnot, true, !dbg !148
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !148
  %conv = sext i32 %lnot.ext to i64, !dbg !148
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !148
  %tobool = icmp ne i64 %expval, 0, !dbg !148
  br i1 %tobool, label %if.then, label %if.end27, !dbg !149

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !138, metadata !DIExpression()), !dbg !150
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !150
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !151
  %tobool2 = icmp ne i32 %1, 0, !dbg !151
  %lnot3 = xor i1 %tobool2, true, !dbg !151
  %lnot5 = xor i1 %lnot3, true, !dbg !151
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !151
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !151
  %expval8 = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !151
  %tobool9 = icmp ne i64 %expval8, 0, !dbg !151
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !150

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !151

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #5, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !142, metadata !DIExpression()), !dbg !152
  store i32 2305, ptr %__flags, align 4, !dbg !152
  br label %do.body11, !dbg !152

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !153

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !153

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !152

do.body12:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !155
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 120, i32 %2, i64 12) #5, !dbg !155, !srcloc !157
  br label %do.cond13, !dbg !155

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !155

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !152

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !158

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !158

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #5, !dbg !151
  br label %do.cond18, !dbg !152

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !152

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !152

if.end:                                           ; preds = %do.end19, %if.then
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !150
  %tobool20 = icmp ne i32 %3, 0, !dbg !150
  %lnot21 = xor i1 %tobool20, true, !dbg !150
  %lnot23 = xor i1 %lnot21, true, !dbg !150
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !150
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !150
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !150
  store i64 %expval26, ptr %tmp, align 8, !dbg !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !160
  %4 = load i64, ptr %tmp, align 8, !dbg !150
  store i32 0, ptr %retval, align 4, !dbg !161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !161

if.end27:                                         ; preds = %entry
  %5 = load i32, ptr %value.addr, align 4, !dbg !162
  %call = call i32 @intlog2(i32 noundef %5) #6, !dbg !163
  %conv28 = zext i32 %call to i64, !dbg !163
  store i64 %conv28, ptr %log, align 8, !dbg !164
  %6 = load i64, ptr %log, align 8, !dbg !165
  %mul = mul i64 %6, 646456993, !dbg !166
  %shr = lshr i64 %mul, 31, !dbg !167
  %conv29 = trunc i64 %shr to i32, !dbg !168
  store i32 %conv29, ptr %retval, align 4, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !169

cleanup:                                          ; preds = %if.end27, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #5, !dbg !170
  %7 = load i32, ptr %retval, align 4, !dbg !170
  ret i32 %7, !dbg !170
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/math/int_log.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4bb9ff48e138401438ce6eab1ea2e0f6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 19)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "logtable", scope: !9, file: !2, line: 16, type: !18, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.int_log.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/int_log\22 -D KBUILD_BASENAME=\22int_log\22 -D KBUILD_MODNAME=\22int_log\22 -D __KBUILD_MODNAME=kmod_int_log -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/int_log.ll lib/math/int_log.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !13, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0, !14, !16, !7}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intlog23", scope: !9, file: !2, line: 109, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intlog104", scope: !9, file: !2, line: 133, type: !12, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 4096, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 256)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "intlog2", scope: !2, file: !2, line: 51, type: !33, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !40)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !36}
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !39, line: 27, baseType: !35)
!39 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!40 = !{!41, !42, !43, !44, !45, !46, !50}
!41 = !DILocalVariable(name: "value", arg: 1, scope: !32, file: !2, line: 51, type: !36)
!42 = !DILocalVariable(name: "msb", scope: !32, file: !2, line: 57, type: !35)
!43 = !DILocalVariable(name: "logentry", scope: !32, file: !2, line: 58, type: !35)
!44 = !DILocalVariable(name: "significand", scope: !32, file: !2, line: 59, type: !35)
!45 = !DILocalVariable(name: "interpolation", scope: !32, file: !2, line: 60, type: !35)
!46 = !DILocalVariable(name: "__ret_warn_on", scope: !47, file: !2, line: 63, type: !11)
!47 = distinct !DILexicalBlock(scope: !48, file: !2, line: 63, column: 3)
!48 = distinct !DILexicalBlock(scope: !49, file: !2, line: 62, column: 28)
!49 = distinct !DILexicalBlock(scope: !32, file: !2, line: 62, column: 6)
!50 = !DILocalVariable(name: "__flags", scope: !51, file: !2, line: 63, type: !11)
!51 = distinct !DILexicalBlock(scope: !52, file: !2, line: 63, column: 3)
!52 = distinct !DILexicalBlock(scope: !47, file: !2, line: 63, column: 3)
!53 = !DILocation(line: 51, column: 26, scope: !32)
!54 = !DILocation(line: 57, column: 2, scope: !32)
!55 = !DILocation(line: 57, column: 15, scope: !32)
!56 = !DILocation(line: 58, column: 2, scope: !32)
!57 = !DILocation(line: 58, column: 15, scope: !32)
!58 = !DILocation(line: 59, column: 2, scope: !32)
!59 = !DILocation(line: 59, column: 15, scope: !32)
!60 = !DILocation(line: 60, column: 2, scope: !32)
!61 = !DILocation(line: 60, column: 15, scope: !32)
!62 = !DILocation(line: 62, column: 6, scope: !49)
!63 = !DILocation(line: 62, column: 6, scope: !32)
!64 = !DILocation(line: 63, column: 3, scope: !47)
!65 = !DILocation(line: 63, column: 3, scope: !52)
!66 = !DILocation(line: 63, column: 3, scope: !51)
!67 = !DILocation(line: 63, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !51, file: !2, line: 63, column: 3)
!69 = !DILocation(line: 63, column: 3, scope: !70)
!70 = distinct !DILexicalBlock(scope: !51, file: !2, line: 63, column: 3)
!71 = !{i64 2148063649, i64 2148063678, i64 2148063724, i64 2148063782, i64 2148063836, i64 2148063890, i64 2148063945, i64 2148063976, i64 2148064284, i64 2148064290, i64 2148064337, i64 2148064360, i64 2148064386}
!72 = !DILocation(line: 63, column: 3, scope: !73)
!73 = distinct !DILexicalBlock(scope: !51, file: !2, line: 63, column: 3)
!74 = !DILocation(line: 63, column: 3, scope: !48)
!75 = !DILocation(line: 64, column: 3, scope: !48)
!76 = !DILocation(line: 68, column: 12, scope: !32)
!77 = !DILocation(line: 68, column: 8, scope: !32)
!78 = !DILocation(line: 68, column: 19, scope: !32)
!79 = !DILocation(line: 68, column: 6, scope: !32)
!80 = !DILocation(line: 84, column: 16, scope: !32)
!81 = !DILocation(line: 84, column: 31, scope: !32)
!82 = !DILocation(line: 84, column: 29, scope: !32)
!83 = !DILocation(line: 84, column: 22, scope: !32)
!84 = !DILocation(line: 84, column: 14, scope: !32)
!85 = !DILocation(line: 85, column: 14, scope: !32)
!86 = !DILocation(line: 85, column: 26, scope: !32)
!87 = !DILocation(line: 85, column: 13, scope: !32)
!88 = !DILocation(line: 85, column: 33, scope: !32)
!89 = !DILocation(line: 85, column: 11, scope: !32)
!90 = !DILocation(line: 102, column: 20, scope: !32)
!91 = !DILocation(line: 102, column: 32, scope: !32)
!92 = !DILocation(line: 103, column: 16, scope: !32)
!93 = !DILocation(line: 103, column: 25, scope: !32)
!94 = !DILocation(line: 103, column: 15, scope: !32)
!95 = !DILocation(line: 103, column: 30, scope: !32)
!96 = !DILocation(line: 103, column: 6, scope: !32)
!97 = !DILocation(line: 104, column: 15, scope: !32)
!98 = !DILocation(line: 104, column: 6, scope: !32)
!99 = !DILocation(line: 103, column: 54, scope: !32)
!100 = !DILocation(line: 104, column: 26, scope: !32)
!101 = !DILocation(line: 102, column: 44, scope: !32)
!102 = !DILocation(line: 104, column: 37, scope: !32)
!103 = !DILocation(line: 102, column: 16, scope: !32)
!104 = !DILocation(line: 107, column: 11, scope: !32)
!105 = !DILocation(line: 107, column: 15, scope: !32)
!106 = !DILocation(line: 107, column: 34, scope: !32)
!107 = !DILocation(line: 107, column: 25, scope: !32)
!108 = !DILocation(line: 107, column: 44, scope: !32)
!109 = !DILocation(line: 107, column: 22, scope: !32)
!110 = !DILocation(line: 107, column: 52, scope: !32)
!111 = !DILocation(line: 107, column: 50, scope: !32)
!112 = !DILocation(line: 107, column: 2, scope: !32)
!113 = !DILocation(line: 108, column: 1, scope: !32)
!114 = distinct !DISubprogram(name: "fls", scope: !115, file: !115, line: 359, type: !116, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !118)
!115 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!116 = !DISubroutineType(types: !117)
!117 = !{!11, !35}
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "x", arg: 1, scope: !114, file: !115, line: 359, type: !35)
!120 = !DILocalVariable(name: "r", scope: !114, file: !115, line: 361, type: !11)
!121 = !DILocation(line: 359, column: 45, scope: !114)
!122 = !DILocation(line: 361, column: 2, scope: !114)
!123 = !DILocation(line: 361, column: 6, scope: !114)
!124 = !DILocation(line: 375, column: 14, scope: !114)
!125 = !DILocation(line: 373, column: 2, scope: !114)
!126 = !{i64 252507}
!127 = !DILocation(line: 386, column: 9, scope: !114)
!128 = !DILocation(line: 386, column: 11, scope: !114)
!129 = !DILocation(line: 387, column: 1, scope: !114)
!130 = !DILocation(line: 386, column: 2, scope: !114)
!131 = distinct !DISubprogram(name: "intlog10", scope: !2, file: !2, line: 111, type: !33, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !132)
!132 = !{!133, !134, !138, !142}
!133 = !DILocalVariable(name: "value", arg: 1, scope: !131, file: !2, line: 111, type: !36)
!134 = !DILocalVariable(name: "log", scope: !131, file: !2, line: 117, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !37, line: 23, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !39, line: 31, baseType: !137)
!137 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DILocalVariable(name: "__ret_warn_on", scope: !139, file: !2, line: 120, type: !11)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 120, column: 3)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 119, column: 28)
!141 = distinct !DILexicalBlock(scope: !131, file: !2, line: 119, column: 6)
!142 = !DILocalVariable(name: "__flags", scope: !143, file: !2, line: 120, type: !11)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 120, column: 3)
!144 = distinct !DILexicalBlock(scope: !139, file: !2, line: 120, column: 3)
!145 = !DILocation(line: 111, column: 27, scope: !131)
!146 = !DILocation(line: 117, column: 2, scope: !131)
!147 = !DILocation(line: 117, column: 6, scope: !131)
!148 = !DILocation(line: 119, column: 6, scope: !141)
!149 = !DILocation(line: 119, column: 6, scope: !131)
!150 = !DILocation(line: 120, column: 3, scope: !139)
!151 = !DILocation(line: 120, column: 3, scope: !144)
!152 = !DILocation(line: 120, column: 3, scope: !143)
!153 = !DILocation(line: 120, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !143, file: !2, line: 120, column: 3)
!155 = !DILocation(line: 120, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !143, file: !2, line: 120, column: 3)
!157 = !{i64 2148071428, i64 2148071457, i64 2148071503, i64 2148071561, i64 2148071615, i64 2148071669, i64 2148071724, i64 2148071755, i64 2148072063, i64 2148072069, i64 2148072116, i64 2148072139, i64 2148072165}
!158 = !DILocation(line: 120, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !143, file: !2, line: 120, column: 3)
!160 = !DILocation(line: 120, column: 3, scope: !140)
!161 = !DILocation(line: 121, column: 3, scope: !140)
!162 = !DILocation(line: 124, column: 16, scope: !131)
!163 = !DILocation(line: 124, column: 8, scope: !131)
!164 = !DILocation(line: 124, column: 6, scope: !131)
!165 = !DILocation(line: 131, column: 10, scope: !131)
!166 = !DILocation(line: 131, column: 14, scope: !131)
!167 = !DILocation(line: 131, column: 27, scope: !131)
!168 = !DILocation(line: 131, column: 9, scope: !131)
!169 = !DILocation(line: 131, column: 2, scope: !131)
!170 = !DILocation(line: 132, column: 1, scope: !131)
