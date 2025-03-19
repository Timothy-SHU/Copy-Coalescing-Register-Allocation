; ModuleID = 'lib/usercopy.c'
source_filename = "lib/usercopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__copy_from_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _copy_from_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__copy_to_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _copy_to_user ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_check_zeroed_user: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad check_zeroed_user ; .previous"

%struct.__large_struct = type { [100 x i64] }

@__UNIQUE_ID___addressable__copy_from_user177 = internal global ptr @_copy_from_user, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable__copy_to_user178 = internal global ptr @_copy_to_user, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID___addressable_check_zeroed_user179 = internal global ptr @check_zeroed_user, section ".discard.addressable", align 8, !dbg !34
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable__copy_from_user177, ptr @__UNIQUE_ID___addressable__copy_to_user178, ptr @__UNIQUE_ID___addressable_check_zeroed_user179], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !46 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !52, metadata !DIExpression()), !dbg !56
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !53, metadata !DIExpression()), !dbg !57
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !54, metadata !DIExpression()), !dbg !58
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %res, metadata !55, metadata !DIExpression()), !dbg !60
  %0 = load i64, ptr %n.addr, align 8, !dbg !61
  store i64 %0, ptr %res, align 8, !dbg !60
  call void @might_fault() #11, !dbg !62
  %call = call zeroext i1 @should_fail_usercopy() #11, !dbg !63
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !65

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8, !dbg !66
  %2 = load i64, ptr %n.addr, align 8, !dbg !66
  %call1 = call zeroext i1 @__access_ok(ptr noundef %1, i64 noundef %2) #11, !dbg !66
  %lnot = xor i1 %call1, true, !dbg !66
  %lnot2 = xor i1 %lnot, true, !dbg !66
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !66
  %conv = sext i32 %lnot.ext to i64, !dbg !66
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !66
  %tobool = icmp ne i64 %expval, 0, !dbg !66
  %lnot3 = xor i1 %tobool, true, !dbg !66
  %lnot5 = xor i1 %lnot3, true, !dbg !66
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !66
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !66
  %expval8 = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !66
  %tobool9 = icmp ne i64 %expval8, 0, !dbg !66
  br i1 %tobool9, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !68, !srcloc !70
  %3 = load ptr, ptr %to.addr, align 8, !dbg !71
  %4 = load ptr, ptr %from.addr, align 8, !dbg !72
  %5 = load i64, ptr %n.addr, align 8, !dbg !73
  call void @instrument_copy_from_user_before(ptr noundef %3, ptr noundef %4, i64 noundef %5) #11, !dbg !74
  %6 = load ptr, ptr %to.addr, align 8, !dbg !75
  %7 = load ptr, ptr %from.addr, align 8, !dbg !76
  %8 = load i64, ptr %n.addr, align 8, !dbg !77
  %call10 = call i64 @raw_copy_from_user(ptr noundef %6, ptr noundef %7, i64 noundef %8) #11, !dbg !78
  store i64 %call10, ptr %res, align 8, !dbg !79
  %9 = load ptr, ptr %to.addr, align 8, !dbg !80
  %10 = load ptr, ptr %from.addr, align 8, !dbg !81
  %11 = load i64, ptr %n.addr, align 8, !dbg !82
  %12 = load i64, ptr %res, align 8, !dbg !83
  call void @instrument_copy_from_user_after(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12) #11, !dbg !84
  br label %if.end, !dbg !85

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i64, ptr %res, align 8, !dbg !86
  %tobool11 = icmp ne i64 %13, 0, !dbg !86
  %lnot12 = xor i1 %tobool11, true, !dbg !86
  %lnot14 = xor i1 %lnot12, true, !dbg !86
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !86
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !86
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !86
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !86
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !88

if.then19:                                        ; preds = %if.end
  %14 = load ptr, ptr %to.addr, align 8, !dbg !89
  %15 = load i64, ptr %n.addr, align 8, !dbg !90
  %16 = load i64, ptr %res, align 8, !dbg !91
  %sub = sub i64 %15, %16, !dbg !92
  %add.ptr = getelementptr i8, ptr %14, i64 %sub, !dbg !93
  %17 = load i64, ptr %res, align 8, !dbg !94
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %17, i1 false), !dbg !95
  br label %if.end20, !dbg !95

if.end20:                                         ; preds = %if.then19, %if.end
  %18 = load i64, ptr %res, align 8, !dbg !96
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !97
  ret i64 %18, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !99 {
entry:
  ret void, !dbg !103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_usercopy() #3 align 16 !dbg !104 {
entry:
  ret i1 false, !dbg !110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #3 align 16 !dbg !111 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !116, metadata !DIExpression()), !dbg !121
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !117, metadata !DIExpression()), !dbg !122
  %0 = load i64, ptr %size.addr, align 8, !dbg !123
  %cmp = icmp ule i64 %0, 4096, !dbg !124
  %conv = zext i1 %cmp to i32, !dbg !124
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !125
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !126

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !127
  %cmp1 = icmp ule i64 %2, 4096, !dbg !128
  br i1 %cmp1, label %if.then, label %if.else, !dbg !129

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !130
  %4 = ptrtoint ptr %3 to i64, !dbg !130
  %cmp3 = icmp sge i64 %4, 0, !dbg !130
  store i1 %cmp3, ptr %retval, align 1, !dbg !132
  br label %return, !dbg !132

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #10, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !118, metadata !DIExpression()), !dbg !134
  %5 = load i64, ptr %size.addr, align 8, !dbg !135
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !136
  %7 = ptrtoint ptr %6 to i64, !dbg !137
  %add = add i64 %5, %7, !dbg !138
  store i64 %add, ptr %sum, align 8, !dbg !134
  %8 = load i64, ptr %sum, align 8, !dbg !139
  %cmp5 = icmp sge i64 %8, 0, !dbg !139
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !140

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !141
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !142
  %11 = ptrtoint ptr %10 to i64, !dbg !143
  %cmp7 = icmp uge i64 %9, %11, !dbg !144
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !145
  store i1 %12, ptr %retval, align 1, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #10, !dbg !147
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !148
  ret i1 %13, !dbg !148
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_before(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !149 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !154, metadata !DIExpression()), !dbg !157
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !155, metadata !DIExpression()), !dbg !158
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !156, metadata !DIExpression()), !dbg !159
  %0 = load ptr, ptr %to.addr, align 8, !dbg !160
  %1 = load i64, ptr %n.addr, align 8, !dbg !161
  %conv = trunc i64 %1 to i32, !dbg !161
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !162
  %2 = load ptr, ptr %to.addr, align 8, !dbg !163
  %3 = load i64, ptr %n.addr, align 8, !dbg !163
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #11, !dbg !163
  ret void, !dbg !164
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #5 align 16 !dbg !165 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !167, metadata !DIExpression()), !dbg !170
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !168, metadata !DIExpression()), !dbg !171
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !169, metadata !DIExpression()), !dbg !172
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !173
  %1 = load ptr, ptr %src.addr, align 8, !dbg !174
  %2 = load i64, ptr %size.addr, align 8, !dbg !175
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11, !dbg !176
  ret i64 %call, !dbg !177
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_after(ptr noundef %to, ptr noundef %from, i64 noundef %n, i64 noundef %left) #5 align 16 !dbg !178 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !182, metadata !DIExpression()), !dbg !186
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !183, metadata !DIExpression()), !dbg !187
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !184, metadata !DIExpression()), !dbg !188
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !185, metadata !DIExpression()), !dbg !189
  %0 = load ptr, ptr %to.addr, align 8, !dbg !190
  %1 = load i64, ptr %n.addr, align 8, !dbg !191
  %2 = load i64, ptr %left.addr, align 8, !dbg !192
  %sub = sub i64 %1, %2, !dbg !193
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef %sub) #11, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !196 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !198, metadata !DIExpression()), !dbg !201
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !199, metadata !DIExpression()), !dbg !202
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !200, metadata !DIExpression()), !dbg !203
  call void @might_fault() #11, !dbg !204
  %call = call zeroext i1 @should_fail_usercopy() #11, !dbg !205
  br i1 %call, label %if.then, label %if.end, !dbg !207

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %n.addr, align 8, !dbg !208
  store i64 %0, ptr %retval, align 8, !dbg !209
  br label %return, !dbg !209

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8, !dbg !210
  %2 = load i64, ptr %n.addr, align 8, !dbg !210
  %call1 = call zeroext i1 @__access_ok(ptr noundef %1, i64 noundef %2) #11, !dbg !210
  %lnot = xor i1 %call1, true, !dbg !210
  %lnot2 = xor i1 %lnot, true, !dbg !210
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !210
  %conv = sext i32 %lnot.ext to i64, !dbg !210
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !210
  %tobool = icmp ne i64 %expval, 0, !dbg !210
  %lnot3 = xor i1 %tobool, true, !dbg !210
  %lnot5 = xor i1 %lnot3, true, !dbg !210
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !210
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !210
  %expval8 = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !210
  %tobool9 = icmp ne i64 %expval8, 0, !dbg !210
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !212

if.then10:                                        ; preds = %if.end
  %3 = load ptr, ptr %to.addr, align 8, !dbg !213
  %4 = load ptr, ptr %from.addr, align 8, !dbg !215
  %5 = load i64, ptr %n.addr, align 8, !dbg !216
  call void @instrument_copy_to_user(ptr noundef %3, ptr noundef %4, i64 noundef %5) #11, !dbg !217
  %6 = load ptr, ptr %to.addr, align 8, !dbg !218
  %7 = load ptr, ptr %from.addr, align 8, !dbg !219
  %8 = load i64, ptr %n.addr, align 8, !dbg !220
  %call11 = call i64 @raw_copy_to_user(ptr noundef %6, ptr noundef %7, i64 noundef %8) #11, !dbg !221
  store i64 %call11, ptr %n.addr, align 8, !dbg !222
  br label %if.end12, !dbg !223

if.end12:                                         ; preds = %if.then10, %if.end
  %9 = load i64, ptr %n.addr, align 8, !dbg !224
  store i64 %9, ptr %retval, align 8, !dbg !225
  br label %return, !dbg !225

return:                                           ; preds = %if.end12, %if.then
  %10 = load i64, ptr %retval, align 8, !dbg !226
  ret i64 %10, !dbg !226
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !227 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !231, metadata !DIExpression()), !dbg !234
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !232, metadata !DIExpression()), !dbg !235
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !233, metadata !DIExpression()), !dbg !236
  %0 = load ptr, ptr %from.addr, align 8, !dbg !237
  %1 = load i64, ptr %n.addr, align 8, !dbg !238
  %conv = trunc i64 %1 to i32, !dbg !238
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !239
  %2 = load ptr, ptr %from.addr, align 8, !dbg !240
  %3 = load i64, ptr %n.addr, align 8, !dbg !240
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 0) #11, !dbg !240
  %4 = load ptr, ptr %to.addr, align 8, !dbg !241
  %5 = load ptr, ptr %from.addr, align 8, !dbg !242
  %6 = load i64, ptr %n.addr, align 8, !dbg !243
  call void @kmsan_copy_to_user(ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef 0) #11, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_to_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #5 align 16 !dbg !246 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !248, metadata !DIExpression()), !dbg !251
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !249, metadata !DIExpression()), !dbg !252
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !250, metadata !DIExpression()), !dbg !253
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !254
  %1 = load ptr, ptr %src.addr, align 8, !dbg !255
  %2 = load i64, ptr %size.addr, align 8, !dbg !256
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11, !dbg !257
  ret i64 %call, !dbg !258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @check_zeroed_user(ptr noundef %from, i64 noundef %size) #0 align 16 !dbg !259 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %align = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__gu_val = alloca i64, align 8
  %__tmp = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__gu_val25 = alloca i64, align 8
  %__tmp29 = alloca i64, align 8
  %tmp30 = alloca i64, align 8
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !268, metadata !DIExpression()), !dbg !285
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !269, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %val, metadata !270, metadata !DIExpression()), !dbg !288
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #10, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %align, metadata !271, metadata !DIExpression()), !dbg !290
  %0 = load ptr, ptr %from.addr, align 8, !dbg !291
  %1 = ptrtoint ptr %0 to i64, !dbg !292
  %rem = urem i64 %1, 8, !dbg !293
  store i64 %rem, ptr %align, align 8, !dbg !290
  %2 = load i64, ptr %size.addr, align 8, !dbg !294
  %cmp = icmp eq i64 %2, 0, !dbg !294
  %lnot = xor i1 %cmp, true, !dbg !294
  %lnot1 = xor i1 %lnot, true, !dbg !294
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !294
  %conv = sext i32 %lnot.ext to i64, !dbg !294
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !294
  %tobool = icmp ne i64 %expval, 0, !dbg !294
  br i1 %tobool, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !297

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %align, align 8, !dbg !298
  %4 = load ptr, ptr %from.addr, align 8, !dbg !299
  %idx.neg = sub i64 0, %3, !dbg !299
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.neg, !dbg !299
  store ptr %add.ptr, ptr %from.addr, align 8, !dbg !299
  %5 = load i64, ptr %align, align 8, !dbg !300
  %6 = load i64, ptr %size.addr, align 8, !dbg !301
  %add = add i64 %6, %5, !dbg !301
  store i64 %add, ptr %size.addr, align 8, !dbg !301
  %7 = load ptr, ptr %from.addr, align 8, !dbg !302
  %8 = load i64, ptr %size.addr, align 8, !dbg !302
  %call = call zeroext i1 @user_access_begin(ptr noundef %7, i64 noundef %8) #11, !dbg !302
  br i1 %call, label %if.end3, label %if.then2, !dbg !304

if.then2:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !305

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !306

do.body:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gu_val) #10, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %__gu_val, metadata !272, metadata !DIExpression()), !dbg !307
  br label %do.body4, !dbg !307

do.body4:                                         ; preds = %do.body
  %9 = load ptr, ptr %from.addr, align 8, !dbg !308
  %10 = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %9) #10
          to label %asm.fallthrough [label %err_fault.split], !dbg !308, !srcloc !309

asm.fallthrough:                                  ; preds = %do.body4
  store i64 %10, ptr %__gu_val, align 8, !dbg !308
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #10, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !274, metadata !DIExpression()), !dbg !310
  %11 = load i64, ptr %__gu_val, align 8, !dbg !310
  store i64 %11, ptr %__tmp, align 8, !dbg !310
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #11, !dbg !310
  %12 = load i64, ptr %__tmp, align 8, !dbg !310
  store i64 %12, ptr %__gu_val, align 8, !dbg !310
  store i64 %12, ptr %tmp, align 8, !dbg !310
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #10, !dbg !308
  %13 = load i64, ptr %tmp, align 8, !dbg !310
  br label %do.cond, !dbg !308

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !308

do.end:                                           ; preds = %do.cond
  %14 = load i64, ptr %__gu_val, align 8, !dbg !307
  store i64 %14, ptr %val, align 8, !dbg !307
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gu_val) #10, !dbg !306
  br label %do.cond5, !dbg !307

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !307

do.end6:                                          ; preds = %do.cond5
  %15 = load i64, ptr %align, align 8, !dbg !311
  %tobool7 = icmp ne i64 %15, 0, !dbg !311
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !313

if.then8:                                         ; preds = %do.end6
  %16 = load i64, ptr %align, align 8, !dbg !314
  %mul = mul i64 8, %16, !dbg !314
  %shl = shl i64 1, %mul, !dbg !314
  %sub = sub i64 %shl, 1, !dbg !314
  %not = xor i64 %sub, -1, !dbg !315
  %17 = load i64, ptr %val, align 8, !dbg !316
  %and = and i64 %17, %not, !dbg !316
  store i64 %and, ptr %val, align 8, !dbg !316
  br label %if.end9, !dbg !317

err_fault.split:                                  ; preds = %do.body4
  store i64 %10, ptr %__gu_val, align 8, !dbg !308
  br label %err_fault, !dbg !308

if.end9:                                          ; preds = %if.then8, %do.end6
  br label %while.cond, !dbg !318

while.cond:                                       ; preds = %do.end34, %if.end9
  %18 = load i64, ptr %size.addr, align 8, !dbg !319
  %cmp10 = icmp ugt i64 %18, 8, !dbg !320
  br i1 %cmp10, label %while.body, label %while.end, !dbg !318

while.body:                                       ; preds = %while.cond
  %19 = load i64, ptr %val, align 8, !dbg !321
  %tobool12 = icmp ne i64 %19, 0, !dbg !321
  %lnot13 = xor i1 %tobool12, true, !dbg !321
  %lnot15 = xor i1 %lnot13, true, !dbg !321
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !321
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !321
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !321
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !321
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !323

if.then20:                                        ; preds = %while.body
  br label %done, !dbg !324

if.end21:                                         ; preds = %while.body
  %20 = load ptr, ptr %from.addr, align 8, !dbg !325
  %add.ptr22 = getelementptr i8, ptr %20, i64 8, !dbg !325
  store ptr %add.ptr22, ptr %from.addr, align 8, !dbg !325
  %21 = load i64, ptr %size.addr, align 8, !dbg !326
  %sub23 = sub i64 %21, 8, !dbg !326
  store i64 %sub23, ptr %size.addr, align 8, !dbg !326
  br label %do.body24, !dbg !327

do.body24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gu_val25) #10, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %__gu_val25, metadata !277, metadata !DIExpression()), !dbg !328
  br label %do.body26, !dbg !328

do.body26:                                        ; preds = %do.body24
  %22 = load ptr, ptr %from.addr, align 8, !dbg !329
  %23 = callbr i64 asm sideeffect "\0A1:\09movq $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %22) #10
          to label %asm.fallthrough27 [label %err_fault.split28], !dbg !329, !srcloc !330

asm.fallthrough27:                                ; preds = %do.body26
  store i64 %23, ptr %__gu_val25, align 8, !dbg !329
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp29) #10, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %__tmp29, metadata !280, metadata !DIExpression()), !dbg !331
  %24 = load i64, ptr %__gu_val25, align 8, !dbg !331
  store i64 %24, ptr %__tmp29, align 8, !dbg !331
  call void @kmsan_unpoison_memory(ptr noundef %__tmp29, i64 noundef 8) #11, !dbg !331
  %25 = load i64, ptr %__tmp29, align 8, !dbg !331
  store i64 %25, ptr %__gu_val25, align 8, !dbg !331
  store i64 %25, ptr %tmp30, align 8, !dbg !331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp29) #10, !dbg !329
  %26 = load i64, ptr %tmp30, align 8, !dbg !331
  br label %do.cond31, !dbg !329

do.cond31:                                        ; preds = %asm.fallthrough27
  br label %do.end32, !dbg !329

do.end32:                                         ; preds = %do.cond31
  %27 = load i64, ptr %__gu_val25, align 8, !dbg !328
  store i64 %27, ptr %val, align 8, !dbg !328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gu_val25) #10, !dbg !327
  br label %do.cond33, !dbg !328

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !328

do.end34:                                         ; preds = %do.cond33
  br label %while.cond, !dbg !318, !llvm.loop !332

err_fault.split28:                                ; preds = %do.body26
  store i64 %23, ptr %__gu_val25, align 8, !dbg !329
  br label %err_fault, !dbg !329

while.end:                                        ; preds = %while.cond
  %28 = load i64, ptr %size.addr, align 8, !dbg !336
  %cmp35 = icmp ult i64 %28, 8, !dbg !338
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !339

if.then37:                                        ; preds = %while.end
  %29 = load i64, ptr %size.addr, align 8, !dbg !340
  %mul38 = mul i64 8, %29, !dbg !340
  %shl39 = shl i64 1, %mul38, !dbg !340
  %sub40 = sub i64 %shl39, 1, !dbg !340
  %30 = load i64, ptr %val, align 8, !dbg !341
  %and41 = and i64 %30, %sub40, !dbg !341
  store i64 %and41, ptr %val, align 8, !dbg !341
  br label %if.end42, !dbg !342

if.end42:                                         ; preds = %if.then37, %while.end
  br label %done, !dbg !343

done:                                             ; preds = %if.end42, %if.then20
  call void @llvm.dbg.label(metadata !283), !dbg !344
  call void @clac() #11, !dbg !345
  %31 = load i64, ptr %val, align 8, !dbg !346
  %cmp43 = icmp eq i64 %31, 0, !dbg !347
  %conv44 = zext i1 %cmp43 to i32, !dbg !347
  store i32 %conv44, ptr %retval, align 4, !dbg !348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !348

err_fault:                                        ; preds = %err_fault.split28, %err_fault.split
  call void @llvm.dbg.label(metadata !284), !dbg !349
  call void @clac() #11, !dbg !350
  store i32 -14, ptr %retval, align 4, !dbg !351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !351

cleanup:                                          ; preds = %err_fault, %done, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #10, !dbg !352
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !352
  %32 = load i32, ptr %retval, align 4, !dbg !352
  ret i32 %32, !dbg !352
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_access_begin(ptr noundef %ptr, i64 noundef %len) #5 align 16 !dbg !353 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !357, metadata !DIExpression()), !dbg !359
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !358, metadata !DIExpression()), !dbg !360
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !361
  %1 = load i64, ptr %len.addr, align 8, !dbg !361
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #11, !dbg !361
  %lnot = xor i1 %call, true, !dbg !361
  %lnot1 = xor i1 %lnot, true, !dbg !361
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !361
  %conv = sext i32 %lnot.ext to i64, !dbg !361
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !361
  %tobool = icmp ne i64 %expval, 0, !dbg !361
  %lnot2 = xor i1 %tobool, true, !dbg !361
  %lnot4 = xor i1 %lnot2, true, !dbg !361
  %lnot6 = xor i1 %lnot4, true, !dbg !361
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !361
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !361
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !361
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !361
  br i1 %tobool10, label %if.then, label %if.end, !dbg !363

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !364
  br label %return, !dbg !364

if.end:                                           ; preds = %entry
  call void @stac() #11, !dbg !365
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !365, !srcloc !367
  store i1 true, ptr %retval, align 1, !dbg !368
  br label %return, !dbg !368

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !369
  ret i1 %2, !dbg !369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !370 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !375, metadata !DIExpression()), !dbg !377
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !376, metadata !DIExpression()), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #5 align 16 !dbg !380 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !382, !srcloc !383
  ret void, !dbg !384
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !385 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !393, metadata !DIExpression()), !dbg !395
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !394, metadata !DIExpression()), !dbg !396
  ret i1 true, !dbg !397
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !398 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !403, metadata !DIExpression()), !dbg !406
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !404, metadata !DIExpression()), !dbg !407
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !405, metadata !DIExpression()), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #5 align 16 !dbg !410 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !412, metadata !DIExpression()), !dbg !415
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !413, metadata !DIExpression()), !dbg !416
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !414, metadata !DIExpression()), !dbg !417
  call void @stac() #11, !dbg !418
  %0 = load i64, ptr %len.addr, align 8, !dbg !419
  %1 = load ptr, ptr %to.addr, align 8, !dbg !419
  %2 = load ptr, ptr %from.addr, align 8, !dbg !419
  %3 = call i64 @llvm.read_register.i64(metadata !36), !dbg !419
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #10, !dbg !419, !srcloc !420
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !419
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !419
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !419
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !419
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !419
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !419
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !419
  call void @llvm.write_register.i64(metadata !36, i64 %asmresult3), !dbg !419
  call void @clac() #11, !dbg !421
  %5 = load i64, ptr %len.addr, align 8, !dbg !422
  ret i64 %5, !dbg !423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #5 align 16 !dbg !424 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !425, !srcloc !426
  ret void, !dbg !427
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !428 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !430, metadata !DIExpression()), !dbg !432
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !431, metadata !DIExpression()), !dbg !433
  ret i1 true, !dbg !434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !435 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !439, metadata !DIExpression()), !dbg !443
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !440, metadata !DIExpression()), !dbg !444
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !441, metadata !DIExpression()), !dbg !445
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !442, metadata !DIExpression()), !dbg !446
  ret void, !dbg !447
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nounwind }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__copy_from_user177", scope: !2, file: !3, line: 30, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.usercopy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/usercopy\22 -D KBUILD_BASENAME=\22usercopy\22 -D KBUILD_MODNAME=\22usercopy\22 -D __KBUILD_MODNAME=kmod_usercopy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/usercopy.ll lib/usercopy.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/usercopy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8fab7ff61d0d6f2c97e38fb711d06bee")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !16, !24, !25, !15, !30}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !14, line: 42, baseType: !15)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__large_struct", file: !18, line: 471, size: 6400, elements: !19)
!18 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !17, file: !18, line: 471, baseType: !21, size: 6400)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 6400, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!31 = !{!0, !32, !34}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__copy_to_user178", scope: !2, file: !3, line: 45, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_check_zeroed_user179", scope: !2, file: !3, line: 100, type: !12, isLocal: true, isDefinition: true)
!36 = !{!"rsp"}
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 8, !"cf-protection-branch", i32 1}
!41 = !{i32 4, !"function_return_thunk_extern", i32 1}
!42 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!43 = !{i32 1, !"Code Model", i32 2}
!44 = !{i32 1, !"override-stack-alignment", i32 8}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "_copy_from_user", scope: !3, file: !3, line: 11, type: !47, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!47 = !DISubroutineType(types: !48)
!48 = !{!15, !12, !49, !15}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(name: "to", arg: 1, scope: !46, file: !3, line: 11, type: !12)
!53 = !DILocalVariable(name: "from", arg: 2, scope: !46, file: !3, line: 11, type: !49)
!54 = !DILocalVariable(name: "n", arg: 3, scope: !46, file: !3, line: 11, type: !15)
!55 = !DILocalVariable(name: "res", scope: !46, file: !3, line: 13, type: !15)
!56 = !DILocation(line: 11, column: 37, scope: !46)
!57 = !DILocation(line: 11, column: 60, scope: !46)
!58 = !DILocation(line: 11, column: 80, scope: !46)
!59 = !DILocation(line: 13, column: 2, scope: !46)
!60 = !DILocation(line: 13, column: 16, scope: !46)
!61 = !DILocation(line: 13, column: 22, scope: !46)
!62 = !DILocation(line: 14, column: 2, scope: !46)
!63 = !DILocation(line: 15, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !46, file: !3, line: 15, column: 6)
!65 = !DILocation(line: 15, column: 30, scope: !64)
!66 = !DILocation(line: 15, column: 33, scope: !64)
!67 = !DILocation(line: 15, column: 6, scope: !46)
!68 = !DILocation(line: 21, column: 3, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 15, column: 61)
!70 = !{i64 2151664622, i64 2151664650, i64 2151664656, i64 2151664672, i64 2151664688, i64 2151664715, i64 2151665029, i64 2151664386, i64 2151665035, i64 2151665083, i64 2151665147, i64 2151665211, i64 2151665268, i64 2151664467, i64 2151664492, i64 2151665475, i64 2151665597, i64 2151665536, i64 2151665611, i64 2151664584}
!71 = !DILocation(line: 22, column: 36, scope: !69)
!72 = !DILocation(line: 22, column: 40, scope: !69)
!73 = !DILocation(line: 22, column: 46, scope: !69)
!74 = !DILocation(line: 22, column: 3, scope: !69)
!75 = !DILocation(line: 23, column: 28, scope: !69)
!76 = !DILocation(line: 23, column: 32, scope: !69)
!77 = !DILocation(line: 23, column: 38, scope: !69)
!78 = !DILocation(line: 23, column: 9, scope: !69)
!79 = !DILocation(line: 23, column: 7, scope: !69)
!80 = !DILocation(line: 24, column: 35, scope: !69)
!81 = !DILocation(line: 24, column: 39, scope: !69)
!82 = !DILocation(line: 24, column: 45, scope: !69)
!83 = !DILocation(line: 24, column: 48, scope: !69)
!84 = !DILocation(line: 24, column: 3, scope: !69)
!85 = !DILocation(line: 25, column: 2, scope: !69)
!86 = !DILocation(line: 26, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !46, file: !3, line: 26, column: 6)
!88 = !DILocation(line: 26, column: 6, scope: !46)
!89 = !DILocation(line: 27, column: 10, scope: !87)
!90 = !DILocation(line: 27, column: 16, scope: !87)
!91 = !DILocation(line: 27, column: 20, scope: !87)
!92 = !DILocation(line: 27, column: 18, scope: !87)
!93 = !DILocation(line: 27, column: 13, scope: !87)
!94 = !DILocation(line: 27, column: 29, scope: !87)
!95 = !DILocation(line: 27, column: 3, scope: !87)
!96 = !DILocation(line: 28, column: 9, scope: !46)
!97 = !DILocation(line: 29, column: 1, scope: !46)
!98 = !DILocation(line: 28, column: 2, scope: !46)
!99 = distinct !DISubprogram(name: "might_fault", scope: !100, file: !100, line: 202, type: !101, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!100 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!101 = !DISubroutineType(types: !102)
!102 = !{null}
!103 = !DILocation(line: 202, column: 40, scope: !99)
!104 = distinct !DISubprogram(name: "should_fail_usercopy", scope: !105, file: !105, line: 18, type: !106, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!105 = !DIFile(filename: "./include/linux/fault-inject-usercopy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c50bc45f7dd45d85340e9f2bf0c47d5")
!106 = !DISubroutineType(types: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 35, baseType: !109)
!109 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DILocation(line: 18, column: 49, scope: !104)
!111 = distinct !DISubprogram(name: "__access_ok", scope: !112, file: !112, line: 85, type: !113, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !115)
!112 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!113 = !DISubroutineType(types: !114)
!114 = !{!108, !49, !15}
!115 = !{!116, !117, !118}
!116 = !DILocalVariable(name: "ptr", arg: 1, scope: !111, file: !112, line: 85, type: !49)
!117 = !DILocalVariable(name: "size", arg: 2, scope: !111, file: !112, line: 85, type: !15)
!118 = !DILocalVariable(name: "sum", scope: !119, file: !112, line: 90, type: !15)
!119 = distinct !DILexicalBlock(scope: !120, file: !112, line: 89, column: 9)
!120 = distinct !DILexicalBlock(scope: !111, file: !112, line: 87, column: 6)
!121 = !DILocation(line: 85, column: 51, scope: !111)
!122 = !DILocation(line: 85, column: 70, scope: !111)
!123 = !DILocation(line: 87, column: 27, scope: !120)
!124 = !DILocation(line: 87, column: 32, scope: !120)
!125 = !DILocation(line: 87, column: 6, scope: !120)
!126 = !DILocation(line: 87, column: 46, scope: !120)
!127 = !DILocation(line: 87, column: 49, scope: !120)
!128 = !DILocation(line: 87, column: 54, scope: !120)
!129 = !DILocation(line: 87, column: 6, scope: !111)
!130 = !DILocation(line: 88, column: 10, scope: !131)
!131 = distinct !DILexicalBlock(scope: !120, file: !112, line: 87, column: 68)
!132 = !DILocation(line: 88, column: 3, scope: !131)
!133 = !DILocation(line: 90, column: 3, scope: !119)
!134 = !DILocation(line: 90, column: 17, scope: !119)
!135 = !DILocation(line: 90, column: 23, scope: !119)
!136 = !DILocation(line: 90, column: 45, scope: !119)
!137 = !DILocation(line: 90, column: 30, scope: !119)
!138 = !DILocation(line: 90, column: 28, scope: !119)
!139 = !DILocation(line: 91, column: 10, scope: !119)
!140 = !DILocation(line: 91, column: 34, scope: !119)
!141 = !DILocation(line: 91, column: 37, scope: !119)
!142 = !DILocation(line: 91, column: 59, scope: !119)
!143 = !DILocation(line: 91, column: 44, scope: !119)
!144 = !DILocation(line: 91, column: 41, scope: !119)
!145 = !DILocation(line: 0, scope: !119)
!146 = !DILocation(line: 91, column: 3, scope: !119)
!147 = !DILocation(line: 92, column: 2, scope: !120)
!148 = !DILocation(line: 93, column: 1, scope: !111)
!149 = distinct !DISubprogram(name: "instrument_copy_from_user_before", scope: !150, file: !150, line: 127, type: !151, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!150 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !49, !49, !15}
!153 = !{!154, !155, !156}
!154 = !DILocalVariable(name: "to", arg: 1, scope: !149, file: !150, line: 127, type: !49)
!155 = !DILocalVariable(name: "from", arg: 2, scope: !149, file: !150, line: 127, type: !49)
!156 = !DILocalVariable(name: "n", arg: 3, scope: !149, file: !150, line: 127, type: !15)
!157 = !DILocation(line: 127, column: 46, scope: !149)
!158 = !DILocation(line: 127, column: 69, scope: !149)
!159 = !DILocation(line: 127, column: 89, scope: !149)
!160 = !DILocation(line: 129, column: 20, scope: !149)
!161 = !DILocation(line: 129, column: 24, scope: !149)
!162 = !DILocation(line: 129, column: 2, scope: !149)
!163 = !DILocation(line: 130, column: 2, scope: !149)
!164 = !DILocation(line: 131, column: 1, scope: !149)
!165 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !112, file: !112, line: 125, type: !47, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!166 = !{!167, !168, !169}
!167 = !DILocalVariable(name: "dst", arg: 1, scope: !165, file: !112, line: 125, type: !12)
!168 = !DILocalVariable(name: "src", arg: 2, scope: !165, file: !112, line: 125, type: !49)
!169 = !DILocalVariable(name: "size", arg: 3, scope: !165, file: !112, line: 125, type: !15)
!170 = !DILocation(line: 125, column: 26, scope: !165)
!171 = !DILocation(line: 125, column: 50, scope: !165)
!172 = !DILocation(line: 125, column: 69, scope: !165)
!173 = !DILocation(line: 127, column: 27, scope: !165)
!174 = !DILocation(line: 127, column: 48, scope: !165)
!175 = !DILocation(line: 127, column: 53, scope: !165)
!176 = !DILocation(line: 127, column: 9, scope: !165)
!177 = !DILocation(line: 127, column: 2, scope: !165)
!178 = distinct !DISubprogram(name: "instrument_copy_from_user_after", scope: !150, file: !150, line: 144, type: !179, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !49, !49, !15, !15}
!181 = !{!182, !183, !184, !185}
!182 = !DILocalVariable(name: "to", arg: 1, scope: !178, file: !150, line: 144, type: !49)
!183 = !DILocalVariable(name: "from", arg: 2, scope: !178, file: !150, line: 144, type: !49)
!184 = !DILocalVariable(name: "n", arg: 3, scope: !178, file: !150, line: 145, type: !15)
!185 = !DILocalVariable(name: "left", arg: 4, scope: !178, file: !150, line: 145, type: !15)
!186 = !DILocation(line: 144, column: 45, scope: !178)
!187 = !DILocation(line: 144, column: 68, scope: !178)
!188 = !DILocation(line: 145, column: 19, scope: !178)
!189 = !DILocation(line: 145, column: 36, scope: !178)
!190 = !DILocation(line: 147, column: 24, scope: !178)
!191 = !DILocation(line: 147, column: 28, scope: !178)
!192 = !DILocation(line: 147, column: 32, scope: !178)
!193 = !DILocation(line: 147, column: 30, scope: !178)
!194 = !DILocation(line: 147, column: 2, scope: !178)
!195 = !DILocation(line: 148, column: 1, scope: !178)
!196 = distinct !DISubprogram(name: "_copy_to_user", scope: !3, file: !3, line: 34, type: !47, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!197 = !{!198, !199, !200}
!198 = !DILocalVariable(name: "to", arg: 1, scope: !196, file: !3, line: 34, type: !12)
!199 = !DILocalVariable(name: "from", arg: 2, scope: !196, file: !3, line: 34, type: !49)
!200 = !DILocalVariable(name: "n", arg: 3, scope: !196, file: !3, line: 34, type: !15)
!201 = !DILocation(line: 34, column: 42, scope: !196)
!202 = !DILocation(line: 34, column: 58, scope: !196)
!203 = !DILocation(line: 34, column: 78, scope: !196)
!204 = !DILocation(line: 36, column: 2, scope: !196)
!205 = !DILocation(line: 37, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !196, file: !3, line: 37, column: 6)
!207 = !DILocation(line: 37, column: 6, scope: !196)
!208 = !DILocation(line: 38, column: 10, scope: !206)
!209 = !DILocation(line: 38, column: 3, scope: !206)
!210 = !DILocation(line: 39, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !196, file: !3, line: 39, column: 6)
!212 = !DILocation(line: 39, column: 6, scope: !196)
!213 = !DILocation(line: 40, column: 27, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 39, column: 32)
!215 = !DILocation(line: 40, column: 31, scope: !214)
!216 = !DILocation(line: 40, column: 37, scope: !214)
!217 = !DILocation(line: 40, column: 3, scope: !214)
!218 = !DILocation(line: 41, column: 24, scope: !214)
!219 = !DILocation(line: 41, column: 28, scope: !214)
!220 = !DILocation(line: 41, column: 34, scope: !214)
!221 = !DILocation(line: 41, column: 7, scope: !214)
!222 = !DILocation(line: 41, column: 5, scope: !214)
!223 = !DILocation(line: 42, column: 2, scope: !214)
!224 = !DILocation(line: 43, column: 9, scope: !196)
!225 = !DILocation(line: 43, column: 2, scope: !196)
!226 = !DILocation(line: 44, column: 1, scope: !196)
!227 = distinct !DISubprogram(name: "instrument_copy_to_user", scope: !150, file: !150, line: 110, type: !228, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !12, !49, !15}
!230 = !{!231, !232, !233}
!231 = !DILocalVariable(name: "to", arg: 1, scope: !227, file: !150, line: 110, type: !12)
!232 = !DILocalVariable(name: "from", arg: 2, scope: !227, file: !150, line: 110, type: !49)
!233 = !DILocalVariable(name: "n", arg: 3, scope: !227, file: !150, line: 110, type: !15)
!234 = !DILocation(line: 110, column: 38, scope: !227)
!235 = !DILocation(line: 110, column: 54, scope: !227)
!236 = !DILocation(line: 110, column: 74, scope: !227)
!237 = !DILocation(line: 112, column: 19, scope: !227)
!238 = !DILocation(line: 112, column: 25, scope: !227)
!239 = !DILocation(line: 112, column: 2, scope: !227)
!240 = !DILocation(line: 113, column: 2, scope: !227)
!241 = !DILocation(line: 114, column: 21, scope: !227)
!242 = !DILocation(line: 114, column: 25, scope: !227)
!243 = !DILocation(line: 114, column: 31, scope: !227)
!244 = !DILocation(line: 114, column: 2, scope: !227)
!245 = !DILocation(line: 115, column: 1, scope: !227)
!246 = distinct !DISubprogram(name: "raw_copy_to_user", scope: !112, file: !112, line: 131, type: !47, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!247 = !{!248, !249, !250}
!248 = !DILocalVariable(name: "dst", arg: 1, scope: !246, file: !112, line: 131, type: !12)
!249 = !DILocalVariable(name: "src", arg: 2, scope: !246, file: !112, line: 131, type: !49)
!250 = !DILocalVariable(name: "size", arg: 3, scope: !246, file: !112, line: 131, type: !15)
!251 = !DILocation(line: 131, column: 31, scope: !246)
!252 = !DILocation(line: 131, column: 48, scope: !246)
!253 = !DILocation(line: 131, column: 67, scope: !246)
!254 = !DILocation(line: 133, column: 43, scope: !246)
!255 = !DILocation(line: 133, column: 48, scope: !246)
!256 = !DILocation(line: 133, column: 53, scope: !246)
!257 = !DILocation(line: 133, column: 9, scope: !246)
!258 = !DILocation(line: 133, column: 2, scope: !246)
!259 = distinct !DISubprogram(name: "check_zeroed_user", scope: !3, file: !3, line: 62, type: !260, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !49, !263}
!262 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 61, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !265, line: 72, baseType: !266)
!265 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !265, line: 16, baseType: !15)
!267 = !{!268, !269, !270, !271, !272, !274, !277, !280, !283, !284}
!268 = !DILocalVariable(name: "from", arg: 1, scope: !259, file: !3, line: 62, type: !49)
!269 = !DILocalVariable(name: "size", arg: 2, scope: !259, file: !3, line: 62, type: !263)
!270 = !DILocalVariable(name: "val", scope: !259, file: !3, line: 64, type: !15)
!271 = !DILocalVariable(name: "align", scope: !259, file: !3, line: 65, type: !13)
!272 = !DILocalVariable(name: "__gu_val", scope: !273, file: !3, line: 76, type: !15)
!273 = distinct !DILexicalBlock(scope: !259, file: !3, line: 76, column: 2)
!274 = !DILocalVariable(name: "__tmp", scope: !275, file: !3, line: 76, type: !25)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 76, column: 2)
!276 = distinct !DILexicalBlock(scope: !273, file: !3, line: 76, column: 2)
!277 = !DILocalVariable(name: "__gu_val", scope: !278, file: !3, line: 87, type: !15)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 87, column: 3)
!279 = distinct !DILexicalBlock(scope: !259, file: !3, line: 80, column: 39)
!280 = !DILocalVariable(name: "__tmp", scope: !281, file: !3, line: 87, type: !25)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 87, column: 3)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 87, column: 3)
!283 = !DILabel(scope: !259, name: "done", file: !3, line: 93)
!284 = !DILabel(scope: !259, name: "err_fault", file: !3, line: 96)
!285 = !DILocation(line: 62, column: 42, scope: !259)
!286 = !DILocation(line: 62, column: 55, scope: !259)
!287 = !DILocation(line: 64, column: 2, scope: !259)
!288 = !DILocation(line: 64, column: 16, scope: !259)
!289 = !DILocation(line: 65, column: 2, scope: !259)
!290 = !DILocation(line: 65, column: 12, scope: !259)
!291 = !DILocation(line: 65, column: 32, scope: !259)
!292 = !DILocation(line: 65, column: 20, scope: !259)
!293 = !DILocation(line: 65, column: 37, scope: !259)
!294 = !DILocation(line: 67, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !259, file: !3, line: 67, column: 6)
!296 = !DILocation(line: 67, column: 6, scope: !259)
!297 = !DILocation(line: 68, column: 3, scope: !295)
!298 = !DILocation(line: 70, column: 10, scope: !259)
!299 = !DILocation(line: 70, column: 7, scope: !259)
!300 = !DILocation(line: 71, column: 10, scope: !259)
!301 = !DILocation(line: 71, column: 7, scope: !259)
!302 = !DILocation(line: 73, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !259, file: !3, line: 73, column: 6)
!304 = !DILocation(line: 73, column: 6, scope: !259)
!305 = !DILocation(line: 74, column: 3, scope: !303)
!306 = !DILocation(line: 76, column: 2, scope: !259)
!307 = !DILocation(line: 76, column: 2, scope: !273)
!308 = !DILocation(line: 76, column: 2, scope: !276)
!309 = !{i64 2151675791, i64 2151675811, i64 2151675847, i64 2151675891, i64 2151675914, i64 2151675946, i64 2151675979, i64 2151676004}
!310 = !DILocation(line: 76, column: 2, scope: !275)
!311 = !DILocation(line: 77, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !259, file: !3, line: 77, column: 6)
!313 = !DILocation(line: 77, column: 6, scope: !259)
!314 = !DILocation(line: 78, column: 11, scope: !312)
!315 = !DILocation(line: 78, column: 10, scope: !312)
!316 = !DILocation(line: 78, column: 7, scope: !312)
!317 = !DILocation(line: 78, column: 3, scope: !312)
!318 = !DILocation(line: 80, column: 2, scope: !259)
!319 = !DILocation(line: 80, column: 9, scope: !259)
!320 = !DILocation(line: 80, column: 14, scope: !259)
!321 = !DILocation(line: 81, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !279, file: !3, line: 81, column: 7)
!323 = !DILocation(line: 81, column: 7, scope: !279)
!324 = !DILocation(line: 82, column: 4, scope: !322)
!325 = !DILocation(line: 84, column: 8, scope: !279)
!326 = !DILocation(line: 85, column: 8, scope: !279)
!327 = !DILocation(line: 87, column: 3, scope: !279)
!328 = !DILocation(line: 87, column: 3, scope: !278)
!329 = !DILocation(line: 87, column: 3, scope: !282)
!330 = !{i64 2151682805, i64 2151682825, i64 2151682861, i64 2151682905, i64 2151682928, i64 2151682960, i64 2151682993, i64 2151683018}
!331 = !DILocation(line: 87, column: 3, scope: !281)
!332 = distinct !{!332, !318, !333, !334, !335}
!333 = !DILocation(line: 88, column: 2, scope: !259)
!334 = !{!"llvm.loop.mustprogress"}
!335 = !{!"llvm.loop.unroll.disable"}
!336 = !DILocation(line: 90, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !259, file: !3, line: 90, column: 6)
!338 = !DILocation(line: 90, column: 11, scope: !337)
!339 = !DILocation(line: 90, column: 6, scope: !259)
!340 = !DILocation(line: 91, column: 10, scope: !337)
!341 = !DILocation(line: 91, column: 7, scope: !337)
!342 = !DILocation(line: 91, column: 3, scope: !337)
!343 = !DILocation(line: 90, column: 33, scope: !337)
!344 = !DILocation(line: 93, column: 1, scope: !259)
!345 = !DILocation(line: 94, column: 2, scope: !259)
!346 = !DILocation(line: 95, column: 10, scope: !259)
!347 = !DILocation(line: 95, column: 14, scope: !259)
!348 = !DILocation(line: 95, column: 2, scope: !259)
!349 = !DILocation(line: 96, column: 1, scope: !259)
!350 = !DILocation(line: 97, column: 2, scope: !259)
!351 = !DILocation(line: 98, column: 2, scope: !259)
!352 = !DILocation(line: 99, column: 1, scope: !259)
!353 = distinct !DISubprogram(name: "user_access_begin", scope: !18, file: !18, line: 519, type: !354, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!108, !49, !263}
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "ptr", arg: 1, scope: !353, file: !18, line: 519, type: !49)
!358 = !DILocalVariable(name: "len", arg: 2, scope: !353, file: !18, line: 519, type: !263)
!359 = !DILocation(line: 519, column: 79, scope: !353)
!360 = !DILocation(line: 519, column: 91, scope: !353)
!361 = !DILocation(line: 521, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !353, file: !18, line: 521, column: 6)
!363 = !DILocation(line: 521, column: 6, scope: !353)
!364 = !DILocation(line: 522, column: 3, scope: !362)
!365 = !DILocation(line: 523, column: 2, scope: !366)
!366 = distinct !DILexicalBlock(scope: !353, file: !18, line: 523, column: 2)
!367 = !{i64 2151640674, i64 2151640702, i64 2151640708, i64 2151640724, i64 2151640740, i64 2151640767, i64 2151641081, i64 2151640438, i64 2151641087, i64 2151641135, i64 2151641199, i64 2151641263, i64 2151641320, i64 2151640519, i64 2151640544, i64 2151641527, i64 2151641649, i64 2151641588, i64 2151641663, i64 2151640636}
!368 = !DILocation(line: 524, column: 2, scope: !353)
!369 = !DILocation(line: 525, column: 1, scope: !353)
!370 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !371, file: !371, line: 70, type: !372, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!371 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!372 = !DISubroutineType(types: !373)
!373 = !{null, !49, !263}
!374 = !{!375, !376}
!375 = !DILocalVariable(name: "address", arg: 1, scope: !370, file: !371, line: 70, type: !49)
!376 = !DILocalVariable(name: "size", arg: 2, scope: !370, file: !371, line: 70, type: !263)
!377 = !DILocation(line: 70, column: 54, scope: !370)
!378 = !DILocation(line: 70, column: 70, scope: !370)
!379 = !DILocation(line: 72, column: 1, scope: !370)
!380 = distinct !DISubprogram(name: "clac", scope: !381, file: !381, line: 30, type: !101, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!381 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!382 = !DILocation(line: 33, column: 2, scope: !380)
!383 = !{i64 2151071900, i64 2151071928, i64 2151071934, i64 2151071950, i64 2151071966, i64 2151071993, i64 2151072307, i64 2151071650, i64 2151072313, i64 2151072361, i64 2151072425, i64 2151072489, i64 2151072546, i64 2151071731, i64 2151071756, i64 2151072753, i64 2151072889, i64 2151072814, i64 2151072903, i64 2151071848}
!384 = !DILocation(line: 34, column: 1, scope: !380)
!385 = distinct !DISubprogram(name: "kasan_check_write", scope: !386, file: !386, line: 44, type: !387, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!386 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!387 = !DISubroutineType(types: !388)
!388 = !{!108, !389, !7}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "p", arg: 1, scope: !385, file: !386, line: 44, type: !389)
!394 = !DILocalVariable(name: "size", arg: 2, scope: !385, file: !386, line: 44, type: !7)
!395 = !DILocation(line: 44, column: 59, scope: !385)
!396 = !DILocation(line: 44, column: 75, scope: !385)
!397 = !DILocation(line: 46, column: 2, scope: !385)
!398 = distinct !DISubprogram(name: "kcsan_check_access", scope: !399, file: !399, line: 229, type: !400, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!399 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!400 = !DISubroutineType(types: !401)
!401 = !{null, !389, !263, !262}
!402 = !{!403, !404, !405}
!403 = !DILocalVariable(name: "ptr", arg: 1, scope: !398, file: !399, line: 229, type: !389)
!404 = !DILocalVariable(name: "size", arg: 2, scope: !398, file: !399, line: 229, type: !263)
!405 = !DILocalVariable(name: "type", arg: 3, scope: !398, file: !399, line: 230, type: !262)
!406 = !DILocation(line: 229, column: 60, scope: !398)
!407 = !DILocation(line: 229, column: 72, scope: !398)
!408 = !DILocation(line: 230, column: 15, scope: !398)
!409 = !DILocation(line: 230, column: 23, scope: !398)
!410 = distinct !DISubprogram(name: "copy_user_generic", scope: !112, file: !112, line: 105, type: !47, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !411)
!411 = !{!412, !413, !414}
!412 = !DILocalVariable(name: "to", arg: 1, scope: !410, file: !112, line: 105, type: !12)
!413 = !DILocalVariable(name: "from", arg: 2, scope: !410, file: !112, line: 105, type: !49)
!414 = !DILocalVariable(name: "len", arg: 3, scope: !410, file: !112, line: 105, type: !15)
!415 = !DILocation(line: 105, column: 25, scope: !410)
!416 = !DILocation(line: 105, column: 41, scope: !410)
!417 = !DILocation(line: 105, column: 61, scope: !410)
!418 = !DILocation(line: 107, column: 2, scope: !410)
!419 = !DILocation(line: 112, column: 2, scope: !410)
!420 = !{i64 4146685, i64 4146690, i64 2151633380, i64 2151633386, i64 2151633402, i64 2151633418, i64 2151633445, i64 2151633768, i64 2151632979, i64 2151633774, i64 2151633822, i64 2151633886, i64 2151633950, i64 2151634007, i64 2151633060, i64 2151633085, i64 2151634291, i64 2151634432, i64 2151634352, i64 2151634446, i64 2151633177, i64 4146787, i64 2151634511, i64 2151634555, i64 2151634578, i64 2151634611, i64 2151634642, i64 2151634681}
!421 = !DILocation(line: 120, column: 2, scope: !410)
!422 = !DILocation(line: 121, column: 9, scope: !410)
!423 = !DILocation(line: 121, column: 2, scope: !410)
!424 = distinct !DISubprogram(name: "stac", scope: !381, file: !381, line: 36, type: !101, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!425 = !DILocation(line: 39, column: 2, scope: !424)
!426 = !{i64 2151073567, i64 2151073595, i64 2151073601, i64 2151073617, i64 2151073633, i64 2151073660, i64 2151073974, i64 2151073317, i64 2151073980, i64 2151074028, i64 2151074092, i64 2151074156, i64 2151074213, i64 2151073398, i64 2151073423, i64 2151074420, i64 2151074556, i64 2151074481, i64 2151074570, i64 2151073515}
!427 = !DILocation(line: 40, column: 1, scope: !424)
!428 = distinct !DISubprogram(name: "kasan_check_read", scope: !386, file: !386, line: 40, type: !387, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!429 = !{!430, !431}
!430 = !DILocalVariable(name: "p", arg: 1, scope: !428, file: !386, line: 40, type: !389)
!431 = !DILocalVariable(name: "size", arg: 2, scope: !428, file: !386, line: 40, type: !7)
!432 = !DILocation(line: 40, column: 58, scope: !428)
!433 = !DILocation(line: 40, column: 74, scope: !428)
!434 = !DILocation(line: 42, column: 2, scope: !428)
!435 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !371, file: !371, line: 76, type: !436, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !12, !49, !263, !263}
!438 = !{!439, !440, !441, !442}
!439 = !DILocalVariable(name: "to", arg: 1, scope: !435, file: !371, line: 76, type: !12)
!440 = !DILocalVariable(name: "from", arg: 2, scope: !435, file: !371, line: 76, type: !49)
!441 = !DILocalVariable(name: "to_copy", arg: 3, scope: !435, file: !371, line: 77, type: !263)
!442 = !DILocalVariable(name: "left", arg: 4, scope: !435, file: !371, line: 77, type: !263)
!443 = !DILocation(line: 76, column: 52, scope: !435)
!444 = !DILocation(line: 76, column: 68, scope: !435)
!445 = !DILocation(line: 77, column: 18, scope: !435)
!446 = !DILocation(line: 77, column: 34, scope: !435)
!447 = !DILocation(line: 79, column: 1, scope: !435)
