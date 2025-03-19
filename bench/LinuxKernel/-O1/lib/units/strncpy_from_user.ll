; ModuleID = 'lib/strncpy_from_user.c'
source_filename = "lib/strncpy_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strncpy_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strncpy_from_user ; .previous"

%struct.word_at_a_time = type { i64, i64 }
%struct.__large_struct = type { [100 x i64] }

@__UNIQUE_ID___addressable_strncpy_from_user277 = internal global ptr @strncpy_from_user, section ".discard.addressable", align 8, !dbg !0
@__const.do_strncpy_from_user.constants = private unnamed_addr constant %struct.word_at_a_time { i64 72340172838076673, i64 -9187201950435737472 }, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_strncpy_from_user277], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strncpy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !40 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %max_addr = alloca i64, align 8
  %src_addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %max = alloca i64, align 8
  %retval15 = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !47, metadata !DIExpression()), !dbg !56
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !48, metadata !DIExpression()), !dbg !57
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !49, metadata !DIExpression()), !dbg !58
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_addr) #8, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %max_addr, metadata !50, metadata !DIExpression()), !dbg !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_addr) #8, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %src_addr, metadata !51, metadata !DIExpression()), !dbg !61
  call void @might_fault() #9, !dbg !62
  %call = call zeroext i1 @should_fail_usercopy() #9, !dbg !63
  br i1 %call, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %entry
  store i64 -14, ptr %retval, align 8, !dbg !66
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !66

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !67
  %cmp = icmp sle i64 %0, 0, !dbg !67
  %lnot = xor i1 %cmp, true, !dbg !67
  %lnot1 = xor i1 %lnot, true, !dbg !67
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !67
  %conv = sext i32 %lnot.ext to i64, !dbg !67
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !67
  %tobool = icmp ne i64 %expval, 0, !dbg !67
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !69

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !70
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !70

if.end3:                                          ; preds = %if.end
  %call4 = call i64 @task_size_max() #9, !dbg !71
  store i64 %call4, ptr %max_addr, align 8, !dbg !72
  %1 = load ptr, ptr %src.addr, align 8, !dbg !73
  %2 = ptrtoint ptr %1 to i64, !dbg !74
  store i64 %2, ptr %src_addr, align 8, !dbg !75
  %3 = load i64, ptr %src_addr, align 8, !dbg !76
  %4 = load i64, ptr %max_addr, align 8, !dbg !76
  %cmp5 = icmp ult i64 %3, %4, !dbg !76
  %lnot7 = xor i1 %cmp5, true, !dbg !76
  %lnot9 = xor i1 %lnot7, true, !dbg !76
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !76
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !76
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 1), !dbg !76
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !76
  br i1 %tobool13, label %if.then14, label %if.end27, !dbg !77

if.then14:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #8, !dbg !78
  call void @llvm.dbg.declare(metadata ptr %max, metadata !52, metadata !DIExpression()), !dbg !79
  %5 = load i64, ptr %max_addr, align 8, !dbg !80
  %6 = load i64, ptr %src_addr, align 8, !dbg !81
  %sub = sub i64 %5, %6, !dbg !82
  store i64 %sub, ptr %max, align 8, !dbg !79
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval15) #8, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %retval15, metadata !55, metadata !DIExpression()), !dbg !84
  %7 = load i64, ptr %max, align 8, !dbg !85
  %8 = load i64, ptr %count.addr, align 8, !dbg !87
  %cmp16 = icmp ugt i64 %7, %8, !dbg !88
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !89

if.then18:                                        ; preds = %if.then14
  %9 = load i64, ptr %count.addr, align 8, !dbg !90
  store i64 %9, ptr %max, align 8, !dbg !91
  br label %if.end19, !dbg !92

if.end19:                                         ; preds = %if.then18, %if.then14
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !93
  %11 = load i64, ptr %count.addr, align 8, !dbg !94
  %conv20 = trunc i64 %11 to i32, !dbg !94
  %call21 = call zeroext i1 @kasan_check_write(ptr noundef %10, i32 noundef %conv20) #9, !dbg !95
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !96
  %13 = load i64, ptr %count.addr, align 8, !dbg !97
  call void @check_object_size(ptr noundef %12, i64 noundef %13, i1 noundef zeroext false) #9, !dbg !98
  %14 = load ptr, ptr %src.addr, align 8, !dbg !99
  %15 = load i64, ptr %max, align 8, !dbg !99
  %call22 = call zeroext i1 @user_access_begin(ptr noundef %14, i64 noundef %15) #9, !dbg !99
  br i1 %call22, label %if.then23, label %if.end25, !dbg !101

if.then23:                                        ; preds = %if.end19
  %16 = load ptr, ptr %dst.addr, align 8, !dbg !102
  %17 = load ptr, ptr %src.addr, align 8, !dbg !104
  %18 = load i64, ptr %count.addr, align 8, !dbg !105
  %19 = load i64, ptr %max, align 8, !dbg !106
  %call24 = call i64 @do_strncpy_from_user(ptr noundef %16, ptr noundef %17, i64 noundef %18, i64 noundef %19) #9, !dbg !107
  store i64 %call24, ptr %retval15, align 8, !dbg !108
  call void @clac() #9, !dbg !109
  %20 = load i64, ptr %retval15, align 8, !dbg !110
  store i64 %20, ptr %retval, align 8, !dbg !111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !111

if.end25:                                         ; preds = %if.end19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !112
  br label %cleanup, !dbg !112

cleanup:                                          ; preds = %if.end25, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval15) #8, !dbg !112
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #8, !dbg !112
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end27, !dbg !113

if.end27:                                         ; preds = %cleanup.cont, %if.end3
  store i64 -14, ptr %retval, align 8, !dbg !114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !114

cleanup28:                                        ; preds = %if.end27, %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_addr) #8, !dbg !115
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_addr) #8, !dbg !115
  %21 = load i64, ptr %retval, align 8, !dbg !115
  ret i64 %21, !dbg !115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !116 {
entry:
  ret void, !dbg !120
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_usercopy() #3 align 16 !dbg !121 {
entry:
  ret i1 false, !dbg !128
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @task_size_max() #5 align 16 !dbg !129 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !134, metadata !DIExpression()), !dbg !136
  %0 = call i64 asm sideeffect "# ALT: oldnstr\0A661:\0A\09movq $2,$0\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (16*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09movq $3,$0\0A6651:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #8, !dbg !137, !srcloc !138
  store i64 %0, ptr %ret, align 8, !dbg !137
  %1 = load i64, ptr %ret, align 8, !dbg !139
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !140
  ret i64 %1, !dbg !141
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !142 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !150, metadata !DIExpression()), !dbg !152
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !151, metadata !DIExpression()), !dbg !153
  ret i1 true, !dbg !154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !155 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !162, metadata !DIExpression()), !dbg !165
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !163, metadata !DIExpression()), !dbg !166
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !164, metadata !DIExpression()), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_access_begin(ptr noundef %ptr, i64 noundef %len) #5 align 16 !dbg !169 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !177, metadata !DIExpression()), !dbg !179
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !178, metadata !DIExpression()), !dbg !180
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !181
  %1 = load i64, ptr %len.addr, align 8, !dbg !181
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #9, !dbg !181
  %lnot = xor i1 %call, true, !dbg !181
  %lnot1 = xor i1 %lnot, true, !dbg !181
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !181
  %conv = sext i32 %lnot.ext to i64, !dbg !181
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !181
  %tobool = icmp ne i64 %expval, 0, !dbg !181
  %lnot2 = xor i1 %tobool, true, !dbg !181
  %lnot4 = xor i1 %lnot2, true, !dbg !181
  %lnot6 = xor i1 %lnot4, true, !dbg !181
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !181
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !181
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !181
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !181
  br i1 %tobool10, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !184
  br label %return, !dbg !184

if.end:                                           ; preds = %entry
  call void @stac() #9, !dbg !185
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !185, !srcloc !187
  store i1 true, ptr %retval, align 1, !dbg !188
  br label %return, !dbg !188

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !189
  ret i1 %2, !dbg !189
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @do_strncpy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %count, i64 noundef %max) #5 align 16 !dbg !190 {
entry:
  %retval = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %constants = alloca %struct.word_at_a_time, align 8
  %res = alloca i64, align 8
  %c = alloca i64, align 8
  %data = alloca i64, align 8
  %mask = alloca i64, align 8
  %__gu_val = alloca i64, align 8
  %__tmp = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %c15 = alloca i8, align 1
  %__gu_val17 = alloca i8, align 1
  %x_u8__ = alloca i8, align 1
  %__tmp21 = alloca i64, align 8
  %tmp22 = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !194, metadata !DIExpression()), !dbg !227
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !195, metadata !DIExpression()), !dbg !228
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !196, metadata !DIExpression()), !dbg !229
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !197, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 16, ptr %constants) #8, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %constants, metadata !198, metadata !DIExpression()), !dbg !232
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %constants, ptr align 8 @__const.do_strncpy_from_user.constants, i64 16, i1 false), !dbg !232
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #8, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %res, metadata !206, metadata !DIExpression()), !dbg !234
  store i64 0, ptr %res, align 8, !dbg !234
  br label %while.cond, !dbg !235

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load i64, ptr %max.addr, align 8, !dbg !236
  %cmp = icmp uge i64 %0, 8, !dbg !237
  br i1 %cmp, label %while.body, label %while.end, !dbg !235

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #8, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %c, metadata !207, metadata !DIExpression()), !dbg !239
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %data, metadata !209, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #8, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !210, metadata !DIExpression()), !dbg !241
  br label %do.body, !dbg !242

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gu_val) #8, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %__gu_val, metadata !211, metadata !DIExpression()), !dbg !243
  br label %do.body1, !dbg !243

do.body1:                                         ; preds = %do.body
  %1 = load ptr, ptr %src.addr, align 8, !dbg !244
  %2 = load i64, ptr %res, align 8, !dbg !244
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !244
  %3 = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %add.ptr) #8
          to label %asm.fallthrough [label %byte_at_a_time.split], !dbg !244, !srcloc !245

asm.fallthrough:                                  ; preds = %do.body1
  store i64 %3, ptr %__gu_val, align 8, !dbg !244
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #8, !dbg !246
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !213, metadata !DIExpression()), !dbg !246
  %4 = load i64, ptr %__gu_val, align 8, !dbg !246
  store i64 %4, ptr %__tmp, align 8, !dbg !246
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #9, !dbg !246
  %5 = load i64, ptr %__tmp, align 8, !dbg !246
  store i64 %5, ptr %__gu_val, align 8, !dbg !246
  store i64 %5, ptr %tmp, align 8, !dbg !246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #8, !dbg !244
  %6 = load i64, ptr %tmp, align 8, !dbg !246
  br label %do.cond, !dbg !244

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !244

do.end:                                           ; preds = %do.cond
  %7 = load i64, ptr %__gu_val, align 8, !dbg !243
  store i64 %7, ptr %c, align 8, !dbg !243
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gu_val) #8, !dbg !242
  br label %do.cond2, !dbg !243

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !243

do.end3:                                          ; preds = %do.cond2
  %8 = load i64, ptr %c, align 8, !dbg !247
  %call = call i64 @has_zero(i64 noundef %8, ptr noundef %data, ptr noundef %constants) #9, !dbg !249
  %tobool = icmp ne i64 %call, 0, !dbg !249
  br i1 %tobool, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %do.end3
  %9 = load i64, ptr %c, align 8, !dbg !251
  %10 = load i64, ptr %data, align 8, !dbg !253
  %call4 = call i64 @prep_zero_mask(i64 noundef %9, i64 noundef %10, ptr noundef %constants) #9, !dbg !254
  store i64 %call4, ptr %data, align 8, !dbg !255
  %11 = load i64, ptr %data, align 8, !dbg !256
  %call5 = call i64 @create_zero_mask(i64 noundef %11) #9, !dbg !257
  store i64 %call5, ptr %data, align 8, !dbg !258
  %12 = load i64, ptr %data, align 8, !dbg !259
  store i64 %12, ptr %mask, align 8, !dbg !260
  %13 = load i64, ptr %c, align 8, !dbg !261
  %14 = load i64, ptr %mask, align 8, !dbg !262
  %and = and i64 %13, %14, !dbg !263
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !264
  %16 = load i64, ptr %res, align 8, !dbg !265
  %add.ptr6 = getelementptr i8, ptr %15, i64 %16, !dbg !266
  store i64 %and, ptr %add.ptr6, align 8, !dbg !267
  %17 = load i64, ptr %res, align 8, !dbg !268
  %18 = load i64, ptr %data, align 8, !dbg !269
  %call7 = call i64 @find_zero(i64 noundef %18) #9, !dbg !270
  %add = add i64 %17, %call7, !dbg !271
  store i64 %add, ptr %retval, align 8, !dbg !272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !272

byte_at_a_time.split:                             ; preds = %do.body1
  store i64 %3, ptr %__gu_val, align 8, !dbg !244
  br label %byte_at_a_time, !dbg !244

if.end:                                           ; preds = %do.end3
  %19 = load i64, ptr %c, align 8, !dbg !273
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !274
  %21 = load i64, ptr %res, align 8, !dbg !275
  %add.ptr8 = getelementptr i8, ptr %20, i64 %21, !dbg !276
  store i64 %19, ptr %add.ptr8, align 8, !dbg !277
  %22 = load i64, ptr %res, align 8, !dbg !278
  %add9 = add i64 %22, 8, !dbg !278
  store i64 %add9, ptr %res, align 8, !dbg !278
  %23 = load i64, ptr %max.addr, align 8, !dbg !279
  %sub = sub i64 %23, 8, !dbg !279
  store i64 %sub, ptr %max.addr, align 8, !dbg !279
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !280
  br label %cleanup, !dbg !280

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #8, !dbg !280
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8, !dbg !280
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #8, !dbg !280
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !235, !llvm.loop !281

while.end:                                        ; preds = %while.cond
  br label %byte_at_a_time, !dbg !235

byte_at_a_time:                                   ; preds = %while.end, %byte_at_a_time.split
  call void @llvm.dbg.label(metadata !216), !dbg !284
  br label %while.cond12, !dbg !285

while.cond12:                                     ; preds = %cleanup.cont33, %byte_at_a_time
  %24 = load i64, ptr %max.addr, align 8, !dbg !286
  %tobool13 = icmp ne i64 %24, 0, !dbg !285
  br i1 %tobool13, label %while.body14, label %while.end34, !dbg !285

while.body14:                                     ; preds = %while.cond12
  call void @llvm.lifetime.start.p0(i64 1, ptr %c15) #8, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %c15, metadata !217, metadata !DIExpression()), !dbg !288
  br label %do.body16, !dbg !289

do.body16:                                        ; preds = %while.body14
  call void @llvm.lifetime.start.p0(i64 1, ptr %__gu_val17) #8, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %__gu_val17, metadata !219, metadata !DIExpression()), !dbg !290
  br label %do.body18, !dbg !290

do.body18:                                        ; preds = %do.body16
  call void @llvm.lifetime.start.p0(i64 1, ptr %x_u8__) #8, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %x_u8__, metadata !222, metadata !DIExpression()), !dbg !291
  %25 = load ptr, ptr %src.addr, align 8, !dbg !291
  %26 = load i64, ptr %res, align 8, !dbg !291
  %add.ptr19 = getelementptr i8, ptr %25, i64 %26, !dbg !291
  %27 = callbr i8 asm sideeffect "\0A1:\09movb $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=q,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %add.ptr19) #8
          to label %asm.fallthrough20 [label %efault.split], !dbg !291, !srcloc !292

asm.fallthrough20:                                ; preds = %do.body18
  store i8 %27, ptr %x_u8__, align 1, !dbg !291
  %28 = load i8, ptr %x_u8__, align 1, !dbg !291
  store i8 %28, ptr %__gu_val17, align 1, !dbg !291
  call void @llvm.lifetime.end.p0(i64 1, ptr %x_u8__) #8, !dbg !291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp21) #8, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %__tmp21, metadata !224, metadata !DIExpression()), !dbg !293
  %29 = load i8, ptr %__gu_val17, align 1, !dbg !293
  %conv = zext i8 %29 to i64, !dbg !293
  store i64 %conv, ptr %__tmp21, align 8, !dbg !293
  call void @kmsan_unpoison_memory(ptr noundef %__tmp21, i64 noundef 8) #9, !dbg !293
  %30 = load i64, ptr %__tmp21, align 8, !dbg !293
  %conv23 = trunc i64 %30 to i8, !dbg !293
  store i8 %conv23, ptr %__gu_val17, align 1, !dbg !293
  store i8 %conv23, ptr %tmp22, align 1, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp21) #8, !dbg !291
  %31 = load i8, ptr %tmp22, align 1, !dbg !293
  br label %do.cond24, !dbg !291

do.cond24:                                        ; preds = %asm.fallthrough20
  br label %do.end25, !dbg !291

do.end25:                                         ; preds = %do.cond24
  %32 = load i8, ptr %__gu_val17, align 1, !dbg !290
  store i8 %32, ptr %c15, align 1, !dbg !290
  call void @llvm.lifetime.end.p0(i64 1, ptr %__gu_val17) #8, !dbg !289
  br label %do.cond26, !dbg !290

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !290

do.end27:                                         ; preds = %do.cond26
  %33 = load i8, ptr %c15, align 1, !dbg !294
  %34 = load ptr, ptr %dst.addr, align 8, !dbg !295
  %35 = load i64, ptr %res, align 8, !dbg !296
  %arrayidx = getelementptr i8, ptr %34, i64 %35, !dbg !295
  store i8 %33, ptr %arrayidx, align 1, !dbg !297
  %36 = load i8, ptr %c15, align 1, !dbg !298
  %tobool28 = icmp ne i8 %36, 0, !dbg !298
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !300

if.then29:                                        ; preds = %do.end27
  %37 = load i64, ptr %res, align 8, !dbg !301
  store i64 %37, ptr %retval, align 8, !dbg !302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !302

efault.split:                                     ; preds = %do.body18
  store i8 %27, ptr %x_u8__, align 1, !dbg !291
  br label %efault, !dbg !291

if.end30:                                         ; preds = %do.end27
  %38 = load i64, ptr %res, align 8, !dbg !303
  %inc = add i64 %38, 1, !dbg !303
  store i64 %inc, ptr %res, align 8, !dbg !303
  %39 = load i64, ptr %max.addr, align 8, !dbg !304
  %dec = add i64 %39, -1, !dbg !304
  store i64 %dec, ptr %max.addr, align 8, !dbg !304
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !305
  br label %cleanup31, !dbg !305

cleanup31:                                        ; preds = %if.end30, %if.then29
  call void @llvm.lifetime.end.p0(i64 1, ptr %c15) #8, !dbg !305
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %cleanup39 [
    i32 0, label %cleanup.cont33
  ]

cleanup.cont33:                                   ; preds = %cleanup31
  br label %while.cond12, !dbg !285, !llvm.loop !306

while.end34:                                      ; preds = %while.cond12
  %40 = load i64, ptr %res, align 8, !dbg !307
  %41 = load i64, ptr %count.addr, align 8, !dbg !309
  %cmp35 = icmp uge i64 %40, %41, !dbg !310
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !311

if.then37:                                        ; preds = %while.end34
  %42 = load i64, ptr %res, align 8, !dbg !312
  store i64 %42, ptr %retval, align 8, !dbg !313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !313

if.end38:                                         ; preds = %while.end34
  br label %efault, !dbg !309

efault:                                           ; preds = %if.end38, %efault.split
  call void @llvm.dbg.label(metadata !226), !dbg !314
  store i64 -14, ptr %retval, align 8, !dbg !315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !315

cleanup39:                                        ; preds = %efault, %if.then37, %cleanup31, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #8, !dbg !316
  call void @llvm.lifetime.end.p0(i64 16, ptr %constants) #8, !dbg !316
  %43 = load i64, ptr %retval, align 8, !dbg !316
  ret i64 %43, !dbg !316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #5 align 16 !dbg !317 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !319, !srcloc !320
  ret void, !dbg !321
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #3 align 16 !dbg !322 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !327, metadata !DIExpression()), !dbg !332
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !328, metadata !DIExpression()), !dbg !333
  %0 = load i64, ptr %size.addr, align 8, !dbg !334
  %cmp = icmp ule i64 %0, 4096, !dbg !335
  %conv = zext i1 %cmp to i32, !dbg !335
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !336
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !337

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !338
  %cmp1 = icmp ule i64 %2, 4096, !dbg !339
  br i1 %cmp1, label %if.then, label %if.else, !dbg !340

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !341
  %4 = ptrtoint ptr %3 to i64, !dbg !341
  %cmp3 = icmp sge i64 %4, 0, !dbg !341
  store i1 %cmp3, ptr %retval, align 1, !dbg !343
  br label %return, !dbg !343

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #8, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !329, metadata !DIExpression()), !dbg !345
  %5 = load i64, ptr %size.addr, align 8, !dbg !346
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !347
  %7 = ptrtoint ptr %6 to i64, !dbg !348
  %add = add i64 %5, %7, !dbg !349
  store i64 %add, ptr %sum, align 8, !dbg !345
  %8 = load i64, ptr %sum, align 8, !dbg !350
  %cmp5 = icmp sge i64 %8, 0, !dbg !350
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !351

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !352
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !353
  %11 = ptrtoint ptr %10 to i64, !dbg !354
  %cmp7 = icmp uge i64 %9, %11, !dbg !355
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !356
  store i1 %12, ptr %retval, align 1, !dbg !357
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #8, !dbg !358
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !359
  ret i1 %13, !dbg !359
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #5 align 16 !dbg !360 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !361, !srcloc !362
  ret void, !dbg !363
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !364 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !369, metadata !DIExpression()), !dbg !371
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !370, metadata !DIExpression()), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @has_zero(i64 noundef %a, ptr noundef %bits, ptr noundef %c) #3 align 16 !dbg !374 {
entry:
  %a.addr = alloca i64, align 8
  %bits.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !379, metadata !DIExpression()), !dbg !383
  store ptr %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !380, metadata !DIExpression()), !dbg !384
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !381, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #8, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !382, metadata !DIExpression()), !dbg !387
  %0 = load i64, ptr %a.addr, align 8, !dbg !388
  %1 = load ptr, ptr %c.addr, align 8, !dbg !389
  %one_bits = getelementptr inbounds %struct.word_at_a_time, ptr %1, i32 0, i32 0, !dbg !390
  %2 = load i64, ptr %one_bits, align 8, !dbg !390
  %sub = sub i64 %0, %2, !dbg !391
  %3 = load i64, ptr %a.addr, align 8, !dbg !392
  %not = xor i64 %3, -1, !dbg !393
  %and = and i64 %sub, %not, !dbg !394
  %4 = load ptr, ptr %c.addr, align 8, !dbg !395
  %high_bits = getelementptr inbounds %struct.word_at_a_time, ptr %4, i32 0, i32 1, !dbg !396
  %5 = load i64, ptr %high_bits, align 8, !dbg !396
  %and1 = and i64 %and, %5, !dbg !397
  store i64 %and1, ptr %mask, align 8, !dbg !387
  %6 = load i64, ptr %mask, align 8, !dbg !398
  %7 = load ptr, ptr %bits.addr, align 8, !dbg !399
  store i64 %6, ptr %7, align 8, !dbg !400
  %8 = load i64, ptr %mask, align 8, !dbg !401
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #8, !dbg !402
  ret i64 %8, !dbg !403
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @prep_zero_mask(i64 noundef %a, i64 noundef %bits, ptr noundef %c) #3 align 16 !dbg !404 {
entry:
  %a.addr = alloca i64, align 8
  %bits.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !408, metadata !DIExpression()), !dbg !411
  store i64 %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !409, metadata !DIExpression()), !dbg !412
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !410, metadata !DIExpression()), !dbg !413
  %0 = load i64, ptr %bits.addr, align 8, !dbg !414
  ret i64 %0, !dbg !415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @create_zero_mask(i64 noundef %bits) #3 align 16 !dbg !416 {
entry:
  %bits.addr = alloca i64, align 8
  store i64 %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load i64, ptr %bits.addr, align 8, !dbg !422
  %sub = sub i64 %0, 1, !dbg !423
  %1 = load i64, ptr %bits.addr, align 8, !dbg !424
  %not = xor i64 %1, -1, !dbg !425
  %and = and i64 %sub, %not, !dbg !426
  store i64 %and, ptr %bits.addr, align 8, !dbg !427
  %2 = load i64, ptr %bits.addr, align 8, !dbg !428
  %shr = lshr i64 %2, 7, !dbg !429
  ret i64 %shr, !dbg !430
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_zero(i64 noundef %mask) #3 align 16 !dbg !431 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i64, ptr %mask.addr, align 8, !dbg !435
  %call = call i64 @count_masked_bytes(i64 noundef %0) #9, !dbg !436
  ret i64 %call, !dbg !437
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @count_masked_bytes(i64 noundef %mask) #3 align 16 !dbg !438 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i64, ptr %mask.addr, align 8, !dbg !444
  %mul = mul i64 %0, 283686952306184, !dbg !445
  %shr = lshr i64 %mul, 56, !dbg !446
  ret i64 %shr, !dbg !447
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strncpy_from_user277", scope: !2, file: !3, line: 146, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.strncpy_from_user.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/strncpy_from_user\22 -D KBUILD_BASENAME=\22strncpy_from_user\22 -D KBUILD_MODNAME=\22strncpy_from_user\22 -D __KBUILD_MODNAME=kmod_strncpy_from_user -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/strncpy_from_user.ll lib/strncpy_from_user.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/strncpy_from_user.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b19ccdc4d6afdfdf5737b6900a3a194b")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !15, !23, !24, !29}
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__large_struct", file: !17, line: 471, size: 6400, elements: !18)
!17 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !16, file: !17, line: 471, baseType: !20, size: 6400)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 6400, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 100)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!0}
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "strncpy_from_user", scope: !3, file: !3, line: 113, type: !41, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!41 = !DISubroutineType(types: !42)
!42 = !{!14, !43, !44, !14}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!46 = !{!47, !48, !49, !50, !51, !52, !55}
!47 = !DILocalVariable(name: "dst", arg: 1, scope: !40, file: !3, line: 113, type: !43)
!48 = !DILocalVariable(name: "src", arg: 2, scope: !40, file: !3, line: 113, type: !44)
!49 = !DILocalVariable(name: "count", arg: 3, scope: !40, file: !3, line: 113, type: !14)
!50 = !DILocalVariable(name: "max_addr", scope: !40, file: !3, line: 115, type: !12)
!51 = !DILocalVariable(name: "src_addr", scope: !40, file: !3, line: 115, type: !12)
!52 = !DILocalVariable(name: "max", scope: !53, file: !3, line: 126, type: !12)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 125, column: 35)
!54 = distinct !DILexicalBlock(scope: !40, file: !3, line: 125, column: 6)
!55 = !DILocalVariable(name: "retval", scope: !53, file: !3, line: 127, type: !14)
!56 = !DILocation(line: 113, column: 30, scope: !40)
!57 = !DILocation(line: 113, column: 54, scope: !40)
!58 = !DILocation(line: 113, column: 64, scope: !40)
!59 = !DILocation(line: 115, column: 2, scope: !40)
!60 = !DILocation(line: 115, column: 16, scope: !40)
!61 = !DILocation(line: 115, column: 26, scope: !40)
!62 = !DILocation(line: 117, column: 2, scope: !40)
!63 = !DILocation(line: 118, column: 6, scope: !64)
!64 = distinct !DILexicalBlock(scope: !40, file: !3, line: 118, column: 6)
!65 = !DILocation(line: 118, column: 6, scope: !40)
!66 = !DILocation(line: 119, column: 3, scope: !64)
!67 = !DILocation(line: 120, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !40, file: !3, line: 120, column: 6)
!69 = !DILocation(line: 120, column: 6, scope: !40)
!70 = !DILocation(line: 121, column: 3, scope: !68)
!71 = !DILocation(line: 123, column: 13, scope: !40)
!72 = !DILocation(line: 123, column: 11, scope: !40)
!73 = !DILocation(line: 124, column: 28, scope: !40)
!74 = !DILocation(line: 124, column: 13, scope: !40)
!75 = !DILocation(line: 124, column: 11, scope: !40)
!76 = !DILocation(line: 125, column: 6, scope: !54)
!77 = !DILocation(line: 125, column: 6, scope: !40)
!78 = !DILocation(line: 126, column: 3, scope: !53)
!79 = !DILocation(line: 126, column: 17, scope: !53)
!80 = !DILocation(line: 126, column: 23, scope: !53)
!81 = !DILocation(line: 126, column: 34, scope: !53)
!82 = !DILocation(line: 126, column: 32, scope: !53)
!83 = !DILocation(line: 127, column: 3, scope: !53)
!84 = !DILocation(line: 127, column: 8, scope: !53)
!85 = !DILocation(line: 133, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !53, file: !3, line: 133, column: 7)
!87 = !DILocation(line: 133, column: 13, scope: !86)
!88 = !DILocation(line: 133, column: 11, scope: !86)
!89 = !DILocation(line: 133, column: 7, scope: !53)
!90 = !DILocation(line: 134, column: 10, scope: !86)
!91 = !DILocation(line: 134, column: 8, scope: !86)
!92 = !DILocation(line: 134, column: 4, scope: !86)
!93 = !DILocation(line: 136, column: 21, scope: !53)
!94 = !DILocation(line: 136, column: 26, scope: !53)
!95 = !DILocation(line: 136, column: 3, scope: !53)
!96 = !DILocation(line: 137, column: 21, scope: !53)
!97 = !DILocation(line: 137, column: 26, scope: !53)
!98 = !DILocation(line: 137, column: 3, scope: !53)
!99 = !DILocation(line: 138, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !53, file: !3, line: 138, column: 7)
!101 = !DILocation(line: 138, column: 7, scope: !53)
!102 = !DILocation(line: 139, column: 34, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 138, column: 41)
!104 = !DILocation(line: 139, column: 39, scope: !103)
!105 = !DILocation(line: 139, column: 44, scope: !103)
!106 = !DILocation(line: 139, column: 51, scope: !103)
!107 = !DILocation(line: 139, column: 13, scope: !103)
!108 = !DILocation(line: 139, column: 11, scope: !103)
!109 = !DILocation(line: 140, column: 4, scope: !103)
!110 = !DILocation(line: 141, column: 11, scope: !103)
!111 = !DILocation(line: 141, column: 4, scope: !103)
!112 = !DILocation(line: 143, column: 2, scope: !54)
!113 = !DILocation(line: 143, column: 2, scope: !53)
!114 = !DILocation(line: 144, column: 2, scope: !40)
!115 = !DILocation(line: 145, column: 1, scope: !40)
!116 = distinct !DISubprogram(name: "might_fault", scope: !117, file: !117, line: 202, type: !118, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!117 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!118 = !DISubroutineType(types: !119)
!119 = !{null}
!120 = !DILocation(line: 202, column: 40, scope: !116)
!121 = distinct !DISubprogram(name: "should_fail_usercopy", scope: !122, file: !122, line: 18, type: !123, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!122 = !DIFile(filename: "./include/linux/fault-inject-usercopy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c50bc45f7dd45d85340e9f2bf0c47d5")
!123 = !DISubroutineType(types: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 35, baseType: !127)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!127 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!128 = !DILocation(line: 18, column: 49, scope: !121)
!129 = distinct !DISubprogram(name: "task_size_max", scope: !130, file: !130, line: 83, type: !131, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!130 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!131 = !DISubroutineType(types: !132)
!132 = !{!12}
!133 = !{!134}
!134 = !DILocalVariable(name: "ret", scope: !129, file: !130, line: 85, type: !12)
!135 = !DILocation(line: 85, column: 2, scope: !129)
!136 = !DILocation(line: 85, column: 16, scope: !129)
!137 = !DILocation(line: 87, column: 2, scope: !129)
!138 = !{i64 2148208805, i64 2148208833, i64 2148208839, i64 2148208855, i64 2148208871, i64 2148208898, i64 2148209228, i64 2148208543, i64 2148209234, i64 2148209282, i64 2148209346, i64 2148209410, i64 2148209467, i64 2148208624, i64 2148208649, i64 2148209674, i64 2148209806, i64 2148209735, i64 2148209820, i64 2148208741}
!139 = !DILocation(line: 93, column: 9, scope: !129)
!140 = !DILocation(line: 94, column: 1, scope: !129)
!141 = !DILocation(line: 93, column: 2, scope: !129)
!142 = distinct !DISubprogram(name: "kasan_check_write", scope: !143, file: !143, line: 44, type: !144, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!143 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!144 = !DISubroutineType(types: !145)
!145 = !{!125, !146, !7}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "p", arg: 1, scope: !142, file: !143, line: 44, type: !146)
!151 = !DILocalVariable(name: "size", arg: 2, scope: !142, file: !143, line: 44, type: !7)
!152 = !DILocation(line: 44, column: 59, scope: !142)
!153 = !DILocation(line: 44, column: 75, scope: !142)
!154 = !DILocation(line: 46, column: 2, scope: !142)
!155 = distinct !DISubprogram(name: "check_object_size", scope: !156, file: !156, line: 218, type: !157, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!156 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!157 = !DISubroutineType(types: !158)
!158 = !{null, !159, !12, !125}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !{!162, !163, !164}
!162 = !DILocalVariable(name: "ptr", arg: 1, scope: !155, file: !156, line: 218, type: !159)
!163 = !DILocalVariable(name: "n", arg: 2, scope: !155, file: !156, line: 218, type: !12)
!164 = !DILocalVariable(name: "to_user", arg: 3, scope: !155, file: !156, line: 219, type: !125)
!165 = !DILocation(line: 218, column: 50, scope: !155)
!166 = !DILocation(line: 218, column: 69, scope: !155)
!167 = !DILocation(line: 219, column: 15, scope: !155)
!168 = !DILocation(line: 220, column: 3, scope: !155)
!169 = distinct !DISubprogram(name: "user_access_begin", scope: !17, file: !17, line: 519, type: !170, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!170 = !DISubroutineType(types: !171)
!171 = !{!125, !159, !172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 61, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !174, line: 72, baseType: !175)
!174 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !174, line: 16, baseType: !12)
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "ptr", arg: 1, scope: !169, file: !17, line: 519, type: !159)
!178 = !DILocalVariable(name: "len", arg: 2, scope: !169, file: !17, line: 519, type: !172)
!179 = !DILocation(line: 519, column: 79, scope: !169)
!180 = !DILocation(line: 519, column: 91, scope: !169)
!181 = !DILocation(line: 521, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !169, file: !17, line: 521, column: 6)
!183 = !DILocation(line: 521, column: 6, scope: !169)
!184 = !DILocation(line: 522, column: 3, scope: !182)
!185 = !DILocation(line: 523, column: 2, scope: !186)
!186 = distinct !DILexicalBlock(scope: !169, file: !17, line: 523, column: 2)
!187 = !{i64 2151634362, i64 2151634390, i64 2151634396, i64 2151634412, i64 2151634428, i64 2151634455, i64 2151634769, i64 2151634126, i64 2151634775, i64 2151634823, i64 2151634887, i64 2151634951, i64 2151635008, i64 2151634207, i64 2151634232, i64 2151635215, i64 2151635337, i64 2151635276, i64 2151635351, i64 2151634324}
!188 = !DILocation(line: 524, column: 2, scope: !169)
!189 = !DILocation(line: 525, column: 1, scope: !169)
!190 = distinct !DISubprogram(name: "do_strncpy_from_user", scope: !3, file: !3, line: 28, type: !191, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!14, !43, !44, !12, !12}
!193 = !{!194, !195, !196, !197, !198, !206, !207, !209, !210, !211, !213, !216, !217, !219, !222, !224, !226}
!194 = !DILocalVariable(name: "dst", arg: 1, scope: !190, file: !3, line: 28, type: !43)
!195 = !DILocalVariable(name: "src", arg: 2, scope: !190, file: !3, line: 28, type: !44)
!196 = !DILocalVariable(name: "count", arg: 3, scope: !190, file: !3, line: 29, type: !12)
!197 = !DILocalVariable(name: "max", arg: 4, scope: !190, file: !3, line: 29, type: !12)
!198 = !DILocalVariable(name: "constants", scope: !190, file: !3, line: 31, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_at_a_time", file: !201, line: 14, size: 128, elements: !202)
!201 = !DIFile(filename: "./arch/x86/include/asm/word-at-a-time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9ff3ba13b74d134be400adb436d72b7")
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "one_bits", scope: !200, file: !201, line: 15, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "high_bits", scope: !200, file: !201, line: 15, baseType: !204, size: 64, offset: 64)
!206 = !DILocalVariable(name: "res", scope: !190, file: !3, line: 32, type: !12)
!207 = !DILocalVariable(name: "c", scope: !208, file: !3, line: 38, type: !12)
!208 = distinct !DILexicalBlock(scope: !190, file: !3, line: 37, column: 39)
!209 = !DILocalVariable(name: "data", scope: !208, file: !3, line: 38, type: !12)
!210 = !DILocalVariable(name: "mask", scope: !208, file: !3, line: 38, type: !12)
!211 = !DILocalVariable(name: "__gu_val", scope: !212, file: !3, line: 41, type: !12)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 41, column: 3)
!213 = !DILocalVariable(name: "__tmp", scope: !214, file: !3, line: 41, type: !24)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 41, column: 3)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 41, column: 3)
!216 = !DILabel(scope: !190, name: "byte_at_a_time", file: !3, line: 68)
!217 = !DILocalVariable(name: "c", scope: !218, file: !3, line: 70, type: !29)
!218 = distinct !DILexicalBlock(scope: !190, file: !3, line: 69, column: 14)
!219 = !DILocalVariable(name: "__gu_val", scope: !220, file: !3, line: 72, type: !221)
!220 = distinct !DILexicalBlock(scope: !218, file: !3, line: 72, column: 3)
!221 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !DILocalVariable(name: "x_u8__", scope: !223, file: !3, line: 72, type: !221)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 72, column: 3)
!224 = !DILocalVariable(name: "__tmp", scope: !225, file: !3, line: 72, type: !24)
!225 = distinct !DILexicalBlock(scope: !223, file: !3, line: 72, column: 3)
!226 = !DILabel(scope: !190, name: "efault", file: !3, line: 91)
!227 = !DILocation(line: 28, column: 56, scope: !190)
!228 = !DILocation(line: 28, column: 80, scope: !190)
!229 = !DILocation(line: 29, column: 20, scope: !190)
!230 = !DILocation(line: 29, column: 41, scope: !190)
!231 = !DILocation(line: 31, column: 2, scope: !190)
!232 = !DILocation(line: 31, column: 30, scope: !190)
!233 = !DILocation(line: 32, column: 2, scope: !190)
!234 = !DILocation(line: 32, column: 16, scope: !190)
!235 = !DILocation(line: 37, column: 2, scope: !190)
!236 = !DILocation(line: 37, column: 9, scope: !190)
!237 = !DILocation(line: 37, column: 13, scope: !190)
!238 = !DILocation(line: 38, column: 3, scope: !208)
!239 = !DILocation(line: 38, column: 17, scope: !208)
!240 = !DILocation(line: 38, column: 20, scope: !208)
!241 = !DILocation(line: 38, column: 26, scope: !208)
!242 = !DILocation(line: 41, column: 3, scope: !208)
!243 = !DILocation(line: 41, column: 3, scope: !212)
!244 = !DILocation(line: 41, column: 3, scope: !215)
!245 = !{i64 2153884199, i64 2153884219, i64 2153884255, i64 2153884299, i64 2153884322, i64 2153884354, i64 2153884387, i64 2153884412}
!246 = !DILocation(line: 41, column: 3, scope: !214)
!247 = !DILocation(line: 54, column: 16, scope: !248)
!248 = distinct !DILexicalBlock(scope: !208, file: !3, line: 54, column: 7)
!249 = !DILocation(line: 54, column: 7, scope: !248)
!250 = !DILocation(line: 54, column: 7, scope: !208)
!251 = !DILocation(line: 55, column: 26, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 54, column: 39)
!253 = !DILocation(line: 55, column: 29, scope: !252)
!254 = !DILocation(line: 55, column: 11, scope: !252)
!255 = !DILocation(line: 55, column: 9, scope: !252)
!256 = !DILocation(line: 56, column: 28, scope: !252)
!257 = !DILocation(line: 56, column: 11, scope: !252)
!258 = !DILocation(line: 56, column: 9, scope: !252)
!259 = !DILocation(line: 57, column: 11, scope: !252)
!260 = !DILocation(line: 57, column: 9, scope: !252)
!261 = !DILocation(line: 58, column: 34, scope: !252)
!262 = !DILocation(line: 58, column: 38, scope: !252)
!263 = !DILocation(line: 58, column: 36, scope: !252)
!264 = !DILocation(line: 58, column: 23, scope: !252)
!265 = !DILocation(line: 58, column: 27, scope: !252)
!266 = !DILocation(line: 58, column: 26, scope: !252)
!267 = !DILocation(line: 58, column: 32, scope: !252)
!268 = !DILocation(line: 59, column: 11, scope: !252)
!269 = !DILocation(line: 59, column: 27, scope: !252)
!270 = !DILocation(line: 59, column: 17, scope: !252)
!271 = !DILocation(line: 59, column: 15, scope: !252)
!272 = !DILocation(line: 59, column: 4, scope: !252)
!273 = !DILocation(line: 62, column: 33, scope: !208)
!274 = !DILocation(line: 62, column: 22, scope: !208)
!275 = !DILocation(line: 62, column: 26, scope: !208)
!276 = !DILocation(line: 62, column: 25, scope: !208)
!277 = !DILocation(line: 62, column: 31, scope: !208)
!278 = !DILocation(line: 64, column: 7, scope: !208)
!279 = !DILocation(line: 65, column: 7, scope: !208)
!280 = !DILocation(line: 66, column: 2, scope: !190)
!281 = distinct !{!281, !235, !280, !282, !283}
!282 = !{!"llvm.loop.mustprogress"}
!283 = !{!"llvm.loop.unroll.disable"}
!284 = !DILocation(line: 68, column: 1, scope: !190)
!285 = !DILocation(line: 69, column: 2, scope: !190)
!286 = !DILocation(line: 69, column: 9, scope: !190)
!287 = !DILocation(line: 70, column: 3, scope: !218)
!288 = !DILocation(line: 70, column: 8, scope: !218)
!289 = !DILocation(line: 72, column: 3, scope: !218)
!290 = !DILocation(line: 72, column: 3, scope: !220)
!291 = !DILocation(line: 72, column: 3, scope: !223)
!292 = !{i64 2153887358, i64 2153887378, i64 2153887414, i64 2153887458, i64 2153887481, i64 2153887513, i64 2153887546, i64 2153887571}
!293 = !DILocation(line: 72, column: 3, scope: !225)
!294 = !DILocation(line: 73, column: 14, scope: !218)
!295 = !DILocation(line: 73, column: 3, scope: !218)
!296 = !DILocation(line: 73, column: 7, scope: !218)
!297 = !DILocation(line: 73, column: 12, scope: !218)
!298 = !DILocation(line: 74, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !218, file: !3, line: 74, column: 7)
!300 = !DILocation(line: 74, column: 7, scope: !218)
!301 = !DILocation(line: 75, column: 11, scope: !299)
!302 = !DILocation(line: 75, column: 4, scope: !299)
!303 = !DILocation(line: 76, column: 6, scope: !218)
!304 = !DILocation(line: 77, column: 6, scope: !218)
!305 = !DILocation(line: 78, column: 2, scope: !190)
!306 = distinct !{!306, !285, !305, !282, !283}
!307 = !DILocation(line: 84, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !190, file: !3, line: 84, column: 6)
!309 = !DILocation(line: 84, column: 13, scope: !308)
!310 = !DILocation(line: 84, column: 10, scope: !308)
!311 = !DILocation(line: 84, column: 6, scope: !190)
!312 = !DILocation(line: 85, column: 10, scope: !308)
!313 = !DILocation(line: 85, column: 3, scope: !308)
!314 = !DILocation(line: 91, column: 1, scope: !190)
!315 = !DILocation(line: 92, column: 2, scope: !190)
!316 = !DILocation(line: 93, column: 1, scope: !190)
!317 = distinct !DISubprogram(name: "clac", scope: !318, file: !318, line: 30, type: !118, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!318 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!319 = !DILocation(line: 33, column: 2, scope: !317)
!320 = !{i64 2151065588, i64 2151065616, i64 2151065622, i64 2151065638, i64 2151065654, i64 2151065681, i64 2151065995, i64 2151065338, i64 2151066001, i64 2151066049, i64 2151066113, i64 2151066177, i64 2151066234, i64 2151065419, i64 2151065444, i64 2151066441, i64 2151066577, i64 2151066502, i64 2151066591, i64 2151065536}
!321 = !DILocation(line: 34, column: 1, scope: !317)
!322 = distinct !DISubprogram(name: "__access_ok", scope: !323, file: !323, line: 85, type: !324, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!323 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!324 = !DISubroutineType(types: !325)
!325 = !{!125, !159, !12}
!326 = !{!327, !328, !329}
!327 = !DILocalVariable(name: "ptr", arg: 1, scope: !322, file: !323, line: 85, type: !159)
!328 = !DILocalVariable(name: "size", arg: 2, scope: !322, file: !323, line: 85, type: !12)
!329 = !DILocalVariable(name: "sum", scope: !330, file: !323, line: 90, type: !12)
!330 = distinct !DILexicalBlock(scope: !331, file: !323, line: 89, column: 9)
!331 = distinct !DILexicalBlock(scope: !322, file: !323, line: 87, column: 6)
!332 = !DILocation(line: 85, column: 51, scope: !322)
!333 = !DILocation(line: 85, column: 70, scope: !322)
!334 = !DILocation(line: 87, column: 27, scope: !331)
!335 = !DILocation(line: 87, column: 32, scope: !331)
!336 = !DILocation(line: 87, column: 6, scope: !331)
!337 = !DILocation(line: 87, column: 46, scope: !331)
!338 = !DILocation(line: 87, column: 49, scope: !331)
!339 = !DILocation(line: 87, column: 54, scope: !331)
!340 = !DILocation(line: 87, column: 6, scope: !322)
!341 = !DILocation(line: 88, column: 10, scope: !342)
!342 = distinct !DILexicalBlock(scope: !331, file: !323, line: 87, column: 68)
!343 = !DILocation(line: 88, column: 3, scope: !342)
!344 = !DILocation(line: 90, column: 3, scope: !330)
!345 = !DILocation(line: 90, column: 17, scope: !330)
!346 = !DILocation(line: 90, column: 23, scope: !330)
!347 = !DILocation(line: 90, column: 45, scope: !330)
!348 = !DILocation(line: 90, column: 30, scope: !330)
!349 = !DILocation(line: 90, column: 28, scope: !330)
!350 = !DILocation(line: 91, column: 10, scope: !330)
!351 = !DILocation(line: 91, column: 34, scope: !330)
!352 = !DILocation(line: 91, column: 37, scope: !330)
!353 = !DILocation(line: 91, column: 59, scope: !330)
!354 = !DILocation(line: 91, column: 44, scope: !330)
!355 = !DILocation(line: 91, column: 41, scope: !330)
!356 = !DILocation(line: 0, scope: !330)
!357 = !DILocation(line: 91, column: 3, scope: !330)
!358 = !DILocation(line: 92, column: 2, scope: !331)
!359 = !DILocation(line: 93, column: 1, scope: !322)
!360 = distinct !DISubprogram(name: "stac", scope: !318, file: !318, line: 36, type: !118, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!361 = !DILocation(line: 39, column: 2, scope: !360)
!362 = !{i64 2151067255, i64 2151067283, i64 2151067289, i64 2151067305, i64 2151067321, i64 2151067348, i64 2151067662, i64 2151067005, i64 2151067668, i64 2151067716, i64 2151067780, i64 2151067844, i64 2151067901, i64 2151067086, i64 2151067111, i64 2151068108, i64 2151068244, i64 2151068169, i64 2151068258, i64 2151067203}
!363 = !DILocation(line: 40, column: 1, scope: !360)
!364 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !365, file: !365, line: 70, type: !366, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!365 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!366 = !DISubroutineType(types: !367)
!367 = !{null, !159, !172}
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "address", arg: 1, scope: !364, file: !365, line: 70, type: !159)
!370 = !DILocalVariable(name: "size", arg: 2, scope: !364, file: !365, line: 70, type: !172)
!371 = !DILocation(line: 70, column: 54, scope: !364)
!372 = !DILocation(line: 70, column: 70, scope: !364)
!373 = !DILocation(line: 72, column: 1, scope: !364)
!374 = distinct !DISubprogram(name: "has_zero", scope: !201, file: !201, line: 47, type: !375, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!375 = !DISubroutineType(types: !376)
!376 = !{!12, !12, !23, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!378 = !{!379, !380, !381, !382}
!379 = !DILocalVariable(name: "a", arg: 1, scope: !374, file: !201, line: 47, type: !12)
!380 = !DILocalVariable(name: "bits", arg: 2, scope: !374, file: !201, line: 47, type: !23)
!381 = !DILocalVariable(name: "c", arg: 3, scope: !374, file: !201, line: 47, type: !377)
!382 = !DILocalVariable(name: "mask", scope: !374, file: !201, line: 49, type: !12)
!383 = !DILocation(line: 47, column: 52, scope: !374)
!384 = !DILocation(line: 47, column: 70, scope: !374)
!385 = !DILocation(line: 47, column: 105, scope: !374)
!386 = !DILocation(line: 49, column: 2, scope: !374)
!387 = !DILocation(line: 49, column: 16, scope: !374)
!388 = !DILocation(line: 49, column: 25, scope: !374)
!389 = !DILocation(line: 49, column: 29, scope: !374)
!390 = !DILocation(line: 49, column: 32, scope: !374)
!391 = !DILocation(line: 49, column: 27, scope: !374)
!392 = !DILocation(line: 49, column: 45, scope: !374)
!393 = !DILocation(line: 49, column: 44, scope: !374)
!394 = !DILocation(line: 49, column: 42, scope: !374)
!395 = !DILocation(line: 49, column: 50, scope: !374)
!396 = !DILocation(line: 49, column: 53, scope: !374)
!397 = !DILocation(line: 49, column: 48, scope: !374)
!398 = !DILocation(line: 50, column: 10, scope: !374)
!399 = !DILocation(line: 50, column: 3, scope: !374)
!400 = !DILocation(line: 50, column: 8, scope: !374)
!401 = !DILocation(line: 51, column: 9, scope: !374)
!402 = !DILocation(line: 52, column: 1, scope: !374)
!403 = !DILocation(line: 51, column: 2, scope: !374)
!404 = distinct !DISubprogram(name: "prep_zero_mask", scope: !201, file: !201, line: 54, type: !405, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!12, !12, !12, !377}
!407 = !{!408, !409, !410}
!408 = !DILocalVariable(name: "a", arg: 1, scope: !404, file: !201, line: 54, type: !12)
!409 = !DILocalVariable(name: "bits", arg: 2, scope: !404, file: !201, line: 54, type: !12)
!410 = !DILocalVariable(name: "c", arg: 3, scope: !404, file: !201, line: 54, type: !377)
!411 = !DILocation(line: 54, column: 58, scope: !404)
!412 = !DILocation(line: 54, column: 75, scope: !404)
!413 = !DILocation(line: 54, column: 110, scope: !404)
!414 = !DILocation(line: 56, column: 9, scope: !404)
!415 = !DILocation(line: 56, column: 2, scope: !404)
!416 = distinct !DISubprogram(name: "create_zero_mask", scope: !201, file: !201, line: 59, type: !417, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!12, !12}
!419 = !{!420}
!420 = !DILocalVariable(name: "bits", arg: 1, scope: !416, file: !201, line: 59, type: !12)
!421 = !DILocation(line: 59, column: 60, scope: !416)
!422 = !DILocation(line: 61, column: 10, scope: !416)
!423 = !DILocation(line: 61, column: 15, scope: !416)
!424 = !DILocation(line: 61, column: 23, scope: !416)
!425 = !DILocation(line: 61, column: 22, scope: !416)
!426 = !DILocation(line: 61, column: 20, scope: !416)
!427 = !DILocation(line: 61, column: 7, scope: !416)
!428 = !DILocation(line: 62, column: 9, scope: !416)
!429 = !DILocation(line: 62, column: 14, scope: !416)
!430 = !DILocation(line: 62, column: 2, scope: !416)
!431 = distinct !DISubprogram(name: "find_zero", scope: !201, file: !201, line: 68, type: !417, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!432 = !{!433}
!433 = !DILocalVariable(name: "mask", arg: 1, scope: !431, file: !201, line: 68, type: !12)
!434 = !DILocation(line: 68, column: 53, scope: !431)
!435 = !DILocation(line: 70, column: 28, scope: !431)
!436 = !DILocation(line: 70, column: 9, scope: !431)
!437 = !DILocation(line: 70, column: 2, scope: !431)
!438 = distinct !DISubprogram(name: "count_masked_bytes", scope: !201, file: !201, line: 28, type: !439, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!14, !12}
!441 = !{!442}
!442 = !DILocalVariable(name: "mask", arg: 1, scope: !438, file: !201, line: 28, type: !12)
!443 = !DILocation(line: 28, column: 53, scope: !438)
!444 = !DILocation(line: 30, column: 9, scope: !438)
!445 = !DILocation(line: 30, column: 13, scope: !438)
!446 = !DILocation(line: 30, column: 35, scope: !438)
!447 = !DILocation(line: 30, column: 2, scope: !438)
