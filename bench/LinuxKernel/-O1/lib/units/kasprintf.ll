; ModuleID = 'lib/kasprintf.c'
source_filename = "lib/kasprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kvasprintf: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kvasprintf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kvasprintf_const: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kvasprintf_const ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kasprintf: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kasprintf ; .previous"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [62 x i8] c"different return values (%u and %u) from vsnprintf(\22%s\22, ...)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"lib/kasprintf.c\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_kvasprintf118 = internal global ptr @kvasprintf, section ".discard.addressable", align 8, !dbg !12
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !19
@__UNIQUE_ID___addressable_kvasprintf_const119 = internal global ptr @kvasprintf_const, section ".discard.addressable", align 8, !dbg !24
@__UNIQUE_ID___addressable_kasprintf120 = internal global ptr @kasprintf, section ".discard.addressable", align 8, !dbg !26
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_kvasprintf118, ptr @__UNIQUE_ID___addressable_kvasprintf_const119, ptr @__UNIQUE_ID___addressable_kasprintf120], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden noalias ptr @kvasprintf(i32 noundef %gfp, ptr noundef %fmt, ptr noundef %ap) #0 align 16 !dbg !37 {
entry:
  %retval = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %p = alloca ptr, align 8
  %aq = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !54, metadata !DIExpression()), !dbg !74
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !55, metadata !DIExpression()), !dbg !75
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !56, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #7, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %first, metadata !57, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 4, ptr %second) #7, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %second, metadata !58, metadata !DIExpression()), !dbg !79
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %p, metadata !59, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 24, ptr %aq) #7, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %aq, metadata !60, metadata !DIExpression()), !dbg !83
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %aq, i64 0, i64 0, !dbg !84
  %0 = load ptr, ptr %ap.addr, align 8, !dbg !84
  call void @llvm.va_copy(ptr %arraydecay, ptr %0), !dbg !84
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !85
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %aq, i64 0, i64 0, !dbg !86
  %call = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %1, ptr noundef %arraydecay1) #8, !dbg !87
  store i32 %call, ptr %first, align 4, !dbg !88
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %aq, i64 0, i64 0, !dbg !89
  call void @llvm.va_end(ptr %arraydecay2), !dbg !89
  %2 = load i32, ptr %first, align 4, !dbg !90
  %add = add i32 %2, 1, !dbg !90
  %conv = zext i32 %add to i64, !dbg !90
  %3 = load i32, ptr %gfp.addr, align 4, !dbg !90
  %4 = call ptr @llvm.returnaddress(i32 0), !dbg !90
  %5 = ptrtoint ptr %4 to i64, !dbg !90
  %call3 = call noalias ptr @__kmalloc_node_track_caller(i64 noundef %conv, i32 noundef %3, i32 noundef -1, i64 noundef %5) #9, !dbg !90
  store ptr %call3, ptr %p, align 8, !dbg !91
  %6 = load ptr, ptr %p, align 8, !dbg !92
  %tobool = icmp ne ptr %6, null, !dbg !92
  br i1 %tobool, label %if.end, label %if.then, !dbg !94

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !95
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !95

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %p, align 8, !dbg !96
  %8 = load i32, ptr %first, align 4, !dbg !97
  %add4 = add i32 %8, 1, !dbg !98
  %conv5 = zext i32 %add4 to i64, !dbg !97
  %9 = load ptr, ptr %fmt.addr, align 8, !dbg !99
  %10 = load ptr, ptr %ap.addr, align 8, !dbg !100
  %call6 = call i32 @vsnprintf(ptr noundef %7, i64 noundef %conv5, ptr noundef %9, ptr noundef %10) #8, !dbg !101
  store i32 %call6, ptr %second, align 4, !dbg !102
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !67, metadata !DIExpression()), !dbg !103
  %11 = load i32, ptr %first, align 4, !dbg !103
  %12 = load i32, ptr %second, align 4, !dbg !103
  %cmp = icmp ne i32 %11, %12, !dbg !103
  %lnot = xor i1 %cmp, true, !dbg !103
  %lnot8 = xor i1 %lnot, true, !dbg !103
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !103
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !103
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !104
  %tobool9 = icmp ne i32 %13, 0, !dbg !104
  %lnot10 = xor i1 %tobool9, true, !dbg !104
  %lnot12 = xor i1 %lnot10, true, !dbg !104
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !104
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !104
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !104
  %tobool15 = icmp ne i64 %expval, 0, !dbg !104
  br i1 %tobool15, label %if.then16, label %if.end35, !dbg !103

if.then16:                                        ; preds = %if.end
  br label %do.body, !dbg !104

do.body:                                          ; preds = %if.then16
  br label %do.body17, !dbg !105

do.body17:                                        ; preds = %do.body
  br label %do.cond, !dbg !106

do.cond:                                          ; preds = %do.body17
  br label %do.end, !dbg !106

do.end:                                           ; preds = %do.cond
  %14 = load i32, ptr %first, align 4, !dbg !105
  %15 = load i32, ptr %second, align 4, !dbg !105
  %16 = load ptr, ptr %fmt.addr, align 8, !dbg !105
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %14, i32 noundef %15, ptr noundef %16) #8, !dbg !105
  br label %do.body18, !dbg !105

do.body18:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !70, metadata !DIExpression()), !dbg !108
  store i32 2313, ptr %__flags, align 4, !dbg !108
  br label %do.body19, !dbg !108

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !109

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !109

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !108

do.body22:                                        ; preds = %do.end21
  %17 = load i32, ptr %__flags, align 4, !dbg !111
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 31, i32 %17, i64 12) #7, !dbg !111, !srcloc !113
  br label %do.cond23, !dbg !111

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !111

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !108

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !114

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !114

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !105
  br label %do.cond28, !dbg !108

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !108

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !105

do.body30:                                        ; preds = %do.end29
  br label %do.cond31, !dbg !116

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !116

do.end32:                                         ; preds = %do.cond31
  br label %do.cond33, !dbg !105

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !105

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !105

if.end35:                                         ; preds = %do.end34, %if.end
  %18 = load i32, ptr %__ret_warn_on, align 4, !dbg !103
  %tobool36 = icmp ne i32 %18, 0, !dbg !103
  %lnot37 = xor i1 %tobool36, true, !dbg !103
  %lnot39 = xor i1 %lnot37, true, !dbg !103
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !103
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !103
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !103
  store i64 %expval42, ptr %tmp, align 8, !dbg !104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !118
  %19 = load i64, ptr %tmp, align 8, !dbg !103
  %20 = load ptr, ptr %p, align 8, !dbg !119
  store ptr %20, ptr %retval, align 8, !dbg !120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !120

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %aq) #7, !dbg !121
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !121
  call void @llvm.lifetime.end.p0(i64 4, ptr %second) #7, !dbg !121
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #7, !dbg !121
  %21 = load ptr, ptr %retval, align 8, !dbg !121
  ret ptr %21, !dbg !121
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !122 dso_local i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !130 dso_local noalias ptr @__kmalloc_node_track_caller(i64 noundef, i32 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !134 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kvasprintf_const(i32 noundef %gfp, ptr noundef %fmt, ptr noundef %ap) #0 align 16 !dbg !138 {
entry:
  %retval = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !142, metadata !DIExpression()), !dbg !145
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !143, metadata !DIExpression()), !dbg !146
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !144, metadata !DIExpression()), !dbg !147
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !148
  %call = call ptr @strchr(ptr noundef %0, i32 noundef 37) #8, !dbg !150
  %tobool = icmp ne ptr %call, null, !dbg !150
  br i1 %tobool, label %if.end, label %if.then, !dbg !151

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !152
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !153
  %call1 = call ptr @kstrdup_const(ptr noundef %1, i32 noundef %2) #8, !dbg !154
  store ptr %call1, ptr %retval, align 8, !dbg !155
  br label %return, !dbg !155

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fmt.addr, align 8, !dbg !156
  %call2 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.2) #8, !dbg !158
  %tobool3 = icmp ne i32 %call2, 0, !dbg !158
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !159

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %ap.addr, align 8, !dbg !160
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %4, i32 0, i32 0, !dbg !160
  %gp_offset = load i32, ptr %gp_offset_p, align 8, !dbg !160
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !160
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !160

vaarg.in_reg:                                     ; preds = %if.then4
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i32 0, i32 3, !dbg !160
  %reg_save_area = load ptr, ptr %5, align 8, !dbg !160
  %6 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !160
  %7 = add i32 %gp_offset, 8, !dbg !160
  store i32 %7, ptr %gp_offset_p, align 8, !dbg !160
  br label %vaarg.end, !dbg !160

vaarg.in_mem:                                     ; preds = %if.then4
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %4, i32 0, i32 2, !dbg !160
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !160
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !160
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !160
  br label %vaarg.end, !dbg !160

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !160
  %8 = load ptr, ptr %vaarg.addr, align 8, !dbg !160
  %9 = load i32, ptr %gfp.addr, align 4, !dbg !161
  %call5 = call ptr @kstrdup_const(ptr noundef %8, i32 noundef %9) #8, !dbg !162
  store ptr %call5, ptr %retval, align 8, !dbg !163
  br label %return, !dbg !163

if.end6:                                          ; preds = %if.end
  %10 = load i32, ptr %gfp.addr, align 4, !dbg !164
  %11 = load ptr, ptr %fmt.addr, align 8, !dbg !165
  %12 = load ptr, ptr %ap.addr, align 8, !dbg !166
  %call7 = call noalias ptr @kvasprintf(i32 noundef %10, ptr noundef %11, ptr noundef %12) #8, !dbg !167
  store ptr %call7, ptr %retval, align 8, !dbg !168
  br label %return, !dbg !168

return:                                           ; preds = %if.end6, %vaarg.end, %if.then
  %13 = load ptr, ptr %retval, align 8, !dbg !169
  ret ptr %13, !dbg !169
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !170 dso_local ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !174 dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !177 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden noalias ptr @kasprintf(i32 noundef %gfp, ptr noundef %fmt, ...) #0 align 16 !dbg !180 {
entry:
  %gfp.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %p = alloca ptr, align 8
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !184, metadata !DIExpression()), !dbg !188
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !185, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #7, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !186, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %p, metadata !187, metadata !DIExpression()), !dbg !193
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !194
  call void @llvm.va_start(ptr %arraydecay), !dbg !194
  %0 = load i32, ptr %gfp.addr, align 4, !dbg !195
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !196
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !197
  %call = call noalias ptr @kvasprintf(i32 noundef %0, ptr noundef %1, ptr noundef %arraydecay1) #8, !dbg !198
  store ptr %call, ptr %p, align 8, !dbg !199
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !200
  call void @llvm.va_end(ptr %arraydecay2), !dbg !200
  %2 = load ptr, ptr %p, align 8, !dbg !201
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !202
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #7, !dbg !202
  ret ptr %2, !dbg !203
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/kasprintf.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7fec797ce3af0a448683e75b0ff2d84b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 62)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kvasprintf118", scope: !14, file: !2, line: 35, type: !17, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.kasprintf.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/kasprintf\22 -D KBUILD_BASENAME=\22kasprintf\22 -D KBUILD_MODNAME=\22kasprintf\22 -D __KBUILD_MODNAME=kmod_kasprintf -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/kasprintf.ll lib/kasprintf.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !18, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !17}
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0, !7, !12, !19, !24, !26}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 3)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kvasprintf_const119", scope: !14, file: !2, line: 51, type: !17, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kasprintf120", scope: !14, file: !2, line: 64, type: !17, isLocal: true, isDefinition: true)
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 8, !"cf-protection-branch", i32 1}
!32 = !{i32 4, !"function_return_thunk_extern", i32 1}
!33 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!34 = !{i32 1, !"Code Model", i32 2}
!35 = !{i32 1, !"override-stack-alignment", i32 8}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = distinct !DISubprogram(name: "kvasprintf", scope: !2, file: !2, line: 15, type: !38, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !53)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41, !44, !46}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !42, line: 154, baseType: !43)
!42 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !47, file: !2, baseType: !43, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !47, file: !2, baseType: !43, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !47, file: !2, baseType: !17, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !47, file: !2, baseType: !17, size: 64, offset: 128)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !67, !70}
!54 = !DILocalVariable(name: "gfp", arg: 1, scope: !37, file: !2, line: 15, type: !41)
!55 = !DILocalVariable(name: "fmt", arg: 2, scope: !37, file: !2, line: 15, type: !44)
!56 = !DILocalVariable(name: "ap", arg: 3, scope: !37, file: !2, line: 15, type: !46)
!57 = !DILocalVariable(name: "first", scope: !37, file: !2, line: 17, type: !43)
!58 = !DILocalVariable(name: "second", scope: !37, file: !2, line: 17, type: !43)
!59 = !DILocalVariable(name: "p", scope: !37, file: !2, line: 18, type: !40)
!60 = !DILocalVariable(name: "aq", scope: !37, file: !2, line: 19, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !62, line: 5, baseType: !63)
!62 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 1)
!67 = !DILocalVariable(name: "__ret_warn_on", scope: !68, file: !2, line: 30, type: !69)
!68 = distinct !DILexicalBlock(scope: !37, file: !2, line: 30, column: 2)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DILocalVariable(name: "__flags", scope: !71, file: !2, line: 30, type: !69)
!71 = distinct !DILexicalBlock(scope: !72, file: !2, line: 30, column: 2)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 30, column: 2)
!73 = distinct !DILexicalBlock(scope: !68, file: !2, line: 30, column: 2)
!74 = !DILocation(line: 15, column: 24, scope: !37)
!75 = !DILocation(line: 15, column: 41, scope: !37)
!76 = !DILocation(line: 15, column: 54, scope: !37)
!77 = !DILocation(line: 17, column: 2, scope: !37)
!78 = !DILocation(line: 17, column: 15, scope: !37)
!79 = !DILocation(line: 17, column: 22, scope: !37)
!80 = !DILocation(line: 18, column: 2, scope: !37)
!81 = !DILocation(line: 18, column: 8, scope: !37)
!82 = !DILocation(line: 19, column: 2, scope: !37)
!83 = !DILocation(line: 19, column: 10, scope: !37)
!84 = !DILocation(line: 21, column: 2, scope: !37)
!85 = !DILocation(line: 22, column: 29, scope: !37)
!86 = !DILocation(line: 22, column: 34, scope: !37)
!87 = !DILocation(line: 22, column: 10, scope: !37)
!88 = !DILocation(line: 22, column: 8, scope: !37)
!89 = !DILocation(line: 23, column: 2, scope: !37)
!90 = !DILocation(line: 25, column: 6, scope: !37)
!91 = !DILocation(line: 25, column: 4, scope: !37)
!92 = !DILocation(line: 26, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !37, file: !2, line: 26, column: 6)
!94 = !DILocation(line: 26, column: 6, scope: !37)
!95 = !DILocation(line: 27, column: 3, scope: !93)
!96 = !DILocation(line: 29, column: 21, scope: !37)
!97 = !DILocation(line: 29, column: 24, scope: !37)
!98 = !DILocation(line: 29, column: 29, scope: !37)
!99 = !DILocation(line: 29, column: 33, scope: !37)
!100 = !DILocation(line: 29, column: 38, scope: !37)
!101 = !DILocation(line: 29, column: 11, scope: !37)
!102 = !DILocation(line: 29, column: 9, scope: !37)
!103 = !DILocation(line: 30, column: 2, scope: !68)
!104 = !DILocation(line: 30, column: 2, scope: !73)
!105 = !DILocation(line: 30, column: 2, scope: !72)
!106 = !DILocation(line: 30, column: 2, scope: !107)
!107 = distinct !DILexicalBlock(scope: !72, file: !2, line: 30, column: 2)
!108 = !DILocation(line: 30, column: 2, scope: !71)
!109 = !DILocation(line: 30, column: 2, scope: !110)
!110 = distinct !DILexicalBlock(scope: !71, file: !2, line: 30, column: 2)
!111 = !DILocation(line: 30, column: 2, scope: !112)
!112 = distinct !DILexicalBlock(scope: !71, file: !2, line: 30, column: 2)
!113 = !{i64 2151408895, i64 2151408924, i64 2151408970, i64 2151409028, i64 2151409082, i64 2151409136, i64 2151409191, i64 2151409222, i64 2151409530, i64 2151409536, i64 2151409583, i64 2151409606, i64 2151409632}
!114 = !DILocation(line: 30, column: 2, scope: !115)
!115 = distinct !DILexicalBlock(scope: !71, file: !2, line: 30, column: 2)
!116 = !DILocation(line: 30, column: 2, scope: !117)
!117 = distinct !DILexicalBlock(scope: !72, file: !2, line: 30, column: 2)
!118 = !DILocation(line: 30, column: 2, scope: !37)
!119 = !DILocation(line: 33, column: 9, scope: !37)
!120 = !DILocation(line: 33, column: 2, scope: !37)
!121 = !DILocation(line: 34, column: 1, scope: !37)
!122 = !DISubprogram(name: "vsnprintf", scope: !123, file: !123, line: 13, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!124 = !DISubroutineType(types: !125)
!125 = !{!69, !40, !126, !44, !46}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 61, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !128, line: 72, baseType: !129)
!128 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !128, line: 16, baseType: !16)
!130 = !DISubprogram(name: "__kmalloc_node_track_caller", scope: !131, file: !131, line: 671, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!132 = !DISubroutineType(types: !133)
!133 = !{!17, !126, !41, !69, !16}
!134 = !DISubprogram(name: "__warn_printk", scope: !135, file: !135, line: 93, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!136 = !DISubroutineType(types: !137)
!137 = !{null, !44, null}
!138 = distinct !DISubprogram(name: "kvasprintf_const", scope: !2, file: !2, line: 43, type: !139, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!44, !41, !44, !46}
!141 = !{!142, !143, !144}
!142 = !DILocalVariable(name: "gfp", arg: 1, scope: !138, file: !2, line: 43, type: !41)
!143 = !DILocalVariable(name: "fmt", arg: 2, scope: !138, file: !2, line: 43, type: !44)
!144 = !DILocalVariable(name: "ap", arg: 3, scope: !138, file: !2, line: 43, type: !46)
!145 = !DILocation(line: 43, column: 36, scope: !138)
!146 = !DILocation(line: 43, column: 53, scope: !138)
!147 = !DILocation(line: 43, column: 66, scope: !138)
!148 = !DILocation(line: 45, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !138, file: !2, line: 45, column: 6)
!150 = !DILocation(line: 45, column: 7, scope: !149)
!151 = !DILocation(line: 45, column: 6, scope: !138)
!152 = !DILocation(line: 46, column: 24, scope: !149)
!153 = !DILocation(line: 46, column: 29, scope: !149)
!154 = !DILocation(line: 46, column: 10, scope: !149)
!155 = !DILocation(line: 46, column: 3, scope: !149)
!156 = !DILocation(line: 47, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !138, file: !2, line: 47, column: 6)
!158 = !DILocation(line: 47, column: 7, scope: !157)
!159 = !DILocation(line: 47, column: 6, scope: !138)
!160 = !DILocation(line: 48, column: 24, scope: !157)
!161 = !DILocation(line: 48, column: 49, scope: !157)
!162 = !DILocation(line: 48, column: 10, scope: !157)
!163 = !DILocation(line: 48, column: 3, scope: !157)
!164 = !DILocation(line: 49, column: 20, scope: !138)
!165 = !DILocation(line: 49, column: 25, scope: !138)
!166 = !DILocation(line: 49, column: 30, scope: !138)
!167 = !DILocation(line: 49, column: 9, scope: !138)
!168 = !DILocation(line: 49, column: 2, scope: !138)
!169 = !DILocation(line: 50, column: 1, scope: !138)
!170 = !DISubprogram(name: "strchr", scope: !171, file: !171, line: 100, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!172 = !DISubroutineType(types: !173)
!173 = !{!40, !44, !69}
!174 = !DISubprogram(name: "kstrdup_const", scope: !171, file: !171, line: 217, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!44, !44, !41}
!177 = !DISubprogram(name: "strcmp", scope: !171, file: !171, line: 88, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!69, !44, !44}
!180 = distinct !DISubprogram(name: "kasprintf", scope: !2, file: !2, line: 53, type: !181, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !183)
!181 = !DISubroutineType(types: !182)
!182 = !{!40, !41, !44, null}
!183 = !{!184, !185, !186, !187}
!184 = !DILocalVariable(name: "gfp", arg: 1, scope: !180, file: !2, line: 53, type: !41)
!185 = !DILocalVariable(name: "fmt", arg: 2, scope: !180, file: !2, line: 53, type: !44)
!186 = !DILocalVariable(name: "ap", scope: !180, file: !2, line: 55, type: !61)
!187 = !DILocalVariable(name: "p", scope: !180, file: !2, line: 56, type: !40)
!188 = !DILocation(line: 53, column: 23, scope: !180)
!189 = !DILocation(line: 53, column: 40, scope: !180)
!190 = !DILocation(line: 55, column: 2, scope: !180)
!191 = !DILocation(line: 55, column: 10, scope: !180)
!192 = !DILocation(line: 56, column: 2, scope: !180)
!193 = !DILocation(line: 56, column: 8, scope: !180)
!194 = !DILocation(line: 58, column: 2, scope: !180)
!195 = !DILocation(line: 59, column: 17, scope: !180)
!196 = !DILocation(line: 59, column: 22, scope: !180)
!197 = !DILocation(line: 59, column: 27, scope: !180)
!198 = !DILocation(line: 59, column: 6, scope: !180)
!199 = !DILocation(line: 59, column: 4, scope: !180)
!200 = !DILocation(line: 60, column: 2, scope: !180)
!201 = !DILocation(line: 62, column: 9, scope: !180)
!202 = !DILocation(line: 63, column: 1, scope: !180)
!203 = !DILocation(line: 62, column: 2, scope: !180)
