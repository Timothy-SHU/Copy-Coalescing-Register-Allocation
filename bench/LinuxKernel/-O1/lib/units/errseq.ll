; ModuleID = 'lib/errseq.c'
source_filename = "lib/errseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_errseq_set: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad errseq_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_errseq_sample: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad errseq_sample ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_errseq_check: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad errseq_check ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_errseq_check_and_advance: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad errseq_check_and_advance ; .previous"

@.str = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"lib/errseq.c\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_errseq_set12 = internal global ptr @errseq_set, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_errseq_sample14 = internal global ptr @errseq_sample, section ".discard.addressable", align 8, !dbg !34
@__UNIQUE_ID___addressable_errseq_check16 = internal global ptr @errseq_check, section ".discard.addressable", align 8, !dbg !36
@__UNIQUE_ID___addressable_errseq_check_and_advance18 = internal global ptr @errseq_check_and_advance, section ".discard.addressable", align 8, !dbg !38
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_errseq_set12, ptr @__UNIQUE_ID___addressable_errseq_sample14, ptr @__UNIQUE_ID___addressable_errseq_check16, ptr @__UNIQUE_ID___addressable_errseq_check_and_advance18], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @errseq_set(ptr noundef %eseq, i32 noundef %err) #0 align 16 !dbg !49 {
entry:
  %retval = alloca i32, align 4
  %eseq.addr = alloca ptr, align 8
  %err.addr = alloca i32, align 4
  %cur = alloca i32, align 4
  %old = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp39 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %new = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp62 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp63 = alloca i32, align 4
  store ptr %eseq, ptr %eseq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eseq.addr, metadata !57, metadata !DIExpression()), !dbg !79
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !58, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur) #7, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !59, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #7, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %old, metadata !60, metadata !DIExpression()), !dbg !83
  br label %do.body, !dbg !84

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !85

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !85

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !87

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !89

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !89

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %eseq.addr, align 8, !dbg !87
  %1 = load volatile i32, ptr %0, align 4, !dbg !87
  store i32 %1, ptr %tmp, align 4, !dbg !89
  %2 = load i32, ptr %tmp, align 4, !dbg !87
  store i32 %2, ptr %old, align 4, !dbg !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !61, metadata !DIExpression()), !dbg !92
  %3 = load i32, ptr %err.addr, align 4, !dbg !92
  %cmp = icmp eq i32 %3, 0, !dbg !92
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !92

lor.rhs:                                          ; preds = %do.end3
  %4 = load i32, ptr %err.addr, align 4, !dbg !92
  %sub = sub i32 0, %4, !dbg !92
  %cmp4 = icmp ugt i32 %sub, 4095, !dbg !92
  br label %lor.end, !dbg !92

lor.end:                                          ; preds = %lor.rhs, %do.end3
  %5 = phi i1 [ true, %do.end3 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !92
  %lnot5 = xor i1 %lnot, true, !dbg !92
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !92
  %conv = sext i32 %lnot.ext to i64, !dbg !92
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !92
  %tobool = icmp ne i64 %expval, 0, !dbg !92
  %lnot6 = xor i1 %tobool, true, !dbg !92
  %lnot8 = xor i1 %lnot6, true, !dbg !92
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !92
  store i32 %lnot.ext9, ptr %__ret_warn_on, align 4, !dbg !92
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !93
  %tobool10 = icmp ne i32 %6, 0, !dbg !93
  %lnot11 = xor i1 %tobool10, true, !dbg !93
  %lnot13 = xor i1 %lnot11, true, !dbg !93
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !93
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !93
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !93
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !93
  br i1 %tobool17, label %if.then, label %if.end, !dbg !92

if.then:                                          ; preds = %lor.end
  br label %do.body18, !dbg !93

do.body18:                                        ; preds = %if.then
  br label %do.body19, !dbg !94

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !95

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !95

do.end21:                                         ; preds = %do.cond20
  %7 = load i32, ptr %err.addr, align 4, !dbg !94
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %7) #8, !dbg !94
  br label %do.body22, !dbg !94

do.body22:                                        ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !64, metadata !DIExpression()), !dbg !97
  store i32 2313, ptr %__flags, align 4, !dbg !97
  br label %do.body23, !dbg !97

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !98

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !98

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !97

do.body26:                                        ; preds = %do.end25
  %8 = load i32, ptr %__flags, align 4, !dbg !100
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 75, i32 %8, i64 12) #7, !dbg !100, !srcloc !102
  br label %do.cond27, !dbg !100

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !100

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !97

do.body29:                                        ; preds = %do.end28
  br label %do.cond30, !dbg !103

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !103

do.end31:                                         ; preds = %do.cond30
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !94
  br label %do.cond32, !dbg !97

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !97

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !94

do.body34:                                        ; preds = %do.end33
  br label %do.cond35, !dbg !105

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !105

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !94

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !94

do.end38:                                         ; preds = %do.cond37
  br label %if.end, !dbg !94

if.end:                                           ; preds = %do.end38, %lor.end
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !92
  %tobool40 = icmp ne i32 %9, 0, !dbg !92
  %lnot41 = xor i1 %tobool40, true, !dbg !92
  %lnot43 = xor i1 %lnot41, true, !dbg !92
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !92
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !92
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !92
  store i64 %expval46, ptr %tmp39, align 8, !dbg !93
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !107
  %10 = load i64, ptr %tmp39, align 8, !dbg !92
  %tobool47 = icmp ne i64 %10, 0, !dbg !107
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !108

if.then48:                                        ; preds = %if.end
  %11 = load i32, ptr %old, align 4, !dbg !109
  store i32 %11, ptr %retval, align 4, !dbg !110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !110

if.end49:                                         ; preds = %if.end
  br label %for.cond, !dbg !111

for.cond:                                         ; preds = %cleanup.cont, %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #7, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %new, metadata !68, metadata !DIExpression()), !dbg !113
  %12 = load i32, ptr %old, align 4, !dbg !114
  %and = and i32 %12, -8192, !dbg !115
  %13 = load i32, ptr %err.addr, align 4, !dbg !116
  %sub50 = sub i32 0, %13, !dbg !117
  %or = or i32 %and, %sub50, !dbg !118
  store i32 %or, ptr %new, align 4, !dbg !119
  %14 = load i32, ptr %old, align 4, !dbg !120
  %and51 = and i32 %14, 4096, !dbg !122
  %tobool52 = icmp ne i32 %and51, 0, !dbg !122
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !123

if.then53:                                        ; preds = %for.cond
  %15 = load i32, ptr %new, align 4, !dbg !124
  %add = add i32 %15, 8192, !dbg !124
  store i32 %add, ptr %new, align 4, !dbg !124
  br label %if.end54, !dbg !125

if.end54:                                         ; preds = %if.then53, %for.cond
  %16 = load i32, ptr %new, align 4, !dbg !126
  %17 = load i32, ptr %old, align 4, !dbg !128
  %cmp55 = icmp eq i32 %16, %17, !dbg !129
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !130

if.then57:                                        ; preds = %if.end54
  %18 = load i32, ptr %new, align 4, !dbg !131
  store i32 %18, ptr %cur, align 4, !dbg !133
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !134

if.end58:                                         ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #7, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !72, metadata !DIExpression()), !dbg !135
  %19 = load ptr, ptr %eseq.addr, align 8, !dbg !135
  store ptr %19, ptr %__ai_ptr, align 8, !dbg !135
  br label %do.body59, !dbg !135

do.body59:                                        ; preds = %if.end58
  br label %do.cond60, !dbg !136

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !136

do.end61:                                         ; preds = %do.cond60
  %20 = load ptr, ptr %__ai_ptr, align 8, !dbg !135
  call void @instrument_atomic_read_write(ptr noundef %20, i64 noundef 4) #8, !dbg !135
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #7, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !74, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #7, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !76, metadata !DIExpression()), !dbg !138
  %21 = load i32, ptr %old, align 4, !dbg !138
  store i32 %21, ptr %__old, align 4, !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #7, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !77, metadata !DIExpression()), !dbg !138
  %22 = load i32, ptr %new, align 4, !dbg !138
  store i32 %22, ptr %__new, align 4, !dbg !138
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #7, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !78, metadata !DIExpression()), !dbg !138
  %23 = load ptr, ptr %__ai_ptr, align 8, !dbg !138
  store ptr %23, ptr %__ptr, align 8, !dbg !138
  %24 = load ptr, ptr %__ptr, align 8, !dbg !138
  %25 = load i32, ptr %__new, align 4, !dbg !138
  %26 = load i32, ptr %__old, align 4, !dbg !138
  %27 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %24, i32 %25, i32 %26, ptr elementtype(i32) %24) #7, !dbg !138, !srcloc !139
  store i32 %27, ptr %__ret, align 4, !dbg !138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #7, !dbg !138
  %28 = load i32, ptr %__ret, align 4, !dbg !138
  store i32 %28, ptr %tmp63, align 4, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #7, !dbg !135
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #7, !dbg !135
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #7, !dbg !135
  %29 = load i32, ptr %tmp63, align 4, !dbg !138
  store i32 %29, ptr %tmp62, align 4, !dbg !135
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #7, !dbg !140
  %30 = load i32, ptr %tmp62, align 4, !dbg !135
  store i32 %30, ptr %cur, align 4, !dbg !141
  %31 = load i32, ptr %cur, align 4, !dbg !142
  %32 = load i32, ptr %old, align 4, !dbg !142
  %cmp64 = icmp eq i32 %31, %32, !dbg !142
  br i1 %cmp64, label %lor.end69, label %lor.rhs66, !dbg !142

lor.rhs66:                                        ; preds = %do.end61
  %33 = load i32, ptr %cur, align 4, !dbg !142
  %34 = load i32, ptr %new, align 4, !dbg !142
  %cmp67 = icmp eq i32 %33, %34, !dbg !142
  br label %lor.end69, !dbg !142

lor.end69:                                        ; preds = %lor.rhs66, %do.end61
  %35 = phi i1 [ true, %do.end61 ], [ %cmp67, %lor.rhs66 ]
  %lnot70 = xor i1 %35, true, !dbg !142
  %lnot72 = xor i1 %lnot70, true, !dbg !142
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !142
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !142
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 1), !dbg !142
  %tobool76 = icmp ne i64 %expval75, 0, !dbg !142
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !144

if.then77:                                        ; preds = %lor.end69
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !145

if.end78:                                         ; preds = %lor.end69
  %36 = load i32, ptr %cur, align 4, !dbg !146
  store i32 %36, ptr %old, align 4, !dbg !147
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !148
  br label %cleanup, !dbg !148

cleanup:                                          ; preds = %if.end78, %if.then77, %if.then57
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #7, !dbg !148
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 20, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !149, !llvm.loop !150

for.end:                                          ; preds = %cleanup
  %37 = load i32, ptr %cur, align 4, !dbg !154
  store i32 %37, ptr %retval, align 4, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !155

cleanup79:                                        ; preds = %for.end, %if.then48
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #7, !dbg !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur) #7, !dbg !156
  %38 = load i32, ptr %retval, align 4, !dbg !156
  ret i32 %38, !dbg !156

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !157 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !163 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !177, metadata !DIExpression()), !dbg !179
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !178, metadata !DIExpression()), !dbg !180
  %0 = load ptr, ptr %v.addr, align 8, !dbg !181
  %1 = load i64, ptr %size.addr, align 8, !dbg !182
  %conv = trunc i64 %1 to i32, !dbg !182
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !183
  %2 = load ptr, ptr %v.addr, align 8, !dbg !184
  %3 = load i64, ptr %size.addr, align 8, !dbg !184
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !184
  ret void, !dbg !185
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @errseq_sample(ptr noundef %eseq) #0 align 16 !dbg !186 {
entry:
  %eseq.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %eseq, ptr %eseq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eseq.addr, metadata !190, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #7, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %old, metadata !191, metadata !DIExpression()), !dbg !194
  br label %do.body, !dbg !195

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !197

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !197

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %eseq.addr, align 8, !dbg !195
  %1 = load volatile i32, ptr %0, align 4, !dbg !195
  store i32 %1, ptr %tmp, align 4, !dbg !197
  %2 = load i32, ptr %tmp, align 4, !dbg !195
  store i32 %2, ptr %old, align 4, !dbg !194
  %3 = load i32, ptr %old, align 4, !dbg !199
  %and = and i32 %3, 4096, !dbg !201
  %tobool = icmp ne i32 %and, 0, !dbg !201
  br i1 %tobool, label %if.end, label %if.then, !dbg !202

if.then:                                          ; preds = %do.end
  store i32 0, ptr %old, align 4, !dbg !203
  br label %if.end, !dbg !204

if.end:                                           ; preds = %if.then, %do.end
  %4 = load i32, ptr %old, align 4, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #7, !dbg !206
  ret i32 %4, !dbg !207
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @errseq_check(ptr noundef %eseq, i32 noundef %since) #0 align 16 !dbg !208 {
entry:
  %retval = alloca i32, align 4
  %eseq.addr = alloca ptr, align 8
  %since.addr = alloca i32, align 4
  %cur = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %eseq, ptr %eseq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eseq.addr, metadata !212, metadata !DIExpression()), !dbg !215
  store i32 %since, ptr %since.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %since.addr, metadata !213, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur) #7, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !214, metadata !DIExpression()), !dbg !218
  br label %do.body, !dbg !219

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !221

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !221

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %eseq.addr, align 8, !dbg !219
  %1 = load volatile i32, ptr %0, align 4, !dbg !219
  store i32 %1, ptr %tmp, align 4, !dbg !221
  %2 = load i32, ptr %tmp, align 4, !dbg !219
  store i32 %2, ptr %cur, align 4, !dbg !218
  %3 = load i32, ptr %cur, align 4, !dbg !223
  %4 = load i32, ptr %since.addr, align 4, !dbg !223
  %cmp = icmp eq i32 %3, %4, !dbg !223
  %lnot = xor i1 %cmp, true, !dbg !223
  %lnot1 = xor i1 %lnot, true, !dbg !223
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !223
  %conv = sext i32 %lnot.ext to i64, !dbg !223
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !223
  %tobool = icmp ne i64 %expval, 0, !dbg !223
  br i1 %tobool, label %if.then, label %if.end, !dbg !225

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

if.end:                                           ; preds = %do.end
  %5 = load i32, ptr %cur, align 4, !dbg !227
  %and = and i32 %5, 4095, !dbg !228
  %sub = sub i32 0, %and, !dbg !229
  store i32 %sub, ptr %retval, align 4, !dbg !230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !230

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur) #7, !dbg !231
  %6 = load i32, ptr %retval, align 4, !dbg !231
  ret i32 %6, !dbg !231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @errseq_check_and_advance(ptr noundef %eseq, ptr noundef %since) #0 align 16 !dbg !232 {
entry:
  %eseq.addr = alloca ptr, align 8
  %since.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %old = alloca i32, align 4
  %new = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp6 = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp7 = alloca i32, align 4
  store ptr %eseq, ptr %eseq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eseq.addr, metadata !236, metadata !DIExpression()), !dbg !251
  store ptr %since, ptr %since.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %since.addr, metadata !237, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %err, metadata !238, metadata !DIExpression()), !dbg !254
  store i32 0, ptr %err, align 4, !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #7, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %old, metadata !239, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #7, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %new, metadata !240, metadata !DIExpression()), !dbg !257
  br label %do.body, !dbg !258

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !260

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !260

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %eseq.addr, align 8, !dbg !258
  %1 = load volatile i32, ptr %0, align 4, !dbg !258
  store i32 %1, ptr %tmp, align 4, !dbg !260
  %2 = load i32, ptr %tmp, align 4, !dbg !258
  store i32 %2, ptr %old, align 4, !dbg !262
  %3 = load i32, ptr %old, align 4, !dbg !263
  %4 = load ptr, ptr %since.addr, align 8, !dbg !264
  %5 = load i32, ptr %4, align 4, !dbg !265
  %cmp = icmp ne i32 %3, %5, !dbg !266
  br i1 %cmp, label %if.then, label %if.end8, !dbg !267

if.then:                                          ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !268
  %or = or i32 %6, 4096, !dbg !269
  store i32 %or, ptr %new, align 4, !dbg !270
  %7 = load i32, ptr %new, align 4, !dbg !271
  %8 = load i32, ptr %old, align 4, !dbg !272
  %cmp1 = icmp ne i32 %7, %8, !dbg !273
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !274

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #7, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !241, metadata !DIExpression()), !dbg !275
  %9 = load ptr, ptr %eseq.addr, align 8, !dbg !275
  store ptr %9, ptr %__ai_ptr, align 8, !dbg !275
  br label %do.body3, !dbg !275

do.body3:                                         ; preds = %if.then2
  br label %do.cond4, !dbg !276

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !276

do.end5:                                          ; preds = %do.cond4
  %10 = load ptr, ptr %__ai_ptr, align 8, !dbg !275
  call void @instrument_atomic_read_write(ptr noundef %10, i64 noundef 4) #8, !dbg !275
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #7, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !246, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #7, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !248, metadata !DIExpression()), !dbg !278
  %11 = load i32, ptr %old, align 4, !dbg !278
  store i32 %11, ptr %__old, align 4, !dbg !278
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #7, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !249, metadata !DIExpression()), !dbg !278
  %12 = load i32, ptr %new, align 4, !dbg !278
  store i32 %12, ptr %__new, align 4, !dbg !278
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #7, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !250, metadata !DIExpression()), !dbg !278
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !278
  store ptr %13, ptr %__ptr, align 8, !dbg !278
  %14 = load ptr, ptr %__ptr, align 8, !dbg !278
  %15 = load i32, ptr %__new, align 4, !dbg !278
  %16 = load i32, ptr %__old, align 4, !dbg !278
  %17 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %14, i32 %15, i32 %16, ptr elementtype(i32) %14) #7, !dbg !278, !srcloc !279
  store i32 %17, ptr %__ret, align 4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #7, !dbg !278
  %18 = load i32, ptr %__ret, align 4, !dbg !278
  store i32 %18, ptr %tmp7, align 4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #7, !dbg !275
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #7, !dbg !275
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #7, !dbg !275
  %19 = load i32, ptr %tmp7, align 4, !dbg !278
  store i32 %19, ptr %tmp6, align 4, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #7, !dbg !280
  %20 = load i32, ptr %tmp6, align 4, !dbg !275
  br label %if.end, !dbg !280

if.end:                                           ; preds = %do.end5, %if.then
  %21 = load i32, ptr %new, align 4, !dbg !281
  %22 = load ptr, ptr %since.addr, align 8, !dbg !282
  store i32 %21, ptr %22, align 4, !dbg !283
  %23 = load i32, ptr %new, align 4, !dbg !284
  %and = and i32 %23, 4095, !dbg !285
  %sub = sub i32 0, %and, !dbg !286
  store i32 %sub, ptr %err, align 4, !dbg !287
  br label %if.end8, !dbg !288

if.end8:                                          ; preds = %if.end, %do.end
  %24 = load i32, ptr %err, align 4, !dbg !289
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #7, !dbg !290
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #7, !dbg !290
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !290
  ret i32 %24, !dbg !291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !292 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !299, metadata !DIExpression()), !dbg !301
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !300, metadata !DIExpression()), !dbg !302
  ret i1 true, !dbg !303
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !304 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !309, metadata !DIExpression()), !dbg !312
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !310, metadata !DIExpression()), !dbg !313
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !311, metadata !DIExpression()), !dbg !314
  ret void, !dbg !315
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/errseq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f49ce290a4f6330df2a8825ce559a839")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_errseq_set12", scope: !14, file: !2, line: 109, type: !32, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.errseq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/errseq\22 -D KBUILD_BASENAME=\22errseq\22 -D KBUILD_MODNAME=\22errseq\22 -D __KBUILD_MODNAME=kmod_errseq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/errseq.ll lib/errseq.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !22, globals: !33, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !{!23, !18, !26, !32}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !18)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !{!0, !7, !12, !34, !36, !38}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_errseq_sample14", scope: !14, file: !2, line: 132, type: !32, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_errseq_check16", scope: !14, file: !2, line: 153, type: !32, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_errseq_check_and_advance18", scope: !14, file: !2, line: 207, type: !32, isLocal: true, isDefinition: true)
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 8, !"cf-protection-branch", i32 1}
!44 = !{i32 4, !"function_return_thunk_extern", i32 1}
!45 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!46 = !{i32 1, !"Code Model", i32 2}
!47 = !{i32 1, !"override-stack-alignment", i32 8}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = distinct !DISubprogram(name: "errseq_set", scope: !2, file: !2, line: 59, type: !50, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !56)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !54, !55}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !53, line: 8, baseType: !28)
!53 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{!57, !58, !59, !60, !61, !64, !68, !72, !74, !76, !77, !78}
!57 = !DILocalVariable(name: "eseq", arg: 1, scope: !49, file: !2, line: 59, type: !54)
!58 = !DILocalVariable(name: "err", arg: 2, scope: !49, file: !2, line: 59, type: !55)
!59 = !DILocalVariable(name: "cur", scope: !49, file: !2, line: 61, type: !52)
!60 = !DILocalVariable(name: "old", scope: !49, file: !2, line: 61, type: !52)
!61 = !DILocalVariable(name: "__ret_warn_on", scope: !62, file: !2, line: 74, type: !55)
!62 = distinct !DILexicalBlock(scope: !63, file: !2, line: 74, column: 6)
!63 = distinct !DILexicalBlock(scope: !49, file: !2, line: 74, column: 6)
!64 = !DILocalVariable(name: "__flags", scope: !65, file: !2, line: 74, type: !55)
!65 = distinct !DILexicalBlock(scope: !66, file: !2, line: 74, column: 6)
!66 = distinct !DILexicalBlock(scope: !67, file: !2, line: 74, column: 6)
!67 = distinct !DILexicalBlock(scope: !62, file: !2, line: 74, column: 6)
!68 = !DILocalVariable(name: "new", scope: !69, file: !2, line: 79, type: !52)
!69 = distinct !DILexicalBlock(scope: !70, file: !2, line: 78, column: 11)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 78, column: 2)
!71 = distinct !DILexicalBlock(scope: !49, file: !2, line: 78, column: 2)
!72 = !DILocalVariable(name: "__ai_ptr", scope: !73, file: !2, line: 95, type: !54)
!73 = distinct !DILexicalBlock(scope: !69, file: !2, line: 95, column: 9)
!74 = !DILocalVariable(name: "__ret", scope: !75, file: !2, line: 95, type: !52)
!75 = distinct !DILexicalBlock(scope: !73, file: !2, line: 95, column: 9)
!76 = !DILocalVariable(name: "__old", scope: !75, file: !2, line: 95, type: !52)
!77 = !DILocalVariable(name: "__new", scope: !75, file: !2, line: 95, type: !52)
!78 = !DILocalVariable(name: "__ptr", scope: !75, file: !2, line: 95, type: !26)
!79 = !DILocation(line: 59, column: 31, scope: !49)
!80 = !DILocation(line: 59, column: 41, scope: !49)
!81 = !DILocation(line: 61, column: 2, scope: !49)
!82 = !DILocation(line: 61, column: 11, scope: !49)
!83 = !DILocation(line: 61, column: 16, scope: !49)
!84 = !DILocation(line: 64, column: 2, scope: !49)
!85 = !DILocation(line: 64, column: 2, scope: !86)
!86 = distinct !DILexicalBlock(scope: !49, file: !2, line: 64, column: 2)
!87 = !DILocation(line: 72, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !49, file: !2, line: 72, column: 8)
!89 = !DILocation(line: 72, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !88, file: !2, line: 72, column: 8)
!91 = !DILocation(line: 72, column: 6, scope: !49)
!92 = !DILocation(line: 74, column: 6, scope: !62)
!93 = !DILocation(line: 74, column: 6, scope: !67)
!94 = !DILocation(line: 74, column: 6, scope: !66)
!95 = !DILocation(line: 74, column: 6, scope: !96)
!96 = distinct !DILexicalBlock(scope: !66, file: !2, line: 74, column: 6)
!97 = !DILocation(line: 74, column: 6, scope: !65)
!98 = !DILocation(line: 74, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !65, file: !2, line: 74, column: 6)
!100 = !DILocation(line: 74, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !65, file: !2, line: 74, column: 6)
!102 = !{i64 2148546469, i64 2148546498, i64 2148546544, i64 2148546602, i64 2148546656, i64 2148546710, i64 2148546765, i64 2148546796, i64 2148547104, i64 2148547110, i64 2148547157, i64 2148547180, i64 2148547206}
!103 = !DILocation(line: 74, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !65, file: !2, line: 74, column: 6)
!105 = !DILocation(line: 74, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !66, file: !2, line: 74, column: 6)
!107 = !DILocation(line: 74, column: 6, scope: !63)
!108 = !DILocation(line: 74, column: 6, scope: !49)
!109 = !DILocation(line: 76, column: 10, scope: !63)
!110 = !DILocation(line: 76, column: 3, scope: !63)
!111 = !DILocation(line: 78, column: 2, scope: !49)
!112 = !DILocation(line: 79, column: 3, scope: !69)
!113 = !DILocation(line: 79, column: 12, scope: !69)
!114 = !DILocation(line: 82, column: 10, scope: !69)
!115 = !DILocation(line: 82, column: 14, scope: !69)
!116 = !DILocation(line: 82, column: 45, scope: !69)
!117 = !DILocation(line: 82, column: 44, scope: !69)
!118 = !DILocation(line: 82, column: 42, scope: !69)
!119 = !DILocation(line: 82, column: 7, scope: !69)
!120 = !DILocation(line: 85, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !69, file: !2, line: 85, column: 7)
!122 = !DILocation(line: 85, column: 11, scope: !121)
!123 = !DILocation(line: 85, column: 7, scope: !69)
!124 = !DILocation(line: 86, column: 8, scope: !121)
!125 = !DILocation(line: 86, column: 4, scope: !121)
!126 = !DILocation(line: 89, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !69, file: !2, line: 89, column: 7)
!128 = !DILocation(line: 89, column: 14, scope: !127)
!129 = !DILocation(line: 89, column: 11, scope: !127)
!130 = !DILocation(line: 89, column: 7, scope: !69)
!131 = !DILocation(line: 90, column: 10, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !2, line: 89, column: 19)
!133 = !DILocation(line: 90, column: 8, scope: !132)
!134 = !DILocation(line: 91, column: 4, scope: !132)
!135 = !DILocation(line: 95, column: 9, scope: !73)
!136 = !DILocation(line: 95, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !73, file: !2, line: 95, column: 9)
!138 = !DILocation(line: 95, column: 9, scope: !75)
!139 = !{i64 2148550440, i64 2148550479, i64 2148550500, i64 2148550537, i64 2148550560, i64 2148550569}
!140 = !DILocation(line: 95, column: 9, scope: !69)
!141 = !DILocation(line: 95, column: 7, scope: !69)
!142 = !DILocation(line: 101, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !69, file: !2, line: 101, column: 7)
!144 = !DILocation(line: 101, column: 7, scope: !69)
!145 = !DILocation(line: 102, column: 4, scope: !143)
!146 = !DILocation(line: 105, column: 9, scope: !69)
!147 = !DILocation(line: 105, column: 7, scope: !69)
!148 = !DILocation(line: 106, column: 2, scope: !70)
!149 = !DILocation(line: 78, column: 2, scope: !70)
!150 = distinct !{!150, !151, !152, !153}
!151 = !DILocation(line: 78, column: 2, scope: !71)
!152 = !DILocation(line: 106, column: 2, scope: !71)
!153 = !{!"llvm.loop.unroll.disable"}
!154 = !DILocation(line: 107, column: 9, scope: !49)
!155 = !DILocation(line: 107, column: 2, scope: !49)
!156 = !DILocation(line: 108, column: 1, scope: !49)
!157 = !DISubprogram(name: "__warn_printk", scope: !158, file: !158, line: 93, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161, null}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!163 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !164, file: !164, line: 94, type: !165, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !176)
!164 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !170}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 61, baseType: !172)
!171 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !173, line: 72, baseType: !174)
!173 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !173, line: 16, baseType: !175)
!175 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "v", arg: 1, scope: !163, file: !164, line: 94, type: !167)
!178 = !DILocalVariable(name: "size", arg: 2, scope: !163, file: !164, line: 94, type: !170)
!179 = !DILocation(line: 94, column: 79, scope: !163)
!180 = !DILocation(line: 94, column: 89, scope: !163)
!181 = !DILocation(line: 96, column: 20, scope: !163)
!182 = !DILocation(line: 96, column: 23, scope: !163)
!183 = !DILocation(line: 96, column: 2, scope: !163)
!184 = !DILocation(line: 97, column: 2, scope: !163)
!185 = !DILocation(line: 98, column: 1, scope: !163)
!186 = distinct !DISubprogram(name: "errseq_sample", scope: !2, file: !2, line: 123, type: !187, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!52, !54}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "eseq", arg: 1, scope: !186, file: !2, line: 123, type: !54)
!191 = !DILocalVariable(name: "old", scope: !186, file: !2, line: 125, type: !52)
!192 = !DILocation(line: 123, column: 34, scope: !186)
!193 = !DILocation(line: 125, column: 2, scope: !186)
!194 = !DILocation(line: 125, column: 11, scope: !186)
!195 = !DILocation(line: 125, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !186, file: !2, line: 125, column: 17)
!197 = !DILocation(line: 125, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !196, file: !2, line: 125, column: 17)
!199 = !DILocation(line: 128, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !186, file: !2, line: 128, column: 6)
!201 = !DILocation(line: 128, column: 12, scope: !200)
!202 = !DILocation(line: 128, column: 6, scope: !186)
!203 = !DILocation(line: 129, column: 7, scope: !200)
!204 = !DILocation(line: 129, column: 3, scope: !200)
!205 = !DILocation(line: 130, column: 9, scope: !186)
!206 = !DILocation(line: 131, column: 1, scope: !186)
!207 = !DILocation(line: 130, column: 2, scope: !186)
!208 = distinct !DISubprogram(name: "errseq_check", scope: !2, file: !2, line: 145, type: !209, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!55, !54, !52}
!211 = !{!212, !213, !214}
!212 = !DILocalVariable(name: "eseq", arg: 1, scope: !208, file: !2, line: 145, type: !54)
!213 = !DILocalVariable(name: "since", arg: 2, scope: !208, file: !2, line: 145, type: !52)
!214 = !DILocalVariable(name: "cur", scope: !208, file: !2, line: 147, type: !52)
!215 = !DILocation(line: 145, column: 28, scope: !208)
!216 = !DILocation(line: 145, column: 43, scope: !208)
!217 = !DILocation(line: 147, column: 2, scope: !208)
!218 = !DILocation(line: 147, column: 11, scope: !208)
!219 = !DILocation(line: 147, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !208, file: !2, line: 147, column: 17)
!221 = !DILocation(line: 147, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !2, line: 147, column: 17)
!223 = !DILocation(line: 149, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !208, file: !2, line: 149, column: 6)
!225 = !DILocation(line: 149, column: 6, scope: !208)
!226 = !DILocation(line: 150, column: 3, scope: !224)
!227 = !DILocation(line: 151, column: 11, scope: !208)
!228 = !DILocation(line: 151, column: 15, scope: !208)
!229 = !DILocation(line: 151, column: 9, scope: !208)
!230 = !DILocation(line: 151, column: 2, scope: !208)
!231 = !DILocation(line: 152, column: 1, scope: !208)
!232 = distinct !DISubprogram(name: "errseq_check_and_advance", scope: !2, file: !2, line: 175, type: !233, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!55, !54, !54}
!235 = !{!236, !237, !238, !239, !240, !241, !246, !248, !249, !250}
!236 = !DILocalVariable(name: "eseq", arg: 1, scope: !232, file: !2, line: 175, type: !54)
!237 = !DILocalVariable(name: "since", arg: 2, scope: !232, file: !2, line: 175, type: !54)
!238 = !DILocalVariable(name: "err", scope: !232, file: !2, line: 177, type: !55)
!239 = !DILocalVariable(name: "old", scope: !232, file: !2, line: 178, type: !52)
!240 = !DILocalVariable(name: "new", scope: !232, file: !2, line: 178, type: !52)
!241 = !DILocalVariable(name: "__ai_ptr", scope: !242, file: !2, line: 201, type: !54)
!242 = distinct !DILexicalBlock(scope: !243, file: !2, line: 201, column: 4)
!243 = distinct !DILexicalBlock(scope: !244, file: !2, line: 200, column: 7)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 186, column: 21)
!245 = distinct !DILexicalBlock(scope: !232, file: !2, line: 186, column: 6)
!246 = !DILocalVariable(name: "__ret", scope: !247, file: !2, line: 201, type: !52)
!247 = distinct !DILexicalBlock(scope: !242, file: !2, line: 201, column: 4)
!248 = !DILocalVariable(name: "__old", scope: !247, file: !2, line: 201, type: !52)
!249 = !DILocalVariable(name: "__new", scope: !247, file: !2, line: 201, type: !52)
!250 = !DILocalVariable(name: "__ptr", scope: !247, file: !2, line: 201, type: !26)
!251 = !DILocation(line: 175, column: 40, scope: !232)
!252 = !DILocation(line: 175, column: 56, scope: !232)
!253 = !DILocation(line: 177, column: 2, scope: !232)
!254 = !DILocation(line: 177, column: 6, scope: !232)
!255 = !DILocation(line: 178, column: 2, scope: !232)
!256 = !DILocation(line: 178, column: 11, scope: !232)
!257 = !DILocation(line: 178, column: 16, scope: !232)
!258 = !DILocation(line: 185, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !232, file: !2, line: 185, column: 8)
!260 = !DILocation(line: 185, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !259, file: !2, line: 185, column: 8)
!262 = !DILocation(line: 185, column: 6, scope: !232)
!263 = !DILocation(line: 186, column: 6, scope: !245)
!264 = !DILocation(line: 186, column: 14, scope: !245)
!265 = !DILocation(line: 186, column: 13, scope: !245)
!266 = !DILocation(line: 186, column: 10, scope: !245)
!267 = !DILocation(line: 186, column: 6, scope: !232)
!268 = !DILocation(line: 199, column: 9, scope: !244)
!269 = !DILocation(line: 199, column: 13, scope: !244)
!270 = !DILocation(line: 199, column: 7, scope: !244)
!271 = !DILocation(line: 200, column: 7, scope: !243)
!272 = !DILocation(line: 200, column: 14, scope: !243)
!273 = !DILocation(line: 200, column: 11, scope: !243)
!274 = !DILocation(line: 200, column: 7, scope: !244)
!275 = !DILocation(line: 201, column: 4, scope: !242)
!276 = !DILocation(line: 201, column: 4, scope: !277)
!277 = distinct !DILexicalBlock(scope: !242, file: !2, line: 201, column: 4)
!278 = !DILocation(line: 201, column: 4, scope: !247)
!279 = !{i64 2148566324, i64 2148566363, i64 2148566384, i64 2148566421, i64 2148566444, i64 2148566453}
!280 = !DILocation(line: 201, column: 4, scope: !243)
!281 = !DILocation(line: 202, column: 12, scope: !244)
!282 = !DILocation(line: 202, column: 4, scope: !244)
!283 = !DILocation(line: 202, column: 10, scope: !244)
!284 = !DILocation(line: 203, column: 11, scope: !244)
!285 = !DILocation(line: 203, column: 15, scope: !244)
!286 = !DILocation(line: 203, column: 9, scope: !244)
!287 = !DILocation(line: 203, column: 7, scope: !244)
!288 = !DILocation(line: 204, column: 2, scope: !244)
!289 = !DILocation(line: 205, column: 9, scope: !232)
!290 = !DILocation(line: 206, column: 1, scope: !232)
!291 = !DILocation(line: 205, column: 2, scope: !232)
!292 = distinct !DISubprogram(name: "kasan_check_write", scope: !293, file: !293, line: 44, type: !294, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !298)
!293 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !167, !18}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !171, line: 35, baseType: !297)
!297 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!298 = !{!299, !300}
!299 = !DILocalVariable(name: "p", arg: 1, scope: !292, file: !293, line: 44, type: !167)
!300 = !DILocalVariable(name: "size", arg: 2, scope: !292, file: !293, line: 44, type: !18)
!301 = !DILocation(line: 44, column: 59, scope: !292)
!302 = !DILocation(line: 44, column: 75, scope: !292)
!303 = !DILocation(line: 46, column: 2, scope: !292)
!304 = distinct !DISubprogram(name: "kcsan_check_access", scope: !305, file: !305, line: 229, type: !306, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !308)
!305 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!306 = !DISubroutineType(types: !307)
!307 = !{null, !167, !170, !55}
!308 = !{!309, !310, !311}
!309 = !DILocalVariable(name: "ptr", arg: 1, scope: !304, file: !305, line: 229, type: !167)
!310 = !DILocalVariable(name: "size", arg: 2, scope: !304, file: !305, line: 229, type: !170)
!311 = !DILocalVariable(name: "type", arg: 3, scope: !304, file: !305, line: 230, type: !55)
!312 = !DILocation(line: 229, column: 60, scope: !304)
!313 = !DILocation(line: 229, column: 72, scope: !304)
!314 = !DILocation(line: 230, column: 15, scope: !304)
!315 = !DILocation(line: 230, column: 23, scope: !304)
