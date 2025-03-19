; ModuleID = 'lib/math/reciprocal_div.c'
source_filename = "lib/math/reciprocal_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_reciprocal_value: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad reciprocal_value ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_reciprocal_value_adv: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad reciprocal_value_adv ; .previous"

%struct.reciprocal_value = type { i32, i8, i8 }
%struct.reciprocal_value_adv = type { i32, i8, i8, i8 }

@__UNIQUE_ID___addressable_reciprocal_value6 = internal global ptr @reciprocal_value, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [58 x i8] c"ceil(log2(0x%08x)) == 32, %s doesn't support such divisor\00", align 1, !dbg !17
@__func__.reciprocal_value_adv = private unnamed_addr constant [21 x i8] c"reciprocal_value_adv\00", align 1, !dbg !23
@.str.1 = private unnamed_addr constant [26 x i8] c"lib/math/reciprocal_div.c\00", align 1, !dbg !29
@__UNIQUE_ID___addressable_reciprocal_value_adv7 = internal global ptr @reciprocal_value_adv, section ".discard.addressable", align 8, !dbg !34
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_reciprocal_value6, ptr @__UNIQUE_ID___addressable_reciprocal_value_adv7], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @reciprocal_value(i32 noundef %d) #0 align 16 !dbg !45 {
entry:
  %retval = alloca %struct.reciprocal_value, align 4
  %d.addr = alloca i32, align 4
  %m = alloca i64, align 8
  %l = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x2 = alloca i32, align 4
  %__UNIQUE_ID___y3 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__UNIQUE_ID___x4 = alloca i32, align 4
  %__UNIQUE_ID___y5 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store i32 %d, ptr %d.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !58, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !59, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %m, metadata !60, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #6, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %l, metadata !61, metadata !DIExpression()), !dbg !78
  %0 = load i32, ptr %d.addr, align 4, !dbg !79
  %sub = sub i32 %0, 1, !dbg !80
  %call = call i32 @fls(i32 noundef %sub) #7, !dbg !81
  store i32 %call, ptr %l, align 4, !dbg !82
  %1 = load i32, ptr %l, align 4, !dbg !83
  %sh_prom = zext i32 %1 to i64, !dbg !84
  %shl = shl i64 1, %sh_prom, !dbg !84
  %2 = load i32, ptr %d.addr, align 4, !dbg !85
  %conv = zext i32 %2 to i64, !dbg !85
  %sub1 = sub i64 %shl, %conv, !dbg !86
  %mul = mul i64 4294967296, %sub1, !dbg !87
  store i64 %mul, ptr %m, align 8, !dbg !88
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #6, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !63, metadata !DIExpression()), !dbg !89
  %3 = load i32, ptr %d.addr, align 4, !dbg !89
  store i32 %3, ptr %__base, align 4, !dbg !89
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #6, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !66, metadata !DIExpression()), !dbg !89
  %4 = load i64, ptr %m, align 8, !dbg !89
  %5 = load i32, ptr %__base, align 4, !dbg !89
  %conv2 = zext i32 %5 to i64, !dbg !89
  %rem = urem i64 %4, %conv2, !dbg !89
  %conv3 = trunc i64 %rem to i32, !dbg !89
  store i32 %conv3, ptr %__rem, align 4, !dbg !89
  %6 = load i64, ptr %m, align 8, !dbg !89
  %7 = load i32, ptr %__base, align 4, !dbg !89
  %conv4 = zext i32 %7 to i64, !dbg !89
  %div = udiv i64 %6, %conv4, !dbg !89
  store i64 %div, ptr %m, align 8, !dbg !89
  %8 = load i32, ptr %__rem, align 4, !dbg !89
  store i32 %8, ptr %tmp, align 4, !dbg !89
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #6, !dbg !90
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #6, !dbg !90
  %9 = load i32, ptr %tmp, align 4, !dbg !89
  %10 = load i64, ptr %m, align 8, !dbg !91
  %inc = add i64 %10, 1, !dbg !91
  store i64 %inc, ptr %m, align 8, !dbg !91
  %11 = load i64, ptr %m, align 8, !dbg !92
  %conv5 = trunc i64 %11 to i32, !dbg !93
  %m6 = getelementptr inbounds %struct.reciprocal_value, ptr %retval, i32 0, i32 0, !dbg !94
  store i32 %conv5, ptr %m6, align 4, !dbg !95
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x2) #6, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x2, metadata !67, metadata !DIExpression()), !dbg !96
  %12 = load i32, ptr %l, align 4, !dbg !96
  store i32 %12, ptr %__UNIQUE_ID___x2, align 4, !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y3) #6, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y3, metadata !69, metadata !DIExpression()), !dbg !96
  store i32 1, ptr %__UNIQUE_ID___y3, align 4, !dbg !96
  %13 = load i32, ptr %__UNIQUE_ID___x2, align 4, !dbg !96
  %14 = load i32, ptr %__UNIQUE_ID___y3, align 4, !dbg !96
  %cmp = icmp slt i32 %13, %14, !dbg !96
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !96

cond.true:                                        ; preds = %entry
  %15 = load i32, ptr %__UNIQUE_ID___x2, align 4, !dbg !96
  br label %cond.end, !dbg !96

cond.false:                                       ; preds = %entry
  %16 = load i32, ptr %__UNIQUE_ID___y3, align 4, !dbg !96
  br label %cond.end, !dbg !96

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !96
  store i32 %cond, ptr %tmp7, align 4, !dbg !96
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y3) #6, !dbg !97
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x2) #6, !dbg !97
  %17 = load i32, ptr %tmp7, align 4, !dbg !96
  %conv9 = trunc i32 %17 to i8, !dbg !97
  %sh1 = getelementptr inbounds %struct.reciprocal_value, ptr %retval, i32 0, i32 1, !dbg !98
  store i8 %conv9, ptr %sh1, align 4, !dbg !99
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x4) #6, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x4, metadata !70, metadata !DIExpression()), !dbg !100
  %18 = load i32, ptr %l, align 4, !dbg !100
  %sub10 = sub i32 %18, 1, !dbg !100
  store i32 %sub10, ptr %__UNIQUE_ID___x4, align 4, !dbg !100
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y5) #6, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y5, metadata !72, metadata !DIExpression()), !dbg !100
  store i32 0, ptr %__UNIQUE_ID___y5, align 4, !dbg !100
  %19 = load i32, ptr %__UNIQUE_ID___x4, align 4, !dbg !100
  %20 = load i32, ptr %__UNIQUE_ID___y5, align 4, !dbg !100
  %cmp12 = icmp sgt i32 %19, %20, !dbg !100
  br i1 %cmp12, label %cond.true14, label %cond.false15, !dbg !100

cond.true14:                                      ; preds = %cond.end
  %21 = load i32, ptr %__UNIQUE_ID___x4, align 4, !dbg !100
  br label %cond.end16, !dbg !100

cond.false15:                                     ; preds = %cond.end
  %22 = load i32, ptr %__UNIQUE_ID___y5, align 4, !dbg !100
  br label %cond.end16, !dbg !100

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ %21, %cond.true14 ], [ %22, %cond.false15 ], !dbg !100
  store i32 %cond17, ptr %tmp11, align 4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y5) #6, !dbg !101
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x4) #6, !dbg !101
  %23 = load i32, ptr %tmp11, align 4, !dbg !100
  %conv18 = trunc i32 %23 to i8, !dbg !101
  %sh2 = getelementptr inbounds %struct.reciprocal_value, ptr %retval, i32 0, i32 2, !dbg !102
  store i8 %conv18, ptr %sh2, align 1, !dbg !103
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #6, !dbg !104
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6, !dbg !104
  %24 = load i64, ptr %retval, align 4, !dbg !104
  ret i64 %24, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #3 align 16 !dbg !105 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #6, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %r, metadata !111, metadata !DIExpression()), !dbg !114
  %0 = load i32, ptr %x.addr, align 4, !dbg !115
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #8, !dbg !116, !srcloc !117
  store i32 %1, ptr %r, align 4, !dbg !116
  %2 = load i32, ptr %r, align 4, !dbg !118
  %add = add i32 %2, 1, !dbg !119
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #6, !dbg !120
  ret i32 %add, !dbg !121
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @reciprocal_value_adv(i32 noundef %d, i8 noundef zeroext %prec) #0 align 16 !dbg !122 {
entry:
  %retval = alloca %struct.reciprocal_value_adv, align 4
  %d.addr = alloca i32, align 4
  %prec.addr = alloca i8, align 1
  %l = alloca i32, align 4
  %post_shift = alloca i32, align 4
  %mhigh = alloca i64, align 8
  %mlow = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %__base45 = alloca i32, align 4
  %__rem46 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %d, ptr %d.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !134, metadata !DIExpression()), !dbg !158
  store i8 %prec, ptr %prec.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !135, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !136, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #6, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %l, metadata !137, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %post_shift) #6, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %post_shift, metadata !138, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 8, ptr %mhigh) #6, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %mhigh, metadata !139, metadata !DIExpression()), !dbg !165
  call void @llvm.lifetime.start.p0(i64 8, ptr %mlow) #6, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %mlow, metadata !140, metadata !DIExpression()), !dbg !166
  %0 = load i32, ptr %d.addr, align 4, !dbg !167
  %sub = sub i32 %0, 1, !dbg !168
  %call = call i32 @fls(i32 noundef %sub) #7, !dbg !169
  store i32 %call, ptr %l, align 4, !dbg !170
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !141, metadata !DIExpression()), !dbg !171
  %1 = load i32, ptr %l, align 4, !dbg !171
  %cmp = icmp eq i32 %1, 32, !dbg !171
  %lnot = xor i1 %cmp, true, !dbg !171
  %lnot1 = xor i1 %lnot, true, !dbg !171
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !171
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !171
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !172
  %tobool = icmp ne i32 %2, 0, !dbg !172
  %lnot2 = xor i1 %tobool, true, !dbg !172
  %lnot4 = xor i1 %lnot2, true, !dbg !172
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !172
  %conv = sext i32 %lnot.ext5 to i64, !dbg !172
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !172
  %tobool6 = icmp ne i64 %expval, 0, !dbg !172
  br i1 %tobool6, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !172

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !173

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !174

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !174

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %d.addr, align 4, !dbg !173
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %3, ptr noundef @__func__.reciprocal_value_adv) #7, !dbg !173
  br label %do.body8, !dbg !173

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !176
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !143, metadata !DIExpression()), !dbg !176
  store i32 2313, ptr %__flags, align 4, !dbg !176
  br label %do.body9, !dbg !176

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !177

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !177

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !176

do.body12:                                        ; preds = %do.end11
  %4 = load i32, ptr %__flags, align 4, !dbg !179
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 49, i32 %4, i64 12) #6, !dbg !179, !srcloc !181
  br label %do.cond13, !dbg !179

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !179

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !176

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !182

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !182

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !173
  br label %do.cond18, !dbg !176

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !176

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !173

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !184

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !184

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !173

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !173

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !173

if.end:                                           ; preds = %do.end24, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !171
  %tobool25 = icmp ne i32 %5, 0, !dbg !171
  %lnot26 = xor i1 %tobool25, true, !dbg !171
  %lnot28 = xor i1 %lnot26, true, !dbg !171
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !171
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !171
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !171
  store i64 %expval31, ptr %tmp, align 8, !dbg !172
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !186
  %6 = load i64, ptr %tmp, align 8, !dbg !171
  %7 = load i32, ptr %l, align 4, !dbg !187
  store i32 %7, ptr %post_shift, align 4, !dbg !188
  %8 = load i32, ptr %l, align 4, !dbg !189
  %add = add i32 32, %8, !dbg !190
  %sh_prom = zext i32 %add to i64, !dbg !191
  %shl = shl i64 1, %sh_prom, !dbg !191
  store i64 %shl, ptr %mlow, align 8, !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #6, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !147, metadata !DIExpression()), !dbg !193
  %9 = load i32, ptr %d.addr, align 4, !dbg !193
  store i32 %9, ptr %__base, align 4, !dbg !193
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #6, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !149, metadata !DIExpression()), !dbg !193
  %10 = load i64, ptr %mlow, align 8, !dbg !193
  %11 = load i32, ptr %__base, align 4, !dbg !193
  %conv32 = zext i32 %11 to i64, !dbg !193
  %rem = urem i64 %10, %conv32, !dbg !193
  %conv33 = trunc i64 %rem to i32, !dbg !193
  store i32 %conv33, ptr %__rem, align 4, !dbg !193
  %12 = load i64, ptr %mlow, align 8, !dbg !193
  %13 = load i32, ptr %__base, align 4, !dbg !193
  %conv34 = zext i32 %13 to i64, !dbg !193
  %div = udiv i64 %12, %conv34, !dbg !193
  store i64 %div, ptr %mlow, align 8, !dbg !193
  %14 = load i32, ptr %__rem, align 4, !dbg !193
  store i32 %14, ptr %tmp35, align 4, !dbg !193
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #6, !dbg !194
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #6, !dbg !194
  %15 = load i32, ptr %tmp35, align 4, !dbg !193
  %16 = load i32, ptr %l, align 4, !dbg !195
  %add36 = add i32 32, %16, !dbg !196
  %sh_prom37 = zext i32 %add36 to i64, !dbg !197
  %shl38 = shl i64 1, %sh_prom37, !dbg !197
  %17 = load i32, ptr %l, align 4, !dbg !198
  %add39 = add i32 32, %17, !dbg !199
  %18 = load i8, ptr %prec.addr, align 1, !dbg !200
  %conv40 = zext i8 %18 to i32, !dbg !200
  %sub41 = sub i32 %add39, %conv40, !dbg !201
  %sh_prom42 = zext i32 %sub41 to i64, !dbg !202
  %shl43 = shl i64 1, %sh_prom42, !dbg !202
  %add44 = add i64 %shl38, %shl43, !dbg !203
  store i64 %add44, ptr %mhigh, align 8, !dbg !204
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base45) #6, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %__base45, metadata !150, metadata !DIExpression()), !dbg !205
  %19 = load i32, ptr %d.addr, align 4, !dbg !205
  store i32 %19, ptr %__base45, align 4, !dbg !205
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem46) #6, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %__rem46, metadata !152, metadata !DIExpression()), !dbg !205
  %20 = load i64, ptr %mhigh, align 8, !dbg !205
  %21 = load i32, ptr %__base45, align 4, !dbg !205
  %conv47 = zext i32 %21 to i64, !dbg !205
  %rem48 = urem i64 %20, %conv47, !dbg !205
  %conv49 = trunc i64 %rem48 to i32, !dbg !205
  store i32 %conv49, ptr %__rem46, align 4, !dbg !205
  %22 = load i64, ptr %mhigh, align 8, !dbg !205
  %23 = load i32, ptr %__base45, align 4, !dbg !205
  %conv50 = zext i32 %23 to i64, !dbg !205
  %div51 = udiv i64 %22, %conv50, !dbg !205
  store i64 %div51, ptr %mhigh, align 8, !dbg !205
  %24 = load i32, ptr %__rem46, align 4, !dbg !205
  store i32 %24, ptr %tmp52, align 4, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem46) #6, !dbg !206
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base45) #6, !dbg !206
  %25 = load i32, ptr %tmp52, align 4, !dbg !205
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, ptr %post_shift, align 4, !dbg !208
  %cmp53 = icmp ugt i32 %26, 0, !dbg !209
  br i1 %cmp53, label %for.body, label %for.end, !dbg !210

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #6, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !153, metadata !DIExpression()), !dbg !212
  %27 = load i64, ptr %mlow, align 8, !dbg !213
  %shr = lshr i64 %27, 1, !dbg !214
  store i64 %shr, ptr %lo, align 8, !dbg !212
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #6, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !157, metadata !DIExpression()), !dbg !215
  %28 = load i64, ptr %mhigh, align 8, !dbg !216
  %shr55 = lshr i64 %28, 1, !dbg !217
  store i64 %shr55, ptr %hi, align 8, !dbg !215
  %29 = load i64, ptr %lo, align 8, !dbg !218
  %30 = load i64, ptr %hi, align 8, !dbg !220
  %cmp56 = icmp uge i64 %29, %30, !dbg !221
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !222

if.then58:                                        ; preds = %for.body
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !223

if.end59:                                         ; preds = %for.body
  %31 = load i64, ptr %lo, align 8, !dbg !224
  store i64 %31, ptr %mlow, align 8, !dbg !225
  %32 = load i64, ptr %hi, align 8, !dbg !226
  store i64 %32, ptr %mhigh, align 8, !dbg !227
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !228
  br label %cleanup, !dbg !228

cleanup:                                          ; preds = %if.end59, %if.then58
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #6, !dbg !228
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #6, !dbg !228
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 16, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !229

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i32, ptr %post_shift, align 4, !dbg !230
  %dec = add i32 %33, -1, !dbg !230
  store i32 %dec, ptr %post_shift, align 4, !dbg !230
  br label %for.cond, !dbg !231, !llvm.loop !232

for.end:                                          ; preds = %cleanup, %for.cond
  %34 = load i64, ptr %mhigh, align 8, !dbg !236
  %conv61 = trunc i64 %34 to i32, !dbg !237
  %m = getelementptr inbounds %struct.reciprocal_value_adv, ptr %retval, i32 0, i32 0, !dbg !238
  store i32 %conv61, ptr %m, align 4, !dbg !239
  %35 = load i32, ptr %post_shift, align 4, !dbg !240
  %conv62 = trunc i32 %35 to i8, !dbg !240
  %sh = getelementptr inbounds %struct.reciprocal_value_adv, ptr %retval, i32 0, i32 1, !dbg !241
  store i8 %conv62, ptr %sh, align 4, !dbg !242
  %36 = load i32, ptr %l, align 4, !dbg !243
  %conv63 = trunc i32 %36 to i8, !dbg !243
  %exp = getelementptr inbounds %struct.reciprocal_value_adv, ptr %retval, i32 0, i32 2, !dbg !244
  store i8 %conv63, ptr %exp, align 1, !dbg !245
  %37 = load i64, ptr %mhigh, align 8, !dbg !246
  %cmp64 = icmp ugt i64 %37, 4294967295, !dbg !247
  %is_wide_m = getelementptr inbounds %struct.reciprocal_value_adv, ptr %retval, i32 0, i32 3, !dbg !248
  %frombool = zext i1 %cmp64 to i8, !dbg !249
  store i8 %frombool, ptr %is_wide_m, align 2, !dbg !249
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mlow) #6, !dbg !250
  call void @llvm.lifetime.end.p0(i64 8, ptr %mhigh) #6, !dbg !250
  call void @llvm.lifetime.end.p0(i64 4, ptr %post_shift) #6, !dbg !250
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #6, !dbg !250
  %38 = load i64, ptr %retval, align 4, !dbg !250
  ret i64 %38, !dbg !250

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !251 dso_local void @__warn_printk(ptr noundef, ...) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_reciprocal_value6", scope: !2, file: !3, line: 33, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/math/.reciprocal_div.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/math/reciprocal_div\22 -D KBUILD_BASENAME=\22reciprocal_div\22 -D KBUILD_MODNAME=\22reciprocal_div\22 -D __KBUILD_MODNAME=kmod_reciprocal_div -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/math/reciprocal_div.ll lib/math/reciprocal_div.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/math/reciprocal_div.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a08405a402921499fb889fa50cb058")
!4 = !{!5, !12, !15}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 113, baseType: !7)
!6 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0, !17, !23, !29, !34}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 464, elements: !21)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22}
!22 = !DISubrange(count: 58)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 168, elements: !27)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!27 = !{!28}
!28 = !DISubrange(count: 21)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 208, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 26)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_reciprocal_value_adv7", scope: !2, file: !3, line: 73, type: !15, isLocal: true, isDefinition: true)
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "reciprocal_value", scope: !3, file: !3, line: 17, type: !46, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !12}
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reciprocal_value", file: !49, line: 23, size: 64, elements: !50)
!49 = !DIFile(filename: "./include/linux/reciprocal_div.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8fcd850c6f01ce4c3f80e88020c04f49")
!50 = !{!51, !52, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !48, file: !49, line: 24, baseType: !12, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sh1", scope: !48, file: !49, line: 25, baseType: !53, size: 8, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sh2", scope: !48, file: !49, line: 25, baseType: !53, size: 8, offset: 40)
!57 = !{!58, !59, !60, !61, !63, !66, !67, !69, !70, !72}
!58 = !DILocalVariable(name: "d", arg: 1, scope: !45, file: !3, line: 17, type: !12)
!59 = !DILocalVariable(name: "R", scope: !45, file: !3, line: 19, type: !48)
!60 = !DILocalVariable(name: "m", scope: !45, file: !3, line: 20, type: !7)
!61 = !DILocalVariable(name: "l", scope: !45, file: !3, line: 21, type: !62)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DILocalVariable(name: "__base", scope: !64, file: !3, line: 25, type: !65)
!64 = distinct !DILexicalBlock(scope: !45, file: !3, line: 25, column: 2)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 110, baseType: !12)
!66 = !DILocalVariable(name: "__rem", scope: !64, file: !3, line: 25, type: !65)
!67 = !DILocalVariable(name: "__UNIQUE_ID___x2", scope: !68, file: !3, line: 28, type: !62)
!68 = distinct !DILexicalBlock(scope: !45, file: !3, line: 28, column: 10)
!69 = !DILocalVariable(name: "__UNIQUE_ID___y3", scope: !68, file: !3, line: 28, type: !62)
!70 = !DILocalVariable(name: "__UNIQUE_ID___x4", scope: !71, file: !3, line: 29, type: !62)
!71 = distinct !DILexicalBlock(scope: !45, file: !3, line: 29, column: 10)
!72 = !DILocalVariable(name: "__UNIQUE_ID___y5", scope: !71, file: !3, line: 29, type: !62)
!73 = !DILocation(line: 17, column: 46, scope: !45)
!74 = !DILocation(line: 19, column: 26, scope: !45)
!75 = !DILocation(line: 20, column: 2, scope: !45)
!76 = !DILocation(line: 20, column: 6, scope: !45)
!77 = !DILocation(line: 21, column: 2, scope: !45)
!78 = !DILocation(line: 21, column: 6, scope: !45)
!79 = !DILocation(line: 23, column: 10, scope: !45)
!80 = !DILocation(line: 23, column: 12, scope: !45)
!81 = !DILocation(line: 23, column: 6, scope: !45)
!82 = !DILocation(line: 23, column: 4, scope: !45)
!83 = !DILocation(line: 24, column: 32, scope: !45)
!84 = !DILocation(line: 24, column: 29, scope: !45)
!85 = !DILocation(line: 24, column: 37, scope: !45)
!86 = !DILocation(line: 24, column: 35, scope: !45)
!87 = !DILocation(line: 24, column: 20, scope: !45)
!88 = !DILocation(line: 24, column: 4, scope: !45)
!89 = !DILocation(line: 25, column: 2, scope: !64)
!90 = !DILocation(line: 25, column: 2, scope: !45)
!91 = !DILocation(line: 26, column: 2, scope: !45)
!92 = !DILocation(line: 27, column: 13, scope: !45)
!93 = !DILocation(line: 27, column: 8, scope: !45)
!94 = !DILocation(line: 27, column: 4, scope: !45)
!95 = !DILocation(line: 27, column: 6, scope: !45)
!96 = !DILocation(line: 28, column: 10, scope: !68)
!97 = !DILocation(line: 28, column: 10, scope: !45)
!98 = !DILocation(line: 28, column: 4, scope: !45)
!99 = !DILocation(line: 28, column: 8, scope: !45)
!100 = !DILocation(line: 29, column: 10, scope: !71)
!101 = !DILocation(line: 29, column: 10, scope: !45)
!102 = !DILocation(line: 29, column: 4, scope: !45)
!103 = !DILocation(line: 29, column: 8, scope: !45)
!104 = !DILocation(line: 32, column: 1, scope: !45)
!105 = distinct !DISubprogram(name: "fls", scope: !106, file: !106, line: 359, type: !107, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!106 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!107 = !DISubroutineType(types: !108)
!108 = !{!62, !14}
!109 = !{!110, !111}
!110 = !DILocalVariable(name: "x", arg: 1, scope: !105, file: !106, line: 359, type: !14)
!111 = !DILocalVariable(name: "r", scope: !105, file: !106, line: 361, type: !62)
!112 = !DILocation(line: 359, column: 45, scope: !105)
!113 = !DILocation(line: 361, column: 2, scope: !105)
!114 = !DILocation(line: 361, column: 6, scope: !105)
!115 = !DILocation(line: 375, column: 14, scope: !105)
!116 = !DILocation(line: 373, column: 2, scope: !105)
!117 = !{i64 249307}
!118 = !DILocation(line: 386, column: 9, scope: !105)
!119 = !DILocation(line: 386, column: 11, scope: !105)
!120 = !DILocation(line: 387, column: 1, scope: !105)
!121 = !DILocation(line: 386, column: 2, scope: !105)
!122 = distinct !DISubprogram(name: "reciprocal_value_adv", scope: !3, file: !3, line: 35, type: !123, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !12, !53}
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reciprocal_value_adv", file: !49, line: 39, size: 64, elements: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !125, file: !49, line: 40, baseType: !12, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !125, file: !49, line: 41, baseType: !53, size: 8, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !125, file: !49, line: 41, baseType: !53, size: 8, offset: 40)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "is_wide_m", scope: !125, file: !49, line: 42, baseType: !131, size: 8, offset: 48)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !6, line: 35, baseType: !132)
!132 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !143, !147, !149, !150, !152, !153, !157}
!134 = !DILocalVariable(name: "d", arg: 1, scope: !122, file: !3, line: 35, type: !12)
!135 = !DILocalVariable(name: "prec", arg: 2, scope: !122, file: !3, line: 35, type: !53)
!136 = !DILocalVariable(name: "R", scope: !122, file: !3, line: 37, type: !125)
!137 = !DILocalVariable(name: "l", scope: !122, file: !3, line: 38, type: !12)
!138 = !DILocalVariable(name: "post_shift", scope: !122, file: !3, line: 38, type: !12)
!139 = !DILocalVariable(name: "mhigh", scope: !122, file: !3, line: 39, type: !7)
!140 = !DILocalVariable(name: "mlow", scope: !122, file: !3, line: 39, type: !7)
!141 = !DILocalVariable(name: "__ret_warn_on", scope: !142, file: !3, line: 47, type: !62)
!142 = distinct !DILexicalBlock(scope: !122, file: !3, line: 47, column: 2)
!143 = !DILocalVariable(name: "__flags", scope: !144, file: !3, line: 47, type: !62)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 47, column: 2)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 47, column: 2)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 47, column: 2)
!147 = !DILocalVariable(name: "__base", scope: !148, file: !3, line: 52, type: !65)
!148 = distinct !DILexicalBlock(scope: !122, file: !3, line: 52, column: 2)
!149 = !DILocalVariable(name: "__rem", scope: !148, file: !3, line: 52, type: !65)
!150 = !DILocalVariable(name: "__base", scope: !151, file: !3, line: 54, type: !65)
!151 = distinct !DILexicalBlock(scope: !122, file: !3, line: 54, column: 2)
!152 = !DILocalVariable(name: "__rem", scope: !151, file: !3, line: 54, type: !65)
!153 = !DILocalVariable(name: "lo", scope: !154, file: !3, line: 57, type: !7)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 56, column: 39)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 56, column: 2)
!156 = distinct !DILexicalBlock(scope: !122, file: !3, line: 56, column: 2)
!157 = !DILocalVariable(name: "hi", scope: !154, file: !3, line: 57, type: !7)
!158 = !DILocation(line: 35, column: 54, scope: !122)
!159 = !DILocation(line: 35, column: 60, scope: !122)
!160 = !DILocation(line: 37, column: 30, scope: !122)
!161 = !DILocation(line: 38, column: 2, scope: !122)
!162 = !DILocation(line: 38, column: 6, scope: !122)
!163 = !DILocation(line: 38, column: 9, scope: !122)
!164 = !DILocation(line: 39, column: 2, scope: !122)
!165 = !DILocation(line: 39, column: 6, scope: !122)
!166 = !DILocation(line: 39, column: 13, scope: !122)
!167 = !DILocation(line: 42, column: 10, scope: !122)
!168 = !DILocation(line: 42, column: 12, scope: !122)
!169 = !DILocation(line: 42, column: 6, scope: !122)
!170 = !DILocation(line: 42, column: 4, scope: !122)
!171 = !DILocation(line: 47, column: 2, scope: !142)
!172 = !DILocation(line: 47, column: 2, scope: !146)
!173 = !DILocation(line: 47, column: 2, scope: !145)
!174 = !DILocation(line: 47, column: 2, scope: !175)
!175 = distinct !DILexicalBlock(scope: !145, file: !3, line: 47, column: 2)
!176 = !DILocation(line: 47, column: 2, scope: !144)
!177 = !DILocation(line: 47, column: 2, scope: !178)
!178 = distinct !DILexicalBlock(scope: !144, file: !3, line: 47, column: 2)
!179 = !DILocation(line: 47, column: 2, scope: !180)
!180 = distinct !DILexicalBlock(scope: !144, file: !3, line: 47, column: 2)
!181 = !{i64 2148048542, i64 2148048571, i64 2148048617, i64 2148048675, i64 2148048729, i64 2148048783, i64 2148048838, i64 2148048869, i64 2148049177, i64 2148049183, i64 2148049230, i64 2148049253, i64 2148049279}
!182 = !DILocation(line: 47, column: 2, scope: !183)
!183 = distinct !DILexicalBlock(scope: !144, file: !3, line: 47, column: 2)
!184 = !DILocation(line: 47, column: 2, scope: !185)
!185 = distinct !DILexicalBlock(scope: !145, file: !3, line: 47, column: 2)
!186 = !DILocation(line: 47, column: 2, scope: !122)
!187 = !DILocation(line: 50, column: 15, scope: !122)
!188 = !DILocation(line: 50, column: 13, scope: !122)
!189 = !DILocation(line: 51, column: 23, scope: !122)
!190 = !DILocation(line: 51, column: 21, scope: !122)
!191 = !DILocation(line: 51, column: 14, scope: !122)
!192 = !DILocation(line: 51, column: 7, scope: !122)
!193 = !DILocation(line: 52, column: 2, scope: !148)
!194 = !DILocation(line: 52, column: 2, scope: !122)
!195 = !DILocation(line: 53, column: 25, scope: !122)
!196 = !DILocation(line: 53, column: 23, scope: !122)
!197 = !DILocation(line: 53, column: 16, scope: !122)
!198 = !DILocation(line: 53, column: 46, scope: !122)
!199 = !DILocation(line: 53, column: 44, scope: !122)
!200 = !DILocation(line: 53, column: 50, scope: !122)
!201 = !DILocation(line: 53, column: 48, scope: !122)
!202 = !DILocation(line: 53, column: 37, scope: !122)
!203 = !DILocation(line: 53, column: 29, scope: !122)
!204 = !DILocation(line: 53, column: 8, scope: !122)
!205 = !DILocation(line: 54, column: 2, scope: !151)
!206 = !DILocation(line: 54, column: 2, scope: !122)
!207 = !DILocation(line: 56, column: 2, scope: !122)
!208 = !DILocation(line: 56, column: 9, scope: !155)
!209 = !DILocation(line: 56, column: 20, scope: !155)
!210 = !DILocation(line: 56, column: 2, scope: !156)
!211 = !DILocation(line: 57, column: 3, scope: !154)
!212 = !DILocation(line: 57, column: 7, scope: !154)
!213 = !DILocation(line: 57, column: 12, scope: !154)
!214 = !DILocation(line: 57, column: 17, scope: !154)
!215 = !DILocation(line: 57, column: 23, scope: !154)
!216 = !DILocation(line: 57, column: 28, scope: !154)
!217 = !DILocation(line: 57, column: 34, scope: !154)
!218 = !DILocation(line: 59, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !154, file: !3, line: 59, column: 7)
!220 = !DILocation(line: 59, column: 13, scope: !219)
!221 = !DILocation(line: 59, column: 10, scope: !219)
!222 = !DILocation(line: 59, column: 7, scope: !154)
!223 = !DILocation(line: 60, column: 4, scope: !219)
!224 = !DILocation(line: 62, column: 10, scope: !154)
!225 = !DILocation(line: 62, column: 8, scope: !154)
!226 = !DILocation(line: 63, column: 11, scope: !154)
!227 = !DILocation(line: 63, column: 9, scope: !154)
!228 = !DILocation(line: 64, column: 2, scope: !155)
!229 = !DILocation(line: 64, column: 2, scope: !154)
!230 = !DILocation(line: 56, column: 35, scope: !155)
!231 = !DILocation(line: 56, column: 2, scope: !155)
!232 = distinct !{!232, !210, !233, !234, !235}
!233 = !DILocation(line: 64, column: 2, scope: !156)
!234 = !{!"llvm.loop.mustprogress"}
!235 = !{!"llvm.loop.unroll.disable"}
!236 = !DILocation(line: 66, column: 13, scope: !122)
!237 = !DILocation(line: 66, column: 8, scope: !122)
!238 = !DILocation(line: 66, column: 4, scope: !122)
!239 = !DILocation(line: 66, column: 6, scope: !122)
!240 = !DILocation(line: 67, column: 9, scope: !122)
!241 = !DILocation(line: 67, column: 4, scope: !122)
!242 = !DILocation(line: 67, column: 7, scope: !122)
!243 = !DILocation(line: 68, column: 10, scope: !122)
!244 = !DILocation(line: 68, column: 4, scope: !122)
!245 = !DILocation(line: 68, column: 8, scope: !122)
!246 = !DILocation(line: 69, column: 16, scope: !122)
!247 = !DILocation(line: 69, column: 22, scope: !122)
!248 = !DILocation(line: 69, column: 4, scope: !122)
!249 = !DILocation(line: 69, column: 14, scope: !122)
!250 = !DILocation(line: 72, column: 1, scope: !122)
!251 = !DISubprogram(name: "__warn_printk", scope: !252, file: !252, line: 93, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255, null}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
