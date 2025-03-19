; ModuleID = 'lib/find_bit.c'
source_filename = "lib/find_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_first_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_first_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_first_and_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_first_and_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_first_zero_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_first_zero_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_next_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_next_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___find_nth_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __find_nth_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___find_nth_and_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __find_nth_and_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___find_nth_andnot_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __find_nth_andnot_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___find_nth_and_andnot_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __find_nth_and_andnot_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_next_and_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_next_and_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_next_andnot_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_next_andnot_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_next_or_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_next_or_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_next_zero_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_next_zero_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__find_last_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _find_last_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_find_next_clump8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad find_next_clump8 ; .previous"

@__UNIQUE_ID___addressable__find_first_bit4 = internal global ptr @_find_first_bit, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable__find_first_and_bit7 = internal global ptr @_find_first_and_bit, section ".discard.addressable", align 8, !dbg !27
@__UNIQUE_ID___addressable__find_first_zero_bit10 = internal global ptr @_find_first_zero_bit, section ".discard.addressable", align 8, !dbg !29
@__UNIQUE_ID___addressable__find_next_bit13 = internal global ptr @_find_next_bit, section ".discard.addressable", align 8, !dbg !31
@__UNIQUE_ID___addressable___find_nth_bit16 = internal global ptr @__find_nth_bit, section ".discard.addressable", align 8, !dbg !33
@__UNIQUE_ID___addressable___find_nth_and_bit19 = internal global ptr @__find_nth_and_bit, section ".discard.addressable", align 8, !dbg !35
@__UNIQUE_ID___addressable___find_nth_andnot_bit22 = internal global ptr @__find_nth_andnot_bit, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID___addressable___find_nth_and_andnot_bit25 = internal global ptr @__find_nth_and_andnot_bit, section ".discard.addressable", align 8, !dbg !39
@__UNIQUE_ID___addressable__find_next_and_bit28 = internal global ptr @_find_next_and_bit, section ".discard.addressable", align 8, !dbg !41
@__UNIQUE_ID___addressable__find_next_andnot_bit31 = internal global ptr @_find_next_andnot_bit, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable__find_next_or_bit34 = internal global ptr @_find_next_or_bit, section ".discard.addressable", align 8, !dbg !45
@__UNIQUE_ID___addressable__find_next_zero_bit37 = internal global ptr @_find_next_zero_bit, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable__find_last_bit38 = internal global ptr @_find_last_bit, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable_find_next_clump839 = internal global ptr @find_next_clump8, section ".discard.addressable", align 8, !dbg !51
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID___addressable__find_first_bit4, ptr @__UNIQUE_ID___addressable__find_first_and_bit7, ptr @__UNIQUE_ID___addressable__find_first_zero_bit10, ptr @__UNIQUE_ID___addressable__find_next_bit13, ptr @__UNIQUE_ID___addressable___find_nth_bit16, ptr @__UNIQUE_ID___addressable___find_nth_and_bit19, ptr @__UNIQUE_ID___addressable___find_nth_andnot_bit22, ptr @__UNIQUE_ID___addressable___find_nth_and_andnot_bit25, ptr @__UNIQUE_ID___addressable__find_next_and_bit28, ptr @__UNIQUE_ID___addressable__find_next_andnot_bit31, ptr @__UNIQUE_ID___addressable__find_next_or_bit34, ptr @__UNIQUE_ID___addressable__find_next_zero_bit37, ptr @__UNIQUE_ID___addressable__find_last_bit38, ptr @__UNIQUE_ID___addressable_find_next_clump839], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_first_bit(ptr noundef %addr, i64 noundef %size) #0 align 16 !dbg !62 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  %val = alloca i64, align 8
  %sz = alloca i64, align 8
  %__UNIQUE_ID___x2 = alloca i64, align 8
  %__UNIQUE_ID___y3 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !66, metadata !DIExpression()), !dbg !80
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !67, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !68, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %val, metadata !70, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !71, metadata !DIExpression()), !dbg !82
  %0 = load i64, ptr %size.addr, align 8, !dbg !82
  store i64 %0, ptr %sz, align 8, !dbg !82
  store i64 0, ptr %idx, align 8, !dbg !83
  br label %for.cond, !dbg !83

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %idx, align 8, !dbg !84
  %mul = mul i64 %1, 64, !dbg !84
  %2 = load i64, ptr %sz, align 8, !dbg !84
  %cmp = icmp ult i64 %mul, %2, !dbg !84
  br i1 %cmp, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !85
  %4 = load i64, ptr %idx, align 8, !dbg !85
  %arrayidx = getelementptr i64, ptr %3, i64 %4, !dbg !85
  %5 = load i64, ptr %arrayidx, align 8, !dbg !85
  store i64 %5, ptr %val, align 8, !dbg !85
  %6 = load i64, ptr %val, align 8, !dbg !86
  %tobool = icmp ne i64 %6, 0, !dbg !86
  br i1 %tobool, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x2) #7, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x2, metadata !72, metadata !DIExpression()), !dbg !87
  %7 = load i64, ptr %idx, align 8, !dbg !87
  %mul1 = mul i64 %7, 64, !dbg !87
  %8 = load i64, ptr %val, align 8, !dbg !87
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !87
  br i1 %9, label %cond.true, label %cond.false, !dbg !87

cond.true:                                        ; preds = %if.then
  %10 = load i64, ptr %val, align 8, !dbg !87
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !87
  %cast = trunc i64 %11 to i32, !dbg !87
  %conv = sext i32 %cast to i64, !dbg !87
  br label %cond.end, !dbg !87

cond.false:                                       ; preds = %if.then
  %12 = load i64, ptr %val, align 8, !dbg !87
  %call = call i64 @variable__ffs(i64 noundef %12) #8, !dbg !87
  br label %cond.end, !dbg !87

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !87
  %add = add i64 %mul1, %cond, !dbg !87
  store i64 %add, ptr %__UNIQUE_ID___x2, align 8, !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y3) #7, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y3, metadata !79, metadata !DIExpression()), !dbg !87
  %13 = load i64, ptr %sz, align 8, !dbg !87
  store i64 %13, ptr %__UNIQUE_ID___y3, align 8, !dbg !87
  %14 = load i64, ptr %__UNIQUE_ID___x2, align 8, !dbg !87
  %15 = load i64, ptr %__UNIQUE_ID___y3, align 8, !dbg !87
  %cmp2 = icmp ult i64 %14, %15, !dbg !87
  br i1 %cmp2, label %cond.true4, label %cond.false5, !dbg !87

cond.true4:                                       ; preds = %cond.end
  %16 = load i64, ptr %__UNIQUE_ID___x2, align 8, !dbg !87
  br label %cond.end6, !dbg !87

cond.false5:                                      ; preds = %cond.end
  %17 = load i64, ptr %__UNIQUE_ID___y3, align 8, !dbg !87
  br label %cond.end6, !dbg !87

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %16, %cond.true4 ], [ %17, %cond.false5 ], !dbg !87
  store i64 %cond7, ptr %tmp, align 8, !dbg !87
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y3) #7, !dbg !88
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x2) #7, !dbg !88
  %18 = load i64, ptr %tmp, align 8, !dbg !87
  store i64 %18, ptr %sz, align 8, !dbg !88
  br label %for.end, !dbg !88

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %if.end
  %19 = load i64, ptr %idx, align 8, !dbg !84
  %inc = add i64 %19, 1, !dbg !84
  store i64 %inc, ptr %idx, align 8, !dbg !84
  br label %for.cond, !dbg !84, !llvm.loop !89

for.end:                                          ; preds = %cond.end6, %for.cond
  %20 = load i64, ptr %sz, align 8, !dbg !82
  store i64 %20, ptr %tmp8, align 8, !dbg !83
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !92
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !92
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !92
  %21 = load i64, ptr %tmp8, align 8, !dbg !82
  ret i64 %21, !dbg !93
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !94 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i64, ptr %word.addr, align 8, !dbg !101
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #9, !dbg !102, !srcloc !103
  store i64 %1, ptr %word.addr, align 8, !dbg !102
  %2 = load i64, ptr %word.addr, align 8, !dbg !104
  ret i64 %2, !dbg !105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_first_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size) #0 align 16 !dbg !106 {
entry:
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  %val = alloca i64, align 8
  %sz = alloca i64, align 8
  %__UNIQUE_ID___x5 = alloca i64, align 8
  %__UNIQUE_ID___y6 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp9 = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !110, metadata !DIExpression()), !dbg !125
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !111, metadata !DIExpression()), !dbg !126
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !112, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !113, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %val, metadata !115, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !116, metadata !DIExpression()), !dbg !128
  %0 = load i64, ptr %size.addr, align 8, !dbg !128
  store i64 %0, ptr %sz, align 8, !dbg !128
  store i64 0, ptr %idx, align 8, !dbg !129
  br label %for.cond, !dbg !129

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %idx, align 8, !dbg !130
  %mul = mul i64 %1, 64, !dbg !130
  %2 = load i64, ptr %sz, align 8, !dbg !130
  %cmp = icmp ult i64 %mul, %2, !dbg !130
  br i1 %cmp, label %for.body, label %for.end, !dbg !129

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %addr1.addr, align 8, !dbg !131
  %4 = load i64, ptr %idx, align 8, !dbg !131
  %arrayidx = getelementptr i64, ptr %3, i64 %4, !dbg !131
  %5 = load i64, ptr %arrayidx, align 8, !dbg !131
  %6 = load ptr, ptr %addr2.addr, align 8, !dbg !131
  %7 = load i64, ptr %idx, align 8, !dbg !131
  %arrayidx1 = getelementptr i64, ptr %6, i64 %7, !dbg !131
  %8 = load i64, ptr %arrayidx1, align 8, !dbg !131
  %and = and i64 %5, %8, !dbg !131
  store i64 %and, ptr %val, align 8, !dbg !131
  %9 = load i64, ptr %val, align 8, !dbg !132
  %tobool = icmp ne i64 %9, 0, !dbg !132
  br i1 %tobool, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x5) #7, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x5, metadata !117, metadata !DIExpression()), !dbg !133
  %10 = load i64, ptr %idx, align 8, !dbg !133
  %mul2 = mul i64 %10, 64, !dbg !133
  %11 = load i64, ptr %val, align 8, !dbg !133
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !133
  br i1 %12, label %cond.true, label %cond.false, !dbg !133

cond.true:                                        ; preds = %if.then
  %13 = load i64, ptr %val, align 8, !dbg !133
  %14 = call i64 @llvm.cttz.i64(i64 %13, i1 true), !dbg !133
  %cast = trunc i64 %14 to i32, !dbg !133
  %conv = sext i32 %cast to i64, !dbg !133
  br label %cond.end, !dbg !133

cond.false:                                       ; preds = %if.then
  %15 = load i64, ptr %val, align 8, !dbg !133
  %call = call i64 @variable__ffs(i64 noundef %15) #8, !dbg !133
  br label %cond.end, !dbg !133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !133
  %add = add i64 %mul2, %cond, !dbg !133
  store i64 %add, ptr %__UNIQUE_ID___x5, align 8, !dbg !133
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y6) #7, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y6, metadata !124, metadata !DIExpression()), !dbg !133
  %16 = load i64, ptr %sz, align 8, !dbg !133
  store i64 %16, ptr %__UNIQUE_ID___y6, align 8, !dbg !133
  %17 = load i64, ptr %__UNIQUE_ID___x5, align 8, !dbg !133
  %18 = load i64, ptr %__UNIQUE_ID___y6, align 8, !dbg !133
  %cmp3 = icmp ult i64 %17, %18, !dbg !133
  br i1 %cmp3, label %cond.true5, label %cond.false6, !dbg !133

cond.true5:                                       ; preds = %cond.end
  %19 = load i64, ptr %__UNIQUE_ID___x5, align 8, !dbg !133
  br label %cond.end7, !dbg !133

cond.false6:                                      ; preds = %cond.end
  %20 = load i64, ptr %__UNIQUE_ID___y6, align 8, !dbg !133
  br label %cond.end7, !dbg !133

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i64 [ %19, %cond.true5 ], [ %20, %cond.false6 ], !dbg !133
  store i64 %cond8, ptr %tmp, align 8, !dbg !133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y6) #7, !dbg !134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x5) #7, !dbg !134
  %21 = load i64, ptr %tmp, align 8, !dbg !133
  store i64 %21, ptr %sz, align 8, !dbg !134
  br label %for.end, !dbg !134

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !131

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %idx, align 8, !dbg !130
  %inc = add i64 %22, 1, !dbg !130
  store i64 %inc, ptr %idx, align 8, !dbg !130
  br label %for.cond, !dbg !130, !llvm.loop !135

for.end:                                          ; preds = %cond.end7, %for.cond
  %23 = load i64, ptr %sz, align 8, !dbg !128
  store i64 %23, ptr %tmp9, align 8, !dbg !129
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !136
  %24 = load i64, ptr %tmp9, align 8, !dbg !128
  ret i64 %24, !dbg !137
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_first_zero_bit(ptr noundef %addr, i64 noundef %size) #0 align 16 !dbg !138 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  %val = alloca i64, align 8
  %sz = alloca i64, align 8
  %__UNIQUE_ID___x8 = alloca i64, align 8
  %__UNIQUE_ID___y9 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !140, metadata !DIExpression()), !dbg !154
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !141, metadata !DIExpression()), !dbg !155
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !142, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %val, metadata !144, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !145, metadata !DIExpression()), !dbg !156
  %0 = load i64, ptr %size.addr, align 8, !dbg !156
  store i64 %0, ptr %sz, align 8, !dbg !156
  store i64 0, ptr %idx, align 8, !dbg !157
  br label %for.cond, !dbg !157

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %idx, align 8, !dbg !158
  %mul = mul i64 %1, 64, !dbg !158
  %2 = load i64, ptr %sz, align 8, !dbg !158
  %cmp = icmp ult i64 %mul, %2, !dbg !158
  br i1 %cmp, label %for.body, label %for.end, !dbg !157

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !159
  %4 = load i64, ptr %idx, align 8, !dbg !159
  %arrayidx = getelementptr i64, ptr %3, i64 %4, !dbg !159
  %5 = load i64, ptr %arrayidx, align 8, !dbg !159
  %not = xor i64 %5, -1, !dbg !159
  store i64 %not, ptr %val, align 8, !dbg !159
  %6 = load i64, ptr %val, align 8, !dbg !160
  %tobool = icmp ne i64 %6, 0, !dbg !160
  br i1 %tobool, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x8) #7, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x8, metadata !146, metadata !DIExpression()), !dbg !161
  %7 = load i64, ptr %idx, align 8, !dbg !161
  %mul1 = mul i64 %7, 64, !dbg !161
  %8 = load i64, ptr %val, align 8, !dbg !161
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !161
  br i1 %9, label %cond.true, label %cond.false, !dbg !161

cond.true:                                        ; preds = %if.then
  %10 = load i64, ptr %val, align 8, !dbg !161
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !161
  %cast = trunc i64 %11 to i32, !dbg !161
  %conv = sext i32 %cast to i64, !dbg !161
  br label %cond.end, !dbg !161

cond.false:                                       ; preds = %if.then
  %12 = load i64, ptr %val, align 8, !dbg !161
  %call = call i64 @variable__ffs(i64 noundef %12) #8, !dbg !161
  br label %cond.end, !dbg !161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !161
  %add = add i64 %mul1, %cond, !dbg !161
  store i64 %add, ptr %__UNIQUE_ID___x8, align 8, !dbg !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y9) #7, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y9, metadata !153, metadata !DIExpression()), !dbg !161
  %13 = load i64, ptr %sz, align 8, !dbg !161
  store i64 %13, ptr %__UNIQUE_ID___y9, align 8, !dbg !161
  %14 = load i64, ptr %__UNIQUE_ID___x8, align 8, !dbg !161
  %15 = load i64, ptr %__UNIQUE_ID___y9, align 8, !dbg !161
  %cmp2 = icmp ult i64 %14, %15, !dbg !161
  br i1 %cmp2, label %cond.true4, label %cond.false5, !dbg !161

cond.true4:                                       ; preds = %cond.end
  %16 = load i64, ptr %__UNIQUE_ID___x8, align 8, !dbg !161
  br label %cond.end6, !dbg !161

cond.false5:                                      ; preds = %cond.end
  %17 = load i64, ptr %__UNIQUE_ID___y9, align 8, !dbg !161
  br label %cond.end6, !dbg !161

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %16, %cond.true4 ], [ %17, %cond.false5 ], !dbg !161
  store i64 %cond7, ptr %tmp, align 8, !dbg !161
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y9) #7, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x8) #7, !dbg !162
  %18 = load i64, ptr %tmp, align 8, !dbg !161
  store i64 %18, ptr %sz, align 8, !dbg !162
  br label %for.end, !dbg !162

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %if.end
  %19 = load i64, ptr %idx, align 8, !dbg !158
  %inc = add i64 %19, 1, !dbg !158
  store i64 %inc, ptr %idx, align 8, !dbg !158
  br label %for.cond, !dbg !158, !llvm.loop !163

for.end:                                          ; preds = %cond.end6, %for.cond
  %20 = load i64, ptr %sz, align 8, !dbg !156
  store i64 %20, ptr %tmp8, align 8, !dbg !157
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !164
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !164
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !164
  %21 = load i64, ptr %tmp8, align 8, !dbg !156
  ret i64 %21, !dbg !165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_next_bit(ptr noundef %addr, i64 noundef %nbits, i64 noundef %start) #0 align 16 !dbg !166 {
entry:
  %addr.addr = alloca ptr, align 8
  %nbits.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  %idx = alloca i64, align 8
  %tmp = alloca i64, align 8
  %sz = alloca i64, align 8
  %__start = alloca i64, align 8
  %__UNIQUE_ID___x11 = alloca i64, align 8
  %__UNIQUE_ID___y12 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !170, metadata !DIExpression()), !dbg !183
  store i64 %nbits, ptr %nbits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !171, metadata !DIExpression()), !dbg !184
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !172, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !173, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !175, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !176, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !177, metadata !DIExpression()), !dbg !186
  %0 = load i64, ptr %nbits.addr, align 8, !dbg !186
  store i64 %0, ptr %sz, align 8, !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %__start) #7, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %__start, metadata !178, metadata !DIExpression()), !dbg !186
  %1 = load i64, ptr %start.addr, align 8, !dbg !186
  store i64 %1, ptr %__start, align 8, !dbg !186
  %2 = load i64, ptr %__start, align 8, !dbg !187
  %3 = load i64, ptr %sz, align 8, !dbg !187
  %cmp = icmp uge i64 %2, %3, !dbg !187
  %lnot = xor i1 %cmp, true, !dbg !187
  %lnot1 = xor i1 %lnot, true, !dbg !187
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !187
  %conv = sext i32 %lnot.ext to i64, !dbg !187
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !187
  %tobool = icmp ne i64 %expval, 0, !dbg !187
  br i1 %tobool, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  br label %out, !dbg !187

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %__start, align 8, !dbg !186
  %and = and i64 %4, 63, !dbg !186
  %shl = shl i64 -1, %and, !dbg !186
  store i64 %shl, ptr %mask, align 8, !dbg !186
  %5 = load i64, ptr %__start, align 8, !dbg !186
  %div = udiv i64 %5, 64, !dbg !186
  store i64 %div, ptr %idx, align 8, !dbg !186
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !189
  %7 = load i64, ptr %idx, align 8, !dbg !189
  %arrayidx = getelementptr i64, ptr %6, i64 %7, !dbg !189
  %8 = load i64, ptr %arrayidx, align 8, !dbg !189
  %9 = load i64, ptr %mask, align 8, !dbg !189
  %and2 = and i64 %8, %9, !dbg !189
  store i64 %and2, ptr %tmp, align 8, !dbg !189
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, ptr %tmp, align 8, !dbg !191
  %tobool3 = icmp ne i64 %10, 0, !dbg !191
  %lnot4 = xor i1 %tobool3, true, !dbg !191
  br i1 %lnot4, label %for.body, label %for.end, !dbg !189

for.body:                                         ; preds = %for.cond
  %11 = load i64, ptr %idx, align 8, !dbg !193
  %add = add i64 %11, 1, !dbg !193
  %mul = mul i64 %add, 64, !dbg !193
  %12 = load i64, ptr %sz, align 8, !dbg !193
  %cmp6 = icmp uge i64 %mul, %12, !dbg !193
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !196

if.then8:                                         ; preds = %for.body
  br label %out, !dbg !193

if.end9:                                          ; preds = %for.body
  %13 = load i64, ptr %idx, align 8, !dbg !196
  %inc = add i64 %13, 1, !dbg !196
  store i64 %inc, ptr %idx, align 8, !dbg !196
  br label %for.inc, !dbg !196

for.inc:                                          ; preds = %if.end9
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !191
  %15 = load i64, ptr %idx, align 8, !dbg !191
  %arrayidx10 = getelementptr i64, ptr %14, i64 %15, !dbg !191
  %16 = load i64, ptr %arrayidx10, align 8, !dbg !191
  store i64 %16, ptr %tmp, align 8, !dbg !191
  br label %for.cond, !dbg !191, !llvm.loop !197

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x11) #7, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x11, metadata !179, metadata !DIExpression()), !dbg !198
  %17 = load i64, ptr %idx, align 8, !dbg !198
  %mul11 = mul i64 %17, 64, !dbg !198
  %18 = load i64, ptr %tmp, align 8, !dbg !198
  %19 = call i1 @llvm.is.constant.i64(i64 %18), !dbg !198
  br i1 %19, label %cond.true, label %cond.false, !dbg !198

cond.true:                                        ; preds = %for.end
  %20 = load i64, ptr %tmp, align 8, !dbg !198
  %21 = call i64 @llvm.cttz.i64(i64 %20, i1 true), !dbg !198
  %cast = trunc i64 %21 to i32, !dbg !198
  %conv12 = sext i32 %cast to i64, !dbg !198
  br label %cond.end, !dbg !198

cond.false:                                       ; preds = %for.end
  %22 = load i64, ptr %tmp, align 8, !dbg !198
  %call = call i64 @variable__ffs(i64 noundef %22) #8, !dbg !198
  br label %cond.end, !dbg !198

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv12, %cond.true ], [ %call, %cond.false ], !dbg !198
  %add13 = add i64 %mul11, %cond, !dbg !198
  store i64 %add13, ptr %__UNIQUE_ID___x11, align 8, !dbg !198
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y12) #7, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y12, metadata !181, metadata !DIExpression()), !dbg !198
  %23 = load i64, ptr %sz, align 8, !dbg !198
  store i64 %23, ptr %__UNIQUE_ID___y12, align 8, !dbg !198
  %24 = load i64, ptr %__UNIQUE_ID___x11, align 8, !dbg !198
  %25 = load i64, ptr %__UNIQUE_ID___y12, align 8, !dbg !198
  %cmp15 = icmp ult i64 %24, %25, !dbg !198
  br i1 %cmp15, label %cond.true17, label %cond.false18, !dbg !198

cond.true17:                                      ; preds = %cond.end
  %26 = load i64, ptr %__UNIQUE_ID___x11, align 8, !dbg !198
  br label %cond.end19, !dbg !198

cond.false18:                                     ; preds = %cond.end
  %27 = load i64, ptr %__UNIQUE_ID___y12, align 8, !dbg !198
  br label %cond.end19, !dbg !198

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i64 [ %26, %cond.true17 ], [ %27, %cond.false18 ], !dbg !198
  store i64 %cond20, ptr %tmp14, align 8, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y12) #7, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x11) #7, !dbg !186
  %28 = load i64, ptr %tmp14, align 8, !dbg !198
  store i64 %28, ptr %sz, align 8, !dbg !186
  br label %out, !dbg !186

out:                                              ; preds = %cond.end19, %if.then8, %if.then
  call void @llvm.dbg.label(metadata !182), !dbg !186
  %29 = load i64, ptr %sz, align 8, !dbg !186
  store i64 %29, ptr %tmp21, align 8, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__start) #7, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !199
  %30 = load i64, ptr %tmp21, align 8, !dbg !186
  ret i64 %30, !dbg !200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__find_nth_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %n) #0 align 16 !dbg !201 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %nr = alloca i64, align 8
  %idx = alloca i64, align 8
  %w = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x14 = alloca i64, align 8
  %__UNIQUE_ID___y15 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp18 = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !203, metadata !DIExpression()), !dbg !217
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !204, metadata !DIExpression()), !dbg !218
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !205, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !206, metadata !DIExpression()), !dbg !220
  %0 = load i64, ptr %size.addr, align 8, !dbg !220
  store i64 %0, ptr %sz, align 8, !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !208, metadata !DIExpression()), !dbg !220
  %1 = load i64, ptr %n.addr, align 8, !dbg !220
  store i64 %1, ptr %nr, align 8, !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !209, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %w, metadata !210, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !211, metadata !DIExpression()), !dbg !220
  store i64 0, ptr %idx, align 8, !dbg !221
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %idx, align 8, !dbg !223
  %add = add i64 %2, 1, !dbg !223
  %mul = mul i64 %add, 64, !dbg !223
  %3 = load i64, ptr %sz, align 8, !dbg !223
  %cmp = icmp ule i64 %mul, %3, !dbg !223
  br i1 %cmp, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %idx, align 8, !dbg !225
  %mul1 = mul i64 %4, 64, !dbg !225
  %5 = load i64, ptr %nr, align 8, !dbg !225
  %add2 = add i64 %mul1, %5, !dbg !225
  %6 = load i64, ptr %sz, align 8, !dbg !225
  %cmp3 = icmp uge i64 %add2, %6, !dbg !225
  br i1 %cmp3, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %for.body
  br label %out, !dbg !225

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !228
  %8 = load i64, ptr %idx, align 8, !dbg !228
  %arrayidx = getelementptr i64, ptr %7, i64 %8, !dbg !228
  %9 = load i64, ptr %arrayidx, align 8, !dbg !228
  store i64 %9, ptr %tmp, align 8, !dbg !228
  %10 = load i64, ptr %tmp, align 8, !dbg !228
  %call = call i64 @hweight_long(i64 noundef %10) #8, !dbg !228
  store i64 %call, ptr %w, align 8, !dbg !228
  %11 = load i64, ptr %w, align 8, !dbg !229
  %12 = load i64, ptr %nr, align 8, !dbg !229
  %cmp4 = icmp ugt i64 %11, %12, !dbg !229
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !228

if.then5:                                         ; preds = %if.end
  br label %found, !dbg !229

if.end6:                                          ; preds = %if.end
  %13 = load i64, ptr %w, align 8, !dbg !228
  %14 = load i64, ptr %nr, align 8, !dbg !228
  %sub = sub i64 %14, %13, !dbg !228
  store i64 %sub, ptr %nr, align 8, !dbg !228
  br label %for.inc, !dbg !228

for.inc:                                          ; preds = %if.end6
  %15 = load i64, ptr %idx, align 8, !dbg !223
  %inc = add i64 %15, 1, !dbg !223
  store i64 %inc, ptr %idx, align 8, !dbg !223
  br label %for.cond, !dbg !223, !llvm.loop !231

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %sz, align 8, !dbg !232
  %rem = urem i64 %16, 64, !dbg !232
  %tobool = icmp ne i64 %rem, 0, !dbg !232
  br i1 %tobool, label %if.then7, label %if.end11, !dbg !220

if.then7:                                         ; preds = %for.end
  %17 = load ptr, ptr %addr.addr, align 8, !dbg !232
  %18 = load i64, ptr %idx, align 8, !dbg !232
  %arrayidx8 = getelementptr i64, ptr %17, i64 %18, !dbg !232
  %19 = load i64, ptr %arrayidx8, align 8, !dbg !232
  %20 = load i64, ptr %sz, align 8, !dbg !232
  %sub9 = sub i64 0, %20, !dbg !232
  %and = and i64 %sub9, 63, !dbg !232
  %shr = lshr i64 -1, %and, !dbg !232
  %and10 = and i64 %19, %shr, !dbg !232
  store i64 %and10, ptr %tmp, align 8, !dbg !232
  br label %if.end11, !dbg !232

if.end11:                                         ; preds = %if.then7, %for.end
  br label %found, !dbg !232

found:                                            ; preds = %if.end11, %if.then5
  call void @llvm.dbg.label(metadata !212), !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x14) #7, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x14, metadata !213, metadata !DIExpression()), !dbg !234
  %21 = load i64, ptr %idx, align 8, !dbg !234
  %mul12 = mul i64 %21, 64, !dbg !234
  %22 = load i64, ptr %tmp, align 8, !dbg !234
  %23 = load i64, ptr %nr, align 8, !dbg !234
  %conv = trunc i64 %23 to i32, !dbg !234
  %call13 = call i64 @fns(i64 noundef %22, i32 noundef %conv) #8, !dbg !234
  %add14 = add i64 %mul12, %call13, !dbg !234
  store i64 %add14, ptr %__UNIQUE_ID___x14, align 8, !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y15) #7, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y15, metadata !215, metadata !DIExpression()), !dbg !234
  %24 = load i64, ptr %sz, align 8, !dbg !234
  store i64 %24, ptr %__UNIQUE_ID___y15, align 8, !dbg !234
  %25 = load i64, ptr %__UNIQUE_ID___x14, align 8, !dbg !234
  %26 = load i64, ptr %__UNIQUE_ID___y15, align 8, !dbg !234
  %cmp16 = icmp ult i64 %25, %26, !dbg !234
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !234

cond.true:                                        ; preds = %found
  %27 = load i64, ptr %__UNIQUE_ID___x14, align 8, !dbg !234
  br label %cond.end, !dbg !234

cond.false:                                       ; preds = %found
  %28 = load i64, ptr %__UNIQUE_ID___y15, align 8, !dbg !234
  br label %cond.end, !dbg !234

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %27, %cond.true ], [ %28, %cond.false ], !dbg !234
  store i64 %cond, ptr %tmp15, align 8, !dbg !234
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y15) #7, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x14) #7, !dbg !220
  %29 = load i64, ptr %tmp15, align 8, !dbg !234
  store i64 %29, ptr %sz, align 8, !dbg !220
  br label %out, !dbg !220

out:                                              ; preds = %cond.end, %if.then
  call void @llvm.dbg.label(metadata !216), !dbg !220
  %30 = load i64, ptr %sz, align 8, !dbg !220
  store i64 %30, ptr %tmp18, align 8, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #7, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !235
  %31 = load i64, ptr %tmp18, align 8, !dbg !220
  ret i64 %31, !dbg !236
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #4 align 16 !dbg !237 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = load i64, ptr %w.addr, align 8, !dbg !242
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !242
  br i1 %1, label %cond.true, label %cond.false, !dbg !242

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !242
  %and = and i64 %2, 1, !dbg !242
  %tobool = icmp ne i64 %and, 0, !dbg !242
  %lnot = xor i1 %tobool, true, !dbg !242
  %lnot1 = xor i1 %lnot, true, !dbg !242
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !242
  %3 = load i64, ptr %w.addr, align 8, !dbg !242
  %and2 = and i64 %3, 2, !dbg !242
  %tobool3 = icmp ne i64 %and2, 0, !dbg !242
  %lnot4 = xor i1 %tobool3, true, !dbg !242
  %lnot6 = xor i1 %lnot4, true, !dbg !242
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !242
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !242
  %4 = load i64, ptr %w.addr, align 8, !dbg !242
  %and8 = and i64 %4, 4, !dbg !242
  %tobool9 = icmp ne i64 %and8, 0, !dbg !242
  %lnot10 = xor i1 %tobool9, true, !dbg !242
  %lnot12 = xor i1 %lnot10, true, !dbg !242
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !242
  %add14 = add i32 %add, %lnot.ext13, !dbg !242
  %5 = load i64, ptr %w.addr, align 8, !dbg !242
  %and15 = and i64 %5, 8, !dbg !242
  %tobool16 = icmp ne i64 %and15, 0, !dbg !242
  %lnot17 = xor i1 %tobool16, true, !dbg !242
  %lnot19 = xor i1 %lnot17, true, !dbg !242
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !242
  %add21 = add i32 %add14, %lnot.ext20, !dbg !242
  %6 = load i64, ptr %w.addr, align 8, !dbg !242
  %and22 = and i64 %6, 16, !dbg !242
  %tobool23 = icmp ne i64 %and22, 0, !dbg !242
  %lnot24 = xor i1 %tobool23, true, !dbg !242
  %lnot26 = xor i1 %lnot24, true, !dbg !242
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !242
  %add28 = add i32 %add21, %lnot.ext27, !dbg !242
  %7 = load i64, ptr %w.addr, align 8, !dbg !242
  %and29 = and i64 %7, 32, !dbg !242
  %tobool30 = icmp ne i64 %and29, 0, !dbg !242
  %lnot31 = xor i1 %tobool30, true, !dbg !242
  %lnot33 = xor i1 %lnot31, true, !dbg !242
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !242
  %add35 = add i32 %add28, %lnot.ext34, !dbg !242
  %8 = load i64, ptr %w.addr, align 8, !dbg !242
  %and36 = and i64 %8, 64, !dbg !242
  %tobool37 = icmp ne i64 %and36, 0, !dbg !242
  %lnot38 = xor i1 %tobool37, true, !dbg !242
  %lnot40 = xor i1 %lnot38, true, !dbg !242
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !242
  %add42 = add i32 %add35, %lnot.ext41, !dbg !242
  %9 = load i64, ptr %w.addr, align 8, !dbg !242
  %and43 = and i64 %9, 128, !dbg !242
  %tobool44 = icmp ne i64 %and43, 0, !dbg !242
  %lnot45 = xor i1 %tobool44, true, !dbg !242
  %lnot47 = xor i1 %lnot45, true, !dbg !242
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !242
  %add49 = add i32 %add42, %lnot.ext48, !dbg !242
  %10 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr = lshr i64 %10, 8, !dbg !242
  %and50 = and i64 %shr, 1, !dbg !242
  %tobool51 = icmp ne i64 %and50, 0, !dbg !242
  %lnot52 = xor i1 %tobool51, true, !dbg !242
  %lnot54 = xor i1 %lnot52, true, !dbg !242
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !242
  %11 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr56 = lshr i64 %11, 8, !dbg !242
  %and57 = and i64 %shr56, 2, !dbg !242
  %tobool58 = icmp ne i64 %and57, 0, !dbg !242
  %lnot59 = xor i1 %tobool58, true, !dbg !242
  %lnot61 = xor i1 %lnot59, true, !dbg !242
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !242
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !242
  %12 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr64 = lshr i64 %12, 8, !dbg !242
  %and65 = and i64 %shr64, 4, !dbg !242
  %tobool66 = icmp ne i64 %and65, 0, !dbg !242
  %lnot67 = xor i1 %tobool66, true, !dbg !242
  %lnot69 = xor i1 %lnot67, true, !dbg !242
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !242
  %add71 = add i32 %add63, %lnot.ext70, !dbg !242
  %13 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr72 = lshr i64 %13, 8, !dbg !242
  %and73 = and i64 %shr72, 8, !dbg !242
  %tobool74 = icmp ne i64 %and73, 0, !dbg !242
  %lnot75 = xor i1 %tobool74, true, !dbg !242
  %lnot77 = xor i1 %lnot75, true, !dbg !242
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !242
  %add79 = add i32 %add71, %lnot.ext78, !dbg !242
  %14 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr80 = lshr i64 %14, 8, !dbg !242
  %and81 = and i64 %shr80, 16, !dbg !242
  %tobool82 = icmp ne i64 %and81, 0, !dbg !242
  %lnot83 = xor i1 %tobool82, true, !dbg !242
  %lnot85 = xor i1 %lnot83, true, !dbg !242
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !242
  %add87 = add i32 %add79, %lnot.ext86, !dbg !242
  %15 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr88 = lshr i64 %15, 8, !dbg !242
  %and89 = and i64 %shr88, 32, !dbg !242
  %tobool90 = icmp ne i64 %and89, 0, !dbg !242
  %lnot91 = xor i1 %tobool90, true, !dbg !242
  %lnot93 = xor i1 %lnot91, true, !dbg !242
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !242
  %add95 = add i32 %add87, %lnot.ext94, !dbg !242
  %16 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr96 = lshr i64 %16, 8, !dbg !242
  %and97 = and i64 %shr96, 64, !dbg !242
  %tobool98 = icmp ne i64 %and97, 0, !dbg !242
  %lnot99 = xor i1 %tobool98, true, !dbg !242
  %lnot101 = xor i1 %lnot99, true, !dbg !242
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !242
  %add103 = add i32 %add95, %lnot.ext102, !dbg !242
  %17 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr104 = lshr i64 %17, 8, !dbg !242
  %and105 = and i64 %shr104, 128, !dbg !242
  %tobool106 = icmp ne i64 %and105, 0, !dbg !242
  %lnot107 = xor i1 %tobool106, true, !dbg !242
  %lnot109 = xor i1 %lnot107, true, !dbg !242
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !242
  %add111 = add i32 %add103, %lnot.ext110, !dbg !242
  %add112 = add i32 %add49, %add111, !dbg !242
  %18 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr113 = lshr i64 %18, 16, !dbg !242
  %and114 = and i64 %shr113, 1, !dbg !242
  %tobool115 = icmp ne i64 %and114, 0, !dbg !242
  %lnot116 = xor i1 %tobool115, true, !dbg !242
  %lnot118 = xor i1 %lnot116, true, !dbg !242
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !242
  %19 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr120 = lshr i64 %19, 16, !dbg !242
  %and121 = and i64 %shr120, 2, !dbg !242
  %tobool122 = icmp ne i64 %and121, 0, !dbg !242
  %lnot123 = xor i1 %tobool122, true, !dbg !242
  %lnot125 = xor i1 %lnot123, true, !dbg !242
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !242
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !242
  %20 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr128 = lshr i64 %20, 16, !dbg !242
  %and129 = and i64 %shr128, 4, !dbg !242
  %tobool130 = icmp ne i64 %and129, 0, !dbg !242
  %lnot131 = xor i1 %tobool130, true, !dbg !242
  %lnot133 = xor i1 %lnot131, true, !dbg !242
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !242
  %add135 = add i32 %add127, %lnot.ext134, !dbg !242
  %21 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr136 = lshr i64 %21, 16, !dbg !242
  %and137 = and i64 %shr136, 8, !dbg !242
  %tobool138 = icmp ne i64 %and137, 0, !dbg !242
  %lnot139 = xor i1 %tobool138, true, !dbg !242
  %lnot141 = xor i1 %lnot139, true, !dbg !242
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !242
  %add143 = add i32 %add135, %lnot.ext142, !dbg !242
  %22 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr144 = lshr i64 %22, 16, !dbg !242
  %and145 = and i64 %shr144, 16, !dbg !242
  %tobool146 = icmp ne i64 %and145, 0, !dbg !242
  %lnot147 = xor i1 %tobool146, true, !dbg !242
  %lnot149 = xor i1 %lnot147, true, !dbg !242
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !242
  %add151 = add i32 %add143, %lnot.ext150, !dbg !242
  %23 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr152 = lshr i64 %23, 16, !dbg !242
  %and153 = and i64 %shr152, 32, !dbg !242
  %tobool154 = icmp ne i64 %and153, 0, !dbg !242
  %lnot155 = xor i1 %tobool154, true, !dbg !242
  %lnot157 = xor i1 %lnot155, true, !dbg !242
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !242
  %add159 = add i32 %add151, %lnot.ext158, !dbg !242
  %24 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr160 = lshr i64 %24, 16, !dbg !242
  %and161 = and i64 %shr160, 64, !dbg !242
  %tobool162 = icmp ne i64 %and161, 0, !dbg !242
  %lnot163 = xor i1 %tobool162, true, !dbg !242
  %lnot165 = xor i1 %lnot163, true, !dbg !242
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !242
  %add167 = add i32 %add159, %lnot.ext166, !dbg !242
  %25 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr168 = lshr i64 %25, 16, !dbg !242
  %and169 = and i64 %shr168, 128, !dbg !242
  %tobool170 = icmp ne i64 %and169, 0, !dbg !242
  %lnot171 = xor i1 %tobool170, true, !dbg !242
  %lnot173 = xor i1 %lnot171, true, !dbg !242
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !242
  %add175 = add i32 %add167, %lnot.ext174, !dbg !242
  %26 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr176 = lshr i64 %26, 16, !dbg !242
  %shr177 = lshr i64 %shr176, 8, !dbg !242
  %and178 = and i64 %shr177, 1, !dbg !242
  %tobool179 = icmp ne i64 %and178, 0, !dbg !242
  %lnot180 = xor i1 %tobool179, true, !dbg !242
  %lnot182 = xor i1 %lnot180, true, !dbg !242
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !242
  %27 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr184 = lshr i64 %27, 16, !dbg !242
  %shr185 = lshr i64 %shr184, 8, !dbg !242
  %and186 = and i64 %shr185, 2, !dbg !242
  %tobool187 = icmp ne i64 %and186, 0, !dbg !242
  %lnot188 = xor i1 %tobool187, true, !dbg !242
  %lnot190 = xor i1 %lnot188, true, !dbg !242
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !242
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !242
  %28 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr193 = lshr i64 %28, 16, !dbg !242
  %shr194 = lshr i64 %shr193, 8, !dbg !242
  %and195 = and i64 %shr194, 4, !dbg !242
  %tobool196 = icmp ne i64 %and195, 0, !dbg !242
  %lnot197 = xor i1 %tobool196, true, !dbg !242
  %lnot199 = xor i1 %lnot197, true, !dbg !242
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !242
  %add201 = add i32 %add192, %lnot.ext200, !dbg !242
  %29 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr202 = lshr i64 %29, 16, !dbg !242
  %shr203 = lshr i64 %shr202, 8, !dbg !242
  %and204 = and i64 %shr203, 8, !dbg !242
  %tobool205 = icmp ne i64 %and204, 0, !dbg !242
  %lnot206 = xor i1 %tobool205, true, !dbg !242
  %lnot208 = xor i1 %lnot206, true, !dbg !242
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !242
  %add210 = add i32 %add201, %lnot.ext209, !dbg !242
  %30 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr211 = lshr i64 %30, 16, !dbg !242
  %shr212 = lshr i64 %shr211, 8, !dbg !242
  %and213 = and i64 %shr212, 16, !dbg !242
  %tobool214 = icmp ne i64 %and213, 0, !dbg !242
  %lnot215 = xor i1 %tobool214, true, !dbg !242
  %lnot217 = xor i1 %lnot215, true, !dbg !242
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !242
  %add219 = add i32 %add210, %lnot.ext218, !dbg !242
  %31 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr220 = lshr i64 %31, 16, !dbg !242
  %shr221 = lshr i64 %shr220, 8, !dbg !242
  %and222 = and i64 %shr221, 32, !dbg !242
  %tobool223 = icmp ne i64 %and222, 0, !dbg !242
  %lnot224 = xor i1 %tobool223, true, !dbg !242
  %lnot226 = xor i1 %lnot224, true, !dbg !242
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !242
  %add228 = add i32 %add219, %lnot.ext227, !dbg !242
  %32 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr229 = lshr i64 %32, 16, !dbg !242
  %shr230 = lshr i64 %shr229, 8, !dbg !242
  %and231 = and i64 %shr230, 64, !dbg !242
  %tobool232 = icmp ne i64 %and231, 0, !dbg !242
  %lnot233 = xor i1 %tobool232, true, !dbg !242
  %lnot235 = xor i1 %lnot233, true, !dbg !242
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !242
  %add237 = add i32 %add228, %lnot.ext236, !dbg !242
  %33 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr238 = lshr i64 %33, 16, !dbg !242
  %shr239 = lshr i64 %shr238, 8, !dbg !242
  %and240 = and i64 %shr239, 128, !dbg !242
  %tobool241 = icmp ne i64 %and240, 0, !dbg !242
  %lnot242 = xor i1 %tobool241, true, !dbg !242
  %lnot244 = xor i1 %lnot242, true, !dbg !242
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !242
  %add246 = add i32 %add237, %lnot.ext245, !dbg !242
  %add247 = add i32 %add175, %add246, !dbg !242
  %add248 = add i32 %add112, %add247, !dbg !242
  %34 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr249 = lshr i64 %34, 32, !dbg !242
  %and250 = and i64 %shr249, 1, !dbg !242
  %tobool251 = icmp ne i64 %and250, 0, !dbg !242
  %lnot252 = xor i1 %tobool251, true, !dbg !242
  %lnot254 = xor i1 %lnot252, true, !dbg !242
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !242
  %35 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr256 = lshr i64 %35, 32, !dbg !242
  %and257 = and i64 %shr256, 2, !dbg !242
  %tobool258 = icmp ne i64 %and257, 0, !dbg !242
  %lnot259 = xor i1 %tobool258, true, !dbg !242
  %lnot261 = xor i1 %lnot259, true, !dbg !242
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !242
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !242
  %36 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr264 = lshr i64 %36, 32, !dbg !242
  %and265 = and i64 %shr264, 4, !dbg !242
  %tobool266 = icmp ne i64 %and265, 0, !dbg !242
  %lnot267 = xor i1 %tobool266, true, !dbg !242
  %lnot269 = xor i1 %lnot267, true, !dbg !242
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !242
  %add271 = add i32 %add263, %lnot.ext270, !dbg !242
  %37 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr272 = lshr i64 %37, 32, !dbg !242
  %and273 = and i64 %shr272, 8, !dbg !242
  %tobool274 = icmp ne i64 %and273, 0, !dbg !242
  %lnot275 = xor i1 %tobool274, true, !dbg !242
  %lnot277 = xor i1 %lnot275, true, !dbg !242
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !242
  %add279 = add i32 %add271, %lnot.ext278, !dbg !242
  %38 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr280 = lshr i64 %38, 32, !dbg !242
  %and281 = and i64 %shr280, 16, !dbg !242
  %tobool282 = icmp ne i64 %and281, 0, !dbg !242
  %lnot283 = xor i1 %tobool282, true, !dbg !242
  %lnot285 = xor i1 %lnot283, true, !dbg !242
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !242
  %add287 = add i32 %add279, %lnot.ext286, !dbg !242
  %39 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr288 = lshr i64 %39, 32, !dbg !242
  %and289 = and i64 %shr288, 32, !dbg !242
  %tobool290 = icmp ne i64 %and289, 0, !dbg !242
  %lnot291 = xor i1 %tobool290, true, !dbg !242
  %lnot293 = xor i1 %lnot291, true, !dbg !242
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !242
  %add295 = add i32 %add287, %lnot.ext294, !dbg !242
  %40 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr296 = lshr i64 %40, 32, !dbg !242
  %and297 = and i64 %shr296, 64, !dbg !242
  %tobool298 = icmp ne i64 %and297, 0, !dbg !242
  %lnot299 = xor i1 %tobool298, true, !dbg !242
  %lnot301 = xor i1 %lnot299, true, !dbg !242
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !242
  %add303 = add i32 %add295, %lnot.ext302, !dbg !242
  %41 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr304 = lshr i64 %41, 32, !dbg !242
  %and305 = and i64 %shr304, 128, !dbg !242
  %tobool306 = icmp ne i64 %and305, 0, !dbg !242
  %lnot307 = xor i1 %tobool306, true, !dbg !242
  %lnot309 = xor i1 %lnot307, true, !dbg !242
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !242
  %add311 = add i32 %add303, %lnot.ext310, !dbg !242
  %42 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr312 = lshr i64 %42, 32, !dbg !242
  %shr313 = lshr i64 %shr312, 8, !dbg !242
  %and314 = and i64 %shr313, 1, !dbg !242
  %tobool315 = icmp ne i64 %and314, 0, !dbg !242
  %lnot316 = xor i1 %tobool315, true, !dbg !242
  %lnot318 = xor i1 %lnot316, true, !dbg !242
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !242
  %43 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr320 = lshr i64 %43, 32, !dbg !242
  %shr321 = lshr i64 %shr320, 8, !dbg !242
  %and322 = and i64 %shr321, 2, !dbg !242
  %tobool323 = icmp ne i64 %and322, 0, !dbg !242
  %lnot324 = xor i1 %tobool323, true, !dbg !242
  %lnot326 = xor i1 %lnot324, true, !dbg !242
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !242
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !242
  %44 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr329 = lshr i64 %44, 32, !dbg !242
  %shr330 = lshr i64 %shr329, 8, !dbg !242
  %and331 = and i64 %shr330, 4, !dbg !242
  %tobool332 = icmp ne i64 %and331, 0, !dbg !242
  %lnot333 = xor i1 %tobool332, true, !dbg !242
  %lnot335 = xor i1 %lnot333, true, !dbg !242
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !242
  %add337 = add i32 %add328, %lnot.ext336, !dbg !242
  %45 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr338 = lshr i64 %45, 32, !dbg !242
  %shr339 = lshr i64 %shr338, 8, !dbg !242
  %and340 = and i64 %shr339, 8, !dbg !242
  %tobool341 = icmp ne i64 %and340, 0, !dbg !242
  %lnot342 = xor i1 %tobool341, true, !dbg !242
  %lnot344 = xor i1 %lnot342, true, !dbg !242
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !242
  %add346 = add i32 %add337, %lnot.ext345, !dbg !242
  %46 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr347 = lshr i64 %46, 32, !dbg !242
  %shr348 = lshr i64 %shr347, 8, !dbg !242
  %and349 = and i64 %shr348, 16, !dbg !242
  %tobool350 = icmp ne i64 %and349, 0, !dbg !242
  %lnot351 = xor i1 %tobool350, true, !dbg !242
  %lnot353 = xor i1 %lnot351, true, !dbg !242
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !242
  %add355 = add i32 %add346, %lnot.ext354, !dbg !242
  %47 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr356 = lshr i64 %47, 32, !dbg !242
  %shr357 = lshr i64 %shr356, 8, !dbg !242
  %and358 = and i64 %shr357, 32, !dbg !242
  %tobool359 = icmp ne i64 %and358, 0, !dbg !242
  %lnot360 = xor i1 %tobool359, true, !dbg !242
  %lnot362 = xor i1 %lnot360, true, !dbg !242
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !242
  %add364 = add i32 %add355, %lnot.ext363, !dbg !242
  %48 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr365 = lshr i64 %48, 32, !dbg !242
  %shr366 = lshr i64 %shr365, 8, !dbg !242
  %and367 = and i64 %shr366, 64, !dbg !242
  %tobool368 = icmp ne i64 %and367, 0, !dbg !242
  %lnot369 = xor i1 %tobool368, true, !dbg !242
  %lnot371 = xor i1 %lnot369, true, !dbg !242
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !242
  %add373 = add i32 %add364, %lnot.ext372, !dbg !242
  %49 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr374 = lshr i64 %49, 32, !dbg !242
  %shr375 = lshr i64 %shr374, 8, !dbg !242
  %and376 = and i64 %shr375, 128, !dbg !242
  %tobool377 = icmp ne i64 %and376, 0, !dbg !242
  %lnot378 = xor i1 %tobool377, true, !dbg !242
  %lnot380 = xor i1 %lnot378, true, !dbg !242
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !242
  %add382 = add i32 %add373, %lnot.ext381, !dbg !242
  %add383 = add i32 %add311, %add382, !dbg !242
  %50 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr384 = lshr i64 %50, 32, !dbg !242
  %shr385 = lshr i64 %shr384, 16, !dbg !242
  %and386 = and i64 %shr385, 1, !dbg !242
  %tobool387 = icmp ne i64 %and386, 0, !dbg !242
  %lnot388 = xor i1 %tobool387, true, !dbg !242
  %lnot390 = xor i1 %lnot388, true, !dbg !242
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !242
  %51 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr392 = lshr i64 %51, 32, !dbg !242
  %shr393 = lshr i64 %shr392, 16, !dbg !242
  %and394 = and i64 %shr393, 2, !dbg !242
  %tobool395 = icmp ne i64 %and394, 0, !dbg !242
  %lnot396 = xor i1 %tobool395, true, !dbg !242
  %lnot398 = xor i1 %lnot396, true, !dbg !242
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !242
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !242
  %52 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr401 = lshr i64 %52, 32, !dbg !242
  %shr402 = lshr i64 %shr401, 16, !dbg !242
  %and403 = and i64 %shr402, 4, !dbg !242
  %tobool404 = icmp ne i64 %and403, 0, !dbg !242
  %lnot405 = xor i1 %tobool404, true, !dbg !242
  %lnot407 = xor i1 %lnot405, true, !dbg !242
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !242
  %add409 = add i32 %add400, %lnot.ext408, !dbg !242
  %53 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr410 = lshr i64 %53, 32, !dbg !242
  %shr411 = lshr i64 %shr410, 16, !dbg !242
  %and412 = and i64 %shr411, 8, !dbg !242
  %tobool413 = icmp ne i64 %and412, 0, !dbg !242
  %lnot414 = xor i1 %tobool413, true, !dbg !242
  %lnot416 = xor i1 %lnot414, true, !dbg !242
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !242
  %add418 = add i32 %add409, %lnot.ext417, !dbg !242
  %54 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr419 = lshr i64 %54, 32, !dbg !242
  %shr420 = lshr i64 %shr419, 16, !dbg !242
  %and421 = and i64 %shr420, 16, !dbg !242
  %tobool422 = icmp ne i64 %and421, 0, !dbg !242
  %lnot423 = xor i1 %tobool422, true, !dbg !242
  %lnot425 = xor i1 %lnot423, true, !dbg !242
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !242
  %add427 = add i32 %add418, %lnot.ext426, !dbg !242
  %55 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr428 = lshr i64 %55, 32, !dbg !242
  %shr429 = lshr i64 %shr428, 16, !dbg !242
  %and430 = and i64 %shr429, 32, !dbg !242
  %tobool431 = icmp ne i64 %and430, 0, !dbg !242
  %lnot432 = xor i1 %tobool431, true, !dbg !242
  %lnot434 = xor i1 %lnot432, true, !dbg !242
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !242
  %add436 = add i32 %add427, %lnot.ext435, !dbg !242
  %56 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr437 = lshr i64 %56, 32, !dbg !242
  %shr438 = lshr i64 %shr437, 16, !dbg !242
  %and439 = and i64 %shr438, 64, !dbg !242
  %tobool440 = icmp ne i64 %and439, 0, !dbg !242
  %lnot441 = xor i1 %tobool440, true, !dbg !242
  %lnot443 = xor i1 %lnot441, true, !dbg !242
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !242
  %add445 = add i32 %add436, %lnot.ext444, !dbg !242
  %57 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr446 = lshr i64 %57, 32, !dbg !242
  %shr447 = lshr i64 %shr446, 16, !dbg !242
  %and448 = and i64 %shr447, 128, !dbg !242
  %tobool449 = icmp ne i64 %and448, 0, !dbg !242
  %lnot450 = xor i1 %tobool449, true, !dbg !242
  %lnot452 = xor i1 %lnot450, true, !dbg !242
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !242
  %add454 = add i32 %add445, %lnot.ext453, !dbg !242
  %58 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr455 = lshr i64 %58, 32, !dbg !242
  %shr456 = lshr i64 %shr455, 16, !dbg !242
  %shr457 = lshr i64 %shr456, 8, !dbg !242
  %and458 = and i64 %shr457, 1, !dbg !242
  %tobool459 = icmp ne i64 %and458, 0, !dbg !242
  %lnot460 = xor i1 %tobool459, true, !dbg !242
  %lnot462 = xor i1 %lnot460, true, !dbg !242
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !242
  %59 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr464 = lshr i64 %59, 32, !dbg !242
  %shr465 = lshr i64 %shr464, 16, !dbg !242
  %shr466 = lshr i64 %shr465, 8, !dbg !242
  %and467 = and i64 %shr466, 2, !dbg !242
  %tobool468 = icmp ne i64 %and467, 0, !dbg !242
  %lnot469 = xor i1 %tobool468, true, !dbg !242
  %lnot471 = xor i1 %lnot469, true, !dbg !242
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !242
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !242
  %60 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr474 = lshr i64 %60, 32, !dbg !242
  %shr475 = lshr i64 %shr474, 16, !dbg !242
  %shr476 = lshr i64 %shr475, 8, !dbg !242
  %and477 = and i64 %shr476, 4, !dbg !242
  %tobool478 = icmp ne i64 %and477, 0, !dbg !242
  %lnot479 = xor i1 %tobool478, true, !dbg !242
  %lnot481 = xor i1 %lnot479, true, !dbg !242
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !242
  %add483 = add i32 %add473, %lnot.ext482, !dbg !242
  %61 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr484 = lshr i64 %61, 32, !dbg !242
  %shr485 = lshr i64 %shr484, 16, !dbg !242
  %shr486 = lshr i64 %shr485, 8, !dbg !242
  %and487 = and i64 %shr486, 8, !dbg !242
  %tobool488 = icmp ne i64 %and487, 0, !dbg !242
  %lnot489 = xor i1 %tobool488, true, !dbg !242
  %lnot491 = xor i1 %lnot489, true, !dbg !242
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !242
  %add493 = add i32 %add483, %lnot.ext492, !dbg !242
  %62 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr494 = lshr i64 %62, 32, !dbg !242
  %shr495 = lshr i64 %shr494, 16, !dbg !242
  %shr496 = lshr i64 %shr495, 8, !dbg !242
  %and497 = and i64 %shr496, 16, !dbg !242
  %tobool498 = icmp ne i64 %and497, 0, !dbg !242
  %lnot499 = xor i1 %tobool498, true, !dbg !242
  %lnot501 = xor i1 %lnot499, true, !dbg !242
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !242
  %add503 = add i32 %add493, %lnot.ext502, !dbg !242
  %63 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr504 = lshr i64 %63, 32, !dbg !242
  %shr505 = lshr i64 %shr504, 16, !dbg !242
  %shr506 = lshr i64 %shr505, 8, !dbg !242
  %and507 = and i64 %shr506, 32, !dbg !242
  %tobool508 = icmp ne i64 %and507, 0, !dbg !242
  %lnot509 = xor i1 %tobool508, true, !dbg !242
  %lnot511 = xor i1 %lnot509, true, !dbg !242
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !242
  %add513 = add i32 %add503, %lnot.ext512, !dbg !242
  %64 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr514 = lshr i64 %64, 32, !dbg !242
  %shr515 = lshr i64 %shr514, 16, !dbg !242
  %shr516 = lshr i64 %shr515, 8, !dbg !242
  %and517 = and i64 %shr516, 64, !dbg !242
  %tobool518 = icmp ne i64 %and517, 0, !dbg !242
  %lnot519 = xor i1 %tobool518, true, !dbg !242
  %lnot521 = xor i1 %lnot519, true, !dbg !242
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !242
  %add523 = add i32 %add513, %lnot.ext522, !dbg !242
  %65 = load i64, ptr %w.addr, align 8, !dbg !242
  %shr524 = lshr i64 %65, 32, !dbg !242
  %shr525 = lshr i64 %shr524, 16, !dbg !242
  %shr526 = lshr i64 %shr525, 8, !dbg !242
  %and527 = and i64 %shr526, 128, !dbg !242
  %tobool528 = icmp ne i64 %and527, 0, !dbg !242
  %lnot529 = xor i1 %tobool528, true, !dbg !242
  %lnot531 = xor i1 %lnot529, true, !dbg !242
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !242
  %add533 = add i32 %add523, %lnot.ext532, !dbg !242
  %add534 = add i32 %add454, %add533, !dbg !242
  %add535 = add i32 %add383, %add534, !dbg !242
  %add536 = add i32 %add248, %add535, !dbg !242
  %conv = zext i32 %add536 to i64, !dbg !242
  br label %cond.end, !dbg !242

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !242
  %call = call i64 @__arch_hweight64(i64 noundef %66) #8, !dbg !242
  br label %cond.end, !dbg !242

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !242
  ret i64 %cond, !dbg !243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fns(i64 noundef %word, i32 noundef %n) #6 align 16 !dbg !244 {
entry:
  %retval = alloca i64, align 8
  %word.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !248, metadata !DIExpression()), !dbg !251
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !249, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #7, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !250, metadata !DIExpression()), !dbg !254
  br label %while.cond, !dbg !255

while.cond:                                       ; preds = %cond.end14, %entry
  %0 = load i64, ptr %word.addr, align 8, !dbg !256
  %tobool = icmp ne i64 %0, 0, !dbg !255
  br i1 %tobool, label %while.body, label %while.end, !dbg !255

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %word.addr, align 8, !dbg !257
  %2 = call i1 @llvm.is.constant.i64(i64 %1), !dbg !257
  br i1 %2, label %cond.true, label %cond.false, !dbg !257

cond.true:                                        ; preds = %while.body
  %3 = load i64, ptr %word.addr, align 8, !dbg !257
  %4 = call i64 @llvm.cttz.i64(i64 %3, i1 true), !dbg !257
  %cast = trunc i64 %4 to i32, !dbg !257
  %conv = sext i32 %cast to i64, !dbg !257
  br label %cond.end, !dbg !257

cond.false:                                       ; preds = %while.body
  %5 = load i64, ptr %word.addr, align 8, !dbg !257
  %call = call i64 @variable__ffs(i64 noundef %5) #8, !dbg !257
  br label %cond.end, !dbg !257

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !257
  %conv1 = trunc i64 %cond to i32, !dbg !257
  store i32 %conv1, ptr %bit, align 4, !dbg !259
  %6 = load i32, ptr %n.addr, align 4, !dbg !260
  %dec = add i32 %6, -1, !dbg !260
  store i32 %dec, ptr %n.addr, align 4, !dbg !260
  %cmp = icmp eq i32 %6, 0, !dbg !262
  br i1 %cmp, label %if.then, label %if.end, !dbg !263

if.then:                                          ; preds = %cond.end
  %7 = load i32, ptr %bit, align 4, !dbg !264
  %conv3 = zext i32 %7 to i64, !dbg !264
  store i64 %conv3, ptr %retval, align 8, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end:                                           ; preds = %cond.end
  %8 = load i32, ptr %bit, align 4, !dbg !266
  %9 = call i1 @llvm.is.constant.i32(i32 %8), !dbg !266
  br i1 %9, label %land.lhs.true, label %cond.false12, !dbg !266

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %word.addr to i64, !dbg !266
  %cmp4 = icmp ne i64 %10, 0, !dbg !266
  %conv5 = zext i1 %cmp4 to i32, !dbg !266
  %11 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !266
  br i1 %11, label %land.lhs.true6, label %cond.false12, !dbg !266

land.lhs.true6:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %word.addr to i64, !dbg !266
  %cmp7 = icmp ne i64 %12, 0, !dbg !266
  br i1 %cmp7, label %land.lhs.true9, label %cond.false12, !dbg !266

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %13 = load i64, ptr %word.addr, align 8, !dbg !266
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !266
  br i1 %14, label %cond.true10, label %cond.false12, !dbg !266

cond.true10:                                      ; preds = %land.lhs.true9
  %15 = load i32, ptr %bit, align 4, !dbg !266
  %conv11 = zext i32 %15 to i64, !dbg !266
  call void @generic___clear_bit(i64 noundef %conv11, ptr noundef %word.addr) #8, !dbg !266
  br label %cond.end14, !dbg !266

cond.false12:                                     ; preds = %land.lhs.true9, %land.lhs.true6, %land.lhs.true, %if.end
  %16 = load i32, ptr %bit, align 4, !dbg !266
  %conv13 = zext i32 %16 to i64, !dbg !266
  call void @___clear_bit(i64 noundef %conv13, ptr noundef %word.addr) #8, !dbg !266
  br label %cond.end14, !dbg !266

cond.end14:                                       ; preds = %cond.false12, %cond.true10
  br label %while.cond, !dbg !255, !llvm.loop !267

while.end:                                        ; preds = %while.cond
  store i64 64, ptr %retval, align 8, !dbg !269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !269

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #7, !dbg !270
  %17 = load i64, ptr %retval, align 8, !dbg !270
  ret i64 %17, !dbg !270
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__find_nth_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size, i64 noundef %n) #0 align 16 !dbg !271 {
entry:
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %nr = alloca i64, align 8
  %idx = alloca i64, align 8
  %w = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x17 = alloca i64, align 8
  %__UNIQUE_ID___y18 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %tmp22 = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !275, metadata !DIExpression()), !dbg !290
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !276, metadata !DIExpression()), !dbg !291
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !277, metadata !DIExpression()), !dbg !292
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !278, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !279, metadata !DIExpression()), !dbg !294
  %0 = load i64, ptr %size.addr, align 8, !dbg !294
  store i64 %0, ptr %sz, align 8, !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #7, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !281, metadata !DIExpression()), !dbg !294
  %1 = load i64, ptr %n.addr, align 8, !dbg !294
  store i64 %1, ptr %nr, align 8, !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !282, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %w, metadata !283, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !284, metadata !DIExpression()), !dbg !294
  store i64 0, ptr %idx, align 8, !dbg !295
  br label %for.cond, !dbg !295

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %idx, align 8, !dbg !297
  %add = add i64 %2, 1, !dbg !297
  %mul = mul i64 %add, 64, !dbg !297
  %3 = load i64, ptr %sz, align 8, !dbg !297
  %cmp = icmp ule i64 %mul, %3, !dbg !297
  br i1 %cmp, label %for.body, label %for.end, !dbg !295

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %idx, align 8, !dbg !299
  %mul1 = mul i64 %4, 64, !dbg !299
  %5 = load i64, ptr %nr, align 8, !dbg !299
  %add2 = add i64 %mul1, %5, !dbg !299
  %6 = load i64, ptr %sz, align 8, !dbg !299
  %cmp3 = icmp uge i64 %add2, %6, !dbg !299
  br i1 %cmp3, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %for.body
  br label %out, !dbg !299

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %addr1.addr, align 8, !dbg !302
  %8 = load i64, ptr %idx, align 8, !dbg !302
  %arrayidx = getelementptr i64, ptr %7, i64 %8, !dbg !302
  %9 = load i64, ptr %arrayidx, align 8, !dbg !302
  %10 = load ptr, ptr %addr2.addr, align 8, !dbg !302
  %11 = load i64, ptr %idx, align 8, !dbg !302
  %arrayidx4 = getelementptr i64, ptr %10, i64 %11, !dbg !302
  %12 = load i64, ptr %arrayidx4, align 8, !dbg !302
  %and = and i64 %9, %12, !dbg !302
  store i64 %and, ptr %tmp, align 8, !dbg !302
  %13 = load i64, ptr %tmp, align 8, !dbg !302
  %call = call i64 @hweight_long(i64 noundef %13) #8, !dbg !302
  store i64 %call, ptr %w, align 8, !dbg !302
  %14 = load i64, ptr %w, align 8, !dbg !303
  %15 = load i64, ptr %nr, align 8, !dbg !303
  %cmp5 = icmp ugt i64 %14, %15, !dbg !303
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !302

if.then6:                                         ; preds = %if.end
  br label %found, !dbg !303

if.end7:                                          ; preds = %if.end
  %16 = load i64, ptr %w, align 8, !dbg !302
  %17 = load i64, ptr %nr, align 8, !dbg !302
  %sub = sub i64 %17, %16, !dbg !302
  store i64 %sub, ptr %nr, align 8, !dbg !302
  br label %for.inc, !dbg !302

for.inc:                                          ; preds = %if.end7
  %18 = load i64, ptr %idx, align 8, !dbg !297
  %inc = add i64 %18, 1, !dbg !297
  store i64 %inc, ptr %idx, align 8, !dbg !297
  br label %for.cond, !dbg !297, !llvm.loop !305

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %sz, align 8, !dbg !306
  %rem = urem i64 %19, 64, !dbg !306
  %tobool = icmp ne i64 %rem, 0, !dbg !306
  br i1 %tobool, label %if.then8, label %if.end15, !dbg !294

if.then8:                                         ; preds = %for.end
  %20 = load ptr, ptr %addr1.addr, align 8, !dbg !306
  %21 = load i64, ptr %idx, align 8, !dbg !306
  %arrayidx9 = getelementptr i64, ptr %20, i64 %21, !dbg !306
  %22 = load i64, ptr %arrayidx9, align 8, !dbg !306
  %23 = load ptr, ptr %addr2.addr, align 8, !dbg !306
  %24 = load i64, ptr %idx, align 8, !dbg !306
  %arrayidx10 = getelementptr i64, ptr %23, i64 %24, !dbg !306
  %25 = load i64, ptr %arrayidx10, align 8, !dbg !306
  %and11 = and i64 %22, %25, !dbg !306
  %26 = load i64, ptr %sz, align 8, !dbg !306
  %sub12 = sub i64 0, %26, !dbg !306
  %and13 = and i64 %sub12, 63, !dbg !306
  %shr = lshr i64 -1, %and13, !dbg !306
  %and14 = and i64 %and11, %shr, !dbg !306
  store i64 %and14, ptr %tmp, align 8, !dbg !306
  br label %if.end15, !dbg !306

if.end15:                                         ; preds = %if.then8, %for.end
  br label %found, !dbg !306

found:                                            ; preds = %if.end15, %if.then6
  call void @llvm.dbg.label(metadata !285), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x17) #7, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x17, metadata !286, metadata !DIExpression()), !dbg !308
  %27 = load i64, ptr %idx, align 8, !dbg !308
  %mul16 = mul i64 %27, 64, !dbg !308
  %28 = load i64, ptr %tmp, align 8, !dbg !308
  %29 = load i64, ptr %nr, align 8, !dbg !308
  %conv = trunc i64 %29 to i32, !dbg !308
  %call17 = call i64 @fns(i64 noundef %28, i32 noundef %conv) #8, !dbg !308
  %add18 = add i64 %mul16, %call17, !dbg !308
  store i64 %add18, ptr %__UNIQUE_ID___x17, align 8, !dbg !308
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y18) #7, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y18, metadata !288, metadata !DIExpression()), !dbg !308
  %30 = load i64, ptr %sz, align 8, !dbg !308
  store i64 %30, ptr %__UNIQUE_ID___y18, align 8, !dbg !308
  %31 = load i64, ptr %__UNIQUE_ID___x17, align 8, !dbg !308
  %32 = load i64, ptr %__UNIQUE_ID___y18, align 8, !dbg !308
  %cmp20 = icmp ult i64 %31, %32, !dbg !308
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !308

cond.true:                                        ; preds = %found
  %33 = load i64, ptr %__UNIQUE_ID___x17, align 8, !dbg !308
  br label %cond.end, !dbg !308

cond.false:                                       ; preds = %found
  %34 = load i64, ptr %__UNIQUE_ID___y18, align 8, !dbg !308
  br label %cond.end, !dbg !308

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %33, %cond.true ], [ %34, %cond.false ], !dbg !308
  store i64 %cond, ptr %tmp19, align 8, !dbg !308
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y18) #7, !dbg !294
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x17) #7, !dbg !294
  %35 = load i64, ptr %tmp19, align 8, !dbg !308
  store i64 %35, ptr %sz, align 8, !dbg !294
  br label %out, !dbg !294

out:                                              ; preds = %cond.end, %if.then
  call void @llvm.dbg.label(metadata !289), !dbg !294
  %36 = load i64, ptr %sz, align 8, !dbg !294
  store i64 %36, ptr %tmp22, align 8, !dbg !294
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #7, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !309
  %37 = load i64, ptr %tmp22, align 8, !dbg !294
  ret i64 %37, !dbg !310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__find_nth_andnot_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size, i64 noundef %n) #0 align 16 !dbg !311 {
entry:
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %nr = alloca i64, align 8
  %idx = alloca i64, align 8
  %w = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x20 = alloca i64, align 8
  %__UNIQUE_ID___y21 = alloca i64, align 8
  %tmp20 = alloca i64, align 8
  %tmp23 = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !313, metadata !DIExpression()), !dbg !328
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !314, metadata !DIExpression()), !dbg !329
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !315, metadata !DIExpression()), !dbg !330
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !316, metadata !DIExpression()), !dbg !331
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !317, metadata !DIExpression()), !dbg !332
  %0 = load i64, ptr %size.addr, align 8, !dbg !332
  store i64 %0, ptr %sz, align 8, !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #7, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !319, metadata !DIExpression()), !dbg !332
  %1 = load i64, ptr %n.addr, align 8, !dbg !332
  store i64 %1, ptr %nr, align 8, !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !320, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %w, metadata !321, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !322, metadata !DIExpression()), !dbg !332
  store i64 0, ptr %idx, align 8, !dbg !333
  br label %for.cond, !dbg !333

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %idx, align 8, !dbg !335
  %add = add i64 %2, 1, !dbg !335
  %mul = mul i64 %add, 64, !dbg !335
  %3 = load i64, ptr %sz, align 8, !dbg !335
  %cmp = icmp ule i64 %mul, %3, !dbg !335
  br i1 %cmp, label %for.body, label %for.end, !dbg !333

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %idx, align 8, !dbg !337
  %mul1 = mul i64 %4, 64, !dbg !337
  %5 = load i64, ptr %nr, align 8, !dbg !337
  %add2 = add i64 %mul1, %5, !dbg !337
  %6 = load i64, ptr %sz, align 8, !dbg !337
  %cmp3 = icmp uge i64 %add2, %6, !dbg !337
  br i1 %cmp3, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %for.body
  br label %out, !dbg !337

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %addr1.addr, align 8, !dbg !340
  %8 = load i64, ptr %idx, align 8, !dbg !340
  %arrayidx = getelementptr i64, ptr %7, i64 %8, !dbg !340
  %9 = load i64, ptr %arrayidx, align 8, !dbg !340
  %10 = load ptr, ptr %addr2.addr, align 8, !dbg !340
  %11 = load i64, ptr %idx, align 8, !dbg !340
  %arrayidx4 = getelementptr i64, ptr %10, i64 %11, !dbg !340
  %12 = load i64, ptr %arrayidx4, align 8, !dbg !340
  %not = xor i64 %12, -1, !dbg !340
  %and = and i64 %9, %not, !dbg !340
  store i64 %and, ptr %tmp, align 8, !dbg !340
  %13 = load i64, ptr %tmp, align 8, !dbg !340
  %call = call i64 @hweight_long(i64 noundef %13) #8, !dbg !340
  store i64 %call, ptr %w, align 8, !dbg !340
  %14 = load i64, ptr %w, align 8, !dbg !341
  %15 = load i64, ptr %nr, align 8, !dbg !341
  %cmp5 = icmp ugt i64 %14, %15, !dbg !341
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !340

if.then6:                                         ; preds = %if.end
  br label %found, !dbg !341

if.end7:                                          ; preds = %if.end
  %16 = load i64, ptr %w, align 8, !dbg !340
  %17 = load i64, ptr %nr, align 8, !dbg !340
  %sub = sub i64 %17, %16, !dbg !340
  store i64 %sub, ptr %nr, align 8, !dbg !340
  br label %for.inc, !dbg !340

for.inc:                                          ; preds = %if.end7
  %18 = load i64, ptr %idx, align 8, !dbg !335
  %inc = add i64 %18, 1, !dbg !335
  store i64 %inc, ptr %idx, align 8, !dbg !335
  br label %for.cond, !dbg !335, !llvm.loop !343

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %sz, align 8, !dbg !344
  %rem = urem i64 %19, 64, !dbg !344
  %tobool = icmp ne i64 %rem, 0, !dbg !344
  br i1 %tobool, label %if.then8, label %if.end16, !dbg !332

if.then8:                                         ; preds = %for.end
  %20 = load ptr, ptr %addr1.addr, align 8, !dbg !344
  %21 = load i64, ptr %idx, align 8, !dbg !344
  %arrayidx9 = getelementptr i64, ptr %20, i64 %21, !dbg !344
  %22 = load i64, ptr %arrayidx9, align 8, !dbg !344
  %23 = load ptr, ptr %addr2.addr, align 8, !dbg !344
  %24 = load i64, ptr %idx, align 8, !dbg !344
  %arrayidx10 = getelementptr i64, ptr %23, i64 %24, !dbg !344
  %25 = load i64, ptr %arrayidx10, align 8, !dbg !344
  %not11 = xor i64 %25, -1, !dbg !344
  %and12 = and i64 %22, %not11, !dbg !344
  %26 = load i64, ptr %sz, align 8, !dbg !344
  %sub13 = sub i64 0, %26, !dbg !344
  %and14 = and i64 %sub13, 63, !dbg !344
  %shr = lshr i64 -1, %and14, !dbg !344
  %and15 = and i64 %and12, %shr, !dbg !344
  store i64 %and15, ptr %tmp, align 8, !dbg !344
  br label %if.end16, !dbg !344

if.end16:                                         ; preds = %if.then8, %for.end
  br label %found, !dbg !344

found:                                            ; preds = %if.end16, %if.then6
  call void @llvm.dbg.label(metadata !323), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x20) #7, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x20, metadata !324, metadata !DIExpression()), !dbg !346
  %27 = load i64, ptr %idx, align 8, !dbg !346
  %mul17 = mul i64 %27, 64, !dbg !346
  %28 = load i64, ptr %tmp, align 8, !dbg !346
  %29 = load i64, ptr %nr, align 8, !dbg !346
  %conv = trunc i64 %29 to i32, !dbg !346
  %call18 = call i64 @fns(i64 noundef %28, i32 noundef %conv) #8, !dbg !346
  %add19 = add i64 %mul17, %call18, !dbg !346
  store i64 %add19, ptr %__UNIQUE_ID___x20, align 8, !dbg !346
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y21) #7, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y21, metadata !326, metadata !DIExpression()), !dbg !346
  %30 = load i64, ptr %sz, align 8, !dbg !346
  store i64 %30, ptr %__UNIQUE_ID___y21, align 8, !dbg !346
  %31 = load i64, ptr %__UNIQUE_ID___x20, align 8, !dbg !346
  %32 = load i64, ptr %__UNIQUE_ID___y21, align 8, !dbg !346
  %cmp21 = icmp ult i64 %31, %32, !dbg !346
  br i1 %cmp21, label %cond.true, label %cond.false, !dbg !346

cond.true:                                        ; preds = %found
  %33 = load i64, ptr %__UNIQUE_ID___x20, align 8, !dbg !346
  br label %cond.end, !dbg !346

cond.false:                                       ; preds = %found
  %34 = load i64, ptr %__UNIQUE_ID___y21, align 8, !dbg !346
  br label %cond.end, !dbg !346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %33, %cond.true ], [ %34, %cond.false ], !dbg !346
  store i64 %cond, ptr %tmp20, align 8, !dbg !346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y21) #7, !dbg !332
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x20) #7, !dbg !332
  %35 = load i64, ptr %tmp20, align 8, !dbg !346
  store i64 %35, ptr %sz, align 8, !dbg !332
  br label %out, !dbg !332

out:                                              ; preds = %cond.end, %if.then
  call void @llvm.dbg.label(metadata !327), !dbg !332
  %36 = load i64, ptr %sz, align 8, !dbg !332
  store i64 %36, ptr %tmp23, align 8, !dbg !332
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !347
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7, !dbg !347
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !347
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #7, !dbg !347
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !347
  %37 = load i64, ptr %tmp23, align 8, !dbg !332
  ret i64 %37, !dbg !348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__find_nth_and_andnot_bit(ptr noundef %addr1, ptr noundef %addr2, ptr noundef %addr3, i64 noundef %size, i64 noundef %n) #0 align 16 !dbg !349 {
entry:
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %addr3.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %nr = alloca i64, align 8
  %idx = alloca i64, align 8
  %w = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x23 = alloca i64, align 8
  %__UNIQUE_ID___y24 = alloca i64, align 8
  %tmp24 = alloca i64, align 8
  %tmp27 = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !353, metadata !DIExpression()), !dbg !369
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !354, metadata !DIExpression()), !dbg !370
  store ptr %addr3, ptr %addr3.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr3.addr, metadata !355, metadata !DIExpression()), !dbg !371
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !356, metadata !DIExpression()), !dbg !372
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !357, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !358, metadata !DIExpression()), !dbg !374
  %0 = load i64, ptr %size.addr, align 8, !dbg !374
  store i64 %0, ptr %sz, align 8, !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #7, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !360, metadata !DIExpression()), !dbg !374
  %1 = load i64, ptr %n.addr, align 8, !dbg !374
  store i64 %1, ptr %nr, align 8, !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !361, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %w, metadata !362, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !363, metadata !DIExpression()), !dbg !374
  store i64 0, ptr %idx, align 8, !dbg !375
  br label %for.cond, !dbg !375

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %idx, align 8, !dbg !377
  %add = add i64 %2, 1, !dbg !377
  %mul = mul i64 %add, 64, !dbg !377
  %3 = load i64, ptr %sz, align 8, !dbg !377
  %cmp = icmp ule i64 %mul, %3, !dbg !377
  br i1 %cmp, label %for.body, label %for.end, !dbg !375

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %idx, align 8, !dbg !379
  %mul1 = mul i64 %4, 64, !dbg !379
  %5 = load i64, ptr %nr, align 8, !dbg !379
  %add2 = add i64 %mul1, %5, !dbg !379
  %6 = load i64, ptr %sz, align 8, !dbg !379
  %cmp3 = icmp uge i64 %add2, %6, !dbg !379
  br i1 %cmp3, label %if.then, label %if.end, !dbg !382

if.then:                                          ; preds = %for.body
  br label %out, !dbg !379

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %addr1.addr, align 8, !dbg !382
  %8 = load i64, ptr %idx, align 8, !dbg !382
  %arrayidx = getelementptr i64, ptr %7, i64 %8, !dbg !382
  %9 = load i64, ptr %arrayidx, align 8, !dbg !382
  %10 = load ptr, ptr %addr2.addr, align 8, !dbg !382
  %11 = load i64, ptr %idx, align 8, !dbg !382
  %arrayidx4 = getelementptr i64, ptr %10, i64 %11, !dbg !382
  %12 = load i64, ptr %arrayidx4, align 8, !dbg !382
  %and = and i64 %9, %12, !dbg !382
  %13 = load ptr, ptr %addr3.addr, align 8, !dbg !382
  %14 = load i64, ptr %idx, align 8, !dbg !382
  %arrayidx5 = getelementptr i64, ptr %13, i64 %14, !dbg !382
  %15 = load i64, ptr %arrayidx5, align 8, !dbg !382
  %not = xor i64 %15, -1, !dbg !382
  %and6 = and i64 %and, %not, !dbg !382
  store i64 %and6, ptr %tmp, align 8, !dbg !382
  %16 = load i64, ptr %tmp, align 8, !dbg !382
  %call = call i64 @hweight_long(i64 noundef %16) #8, !dbg !382
  store i64 %call, ptr %w, align 8, !dbg !382
  %17 = load i64, ptr %w, align 8, !dbg !383
  %18 = load i64, ptr %nr, align 8, !dbg !383
  %cmp7 = icmp ugt i64 %17, %18, !dbg !383
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !382

if.then8:                                         ; preds = %if.end
  br label %found, !dbg !383

if.end9:                                          ; preds = %if.end
  %19 = load i64, ptr %w, align 8, !dbg !382
  %20 = load i64, ptr %nr, align 8, !dbg !382
  %sub = sub i64 %20, %19, !dbg !382
  store i64 %sub, ptr %nr, align 8, !dbg !382
  br label %for.inc, !dbg !382

for.inc:                                          ; preds = %if.end9
  %21 = load i64, ptr %idx, align 8, !dbg !377
  %inc = add i64 %21, 1, !dbg !377
  store i64 %inc, ptr %idx, align 8, !dbg !377
  br label %for.cond, !dbg !377, !llvm.loop !385

for.end:                                          ; preds = %for.cond
  %22 = load i64, ptr %sz, align 8, !dbg !386
  %rem = urem i64 %22, 64, !dbg !386
  %tobool = icmp ne i64 %rem, 0, !dbg !386
  br i1 %tobool, label %if.then10, label %if.end20, !dbg !374

if.then10:                                        ; preds = %for.end
  %23 = load ptr, ptr %addr1.addr, align 8, !dbg !386
  %24 = load i64, ptr %idx, align 8, !dbg !386
  %arrayidx11 = getelementptr i64, ptr %23, i64 %24, !dbg !386
  %25 = load i64, ptr %arrayidx11, align 8, !dbg !386
  %26 = load ptr, ptr %addr2.addr, align 8, !dbg !386
  %27 = load i64, ptr %idx, align 8, !dbg !386
  %arrayidx12 = getelementptr i64, ptr %26, i64 %27, !dbg !386
  %28 = load i64, ptr %arrayidx12, align 8, !dbg !386
  %and13 = and i64 %25, %28, !dbg !386
  %29 = load ptr, ptr %addr3.addr, align 8, !dbg !386
  %30 = load i64, ptr %idx, align 8, !dbg !386
  %arrayidx14 = getelementptr i64, ptr %29, i64 %30, !dbg !386
  %31 = load i64, ptr %arrayidx14, align 8, !dbg !386
  %not15 = xor i64 %31, -1, !dbg !386
  %and16 = and i64 %and13, %not15, !dbg !386
  %32 = load i64, ptr %sz, align 8, !dbg !386
  %sub17 = sub i64 0, %32, !dbg !386
  %and18 = and i64 %sub17, 63, !dbg !386
  %shr = lshr i64 -1, %and18, !dbg !386
  %and19 = and i64 %and16, %shr, !dbg !386
  store i64 %and19, ptr %tmp, align 8, !dbg !386
  br label %if.end20, !dbg !386

if.end20:                                         ; preds = %if.then10, %for.end
  br label %found, !dbg !386

found:                                            ; preds = %if.end20, %if.then8
  call void @llvm.dbg.label(metadata !364), !dbg !374
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x23) #7, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x23, metadata !365, metadata !DIExpression()), !dbg !388
  %33 = load i64, ptr %idx, align 8, !dbg !388
  %mul21 = mul i64 %33, 64, !dbg !388
  %34 = load i64, ptr %tmp, align 8, !dbg !388
  %35 = load i64, ptr %nr, align 8, !dbg !388
  %conv = trunc i64 %35 to i32, !dbg !388
  %call22 = call i64 @fns(i64 noundef %34, i32 noundef %conv) #8, !dbg !388
  %add23 = add i64 %mul21, %call22, !dbg !388
  store i64 %add23, ptr %__UNIQUE_ID___x23, align 8, !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y24) #7, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y24, metadata !367, metadata !DIExpression()), !dbg !388
  %36 = load i64, ptr %sz, align 8, !dbg !388
  store i64 %36, ptr %__UNIQUE_ID___y24, align 8, !dbg !388
  %37 = load i64, ptr %__UNIQUE_ID___x23, align 8, !dbg !388
  %38 = load i64, ptr %__UNIQUE_ID___y24, align 8, !dbg !388
  %cmp25 = icmp ult i64 %37, %38, !dbg !388
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !388

cond.true:                                        ; preds = %found
  %39 = load i64, ptr %__UNIQUE_ID___x23, align 8, !dbg !388
  br label %cond.end, !dbg !388

cond.false:                                       ; preds = %found
  %40 = load i64, ptr %__UNIQUE_ID___y24, align 8, !dbg !388
  br label %cond.end, !dbg !388

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %39, %cond.true ], [ %40, %cond.false ], !dbg !388
  store i64 %cond, ptr %tmp24, align 8, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y24) #7, !dbg !374
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x23) #7, !dbg !374
  %41 = load i64, ptr %tmp24, align 8, !dbg !388
  store i64 %41, ptr %sz, align 8, !dbg !374
  br label %out, !dbg !374

out:                                              ; preds = %cond.end, %if.then
  call void @llvm.dbg.label(metadata !368), !dbg !374
  %42 = load i64, ptr %sz, align 8, !dbg !374
  store i64 %42, ptr %tmp27, align 8, !dbg !374
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !389
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7, !dbg !389
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !389
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #7, !dbg !389
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !389
  %43 = load i64, ptr %tmp27, align 8, !dbg !374
  ret i64 %43, !dbg !390
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_next_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %nbits, i64 noundef %start) #0 align 16 !dbg !391 {
entry:
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %nbits.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  %idx = alloca i64, align 8
  %tmp = alloca i64, align 8
  %sz = alloca i64, align 8
  %__start = alloca i64, align 8
  %__UNIQUE_ID___x26 = alloca i64, align 8
  %__UNIQUE_ID___y27 = alloca i64, align 8
  %tmp18 = alloca i64, align 8
  %tmp25 = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !393, metadata !DIExpression()), !dbg !407
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !394, metadata !DIExpression()), !dbg !408
  store i64 %nbits, ptr %nbits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !395, metadata !DIExpression()), !dbg !409
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !396, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !397, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !399, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !400, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !401, metadata !DIExpression()), !dbg !411
  %0 = load i64, ptr %nbits.addr, align 8, !dbg !411
  store i64 %0, ptr %sz, align 8, !dbg !411
  call void @llvm.lifetime.start.p0(i64 8, ptr %__start) #7, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %__start, metadata !402, metadata !DIExpression()), !dbg !411
  %1 = load i64, ptr %start.addr, align 8, !dbg !411
  store i64 %1, ptr %__start, align 8, !dbg !411
  %2 = load i64, ptr %__start, align 8, !dbg !412
  %3 = load i64, ptr %sz, align 8, !dbg !412
  %cmp = icmp uge i64 %2, %3, !dbg !412
  %lnot = xor i1 %cmp, true, !dbg !412
  %lnot1 = xor i1 %lnot, true, !dbg !412
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !412
  %conv = sext i32 %lnot.ext to i64, !dbg !412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !412
  %tobool = icmp ne i64 %expval, 0, !dbg !412
  br i1 %tobool, label %if.then, label %if.end, !dbg !411

if.then:                                          ; preds = %entry
  br label %out, !dbg !412

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %__start, align 8, !dbg !411
  %and = and i64 %4, 63, !dbg !411
  %shl = shl i64 -1, %and, !dbg !411
  store i64 %shl, ptr %mask, align 8, !dbg !411
  %5 = load i64, ptr %__start, align 8, !dbg !411
  %div = udiv i64 %5, 64, !dbg !411
  store i64 %div, ptr %idx, align 8, !dbg !411
  %6 = load ptr, ptr %addr1.addr, align 8, !dbg !414
  %7 = load i64, ptr %idx, align 8, !dbg !414
  %arrayidx = getelementptr i64, ptr %6, i64 %7, !dbg !414
  %8 = load i64, ptr %arrayidx, align 8, !dbg !414
  %9 = load ptr, ptr %addr2.addr, align 8, !dbg !414
  %10 = load i64, ptr %idx, align 8, !dbg !414
  %arrayidx2 = getelementptr i64, ptr %9, i64 %10, !dbg !414
  %11 = load i64, ptr %arrayidx2, align 8, !dbg !414
  %and3 = and i64 %8, %11, !dbg !414
  %12 = load i64, ptr %mask, align 8, !dbg !414
  %and4 = and i64 %and3, %12, !dbg !414
  store i64 %and4, ptr %tmp, align 8, !dbg !414
  br label %for.cond, !dbg !414

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, ptr %tmp, align 8, !dbg !416
  %tobool5 = icmp ne i64 %13, 0, !dbg !416
  %lnot6 = xor i1 %tobool5, true, !dbg !416
  br i1 %lnot6, label %for.body, label %for.end, !dbg !414

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %idx, align 8, !dbg !418
  %add = add i64 %14, 1, !dbg !418
  %mul = mul i64 %add, 64, !dbg !418
  %15 = load i64, ptr %sz, align 8, !dbg !418
  %cmp8 = icmp uge i64 %mul, %15, !dbg !418
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !421

if.then10:                                        ; preds = %for.body
  br label %out, !dbg !418

if.end11:                                         ; preds = %for.body
  %16 = load i64, ptr %idx, align 8, !dbg !421
  %inc = add i64 %16, 1, !dbg !421
  store i64 %inc, ptr %idx, align 8, !dbg !421
  br label %for.inc, !dbg !421

for.inc:                                          ; preds = %if.end11
  %17 = load ptr, ptr %addr1.addr, align 8, !dbg !416
  %18 = load i64, ptr %idx, align 8, !dbg !416
  %arrayidx12 = getelementptr i64, ptr %17, i64 %18, !dbg !416
  %19 = load i64, ptr %arrayidx12, align 8, !dbg !416
  %20 = load ptr, ptr %addr2.addr, align 8, !dbg !416
  %21 = load i64, ptr %idx, align 8, !dbg !416
  %arrayidx13 = getelementptr i64, ptr %20, i64 %21, !dbg !416
  %22 = load i64, ptr %arrayidx13, align 8, !dbg !416
  %and14 = and i64 %19, %22, !dbg !416
  store i64 %and14, ptr %tmp, align 8, !dbg !416
  br label %for.cond, !dbg !416, !llvm.loop !422

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x26) #7, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x26, metadata !403, metadata !DIExpression()), !dbg !423
  %23 = load i64, ptr %idx, align 8, !dbg !423
  %mul15 = mul i64 %23, 64, !dbg !423
  %24 = load i64, ptr %tmp, align 8, !dbg !423
  %25 = call i1 @llvm.is.constant.i64(i64 %24), !dbg !423
  br i1 %25, label %cond.true, label %cond.false, !dbg !423

cond.true:                                        ; preds = %for.end
  %26 = load i64, ptr %tmp, align 8, !dbg !423
  %27 = call i64 @llvm.cttz.i64(i64 %26, i1 true), !dbg !423
  %cast = trunc i64 %27 to i32, !dbg !423
  %conv16 = sext i32 %cast to i64, !dbg !423
  br label %cond.end, !dbg !423

cond.false:                                       ; preds = %for.end
  %28 = load i64, ptr %tmp, align 8, !dbg !423
  %call = call i64 @variable__ffs(i64 noundef %28) #8, !dbg !423
  br label %cond.end, !dbg !423

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv16, %cond.true ], [ %call, %cond.false ], !dbg !423
  %add17 = add i64 %mul15, %cond, !dbg !423
  store i64 %add17, ptr %__UNIQUE_ID___x26, align 8, !dbg !423
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y27) #7, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y27, metadata !405, metadata !DIExpression()), !dbg !423
  %29 = load i64, ptr %sz, align 8, !dbg !423
  store i64 %29, ptr %__UNIQUE_ID___y27, align 8, !dbg !423
  %30 = load i64, ptr %__UNIQUE_ID___x26, align 8, !dbg !423
  %31 = load i64, ptr %__UNIQUE_ID___y27, align 8, !dbg !423
  %cmp19 = icmp ult i64 %30, %31, !dbg !423
  br i1 %cmp19, label %cond.true21, label %cond.false22, !dbg !423

cond.true21:                                      ; preds = %cond.end
  %32 = load i64, ptr %__UNIQUE_ID___x26, align 8, !dbg !423
  br label %cond.end23, !dbg !423

cond.false22:                                     ; preds = %cond.end
  %33 = load i64, ptr %__UNIQUE_ID___y27, align 8, !dbg !423
  br label %cond.end23, !dbg !423

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i64 [ %32, %cond.true21 ], [ %33, %cond.false22 ], !dbg !423
  store i64 %cond24, ptr %tmp18, align 8, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y27) #7, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x26) #7, !dbg !411
  %34 = load i64, ptr %tmp18, align 8, !dbg !423
  store i64 %34, ptr %sz, align 8, !dbg !411
  br label %out, !dbg !411

out:                                              ; preds = %cond.end23, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !406), !dbg !411
  %35 = load i64, ptr %sz, align 8, !dbg !411
  store i64 %35, ptr %tmp25, align 8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__start) #7, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !424
  %36 = load i64, ptr %tmp25, align 8, !dbg !411
  ret i64 %36, !dbg !425
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_next_andnot_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %nbits, i64 noundef %start) #0 align 16 !dbg !426 {
entry:
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %nbits.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  %idx = alloca i64, align 8
  %tmp = alloca i64, align 8
  %sz = alloca i64, align 8
  %__start = alloca i64, align 8
  %__UNIQUE_ID___x29 = alloca i64, align 8
  %__UNIQUE_ID___y30 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %tmp26 = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !428, metadata !DIExpression()), !dbg !442
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !429, metadata !DIExpression()), !dbg !443
  store i64 %nbits, ptr %nbits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !430, metadata !DIExpression()), !dbg !444
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !431, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !432, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !434, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !435, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !436, metadata !DIExpression()), !dbg !446
  %0 = load i64, ptr %nbits.addr, align 8, !dbg !446
  store i64 %0, ptr %sz, align 8, !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %__start) #7, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %__start, metadata !437, metadata !DIExpression()), !dbg !446
  %1 = load i64, ptr %start.addr, align 8, !dbg !446
  store i64 %1, ptr %__start, align 8, !dbg !446
  %2 = load i64, ptr %__start, align 8, !dbg !447
  %3 = load i64, ptr %sz, align 8, !dbg !447
  %cmp = icmp uge i64 %2, %3, !dbg !447
  %lnot = xor i1 %cmp, true, !dbg !447
  %lnot1 = xor i1 %lnot, true, !dbg !447
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !447
  %conv = sext i32 %lnot.ext to i64, !dbg !447
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !447
  %tobool = icmp ne i64 %expval, 0, !dbg !447
  br i1 %tobool, label %if.then, label %if.end, !dbg !446

if.then:                                          ; preds = %entry
  br label %out, !dbg !447

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %__start, align 8, !dbg !446
  %and = and i64 %4, 63, !dbg !446
  %shl = shl i64 -1, %and, !dbg !446
  store i64 %shl, ptr %mask, align 8, !dbg !446
  %5 = load i64, ptr %__start, align 8, !dbg !446
  %div = udiv i64 %5, 64, !dbg !446
  store i64 %div, ptr %idx, align 8, !dbg !446
  %6 = load ptr, ptr %addr1.addr, align 8, !dbg !449
  %7 = load i64, ptr %idx, align 8, !dbg !449
  %arrayidx = getelementptr i64, ptr %6, i64 %7, !dbg !449
  %8 = load i64, ptr %arrayidx, align 8, !dbg !449
  %9 = load ptr, ptr %addr2.addr, align 8, !dbg !449
  %10 = load i64, ptr %idx, align 8, !dbg !449
  %arrayidx2 = getelementptr i64, ptr %9, i64 %10, !dbg !449
  %11 = load i64, ptr %arrayidx2, align 8, !dbg !449
  %not = xor i64 %11, -1, !dbg !449
  %and3 = and i64 %8, %not, !dbg !449
  %12 = load i64, ptr %mask, align 8, !dbg !449
  %and4 = and i64 %and3, %12, !dbg !449
  store i64 %and4, ptr %tmp, align 8, !dbg !449
  br label %for.cond, !dbg !449

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, ptr %tmp, align 8, !dbg !451
  %tobool5 = icmp ne i64 %13, 0, !dbg !451
  %lnot6 = xor i1 %tobool5, true, !dbg !451
  br i1 %lnot6, label %for.body, label %for.end, !dbg !449

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %idx, align 8, !dbg !453
  %add = add i64 %14, 1, !dbg !453
  %mul = mul i64 %add, 64, !dbg !453
  %15 = load i64, ptr %sz, align 8, !dbg !453
  %cmp8 = icmp uge i64 %mul, %15, !dbg !453
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !456

if.then10:                                        ; preds = %for.body
  br label %out, !dbg !453

if.end11:                                         ; preds = %for.body
  %16 = load i64, ptr %idx, align 8, !dbg !456
  %inc = add i64 %16, 1, !dbg !456
  store i64 %inc, ptr %idx, align 8, !dbg !456
  br label %for.inc, !dbg !456

for.inc:                                          ; preds = %if.end11
  %17 = load ptr, ptr %addr1.addr, align 8, !dbg !451
  %18 = load i64, ptr %idx, align 8, !dbg !451
  %arrayidx12 = getelementptr i64, ptr %17, i64 %18, !dbg !451
  %19 = load i64, ptr %arrayidx12, align 8, !dbg !451
  %20 = load ptr, ptr %addr2.addr, align 8, !dbg !451
  %21 = load i64, ptr %idx, align 8, !dbg !451
  %arrayidx13 = getelementptr i64, ptr %20, i64 %21, !dbg !451
  %22 = load i64, ptr %arrayidx13, align 8, !dbg !451
  %not14 = xor i64 %22, -1, !dbg !451
  %and15 = and i64 %19, %not14, !dbg !451
  store i64 %and15, ptr %tmp, align 8, !dbg !451
  br label %for.cond, !dbg !451, !llvm.loop !457

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x29) #7, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x29, metadata !438, metadata !DIExpression()), !dbg !458
  %23 = load i64, ptr %idx, align 8, !dbg !458
  %mul16 = mul i64 %23, 64, !dbg !458
  %24 = load i64, ptr %tmp, align 8, !dbg !458
  %25 = call i1 @llvm.is.constant.i64(i64 %24), !dbg !458
  br i1 %25, label %cond.true, label %cond.false, !dbg !458

cond.true:                                        ; preds = %for.end
  %26 = load i64, ptr %tmp, align 8, !dbg !458
  %27 = call i64 @llvm.cttz.i64(i64 %26, i1 true), !dbg !458
  %cast = trunc i64 %27 to i32, !dbg !458
  %conv17 = sext i32 %cast to i64, !dbg !458
  br label %cond.end, !dbg !458

cond.false:                                       ; preds = %for.end
  %28 = load i64, ptr %tmp, align 8, !dbg !458
  %call = call i64 @variable__ffs(i64 noundef %28) #8, !dbg !458
  br label %cond.end, !dbg !458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv17, %cond.true ], [ %call, %cond.false ], !dbg !458
  %add18 = add i64 %mul16, %cond, !dbg !458
  store i64 %add18, ptr %__UNIQUE_ID___x29, align 8, !dbg !458
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y30) #7, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y30, metadata !440, metadata !DIExpression()), !dbg !458
  %29 = load i64, ptr %sz, align 8, !dbg !458
  store i64 %29, ptr %__UNIQUE_ID___y30, align 8, !dbg !458
  %30 = load i64, ptr %__UNIQUE_ID___x29, align 8, !dbg !458
  %31 = load i64, ptr %__UNIQUE_ID___y30, align 8, !dbg !458
  %cmp20 = icmp ult i64 %30, %31, !dbg !458
  br i1 %cmp20, label %cond.true22, label %cond.false23, !dbg !458

cond.true22:                                      ; preds = %cond.end
  %32 = load i64, ptr %__UNIQUE_ID___x29, align 8, !dbg !458
  br label %cond.end24, !dbg !458

cond.false23:                                     ; preds = %cond.end
  %33 = load i64, ptr %__UNIQUE_ID___y30, align 8, !dbg !458
  br label %cond.end24, !dbg !458

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i64 [ %32, %cond.true22 ], [ %33, %cond.false23 ], !dbg !458
  store i64 %cond25, ptr %tmp19, align 8, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y30) #7, !dbg !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x29) #7, !dbg !446
  %34 = load i64, ptr %tmp19, align 8, !dbg !458
  store i64 %34, ptr %sz, align 8, !dbg !446
  br label %out, !dbg !446

out:                                              ; preds = %cond.end24, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !441), !dbg !446
  %35 = load i64, ptr %sz, align 8, !dbg !446
  store i64 %35, ptr %tmp26, align 8, !dbg !446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__start) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !459
  %36 = load i64, ptr %tmp26, align 8, !dbg !446
  ret i64 %36, !dbg !460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_next_or_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %nbits, i64 noundef %start) #0 align 16 !dbg !461 {
entry:
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %nbits.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  %idx = alloca i64, align 8
  %tmp = alloca i64, align 8
  %sz = alloca i64, align 8
  %__start = alloca i64, align 8
  %__UNIQUE_ID___x32 = alloca i64, align 8
  %__UNIQUE_ID___y33 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %tmp24 = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !463, metadata !DIExpression()), !dbg !477
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !464, metadata !DIExpression()), !dbg !478
  store i64 %nbits, ptr %nbits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !465, metadata !DIExpression()), !dbg !479
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !466, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !467, metadata !DIExpression()), !dbg !481
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !469, metadata !DIExpression()), !dbg !481
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !470, metadata !DIExpression()), !dbg !481
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !471, metadata !DIExpression()), !dbg !481
  %0 = load i64, ptr %nbits.addr, align 8, !dbg !481
  store i64 %0, ptr %sz, align 8, !dbg !481
  call void @llvm.lifetime.start.p0(i64 8, ptr %__start) #7, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %__start, metadata !472, metadata !DIExpression()), !dbg !481
  %1 = load i64, ptr %start.addr, align 8, !dbg !481
  store i64 %1, ptr %__start, align 8, !dbg !481
  %2 = load i64, ptr %__start, align 8, !dbg !482
  %3 = load i64, ptr %sz, align 8, !dbg !482
  %cmp = icmp uge i64 %2, %3, !dbg !482
  %lnot = xor i1 %cmp, true, !dbg !482
  %lnot1 = xor i1 %lnot, true, !dbg !482
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !482
  %conv = sext i32 %lnot.ext to i64, !dbg !482
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !482
  %tobool = icmp ne i64 %expval, 0, !dbg !482
  br i1 %tobool, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  br label %out, !dbg !482

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %__start, align 8, !dbg !481
  %and = and i64 %4, 63, !dbg !481
  %shl = shl i64 -1, %and, !dbg !481
  store i64 %shl, ptr %mask, align 8, !dbg !481
  %5 = load i64, ptr %__start, align 8, !dbg !481
  %div = udiv i64 %5, 64, !dbg !481
  store i64 %div, ptr %idx, align 8, !dbg !481
  %6 = load ptr, ptr %addr1.addr, align 8, !dbg !484
  %7 = load i64, ptr %idx, align 8, !dbg !484
  %arrayidx = getelementptr i64, ptr %6, i64 %7, !dbg !484
  %8 = load i64, ptr %arrayidx, align 8, !dbg !484
  %9 = load ptr, ptr %addr2.addr, align 8, !dbg !484
  %10 = load i64, ptr %idx, align 8, !dbg !484
  %arrayidx2 = getelementptr i64, ptr %9, i64 %10, !dbg !484
  %11 = load i64, ptr %arrayidx2, align 8, !dbg !484
  %or = or i64 %8, %11, !dbg !484
  %12 = load i64, ptr %mask, align 8, !dbg !484
  %and3 = and i64 %or, %12, !dbg !484
  store i64 %and3, ptr %tmp, align 8, !dbg !484
  br label %for.cond, !dbg !484

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, ptr %tmp, align 8, !dbg !486
  %tobool4 = icmp ne i64 %13, 0, !dbg !486
  %lnot5 = xor i1 %tobool4, true, !dbg !486
  br i1 %lnot5, label %for.body, label %for.end, !dbg !484

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %idx, align 8, !dbg !488
  %add = add i64 %14, 1, !dbg !488
  %mul = mul i64 %add, 64, !dbg !488
  %15 = load i64, ptr %sz, align 8, !dbg !488
  %cmp7 = icmp uge i64 %mul, %15, !dbg !488
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !491

if.then9:                                         ; preds = %for.body
  br label %out, !dbg !488

if.end10:                                         ; preds = %for.body
  %16 = load i64, ptr %idx, align 8, !dbg !491
  %inc = add i64 %16, 1, !dbg !491
  store i64 %inc, ptr %idx, align 8, !dbg !491
  br label %for.inc, !dbg !491

for.inc:                                          ; preds = %if.end10
  %17 = load ptr, ptr %addr1.addr, align 8, !dbg !486
  %18 = load i64, ptr %idx, align 8, !dbg !486
  %arrayidx11 = getelementptr i64, ptr %17, i64 %18, !dbg !486
  %19 = load i64, ptr %arrayidx11, align 8, !dbg !486
  %20 = load ptr, ptr %addr2.addr, align 8, !dbg !486
  %21 = load i64, ptr %idx, align 8, !dbg !486
  %arrayidx12 = getelementptr i64, ptr %20, i64 %21, !dbg !486
  %22 = load i64, ptr %arrayidx12, align 8, !dbg !486
  %or13 = or i64 %19, %22, !dbg !486
  store i64 %or13, ptr %tmp, align 8, !dbg !486
  br label %for.cond, !dbg !486, !llvm.loop !492

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x32) #7, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x32, metadata !473, metadata !DIExpression()), !dbg !493
  %23 = load i64, ptr %idx, align 8, !dbg !493
  %mul14 = mul i64 %23, 64, !dbg !493
  %24 = load i64, ptr %tmp, align 8, !dbg !493
  %25 = call i1 @llvm.is.constant.i64(i64 %24), !dbg !493
  br i1 %25, label %cond.true, label %cond.false, !dbg !493

cond.true:                                        ; preds = %for.end
  %26 = load i64, ptr %tmp, align 8, !dbg !493
  %27 = call i64 @llvm.cttz.i64(i64 %26, i1 true), !dbg !493
  %cast = trunc i64 %27 to i32, !dbg !493
  %conv15 = sext i32 %cast to i64, !dbg !493
  br label %cond.end, !dbg !493

cond.false:                                       ; preds = %for.end
  %28 = load i64, ptr %tmp, align 8, !dbg !493
  %call = call i64 @variable__ffs(i64 noundef %28) #8, !dbg !493
  br label %cond.end, !dbg !493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv15, %cond.true ], [ %call, %cond.false ], !dbg !493
  %add16 = add i64 %mul14, %cond, !dbg !493
  store i64 %add16, ptr %__UNIQUE_ID___x32, align 8, !dbg !493
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y33) #7, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y33, metadata !475, metadata !DIExpression()), !dbg !493
  %29 = load i64, ptr %sz, align 8, !dbg !493
  store i64 %29, ptr %__UNIQUE_ID___y33, align 8, !dbg !493
  %30 = load i64, ptr %__UNIQUE_ID___x32, align 8, !dbg !493
  %31 = load i64, ptr %__UNIQUE_ID___y33, align 8, !dbg !493
  %cmp18 = icmp ult i64 %30, %31, !dbg !493
  br i1 %cmp18, label %cond.true20, label %cond.false21, !dbg !493

cond.true20:                                      ; preds = %cond.end
  %32 = load i64, ptr %__UNIQUE_ID___x32, align 8, !dbg !493
  br label %cond.end22, !dbg !493

cond.false21:                                     ; preds = %cond.end
  %33 = load i64, ptr %__UNIQUE_ID___y33, align 8, !dbg !493
  br label %cond.end22, !dbg !493

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i64 [ %32, %cond.true20 ], [ %33, %cond.false21 ], !dbg !493
  store i64 %cond23, ptr %tmp17, align 8, !dbg !493
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y33) #7, !dbg !481
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x32) #7, !dbg !481
  %34 = load i64, ptr %tmp17, align 8, !dbg !493
  store i64 %34, ptr %sz, align 8, !dbg !481
  br label %out, !dbg !481

out:                                              ; preds = %cond.end22, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !476), !dbg !481
  %35 = load i64, ptr %sz, align 8, !dbg !481
  store i64 %35, ptr %tmp24, align 8, !dbg !481
  call void @llvm.lifetime.end.p0(i64 8, ptr %__start) #7, !dbg !494
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !494
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !494
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !494
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !494
  %36 = load i64, ptr %tmp24, align 8, !dbg !481
  ret i64 %36, !dbg !495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_next_zero_bit(ptr noundef %addr, i64 noundef %nbits, i64 noundef %start) #0 align 16 !dbg !496 {
entry:
  %addr.addr = alloca ptr, align 8
  %nbits.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  %idx = alloca i64, align 8
  %tmp = alloca i64, align 8
  %sz = alloca i64, align 8
  %__start = alloca i64, align 8
  %__UNIQUE_ID___x35 = alloca i64, align 8
  %__UNIQUE_ID___y36 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %tmp22 = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !498, metadata !DIExpression()), !dbg !511
  store i64 %nbits, ptr %nbits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !499, metadata !DIExpression()), !dbg !512
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !500, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !501, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !503, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !504, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !505, metadata !DIExpression()), !dbg !514
  %0 = load i64, ptr %nbits.addr, align 8, !dbg !514
  store i64 %0, ptr %sz, align 8, !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr %__start) #7, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %__start, metadata !506, metadata !DIExpression()), !dbg !514
  %1 = load i64, ptr %start.addr, align 8, !dbg !514
  store i64 %1, ptr %__start, align 8, !dbg !514
  %2 = load i64, ptr %__start, align 8, !dbg !515
  %3 = load i64, ptr %sz, align 8, !dbg !515
  %cmp = icmp uge i64 %2, %3, !dbg !515
  %lnot = xor i1 %cmp, true, !dbg !515
  %lnot1 = xor i1 %lnot, true, !dbg !515
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !515
  %conv = sext i32 %lnot.ext to i64, !dbg !515
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !515
  %tobool = icmp ne i64 %expval, 0, !dbg !515
  br i1 %tobool, label %if.then, label %if.end, !dbg !514

if.then:                                          ; preds = %entry
  br label %out, !dbg !515

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %__start, align 8, !dbg !514
  %and = and i64 %4, 63, !dbg !514
  %shl = shl i64 -1, %and, !dbg !514
  store i64 %shl, ptr %mask, align 8, !dbg !514
  %5 = load i64, ptr %__start, align 8, !dbg !514
  %div = udiv i64 %5, 64, !dbg !514
  store i64 %div, ptr %idx, align 8, !dbg !514
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !517
  %7 = load i64, ptr %idx, align 8, !dbg !517
  %arrayidx = getelementptr i64, ptr %6, i64 %7, !dbg !517
  %8 = load i64, ptr %arrayidx, align 8, !dbg !517
  %not = xor i64 %8, -1, !dbg !517
  %9 = load i64, ptr %mask, align 8, !dbg !517
  %and2 = and i64 %not, %9, !dbg !517
  store i64 %and2, ptr %tmp, align 8, !dbg !517
  br label %for.cond, !dbg !517

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, ptr %tmp, align 8, !dbg !519
  %tobool3 = icmp ne i64 %10, 0, !dbg !519
  %lnot4 = xor i1 %tobool3, true, !dbg !519
  br i1 %lnot4, label %for.body, label %for.end, !dbg !517

for.body:                                         ; preds = %for.cond
  %11 = load i64, ptr %idx, align 8, !dbg !521
  %add = add i64 %11, 1, !dbg !521
  %mul = mul i64 %add, 64, !dbg !521
  %12 = load i64, ptr %sz, align 8, !dbg !521
  %cmp6 = icmp uge i64 %mul, %12, !dbg !521
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !524

if.then8:                                         ; preds = %for.body
  br label %out, !dbg !521

if.end9:                                          ; preds = %for.body
  %13 = load i64, ptr %idx, align 8, !dbg !524
  %inc = add i64 %13, 1, !dbg !524
  store i64 %inc, ptr %idx, align 8, !dbg !524
  br label %for.inc, !dbg !524

for.inc:                                          ; preds = %if.end9
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !519
  %15 = load i64, ptr %idx, align 8, !dbg !519
  %arrayidx10 = getelementptr i64, ptr %14, i64 %15, !dbg !519
  %16 = load i64, ptr %arrayidx10, align 8, !dbg !519
  %not11 = xor i64 %16, -1, !dbg !519
  store i64 %not11, ptr %tmp, align 8, !dbg !519
  br label %for.cond, !dbg !519, !llvm.loop !525

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x35) #7, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x35, metadata !507, metadata !DIExpression()), !dbg !526
  %17 = load i64, ptr %idx, align 8, !dbg !526
  %mul12 = mul i64 %17, 64, !dbg !526
  %18 = load i64, ptr %tmp, align 8, !dbg !526
  %19 = call i1 @llvm.is.constant.i64(i64 %18), !dbg !526
  br i1 %19, label %cond.true, label %cond.false, !dbg !526

cond.true:                                        ; preds = %for.end
  %20 = load i64, ptr %tmp, align 8, !dbg !526
  %21 = call i64 @llvm.cttz.i64(i64 %20, i1 true), !dbg !526
  %cast = trunc i64 %21 to i32, !dbg !526
  %conv13 = sext i32 %cast to i64, !dbg !526
  br label %cond.end, !dbg !526

cond.false:                                       ; preds = %for.end
  %22 = load i64, ptr %tmp, align 8, !dbg !526
  %call = call i64 @variable__ffs(i64 noundef %22) #8, !dbg !526
  br label %cond.end, !dbg !526

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv13, %cond.true ], [ %call, %cond.false ], !dbg !526
  %add14 = add i64 %mul12, %cond, !dbg !526
  store i64 %add14, ptr %__UNIQUE_ID___x35, align 8, !dbg !526
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y36) #7, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y36, metadata !509, metadata !DIExpression()), !dbg !526
  %23 = load i64, ptr %sz, align 8, !dbg !526
  store i64 %23, ptr %__UNIQUE_ID___y36, align 8, !dbg !526
  %24 = load i64, ptr %__UNIQUE_ID___x35, align 8, !dbg !526
  %25 = load i64, ptr %__UNIQUE_ID___y36, align 8, !dbg !526
  %cmp16 = icmp ult i64 %24, %25, !dbg !526
  br i1 %cmp16, label %cond.true18, label %cond.false19, !dbg !526

cond.true18:                                      ; preds = %cond.end
  %26 = load i64, ptr %__UNIQUE_ID___x35, align 8, !dbg !526
  br label %cond.end20, !dbg !526

cond.false19:                                     ; preds = %cond.end
  %27 = load i64, ptr %__UNIQUE_ID___y36, align 8, !dbg !526
  br label %cond.end20, !dbg !526

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ %26, %cond.true18 ], [ %27, %cond.false19 ], !dbg !526
  store i64 %cond21, ptr %tmp15, align 8, !dbg !526
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y36) #7, !dbg !514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x35) #7, !dbg !514
  %28 = load i64, ptr %tmp15, align 8, !dbg !526
  store i64 %28, ptr %sz, align 8, !dbg !514
  br label %out, !dbg !514

out:                                              ; preds = %cond.end20, %if.then8, %if.then
  call void @llvm.dbg.label(metadata !510), !dbg !514
  %29 = load i64, ptr %sz, align 8, !dbg !514
  store i64 %29, ptr %tmp22, align 8, !dbg !514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__start) #7, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !527
  %30 = load i64, ptr %tmp22, align 8, !dbg !514
  ret i64 %30, !dbg !528
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_find_last_bit(ptr noundef %addr, i64 noundef %size) #0 align 16 !dbg !529 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !531, metadata !DIExpression()), !dbg !537
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !532, metadata !DIExpression()), !dbg !538
  %0 = load i64, ptr %size.addr, align 8, !dbg !539
  %tobool = icmp ne i64 %0, 0, !dbg !539
  br i1 %tobool, label %if.then, label %if.end7, !dbg !540

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %val, metadata !533, metadata !DIExpression()), !dbg !542
  %1 = load i64, ptr %size.addr, align 8, !dbg !543
  %sub = sub i64 0, %1, !dbg !543
  %and = and i64 %sub, 63, !dbg !543
  %shr = lshr i64 -1, %and, !dbg !543
  store i64 %shr, ptr %val, align 8, !dbg !542
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !536, metadata !DIExpression()), !dbg !545
  %2 = load i64, ptr %size.addr, align 8, !dbg !546
  %sub1 = sub i64 %2, 1, !dbg !547
  %div = udiv i64 %sub1, 64, !dbg !548
  store i64 %div, ptr %idx, align 8, !dbg !545
  br label %do.body, !dbg !549

do.body:                                          ; preds = %do.cond, %if.then
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !550
  %4 = load i64, ptr %idx, align 8, !dbg !552
  %arrayidx = getelementptr i64, ptr %3, i64 %4, !dbg !550
  %5 = load i64, ptr %arrayidx, align 8, !dbg !550
  %6 = load i64, ptr %val, align 8, !dbg !553
  %and2 = and i64 %6, %5, !dbg !553
  store i64 %and2, ptr %val, align 8, !dbg !553
  %7 = load i64, ptr %val, align 8, !dbg !554
  %tobool3 = icmp ne i64 %7, 0, !dbg !554
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !556

if.then4:                                         ; preds = %do.body
  %8 = load i64, ptr %idx, align 8, !dbg !557
  %mul = mul i64 %8, 64, !dbg !558
  %9 = load i64, ptr %val, align 8, !dbg !559
  %call = call i64 @__fls(i64 noundef %9) #8, !dbg !560
  %add = add i64 %mul, %call, !dbg !561
  store i64 %add, ptr %retval, align 8, !dbg !562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !562

if.end:                                           ; preds = %do.body
  store i64 -1, ptr %val, align 8, !dbg !563
  br label %do.cond, !dbg !564

do.cond:                                          ; preds = %if.end
  %10 = load i64, ptr %idx, align 8, !dbg !565
  %dec = add i64 %10, -1, !dbg !565
  store i64 %dec, ptr %idx, align 8, !dbg !565
  %tobool5 = icmp ne i64 %10, 0, !dbg !564
  br i1 %tobool5, label %do.body, label %do.end, !dbg !564, !llvm.loop !566

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !568
  br label %cleanup, !dbg !568

cleanup:                                          ; preds = %do.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !568
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !568
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !569

if.end7:                                          ; preds = %cleanup.cont, %entry
  %11 = load i64, ptr %size.addr, align 8, !dbg !570
  store i64 %11, ptr %retval, align 8, !dbg !571
  br label %return, !dbg !571

return:                                           ; preds = %if.end7, %cleanup
  %12 = load i64, ptr %retval, align 8, !dbg !572
  ret i64 %12, !dbg !572

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__fls(i64 noundef %word) #4 align 16 !dbg !573 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i64, ptr %word.addr, align 8, !dbg !577
  %1 = call i64 asm "bsr $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #9, !dbg !578, !srcloc !579
  store i64 %1, ptr %word.addr, align 8, !dbg !578
  %2 = load i64, ptr %word.addr, align 8, !dbg !580
  ret i64 %2, !dbg !581
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @find_next_clump8(ptr noundef %clump, ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #0 align 16 !dbg !582 {
entry:
  %retval = alloca i64, align 8
  %clump.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store ptr %clump, ptr %clump.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clump.addr, metadata !586, metadata !DIExpression()), !dbg !590
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !587, metadata !DIExpression()), !dbg !591
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !588, metadata !DIExpression()), !dbg !592
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !589, metadata !DIExpression()), !dbg !593
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !594
  %1 = load i64, ptr %size.addr, align 8, !dbg !595
  %2 = load i64, ptr %offset.addr, align 8, !dbg !596
  %call = call i64 @find_next_bit(ptr noundef %0, i64 noundef %1, i64 noundef %2) #8, !dbg !597
  store i64 %call, ptr %offset.addr, align 8, !dbg !598
  %3 = load i64, ptr %offset.addr, align 8, !dbg !599
  %4 = load i64, ptr %size.addr, align 8, !dbg !601
  %cmp = icmp eq i64 %3, %4, !dbg !602
  br i1 %cmp, label %if.then, label %if.end, !dbg !603

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %size.addr, align 8, !dbg !604
  store i64 %5, ptr %retval, align 8, !dbg !605
  br label %return, !dbg !605

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %offset.addr, align 8, !dbg !606
  %and = and i64 %6, -8, !dbg !606
  store i64 %and, ptr %offset.addr, align 8, !dbg !607
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !608
  %8 = load i64, ptr %offset.addr, align 8, !dbg !609
  %call1 = call i64 @bitmap_get_value8(ptr noundef %7, i64 noundef %8) #8, !dbg !610
  %9 = load ptr, ptr %clump.addr, align 8, !dbg !611
  store i64 %call1, ptr %9, align 8, !dbg !612
  %10 = load i64, ptr %offset.addr, align 8, !dbg !613
  store i64 %10, ptr %retval, align 8, !dbg !614
  br label %return, !dbg !614

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, ptr %retval, align 8, !dbg !615
  ret i64 %11, !dbg !615
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !616 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !619, metadata !DIExpression()), !dbg !625
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !620, metadata !DIExpression()), !dbg !626
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !621, metadata !DIExpression()), !dbg !627
  %0 = load i64, ptr %size.addr, align 8, !dbg !628
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !628
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !628

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !628
  %cmp = icmp ule i64 %2, 64, !dbg !628
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !628

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !628
  %cmp2 = icmp ugt i64 %3, 0, !dbg !628
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !629

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %val, metadata !622, metadata !DIExpression()), !dbg !631
  %4 = load i64, ptr %offset.addr, align 8, !dbg !632
  %5 = load i64, ptr %size.addr, align 8, !dbg !632
  %cmp3 = icmp uge i64 %4, %5, !dbg !632
  %lnot = xor i1 %cmp3, true, !dbg !632
  %lnot4 = xor i1 %lnot, true, !dbg !632
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !632
  %conv = sext i32 %lnot.ext to i64, !dbg !632
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !632
  %tobool = icmp ne i64 %expval, 0, !dbg !632
  br i1 %tobool, label %if.then5, label %if.end, !dbg !634

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !635
  store i64 %6, ptr %retval, align 8, !dbg !636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !636

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !637
  %8 = load i64, ptr %7, align 8, !dbg !638
  %9 = load i64, ptr %offset.addr, align 8, !dbg !639
  %shl = shl i64 1, %9, !dbg !639
  %sub = sub i64 -1, %shl, !dbg !639
  %add = add i64 %sub, 1, !dbg !639
  %10 = load i64, ptr %size.addr, align 8, !dbg !639
  %sub6 = sub i64 %10, 1, !dbg !639
  %sub7 = sub i64 63, %sub6, !dbg !639
  %shr = lshr i64 -1, %sub7, !dbg !639
  %and = and i64 %add, %shr, !dbg !639
  %add8 = add i64 0, %and, !dbg !639
  %and9 = and i64 %8, %add8, !dbg !640
  store i64 %and9, ptr %val, align 8, !dbg !641
  %11 = load i64, ptr %val, align 8, !dbg !642
  %tobool10 = icmp ne i64 %11, 0, !dbg !642
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !642

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !643
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !643
  br i1 %13, label %cond.true11, label %cond.false, !dbg !643

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !643
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !643
  %cast = trunc i64 %15 to i32, !dbg !643
  %conv12 = sext i32 %cast to i64, !dbg !643
  br label %cond.end, !dbg !643

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !643
  %call = call i64 @variable__ffs(i64 noundef %16) #8, !dbg !643
  br label %cond.end, !dbg !643

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !643
  br label %cond.end14, !dbg !642

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !644
  br label %cond.end14, !dbg !642

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !642
  store i64 %cond15, ptr %retval, align 8, !dbg !645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !645

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !646
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !647
  %19 = load i64, ptr %size.addr, align 8, !dbg !648
  %20 = load i64, ptr %offset.addr, align 8, !dbg !649
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #8, !dbg !650
  store i64 %call17, ptr %retval, align 8, !dbg !651
  br label %return, !dbg !651

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !652
  ret i64 %21, !dbg !652
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bitmap_get_value8(ptr noundef %map, i64 noundef %start) #6 align 16 !dbg !653 {
entry:
  %map.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %index = alloca i64, align 8
  %offset = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !656, metadata !DIExpression()), !dbg !665
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !657, metadata !DIExpression()), !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #7, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %index, metadata !658, metadata !DIExpression()), !dbg !668
  %0 = load i64, ptr %start.addr, align 8, !dbg !669
  %div = udiv i64 %0, 64, !dbg !669
  store i64 %div, ptr %index, align 8, !dbg !668
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #7, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !664, metadata !DIExpression()), !dbg !671
  %1 = load i64, ptr %start.addr, align 8, !dbg !672
  %rem = urem i64 %1, 64, !dbg !673
  store i64 %rem, ptr %offset, align 8, !dbg !671
  %2 = load ptr, ptr %map.addr, align 8, !dbg !674
  %3 = load i64, ptr %index, align 8, !dbg !675
  %arrayidx = getelementptr i64, ptr %2, i64 %3, !dbg !674
  %4 = load i64, ptr %arrayidx, align 8, !dbg !674
  %5 = load i64, ptr %offset, align 8, !dbg !676
  %shr = lshr i64 %4, %5, !dbg !677
  %and = and i64 %shr, 255, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #7, !dbg !679
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #7, !dbg !679
  ret i64 %and, !dbg !680
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #4 align 16 !dbg !681 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !686, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !689
  call void @llvm.dbg.declare(metadata ptr %res, metadata !687, metadata !DIExpression()), !dbg !690
  %0 = load i64, ptr %w.addr, align 8, !dbg !691
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !692, !srcloc !693
  store i64 %1, ptr %res, align 8, !dbg !692
  %2 = load i64, ptr %res, align 8, !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !695
  ret i64 %2, !dbg !696
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !697 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !704, metadata !DIExpression()), !dbg !708
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !705, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !706, metadata !DIExpression()), !dbg !711
  %0 = load i64, ptr %nr.addr, align 8, !dbg !712
  %rem = urem i64 %0, 64, !dbg !712
  %shl = shl i64 1, %rem, !dbg !712
  store i64 %shl, ptr %mask, align 8, !dbg !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %p, metadata !707, metadata !DIExpression()), !dbg !714
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !715
  %2 = load i64, ptr %nr.addr, align 8, !dbg !716
  %div = udiv i64 %2, 64, !dbg !716
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !717
  store ptr %add.ptr, ptr %p, align 8, !dbg !714
  %3 = load i64, ptr %mask, align 8, !dbg !718
  %not = xor i64 %3, -1, !dbg !719
  %4 = load ptr, ptr %p, align 8, !dbg !720
  %5 = load i64, ptr %4, align 8, !dbg !721
  %and = and i64 %5, %not, !dbg !721
  store i64 %and, ptr %4, align 8, !dbg !721
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !722
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !722
  ret void, !dbg !722
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !723 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !726, metadata !DIExpression()), !dbg !728
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !727, metadata !DIExpression()), !dbg !729
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !730
  %1 = load i64, ptr %nr.addr, align 8, !dbg !731
  %div = udiv i64 %1, 64, !dbg !731
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !732
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !733
  %2 = load i64, ptr %nr.addr, align 8, !dbg !734
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !735
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !736
  ret void, !dbg !737
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !738 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !746, metadata !DIExpression()), !dbg !748
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !747, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %v.addr, align 8, !dbg !750
  %1 = load i64, ptr %size.addr, align 8, !dbg !751
  %conv = trunc i64 %1 to i32, !dbg !751
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !752
  %2 = load ptr, ptr %v.addr, align 8, !dbg !753
  %3 = load i64, ptr %size.addr, align 8, !dbg !753
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #8, !dbg !753
  ret void, !dbg !754
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !755 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !757, metadata !DIExpression()), !dbg !759
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !758, metadata !DIExpression()), !dbg !760
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !761
  %1 = load i64, ptr %nr.addr, align 8, !dbg !762
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #7, !dbg !763, !srcloc !764
  ret void, !dbg !765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !766 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !773, metadata !DIExpression()), !dbg !775
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !774, metadata !DIExpression()), !dbg !776
  ret i1 true, !dbg !777
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !778 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !783, metadata !DIExpression()), !dbg !786
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !784, metadata !DIExpression()), !dbg !787
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !785, metadata !DIExpression()), !dbg !788
  ret void, !dbg !789
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { nounwind memory(read) }
attributes #10 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_first_bit4", scope: !2, file: !3, line: 103, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.find_bit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/find_bit\22 -D KBUILD_BASENAME=\22find_bit\22 -D KBUILD_MODNAME=\22find_bit\22 -D __KBUILD_MODNAME=kmod_find_bit -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/find_bit.ll lib/find_bit.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/find_bit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "23030da8f0f1a6f70713daf78ab212fe")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !7, !17, !19, !21, !22, !25}
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !15, line: 31, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!16 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 42, baseType: !12)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!24 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!0, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_first_and_bit7", scope: !2, file: !3, line: 116, type: !13, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_first_zero_bit10", scope: !2, file: !3, line: 127, type: !13, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_next_bit13", scope: !2, file: !3, line: 135, type: !13, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___find_nth_bit16", scope: !2, file: !3, line: 142, type: !13, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___find_nth_and_bit19", scope: !2, file: !3, line: 149, type: !13, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___find_nth_andnot_bit22", scope: !2, file: !3, line: 156, type: !13, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___find_nth_and_andnot_bit25", scope: !2, file: !3, line: 165, type: !13, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_next_and_bit28", scope: !2, file: !3, line: 173, type: !13, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_next_andnot_bit31", scope: !2, file: !3, line: 182, type: !13, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_next_or_bit34", scope: !2, file: !3, line: 191, type: !13, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_next_zero_bit37", scope: !2, file: !3, line: 200, type: !13, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__find_last_bit38", scope: !2, file: !3, line: 220, type: !13, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_find_next_clump839", scope: !2, file: !3, line: 235, type: !13, isLocal: true, isDefinition: true)
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 8, !"cf-protection-branch", i32 1}
!57 = !{i32 4, !"function_return_thunk_extern", i32 1}
!58 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{i32 1, !"override-stack-alignment", i32 8}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "_find_first_bit", scope: !3, file: !3, line: 99, type: !63, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!12, !19, !12}
!65 = !{!66, !67, !68, !70, !71, !72, !79}
!66 = !DILocalVariable(name: "addr", arg: 1, scope: !62, file: !3, line: 99, type: !19)
!67 = !DILocalVariable(name: "size", arg: 2, scope: !62, file: !3, line: 99, type: !12)
!68 = !DILocalVariable(name: "idx", scope: !69, file: !3, line: 101, type: !12)
!69 = distinct !DILexicalBlock(scope: !62, file: !3, line: 101, column: 9)
!70 = !DILocalVariable(name: "val", scope: !69, file: !3, line: 101, type: !12)
!71 = !DILocalVariable(name: "sz", scope: !69, file: !3, line: 101, type: !12)
!72 = !DILocalVariable(name: "__UNIQUE_ID___x2", scope: !73, file: !3, line: 101, type: !12)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 101, column: 9)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 101, column: 9)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 101, column: 9)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 101, column: 9)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 101, column: 9)
!78 = distinct !DILexicalBlock(scope: !69, file: !3, line: 101, column: 9)
!79 = !DILocalVariable(name: "__UNIQUE_ID___y3", scope: !73, file: !3, line: 101, type: !12)
!80 = !DILocation(line: 99, column: 52, scope: !62)
!81 = !DILocation(line: 99, column: 72, scope: !62)
!82 = !DILocation(line: 101, column: 9, scope: !69)
!83 = !DILocation(line: 101, column: 9, scope: !78)
!84 = !DILocation(line: 101, column: 9, scope: !77)
!85 = !DILocation(line: 101, column: 9, scope: !76)
!86 = !DILocation(line: 101, column: 9, scope: !75)
!87 = !DILocation(line: 101, column: 9, scope: !73)
!88 = !DILocation(line: 101, column: 9, scope: !74)
!89 = distinct !{!89, !83, !83, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !DILocation(line: 101, column: 9, scope: !62)
!93 = !DILocation(line: 101, column: 2, scope: !62)
!94 = distinct !DISubprogram(name: "variable__ffs", scope: !95, file: !95, line: 250, type: !96, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!95 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!96 = !DISubroutineType(types: !97)
!97 = !{!12, !12}
!98 = !{!99}
!99 = !DILocalVariable(name: "word", arg: 1, scope: !94, file: !95, line: 250, type: !12)
!100 = !DILocation(line: 250, column: 66, scope: !94)
!101 = !DILocation(line: 254, column: 11, scope: !94)
!102 = !DILocation(line: 252, column: 2, scope: !94)
!103 = !{i64 252052}
!104 = !DILocation(line: 255, column: 9, scope: !94)
!105 = !DILocation(line: 255, column: 2, scope: !94)
!106 = distinct !DISubprogram(name: "_find_first_and_bit", scope: !3, file: !3, line: 110, type: !107, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!12, !19, !19, !12}
!109 = !{!110, !111, !112, !113, !115, !116, !117, !124}
!110 = !DILocalVariable(name: "addr1", arg: 1, scope: !106, file: !3, line: 110, type: !19)
!111 = !DILocalVariable(name: "addr2", arg: 2, scope: !106, file: !3, line: 111, type: !19)
!112 = !DILocalVariable(name: "size", arg: 3, scope: !106, file: !3, line: 112, type: !12)
!113 = !DILocalVariable(name: "idx", scope: !114, file: !3, line: 114, type: !12)
!114 = distinct !DILexicalBlock(scope: !106, file: !3, line: 114, column: 9)
!115 = !DILocalVariable(name: "val", scope: !114, file: !3, line: 114, type: !12)
!116 = !DILocalVariable(name: "sz", scope: !114, file: !3, line: 114, type: !12)
!117 = !DILocalVariable(name: "__UNIQUE_ID___x5", scope: !118, file: !3, line: 114, type: !12)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 114, column: 9)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 114, column: 9)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 114, column: 9)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 114, column: 9)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 114, column: 9)
!123 = distinct !DILexicalBlock(scope: !114, file: !3, line: 114, column: 9)
!124 = !DILocalVariable(name: "__UNIQUE_ID___y6", scope: !118, file: !3, line: 114, type: !12)
!125 = !DILocation(line: 110, column: 56, scope: !106)
!126 = !DILocation(line: 111, column: 28, scope: !106)
!127 = !DILocation(line: 112, column: 21, scope: !106)
!128 = !DILocation(line: 114, column: 9, scope: !114)
!129 = !DILocation(line: 114, column: 9, scope: !123)
!130 = !DILocation(line: 114, column: 9, scope: !122)
!131 = !DILocation(line: 114, column: 9, scope: !121)
!132 = !DILocation(line: 114, column: 9, scope: !120)
!133 = !DILocation(line: 114, column: 9, scope: !118)
!134 = !DILocation(line: 114, column: 9, scope: !119)
!135 = distinct !{!135, !129, !129, !90, !91}
!136 = !DILocation(line: 114, column: 9, scope: !106)
!137 = !DILocation(line: 114, column: 2, scope: !106)
!138 = distinct !DISubprogram(name: "_find_first_zero_bit", scope: !3, file: !3, line: 123, type: !63, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!139 = !{!140, !141, !142, !144, !145, !146, !153}
!140 = !DILocalVariable(name: "addr", arg: 1, scope: !138, file: !3, line: 123, type: !19)
!141 = !DILocalVariable(name: "size", arg: 2, scope: !138, file: !3, line: 123, type: !12)
!142 = !DILocalVariable(name: "idx", scope: !143, file: !3, line: 125, type: !12)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 125, column: 9)
!144 = !DILocalVariable(name: "val", scope: !143, file: !3, line: 125, type: !12)
!145 = !DILocalVariable(name: "sz", scope: !143, file: !3, line: 125, type: !12)
!146 = !DILocalVariable(name: "__UNIQUE_ID___x8", scope: !147, file: !3, line: 125, type: !12)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 125, column: 9)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 125, column: 9)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 125, column: 9)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 125, column: 9)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 125, column: 9)
!152 = distinct !DILexicalBlock(scope: !143, file: !3, line: 125, column: 9)
!153 = !DILocalVariable(name: "__UNIQUE_ID___y9", scope: !147, file: !3, line: 125, type: !12)
!154 = !DILocation(line: 123, column: 57, scope: !138)
!155 = !DILocation(line: 123, column: 77, scope: !138)
!156 = !DILocation(line: 125, column: 9, scope: !143)
!157 = !DILocation(line: 125, column: 9, scope: !152)
!158 = !DILocation(line: 125, column: 9, scope: !151)
!159 = !DILocation(line: 125, column: 9, scope: !150)
!160 = !DILocation(line: 125, column: 9, scope: !149)
!161 = !DILocation(line: 125, column: 9, scope: !147)
!162 = !DILocation(line: 125, column: 9, scope: !148)
!163 = distinct !{!163, !157, !157, !90, !91}
!164 = !DILocation(line: 125, column: 9, scope: !138)
!165 = !DILocation(line: 125, column: 2, scope: !138)
!166 = distinct !DISubprogram(name: "_find_next_bit", scope: !3, file: !3, line: 131, type: !167, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!12, !19, !12, !12}
!169 = !{!170, !171, !172, !173, !175, !176, !177, !178, !179, !181, !182}
!170 = !DILocalVariable(name: "addr", arg: 1, scope: !166, file: !3, line: 131, type: !19)
!171 = !DILocalVariable(name: "nbits", arg: 2, scope: !166, file: !3, line: 131, type: !12)
!172 = !DILocalVariable(name: "start", arg: 3, scope: !166, file: !3, line: 131, type: !12)
!173 = !DILocalVariable(name: "mask", scope: !174, file: !3, line: 133, type: !12)
!174 = distinct !DILexicalBlock(scope: !166, file: !3, line: 133, column: 9)
!175 = !DILocalVariable(name: "idx", scope: !174, file: !3, line: 133, type: !12)
!176 = !DILocalVariable(name: "tmp", scope: !174, file: !3, line: 133, type: !12)
!177 = !DILocalVariable(name: "sz", scope: !174, file: !3, line: 133, type: !12)
!178 = !DILocalVariable(name: "__start", scope: !174, file: !3, line: 133, type: !12)
!179 = !DILocalVariable(name: "__UNIQUE_ID___x11", scope: !180, file: !3, line: 133, type: !12)
!180 = distinct !DILexicalBlock(scope: !174, file: !3, line: 133, column: 9)
!181 = !DILocalVariable(name: "__UNIQUE_ID___y12", scope: !180, file: !3, line: 133, type: !12)
!182 = !DILabel(scope: !174, name: "out", file: !3, line: 133)
!183 = !DILocation(line: 131, column: 51, scope: !166)
!184 = !DILocation(line: 131, column: 71, scope: !166)
!185 = !DILocation(line: 131, column: 92, scope: !166)
!186 = !DILocation(line: 133, column: 9, scope: !174)
!187 = !DILocation(line: 133, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !174, file: !3, line: 133, column: 9)
!189 = !DILocation(line: 133, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !174, file: !3, line: 133, column: 9)
!191 = !DILocation(line: 133, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !3, line: 133, column: 9)
!193 = !DILocation(line: 133, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 133, column: 9)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 133, column: 9)
!196 = !DILocation(line: 133, column: 9, scope: !195)
!197 = distinct !{!197, !189, !189, !90, !91}
!198 = !DILocation(line: 133, column: 9, scope: !180)
!199 = !DILocation(line: 133, column: 9, scope: !166)
!200 = !DILocation(line: 133, column: 2, scope: !166)
!201 = distinct !DISubprogram(name: "__find_nth_bit", scope: !3, file: !3, line: 138, type: !167, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!202 = !{!203, !204, !205, !206, !208, !209, !210, !211, !212, !213, !215, !216}
!203 = !DILocalVariable(name: "addr", arg: 1, scope: !201, file: !3, line: 138, type: !19)
!204 = !DILocalVariable(name: "size", arg: 2, scope: !201, file: !3, line: 138, type: !12)
!205 = !DILocalVariable(name: "n", arg: 3, scope: !201, file: !3, line: 138, type: !12)
!206 = !DILocalVariable(name: "sz", scope: !207, file: !3, line: 140, type: !12)
!207 = distinct !DILexicalBlock(scope: !201, file: !3, line: 140, column: 9)
!208 = !DILocalVariable(name: "nr", scope: !207, file: !3, line: 140, type: !12)
!209 = !DILocalVariable(name: "idx", scope: !207, file: !3, line: 140, type: !12)
!210 = !DILocalVariable(name: "w", scope: !207, file: !3, line: 140, type: !12)
!211 = !DILocalVariable(name: "tmp", scope: !207, file: !3, line: 140, type: !12)
!212 = !DILabel(scope: !207, name: "found", file: !3, line: 140)
!213 = !DILocalVariable(name: "__UNIQUE_ID___x14", scope: !214, file: !3, line: 140, type: !12)
!214 = distinct !DILexicalBlock(scope: !207, file: !3, line: 140, column: 9)
!215 = !DILocalVariable(name: "__UNIQUE_ID___y15", scope: !214, file: !3, line: 140, type: !12)
!216 = !DILabel(scope: !207, name: "out", file: !3, line: 140)
!217 = !DILocation(line: 138, column: 51, scope: !201)
!218 = !DILocation(line: 138, column: 71, scope: !201)
!219 = !DILocation(line: 138, column: 91, scope: !201)
!220 = !DILocation(line: 140, column: 9, scope: !207)
!221 = !DILocation(line: 140, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !207, file: !3, line: 140, column: 9)
!223 = !DILocation(line: 140, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !3, line: 140, column: 9)
!225 = !DILocation(line: 140, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 140, column: 9)
!227 = distinct !DILexicalBlock(scope: !224, file: !3, line: 140, column: 9)
!228 = !DILocation(line: 140, column: 9, scope: !227)
!229 = !DILocation(line: 140, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 140, column: 9)
!231 = distinct !{!231, !221, !221, !90, !91}
!232 = !DILocation(line: 140, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !207, file: !3, line: 140, column: 9)
!234 = !DILocation(line: 140, column: 9, scope: !214)
!235 = !DILocation(line: 140, column: 9, scope: !201)
!236 = !DILocation(line: 140, column: 2, scope: !201)
!237 = distinct !DISubprogram(name: "hweight_long", scope: !238, file: !238, line: 95, type: !96, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!238 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!239 = !{!240}
!240 = !DILocalVariable(name: "w", arg: 1, scope: !237, file: !238, line: 95, type: !12)
!241 = !DILocation(line: 95, column: 65, scope: !237)
!242 = !DILocation(line: 97, column: 41, scope: !237)
!243 = !DILocation(line: 97, column: 2, scope: !237)
!244 = distinct !DISubprogram(name: "fns", scope: !238, file: !238, line: 256, type: !245, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!12, !12, !7}
!247 = !{!248, !249, !250}
!248 = !DILocalVariable(name: "word", arg: 1, scope: !244, file: !238, line: 256, type: !12)
!249 = !DILocalVariable(name: "n", arg: 2, scope: !244, file: !238, line: 256, type: !7)
!250 = !DILocalVariable(name: "bit", scope: !244, file: !238, line: 258, type: !7)
!251 = !DILocation(line: 256, column: 47, scope: !244)
!252 = !DILocation(line: 256, column: 66, scope: !244)
!253 = !DILocation(line: 258, column: 2, scope: !244)
!254 = !DILocation(line: 258, column: 15, scope: !244)
!255 = !DILocation(line: 260, column: 2, scope: !244)
!256 = !DILocation(line: 260, column: 9, scope: !244)
!257 = !DILocation(line: 261, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !244, file: !238, line: 260, column: 15)
!259 = !DILocation(line: 261, column: 7, scope: !258)
!260 = !DILocation(line: 262, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !238, line: 262, column: 7)
!262 = !DILocation(line: 262, column: 11, scope: !261)
!263 = !DILocation(line: 262, column: 7, scope: !258)
!264 = !DILocation(line: 263, column: 11, scope: !261)
!265 = !DILocation(line: 263, column: 4, scope: !261)
!266 = !DILocation(line: 264, column: 3, scope: !258)
!267 = distinct !{!267, !255, !268, !90, !91}
!268 = !DILocation(line: 265, column: 2, scope: !244)
!269 = !DILocation(line: 267, column: 2, scope: !244)
!270 = !DILocation(line: 268, column: 1, scope: !244)
!271 = distinct !DISubprogram(name: "__find_nth_and_bit", scope: !3, file: !3, line: 144, type: !272, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !274)
!272 = !DISubroutineType(types: !273)
!273 = !{!12, !19, !19, !12, !12}
!274 = !{!275, !276, !277, !278, !279, !281, !282, !283, !284, !285, !286, !288, !289}
!275 = !DILocalVariable(name: "addr1", arg: 1, scope: !271, file: !3, line: 144, type: !19)
!276 = !DILocalVariable(name: "addr2", arg: 2, scope: !271, file: !3, line: 144, type: !19)
!277 = !DILocalVariable(name: "size", arg: 3, scope: !271, file: !3, line: 145, type: !12)
!278 = !DILocalVariable(name: "n", arg: 4, scope: !271, file: !3, line: 145, type: !12)
!279 = !DILocalVariable(name: "sz", scope: !280, file: !3, line: 147, type: !12)
!280 = distinct !DILexicalBlock(scope: !271, file: !3, line: 147, column: 9)
!281 = !DILocalVariable(name: "nr", scope: !280, file: !3, line: 147, type: !12)
!282 = !DILocalVariable(name: "idx", scope: !280, file: !3, line: 147, type: !12)
!283 = !DILocalVariable(name: "w", scope: !280, file: !3, line: 147, type: !12)
!284 = !DILocalVariable(name: "tmp", scope: !280, file: !3, line: 147, type: !12)
!285 = !DILabel(scope: !280, name: "found", file: !3, line: 147)
!286 = !DILocalVariable(name: "__UNIQUE_ID___x17", scope: !287, file: !3, line: 147, type: !12)
!287 = distinct !DILexicalBlock(scope: !280, file: !3, line: 147, column: 9)
!288 = !DILocalVariable(name: "__UNIQUE_ID___y18", scope: !287, file: !3, line: 147, type: !12)
!289 = !DILabel(scope: !280, name: "out", file: !3, line: 147)
!290 = !DILocation(line: 144, column: 55, scope: !271)
!291 = !DILocation(line: 144, column: 83, scope: !271)
!292 = !DILocation(line: 145, column: 20, scope: !271)
!293 = !DILocation(line: 145, column: 40, scope: !271)
!294 = !DILocation(line: 147, column: 9, scope: !280)
!295 = !DILocation(line: 147, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !280, file: !3, line: 147, column: 9)
!297 = !DILocation(line: 147, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !296, file: !3, line: 147, column: 9)
!299 = !DILocation(line: 147, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 147, column: 9)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 147, column: 9)
!302 = !DILocation(line: 147, column: 9, scope: !301)
!303 = !DILocation(line: 147, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !3, line: 147, column: 9)
!305 = distinct !{!305, !295, !295, !90, !91}
!306 = !DILocation(line: 147, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !280, file: !3, line: 147, column: 9)
!308 = !DILocation(line: 147, column: 9, scope: !287)
!309 = !DILocation(line: 147, column: 9, scope: !271)
!310 = !DILocation(line: 147, column: 2, scope: !271)
!311 = distinct !DISubprogram(name: "__find_nth_andnot_bit", scope: !3, file: !3, line: 151, type: !272, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !315, !316, !317, !319, !320, !321, !322, !323, !324, !326, !327}
!313 = !DILocalVariable(name: "addr1", arg: 1, scope: !311, file: !3, line: 151, type: !19)
!314 = !DILocalVariable(name: "addr2", arg: 2, scope: !311, file: !3, line: 151, type: !19)
!315 = !DILocalVariable(name: "size", arg: 3, scope: !311, file: !3, line: 152, type: !12)
!316 = !DILocalVariable(name: "n", arg: 4, scope: !311, file: !3, line: 152, type: !12)
!317 = !DILocalVariable(name: "sz", scope: !318, file: !3, line: 154, type: !12)
!318 = distinct !DILexicalBlock(scope: !311, file: !3, line: 154, column: 9)
!319 = !DILocalVariable(name: "nr", scope: !318, file: !3, line: 154, type: !12)
!320 = !DILocalVariable(name: "idx", scope: !318, file: !3, line: 154, type: !12)
!321 = !DILocalVariable(name: "w", scope: !318, file: !3, line: 154, type: !12)
!322 = !DILocalVariable(name: "tmp", scope: !318, file: !3, line: 154, type: !12)
!323 = !DILabel(scope: !318, name: "found", file: !3, line: 154)
!324 = !DILocalVariable(name: "__UNIQUE_ID___x20", scope: !325, file: !3, line: 154, type: !12)
!325 = distinct !DILexicalBlock(scope: !318, file: !3, line: 154, column: 9)
!326 = !DILocalVariable(name: "__UNIQUE_ID___y21", scope: !325, file: !3, line: 154, type: !12)
!327 = !DILabel(scope: !318, name: "out", file: !3, line: 154)
!328 = !DILocation(line: 151, column: 58, scope: !311)
!329 = !DILocation(line: 151, column: 86, scope: !311)
!330 = !DILocation(line: 152, column: 20, scope: !311)
!331 = !DILocation(line: 152, column: 40, scope: !311)
!332 = !DILocation(line: 154, column: 9, scope: !318)
!333 = !DILocation(line: 154, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !318, file: !3, line: 154, column: 9)
!335 = !DILocation(line: 154, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !3, line: 154, column: 9)
!337 = !DILocation(line: 154, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 154, column: 9)
!339 = distinct !DILexicalBlock(scope: !336, file: !3, line: 154, column: 9)
!340 = !DILocation(line: 154, column: 9, scope: !339)
!341 = !DILocation(line: 154, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 154, column: 9)
!343 = distinct !{!343, !333, !333, !90, !91}
!344 = !DILocation(line: 154, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !318, file: !3, line: 154, column: 9)
!346 = !DILocation(line: 154, column: 9, scope: !325)
!347 = !DILocation(line: 154, column: 9, scope: !311)
!348 = !DILocation(line: 154, column: 2, scope: !311)
!349 = distinct !DISubprogram(name: "__find_nth_and_andnot_bit", scope: !3, file: !3, line: 158, type: !350, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!12, !19, !19, !19, !12, !12}
!352 = !{!353, !354, !355, !356, !357, !358, !360, !361, !362, !363, !364, !365, !367, !368}
!353 = !DILocalVariable(name: "addr1", arg: 1, scope: !349, file: !3, line: 158, type: !19)
!354 = !DILocalVariable(name: "addr2", arg: 2, scope: !349, file: !3, line: 159, type: !19)
!355 = !DILocalVariable(name: "addr3", arg: 3, scope: !349, file: !3, line: 160, type: !19)
!356 = !DILocalVariable(name: "size", arg: 4, scope: !349, file: !3, line: 161, type: !12)
!357 = !DILocalVariable(name: "n", arg: 5, scope: !349, file: !3, line: 161, type: !12)
!358 = !DILocalVariable(name: "sz", scope: !359, file: !3, line: 163, type: !12)
!359 = distinct !DILexicalBlock(scope: !349, file: !3, line: 163, column: 9)
!360 = !DILocalVariable(name: "nr", scope: !359, file: !3, line: 163, type: !12)
!361 = !DILocalVariable(name: "idx", scope: !359, file: !3, line: 163, type: !12)
!362 = !DILocalVariable(name: "w", scope: !359, file: !3, line: 163, type: !12)
!363 = !DILocalVariable(name: "tmp", scope: !359, file: !3, line: 163, type: !12)
!364 = !DILabel(scope: !359, name: "found", file: !3, line: 163)
!365 = !DILocalVariable(name: "__UNIQUE_ID___x23", scope: !366, file: !3, line: 163, type: !12)
!366 = distinct !DILexicalBlock(scope: !359, file: !3, line: 163, column: 9)
!367 = !DILocalVariable(name: "__UNIQUE_ID___y24", scope: !366, file: !3, line: 163, type: !12)
!368 = !DILabel(scope: !359, name: "out", file: !3, line: 163)
!369 = !DILocation(line: 158, column: 62, scope: !349)
!370 = !DILocation(line: 159, column: 27, scope: !349)
!371 = !DILocation(line: 160, column: 27, scope: !349)
!372 = !DILocation(line: 161, column: 20, scope: !349)
!373 = !DILocation(line: 161, column: 40, scope: !349)
!374 = !DILocation(line: 163, column: 9, scope: !359)
!375 = !DILocation(line: 163, column: 9, scope: !376)
!376 = distinct !DILexicalBlock(scope: !359, file: !3, line: 163, column: 9)
!377 = !DILocation(line: 163, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !3, line: 163, column: 9)
!379 = !DILocation(line: 163, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 163, column: 9)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 163, column: 9)
!382 = !DILocation(line: 163, column: 9, scope: !381)
!383 = !DILocation(line: 163, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !3, line: 163, column: 9)
!385 = distinct !{!385, !375, !375, !90, !91}
!386 = !DILocation(line: 163, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !359, file: !3, line: 163, column: 9)
!388 = !DILocation(line: 163, column: 9, scope: !366)
!389 = !DILocation(line: 163, column: 9, scope: !349)
!390 = !DILocation(line: 163, column: 2, scope: !349)
!391 = distinct !DISubprogram(name: "_find_next_and_bit", scope: !3, file: !3, line: 168, type: !272, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!392 = !{!393, !394, !395, !396, !397, !399, !400, !401, !402, !403, !405, !406}
!393 = !DILocalVariable(name: "addr1", arg: 1, scope: !391, file: !3, line: 168, type: !19)
!394 = !DILocalVariable(name: "addr2", arg: 2, scope: !391, file: !3, line: 168, type: !19)
!395 = !DILocalVariable(name: "nbits", arg: 3, scope: !391, file: !3, line: 169, type: !12)
!396 = !DILocalVariable(name: "start", arg: 4, scope: !391, file: !3, line: 169, type: !12)
!397 = !DILocalVariable(name: "mask", scope: !398, file: !3, line: 171, type: !12)
!398 = distinct !DILexicalBlock(scope: !391, file: !3, line: 171, column: 9)
!399 = !DILocalVariable(name: "idx", scope: !398, file: !3, line: 171, type: !12)
!400 = !DILocalVariable(name: "tmp", scope: !398, file: !3, line: 171, type: !12)
!401 = !DILocalVariable(name: "sz", scope: !398, file: !3, line: 171, type: !12)
!402 = !DILocalVariable(name: "__start", scope: !398, file: !3, line: 171, type: !12)
!403 = !DILocalVariable(name: "__UNIQUE_ID___x26", scope: !404, file: !3, line: 171, type: !12)
!404 = distinct !DILexicalBlock(scope: !398, file: !3, line: 171, column: 9)
!405 = !DILocalVariable(name: "__UNIQUE_ID___y27", scope: !404, file: !3, line: 171, type: !12)
!406 = !DILabel(scope: !398, name: "out", file: !3, line: 171)
!407 = !DILocation(line: 168, column: 55, scope: !391)
!408 = !DILocation(line: 168, column: 83, scope: !391)
!409 = !DILocation(line: 169, column: 20, scope: !391)
!410 = !DILocation(line: 169, column: 41, scope: !391)
!411 = !DILocation(line: 171, column: 9, scope: !398)
!412 = !DILocation(line: 171, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !398, file: !3, line: 171, column: 9)
!414 = !DILocation(line: 171, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !398, file: !3, line: 171, column: 9)
!416 = !DILocation(line: 171, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !415, file: !3, line: 171, column: 9)
!418 = !DILocation(line: 171, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 171, column: 9)
!420 = distinct !DILexicalBlock(scope: !417, file: !3, line: 171, column: 9)
!421 = !DILocation(line: 171, column: 9, scope: !420)
!422 = distinct !{!422, !414, !414, !90, !91}
!423 = !DILocation(line: 171, column: 9, scope: !404)
!424 = !DILocation(line: 171, column: 9, scope: !391)
!425 = !DILocation(line: 171, column: 2, scope: !391)
!426 = distinct !DISubprogram(name: "_find_next_andnot_bit", scope: !3, file: !3, line: 177, type: !272, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!427 = !{!428, !429, !430, !431, !432, !434, !435, !436, !437, !438, !440, !441}
!428 = !DILocalVariable(name: "addr1", arg: 1, scope: !426, file: !3, line: 177, type: !19)
!429 = !DILocalVariable(name: "addr2", arg: 2, scope: !426, file: !3, line: 177, type: !19)
!430 = !DILocalVariable(name: "nbits", arg: 3, scope: !426, file: !3, line: 178, type: !12)
!431 = !DILocalVariable(name: "start", arg: 4, scope: !426, file: !3, line: 178, type: !12)
!432 = !DILocalVariable(name: "mask", scope: !433, file: !3, line: 180, type: !12)
!433 = distinct !DILexicalBlock(scope: !426, file: !3, line: 180, column: 9)
!434 = !DILocalVariable(name: "idx", scope: !433, file: !3, line: 180, type: !12)
!435 = !DILocalVariable(name: "tmp", scope: !433, file: !3, line: 180, type: !12)
!436 = !DILocalVariable(name: "sz", scope: !433, file: !3, line: 180, type: !12)
!437 = !DILocalVariable(name: "__start", scope: !433, file: !3, line: 180, type: !12)
!438 = !DILocalVariable(name: "__UNIQUE_ID___x29", scope: !439, file: !3, line: 180, type: !12)
!439 = distinct !DILexicalBlock(scope: !433, file: !3, line: 180, column: 9)
!440 = !DILocalVariable(name: "__UNIQUE_ID___y30", scope: !439, file: !3, line: 180, type: !12)
!441 = !DILabel(scope: !433, name: "out", file: !3, line: 180)
!442 = !DILocation(line: 177, column: 58, scope: !426)
!443 = !DILocation(line: 177, column: 86, scope: !426)
!444 = !DILocation(line: 178, column: 20, scope: !426)
!445 = !DILocation(line: 178, column: 41, scope: !426)
!446 = !DILocation(line: 180, column: 9, scope: !433)
!447 = !DILocation(line: 180, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !433, file: !3, line: 180, column: 9)
!449 = !DILocation(line: 180, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !433, file: !3, line: 180, column: 9)
!451 = !DILocation(line: 180, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !450, file: !3, line: 180, column: 9)
!453 = !DILocation(line: 180, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 180, column: 9)
!455 = distinct !DILexicalBlock(scope: !452, file: !3, line: 180, column: 9)
!456 = !DILocation(line: 180, column: 9, scope: !455)
!457 = distinct !{!457, !449, !449, !90, !91}
!458 = !DILocation(line: 180, column: 9, scope: !439)
!459 = !DILocation(line: 180, column: 9, scope: !426)
!460 = !DILocation(line: 180, column: 2, scope: !426)
!461 = distinct !DISubprogram(name: "_find_next_or_bit", scope: !3, file: !3, line: 186, type: !272, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!462 = !{!463, !464, !465, !466, !467, !469, !470, !471, !472, !473, !475, !476}
!463 = !DILocalVariable(name: "addr1", arg: 1, scope: !461, file: !3, line: 186, type: !19)
!464 = !DILocalVariable(name: "addr2", arg: 2, scope: !461, file: !3, line: 186, type: !19)
!465 = !DILocalVariable(name: "nbits", arg: 3, scope: !461, file: !3, line: 187, type: !12)
!466 = !DILocalVariable(name: "start", arg: 4, scope: !461, file: !3, line: 187, type: !12)
!467 = !DILocalVariable(name: "mask", scope: !468, file: !3, line: 189, type: !12)
!468 = distinct !DILexicalBlock(scope: !461, file: !3, line: 189, column: 9)
!469 = !DILocalVariable(name: "idx", scope: !468, file: !3, line: 189, type: !12)
!470 = !DILocalVariable(name: "tmp", scope: !468, file: !3, line: 189, type: !12)
!471 = !DILocalVariable(name: "sz", scope: !468, file: !3, line: 189, type: !12)
!472 = !DILocalVariable(name: "__start", scope: !468, file: !3, line: 189, type: !12)
!473 = !DILocalVariable(name: "__UNIQUE_ID___x32", scope: !474, file: !3, line: 189, type: !12)
!474 = distinct !DILexicalBlock(scope: !468, file: !3, line: 189, column: 9)
!475 = !DILocalVariable(name: "__UNIQUE_ID___y33", scope: !474, file: !3, line: 189, type: !12)
!476 = !DILabel(scope: !468, name: "out", file: !3, line: 189)
!477 = !DILocation(line: 186, column: 54, scope: !461)
!478 = !DILocation(line: 186, column: 82, scope: !461)
!479 = !DILocation(line: 187, column: 20, scope: !461)
!480 = !DILocation(line: 187, column: 41, scope: !461)
!481 = !DILocation(line: 189, column: 9, scope: !468)
!482 = !DILocation(line: 189, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !468, file: !3, line: 189, column: 9)
!484 = !DILocation(line: 189, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !468, file: !3, line: 189, column: 9)
!486 = !DILocation(line: 189, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !485, file: !3, line: 189, column: 9)
!488 = !DILocation(line: 189, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 189, column: 9)
!490 = distinct !DILexicalBlock(scope: !487, file: !3, line: 189, column: 9)
!491 = !DILocation(line: 189, column: 9, scope: !490)
!492 = distinct !{!492, !484, !484, !90, !91}
!493 = !DILocation(line: 189, column: 9, scope: !474)
!494 = !DILocation(line: 189, column: 9, scope: !461)
!495 = !DILocation(line: 189, column: 2, scope: !461)
!496 = distinct !DISubprogram(name: "_find_next_zero_bit", scope: !3, file: !3, line: 195, type: !167, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{!498, !499, !500, !501, !503, !504, !505, !506, !507, !509, !510}
!498 = !DILocalVariable(name: "addr", arg: 1, scope: !496, file: !3, line: 195, type: !19)
!499 = !DILocalVariable(name: "nbits", arg: 2, scope: !496, file: !3, line: 195, type: !12)
!500 = !DILocalVariable(name: "start", arg: 3, scope: !496, file: !3, line: 196, type: !12)
!501 = !DILocalVariable(name: "mask", scope: !502, file: !3, line: 198, type: !12)
!502 = distinct !DILexicalBlock(scope: !496, file: !3, line: 198, column: 9)
!503 = !DILocalVariable(name: "idx", scope: !502, file: !3, line: 198, type: !12)
!504 = !DILocalVariable(name: "tmp", scope: !502, file: !3, line: 198, type: !12)
!505 = !DILocalVariable(name: "sz", scope: !502, file: !3, line: 198, type: !12)
!506 = !DILocalVariable(name: "__start", scope: !502, file: !3, line: 198, type: !12)
!507 = !DILocalVariable(name: "__UNIQUE_ID___x35", scope: !508, file: !3, line: 198, type: !12)
!508 = distinct !DILexicalBlock(scope: !502, file: !3, line: 198, column: 9)
!509 = !DILocalVariable(name: "__UNIQUE_ID___y36", scope: !508, file: !3, line: 198, type: !12)
!510 = !DILabel(scope: !502, name: "out", file: !3, line: 198)
!511 = !DILocation(line: 195, column: 56, scope: !496)
!512 = !DILocation(line: 195, column: 76, scope: !496)
!513 = !DILocation(line: 196, column: 21, scope: !496)
!514 = !DILocation(line: 198, column: 9, scope: !502)
!515 = !DILocation(line: 198, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !502, file: !3, line: 198, column: 9)
!517 = !DILocation(line: 198, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !502, file: !3, line: 198, column: 9)
!519 = !DILocation(line: 198, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !3, line: 198, column: 9)
!521 = !DILocation(line: 198, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 198, column: 9)
!523 = distinct !DILexicalBlock(scope: !520, file: !3, line: 198, column: 9)
!524 = !DILocation(line: 198, column: 9, scope: !523)
!525 = distinct !{!525, !517, !517, !90, !91}
!526 = !DILocation(line: 198, column: 9, scope: !508)
!527 = !DILocation(line: 198, column: 9, scope: !496)
!528 = !DILocation(line: 198, column: 2, scope: !496)
!529 = distinct !DISubprogram(name: "_find_last_bit", scope: !3, file: !3, line: 204, type: !63, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!530 = !{!531, !532, !533, !536}
!531 = !DILocalVariable(name: "addr", arg: 1, scope: !529, file: !3, line: 204, type: !19)
!532 = !DILocalVariable(name: "size", arg: 2, scope: !529, file: !3, line: 204, type: !12)
!533 = !DILocalVariable(name: "val", scope: !534, file: !3, line: 207, type: !12)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 206, column: 12)
!535 = distinct !DILexicalBlock(scope: !529, file: !3, line: 206, column: 6)
!536 = !DILocalVariable(name: "idx", scope: !534, file: !3, line: 208, type: !12)
!537 = !DILocation(line: 204, column: 51, scope: !529)
!538 = !DILocation(line: 204, column: 71, scope: !529)
!539 = !DILocation(line: 206, column: 6, scope: !535)
!540 = !DILocation(line: 206, column: 6, scope: !529)
!541 = !DILocation(line: 207, column: 3, scope: !534)
!542 = !DILocation(line: 207, column: 17, scope: !534)
!543 = !DILocation(line: 207, column: 23, scope: !534)
!544 = !DILocation(line: 208, column: 3, scope: !534)
!545 = !DILocation(line: 208, column: 17, scope: !534)
!546 = !DILocation(line: 208, column: 24, scope: !534)
!547 = !DILocation(line: 208, column: 28, scope: !534)
!548 = !DILocation(line: 208, column: 32, scope: !534)
!549 = !DILocation(line: 210, column: 3, scope: !534)
!550 = !DILocation(line: 211, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !534, file: !3, line: 210, column: 6)
!552 = !DILocation(line: 211, column: 16, scope: !551)
!553 = !DILocation(line: 211, column: 8, scope: !551)
!554 = !DILocation(line: 212, column: 8, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 212, column: 8)
!556 = !DILocation(line: 212, column: 8, scope: !551)
!557 = !DILocation(line: 213, column: 12, scope: !555)
!558 = !DILocation(line: 213, column: 16, scope: !555)
!559 = !DILocation(line: 213, column: 40, scope: !555)
!560 = !DILocation(line: 213, column: 34, scope: !555)
!561 = !DILocation(line: 213, column: 32, scope: !555)
!562 = !DILocation(line: 213, column: 5, scope: !555)
!563 = !DILocation(line: 215, column: 8, scope: !551)
!564 = !DILocation(line: 216, column: 3, scope: !551)
!565 = !DILocation(line: 216, column: 15, scope: !534)
!566 = distinct !{!566, !549, !567, !90, !91}
!567 = !DILocation(line: 216, column: 17, scope: !534)
!568 = !DILocation(line: 217, column: 2, scope: !535)
!569 = !DILocation(line: 217, column: 2, scope: !534)
!570 = !DILocation(line: 218, column: 9, scope: !529)
!571 = !DILocation(line: 218, column: 2, scope: !529)
!572 = !DILocation(line: 219, column: 1, scope: !529)
!573 = distinct !DISubprogram(name: "__fls", scope: !95, file: !95, line: 294, type: !96, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!574 = !{!575}
!575 = !DILocalVariable(name: "word", arg: 1, scope: !573, file: !95, line: 294, type: !12)
!576 = !DILocation(line: 294, column: 58, scope: !573)
!577 = !DILocation(line: 298, column: 14, scope: !573)
!578 = !DILocation(line: 296, column: 2, scope: !573)
!579 = !{i64 253028}
!580 = !DILocation(line: 299, column: 9, scope: !573)
!581 = !DILocation(line: 299, column: 2, scope: !573)
!582 = distinct !DISubprogram(name: "find_next_clump8", scope: !3, file: !3, line: 223, type: !583, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{!12, !21, !19, !12, !12}
!585 = !{!586, !587, !588, !589}
!586 = !DILocalVariable(name: "clump", arg: 1, scope: !582, file: !3, line: 223, type: !21)
!587 = !DILocalVariable(name: "addr", arg: 2, scope: !582, file: !3, line: 223, type: !19)
!588 = !DILocalVariable(name: "size", arg: 3, scope: !582, file: !3, line: 224, type: !12)
!589 = !DILocalVariable(name: "offset", arg: 4, scope: !582, file: !3, line: 224, type: !12)
!590 = !DILocation(line: 223, column: 47, scope: !582)
!591 = !DILocation(line: 223, column: 75, scope: !582)
!592 = !DILocation(line: 224, column: 25, scope: !582)
!593 = !DILocation(line: 224, column: 45, scope: !582)
!594 = !DILocation(line: 226, column: 25, scope: !582)
!595 = !DILocation(line: 226, column: 31, scope: !582)
!596 = !DILocation(line: 226, column: 37, scope: !582)
!597 = !DILocation(line: 226, column: 11, scope: !582)
!598 = !DILocation(line: 226, column: 9, scope: !582)
!599 = !DILocation(line: 227, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !582, file: !3, line: 227, column: 6)
!601 = !DILocation(line: 227, column: 16, scope: !600)
!602 = !DILocation(line: 227, column: 13, scope: !600)
!603 = !DILocation(line: 227, column: 6, scope: !582)
!604 = !DILocation(line: 228, column: 10, scope: !600)
!605 = !DILocation(line: 228, column: 3, scope: !600)
!606 = !DILocation(line: 230, column: 11, scope: !582)
!607 = !DILocation(line: 230, column: 9, scope: !582)
!608 = !DILocation(line: 231, column: 29, scope: !582)
!609 = !DILocation(line: 231, column: 35, scope: !582)
!610 = !DILocation(line: 231, column: 11, scope: !582)
!611 = !DILocation(line: 231, column: 3, scope: !582)
!612 = !DILocation(line: 231, column: 9, scope: !582)
!613 = !DILocation(line: 233, column: 9, scope: !582)
!614 = !DILocation(line: 233, column: 2, scope: !582)
!615 = !DILocation(line: 234, column: 1, scope: !582)
!616 = distinct !DISubprogram(name: "find_next_bit", scope: !617, file: !617, line: 54, type: !167, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!617 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!618 = !{!619, !620, !621, !622}
!619 = !DILocalVariable(name: "addr", arg: 1, scope: !616, file: !617, line: 54, type: !19)
!620 = !DILocalVariable(name: "size", arg: 2, scope: !616, file: !617, line: 54, type: !12)
!621 = !DILocalVariable(name: "offset", arg: 3, scope: !616, file: !617, line: 55, type: !12)
!622 = !DILocalVariable(name: "val", scope: !623, file: !617, line: 58, type: !12)
!623 = distinct !DILexicalBlock(scope: !624, file: !617, line: 57, column: 31)
!624 = distinct !DILexicalBlock(scope: !616, file: !617, line: 57, column: 6)
!625 = !DILocation(line: 54, column: 50, scope: !616)
!626 = !DILocation(line: 54, column: 70, scope: !616)
!627 = !DILocation(line: 55, column: 22, scope: !616)
!628 = !DILocation(line: 57, column: 6, scope: !624)
!629 = !DILocation(line: 57, column: 6, scope: !616)
!630 = !DILocation(line: 58, column: 3, scope: !623)
!631 = !DILocation(line: 58, column: 17, scope: !623)
!632 = !DILocation(line: 60, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !623, file: !617, line: 60, column: 7)
!634 = !DILocation(line: 60, column: 7, scope: !623)
!635 = !DILocation(line: 61, column: 11, scope: !633)
!636 = !DILocation(line: 61, column: 4, scope: !633)
!637 = !DILocation(line: 63, column: 10, scope: !623)
!638 = !DILocation(line: 63, column: 9, scope: !623)
!639 = !DILocation(line: 63, column: 17, scope: !623)
!640 = !DILocation(line: 63, column: 15, scope: !623)
!641 = !DILocation(line: 63, column: 7, scope: !623)
!642 = !DILocation(line: 64, column: 10, scope: !623)
!643 = !DILocation(line: 64, column: 16, scope: !623)
!644 = !DILocation(line: 64, column: 29, scope: !623)
!645 = !DILocation(line: 64, column: 3, scope: !623)
!646 = !DILocation(line: 65, column: 2, scope: !624)
!647 = !DILocation(line: 67, column: 24, scope: !616)
!648 = !DILocation(line: 67, column: 30, scope: !616)
!649 = !DILocation(line: 67, column: 36, scope: !616)
!650 = !DILocation(line: 67, column: 9, scope: !616)
!651 = !DILocation(line: 67, column: 2, scope: !616)
!652 = !DILocation(line: 68, column: 1, scope: !616)
!653 = distinct !DISubprogram(name: "bitmap_get_value8", scope: !654, file: !654, line: 595, type: !63, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!654 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!655 = !{!656, !657, !658, !664}
!656 = !DILocalVariable(name: "map", arg: 1, scope: !653, file: !654, line: 595, type: !19)
!657 = !DILocalVariable(name: "start", arg: 2, scope: !653, file: !654, line: 596, type: !12)
!658 = !DILocalVariable(name: "index", scope: !653, file: !654, line: 598, type: !659)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 61, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !662, line: 72, baseType: !663)
!662 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !662, line: 16, baseType: !12)
!664 = !DILocalVariable(name: "offset", scope: !653, file: !654, line: 599, type: !20)
!665 = !DILocation(line: 595, column: 68, scope: !653)
!666 = !DILocation(line: 596, column: 26, scope: !653)
!667 = !DILocation(line: 598, column: 2, scope: !653)
!668 = !DILocation(line: 598, column: 15, scope: !653)
!669 = !DILocation(line: 598, column: 23, scope: !653)
!670 = !DILocation(line: 599, column: 2, scope: !653)
!671 = !DILocation(line: 599, column: 22, scope: !653)
!672 = !DILocation(line: 599, column: 31, scope: !653)
!673 = !DILocation(line: 599, column: 37, scope: !653)
!674 = !DILocation(line: 601, column: 10, scope: !653)
!675 = !DILocation(line: 601, column: 14, scope: !653)
!676 = !DILocation(line: 601, column: 24, scope: !653)
!677 = !DILocation(line: 601, column: 21, scope: !653)
!678 = !DILocation(line: 601, column: 32, scope: !653)
!679 = !DILocation(line: 602, column: 1, scope: !653)
!680 = !DILocation(line: 601, column: 2, scope: !653)
!681 = distinct !DISubprogram(name: "__arch_hweight64", scope: !682, file: !682, line: 43, type: !683, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!682 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!683 = !DISubroutineType(types: !684)
!684 = !{!12, !14}
!685 = !{!686, !687}
!686 = !DILocalVariable(name: "w", arg: 1, scope: !681, file: !682, line: 43, type: !14)
!687 = !DILocalVariable(name: "res", scope: !681, file: !682, line: 45, type: !12)
!688 = !DILocation(line: 43, column: 61, scope: !681)
!689 = !DILocation(line: 45, column: 2, scope: !681)
!690 = !DILocation(line: 45, column: 16, scope: !681)
!691 = !DILocation(line: 49, column: 15, scope: !681)
!692 = !DILocation(line: 47, column: 2, scope: !681)
!693 = !{i64 2147804897, i64 2147804925, i64 2147804931, i64 2147804947, i64 2147804963, i64 2147804990, i64 2147805323, i64 2147804623, i64 2147805329, i64 2147805377, i64 2147805441, i64 2147805505, i64 2147805562, i64 2147804704, i64 2147804729, i64 2147805769, i64 2147805899, i64 2147805830, i64 2147805913, i64 2147804821}
!694 = !DILocation(line: 51, column: 9, scope: !681)
!695 = !DILocation(line: 52, column: 1, scope: !681)
!696 = !DILocation(line: 51, column: 2, scope: !681)
!697 = distinct !DISubprogram(name: "generic___clear_bit", scope: !698, file: !698, line: 37, type: !699, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !703)
!698 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!699 = !DISubroutineType(types: !700)
!700 = !{null, !12, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!703 = !{!704, !705, !706, !707}
!704 = !DILocalVariable(name: "nr", arg: 1, scope: !697, file: !698, line: 37, type: !12)
!705 = !DILocalVariable(name: "addr", arg: 2, scope: !697, file: !698, line: 37, type: !701)
!706 = !DILocalVariable(name: "mask", scope: !697, file: !698, line: 39, type: !12)
!707 = !DILocalVariable(name: "p", scope: !697, file: !698, line: 40, type: !21)
!708 = !DILocation(line: 37, column: 35, scope: !697)
!709 = !DILocation(line: 37, column: 63, scope: !697)
!710 = !DILocation(line: 39, column: 2, scope: !697)
!711 = !DILocation(line: 39, column: 16, scope: !697)
!712 = !DILocation(line: 39, column: 23, scope: !697)
!713 = !DILocation(line: 40, column: 2, scope: !697)
!714 = !DILocation(line: 40, column: 17, scope: !697)
!715 = !DILocation(line: 40, column: 39, scope: !697)
!716 = !DILocation(line: 40, column: 47, scope: !697)
!717 = !DILocation(line: 40, column: 45, scope: !697)
!718 = !DILocation(line: 42, column: 9, scope: !697)
!719 = !DILocation(line: 42, column: 8, scope: !697)
!720 = !DILocation(line: 42, column: 3, scope: !697)
!721 = !DILocation(line: 42, column: 5, scope: !697)
!722 = !DILocation(line: 43, column: 1, scope: !697)
!723 = distinct !DISubprogram(name: "___clear_bit", scope: !724, file: !724, line: 42, type: !699, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!724 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!725 = !{!726, !727}
!726 = !DILocalVariable(name: "nr", arg: 1, scope: !723, file: !724, line: 42, type: !12)
!727 = !DILocalVariable(name: "addr", arg: 2, scope: !723, file: !724, line: 42, type: !701)
!728 = !DILocation(line: 42, column: 28, scope: !723)
!729 = !DILocation(line: 42, column: 56, scope: !723)
!730 = !DILocation(line: 44, column: 19, scope: !723)
!731 = !DILocation(line: 44, column: 26, scope: !723)
!732 = !DILocation(line: 44, column: 24, scope: !723)
!733 = !DILocation(line: 44, column: 2, scope: !723)
!734 = !DILocation(line: 45, column: 19, scope: !723)
!735 = !DILocation(line: 45, column: 23, scope: !723)
!736 = !DILocation(line: 45, column: 2, scope: !723)
!737 = !DILocation(line: 46, column: 1, scope: !723)
!738 = distinct !DISubprogram(name: "instrument_write", scope: !739, file: !739, line: 38, type: !740, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!739 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!740 = !DISubroutineType(types: !741)
!741 = !{null, !742, !660}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!745 = !{!746, !747}
!746 = !DILocalVariable(name: "v", arg: 1, scope: !738, file: !739, line: 38, type: !742)
!747 = !DILocalVariable(name: "size", arg: 2, scope: !738, file: !739, line: 38, type: !660)
!748 = !DILocation(line: 38, column: 67, scope: !738)
!749 = !DILocation(line: 38, column: 77, scope: !738)
!750 = !DILocation(line: 40, column: 20, scope: !738)
!751 = !DILocation(line: 40, column: 23, scope: !738)
!752 = !DILocation(line: 40, column: 2, scope: !738)
!753 = !DILocation(line: 41, column: 2, scope: !738)
!754 = !DILocation(line: 42, column: 1, scope: !738)
!755 = distinct !DISubprogram(name: "arch___clear_bit", scope: !95, file: !95, line: 92, type: !699, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "nr", arg: 1, scope: !755, file: !95, line: 92, type: !12)
!758 = !DILocalVariable(name: "addr", arg: 2, scope: !755, file: !95, line: 92, type: !701)
!759 = !DILocation(line: 92, column: 32, scope: !755)
!760 = !DILocation(line: 92, column: 60, scope: !755)
!761 = !DILocation(line: 94, column: 44, scope: !755)
!762 = !DILocation(line: 94, column: 56, scope: !755)
!763 = !DILocation(line: 94, column: 2, scope: !755)
!764 = !{i64 2147745844}
!765 = !DILocation(line: 95, column: 1, scope: !755)
!766 = distinct !DISubprogram(name: "kasan_check_write", scope: !767, file: !767, line: 44, type: !768, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!767 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!768 = !DISubroutineType(types: !769)
!769 = !{!770, !742, !7}
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !18, line: 35, baseType: !771)
!771 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!772 = !{!773, !774}
!773 = !DILocalVariable(name: "p", arg: 1, scope: !766, file: !767, line: 44, type: !742)
!774 = !DILocalVariable(name: "size", arg: 2, scope: !766, file: !767, line: 44, type: !7)
!775 = !DILocation(line: 44, column: 59, scope: !766)
!776 = !DILocation(line: 44, column: 75, scope: !766)
!777 = !DILocation(line: 46, column: 2, scope: !766)
!778 = distinct !DISubprogram(name: "kcsan_check_access", scope: !779, file: !779, line: 229, type: !780, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!779 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!780 = !DISubroutineType(types: !781)
!781 = !{null, !742, !660, !25}
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(name: "ptr", arg: 1, scope: !778, file: !779, line: 229, type: !742)
!784 = !DILocalVariable(name: "size", arg: 2, scope: !778, file: !779, line: 229, type: !660)
!785 = !DILocalVariable(name: "type", arg: 3, scope: !778, file: !779, line: 230, type: !25)
!786 = !DILocation(line: 229, column: 60, scope: !778)
!787 = !DILocation(line: 229, column: 72, scope: !778)
!788 = !DILocation(line: 230, column: 15, scope: !778)
!789 = !DILocation(line: 230, column: 23, scope: !778)
