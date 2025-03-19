; ModuleID = 'arch/x86/lib/csum-partial_64.c'
source_filename = "arch/x86/lib/csum-partial_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_csum_partial: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad csum_partial ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip_compute_csum: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ip_compute_csum ; .previous"

@__UNIQUE_ID___addressable_csum_partial3 = internal global ptr @csum_partial, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_ip_compute_csum4 = internal global ptr @ip_compute_csum, section ".discard.addressable", align 8, !dbg !36
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_csum_partial3, ptr @__UNIQUE_ID___addressable_ip_compute_csum4], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @csum_partial(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #0 align 16 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %buff.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %sum.addr = alloca i32, align 4
  %temp64 = alloca i64, align 8
  %temp64_2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %shift = alloca i32, align 4
  %trail = alloca i64, align 8
  store ptr %buff, ptr %buff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buff.addr, metadata !54, metadata !DIExpression()), !dbg !65
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !55, metadata !DIExpression()), !dbg !66
  store i32 %sum, ptr %sum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sum.addr, metadata !56, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp64) #5, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %temp64, metadata !57, metadata !DIExpression()), !dbg !69
  %0 = load i32, ptr %sum.addr, align 4, !dbg !70
  %conv = zext i32 %0 to i64, !dbg !71
  store i64 %conv, ptr %temp64, align 8, !dbg !69
  %1 = load i32, ptr %len.addr, align 4, !dbg !72
  %cmp = icmp sge i32 %1, 80, !dbg !72
  %lnot = xor i1 %cmp, true, !dbg !72
  %lnot2 = xor i1 %lnot, true, !dbg !72
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !72
  %conv3 = sext i32 %lnot.ext to i64, !dbg !72
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 1), !dbg !72
  %tobool = icmp ne i64 %expval, 0, !dbg !72
  br i1 %tobool, label %if.then, label %if.end, !dbg !73

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp64_2) #5, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %temp64_2, metadata !58, metadata !DIExpression()), !dbg !75
  store i64 0, ptr %temp64_2, align 8, !dbg !75
  br label %do.body, !dbg !76

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load i64, ptr %temp64, align 8, !dbg !77
  %3 = load ptr, ptr %buff.addr, align 8, !dbg !79
  %call = call i64 @update_csum_40b(i64 noundef %2, ptr noundef %3) #6, !dbg !80
  store i64 %call, ptr %temp64, align 8, !dbg !81
  %4 = load i64, ptr %temp64_2, align 8, !dbg !82
  %5 = load ptr, ptr %buff.addr, align 8, !dbg !83
  %add.ptr = getelementptr i8, ptr %5, i64 40, !dbg !84
  %call4 = call i64 @update_csum_40b(i64 noundef %4, ptr noundef %add.ptr) #6, !dbg !85
  store i64 %call4, ptr %temp64_2, align 8, !dbg !86
  %6 = load ptr, ptr %buff.addr, align 8, !dbg !87
  %add.ptr5 = getelementptr i8, ptr %6, i64 80, !dbg !87
  store ptr %add.ptr5, ptr %buff.addr, align 8, !dbg !87
  %7 = load i32, ptr %len.addr, align 4, !dbg !88
  %sub = sub i32 %7, 80, !dbg !88
  store i32 %sub, ptr %len.addr, align 4, !dbg !88
  br label %do.cond, !dbg !89

do.cond:                                          ; preds = %do.body
  %8 = load i32, ptr %len.addr, align 4, !dbg !90
  %cmp6 = icmp sge i32 %8, 80, !dbg !91
  br i1 %cmp6, label %do.body, label %do.end, !dbg !89, !llvm.loop !92

do.end:                                           ; preds = %do.cond
  %9 = load i64, ptr %temp64, align 8, !dbg !96
  %10 = load i64, ptr %temp64_2, align 8, !dbg !97
  %11 = call i64 asm "addq $1,$0\0A\09adcq $$0,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %10, i64 %9) #7, !dbg !96, !srcloc !98
  store i64 %11, ptr %temp64, align 8, !dbg !96
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp64_2) #5, !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %do.end, %entry
  %12 = load i32, ptr %len.addr, align 4, !dbg !101
  %cmp8 = icmp sge i32 %12, 40, !dbg !103
  br i1 %cmp8, label %if.then10, label %if.end18, !dbg !104

if.then10:                                        ; preds = %if.end
  %13 = load i64, ptr %temp64, align 8, !dbg !105
  %14 = load ptr, ptr %buff.addr, align 8, !dbg !107
  %call11 = call i64 @update_csum_40b(i64 noundef %13, ptr noundef %14) #6, !dbg !108
  store i64 %call11, ptr %temp64, align 8, !dbg !109
  %15 = load i32, ptr %len.addr, align 4, !dbg !110
  %sub12 = sub i32 %15, 40, !dbg !110
  store i32 %sub12, ptr %len.addr, align 4, !dbg !110
  %16 = load i32, ptr %len.addr, align 4, !dbg !111
  %tobool13 = icmp ne i32 %16, 0, !dbg !111
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !113

if.then14:                                        ; preds = %if.then10
  %17 = load i64, ptr %temp64, align 8, !dbg !114
  %call15 = call i32 @csum_finalize_sum(i64 noundef %17) #6, !dbg !115
  store i32 %call15, ptr %retval, align 4, !dbg !116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !116

if.end16:                                         ; preds = %if.then10
  %18 = load ptr, ptr %buff.addr, align 8, !dbg !117
  %add.ptr17 = getelementptr i8, ptr %18, i64 40, !dbg !117
  store ptr %add.ptr17, ptr %buff.addr, align 8, !dbg !117
  br label %if.end18, !dbg !118

if.end18:                                         ; preds = %if.end16, %if.end
  %19 = load i32, ptr %len.addr, align 4, !dbg !119
  %and = and i32 %19, 32, !dbg !121
  %tobool19 = icmp ne i32 %and, 0, !dbg !121
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !122

if.then20:                                        ; preds = %if.end18
  %20 = load i64, ptr %temp64, align 8, !dbg !123
  %21 = load ptr, ptr %buff.addr, align 8, !dbg !125
  %22 = load ptr, ptr %buff.addr, align 8, !dbg !126
  %23 = call i64 asm "addq 0*8($1),$0\0A\09adcq 1*8($1),$0\0A\09adcq 2*8($1),$0\0A\09adcq 3*8($1),$0\0A\09adcq $$0,$0", "=r,r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr %21, ptr elementtype([32 x i8]) %22, i64 %20) #8, !dbg !123, !srcloc !127
  store i64 %23, ptr %temp64, align 8, !dbg !123
  %24 = load ptr, ptr %buff.addr, align 8, !dbg !128
  %add.ptr21 = getelementptr i8, ptr %24, i64 32, !dbg !128
  store ptr %add.ptr21, ptr %buff.addr, align 8, !dbg !128
  br label %if.end22, !dbg !129

if.end22:                                         ; preds = %if.then20, %if.end18
  %25 = load i32, ptr %len.addr, align 4, !dbg !130
  %and23 = and i32 %25, 16, !dbg !132
  %tobool24 = icmp ne i32 %and23, 0, !dbg !132
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !133

if.then25:                                        ; preds = %if.end22
  %26 = load i64, ptr %temp64, align 8, !dbg !134
  %27 = load ptr, ptr %buff.addr, align 8, !dbg !136
  %28 = load ptr, ptr %buff.addr, align 8, !dbg !137
  %29 = call i64 asm "addq 0*8($1),$0\0A\09adcq 1*8($1),$0\0A\09adcq $$0,$0", "=r,r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr %27, ptr elementtype([16 x i8]) %28, i64 %26) #8, !dbg !134, !srcloc !138
  store i64 %29, ptr %temp64, align 8, !dbg !134
  %30 = load ptr, ptr %buff.addr, align 8, !dbg !139
  %add.ptr26 = getelementptr i8, ptr %30, i64 16, !dbg !139
  store ptr %add.ptr26, ptr %buff.addr, align 8, !dbg !139
  br label %if.end27, !dbg !140

if.end27:                                         ; preds = %if.then25, %if.end22
  %31 = load i32, ptr %len.addr, align 4, !dbg !141
  %and28 = and i32 %31, 8, !dbg !143
  %tobool29 = icmp ne i32 %and28, 0, !dbg !143
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !144

if.then30:                                        ; preds = %if.end27
  %32 = load i64, ptr %temp64, align 8, !dbg !145
  %33 = load ptr, ptr %buff.addr, align 8, !dbg !147
  %34 = load ptr, ptr %buff.addr, align 8, !dbg !148
  %35 = call i64 asm "addq 0*8($1),$0\0A\09adcq $$0,$0", "=r,r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr %33, ptr elementtype([8 x i8]) %34, i64 %32) #8, !dbg !145, !srcloc !149
  store i64 %35, ptr %temp64, align 8, !dbg !145
  %36 = load ptr, ptr %buff.addr, align 8, !dbg !150
  %add.ptr31 = getelementptr i8, ptr %36, i64 8, !dbg !150
  store ptr %add.ptr31, ptr %buff.addr, align 8, !dbg !150
  br label %if.end32, !dbg !151

if.end32:                                         ; preds = %if.then30, %if.end27
  %37 = load i32, ptr %len.addr, align 4, !dbg !152
  %and33 = and i32 %37, 7, !dbg !153
  %tobool34 = icmp ne i32 %and33, 0, !dbg !153
  br i1 %tobool34, label %if.then35, label %if.end41, !dbg !154

if.then35:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #5, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !61, metadata !DIExpression()), !dbg !156
  %38 = load i32, ptr %len.addr, align 4, !dbg !157
  %sub36 = sub i32 0, %38, !dbg !158
  %shl = shl i32 %sub36, 3, !dbg !159
  %and37 = and i32 %shl, 63, !dbg !160
  store i32 %and37, ptr %shift, align 4, !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %trail) #5, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %trail, metadata !64, metadata !DIExpression()), !dbg !162
  %39 = load ptr, ptr %buff.addr, align 8, !dbg !163
  %call38 = call i64 @load_unaligned_zeropad(ptr noundef %39) #6, !dbg !164
  %40 = load i32, ptr %shift, align 4, !dbg !165
  %sh_prom = zext i32 %40 to i64, !dbg !166
  %shl39 = shl i64 %call38, %sh_prom, !dbg !166
  %41 = load i32, ptr %shift, align 4, !dbg !167
  %sh_prom40 = zext i32 %41 to i64, !dbg !168
  %shr = lshr i64 %shl39, %sh_prom40, !dbg !168
  store i64 %shr, ptr %trail, align 8, !dbg !169
  %42 = load i64, ptr %temp64, align 8, !dbg !170
  %43 = load i64, ptr %trail, align 8, !dbg !171
  %44 = call i64 asm "addq $1,$0\0A\09adcq $$0,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %43, i64 %42) #7, !dbg !170, !srcloc !172
  store i64 %44, ptr %temp64, align 8, !dbg !170
  call void @llvm.lifetime.end.p0(i64 8, ptr %trail) #5, !dbg !173
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #5, !dbg !173
  br label %if.end41, !dbg !174

if.end41:                                         ; preds = %if.then35, %if.end32
  %45 = load i64, ptr %temp64, align 8, !dbg !175
  %call42 = call i32 @csum_finalize_sum(i64 noundef %45) #6, !dbg !176
  store i32 %call42, ptr %retval, align 4, !dbg !177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !177

cleanup:                                          ; preds = %if.end41, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp64) #5, !dbg !178
  %46 = load i32, ptr %retval, align 4, !dbg !178
  ret i32 %46, !dbg !178
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @update_csum_40b(i64 noundef %sum, ptr noundef %m) #4 align 16 !dbg !179 {
entry:
  %sum.addr = alloca i64, align 8
  %m.addr = alloca ptr, align 8
  store i64 %sum, ptr %sum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sum.addr, metadata !185, metadata !DIExpression()), !dbg !187
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !186, metadata !DIExpression()), !dbg !188
  %0 = load i64, ptr %sum.addr, align 8, !dbg !189
  %1 = load ptr, ptr %m.addr, align 8, !dbg !190
  %arrayidx = getelementptr i64, ptr %1, i64 0, !dbg !190
  %2 = load ptr, ptr %m.addr, align 8, !dbg !191
  %arrayidx1 = getelementptr i64, ptr %2, i64 1, !dbg !191
  %3 = load ptr, ptr %m.addr, align 8, !dbg !192
  %arrayidx2 = getelementptr i64, ptr %3, i64 2, !dbg !192
  %4 = load ptr, ptr %m.addr, align 8, !dbg !193
  %arrayidx3 = getelementptr i64, ptr %4, i64 3, !dbg !193
  %5 = load ptr, ptr %m.addr, align 8, !dbg !194
  %arrayidx4 = getelementptr i64, ptr %5, i64 4, !dbg !194
  %6 = call i64 asm "addq $1,$0\0A\09adcq $2,$0\0A\09adcq $3,$0\0A\09adcq $4,$0\0A\09adcq $5,$0\0A\09adcq $$0,$0", "=r,*m,*m,*m,*m,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %arrayidx, ptr elementtype(i64) %arrayidx1, ptr elementtype(i64) %arrayidx2, ptr elementtype(i64) %arrayidx3, ptr elementtype(i64) %arrayidx4, i64 %0) #8, !dbg !189, !srcloc !195
  store i64 %6, ptr %sum.addr, align 8, !dbg !189
  %7 = load i64, ptr %sum.addr, align 8, !dbg !196
  ret i64 %7, !dbg !197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @csum_finalize_sum(i64 noundef %temp64) #4 align 16 !dbg !198 {
entry:
  %temp64.addr = alloca i64, align 8
  store i64 %temp64, ptr %temp64.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %temp64.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load i64, ptr %temp64.addr, align 8, !dbg !204
  %1 = load i64, ptr %temp64.addr, align 8, !dbg !205
  %call = call i64 @ror64(i64 noundef %1, i32 noundef 32) #6, !dbg !206
  %add = add i64 %0, %call, !dbg !207
  %shr = lshr i64 %add, 32, !dbg !208
  %conv = trunc i64 %shr to i32, !dbg !209
  ret i32 %conv, !dbg !210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @load_unaligned_zeropad(ptr noundef %addr) #4 align 16 !dbg !211 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !216, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !219
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !217, metadata !DIExpression()), !dbg !220
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !221
  %1 = call i64 asm sideeffect "1:\09mov $1, $0\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 20 \0A .popsection\0A", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0) #5, !dbg !222, !srcloc !223
  store i64 %1, ptr %ret, align 8, !dbg !222
  %2 = load i64, ptr %ret, align 8, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !225
  ret i64 %2, !dbg !226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @ip_compute_csum(ptr noundef %buff, i32 noundef %len) #0 align 16 !dbg !227 {
entry:
  %buff.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %buff, ptr %buff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buff.addr, metadata !231, metadata !DIExpression()), !dbg !233
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !232, metadata !DIExpression()), !dbg !234
  %0 = load ptr, ptr %buff.addr, align 8, !dbg !235
  %1 = load i32, ptr %len.addr, align 4, !dbg !236
  %call = call i32 @csum_partial(ptr noundef %0, i32 noundef %1, i32 noundef 0) #6, !dbg !237
  %call1 = call zeroext i16 @csum_fold(i32 noundef %call) #6, !dbg !238
  ret i16 %call1, !dbg !239
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @csum_fold(i32 noundef %sum) #4 align 16 !dbg !240 {
entry:
  %sum.addr = alloca i32, align 4
  store i32 %sum, ptr %sum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sum.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i32, ptr %sum.addr, align 4, !dbg !247
  %shl = shl i32 %0, 16, !dbg !248
  %1 = load i32, ptr %sum.addr, align 4, !dbg !249
  %and = and i32 %1, -65536, !dbg !250
  %2 = call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %shl, i32 %and) #7, !dbg !251, !srcloc !252
  store i32 %2, ptr %sum.addr, align 4, !dbg !251
  %3 = load i32, ptr %sum.addr, align 4, !dbg !253
  %not = xor i32 %3, -1, !dbg !254
  %shr = lshr i32 %not, 16, !dbg !255
  %conv = trunc i32 %shr to i16, !dbg !256
  ret i16 %conv, !dbg !257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #4 align 16 !dbg !258 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !263, metadata !DIExpression()), !dbg !265
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !264, metadata !DIExpression()), !dbg !266
  %0 = load i64, ptr %word.addr, align 8, !dbg !267
  %1 = load i32, ptr %shift.addr, align 4, !dbg !268
  %and = and i32 %1, 63, !dbg !269
  %sh_prom = zext i32 %and to i64, !dbg !270
  %shr = lshr i64 %0, %sh_prom, !dbg !270
  %2 = load i64, ptr %word.addr, align 8, !dbg !271
  %3 = load i32, ptr %shift.addr, align 4, !dbg !272
  %sub = sub i32 0, %3, !dbg !273
  %and1 = and i32 %sub, 63, !dbg !274
  %sh_prom2 = zext i32 %and1 to i64, !dbg !275
  %shl = shl i64 %2, %sh_prom2, !dbg !275
  %or = or i64 %shr, %shl, !dbg !276
  ret i64 %or, !dbg !277
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_csum_partial3", scope: !2, file: !3, line: 113, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.csum-partial_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/csum-partial_64\22 -D KBUILD_BASENAME=\22csum_partial_64\22 -D KBUILD_MODNAME=\22csum_partial_64\22 -D __KBUILD_MODNAME=kmod_csum_partial_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/csum-partial_64.ll arch/x86/lib/csum-partial_64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/csum-partial_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3409305d0879878fbc7f178f7b4e9ac2")
!4 = !{!5, !10, !16, !20, !24, !25, !29, !31, !32}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!15}
!15 = !DISubrange(count: 32)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 16)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 8)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !26, line: 44, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !27)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !26, line: 43, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !{!0, !36}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ip_compute_csum4", scope: !2, file: !3, line: 123, type: !24, isLocal: true, isDefinition: true)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 8, !"cf-protection-branch", i32 1}
!42 = !{i32 4, !"function_return_thunk_extern", i32 1}
!43 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!44 = !{i32 1, !"Code Model", i32 2}
!45 = !{i32 1, !"override-stack-alignment", i32 8}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = distinct !DISubprogram(name: "csum_partial", scope: !3, file: !3, line: 44, type: !48, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!48 = !DISubroutineType(types: !49)
!49 = !{!25, !50, !52, !25}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{!54, !55, !56, !57, !58, !61, !64}
!54 = !DILocalVariable(name: "buff", arg: 1, scope: !47, file: !3, line: 44, type: !50)
!55 = !DILocalVariable(name: "len", arg: 2, scope: !47, file: !3, line: 44, type: !52)
!56 = !DILocalVariable(name: "sum", arg: 3, scope: !47, file: !3, line: 44, type: !25)
!57 = !DILocalVariable(name: "temp64", scope: !47, file: !3, line: 46, type: !5)
!58 = !DILocalVariable(name: "temp64_2", scope: !59, file: !3, line: 50, type: !5)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 49, column: 25)
!60 = distinct !DILexicalBlock(scope: !47, file: !3, line: 49, column: 6)
!61 = !DILocalVariable(name: "shift", scope: !62, file: !3, line: 101, type: !28)
!62 = distinct !DILexicalBlock(scope: !63, file: !3, line: 100, column: 15)
!63 = distinct !DILexicalBlock(scope: !47, file: !3, line: 100, column: 6)
!64 = !DILocalVariable(name: "trail", scope: !62, file: !3, line: 102, type: !30)
!65 = !DILocation(line: 44, column: 33, scope: !47)
!66 = !DILocation(line: 44, column: 43, scope: !47)
!67 = !DILocation(line: 44, column: 55, scope: !47)
!68 = !DILocation(line: 46, column: 2, scope: !47)
!69 = !DILocation(line: 46, column: 6, scope: !47)
!70 = !DILocation(line: 46, column: 28, scope: !47)
!71 = !DILocation(line: 46, column: 15, scope: !47)
!72 = !DILocation(line: 49, column: 6, scope: !60)
!73 = !DILocation(line: 49, column: 6, scope: !47)
!74 = !DILocation(line: 50, column: 3, scope: !59)
!75 = !DILocation(line: 50, column: 7, scope: !59)
!76 = !DILocation(line: 51, column: 3, scope: !59)
!77 = !DILocation(line: 52, column: 29, scope: !78)
!78 = distinct !DILexicalBlock(scope: !59, file: !3, line: 51, column: 6)
!79 = !DILocation(line: 52, column: 37, scope: !78)
!80 = !DILocation(line: 52, column: 13, scope: !78)
!81 = !DILocation(line: 52, column: 11, scope: !78)
!82 = !DILocation(line: 53, column: 31, scope: !78)
!83 = !DILocation(line: 53, column: 41, scope: !78)
!84 = !DILocation(line: 53, column: 46, scope: !78)
!85 = !DILocation(line: 53, column: 15, scope: !78)
!86 = !DILocation(line: 53, column: 13, scope: !78)
!87 = !DILocation(line: 54, column: 9, scope: !78)
!88 = !DILocation(line: 55, column: 8, scope: !78)
!89 = !DILocation(line: 56, column: 3, scope: !78)
!90 = !DILocation(line: 56, column: 12, scope: !59)
!91 = !DILocation(line: 56, column: 16, scope: !59)
!92 = distinct !{!92, !76, !93, !94, !95}
!93 = !DILocation(line: 56, column: 21, scope: !59)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !DILocation(line: 58, column: 3, scope: !59)
!97 = !DILocation(line: 60, column: 28, scope: !59)
!98 = !{i64 1487, i64 1500}
!99 = !DILocation(line: 61, column: 2, scope: !60)
!100 = !DILocation(line: 61, column: 2, scope: !59)
!101 = !DILocation(line: 67, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !47, file: !3, line: 67, column: 6)
!103 = !DILocation(line: 67, column: 10, scope: !102)
!104 = !DILocation(line: 67, column: 6, scope: !47)
!105 = !DILocation(line: 68, column: 28, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 67, column: 17)
!107 = !DILocation(line: 68, column: 36, scope: !106)
!108 = !DILocation(line: 68, column: 12, scope: !106)
!109 = !DILocation(line: 68, column: 10, scope: !106)
!110 = !DILocation(line: 69, column: 7, scope: !106)
!111 = !DILocation(line: 70, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !106, file: !3, line: 70, column: 7)
!113 = !DILocation(line: 70, column: 7, scope: !106)
!114 = !DILocation(line: 71, column: 29, scope: !112)
!115 = !DILocation(line: 71, column: 11, scope: !112)
!116 = !DILocation(line: 71, column: 4, scope: !112)
!117 = !DILocation(line: 72, column: 8, scope: !106)
!118 = !DILocation(line: 73, column: 2, scope: !106)
!119 = !DILocation(line: 75, column: 6, scope: !120)
!120 = distinct !DILexicalBlock(scope: !47, file: !3, line: 75, column: 6)
!121 = !DILocation(line: 75, column: 10, scope: !120)
!122 = !DILocation(line: 75, column: 6, scope: !47)
!123 = !DILocation(line: 76, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 75, column: 16)
!125 = !DILocation(line: 82, column: 19, scope: !124)
!126 = !DILocation(line: 82, column: 50, scope: !124)
!127 = !{i64 1862, i64 1888, i64 1924, i64 1960, i64 1996}
!128 = !DILocation(line: 83, column: 8, scope: !124)
!129 = !DILocation(line: 84, column: 2, scope: !124)
!130 = !DILocation(line: 85, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !47, file: !3, line: 85, column: 6)
!132 = !DILocation(line: 85, column: 10, scope: !131)
!133 = !DILocation(line: 85, column: 6, scope: !47)
!134 = !DILocation(line: 86, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !3, line: 85, column: 16)
!136 = !DILocation(line: 90, column: 19, scope: !135)
!137 = !DILocation(line: 90, column: 50, scope: !135)
!138 = !{i64 2147, i64 2173, i64 2209}
!139 = !DILocation(line: 91, column: 8, scope: !135)
!140 = !DILocation(line: 92, column: 2, scope: !135)
!141 = !DILocation(line: 93, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !47, file: !3, line: 93, column: 6)
!143 = !DILocation(line: 93, column: 10, scope: !142)
!144 = !DILocation(line: 93, column: 6, scope: !47)
!145 = !DILocation(line: 94, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 93, column: 15)
!147 = !DILocation(line: 97, column: 19, scope: !146)
!148 = !DILocation(line: 97, column: 49, scope: !146)
!149 = !{i64 2359, i64 2385}
!150 = !DILocation(line: 98, column: 8, scope: !146)
!151 = !DILocation(line: 99, column: 2, scope: !146)
!152 = !DILocation(line: 100, column: 6, scope: !63)
!153 = !DILocation(line: 100, column: 10, scope: !63)
!154 = !DILocation(line: 100, column: 6, scope: !47)
!155 = !DILocation(line: 101, column: 3, scope: !62)
!156 = !DILocation(line: 101, column: 16, scope: !62)
!157 = !DILocation(line: 101, column: 26, scope: !62)
!158 = !DILocation(line: 101, column: 25, scope: !62)
!159 = !DILocation(line: 101, column: 30, scope: !62)
!160 = !DILocation(line: 101, column: 36, scope: !62)
!161 = !DILocation(line: 102, column: 3, scope: !62)
!162 = !DILocation(line: 102, column: 17, scope: !62)
!163 = !DILocation(line: 104, column: 35, scope: !62)
!164 = !DILocation(line: 104, column: 12, scope: !62)
!165 = !DILocation(line: 104, column: 44, scope: !62)
!166 = !DILocation(line: 104, column: 41, scope: !62)
!167 = !DILocation(line: 104, column: 54, scope: !62)
!168 = !DILocation(line: 104, column: 51, scope: !62)
!169 = !DILocation(line: 104, column: 9, scope: !62)
!170 = !DILocation(line: 106, column: 3, scope: !62)
!171 = !DILocation(line: 109, column: 21, scope: !62)
!172 = !{i64 2659, i64 2682}
!173 = !DILocation(line: 110, column: 2, scope: !63)
!174 = !DILocation(line: 110, column: 2, scope: !62)
!175 = !DILocation(line: 111, column: 27, scope: !47)
!176 = !DILocation(line: 111, column: 9, scope: !47)
!177 = !DILocation(line: 111, column: 2, scope: !47)
!178 = !DILocation(line: 112, column: 1, scope: !47)
!179 = distinct !DISubprogram(name: "update_csum_40b", scope: !3, file: !3, line: 19, type: !180, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!180 = !DISubroutineType(types: !181)
!181 = !{!30, !30, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!184 = !{!185, !186}
!185 = !DILocalVariable(name: "sum", arg: 1, scope: !179, file: !3, line: 19, type: !30)
!186 = !DILocalVariable(name: "m", arg: 2, scope: !179, file: !3, line: 19, type: !182)
!187 = !DILocation(line: 19, column: 59, scope: !179)
!188 = !DILocation(line: 19, column: 84, scope: !179)
!189 = !DILocation(line: 21, column: 2, scope: !179)
!190 = !DILocation(line: 28, column: 9, scope: !179)
!191 = !DILocation(line: 28, column: 21, scope: !179)
!192 = !DILocation(line: 28, column: 33, scope: !179)
!193 = !DILocation(line: 29, column: 9, scope: !179)
!194 = !DILocation(line: 29, column: 21, scope: !179)
!195 = !{i64 531, i64 544, i64 567, i64 590, i64 613, i64 636}
!196 = !DILocation(line: 30, column: 9, scope: !179)
!197 = !DILocation(line: 30, column: 2, scope: !179)
!198 = distinct !DISubprogram(name: "csum_finalize_sum", scope: !3, file: !3, line: 14, type: !199, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!25, !5}
!201 = !{!202}
!202 = !DILocalVariable(name: "temp64", arg: 1, scope: !198, file: !3, line: 14, type: !5)
!203 = !DILocation(line: 14, column: 44, scope: !198)
!204 = !DILocation(line: 16, column: 27, scope: !198)
!205 = !DILocation(line: 16, column: 42, scope: !198)
!206 = !DILocation(line: 16, column: 36, scope: !198)
!207 = !DILocation(line: 16, column: 34, scope: !198)
!208 = !DILocation(line: 16, column: 55, scope: !198)
!209 = !DILocation(line: 16, column: 9, scope: !198)
!210 = !DILocation(line: 16, column: 2, scope: !198)
!211 = distinct !DISubprogram(name: "load_unaligned_zeropad", scope: !212, file: !212, line: 80, type: !213, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !215)
!212 = !DIFile(filename: "./arch/x86/include/asm/word-at-a-time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9ff3ba13b74d134be400adb436d72b7")
!213 = !DISubroutineType(types: !214)
!214 = !{!30, !50}
!215 = !{!216, !217}
!216 = !DILocalVariable(name: "addr", arg: 1, scope: !211, file: !212, line: 80, type: !50)
!217 = !DILocalVariable(name: "ret", scope: !211, file: !212, line: 82, type: !30)
!218 = !DILocation(line: 80, column: 64, scope: !211)
!219 = !DILocation(line: 82, column: 2, scope: !211)
!220 = !DILocation(line: 82, column: 16, scope: !211)
!221 = !DILocation(line: 89, column: 34, scope: !211)
!222 = !DILocation(line: 84, column: 2, scope: !211)
!223 = !{i64 234876, i64 234905, i64 2148051401, i64 2148051445, i64 2148051468, i64 2148051501, i64 2148051532, i64 2148051571}
!224 = !DILocation(line: 91, column: 9, scope: !211)
!225 = !DILocation(line: 92, column: 1, scope: !211)
!226 = !DILocation(line: 91, column: 2, scope: !211)
!227 = distinct !DISubprogram(name: "ip_compute_csum", scope: !3, file: !3, line: 119, type: !228, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!32, !50, !52}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "buff", arg: 1, scope: !227, file: !3, line: 119, type: !50)
!232 = !DILocalVariable(name: "len", arg: 2, scope: !227, file: !3, line: 119, type: !52)
!233 = !DILocation(line: 119, column: 37, scope: !227)
!234 = !DILocation(line: 119, column: 47, scope: !227)
!235 = !DILocation(line: 121, column: 32, scope: !227)
!236 = !DILocation(line: 121, column: 38, scope: !227)
!237 = !DILocation(line: 121, column: 19, scope: !227)
!238 = !DILocation(line: 121, column: 9, scope: !227)
!239 = !DILocation(line: 121, column: 2, scope: !227)
!240 = distinct !DISubprogram(name: "csum_fold", scope: !241, file: !241, line: 22, type: !242, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!241 = !DIFile(filename: "./arch/x86/include/asm/checksum_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "388d688332261c99a653b1b399e4f578")
!242 = !DISubroutineType(types: !243)
!243 = !{!32, !25}
!244 = !{!245}
!245 = !DILocalVariable(name: "sum", arg: 1, scope: !240, file: !241, line: 22, type: !25)
!246 = !DILocation(line: 22, column: 40, scope: !240)
!247 = !DILocation(line: 27, column: 26, scope: !240)
!248 = !DILocation(line: 27, column: 30, scope: !240)
!249 = !DILocation(line: 28, column: 26, scope: !240)
!250 = !DILocation(line: 28, column: 30, scope: !240)
!251 = !DILocation(line: 24, column: 2, scope: !240)
!252 = !{i64 196889, i64 196912}
!253 = !DILocation(line: 29, column: 41, scope: !240)
!254 = !DILocation(line: 29, column: 27, scope: !240)
!255 = !DILocation(line: 29, column: 45, scope: !240)
!256 = !DILocation(line: 29, column: 9, scope: !240)
!257 = !DILocation(line: 29, column: 2, scope: !240)
!258 = distinct !DISubprogram(name: "ror64", scope: !259, file: !259, line: 115, type: !260, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!259 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!260 = !DISubroutineType(types: !261)
!261 = !{!7, !7, !28}
!262 = !{!263, !264}
!263 = !DILocalVariable(name: "word", arg: 1, scope: !258, file: !259, line: 115, type: !7)
!264 = !DILocalVariable(name: "shift", arg: 2, scope: !258, file: !259, line: 115, type: !28)
!265 = !DILocation(line: 115, column: 33, scope: !258)
!266 = !DILocation(line: 115, column: 52, scope: !258)
!267 = !DILocation(line: 117, column: 10, scope: !258)
!268 = !DILocation(line: 117, column: 19, scope: !258)
!269 = !DILocation(line: 117, column: 25, scope: !258)
!270 = !DILocation(line: 117, column: 15, scope: !258)
!271 = !DILocation(line: 117, column: 35, scope: !258)
!272 = !DILocation(line: 117, column: 46, scope: !258)
!273 = !DILocation(line: 117, column: 45, scope: !258)
!274 = !DILocation(line: 117, column: 53, scope: !258)
!275 = !DILocation(line: 117, column: 40, scope: !258)
!276 = !DILocation(line: 117, column: 32, scope: !258)
!277 = !DILocation(line: 117, column: 2, scope: !258)
