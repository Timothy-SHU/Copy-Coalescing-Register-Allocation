; ModuleID = 'lib/strnlen_user.c'
source_filename = "lib/strnlen_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strnlen_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strnlen_user ; .previous"

%struct.word_at_a_time = type { i64, i64 }
%struct.__large_struct = type { [100 x i64] }

@__UNIQUE_ID___addressable_strnlen_user277 = internal global ptr @strnlen_user, section ".discard.addressable", align 8, !dbg !0
@__const.do_strnlen_user.constants = private unnamed_addr constant %struct.word_at_a_time { i64 72340172838076673, i64 -9187201950435737472 }, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_strnlen_user277], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strnlen_user(ptr noundef %str, i64 noundef %count) #0 align 16 !dbg !32 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %max_addr = alloca i64, align 8
  %src_addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %max = alloca i64, align 8
  %retval12 = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !39, metadata !DIExpression()), !dbg !47
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !40, metadata !DIExpression()), !dbg !48
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_addr) #8, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %max_addr, metadata !41, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_addr) #8, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %src_addr, metadata !42, metadata !DIExpression()), !dbg !51
  %0 = load i64, ptr %count.addr, align 8, !dbg !52
  %cmp = icmp sle i64 %0, 0, !dbg !52
  %lnot = xor i1 %cmp, true, !dbg !52
  %lnot1 = xor i1 %lnot, true, !dbg !52
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !52
  %conv = sext i32 %lnot.ext to i64, !dbg !52
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !52
  %tobool = icmp ne i64 %expval, 0, !dbg !52
  br i1 %tobool, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !55
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !55

if.end:                                           ; preds = %entry
  %call = call i64 @task_size_max() #9, !dbg !56
  store i64 %call, ptr %max_addr, align 8, !dbg !57
  %1 = load ptr, ptr %str.addr, align 8, !dbg !58
  %2 = ptrtoint ptr %1 to i64, !dbg !59
  store i64 %2, ptr %src_addr, align 8, !dbg !60
  %3 = load i64, ptr %src_addr, align 8, !dbg !61
  %4 = load i64, ptr %max_addr, align 8, !dbg !61
  %cmp2 = icmp ult i64 %3, %4, !dbg !61
  %lnot4 = xor i1 %cmp2, true, !dbg !61
  %lnot6 = xor i1 %lnot4, true, !dbg !61
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !61
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !61
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !61
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !61
  br i1 %tobool10, label %if.then11, label %if.end22, !dbg !62

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #8, !dbg !63
  call void @llvm.dbg.declare(metadata ptr %max, metadata !43, metadata !DIExpression()), !dbg !64
  %5 = load i64, ptr %max_addr, align 8, !dbg !65
  %6 = load i64, ptr %src_addr, align 8, !dbg !66
  %sub = sub i64 %5, %6, !dbg !67
  store i64 %sub, ptr %max, align 8, !dbg !64
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval12) #8, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %retval12, metadata !46, metadata !DIExpression()), !dbg !69
  %7 = load i64, ptr %max, align 8, !dbg !70
  %8 = load i64, ptr %count.addr, align 8, !dbg !72
  %cmp13 = icmp ugt i64 %7, %8, !dbg !73
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !74

if.then15:                                        ; preds = %if.then11
  %9 = load i64, ptr %count.addr, align 8, !dbg !75
  store i64 %9, ptr %max, align 8, !dbg !76
  br label %if.end16, !dbg !77

if.end16:                                         ; preds = %if.then15, %if.then11
  %10 = load ptr, ptr %str.addr, align 8, !dbg !78
  %11 = load i64, ptr %max, align 8, !dbg !78
  %call17 = call zeroext i1 @user_access_begin(ptr noundef %10, i64 noundef %11) #9, !dbg !78
  br i1 %call17, label %if.then18, label %if.end20, !dbg !80

if.then18:                                        ; preds = %if.end16
  %12 = load ptr, ptr %str.addr, align 8, !dbg !81
  %13 = load i64, ptr %count.addr, align 8, !dbg !83
  %14 = load i64, ptr %max, align 8, !dbg !84
  %call19 = call i64 @do_strnlen_user(ptr noundef %12, i64 noundef %13, i64 noundef %14) #9, !dbg !85
  store i64 %call19, ptr %retval12, align 8, !dbg !86
  call void @clac() #9, !dbg !87
  %15 = load i64, ptr %retval12, align 8, !dbg !88
  store i64 %15, ptr %retval, align 8, !dbg !89
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !89

if.end20:                                         ; preds = %if.end16
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !90
  br label %cleanup, !dbg !90

cleanup:                                          ; preds = %if.end20, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval12) #8, !dbg !90
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #8, !dbg !90
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end22, !dbg !91

if.end22:                                         ; preds = %cleanup.cont, %if.end
  store i64 0, ptr %retval, align 8, !dbg !92
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !92

cleanup23:                                        ; preds = %if.end22, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_addr) #8, !dbg !93
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_addr) #8, !dbg !93
  %16 = load i64, ptr %retval, align 8, !dbg !93
  ret i64 %16, !dbg !93
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @task_size_max() #4 align 16 !dbg !94 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !99, metadata !DIExpression()), !dbg !101
  %0 = call i64 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movq $2,$0\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (16*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09movq $3,$0\0A6651:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #8, !dbg !102, !srcloc !103
  store i64 %0, ptr %ret, align 8, !dbg !102
  %1 = load i64, ptr %ret, align 8, !dbg !104
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !105
  ret i64 %1, !dbg !106
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_access_begin(ptr noundef %ptr, i64 noundef %len) #4 align 16 !dbg !107 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !120, metadata !DIExpression()), !dbg !122
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !121, metadata !DIExpression()), !dbg !123
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !124
  %1 = load i64, ptr %len.addr, align 8, !dbg !124
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #9, !dbg !124
  %lnot = xor i1 %call, true, !dbg !124
  %lnot1 = xor i1 %lnot, true, !dbg !124
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !124
  %conv = sext i32 %lnot.ext to i64, !dbg !124
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !124
  %tobool = icmp ne i64 %expval, 0, !dbg !124
  %lnot2 = xor i1 %tobool, true, !dbg !124
  %lnot4 = xor i1 %lnot2, true, !dbg !124
  %lnot6 = xor i1 %lnot4, true, !dbg !124
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !124
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !124
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !124
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !124
  br i1 %tobool10, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !127
  br label %return, !dbg !127

if.end:                                           ; preds = %entry
  call void @stac() #9, !dbg !128
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !128, !srcloc !130
  store i1 true, ptr %retval, align 1, !dbg !131
  br label %return, !dbg !131

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !132
  ret i1 %2, !dbg !132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @do_strnlen_user(ptr noundef %src, i64 noundef %count, i64 noundef %max) #4 align 16 !dbg !133 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %constants = alloca %struct.word_at_a_time, align 8
  %align = alloca i64, align 8
  %res = alloca i64, align 8
  %c = alloca i64, align 8
  %__gu_val = alloca i64, align 8
  %__tmp = alloca i64, align 8
  %tmp = alloca i64, align 8
  %data = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__gu_val17 = alloca i64, align 8
  %__tmp22 = alloca i64, align 8
  %tmp23 = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !137, metadata !DIExpression()), !dbg !166
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !138, metadata !DIExpression()), !dbg !167
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !139, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 16, ptr %constants) #8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %constants, metadata !140, metadata !DIExpression()), !dbg !170
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %constants, ptr align 8 @__const.do_strnlen_user.constants, i64 16, i1 false), !dbg !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #8, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %align, metadata !148, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #8, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %res, metadata !149, metadata !DIExpression()), !dbg !173
  store i64 0, ptr %res, align 8, !dbg !173
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #8, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %c, metadata !150, metadata !DIExpression()), !dbg !175
  %0 = load ptr, ptr %src.addr, align 8, !dbg !176
  %1 = ptrtoint ptr %0 to i64, !dbg !177
  %and = and i64 7, %1, !dbg !178
  store i64 %and, ptr %align, align 8, !dbg !179
  %2 = load i64, ptr %align, align 8, !dbg !180
  %3 = load ptr, ptr %src.addr, align 8, !dbg !181
  %idx.neg = sub i64 0, %2, !dbg !181
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.neg, !dbg !181
  store ptr %add.ptr, ptr %src.addr, align 8, !dbg !181
  %4 = load i64, ptr %align, align 8, !dbg !182
  %5 = load i64, ptr %max.addr, align 8, !dbg !183
  %add = add i64 %5, %4, !dbg !183
  store i64 %add, ptr %max.addr, align 8, !dbg !183
  br label %do.body, !dbg !184

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gu_val) #8, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__gu_val, metadata !151, metadata !DIExpression()), !dbg !185
  br label %do.body1, !dbg !185

do.body1:                                         ; preds = %do.body
  %6 = load ptr, ptr %src.addr, align 8, !dbg !186
  %7 = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %6) #8
          to label %asm.fallthrough [label %efault.split], !dbg !186, !srcloc !187

asm.fallthrough:                                  ; preds = %do.body1
  store i64 %7, ptr %__gu_val, align 8, !dbg !186
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #8, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !153, metadata !DIExpression()), !dbg !188
  %8 = load i64, ptr %__gu_val, align 8, !dbg !188
  store i64 %8, ptr %__tmp, align 8, !dbg !188
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #9, !dbg !188
  %9 = load i64, ptr %__tmp, align 8, !dbg !188
  store i64 %9, ptr %__gu_val, align 8, !dbg !188
  store i64 %9, ptr %tmp, align 8, !dbg !188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #8, !dbg !186
  %10 = load i64, ptr %tmp, align 8, !dbg !188
  br label %do.cond, !dbg !186

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !186

do.end:                                           ; preds = %do.cond
  %11 = load i64, ptr %__gu_val, align 8, !dbg !185
  store i64 %11, ptr %c, align 8, !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gu_val) #8, !dbg !184
  br label %do.cond2, !dbg !185

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !185

do.end3:                                          ; preds = %do.cond2
  %12 = load i64, ptr %align, align 8, !dbg !189
  %mul = mul i64 8, %12, !dbg !189
  %shl = shl i64 1, %mul, !dbg !189
  %sub = sub i64 %shl, 1, !dbg !189
  %13 = load i64, ptr %c, align 8, !dbg !190
  %or = or i64 %13, %sub, !dbg !190
  store i64 %or, ptr %c, align 8, !dbg !190
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %cleanup.cont, %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %data, metadata !156, metadata !DIExpression()), !dbg !193
  %14 = load i64, ptr %c, align 8, !dbg !194
  %call = call i64 @has_zero(i64 noundef %14, ptr noundef %data, ptr noundef %constants) #9, !dbg !196
  %tobool = icmp ne i64 %call, 0, !dbg !196
  br i1 %tobool, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %for.cond
  %15 = load i64, ptr %c, align 8, !dbg !198
  %16 = load i64, ptr %data, align 8, !dbg !200
  %call4 = call i64 @prep_zero_mask(i64 noundef %15, i64 noundef %16, ptr noundef %constants) #9, !dbg !201
  store i64 %call4, ptr %data, align 8, !dbg !202
  %17 = load i64, ptr %data, align 8, !dbg !203
  %call5 = call i64 @create_zero_mask(i64 noundef %17) #9, !dbg !204
  store i64 %call5, ptr %data, align 8, !dbg !205
  %18 = load i64, ptr %res, align 8, !dbg !206
  %19 = load i64, ptr %data, align 8, !dbg !207
  %call6 = call i64 @find_zero(i64 noundef %19) #9, !dbg !208
  %add7 = add i64 %18, %call6, !dbg !209
  %add8 = add i64 %add7, 1, !dbg !210
  %20 = load i64, ptr %align, align 8, !dbg !211
  %sub9 = sub i64 %add8, %20, !dbg !212
  store i64 %sub9, ptr %retval, align 8, !dbg !213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !213

efault.split:                                     ; preds = %do.body1
  store i64 %7, ptr %__gu_val, align 8, !dbg !186
  br label %efault, !dbg !186

if.end:                                           ; preds = %for.cond
  %21 = load i64, ptr %res, align 8, !dbg !214
  %add10 = add i64 %21, 8, !dbg !214
  store i64 %add10, ptr %res, align 8, !dbg !214
  %22 = load i64, ptr %max.addr, align 8, !dbg !215
  %cmp = icmp ule i64 %22, 8, !dbg !215
  %lnot = xor i1 %cmp, true, !dbg !215
  %lnot11 = xor i1 %lnot, true, !dbg !215
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !215
  %conv = sext i32 %lnot.ext to i64, !dbg !215
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !215
  %tobool12 = icmp ne i64 %expval, 0, !dbg !215
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !217

if.then13:                                        ; preds = %if.end
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !218

if.end14:                                         ; preds = %if.end
  %23 = load i64, ptr %max.addr, align 8, !dbg !219
  %sub15 = sub i64 %23, 8, !dbg !219
  store i64 %sub15, ptr %max.addr, align 8, !dbg !219
  br label %do.body16, !dbg !220

do.body16:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gu_val17) #8, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %__gu_val17, metadata !160, metadata !DIExpression()), !dbg !221
  br label %do.body18, !dbg !221

do.body18:                                        ; preds = %do.body16
  %24 = load ptr, ptr %src.addr, align 8, !dbg !222
  %25 = load i64, ptr %res, align 8, !dbg !222
  %add.ptr19 = getelementptr i8, ptr %24, i64 %25, !dbg !222
  %26 = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %add.ptr19) #8
          to label %asm.fallthrough20 [label %efault.split21], !dbg !222, !srcloc !223

asm.fallthrough20:                                ; preds = %do.body18
  store i64 %26, ptr %__gu_val17, align 8, !dbg !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp22) #8, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %__tmp22, metadata !162, metadata !DIExpression()), !dbg !224
  %27 = load i64, ptr %__gu_val17, align 8, !dbg !224
  store i64 %27, ptr %__tmp22, align 8, !dbg !224
  call void @kmsan_unpoison_memory(ptr noundef %__tmp22, i64 noundef 8) #9, !dbg !224
  %28 = load i64, ptr %__tmp22, align 8, !dbg !224
  store i64 %28, ptr %__gu_val17, align 8, !dbg !224
  store i64 %28, ptr %tmp23, align 8, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp22) #8, !dbg !222
  %29 = load i64, ptr %tmp23, align 8, !dbg !224
  br label %do.cond24, !dbg !222

do.cond24:                                        ; preds = %asm.fallthrough20
  br label %do.end25, !dbg !222

do.end25:                                         ; preds = %do.cond24
  %30 = load i64, ptr %__gu_val17, align 8, !dbg !221
  store i64 %30, ptr %c, align 8, !dbg !221
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gu_val17) #8, !dbg !220
  br label %do.cond26, !dbg !221

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !221

do.end27:                                         ; preds = %do.cond26
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !225
  br label %cleanup, !dbg !225

cleanup:                                          ; preds = %do.end27, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8, !dbg !225
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
    i32 7, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !226, !llvm.loop !227

efault.split21:                                   ; preds = %do.body18
  store i64 %26, ptr %__gu_val17, align 8, !dbg !222
  br label %efault, !dbg !222

for.end:                                          ; preds = %cleanup
  %31 = load i64, ptr %align, align 8, !dbg !231
  %32 = load i64, ptr %res, align 8, !dbg !232
  %sub28 = sub i64 %32, %31, !dbg !232
  store i64 %sub28, ptr %res, align 8, !dbg !232
  %33 = load i64, ptr %res, align 8, !dbg !233
  %34 = load i64, ptr %count.addr, align 8, !dbg !235
  %cmp29 = icmp uge i64 %33, %34, !dbg !236
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !237

if.then31:                                        ; preds = %for.end
  %35 = load i64, ptr %count.addr, align 8, !dbg !238
  %add32 = add i64 %35, 1, !dbg !239
  store i64 %add32, ptr %retval, align 8, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !240

if.end33:                                         ; preds = %for.end
  br label %efault, !dbg !235

efault:                                           ; preds = %if.end33, %efault.split21, %efault.split
  call void @llvm.dbg.label(metadata !165), !dbg !241
  store i64 0, ptr %retval, align 8, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !242

cleanup34:                                        ; preds = %efault, %if.then31, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #8, !dbg !243
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #8, !dbg !243
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #8, !dbg !243
  call void @llvm.lifetime.end.p0(i64 16, ptr %constants) #8, !dbg !243
  %36 = load i64, ptr %retval, align 8, !dbg !243
  ret i64 %36, !dbg !243
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #4 align 16 !dbg !244 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !248, !srcloc !249
  ret void, !dbg !250
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #5 align 16 !dbg !251 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !256, metadata !DIExpression()), !dbg !261
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !257, metadata !DIExpression()), !dbg !262
  %0 = load i64, ptr %size.addr, align 8, !dbg !263
  %cmp = icmp ule i64 %0, 4096, !dbg !264
  %conv = zext i1 %cmp to i32, !dbg !264
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !265
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !266

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !267
  %cmp1 = icmp ule i64 %2, 4096, !dbg !268
  br i1 %cmp1, label %if.then, label %if.else, !dbg !269

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !270
  %4 = ptrtoint ptr %3 to i64, !dbg !270
  %cmp3 = icmp sge i64 %4, 0, !dbg !270
  store i1 %cmp3, ptr %retval, align 1, !dbg !272
  br label %return, !dbg !272

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #8, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !258, metadata !DIExpression()), !dbg !274
  %5 = load i64, ptr %size.addr, align 8, !dbg !275
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !276
  %7 = ptrtoint ptr %6 to i64, !dbg !277
  %add = add i64 %5, %7, !dbg !278
  store i64 %add, ptr %sum, align 8, !dbg !274
  %8 = load i64, ptr %sum, align 8, !dbg !279
  %cmp5 = icmp sge i64 %8, 0, !dbg !279
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !280

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !281
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !282
  %11 = ptrtoint ptr %10 to i64, !dbg !283
  %cmp7 = icmp uge i64 %9, %11, !dbg !284
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !285
  store i1 %12, ptr %retval, align 1, !dbg !286
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #8, !dbg !287
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !288
  ret i1 %13, !dbg !288
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #4 align 16 !dbg !289 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !290, !srcloc !291
  ret void, !dbg !292
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #5 align 16 !dbg !293 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !298, metadata !DIExpression()), !dbg !300
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !299, metadata !DIExpression()), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @has_zero(i64 noundef %a, ptr noundef %bits, ptr noundef %c) #5 align 16 !dbg !303 {
entry:
  %a.addr = alloca i64, align 8
  %bits.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !308, metadata !DIExpression()), !dbg !312
  store ptr %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !309, metadata !DIExpression()), !dbg !313
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !310, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #8, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !311, metadata !DIExpression()), !dbg !316
  %0 = load i64, ptr %a.addr, align 8, !dbg !317
  %1 = load ptr, ptr %c.addr, align 8, !dbg !318
  %one_bits = getelementptr inbounds %struct.word_at_a_time, ptr %1, i32 0, i32 0, !dbg !319
  %2 = load i64, ptr %one_bits, align 8, !dbg !319
  %sub = sub i64 %0, %2, !dbg !320
  %3 = load i64, ptr %a.addr, align 8, !dbg !321
  %not = xor i64 %3, -1, !dbg !322
  %and = and i64 %sub, %not, !dbg !323
  %4 = load ptr, ptr %c.addr, align 8, !dbg !324
  %high_bits = getelementptr inbounds %struct.word_at_a_time, ptr %4, i32 0, i32 1, !dbg !325
  %5 = load i64, ptr %high_bits, align 8, !dbg !325
  %and1 = and i64 %and, %5, !dbg !326
  store i64 %and1, ptr %mask, align 8, !dbg !316
  %6 = load i64, ptr %mask, align 8, !dbg !327
  %7 = load ptr, ptr %bits.addr, align 8, !dbg !328
  store i64 %6, ptr %7, align 8, !dbg !329
  %8 = load i64, ptr %mask, align 8, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #8, !dbg !331
  ret i64 %8, !dbg !332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @prep_zero_mask(i64 noundef %a, i64 noundef %bits, ptr noundef %c) #5 align 16 !dbg !333 {
entry:
  %a.addr = alloca i64, align 8
  %bits.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !337, metadata !DIExpression()), !dbg !340
  store i64 %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !338, metadata !DIExpression()), !dbg !341
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !339, metadata !DIExpression()), !dbg !342
  %0 = load i64, ptr %bits.addr, align 8, !dbg !343
  ret i64 %0, !dbg !344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @create_zero_mask(i64 noundef %bits) #5 align 16 !dbg !345 {
entry:
  %bits.addr = alloca i64, align 8
  store i64 %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i64, ptr %bits.addr, align 8, !dbg !351
  %sub = sub i64 %0, 1, !dbg !352
  %1 = load i64, ptr %bits.addr, align 8, !dbg !353
  %not = xor i64 %1, -1, !dbg !354
  %and = and i64 %sub, %not, !dbg !355
  store i64 %and, ptr %bits.addr, align 8, !dbg !356
  %2 = load i64, ptr %bits.addr, align 8, !dbg !357
  %shr = lshr i64 %2, 7, !dbg !358
  ret i64 %shr, !dbg !359
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_zero(i64 noundef %mask) #5 align 16 !dbg !360 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load i64, ptr %mask.addr, align 8, !dbg !364
  %call = call i64 @count_masked_bytes(i64 noundef %0) #9, !dbg !365
  ret i64 %call, !dbg !366
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @count_masked_bytes(i64 noundef %mask) #5 align 16 !dbg !367 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i64, ptr %mask.addr, align 8, !dbg !373
  %mul = mul i64 %0, 283686952306184, !dbg !374
  %shr = lshr i64 %mul, 56, !dbg !375
  ret i64 %shr, !dbg !376
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strnlen_user277", scope: !2, file: !3, line: 120, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.strnlen_user.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/strnlen_user\22 -D KBUILD_BASENAME=\22strnlen_user\22 -D KBUILD_MODNAME=\22strnlen_user\22 -D __KBUILD_MODNAME=kmod_strnlen_user -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/strnlen_user.ll lib/strnlen_user.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/strnlen_user.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09c9f611dc05218d02b6195f7be61218")
!4 = !{!5, !6, !7, !8, !16, !17}
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__large_struct", file: !10, line: 471, size: 6400, elements: !11)
!10 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !9, file: !10, line: 471, baseType: !13, size: 6400)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 6400, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 100)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !18, line: 23, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !20, line: 31, baseType: !21)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!21 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!0}
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "strnlen_user", scope: !3, file: !3, line: 92, type: !33, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!33 = !DISubroutineType(types: !34)
!34 = !{!7, !35, !7}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!39, !40, !41, !42, !43, !46}
!39 = !DILocalVariable(name: "str", arg: 1, scope: !32, file: !3, line: 92, type: !35)
!40 = !DILocalVariable(name: "count", arg: 2, scope: !32, file: !3, line: 92, type: !7)
!41 = !DILocalVariable(name: "max_addr", scope: !32, file: !3, line: 94, type: !5)
!42 = !DILocalVariable(name: "src_addr", scope: !32, file: !3, line: 94, type: !5)
!43 = !DILocalVariable(name: "max", scope: !44, file: !3, line: 102, type: !5)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 101, column: 35)
!45 = distinct !DILexicalBlock(scope: !32, file: !3, line: 101, column: 6)
!46 = !DILocalVariable(name: "retval", scope: !44, file: !3, line: 103, type: !7)
!47 = !DILocation(line: 92, column: 38, scope: !32)
!48 = !DILocation(line: 92, column: 48, scope: !32)
!49 = !DILocation(line: 94, column: 2, scope: !32)
!50 = !DILocation(line: 94, column: 16, scope: !32)
!51 = !DILocation(line: 94, column: 26, scope: !32)
!52 = !DILocation(line: 96, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !32, file: !3, line: 96, column: 6)
!54 = !DILocation(line: 96, column: 6, scope: !32)
!55 = !DILocation(line: 97, column: 3, scope: !53)
!56 = !DILocation(line: 99, column: 13, scope: !32)
!57 = !DILocation(line: 99, column: 11, scope: !32)
!58 = !DILocation(line: 100, column: 28, scope: !32)
!59 = !DILocation(line: 100, column: 13, scope: !32)
!60 = !DILocation(line: 100, column: 11, scope: !32)
!61 = !DILocation(line: 101, column: 6, scope: !45)
!62 = !DILocation(line: 101, column: 6, scope: !32)
!63 = !DILocation(line: 102, column: 3, scope: !44)
!64 = !DILocation(line: 102, column: 17, scope: !44)
!65 = !DILocation(line: 102, column: 23, scope: !44)
!66 = !DILocation(line: 102, column: 34, scope: !44)
!67 = !DILocation(line: 102, column: 32, scope: !44)
!68 = !DILocation(line: 103, column: 3, scope: !44)
!69 = !DILocation(line: 103, column: 8, scope: !44)
!70 = !DILocation(line: 109, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !44, file: !3, line: 109, column: 7)
!72 = !DILocation(line: 109, column: 13, scope: !71)
!73 = !DILocation(line: 109, column: 11, scope: !71)
!74 = !DILocation(line: 109, column: 7, scope: !44)
!75 = !DILocation(line: 110, column: 10, scope: !71)
!76 = !DILocation(line: 110, column: 8, scope: !71)
!77 = !DILocation(line: 110, column: 4, scope: !71)
!78 = !DILocation(line: 112, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !44, file: !3, line: 112, column: 7)
!80 = !DILocation(line: 112, column: 7, scope: !44)
!81 = !DILocation(line: 113, column: 29, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !3, line: 112, column: 41)
!83 = !DILocation(line: 113, column: 34, scope: !82)
!84 = !DILocation(line: 113, column: 41, scope: !82)
!85 = !DILocation(line: 113, column: 13, scope: !82)
!86 = !DILocation(line: 113, column: 11, scope: !82)
!87 = !DILocation(line: 114, column: 4, scope: !82)
!88 = !DILocation(line: 115, column: 11, scope: !82)
!89 = !DILocation(line: 115, column: 4, scope: !82)
!90 = !DILocation(line: 117, column: 2, scope: !45)
!91 = !DILocation(line: 117, column: 2, scope: !44)
!92 = !DILocation(line: 118, column: 2, scope: !32)
!93 = !DILocation(line: 119, column: 1, scope: !32)
!94 = distinct !DISubprogram(name: "task_size_max", scope: !95, file: !95, line: 83, type: !96, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!95 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!96 = !DISubroutineType(types: !97)
!97 = !{!5}
!98 = !{!99}
!99 = !DILocalVariable(name: "ret", scope: !94, file: !95, line: 85, type: !5)
!100 = !DILocation(line: 85, column: 2, scope: !94)
!101 = !DILocation(line: 85, column: 16, scope: !94)
!102 = !DILocation(line: 87, column: 2, scope: !94)
!103 = !{i64 2149179523, i64 2149179551, i64 2149179557, i64 2149179573, i64 2149179589, i64 2149179616, i64 2149179946, i64 2149179261, i64 2149179952, i64 2149180000, i64 2149180064, i64 2149180128, i64 2149180185, i64 2149179342, i64 2149179367, i64 2149180392, i64 2149180524, i64 2149180453, i64 2149180538, i64 2149179459}
!104 = !DILocation(line: 93, column: 9, scope: !94)
!105 = !DILocation(line: 94, column: 1, scope: !94)
!106 = !DILocation(line: 93, column: 2, scope: !94)
!107 = distinct !DISubprogram(name: "user_access_begin", scope: !10, file: !10, line: 519, type: !108, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !119)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !113, !115}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !111, line: 35, baseType: !112)
!111 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 61, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !117, line: 72, baseType: !118)
!117 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !117, line: 16, baseType: !5)
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "ptr", arg: 1, scope: !107, file: !10, line: 519, type: !113)
!121 = !DILocalVariable(name: "len", arg: 2, scope: !107, file: !10, line: 519, type: !115)
!122 = !DILocation(line: 519, column: 79, scope: !107)
!123 = !DILocation(line: 519, column: 91, scope: !107)
!124 = !DILocation(line: 521, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !107, file: !10, line: 521, column: 6)
!126 = !DILocation(line: 521, column: 6, scope: !107)
!127 = !DILocation(line: 522, column: 3, scope: !125)
!128 = !DILocation(line: 523, column: 2, scope: !129)
!129 = distinct !DILexicalBlock(scope: !107, file: !10, line: 523, column: 2)
!130 = !{i64 2151641053, i64 2151641081, i64 2151641087, i64 2151641103, i64 2151641119, i64 2151641146, i64 2151641460, i64 2151640817, i64 2151641466, i64 2151641514, i64 2151641578, i64 2151641642, i64 2151641699, i64 2151640898, i64 2151640923, i64 2151641906, i64 2151642028, i64 2151641967, i64 2151642042, i64 2151641015}
!131 = !DILocation(line: 524, column: 2, scope: !107)
!132 = !DILocation(line: 525, column: 1, scope: !107)
!133 = distinct !DISubprogram(name: "do_strnlen_user", scope: !3, file: !3, line: 23, type: !134, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !136)
!134 = !DISubroutineType(types: !135)
!135 = !{!7, !35, !5, !5}
!136 = !{!137, !138, !139, !140, !148, !149, !150, !151, !153, !156, !160, !162, !165}
!137 = !DILocalVariable(name: "src", arg: 1, scope: !133, file: !3, line: 23, type: !35)
!138 = !DILocalVariable(name: "count", arg: 2, scope: !133, file: !3, line: 23, type: !5)
!139 = !DILocalVariable(name: "max", arg: 3, scope: !133, file: !3, line: 23, type: !5)
!140 = !DILocalVariable(name: "constants", scope: !133, file: !3, line: 25, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_at_a_time", file: !143, line: 14, size: 128, elements: !144)
!143 = !DIFile(filename: "./arch/x86/include/asm/word-at-a-time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9ff3ba13b74d134be400adb436d72b7")
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "one_bits", scope: !142, file: !143, line: 15, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "high_bits", scope: !142, file: !143, line: 15, baseType: !146, size: 64, offset: 64)
!148 = !DILocalVariable(name: "align", scope: !133, file: !3, line: 26, type: !5)
!149 = !DILocalVariable(name: "res", scope: !133, file: !3, line: 26, type: !5)
!150 = !DILocalVariable(name: "c", scope: !133, file: !3, line: 27, type: !5)
!151 = !DILocalVariable(name: "__gu_val", scope: !152, file: !3, line: 37, type: !5)
!152 = distinct !DILexicalBlock(scope: !133, file: !3, line: 37, column: 2)
!153 = !DILocalVariable(name: "__tmp", scope: !154, file: !3, line: 37, type: !17)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 37, column: 2)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 37, column: 2)
!156 = !DILocalVariable(name: "data", scope: !157, file: !3, line: 41, type: !5)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 40, column: 11)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 40, column: 2)
!159 = distinct !DILexicalBlock(scope: !133, file: !3, line: 40, column: 2)
!160 = !DILocalVariable(name: "__gu_val", scope: !161, file: !3, line: 52, type: !5)
!161 = distinct !DILexicalBlock(scope: !157, file: !3, line: 52, column: 3)
!162 = !DILocalVariable(name: "__tmp", scope: !163, file: !3, line: 52, type: !17)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 52, column: 3)
!164 = distinct !DILexicalBlock(scope: !161, file: !3, line: 52, column: 3)
!165 = !DILabel(scope: !133, name: "efault", file: !3, line: 67)
!166 = !DILocation(line: 23, column: 64, scope: !133)
!167 = !DILocation(line: 23, column: 83, scope: !133)
!168 = !DILocation(line: 23, column: 104, scope: !133)
!169 = !DILocation(line: 25, column: 2, scope: !133)
!170 = !DILocation(line: 25, column: 30, scope: !133)
!171 = !DILocation(line: 26, column: 2, scope: !133)
!172 = !DILocation(line: 26, column: 16, scope: !133)
!173 = !DILocation(line: 26, column: 23, scope: !133)
!174 = !DILocation(line: 27, column: 2, scope: !133)
!175 = !DILocation(line: 27, column: 16, scope: !133)
!176 = !DILocation(line: 33, column: 55, scope: !133)
!177 = !DILocation(line: 33, column: 40, scope: !133)
!178 = !DILocation(line: 33, column: 38, scope: !133)
!179 = !DILocation(line: 33, column: 8, scope: !133)
!180 = !DILocation(line: 34, column: 9, scope: !133)
!181 = !DILocation(line: 34, column: 6, scope: !133)
!182 = !DILocation(line: 35, column: 9, scope: !133)
!183 = !DILocation(line: 35, column: 6, scope: !133)
!184 = !DILocation(line: 37, column: 2, scope: !133)
!185 = !DILocation(line: 37, column: 2, scope: !152)
!186 = !DILocation(line: 37, column: 2, scope: !155)
!187 = !{i64 2153890568, i64 2153890588, i64 2153890624, i64 2153890668, i64 2153890691, i64 2153890723, i64 2153890756, i64 2153890781}
!188 = !DILocation(line: 37, column: 2, scope: !154)
!189 = !DILocation(line: 38, column: 7, scope: !133)
!190 = !DILocation(line: 38, column: 4, scope: !133)
!191 = !DILocation(line: 40, column: 2, scope: !133)
!192 = !DILocation(line: 41, column: 3, scope: !157)
!193 = !DILocation(line: 41, column: 17, scope: !157)
!194 = !DILocation(line: 42, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !157, file: !3, line: 42, column: 7)
!196 = !DILocation(line: 42, column: 7, scope: !195)
!197 = !DILocation(line: 42, column: 7, scope: !157)
!198 = !DILocation(line: 43, column: 26, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !3, line: 42, column: 39)
!200 = !DILocation(line: 43, column: 29, scope: !199)
!201 = !DILocation(line: 43, column: 11, scope: !199)
!202 = !DILocation(line: 43, column: 9, scope: !199)
!203 = !DILocation(line: 44, column: 28, scope: !199)
!204 = !DILocation(line: 44, column: 11, scope: !199)
!205 = !DILocation(line: 44, column: 9, scope: !199)
!206 = !DILocation(line: 45, column: 11, scope: !199)
!207 = !DILocation(line: 45, column: 27, scope: !199)
!208 = !DILocation(line: 45, column: 17, scope: !199)
!209 = !DILocation(line: 45, column: 15, scope: !199)
!210 = !DILocation(line: 45, column: 33, scope: !199)
!211 = !DILocation(line: 45, column: 39, scope: !199)
!212 = !DILocation(line: 45, column: 37, scope: !199)
!213 = !DILocation(line: 45, column: 4, scope: !199)
!214 = !DILocation(line: 47, column: 7, scope: !157)
!215 = !DILocation(line: 49, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !157, file: !3, line: 49, column: 7)
!217 = !DILocation(line: 49, column: 7, scope: !157)
!218 = !DILocation(line: 50, column: 4, scope: !216)
!219 = !DILocation(line: 51, column: 7, scope: !157)
!220 = !DILocation(line: 52, column: 3, scope: !157)
!221 = !DILocation(line: 52, column: 3, scope: !161)
!222 = !DILocation(line: 52, column: 3, scope: !164)
!223 = !{i64 2153897705, i64 2153897725, i64 2153897761, i64 2153897805, i64 2153897828, i64 2153897860, i64 2153897893, i64 2153897918}
!224 = !DILocation(line: 52, column: 3, scope: !163)
!225 = !DILocation(line: 53, column: 2, scope: !158)
!226 = !DILocation(line: 40, column: 2, scope: !158)
!227 = distinct !{!227, !228, !229, !230}
!228 = !DILocation(line: 40, column: 2, scope: !159)
!229 = !DILocation(line: 53, column: 2, scope: !159)
!230 = !{!"llvm.loop.unroll.disable"}
!231 = !DILocation(line: 54, column: 9, scope: !133)
!232 = !DILocation(line: 54, column: 6, scope: !133)
!233 = !DILocation(line: 60, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !133, file: !3, line: 60, column: 6)
!235 = !DILocation(line: 60, column: 13, scope: !234)
!236 = !DILocation(line: 60, column: 10, scope: !234)
!237 = !DILocation(line: 60, column: 6, scope: !133)
!238 = !DILocation(line: 61, column: 10, scope: !234)
!239 = !DILocation(line: 61, column: 15, scope: !234)
!240 = !DILocation(line: 61, column: 3, scope: !234)
!241 = !DILocation(line: 67, column: 1, scope: !133)
!242 = !DILocation(line: 68, column: 2, scope: !133)
!243 = !DILocation(line: 69, column: 1, scope: !133)
!244 = distinct !DISubprogram(name: "clac", scope: !245, file: !245, line: 30, type: !246, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!245 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!246 = !DISubroutineType(types: !247)
!247 = !{null}
!248 = !DILocation(line: 33, column: 2, scope: !244)
!249 = !{i64 2151072279, i64 2151072307, i64 2151072313, i64 2151072329, i64 2151072345, i64 2151072372, i64 2151072686, i64 2151072029, i64 2151072692, i64 2151072740, i64 2151072804, i64 2151072868, i64 2151072925, i64 2151072110, i64 2151072135, i64 2151073132, i64 2151073268, i64 2151073193, i64 2151073282, i64 2151072227}
!250 = !DILocation(line: 34, column: 1, scope: !244)
!251 = distinct !DISubprogram(name: "__access_ok", scope: !252, file: !252, line: 85, type: !253, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!252 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!253 = !DISubroutineType(types: !254)
!254 = !{!110, !113, !5}
!255 = !{!256, !257, !258}
!256 = !DILocalVariable(name: "ptr", arg: 1, scope: !251, file: !252, line: 85, type: !113)
!257 = !DILocalVariable(name: "size", arg: 2, scope: !251, file: !252, line: 85, type: !5)
!258 = !DILocalVariable(name: "sum", scope: !259, file: !252, line: 90, type: !5)
!259 = distinct !DILexicalBlock(scope: !260, file: !252, line: 89, column: 9)
!260 = distinct !DILexicalBlock(scope: !251, file: !252, line: 87, column: 6)
!261 = !DILocation(line: 85, column: 51, scope: !251)
!262 = !DILocation(line: 85, column: 70, scope: !251)
!263 = !DILocation(line: 87, column: 27, scope: !260)
!264 = !DILocation(line: 87, column: 32, scope: !260)
!265 = !DILocation(line: 87, column: 6, scope: !260)
!266 = !DILocation(line: 87, column: 46, scope: !260)
!267 = !DILocation(line: 87, column: 49, scope: !260)
!268 = !DILocation(line: 87, column: 54, scope: !260)
!269 = !DILocation(line: 87, column: 6, scope: !251)
!270 = !DILocation(line: 88, column: 10, scope: !271)
!271 = distinct !DILexicalBlock(scope: !260, file: !252, line: 87, column: 68)
!272 = !DILocation(line: 88, column: 3, scope: !271)
!273 = !DILocation(line: 90, column: 3, scope: !259)
!274 = !DILocation(line: 90, column: 17, scope: !259)
!275 = !DILocation(line: 90, column: 23, scope: !259)
!276 = !DILocation(line: 90, column: 45, scope: !259)
!277 = !DILocation(line: 90, column: 30, scope: !259)
!278 = !DILocation(line: 90, column: 28, scope: !259)
!279 = !DILocation(line: 91, column: 10, scope: !259)
!280 = !DILocation(line: 91, column: 34, scope: !259)
!281 = !DILocation(line: 91, column: 37, scope: !259)
!282 = !DILocation(line: 91, column: 59, scope: !259)
!283 = !DILocation(line: 91, column: 44, scope: !259)
!284 = !DILocation(line: 91, column: 41, scope: !259)
!285 = !DILocation(line: 0, scope: !259)
!286 = !DILocation(line: 91, column: 3, scope: !259)
!287 = !DILocation(line: 92, column: 2, scope: !260)
!288 = !DILocation(line: 93, column: 1, scope: !251)
!289 = distinct !DISubprogram(name: "stac", scope: !245, file: !245, line: 36, type: !246, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!290 = !DILocation(line: 39, column: 2, scope: !289)
!291 = !{i64 2151073946, i64 2151073974, i64 2151073980, i64 2151073996, i64 2151074012, i64 2151074039, i64 2151074353, i64 2151073696, i64 2151074359, i64 2151074407, i64 2151074471, i64 2151074535, i64 2151074592, i64 2151073777, i64 2151073802, i64 2151074799, i64 2151074935, i64 2151074860, i64 2151074949, i64 2151073894}
!292 = !DILocation(line: 40, column: 1, scope: !289)
!293 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !294, file: !294, line: 70, type: !295, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!294 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!295 = !DISubroutineType(types: !296)
!296 = !{null, !113, !115}
!297 = !{!298, !299}
!298 = !DILocalVariable(name: "address", arg: 1, scope: !293, file: !294, line: 70, type: !113)
!299 = !DILocalVariable(name: "size", arg: 2, scope: !293, file: !294, line: 70, type: !115)
!300 = !DILocation(line: 70, column: 54, scope: !293)
!301 = !DILocation(line: 70, column: 70, scope: !293)
!302 = !DILocation(line: 72, column: 1, scope: !293)
!303 = distinct !DISubprogram(name: "has_zero", scope: !143, file: !143, line: 47, type: !304, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!304 = !DISubroutineType(types: !305)
!305 = !{!5, !5, !16, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!307 = !{!308, !309, !310, !311}
!308 = !DILocalVariable(name: "a", arg: 1, scope: !303, file: !143, line: 47, type: !5)
!309 = !DILocalVariable(name: "bits", arg: 2, scope: !303, file: !143, line: 47, type: !16)
!310 = !DILocalVariable(name: "c", arg: 3, scope: !303, file: !143, line: 47, type: !306)
!311 = !DILocalVariable(name: "mask", scope: !303, file: !143, line: 49, type: !5)
!312 = !DILocation(line: 47, column: 52, scope: !303)
!313 = !DILocation(line: 47, column: 70, scope: !303)
!314 = !DILocation(line: 47, column: 105, scope: !303)
!315 = !DILocation(line: 49, column: 2, scope: !303)
!316 = !DILocation(line: 49, column: 16, scope: !303)
!317 = !DILocation(line: 49, column: 25, scope: !303)
!318 = !DILocation(line: 49, column: 29, scope: !303)
!319 = !DILocation(line: 49, column: 32, scope: !303)
!320 = !DILocation(line: 49, column: 27, scope: !303)
!321 = !DILocation(line: 49, column: 45, scope: !303)
!322 = !DILocation(line: 49, column: 44, scope: !303)
!323 = !DILocation(line: 49, column: 42, scope: !303)
!324 = !DILocation(line: 49, column: 50, scope: !303)
!325 = !DILocation(line: 49, column: 53, scope: !303)
!326 = !DILocation(line: 49, column: 48, scope: !303)
!327 = !DILocation(line: 50, column: 10, scope: !303)
!328 = !DILocation(line: 50, column: 3, scope: !303)
!329 = !DILocation(line: 50, column: 8, scope: !303)
!330 = !DILocation(line: 51, column: 9, scope: !303)
!331 = !DILocation(line: 52, column: 1, scope: !303)
!332 = !DILocation(line: 51, column: 2, scope: !303)
!333 = distinct !DISubprogram(name: "prep_zero_mask", scope: !143, file: !143, line: 54, type: !334, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!5, !5, !5, !306}
!336 = !{!337, !338, !339}
!337 = !DILocalVariable(name: "a", arg: 1, scope: !333, file: !143, line: 54, type: !5)
!338 = !DILocalVariable(name: "bits", arg: 2, scope: !333, file: !143, line: 54, type: !5)
!339 = !DILocalVariable(name: "c", arg: 3, scope: !333, file: !143, line: 54, type: !306)
!340 = !DILocation(line: 54, column: 58, scope: !333)
!341 = !DILocation(line: 54, column: 75, scope: !333)
!342 = !DILocation(line: 54, column: 110, scope: !333)
!343 = !DILocation(line: 56, column: 9, scope: !333)
!344 = !DILocation(line: 56, column: 2, scope: !333)
!345 = distinct !DISubprogram(name: "create_zero_mask", scope: !143, file: !143, line: 59, type: !346, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!5, !5}
!348 = !{!349}
!349 = !DILocalVariable(name: "bits", arg: 1, scope: !345, file: !143, line: 59, type: !5)
!350 = !DILocation(line: 59, column: 60, scope: !345)
!351 = !DILocation(line: 61, column: 10, scope: !345)
!352 = !DILocation(line: 61, column: 15, scope: !345)
!353 = !DILocation(line: 61, column: 23, scope: !345)
!354 = !DILocation(line: 61, column: 22, scope: !345)
!355 = !DILocation(line: 61, column: 20, scope: !345)
!356 = !DILocation(line: 61, column: 7, scope: !345)
!357 = !DILocation(line: 62, column: 9, scope: !345)
!358 = !DILocation(line: 62, column: 14, scope: !345)
!359 = !DILocation(line: 62, column: 2, scope: !345)
!360 = distinct !DISubprogram(name: "find_zero", scope: !143, file: !143, line: 68, type: !346, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!361 = !{!362}
!362 = !DILocalVariable(name: "mask", arg: 1, scope: !360, file: !143, line: 68, type: !5)
!363 = !DILocation(line: 68, column: 53, scope: !360)
!364 = !DILocation(line: 70, column: 28, scope: !360)
!365 = !DILocation(line: 70, column: 9, scope: !360)
!366 = !DILocation(line: 70, column: 2, scope: !360)
!367 = distinct !DISubprogram(name: "count_masked_bytes", scope: !143, file: !143, line: 28, type: !368, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{!7, !5}
!370 = !{!371}
!371 = !DILocalVariable(name: "mask", arg: 1, scope: !367, file: !143, line: 28, type: !5)
!372 = !DILocation(line: 28, column: 53, scope: !367)
!373 = !DILocation(line: 30, column: 9, scope: !367)
!374 = !DILocation(line: 30, column: 13, scope: !367)
!375 = !DILocation(line: 30, column: 35, scope: !367)
!376 = !DILocation(line: 30, column: 2, scope: !367)
