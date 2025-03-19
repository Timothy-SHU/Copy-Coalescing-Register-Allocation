; ModuleID = 'lib/string.c'
source_filename = "lib/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strncasecmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strncasecmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strcasecmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strcasecmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strcpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strcpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strncpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strncpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strlcpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strlcpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strscpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strscpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_stpcpy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad stpcpy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strcat: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strcat ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strncat: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strncat ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strlcat: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strlcat ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strcmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strcmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strncmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strncmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strchr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strchr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strchrnul: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strchrnul ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strrchr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strrchr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strnchr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strnchr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strlen: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strlen ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strnlen: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strnlen ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strspn: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strspn ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strcspn: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strcspn ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strpbrk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strpbrk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strsep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strsep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memcmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memcmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bcmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad bcmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memscan: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memscan ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strstr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strstr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_strnstr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad strnstr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memchr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memchr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memchr_inv: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memchr_inv ; .previous"

%struct.word_at_a_time = type { i64, i64 }
%struct.anon = type { i64 }
%struct.anon.0 = type { i64 }

@__UNIQUE_ID___addressable_strncasecmp118 = internal global ptr @strncasecmp, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_strcasecmp119 = internal global ptr @strcasecmp, section ".discard.addressable", align 8, !dbg !68
@__UNIQUE_ID___addressable_strcpy120 = internal global ptr @strcpy, section ".discard.addressable", align 8, !dbg !70
@__UNIQUE_ID___addressable_strncpy121 = internal global ptr @strncpy, section ".discard.addressable", align 8, !dbg !72
@__UNIQUE_ID___addressable_strlcpy122 = internal global ptr @strlcpy, section ".discard.addressable", align 8, !dbg !74
@__const.strscpy.constants = private unnamed_addr constant %struct.word_at_a_time { i64 72340172838076673, i64 -9187201950435737472 }, align 8
@.str = private unnamed_addr constant [13 x i8] c"lib/string.c\00", align 1, !dbg !76
@__UNIQUE_ID___addressable_strscpy123 = internal global ptr @strscpy, section ".discard.addressable", align 8, !dbg !81
@__UNIQUE_ID___addressable_stpcpy124 = internal global ptr @stpcpy, section ".discard.addressable", align 8, !dbg !83
@__UNIQUE_ID___addressable_strcat125 = internal global ptr @strcat, section ".discard.addressable", align 8, !dbg !85
@__UNIQUE_ID___addressable_strncat126 = internal global ptr @strncat, section ".discard.addressable", align 8, !dbg !87
@__UNIQUE_ID___addressable_strlcat127 = internal global ptr @strlcat, section ".discard.addressable", align 8, !dbg !89
@__UNIQUE_ID___addressable_strcmp128 = internal global ptr @strcmp, section ".discard.addressable", align 8, !dbg !91
@__UNIQUE_ID___addressable_strncmp129 = internal global ptr @strncmp, section ".discard.addressable", align 8, !dbg !93
@__UNIQUE_ID___addressable_strchr130 = internal global ptr @strchr, section ".discard.addressable", align 8, !dbg !95
@__UNIQUE_ID___addressable_strchrnul131 = internal global ptr @strchrnul, section ".discard.addressable", align 8, !dbg !97
@__UNIQUE_ID___addressable_strrchr132 = internal global ptr @strrchr, section ".discard.addressable", align 8, !dbg !99
@__UNIQUE_ID___addressable_strnchr133 = internal global ptr @strnchr, section ".discard.addressable", align 8, !dbg !101
@__UNIQUE_ID___addressable_strlen134 = internal global ptr @strlen, section ".discard.addressable", align 8, !dbg !103
@__UNIQUE_ID___addressable_strnlen135 = internal global ptr @strnlen, section ".discard.addressable", align 8, !dbg !105
@__UNIQUE_ID___addressable_strspn136 = internal global ptr @strspn, section ".discard.addressable", align 8, !dbg !107
@__UNIQUE_ID___addressable_strcspn137 = internal global ptr @strcspn, section ".discard.addressable", align 8, !dbg !109
@__UNIQUE_ID___addressable_strpbrk138 = internal global ptr @strpbrk, section ".discard.addressable", align 8, !dbg !111
@__UNIQUE_ID___addressable_strsep139 = internal global ptr @strsep, section ".discard.addressable", align 8, !dbg !113
@__UNIQUE_ID___addressable_memcmp140 = internal global ptr @memcmp, section ".discard.addressable", align 8, !dbg !115
@__UNIQUE_ID___addressable_bcmp141 = internal global ptr @bcmp, section ".discard.addressable", align 8, !dbg !117
@__UNIQUE_ID___addressable_memscan142 = internal global ptr @memscan, section ".discard.addressable", align 8, !dbg !119
@__UNIQUE_ID___addressable_strstr143 = internal global ptr @strstr, section ".discard.addressable", align 8, !dbg !121
@__UNIQUE_ID___addressable_strnstr144 = internal global ptr @strnstr, section ".discard.addressable", align 8, !dbg !123
@__UNIQUE_ID___addressable_memchr145 = internal global ptr @memchr, section ".discard.addressable", align 8, !dbg !125
@__UNIQUE_ID___addressable_memchr_inv146 = internal global ptr @memchr_inv, section ".discard.addressable", align 8, !dbg !127
@_ctype = external dso_local constant [0 x i8], align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID___addressable_strncasecmp118, ptr @__UNIQUE_ID___addressable_strcasecmp119, ptr @__UNIQUE_ID___addressable_strcpy120, ptr @__UNIQUE_ID___addressable_strncpy121, ptr @__UNIQUE_ID___addressable_strlcpy122, ptr @__UNIQUE_ID___addressable_strscpy123, ptr @__UNIQUE_ID___addressable_stpcpy124, ptr @__UNIQUE_ID___addressable_strcat125, ptr @__UNIQUE_ID___addressable_strncat126, ptr @__UNIQUE_ID___addressable_strlcat127, ptr @__UNIQUE_ID___addressable_strcmp128, ptr @__UNIQUE_ID___addressable_strncmp129, ptr @__UNIQUE_ID___addressable_strchr130, ptr @__UNIQUE_ID___addressable_strchrnul131, ptr @__UNIQUE_ID___addressable_strrchr132, ptr @__UNIQUE_ID___addressable_strnchr133, ptr @__UNIQUE_ID___addressable_strlen134, ptr @__UNIQUE_ID___addressable_strnlen135, ptr @__UNIQUE_ID___addressable_strspn136, ptr @__UNIQUE_ID___addressable_strcspn137, ptr @__UNIQUE_ID___addressable_strpbrk138, ptr @__UNIQUE_ID___addressable_strsep139, ptr @__UNIQUE_ID___addressable_memcmp140, ptr @__UNIQUE_ID___addressable_bcmp141, ptr @__UNIQUE_ID___addressable_memscan142, ptr @__UNIQUE_ID___addressable_strstr143, ptr @__UNIQUE_ID___addressable_strnstr144, ptr @__UNIQUE_ID___addressable_memchr145, ptr @__UNIQUE_ID___addressable_memchr_inv146], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @strncasecmp(ptr noundef %s1, ptr noundef %s2, i64 noundef %len) #0 align 16 !dbg !138 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !144, metadata !DIExpression()), !dbg !149
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !145, metadata !DIExpression()), !dbg !150
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !146, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #7, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !147, metadata !DIExpression()), !dbg !153
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #7, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !148, metadata !DIExpression()), !dbg !154
  %0 = load i64, ptr %len.addr, align 8, !dbg !155
  %tobool = icmp ne i64 %0, 0, !dbg !155
  br i1 %tobool, label %if.end, label %if.then, !dbg !157

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !158

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !159

do.body:                                          ; preds = %do.cond, %if.end
  %1 = load ptr, ptr %s1.addr, align 8, !dbg !160
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !160
  store ptr %incdec.ptr, ptr %s1.addr, align 8, !dbg !160
  %2 = load i8, ptr %1, align 1, !dbg !162
  store i8 %2, ptr %c1, align 1, !dbg !163
  %3 = load ptr, ptr %s2.addr, align 8, !dbg !164
  %incdec.ptr1 = getelementptr i8, ptr %3, i32 1, !dbg !164
  store ptr %incdec.ptr1, ptr %s2.addr, align 8, !dbg !164
  %4 = load i8, ptr %3, align 1, !dbg !165
  store i8 %4, ptr %c2, align 1, !dbg !166
  %5 = load i8, ptr %c1, align 1, !dbg !167
  %tobool2 = icmp ne i8 %5, 0, !dbg !167
  br i1 %tobool2, label %lor.lhs.false, label %if.then4, !dbg !169

lor.lhs.false:                                    ; preds = %do.body
  %6 = load i8, ptr %c2, align 1, !dbg !170
  %tobool3 = icmp ne i8 %6, 0, !dbg !170
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !171

if.then4:                                         ; preds = %lor.lhs.false, %do.body
  br label %do.end, !dbg !172

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load i8, ptr %c1, align 1, !dbg !173
  %conv = zext i8 %7 to i32, !dbg !173
  %8 = load i8, ptr %c2, align 1, !dbg !175
  %conv6 = zext i8 %8 to i32, !dbg !175
  %cmp = icmp eq i32 %conv, %conv6, !dbg !176
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !177

if.then8:                                         ; preds = %if.end5
  br label %do.cond, !dbg !178

if.end9:                                          ; preds = %if.end5
  %9 = load i8, ptr %c1, align 1, !dbg !179
  %call = call zeroext i8 @__tolower(i8 noundef zeroext %9) #8, !dbg !179
  store i8 %call, ptr %c1, align 1, !dbg !180
  %10 = load i8, ptr %c2, align 1, !dbg !181
  %call10 = call zeroext i8 @__tolower(i8 noundef zeroext %10) #8, !dbg !181
  store i8 %call10, ptr %c2, align 1, !dbg !182
  %11 = load i8, ptr %c1, align 1, !dbg !183
  %conv11 = zext i8 %11 to i32, !dbg !183
  %12 = load i8, ptr %c2, align 1, !dbg !185
  %conv12 = zext i8 %12 to i32, !dbg !185
  %cmp13 = icmp ne i32 %conv11, %conv12, !dbg !186
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !187

if.then15:                                        ; preds = %if.end9
  br label %do.end, !dbg !188

if.end16:                                         ; preds = %if.end9
  br label %do.cond, !dbg !189

do.cond:                                          ; preds = %if.end16, %if.then8
  %13 = load i64, ptr %len.addr, align 8, !dbg !190
  %dec = add i64 %13, -1, !dbg !190
  store i64 %dec, ptr %len.addr, align 8, !dbg !190
  %tobool17 = icmp ne i64 %dec, 0, !dbg !189
  br i1 %tobool17, label %do.body, label %do.end, !dbg !189, !llvm.loop !191

do.end:                                           ; preds = %do.cond, %if.then15, %if.then4
  %14 = load i8, ptr %c1, align 1, !dbg !195
  %conv18 = zext i8 %14 to i32, !dbg !196
  %15 = load i8, ptr %c2, align 1, !dbg !197
  %conv19 = zext i8 %15 to i32, !dbg !198
  %sub = sub i32 %conv18, %conv19, !dbg !199
  store i32 %sub, ptr %retval, align 4, !dbg !200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !200

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #7, !dbg !201
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #7, !dbg !201
  %16 = load i32, ptr %retval, align 4, !dbg !201
  ret i32 %16, !dbg !201
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #3 align 16 !dbg !202 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load i8, ptr %c.addr, align 1, !dbg !209
  %conv = zext i8 %0 to i32, !dbg !209
  %idxprom = sext i32 %conv to i64, !dbg !209
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !209
  %1 = load i8, ptr %arrayidx, align 1, !dbg !209
  %conv1 = zext i8 %1 to i32, !dbg !209
  %and = and i32 %conv1, 1, !dbg !209
  %cmp = icmp ne i32 %and, 0, !dbg !209
  br i1 %cmp, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !212
  %conv3 = zext i8 %2 to i32, !dbg !212
  %sub = sub i32 %conv3, -32, !dbg !212
  %conv4 = trunc i32 %sub to i8, !dbg !212
  store i8 %conv4, ptr %c.addr, align 1, !dbg !212
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !214
  ret i8 %3, !dbg !215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @strcasecmp(ptr noundef %s1, ptr noundef %s2) #0 align 16 !dbg !216 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !220, metadata !DIExpression()), !dbg !224
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #7, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #7, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !223, metadata !DIExpression()), !dbg !228
  br label %do.body, !dbg !229

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %s1.addr, align 8, !dbg !230
  %incdec.ptr = getelementptr i8, ptr %0, i32 1, !dbg !230
  store ptr %incdec.ptr, ptr %s1.addr, align 8, !dbg !230
  %1 = load i8, ptr %0, align 1, !dbg !230
  %call = call zeroext i8 @__tolower(i8 noundef zeroext %1) #8, !dbg !230
  %conv = zext i8 %call to i32, !dbg !230
  store i32 %conv, ptr %c1, align 4, !dbg !232
  %2 = load ptr, ptr %s2.addr, align 8, !dbg !233
  %incdec.ptr1 = getelementptr i8, ptr %2, i32 1, !dbg !233
  store ptr %incdec.ptr1, ptr %s2.addr, align 8, !dbg !233
  %3 = load i8, ptr %2, align 1, !dbg !233
  %call2 = call zeroext i8 @__tolower(i8 noundef zeroext %3) #8, !dbg !233
  %conv3 = zext i8 %call2 to i32, !dbg !233
  store i32 %conv3, ptr %c2, align 4, !dbg !234
  br label %do.cond, !dbg !235

do.cond:                                          ; preds = %do.body
  %4 = load i32, ptr %c1, align 4, !dbg !236
  %5 = load i32, ptr %c2, align 4, !dbg !237
  %cmp = icmp eq i32 %4, %5, !dbg !238
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !239

land.rhs:                                         ; preds = %do.cond
  %6 = load i32, ptr %c1, align 4, !dbg !240
  %cmp5 = icmp ne i32 %6, 0, !dbg !241
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp5, %land.rhs ], !dbg !242
  br i1 %7, label %do.body, label %do.end, !dbg !235, !llvm.loop !243

do.end:                                           ; preds = %land.end
  %8 = load i32, ptr %c1, align 4, !dbg !245
  %9 = load i32, ptr %c2, align 4, !dbg !246
  %sub = sub i32 %8, %9, !dbg !247
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #7, !dbg !248
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #7, !dbg !248
  ret i32 %sub, !dbg !249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strcpy(ptr noundef %dest, ptr noundef %src) #0 align 16 !dbg !250 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !254, metadata !DIExpression()), !dbg !257
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !255, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !256, metadata !DIExpression()), !dbg !260
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !261
  store ptr %0, ptr %tmp, align 8, !dbg !260
  br label %while.cond, !dbg !262

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %src.addr, align 8, !dbg !263
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !263
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !263
  %2 = load i8, ptr %1, align 1, !dbg !264
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !265
  %incdec.ptr1 = getelementptr i8, ptr %3, i32 1, !dbg !265
  store ptr %incdec.ptr1, ptr %dest.addr, align 8, !dbg !265
  store i8 %2, ptr %3, align 1, !dbg !266
  %conv = zext i8 %2 to i32, !dbg !267
  %cmp = icmp ne i32 %conv, 0, !dbg !268
  br i1 %cmp, label %while.body, label %while.end, !dbg !262

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !262, !llvm.loop !269

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %tmp, align 8, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !272
  ret ptr %4, !dbg !273
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strncpy(ptr noundef %dest, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !274 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !278, metadata !DIExpression()), !dbg !282
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !279, metadata !DIExpression()), !dbg !283
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !280, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !281, metadata !DIExpression()), !dbg !286
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !287
  store ptr %0, ptr %tmp, align 8, !dbg !286
  br label %while.cond, !dbg !288

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %count.addr, align 8, !dbg !289
  %tobool = icmp ne i64 %1, 0, !dbg !288
  br i1 %tobool, label %while.body, label %while.end, !dbg !288

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %src.addr, align 8, !dbg !290
  %3 = load i8, ptr %2, align 1, !dbg !293
  %4 = load ptr, ptr %tmp, align 8, !dbg !294
  store i8 %3, ptr %4, align 1, !dbg !295
  %conv = zext i8 %3 to i32, !dbg !296
  %cmp = icmp ne i32 %conv, 0, !dbg !297
  br i1 %cmp, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %src.addr, align 8, !dbg !299
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !299
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then, %while.body
  %6 = load ptr, ptr %tmp, align 8, !dbg !301
  %incdec.ptr2 = getelementptr i8, ptr %6, i32 1, !dbg !301
  store ptr %incdec.ptr2, ptr %tmp, align 8, !dbg !301
  %7 = load i64, ptr %count.addr, align 8, !dbg !302
  %dec = add i64 %7, -1, !dbg !302
  store i64 %dec, ptr %count.addr, align 8, !dbg !302
  br label %while.cond, !dbg !288, !llvm.loop !303

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %dest.addr, align 8, !dbg !305
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !306
  ret ptr %8, !dbg !307
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strlcpy(ptr noundef %dest, ptr noundef %src, i64 noundef %size) #0 align 16 !dbg !308 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %len = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !312, metadata !DIExpression()), !dbg !319
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !313, metadata !DIExpression()), !dbg !320
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !314, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !315, metadata !DIExpression()), !dbg !323
  %0 = load ptr, ptr %src.addr, align 8, !dbg !324
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !325
  store i64 %call, ptr %ret, align 8, !dbg !323
  %1 = load i64, ptr %size.addr, align 8, !dbg !326
  %tobool = icmp ne i64 %1, 0, !dbg !326
  br i1 %tobool, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %len, metadata !316, metadata !DIExpression()), !dbg !329
  %2 = load i64, ptr %ret, align 8, !dbg !330
  %3 = load i64, ptr %size.addr, align 8, !dbg !331
  %cmp = icmp uge i64 %2, %3, !dbg !332
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !333

cond.true:                                        ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !334
  %sub = sub i64 %4, 1, !dbg !335
  br label %cond.end, !dbg !333

cond.false:                                       ; preds = %if.then
  %5 = load i64, ptr %ret, align 8, !dbg !336
  br label %cond.end, !dbg !333

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %5, %cond.false ], !dbg !333
  store i64 %cond, ptr %len, align 8, !dbg !329
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !337
  %7 = load ptr, ptr %src.addr, align 8, !dbg !338
  %8 = load i64, ptr %len, align 8, !dbg !339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %7, i64 %8, i1 false), !dbg !340
  %9 = load ptr, ptr %dest.addr, align 8, !dbg !341
  %10 = load i64, ptr %len, align 8, !dbg !342
  %arrayidx = getelementptr i8, ptr %9, i64 %10, !dbg !341
  store i8 0, ptr %arrayidx, align 1, !dbg !343
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !344
  br label %if.end, !dbg !345

if.end:                                           ; preds = %cond.end, %entry
  %11 = load i64, ptr %ret, align 8, !dbg !346
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !347
  ret i64 %11, !dbg !348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strlen(ptr noundef %s) #0 align 16 !dbg !349 {
entry:
  %s.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #7, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !354, metadata !DIExpression()), !dbg !357
  %0 = load ptr, ptr %s.addr, align 8, !dbg !358
  store ptr %0, ptr %sc, align 8, !dbg !360
  br label %for.cond, !dbg !361

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %sc, align 8, !dbg !362
  %2 = load i8, ptr %1, align 1, !dbg !364
  %conv = zext i8 %2 to i32, !dbg !364
  %cmp = icmp ne i32 %conv, 0, !dbg !365
  br i1 %cmp, label %for.body, label %for.end, !dbg !366

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !366

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %sc, align 8, !dbg !367
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !367
  store ptr %incdec.ptr, ptr %sc, align 8, !dbg !367
  br label %for.cond, !dbg !368, !llvm.loop !369

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %sc, align 8, !dbg !371
  %5 = load ptr, ptr %s.addr, align 8, !dbg !372
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !373
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !373
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !373
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #7, !dbg !374
  ret i64 %sub.ptr.sub, !dbg !375
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strscpy(ptr noundef %dest, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !376 {
entry:
  %retval = alloca i64, align 8
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %constants = alloca %struct.word_at_a_time, align 8
  %max = alloca i64, align 8
  %res = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %limit = alloca i64, align 8
  %c = alloca i64, align 8
  %data = alloca i64, align 8
  %c54 = alloca i8, align 1
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !383, metadata !DIExpression()), !dbg !409
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !384, metadata !DIExpression()), !dbg !410
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !385, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 16, ptr %constants) #7, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %constants, metadata !386, metadata !DIExpression()), !dbg !413
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %constants, ptr align 8 @__const.strscpy.constants, i64 16, i1 false), !dbg !413
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #7, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %max, metadata !393, metadata !DIExpression()), !dbg !415
  %0 = load i64, ptr %count.addr, align 8, !dbg !416
  store i64 %0, ptr %max, align 8, !dbg !415
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %res, metadata !394, metadata !DIExpression()), !dbg !418
  store i64 0, ptr %res, align 8, !dbg !418
  %1 = load i64, ptr %count.addr, align 8, !dbg !419
  %cmp = icmp eq i64 %1, 0, !dbg !420
  br i1 %cmp, label %if.then25, label %lor.lhs.false, !dbg !421

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !395, metadata !DIExpression()), !dbg !422
  %2 = load i64, ptr %count.addr, align 8, !dbg !422
  %cmp1 = icmp ugt i64 %2, 2147483647, !dbg !422
  %lnot = xor i1 %cmp1, true, !dbg !422
  %lnot2 = xor i1 %lnot, true, !dbg !422
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !422
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !422
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !423
  %tobool = icmp ne i32 %3, 0, !dbg !423
  %lnot3 = xor i1 %tobool, true, !dbg !423
  %lnot5 = xor i1 %lnot3, true, !dbg !423
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !423
  %conv = sext i32 %lnot.ext6 to i64, !dbg !423
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !423
  %tobool7 = icmp ne i64 %expval, 0, !dbg !423
  br i1 %tobool7, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !423

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !398, metadata !DIExpression()), !dbg !424
  store i32 2307, ptr %__flags, align 4, !dbg !424
  br label %do.body8, !dbg !424

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !425

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !425

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !424

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !427
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 128, i32 %4, i64 12) #7, !dbg !427, !srcloc !429
  br label %do.cond10, !dbg !427

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !427

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !424

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !430

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !430

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !423
  br label %do.cond15, !dbg !424

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !424

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !424

if.end:                                           ; preds = %do.end16, %lor.lhs.false
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !422
  %tobool17 = icmp ne i32 %5, 0, !dbg !422
  %lnot18 = xor i1 %tobool17, true, !dbg !422
  %lnot20 = xor i1 %lnot18, true, !dbg !422
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !422
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !422
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !422
  store i64 %expval23, ptr %tmp, align 8, !dbg !423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !432
  %6 = load i64, ptr %tmp, align 8, !dbg !422
  %tobool24 = icmp ne i64 %6, 0, !dbg !432
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !433

if.then25:                                        ; preds = %if.end, %entry
  store i64 -7, ptr %retval, align 8, !dbg !434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !434

if.end26:                                         ; preds = %if.end
  %7 = load ptr, ptr %src.addr, align 8, !dbg !435
  %8 = ptrtoint ptr %7 to i64, !dbg !436
  %and = and i64 %8, 7, !dbg !437
  %tobool27 = icmp ne i64 %and, 0, !dbg !437
  br i1 %tobool27, label %if.then28, label %if.end34, !dbg !438

if.then28:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #7, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !401, metadata !DIExpression()), !dbg !440
  %9 = load ptr, ptr %src.addr, align 8, !dbg !441
  %10 = ptrtoint ptr %9 to i64, !dbg !442
  %and29 = and i64 %10, 4095, !dbg !443
  %sub = sub i64 4096, %and29, !dbg !444
  store i64 %sub, ptr %limit, align 8, !dbg !440
  %11 = load i64, ptr %limit, align 8, !dbg !445
  %12 = load i64, ptr %max, align 8, !dbg !447
  %cmp30 = icmp ult i64 %11, %12, !dbg !448
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !449

if.then32:                                        ; preds = %if.then28
  %13 = load i64, ptr %limit, align 8, !dbg !450
  store i64 %13, ptr %max, align 8, !dbg !451
  br label %if.end33, !dbg !452

if.end33:                                         ; preds = %if.then32, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #7, !dbg !453
  br label %if.end34, !dbg !454

if.end34:                                         ; preds = %if.end33, %if.end26
  br label %while.cond, !dbg !455

while.cond:                                       ; preds = %cleanup.cont, %if.end34
  %14 = load i64, ptr %max, align 8, !dbg !456
  %cmp35 = icmp uge i64 %14, 8, !dbg !457
  br i1 %cmp35, label %while.body, label %while.end, !dbg !455

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %c, metadata !404, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %data, metadata !406, metadata !DIExpression()), !dbg !460
  %15 = load ptr, ptr %src.addr, align 8, !dbg !461
  %16 = load i64, ptr %res, align 8, !dbg !462
  %add.ptr = getelementptr i8, ptr %15, i64 %16, !dbg !463
  %call = call i64 @read_word_at_a_time(ptr noundef %add.ptr) #8, !dbg !464
  store i64 %call, ptr %c, align 8, !dbg !465
  %17 = load i64, ptr %c, align 8, !dbg !466
  %call37 = call i64 @has_zero(i64 noundef %17, ptr noundef %data, ptr noundef %constants) #8, !dbg !468
  %tobool38 = icmp ne i64 %call37, 0, !dbg !468
  br i1 %tobool38, label %if.then39, label %if.end45, !dbg !469

if.then39:                                        ; preds = %while.body
  %18 = load i64, ptr %c, align 8, !dbg !470
  %19 = load i64, ptr %data, align 8, !dbg !472
  %call40 = call i64 @prep_zero_mask(i64 noundef %18, i64 noundef %19, ptr noundef %constants) #8, !dbg !473
  store i64 %call40, ptr %data, align 8, !dbg !474
  %20 = load i64, ptr %data, align 8, !dbg !475
  %call41 = call i64 @create_zero_mask(i64 noundef %20) #8, !dbg !476
  store i64 %call41, ptr %data, align 8, !dbg !477
  %21 = load i64, ptr %c, align 8, !dbg !478
  %22 = load i64, ptr %data, align 8, !dbg !479
  %and42 = and i64 %21, %22, !dbg !480
  %23 = load ptr, ptr %dest.addr, align 8, !dbg !481
  %24 = load i64, ptr %res, align 8, !dbg !482
  %add.ptr43 = getelementptr i8, ptr %23, i64 %24, !dbg !483
  store i64 %and42, ptr %add.ptr43, align 8, !dbg !484
  %25 = load i64, ptr %res, align 8, !dbg !485
  %26 = load i64, ptr %data, align 8, !dbg !486
  %call44 = call i64 @find_zero(i64 noundef %26) #8, !dbg !487
  %add = add i64 %25, %call44, !dbg !488
  store i64 %add, ptr %retval, align 8, !dbg !489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !489

if.end45:                                         ; preds = %while.body
  %27 = load i64, ptr %c, align 8, !dbg !490
  %28 = load ptr, ptr %dest.addr, align 8, !dbg !491
  %29 = load i64, ptr %res, align 8, !dbg !492
  %add.ptr46 = getelementptr i8, ptr %28, i64 %29, !dbg !493
  store i64 %27, ptr %add.ptr46, align 8, !dbg !494
  %30 = load i64, ptr %res, align 8, !dbg !495
  %add47 = add i64 %30, 8, !dbg !495
  store i64 %add47, ptr %res, align 8, !dbg !495
  %31 = load i64, ptr %count.addr, align 8, !dbg !496
  %sub48 = sub i64 %31, 8, !dbg !496
  store i64 %sub48, ptr %count.addr, align 8, !dbg !496
  %32 = load i64, ptr %max, align 8, !dbg !497
  %sub49 = sub i64 %32, 8, !dbg !497
  store i64 %sub49, ptr %max, align 8, !dbg !497
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !498
  br label %cleanup, !dbg !498

cleanup:                                          ; preds = %if.end45, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !498
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !455, !llvm.loop !499

while.end:                                        ; preds = %while.cond
  br label %while.cond51, !dbg !500

while.cond51:                                     ; preds = %cleanup.cont61, %while.end
  %33 = load i64, ptr %count.addr, align 8, !dbg !501
  %tobool52 = icmp ne i64 %33, 0, !dbg !500
  br i1 %tobool52, label %while.body53, label %while.end62, !dbg !500

while.body53:                                     ; preds = %while.cond51
  call void @llvm.lifetime.start.p0(i64 1, ptr %c54) #7, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %c54, metadata !407, metadata !DIExpression()), !dbg !503
  %34 = load ptr, ptr %src.addr, align 8, !dbg !504
  %35 = load i64, ptr %res, align 8, !dbg !505
  %arrayidx = getelementptr i8, ptr %34, i64 %35, !dbg !504
  %36 = load i8, ptr %arrayidx, align 1, !dbg !504
  store i8 %36, ptr %c54, align 1, !dbg !506
  %37 = load i8, ptr %c54, align 1, !dbg !507
  %38 = load ptr, ptr %dest.addr, align 8, !dbg !508
  %39 = load i64, ptr %res, align 8, !dbg !509
  %arrayidx55 = getelementptr i8, ptr %38, i64 %39, !dbg !508
  store i8 %37, ptr %arrayidx55, align 1, !dbg !510
  %40 = load i8, ptr %c54, align 1, !dbg !511
  %tobool56 = icmp ne i8 %40, 0, !dbg !511
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !513

if.then57:                                        ; preds = %while.body53
  %41 = load i64, ptr %res, align 8, !dbg !514
  store i64 %41, ptr %retval, align 8, !dbg !515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !515

if.end58:                                         ; preds = %while.body53
  %42 = load i64, ptr %res, align 8, !dbg !516
  %inc = add i64 %42, 1, !dbg !516
  store i64 %inc, ptr %res, align 8, !dbg !516
  %43 = load i64, ptr %count.addr, align 8, !dbg !517
  %dec = add i64 %43, -1, !dbg !517
  store i64 %dec, ptr %count.addr, align 8, !dbg !517
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !518
  br label %cleanup59, !dbg !518

cleanup59:                                        ; preds = %if.end58, %if.then57
  call void @llvm.lifetime.end.p0(i64 1, ptr %c54) #7, !dbg !518
  %cleanup.dest60 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest60, label %cleanup68 [
    i32 0, label %cleanup.cont61
  ]

cleanup.cont61:                                   ; preds = %cleanup59
  br label %while.cond51, !dbg !500, !llvm.loop !519

while.end62:                                      ; preds = %while.cond51
  %44 = load i64, ptr %res, align 8, !dbg !520
  %tobool63 = icmp ne i64 %44, 0, !dbg !520
  br i1 %tobool63, label %if.then64, label %if.end67, !dbg !522

if.then64:                                        ; preds = %while.end62
  %45 = load ptr, ptr %dest.addr, align 8, !dbg !523
  %46 = load i64, ptr %res, align 8, !dbg !524
  %sub65 = sub i64 %46, 1, !dbg !525
  %arrayidx66 = getelementptr i8, ptr %45, i64 %sub65, !dbg !523
  store i8 0, ptr %arrayidx66, align 1, !dbg !526
  br label %if.end67, !dbg !523

if.end67:                                         ; preds = %if.then64, %while.end62
  store i64 -7, ptr %retval, align 8, !dbg !527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !527

cleanup68:                                        ; preds = %if.end67, %cleanup59, %cleanup, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #7, !dbg !528
  call void @llvm.lifetime.end.p0(i64 16, ptr %constants) #7, !dbg !528
  %47 = load i64, ptr %retval, align 8, !dbg !528
  ret i64 %47, !dbg !528
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_word_at_a_time(ptr noundef %addr) #6 align 16 !dbg !529 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !536
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef 1) #8, !dbg !537
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !538
  %2 = load i64, ptr %1, align 8, !dbg !539
  ret i64 %2, !dbg !540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @has_zero(i64 noundef %a, ptr noundef %bits, ptr noundef %c) #3 align 16 !dbg !541 {
entry:
  %a.addr = alloca i64, align 8
  %bits.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !546, metadata !DIExpression()), !dbg !550
  store ptr %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !547, metadata !DIExpression()), !dbg !551
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !548, metadata !DIExpression()), !dbg !552
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !549, metadata !DIExpression()), !dbg !554
  %0 = load i64, ptr %a.addr, align 8, !dbg !555
  %1 = load ptr, ptr %c.addr, align 8, !dbg !556
  %one_bits = getelementptr inbounds %struct.word_at_a_time, ptr %1, i32 0, i32 0, !dbg !557
  %2 = load i64, ptr %one_bits, align 8, !dbg !557
  %sub = sub i64 %0, %2, !dbg !558
  %3 = load i64, ptr %a.addr, align 8, !dbg !559
  %not = xor i64 %3, -1, !dbg !560
  %and = and i64 %sub, %not, !dbg !561
  %4 = load ptr, ptr %c.addr, align 8, !dbg !562
  %high_bits = getelementptr inbounds %struct.word_at_a_time, ptr %4, i32 0, i32 1, !dbg !563
  %5 = load i64, ptr %high_bits, align 8, !dbg !563
  %and1 = and i64 %and, %5, !dbg !564
  store i64 %and1, ptr %mask, align 8, !dbg !554
  %6 = load i64, ptr %mask, align 8, !dbg !565
  %7 = load ptr, ptr %bits.addr, align 8, !dbg !566
  store i64 %6, ptr %7, align 8, !dbg !567
  %8 = load i64, ptr %mask, align 8, !dbg !568
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !569
  ret i64 %8, !dbg !570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @prep_zero_mask(i64 noundef %a, i64 noundef %bits, ptr noundef %c) #3 align 16 !dbg !571 {
entry:
  %a.addr = alloca i64, align 8
  %bits.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !575, metadata !DIExpression()), !dbg !578
  store i64 %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !576, metadata !DIExpression()), !dbg !579
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !577, metadata !DIExpression()), !dbg !580
  %0 = load i64, ptr %bits.addr, align 8, !dbg !581
  ret i64 %0, !dbg !582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @create_zero_mask(i64 noundef %bits) #3 align 16 !dbg !583 {
entry:
  %bits.addr = alloca i64, align 8
  store i64 %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !587, metadata !DIExpression()), !dbg !588
  %0 = load i64, ptr %bits.addr, align 8, !dbg !589
  %sub = sub i64 %0, 1, !dbg !590
  %1 = load i64, ptr %bits.addr, align 8, !dbg !591
  %not = xor i64 %1, -1, !dbg !592
  %and = and i64 %sub, %not, !dbg !593
  store i64 %and, ptr %bits.addr, align 8, !dbg !594
  %2 = load i64, ptr %bits.addr, align 8, !dbg !595
  %shr = lshr i64 %2, 7, !dbg !596
  ret i64 %shr, !dbg !597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_zero(i64 noundef %mask) #3 align 16 !dbg !598 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i64, ptr %mask.addr, align 8, !dbg !602
  %call = call i64 @count_masked_bytes(i64 noundef %0) #8, !dbg !603
  ret i64 %call, !dbg !604
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @stpcpy(ptr noalias noundef %dest, ptr noalias noundef %src) #0 align 16 !dbg !605 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !611, metadata !DIExpression()), !dbg !613
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !612, metadata !DIExpression()), !dbg !614
  br label %while.cond, !dbg !615

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %src.addr, align 8, !dbg !616
  %incdec.ptr = getelementptr i8, ptr %0, i32 1, !dbg !616
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !616
  %1 = load i8, ptr %0, align 1, !dbg !617
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !618
  %incdec.ptr1 = getelementptr i8, ptr %2, i32 1, !dbg !618
  store ptr %incdec.ptr1, ptr %dest.addr, align 8, !dbg !618
  store i8 %1, ptr %2, align 1, !dbg !619
  %conv = zext i8 %1 to i32, !dbg !620
  %cmp = icmp ne i32 %conv, 0, !dbg !621
  br i1 %cmp, label %while.body, label %while.end, !dbg !615

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !615, !llvm.loop !622

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !624
  %incdec.ptr3 = getelementptr i8, ptr %3, i32 -1, !dbg !624
  store ptr %incdec.ptr3, ptr %dest.addr, align 8, !dbg !624
  ret ptr %incdec.ptr3, !dbg !625
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strcat(ptr noundef %dest, ptr noundef %src) #0 align 16 !dbg !626 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !628, metadata !DIExpression()), !dbg !631
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !629, metadata !DIExpression()), !dbg !632
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !630, metadata !DIExpression()), !dbg !634
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !635
  store ptr %0, ptr %tmp, align 8, !dbg !634
  br label %while.cond, !dbg !636

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !637
  %2 = load i8, ptr %1, align 1, !dbg !638
  %tobool = icmp ne i8 %2, 0, !dbg !636
  br i1 %tobool, label %while.body, label %while.end, !dbg !636

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !639
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !639
  store ptr %incdec.ptr, ptr %dest.addr, align 8, !dbg !639
  br label %while.cond, !dbg !636, !llvm.loop !640

while.end:                                        ; preds = %while.cond
  br label %while.cond1, !dbg !641

while.cond1:                                      ; preds = %while.body5, %while.end
  %4 = load ptr, ptr %src.addr, align 8, !dbg !642
  %incdec.ptr2 = getelementptr i8, ptr %4, i32 1, !dbg !642
  store ptr %incdec.ptr2, ptr %src.addr, align 8, !dbg !642
  %5 = load i8, ptr %4, align 1, !dbg !643
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !644
  %incdec.ptr3 = getelementptr i8, ptr %6, i32 1, !dbg !644
  store ptr %incdec.ptr3, ptr %dest.addr, align 8, !dbg !644
  store i8 %5, ptr %6, align 1, !dbg !645
  %conv = zext i8 %5 to i32, !dbg !646
  %cmp = icmp ne i32 %conv, 0, !dbg !647
  br i1 %cmp, label %while.body5, label %while.end6, !dbg !641

while.body5:                                      ; preds = %while.cond1
  br label %while.cond1, !dbg !641, !llvm.loop !648

while.end6:                                       ; preds = %while.cond1
  %7 = load ptr, ptr %tmp, align 8, !dbg !650
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !651
  ret ptr %7, !dbg !652
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strncat(ptr noundef %dest, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !653 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !655, metadata !DIExpression()), !dbg !659
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !656, metadata !DIExpression()), !dbg !660
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !657, metadata !DIExpression()), !dbg !661
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !658, metadata !DIExpression()), !dbg !663
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !664
  store ptr %0, ptr %tmp, align 8, !dbg !663
  %1 = load i64, ptr %count.addr, align 8, !dbg !665
  %tobool = icmp ne i64 %1, 0, !dbg !665
  br i1 %tobool, label %if.then, label %if.end11, !dbg !667

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !668

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !670
  %3 = load i8, ptr %2, align 1, !dbg !671
  %tobool1 = icmp ne i8 %3, 0, !dbg !668
  br i1 %tobool1, label %while.body, label %while.end, !dbg !668

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !672
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !672
  store ptr %incdec.ptr, ptr %dest.addr, align 8, !dbg !672
  br label %while.cond, !dbg !668, !llvm.loop !673

while.end:                                        ; preds = %while.cond
  br label %while.cond2, !dbg !674

while.cond2:                                      ; preds = %if.end, %while.end
  %5 = load ptr, ptr %src.addr, align 8, !dbg !675
  %incdec.ptr3 = getelementptr i8, ptr %5, i32 1, !dbg !675
  store ptr %incdec.ptr3, ptr %src.addr, align 8, !dbg !675
  %6 = load i8, ptr %5, align 1, !dbg !676
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !677
  %incdec.ptr4 = getelementptr i8, ptr %7, i32 1, !dbg !677
  store ptr %incdec.ptr4, ptr %dest.addr, align 8, !dbg !677
  store i8 %6, ptr %7, align 1, !dbg !678
  %conv = zext i8 %6 to i32, !dbg !679
  %cmp = icmp ne i32 %conv, 0, !dbg !680
  br i1 %cmp, label %while.body6, label %while.end10, !dbg !674

while.body6:                                      ; preds = %while.cond2
  %8 = load i64, ptr %count.addr, align 8, !dbg !681
  %dec = add i64 %8, -1, !dbg !681
  store i64 %dec, ptr %count.addr, align 8, !dbg !681
  %cmp7 = icmp eq i64 %dec, 0, !dbg !684
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !685

if.then9:                                         ; preds = %while.body6
  %9 = load ptr, ptr %dest.addr, align 8, !dbg !686
  store i8 0, ptr %9, align 1, !dbg !688
  br label %while.end10, !dbg !689

if.end:                                           ; preds = %while.body6
  br label %while.cond2, !dbg !674, !llvm.loop !690

while.end10:                                      ; preds = %if.then9, %while.cond2
  br label %if.end11, !dbg !692

if.end11:                                         ; preds = %while.end10, %entry
  %10 = load ptr, ptr %tmp, align 8, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !694
  ret ptr %10, !dbg !695
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strlcat(ptr noundef %dest, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !696 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dsize = alloca i64, align 8
  %len = alloca i64, align 8
  %res = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !698, metadata !DIExpression()), !dbg !704
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !699, metadata !DIExpression()), !dbg !705
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !700, metadata !DIExpression()), !dbg !706
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsize) #7, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %dsize, metadata !701, metadata !DIExpression()), !dbg !708
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !709
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !710
  store i64 %call, ptr %dsize, align 8, !dbg !708
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %len, metadata !702, metadata !DIExpression()), !dbg !712
  %1 = load ptr, ptr %src.addr, align 8, !dbg !713
  %call1 = call i64 @strlen(ptr noundef %1) #8, !dbg !714
  store i64 %call1, ptr %len, align 8, !dbg !712
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %res, metadata !703, metadata !DIExpression()), !dbg !716
  %2 = load i64, ptr %dsize, align 8, !dbg !717
  %3 = load i64, ptr %len, align 8, !dbg !718
  %add = add i64 %2, %3, !dbg !719
  store i64 %add, ptr %res, align 8, !dbg !716
  br label %do.body, !dbg !720

do.body:                                          ; preds = %entry
  %4 = load i64, ptr %dsize, align 8, !dbg !721
  %5 = load i64, ptr %count.addr, align 8, !dbg !721
  %cmp = icmp uge i64 %4, %5, !dbg !721
  %lnot = xor i1 %cmp, true, !dbg !721
  %lnot2 = xor i1 %lnot, true, !dbg !721
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !721
  %conv = sext i32 %lnot.ext to i64, !dbg !721
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !721
  %tobool = icmp ne i64 %expval, 0, !dbg !721
  br i1 %tobool, label %if.then, label %if.end, !dbg !724

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !721

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !725

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !727

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !727

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !725

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 257, i32 0, i64 12) #7, !dbg !729, !srcloc !731
  br label %do.cond6, !dbg !729

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !729

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !725

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !725

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !725

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !724

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !724

do.end11:                                         ; preds = %do.cond10
  %6 = load i64, ptr %dsize, align 8, !dbg !732
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !733
  %add.ptr = getelementptr i8, ptr %7, i64 %6, !dbg !733
  store ptr %add.ptr, ptr %dest.addr, align 8, !dbg !733
  %8 = load i64, ptr %dsize, align 8, !dbg !734
  %9 = load i64, ptr %count.addr, align 8, !dbg !735
  %sub = sub i64 %9, %8, !dbg !735
  store i64 %sub, ptr %count.addr, align 8, !dbg !735
  %10 = load i64, ptr %len, align 8, !dbg !736
  %11 = load i64, ptr %count.addr, align 8, !dbg !738
  %cmp12 = icmp uge i64 %10, %11, !dbg !739
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !740

if.then14:                                        ; preds = %do.end11
  %12 = load i64, ptr %count.addr, align 8, !dbg !741
  %sub15 = sub i64 %12, 1, !dbg !742
  store i64 %sub15, ptr %len, align 8, !dbg !743
  br label %if.end16, !dbg !744

if.end16:                                         ; preds = %if.then14, %do.end11
  %13 = load ptr, ptr %dest.addr, align 8, !dbg !745
  %14 = load ptr, ptr %src.addr, align 8, !dbg !746
  %15 = load i64, ptr %len, align 8, !dbg !747
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 %15, i1 false), !dbg !748
  %16 = load ptr, ptr %dest.addr, align 8, !dbg !749
  %17 = load i64, ptr %len, align 8, !dbg !750
  %arrayidx = getelementptr i8, ptr %16, i64 %17, !dbg !749
  store i8 0, ptr %arrayidx, align 1, !dbg !751
  %18 = load i64, ptr %res, align 8, !dbg !752
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !753
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !753
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsize) #7, !dbg !753
  ret i64 %18, !dbg !754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @strcmp(ptr noundef %cs, ptr noundef %ct) #0 align 16 !dbg !755 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !757, metadata !DIExpression()), !dbg !761
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !758, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #7, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !759, metadata !DIExpression()), !dbg !764
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #7, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !760, metadata !DIExpression()), !dbg !765
  br label %while.cond, !dbg !766

while.cond:                                       ; preds = %if.end9, %entry
  br label %while.body, !dbg !766

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %cs.addr, align 8, !dbg !767
  %incdec.ptr = getelementptr i8, ptr %0, i32 1, !dbg !767
  store ptr %incdec.ptr, ptr %cs.addr, align 8, !dbg !767
  %1 = load i8, ptr %0, align 1, !dbg !769
  store i8 %1, ptr %c1, align 1, !dbg !770
  %2 = load ptr, ptr %ct.addr, align 8, !dbg !771
  %incdec.ptr1 = getelementptr i8, ptr %2, i32 1, !dbg !771
  store ptr %incdec.ptr1, ptr %ct.addr, align 8, !dbg !771
  %3 = load i8, ptr %2, align 1, !dbg !772
  store i8 %3, ptr %c2, align 1, !dbg !773
  %4 = load i8, ptr %c1, align 1, !dbg !774
  %conv = zext i8 %4 to i32, !dbg !774
  %5 = load i8, ptr %c2, align 1, !dbg !776
  %conv2 = zext i8 %5 to i32, !dbg !776
  %cmp = icmp ne i32 %conv, %conv2, !dbg !777
  br i1 %cmp, label %if.then, label %if.end, !dbg !778

if.then:                                          ; preds = %while.body
  %6 = load i8, ptr %c1, align 1, !dbg !779
  %conv4 = zext i8 %6 to i32, !dbg !779
  %7 = load i8, ptr %c2, align 1, !dbg !780
  %conv5 = zext i8 %7 to i32, !dbg !780
  %cmp6 = icmp slt i32 %conv4, %conv5, !dbg !781
  %8 = zext i1 %cmp6 to i64, !dbg !779
  %cond = select i1 %cmp6, i32 -1, i32 1, !dbg !779
  store i32 %cond, ptr %retval, align 4, !dbg !782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !782

if.end:                                           ; preds = %while.body
  %9 = load i8, ptr %c1, align 1, !dbg !783
  %tobool = icmp ne i8 %9, 0, !dbg !783
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !785

if.then8:                                         ; preds = %if.end
  br label %while.end, !dbg !786

if.end9:                                          ; preds = %if.end
  br label %while.cond, !dbg !766, !llvm.loop !787

while.end:                                        ; preds = %if.then8
  store i32 0, ptr %retval, align 4, !dbg !789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !789

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #7, !dbg !790
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #7, !dbg !790
  %10 = load i32, ptr %retval, align 4, !dbg !790
  ret i32 %10, !dbg !790
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @strncmp(ptr noundef %cs, ptr noundef %ct, i64 noundef %count) #0 align 16 !dbg !791 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !793, metadata !DIExpression()), !dbg !798
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !794, metadata !DIExpression()), !dbg !799
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !795, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #7, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !796, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #7, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !797, metadata !DIExpression()), !dbg !803
  br label %while.cond, !dbg !804

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !805
  %tobool = icmp ne i64 %0, 0, !dbg !804
  br i1 %tobool, label %while.body, label %while.end, !dbg !804

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %cs.addr, align 8, !dbg !806
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !806
  store ptr %incdec.ptr, ptr %cs.addr, align 8, !dbg !806
  %2 = load i8, ptr %1, align 1, !dbg !808
  store i8 %2, ptr %c1, align 1, !dbg !809
  %3 = load ptr, ptr %ct.addr, align 8, !dbg !810
  %incdec.ptr1 = getelementptr i8, ptr %3, i32 1, !dbg !810
  store ptr %incdec.ptr1, ptr %ct.addr, align 8, !dbg !810
  %4 = load i8, ptr %3, align 1, !dbg !811
  store i8 %4, ptr %c2, align 1, !dbg !812
  %5 = load i8, ptr %c1, align 1, !dbg !813
  %conv = zext i8 %5 to i32, !dbg !813
  %6 = load i8, ptr %c2, align 1, !dbg !815
  %conv2 = zext i8 %6 to i32, !dbg !815
  %cmp = icmp ne i32 %conv, %conv2, !dbg !816
  br i1 %cmp, label %if.then, label %if.end, !dbg !817

if.then:                                          ; preds = %while.body
  %7 = load i8, ptr %c1, align 1, !dbg !818
  %conv4 = zext i8 %7 to i32, !dbg !818
  %8 = load i8, ptr %c2, align 1, !dbg !819
  %conv5 = zext i8 %8 to i32, !dbg !819
  %cmp6 = icmp slt i32 %conv4, %conv5, !dbg !820
  %9 = zext i1 %cmp6 to i64, !dbg !818
  %cond = select i1 %cmp6, i32 -1, i32 1, !dbg !818
  store i32 %cond, ptr %retval, align 4, !dbg !821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !821

if.end:                                           ; preds = %while.body
  %10 = load i8, ptr %c1, align 1, !dbg !822
  %tobool8 = icmp ne i8 %10, 0, !dbg !822
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !824

if.then9:                                         ; preds = %if.end
  br label %while.end, !dbg !825

if.end10:                                         ; preds = %if.end
  %11 = load i64, ptr %count.addr, align 8, !dbg !826
  %dec = add i64 %11, -1, !dbg !826
  store i64 %dec, ptr %count.addr, align 8, !dbg !826
  br label %while.cond, !dbg !804, !llvm.loop !827

while.end:                                        ; preds = %if.then9, %while.cond
  store i32 0, ptr %retval, align 4, !dbg !829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !829

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #7, !dbg !830
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #7, !dbg !830
  %12 = load i32, ptr %retval, align 4, !dbg !830
  ret i32 %12, !dbg !830
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strchr(ptr noundef %s, i32 noundef %c) #0 align 16 !dbg !831 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !835, metadata !DIExpression()), !dbg !837
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !836, metadata !DIExpression()), !dbg !838
  br label %for.cond, !dbg !839

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !840
  %1 = load i8, ptr %0, align 1, !dbg !843
  %conv = zext i8 %1 to i32, !dbg !843
  %2 = load i32, ptr %c.addr, align 4, !dbg !844
  %conv1 = trunc i32 %2 to i8, !dbg !845
  %conv2 = zext i8 %conv1 to i32, !dbg !845
  %cmp = icmp ne i32 %conv, %conv2, !dbg !846
  br i1 %cmp, label %for.body, label %for.end, !dbg !847

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8, !dbg !848
  %4 = load i8, ptr %3, align 1, !dbg !850
  %conv4 = zext i8 %4 to i32, !dbg !850
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !851
  br i1 %cmp5, label %if.then, label %if.end, !dbg !852

if.then:                                          ; preds = %for.body
  store ptr null, ptr %retval, align 8, !dbg !853
  br label %return, !dbg !853

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !854

for.inc:                                          ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !dbg !855
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !855
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !855
  br label %for.cond, !dbg !856, !llvm.loop !857

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %s.addr, align 8, !dbg !859
  store ptr %6, ptr %retval, align 8, !dbg !860
  br label %return, !dbg !860

return:                                           ; preds = %for.end, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !861
  ret ptr %7, !dbg !861
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strchrnul(ptr noundef %s, i32 noundef %c) #0 align 16 !dbg !862 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !864, metadata !DIExpression()), !dbg !866
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !865, metadata !DIExpression()), !dbg !867
  br label %while.cond, !dbg !868

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !869
  %1 = load i8, ptr %0, align 1, !dbg !870
  %conv = zext i8 %1 to i32, !dbg !870
  %tobool = icmp ne i32 %conv, 0, !dbg !870
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !871

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 8, !dbg !872
  %3 = load i8, ptr %2, align 1, !dbg !873
  %conv1 = zext i8 %3 to i32, !dbg !873
  %4 = load i32, ptr %c.addr, align 4, !dbg !874
  %conv2 = trunc i32 %4 to i8, !dbg !875
  %conv3 = zext i8 %conv2 to i32, !dbg !875
  %cmp = icmp ne i32 %conv1, %conv3, !dbg !876
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !877
  br i1 %5, label %while.body, label %while.end, !dbg !868

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !878
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !878
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !878
  br label %while.cond, !dbg !868, !llvm.loop !879

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !880
  ret ptr %7, !dbg !881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strnchrnul(ptr noundef %s, i64 noundef %count, i32 noundef %c) #0 align 16 !dbg !882 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !886, metadata !DIExpression()), !dbg !889
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !887, metadata !DIExpression()), !dbg !890
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !888, metadata !DIExpression()), !dbg !891
  br label %while.cond, !dbg !892

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !893
  %dec = add i64 %0, -1, !dbg !893
  store i64 %dec, ptr %count.addr, align 8, !dbg !893
  %tobool = icmp ne i64 %0, 0, !dbg !893
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !894

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8, !dbg !895
  %2 = load i8, ptr %1, align 1, !dbg !896
  %conv = zext i8 %2 to i32, !dbg !896
  %tobool1 = icmp ne i32 %conv, 0, !dbg !896
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !897

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %s.addr, align 8, !dbg !898
  %4 = load i8, ptr %3, align 1, !dbg !899
  %conv2 = zext i8 %4 to i32, !dbg !899
  %5 = load i32, ptr %c.addr, align 4, !dbg !900
  %conv3 = trunc i32 %5 to i8, !dbg !901
  %conv4 = zext i8 %conv3 to i32, !dbg !901
  %cmp = icmp ne i32 %conv2, %conv4, !dbg !902
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !903
  br i1 %6, label %while.body, label %while.end, !dbg !892

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !904
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !904
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !904
  br label %while.cond, !dbg !892, !llvm.loop !905

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %s.addr, align 8, !dbg !906
  ret ptr %8, !dbg !907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strrchr(ptr noundef %s, i32 noundef %c) #0 align 16 !dbg !908 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %last = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !910, metadata !DIExpression()), !dbg !913
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !911, metadata !DIExpression()), !dbg !914
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %last, metadata !912, metadata !DIExpression()), !dbg !916
  store ptr null, ptr %last, align 8, !dbg !916
  br label %do.body, !dbg !917

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !918
  %1 = load i8, ptr %0, align 1, !dbg !921
  %conv = zext i8 %1 to i32, !dbg !921
  %2 = load i32, ptr %c.addr, align 4, !dbg !922
  %conv1 = trunc i32 %2 to i8, !dbg !923
  %conv2 = zext i8 %conv1 to i32, !dbg !923
  %cmp = icmp eq i32 %conv, %conv2, !dbg !924
  br i1 %cmp, label %if.then, label %if.end, !dbg !925

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %s.addr, align 8, !dbg !926
  store ptr %3, ptr %last, align 8, !dbg !927
  br label %if.end, !dbg !928

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !929

do.cond:                                          ; preds = %if.end
  %4 = load ptr, ptr %s.addr, align 8, !dbg !930
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !930
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !930
  %5 = load i8, ptr %4, align 1, !dbg !931
  %tobool = icmp ne i8 %5, 0, !dbg !929
  br i1 %tobool, label %do.body, label %do.end, !dbg !929, !llvm.loop !932

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %last, align 8, !dbg !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !935
  ret ptr %6, !dbg !936
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strnchr(ptr noundef %s, i64 noundef %count, i32 noundef %c) #0 align 16 !dbg !937 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !939, metadata !DIExpression()), !dbg !942
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !940, metadata !DIExpression()), !dbg !943
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !941, metadata !DIExpression()), !dbg !944
  br label %while.cond, !dbg !945

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !946
  %dec = add i64 %0, -1, !dbg !946
  store i64 %dec, ptr %count.addr, align 8, !dbg !946
  %tobool = icmp ne i64 %0, 0, !dbg !945
  br i1 %tobool, label %while.body, label %while.end, !dbg !945

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8, !dbg !947
  %2 = load i8, ptr %1, align 1, !dbg !950
  %conv = zext i8 %2 to i32, !dbg !950
  %3 = load i32, ptr %c.addr, align 4, !dbg !951
  %conv1 = trunc i32 %3 to i8, !dbg !952
  %conv2 = zext i8 %conv1 to i32, !dbg !952
  %cmp = icmp eq i32 %conv, %conv2, !dbg !953
  br i1 %cmp, label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %s.addr, align 8, !dbg !955
  store ptr %4, ptr %retval, align 8, !dbg !956
  br label %return, !dbg !956

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %s.addr, align 8, !dbg !957
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !957
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !957
  %6 = load i8, ptr %5, align 1, !dbg !959
  %conv4 = zext i8 %6 to i32, !dbg !959
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !960
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !961

if.then7:                                         ; preds = %if.end
  br label %while.end, !dbg !962

if.end8:                                          ; preds = %if.end
  br label %while.cond, !dbg !945, !llvm.loop !963

while.end:                                        ; preds = %if.then7, %while.cond
  store ptr null, ptr %retval, align 8, !dbg !965
  br label %return, !dbg !965

return:                                           ; preds = %while.end, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !966
  ret ptr %7, !dbg !966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strnlen(ptr noundef %s, i64 noundef %count) #0 align 16 !dbg !967 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %sc = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !971, metadata !DIExpression()), !dbg !974
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #7, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !973, metadata !DIExpression()), !dbg !977
  %0 = load ptr, ptr %s.addr, align 8, !dbg !978
  store ptr %0, ptr %sc, align 8, !dbg !980
  br label %for.cond, !dbg !981

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %count.addr, align 8, !dbg !982
  %dec = add i64 %1, -1, !dbg !982
  store i64 %dec, ptr %count.addr, align 8, !dbg !982
  %tobool = icmp ne i64 %1, 0, !dbg !982
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !984

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %sc, align 8, !dbg !985
  %3 = load i8, ptr %2, align 1, !dbg !986
  %conv = zext i8 %3 to i32, !dbg !986
  %cmp = icmp ne i32 %conv, 0, !dbg !987
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !988
  br i1 %4, label %for.body, label %for.end, !dbg !989

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !989

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %sc, align 8, !dbg !990
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !990
  store ptr %incdec.ptr, ptr %sc, align 8, !dbg !990
  br label %for.cond, !dbg !991, !llvm.loop !992

for.end:                                          ; preds = %land.end
  %6 = load ptr, ptr %sc, align 8, !dbg !994
  %7 = load ptr, ptr %s.addr, align 8, !dbg !995
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64, !dbg !996
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64, !dbg !996
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !996
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #7, !dbg !997
  ret i64 %sub.ptr.sub, !dbg !998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strspn(ptr noundef %s, ptr noundef %accept) #0 align 16 !dbg !999 {
entry:
  %s.addr = alloca ptr, align 8
  %accept.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1003, metadata !DIExpression()), !dbg !1006
  store ptr %accept, ptr %accept.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %accept.addr, metadata !1004, metadata !DIExpression()), !dbg !1007
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1005, metadata !DIExpression()), !dbg !1009
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1010
  store ptr %0, ptr %p, align 8, !dbg !1012
  br label %for.cond, !dbg !1013

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !1014
  %2 = load i8, ptr %1, align 1, !dbg !1016
  %conv = zext i8 %2 to i32, !dbg !1016
  %cmp = icmp ne i32 %conv, 0, !dbg !1017
  br i1 %cmp, label %for.body, label %for.end, !dbg !1018

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %accept.addr, align 8, !dbg !1019
  %4 = load ptr, ptr %p, align 8, !dbg !1022
  %5 = load i8, ptr %4, align 1, !dbg !1023
  %conv2 = zext i8 %5 to i32, !dbg !1023
  %call = call ptr @strchr(ptr noundef %3, i32 noundef %conv2) #8, !dbg !1024
  %tobool = icmp ne ptr %call, null, !dbg !1024
  br i1 %tobool, label %if.end, label %if.then, !dbg !1025

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1026

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1027

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !dbg !1028
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !1028
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1028
  br label %for.cond, !dbg !1029, !llvm.loop !1030

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load ptr, ptr %p, align 8, !dbg !1032
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1033
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !1034
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !1034
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !1035
  ret i64 %sub.ptr.sub, !dbg !1036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @strcspn(ptr noundef %s, ptr noundef %reject) #0 align 16 !dbg !1037 {
entry:
  %s.addr = alloca ptr, align 8
  %reject.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1039, metadata !DIExpression()), !dbg !1042
  store ptr %reject, ptr %reject.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reject.addr, metadata !1040, metadata !DIExpression()), !dbg !1043
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1041, metadata !DIExpression()), !dbg !1045
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1046
  store ptr %0, ptr %p, align 8, !dbg !1048
  br label %for.cond, !dbg !1049

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !1050
  %2 = load i8, ptr %1, align 1, !dbg !1052
  %conv = zext i8 %2 to i32, !dbg !1052
  %cmp = icmp ne i32 %conv, 0, !dbg !1053
  br i1 %cmp, label %for.body, label %for.end, !dbg !1054

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %reject.addr, align 8, !dbg !1055
  %4 = load ptr, ptr %p, align 8, !dbg !1058
  %5 = load i8, ptr %4, align 1, !dbg !1059
  %conv2 = zext i8 %5 to i32, !dbg !1059
  %call = call ptr @strchr(ptr noundef %3, i32 noundef %conv2) #8, !dbg !1060
  %tobool = icmp ne ptr %call, null, !dbg !1060
  br i1 %tobool, label %if.then, label %if.end, !dbg !1061

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1062

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1063

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !dbg !1064
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !1064
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1064
  br label %for.cond, !dbg !1065, !llvm.loop !1066

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load ptr, ptr %p, align 8, !dbg !1068
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1069
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !1070
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !1070
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1070
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !1071
  ret i64 %sub.ptr.sub, !dbg !1072
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strpbrk(ptr noundef %cs, ptr noundef %ct) #0 align 16 !dbg !1073 {
entry:
  %retval = alloca ptr, align 8
  %cs.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !1077, metadata !DIExpression()), !dbg !1080
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #7, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !1079, metadata !DIExpression()), !dbg !1083
  %0 = load ptr, ptr %cs.addr, align 8, !dbg !1084
  store ptr %0, ptr %sc, align 8, !dbg !1086
  br label %for.cond, !dbg !1087

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %sc, align 8, !dbg !1088
  %2 = load i8, ptr %1, align 1, !dbg !1090
  %conv = zext i8 %2 to i32, !dbg !1090
  %cmp = icmp ne i32 %conv, 0, !dbg !1091
  br i1 %cmp, label %for.body, label %for.end, !dbg !1092

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ct.addr, align 8, !dbg !1093
  %4 = load ptr, ptr %sc, align 8, !dbg !1096
  %5 = load i8, ptr %4, align 1, !dbg !1097
  %conv2 = zext i8 %5 to i32, !dbg !1097
  %call = call ptr @strchr(ptr noundef %3, i32 noundef %conv2) #8, !dbg !1098
  %tobool = icmp ne ptr %call, null, !dbg !1098
  br i1 %tobool, label %if.then, label %if.end, !dbg !1099

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %sc, align 8, !dbg !1100
  store ptr %6, ptr %retval, align 8, !dbg !1101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1102

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %sc, align 8, !dbg !1103
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !1103
  store ptr %incdec.ptr, ptr %sc, align 8, !dbg !1103
  br label %for.cond, !dbg !1104, !llvm.loop !1105

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #7, !dbg !1108
  %8 = load ptr, ptr %retval, align 8, !dbg !1108
  ret ptr %8, !dbg !1108
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strsep(ptr noundef %s, ptr noundef %ct) #0 align 16 !dbg !1109 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %sbegin = alloca ptr, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1114, metadata !DIExpression()), !dbg !1118
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !1115, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbegin) #7, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %sbegin, metadata !1116, metadata !DIExpression()), !dbg !1121
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1122
  %1 = load ptr, ptr %0, align 8, !dbg !1123
  store ptr %1, ptr %sbegin, align 8, !dbg !1121
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %end, metadata !1117, metadata !DIExpression()), !dbg !1125
  %2 = load ptr, ptr %sbegin, align 8, !dbg !1126
  %cmp = icmp eq ptr %2, null, !dbg !1128
  br i1 %cmp, label %if.then, label %if.end, !dbg !1129

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1130

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sbegin, align 8, !dbg !1131
  %4 = load ptr, ptr %ct.addr, align 8, !dbg !1132
  %call = call ptr @strpbrk(ptr noundef %3, ptr noundef %4) #8, !dbg !1133
  store ptr %call, ptr %end, align 8, !dbg !1134
  %5 = load ptr, ptr %end, align 8, !dbg !1135
  %tobool = icmp ne ptr %5, null, !dbg !1135
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !1137

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %end, align 8, !dbg !1138
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !1138
  store ptr %incdec.ptr, ptr %end, align 8, !dbg !1138
  store i8 0, ptr %6, align 1, !dbg !1139
  br label %if.end2, !dbg !1140

if.end2:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %end, align 8, !dbg !1141
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1142
  store ptr %7, ptr %8, align 8, !dbg !1143
  %9 = load ptr, ptr %sbegin, align 8, !dbg !1144
  store ptr %9, ptr %retval, align 8, !dbg !1145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1145

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbegin) #7, !dbg !1146
  %10 = load ptr, ptr %retval, align 8, !dbg !1146
  ret ptr %10, !dbg !1146
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memcmp(ptr noundef %cs, ptr noundef %ct, i64 noundef %count) #0 align 16 !dbg !22 {
entry:
  %cs.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %su1 = alloca ptr, align 8
  %su2 = alloca ptr, align 8
  %res = alloca i32, align 4
  %u1 = alloca ptr, align 8
  %u2 = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pptr1 = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !33, metadata !DIExpression()), !dbg !1147
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !34, metadata !DIExpression()), !dbg !1148
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !35, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 8, ptr %su1) #7, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %su1, metadata !36, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr %su2) #7, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %su2, metadata !40, metadata !DIExpression()), !dbg !1152
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #7, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %res, metadata !41, metadata !DIExpression()), !dbg !1154
  store i32 0, ptr %res, align 4, !dbg !1154
  %0 = load i64, ptr %count.addr, align 8, !dbg !1155
  %cmp = icmp uge i64 %0, 8, !dbg !1156
  br i1 %cmp, label %if.then, label %if.end8, !dbg !1157

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #7, !dbg !1158
  call void @llvm.dbg.declare(metadata ptr %u1, metadata !42, metadata !DIExpression()), !dbg !1159
  %1 = load ptr, ptr %cs.addr, align 8, !dbg !1160
  store ptr %1, ptr %u1, align 8, !dbg !1159
  call void @llvm.lifetime.start.p0(i64 8, ptr %u2) #7, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %u2, metadata !47, metadata !DIExpression()), !dbg !1162
  %2 = load ptr, ptr %ct.addr, align 8, !dbg !1163
  store ptr %2, ptr %u2, align 8, !dbg !1162
  br label %do.body, !dbg !1164

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #7, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !48, metadata !DIExpression()), !dbg !1165
  %3 = load ptr, ptr %u1, align 8, !dbg !1165
  store ptr %3, ptr %__pptr, align 8, !dbg !1165
  %4 = load ptr, ptr %__pptr, align 8, !dbg !1165
  %x = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !1165
  %5 = load i64, ptr %x, align 1, !dbg !1165
  store i64 %5, ptr %tmp, align 8, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #7, !dbg !1166
  %6 = load i64, ptr %tmp, align 8, !dbg !1165
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr1) #7, !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %__pptr1, metadata !52, metadata !DIExpression()), !dbg !1167
  %7 = load ptr, ptr %u2, align 8, !dbg !1167
  store ptr %7, ptr %__pptr1, align 8, !dbg !1167
  %8 = load ptr, ptr %__pptr1, align 8, !dbg !1167
  %x3 = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 0, !dbg !1167
  %9 = load i64, ptr %x3, align 1, !dbg !1167
  store i64 %9, ptr %tmp2, align 8, !dbg !1167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr1) #7, !dbg !1168
  %10 = load i64, ptr %tmp2, align 8, !dbg !1167
  %cmp4 = icmp ne i64 %6, %10, !dbg !1169
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1170

if.then5:                                         ; preds = %do.body
  br label %do.end, !dbg !1171

if.end:                                           ; preds = %do.body
  %11 = load ptr, ptr %u1, align 8, !dbg !1172
  %incdec.ptr = getelementptr i64, ptr %11, i32 1, !dbg !1172
  store ptr %incdec.ptr, ptr %u1, align 8, !dbg !1172
  %12 = load ptr, ptr %u2, align 8, !dbg !1173
  %incdec.ptr6 = getelementptr i64, ptr %12, i32 1, !dbg !1173
  store ptr %incdec.ptr6, ptr %u2, align 8, !dbg !1173
  %13 = load i64, ptr %count.addr, align 8, !dbg !1174
  %sub = sub i64 %13, 8, !dbg !1174
  store i64 %sub, ptr %count.addr, align 8, !dbg !1174
  br label %do.cond, !dbg !1175

do.cond:                                          ; preds = %if.end
  %14 = load i64, ptr %count.addr, align 8, !dbg !1176
  %cmp7 = icmp uge i64 %14, 8, !dbg !1177
  br i1 %cmp7, label %do.body, label %do.end, !dbg !1175, !llvm.loop !1178

do.end:                                           ; preds = %do.cond, %if.then5
  %15 = load ptr, ptr %u1, align 8, !dbg !1180
  store ptr %15, ptr %cs.addr, align 8, !dbg !1181
  %16 = load ptr, ptr %u2, align 8, !dbg !1182
  store ptr %16, ptr %ct.addr, align 8, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 8, ptr %u2) #7, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #7, !dbg !1184
  br label %if.end8, !dbg !1185

if.end8:                                          ; preds = %do.end, %entry
  %17 = load ptr, ptr %cs.addr, align 8, !dbg !1186
  store ptr %17, ptr %su1, align 8, !dbg !1188
  %18 = load ptr, ptr %ct.addr, align 8, !dbg !1189
  store ptr %18, ptr %su2, align 8, !dbg !1190
  br label %for.cond, !dbg !1191

for.cond:                                         ; preds = %for.inc, %if.end8
  %19 = load i64, ptr %count.addr, align 8, !dbg !1192
  %cmp9 = icmp ult i64 0, %19, !dbg !1194
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1195

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %su1, align 8, !dbg !1196
  %21 = load i8, ptr %20, align 1, !dbg !1198
  %conv = zext i8 %21 to i32, !dbg !1198
  %22 = load ptr, ptr %su2, align 8, !dbg !1199
  %23 = load i8, ptr %22, align 1, !dbg !1200
  %conv10 = zext i8 %23 to i32, !dbg !1200
  %sub11 = sub i32 %conv, %conv10, !dbg !1201
  store i32 %sub11, ptr %res, align 4, !dbg !1202
  %cmp12 = icmp ne i32 %sub11, 0, !dbg !1203
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1204

if.then14:                                        ; preds = %for.body
  br label %for.end, !dbg !1205

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !1206

for.inc:                                          ; preds = %if.end15
  %24 = load ptr, ptr %su1, align 8, !dbg !1207
  %incdec.ptr16 = getelementptr i8, ptr %24, i32 1, !dbg !1207
  store ptr %incdec.ptr16, ptr %su1, align 8, !dbg !1207
  %25 = load ptr, ptr %su2, align 8, !dbg !1208
  %incdec.ptr17 = getelementptr i8, ptr %25, i32 1, !dbg !1208
  store ptr %incdec.ptr17, ptr %su2, align 8, !dbg !1208
  %26 = load i64, ptr %count.addr, align 8, !dbg !1209
  %dec = add i64 %26, -1, !dbg !1209
  store i64 %dec, ptr %count.addr, align 8, !dbg !1209
  br label %for.cond, !dbg !1210, !llvm.loop !1211

for.end:                                          ; preds = %if.then14, %for.cond
  %27 = load i32, ptr %res, align 4, !dbg !1213
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #7, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %su2) #7, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %su1) #7, !dbg !1214
  ret i32 %27, !dbg !1215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @bcmp(ptr noundef %a, ptr noundef %b, i64 noundef %len) #0 align 16 !dbg !1216 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1218, metadata !DIExpression()), !dbg !1221
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1219, metadata !DIExpression()), !dbg !1222
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1220, metadata !DIExpression()), !dbg !1223
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1224
  %1 = load ptr, ptr %b.addr, align 8, !dbg !1225
  %2 = load i64, ptr %len.addr, align 8, !dbg !1226
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #8, !dbg !1227
  ret i32 %call, !dbg !1228
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @memscan(ptr noundef %addr, i32 noundef %c, i64 noundef %size) #0 align 16 !dbg !1229 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1233, metadata !DIExpression()), !dbg !1238
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1234, metadata !DIExpression()), !dbg !1239
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1235, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1236, metadata !DIExpression()), !dbg !1242
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1243
  store ptr %0, ptr %p, align 8, !dbg !1242
  br label %while.cond, !dbg !1244

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1245
  %tobool = icmp ne i64 %1, 0, !dbg !1244
  br i1 %tobool, label %while.body, label %while.end, !dbg !1244

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8, !dbg !1246
  %3 = load i8, ptr %2, align 1, !dbg !1249
  %conv = zext i8 %3 to i32, !dbg !1249
  %4 = load i32, ptr %c.addr, align 4, !dbg !1250
  %conv1 = trunc i32 %4 to i8, !dbg !1251
  %conv2 = zext i8 %conv1 to i32, !dbg !1251
  %cmp = icmp eq i32 %conv, %conv2, !dbg !1252
  br i1 %cmp, label %if.then, label %if.end, !dbg !1253

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p, align 8, !dbg !1254
  store ptr %5, ptr %retval, align 8, !dbg !1255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1255

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %p, align 8, !dbg !1256
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !1256
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1256
  %7 = load i64, ptr %size.addr, align 8, !dbg !1257
  %dec = add i64 %7, -1, !dbg !1257
  store i64 %dec, ptr %size.addr, align 8, !dbg !1257
  br label %while.cond, !dbg !1244, !llvm.loop !1258

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %p, align 8, !dbg !1260
  store ptr %8, ptr %retval, align 8, !dbg !1261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1261

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !1262
  %9 = load ptr, ptr %retval, align 8, !dbg !1262
  ret ptr %9, !dbg !1262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strstr(ptr noundef %s1, ptr noundef %s2) #0 align 16 !dbg !1263 {
entry:
  %retval = alloca ptr, align 8
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %l1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !1265, metadata !DIExpression()), !dbg !1269
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !1266, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 8, ptr %l1) #7, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %l1, metadata !1267, metadata !DIExpression()), !dbg !1272
  call void @llvm.lifetime.start.p0(i64 8, ptr %l2) #7, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %l2, metadata !1268, metadata !DIExpression()), !dbg !1273
  %0 = load ptr, ptr %s2.addr, align 8, !dbg !1274
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !1275
  store i64 %call, ptr %l2, align 8, !dbg !1276
  %1 = load i64, ptr %l2, align 8, !dbg !1277
  %tobool = icmp ne i64 %1, 0, !dbg !1277
  br i1 %tobool, label %if.end, label %if.then, !dbg !1279

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s1.addr, align 8, !dbg !1280
  store ptr %2, ptr %retval, align 8, !dbg !1281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1281

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s1.addr, align 8, !dbg !1282
  %call1 = call i64 @strlen(ptr noundef %3) #8, !dbg !1283
  store i64 %call1, ptr %l1, align 8, !dbg !1284
  br label %while.cond, !dbg !1285

while.cond:                                       ; preds = %if.end5, %if.end
  %4 = load i64, ptr %l1, align 8, !dbg !1286
  %5 = load i64, ptr %l2, align 8, !dbg !1287
  %cmp = icmp uge i64 %4, %5, !dbg !1288
  br i1 %cmp, label %while.body, label %while.end, !dbg !1285

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %l1, align 8, !dbg !1289
  %dec = add i64 %6, -1, !dbg !1289
  store i64 %dec, ptr %l1, align 8, !dbg !1289
  %7 = load ptr, ptr %s1.addr, align 8, !dbg !1291
  %8 = load ptr, ptr %s2.addr, align 8, !dbg !1293
  %9 = load i64, ptr %l2, align 8, !dbg !1294
  %call2 = call i32 @memcmp(ptr noundef %7, ptr noundef %8, i64 noundef %9) #8, !dbg !1295
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1295
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1296

if.then4:                                         ; preds = %while.body
  %10 = load ptr, ptr %s1.addr, align 8, !dbg !1297
  store ptr %10, ptr %retval, align 8, !dbg !1298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1298

if.end5:                                          ; preds = %while.body
  %11 = load ptr, ptr %s1.addr, align 8, !dbg !1299
  %incdec.ptr = getelementptr i8, ptr %11, i32 1, !dbg !1299
  store ptr %incdec.ptr, ptr %s1.addr, align 8, !dbg !1299
  br label %while.cond, !dbg !1285, !llvm.loop !1300

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !1302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1302

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l2) #7, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 8, ptr %l1) #7, !dbg !1303
  %12 = load ptr, ptr %retval, align 8, !dbg !1303
  ret ptr %12, !dbg !1303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @strnstr(ptr noundef %s1, ptr noundef %s2, i64 noundef %len) #0 align 16 !dbg !1304 {
entry:
  %retval = alloca ptr, align 8
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %l2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !1308, metadata !DIExpression()), !dbg !1312
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !1309, metadata !DIExpression()), !dbg !1313
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1310, metadata !DIExpression()), !dbg !1314
  call void @llvm.lifetime.start.p0(i64 8, ptr %l2) #7, !dbg !1315
  call void @llvm.dbg.declare(metadata ptr %l2, metadata !1311, metadata !DIExpression()), !dbg !1316
  %0 = load ptr, ptr %s2.addr, align 8, !dbg !1317
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !1318
  store i64 %call, ptr %l2, align 8, !dbg !1319
  %1 = load i64, ptr %l2, align 8, !dbg !1320
  %tobool = icmp ne i64 %1, 0, !dbg !1320
  br i1 %tobool, label %if.end, label %if.then, !dbg !1322

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s1.addr, align 8, !dbg !1323
  store ptr %2, ptr %retval, align 8, !dbg !1324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1324

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1325

while.cond:                                       ; preds = %if.end4, %if.end
  %3 = load i64, ptr %len.addr, align 8, !dbg !1326
  %4 = load i64, ptr %l2, align 8, !dbg !1327
  %cmp = icmp uge i64 %3, %4, !dbg !1328
  br i1 %cmp, label %while.body, label %while.end, !dbg !1325

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %len.addr, align 8, !dbg !1329
  %dec = add i64 %5, -1, !dbg !1329
  store i64 %dec, ptr %len.addr, align 8, !dbg !1329
  %6 = load ptr, ptr %s1.addr, align 8, !dbg !1331
  %7 = load ptr, ptr %s2.addr, align 8, !dbg !1333
  %8 = load i64, ptr %l2, align 8, !dbg !1334
  %call1 = call i32 @memcmp(ptr noundef %6, ptr noundef %7, i64 noundef %8) #8, !dbg !1335
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1335
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1336

if.then3:                                         ; preds = %while.body
  %9 = load ptr, ptr %s1.addr, align 8, !dbg !1337
  store ptr %9, ptr %retval, align 8, !dbg !1338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1338

if.end4:                                          ; preds = %while.body
  %10 = load ptr, ptr %s1.addr, align 8, !dbg !1339
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !1339
  store ptr %incdec.ptr, ptr %s1.addr, align 8, !dbg !1339
  br label %while.cond, !dbg !1325, !llvm.loop !1340

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !1342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1342

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l2) #7, !dbg !1343
  %11 = load ptr, ptr %retval, align 8, !dbg !1343
  ret ptr %11, !dbg !1343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @memchr(ptr noundef %s, i32 noundef %c, i64 noundef %n) #0 align 16 !dbg !1344 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1348, metadata !DIExpression()), !dbg !1352
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1349, metadata !DIExpression()), !dbg !1353
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1350, metadata !DIExpression()), !dbg !1354
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1351, metadata !DIExpression()), !dbg !1356
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1357
  store ptr %0, ptr %p, align 8, !dbg !1356
  br label %while.cond, !dbg !1358

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !1359
  %dec = add i64 %1, -1, !dbg !1359
  store i64 %dec, ptr %n.addr, align 8, !dbg !1359
  %cmp = icmp ne i64 %1, 0, !dbg !1360
  br i1 %cmp, label %while.body, label %while.end, !dbg !1358

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c.addr, align 4, !dbg !1361
  %conv = trunc i32 %2 to i8, !dbg !1364
  %conv1 = zext i8 %conv to i32, !dbg !1364
  %3 = load ptr, ptr %p, align 8, !dbg !1365
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !1365
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1365
  %4 = load i8, ptr %3, align 1, !dbg !1366
  %conv2 = zext i8 %4 to i32, !dbg !1366
  %cmp3 = icmp eq i32 %conv1, %conv2, !dbg !1367
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1368

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p, align 8, !dbg !1369
  %add.ptr = getelementptr i8, ptr %5, i64 -1, !dbg !1371
  store ptr %add.ptr, ptr %retval, align 8, !dbg !1372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1372

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !1358, !llvm.loop !1373

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !1375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1375

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !1376
  %6 = load ptr, ptr %retval, align 8, !dbg !1376
  ret ptr %6, !dbg !1376
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @memchr_inv(ptr noundef %start, i32 noundef %c, i64 noundef %bytes) #0 align 16 !dbg !1377 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %bytes.addr = alloca i64, align 8
  %value = alloca i8, align 1
  %value64 = alloca i64, align 8
  %words = alloca i32, align 4
  %prefix = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1379, metadata !DIExpression()), !dbg !1392
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1380, metadata !DIExpression()), !dbg !1393
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1381, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #7, !dbg !1395
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1382, metadata !DIExpression()), !dbg !1396
  %0 = load i32, ptr %c.addr, align 4, !dbg !1397
  %conv = trunc i32 %0 to i8, !dbg !1397
  store i8 %conv, ptr %value, align 1, !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %value64) #7, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %value64, metadata !1385, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 4, ptr %words) #7, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %words, metadata !1386, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefix) #7, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %prefix, metadata !1387, metadata !DIExpression()), !dbg !1402
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !1403
  %cmp = icmp ule i64 %1, 16, !dbg !1405
  br i1 %cmp, label %if.then, label %if.end, !dbg !1406

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !1407
  %3 = load i8, ptr %value, align 1, !dbg !1408
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !1409
  %conv2 = trunc i64 %4 to i32, !dbg !1409
  %call = call ptr @check_bytes8(ptr noundef %2, i8 noundef zeroext %3, i32 noundef %conv2) #8, !dbg !1410
  store ptr %call, ptr %retval, align 8, !dbg !1411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !1411

if.end:                                           ; preds = %entry
  %5 = load i8, ptr %value, align 1, !dbg !1412
  %conv3 = zext i8 %5 to i64, !dbg !1412
  store i64 %conv3, ptr %value64, align 8, !dbg !1413
  %6 = load i64, ptr %value64, align 8, !dbg !1414
  %mul = mul i64 %6, 72340172838076673, !dbg !1414
  store i64 %mul, ptr %value64, align 8, !dbg !1414
  %7 = load ptr, ptr %start.addr, align 8, !dbg !1415
  %8 = ptrtoint ptr %7 to i64, !dbg !1416
  %rem = urem i64 %8, 8, !dbg !1417
  %conv4 = trunc i64 %rem to i32, !dbg !1416
  store i32 %conv4, ptr %prefix, align 4, !dbg !1418
  %9 = load i32, ptr %prefix, align 4, !dbg !1419
  %tobool = icmp ne i32 %9, 0, !dbg !1419
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !1420

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1388, metadata !DIExpression()), !dbg !1422
  %10 = load i32, ptr %prefix, align 4, !dbg !1423
  %sub = sub i32 8, %10, !dbg !1424
  store i32 %sub, ptr %prefix, align 4, !dbg !1425
  %11 = load ptr, ptr %start.addr, align 8, !dbg !1426
  %12 = load i8, ptr %value, align 1, !dbg !1427
  %13 = load i32, ptr %prefix, align 4, !dbg !1428
  %call6 = call ptr @check_bytes8(ptr noundef %11, i8 noundef zeroext %12, i32 noundef %13) #8, !dbg !1429
  store ptr %call6, ptr %r, align 8, !dbg !1430
  %14 = load ptr, ptr %r, align 8, !dbg !1431
  %tobool7 = icmp ne ptr %14, null, !dbg !1431
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1433

if.then8:                                         ; preds = %if.then5
  %15 = load ptr, ptr %r, align 8, !dbg !1434
  store ptr %15, ptr %retval, align 8, !dbg !1435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1435

if.end9:                                          ; preds = %if.then5
  %16 = load i32, ptr %prefix, align 4, !dbg !1436
  %17 = load ptr, ptr %start.addr, align 8, !dbg !1437
  %idx.ext = zext i32 %16 to i64, !dbg !1437
  %add.ptr = getelementptr i8, ptr %17, i64 %idx.ext, !dbg !1437
  store ptr %add.ptr, ptr %start.addr, align 8, !dbg !1437
  %18 = load i32, ptr %prefix, align 4, !dbg !1438
  %conv10 = zext i32 %18 to i64, !dbg !1438
  %19 = load i64, ptr %bytes.addr, align 8, !dbg !1439
  %sub11 = sub i64 %19, %conv10, !dbg !1439
  store i64 %sub11, ptr %bytes.addr, align 8, !dbg !1439
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1440
  br label %cleanup, !dbg !1440

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7, !dbg !1440
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end12, !dbg !1441

if.end12:                                         ; preds = %cleanup.cont, %if.end
  %20 = load i64, ptr %bytes.addr, align 8, !dbg !1442
  %div = udiv i64 %20, 8, !dbg !1443
  %conv13 = trunc i64 %div to i32, !dbg !1442
  store i32 %conv13, ptr %words, align 4, !dbg !1444
  br label %while.cond, !dbg !1445

while.cond:                                       ; preds = %if.end19, %if.end12
  %21 = load i32, ptr %words, align 4, !dbg !1446
  %tobool14 = icmp ne i32 %21, 0, !dbg !1445
  br i1 %tobool14, label %while.body, label %while.end, !dbg !1445

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %start.addr, align 8, !dbg !1447
  %23 = load i64, ptr %22, align 8, !dbg !1450
  %24 = load i64, ptr %value64, align 8, !dbg !1451
  %cmp15 = icmp ne i64 %23, %24, !dbg !1452
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !1453

if.then17:                                        ; preds = %while.body
  %25 = load ptr, ptr %start.addr, align 8, !dbg !1454
  %26 = load i8, ptr %value, align 1, !dbg !1455
  %call18 = call ptr @check_bytes8(ptr noundef %25, i8 noundef zeroext %26, i32 noundef 8) #8, !dbg !1456
  store ptr %call18, ptr %retval, align 8, !dbg !1457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !1457

if.end19:                                         ; preds = %while.body
  %27 = load ptr, ptr %start.addr, align 8, !dbg !1458
  %add.ptr20 = getelementptr i8, ptr %27, i64 8, !dbg !1458
  store ptr %add.ptr20, ptr %start.addr, align 8, !dbg !1458
  %28 = load i32, ptr %words, align 4, !dbg !1459
  %dec = add i32 %28, -1, !dbg !1459
  store i32 %dec, ptr %words, align 4, !dbg !1459
  br label %while.cond, !dbg !1445, !llvm.loop !1460

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %start.addr, align 8, !dbg !1462
  %30 = load i8, ptr %value, align 1, !dbg !1463
  %31 = load i64, ptr %bytes.addr, align 8, !dbg !1464
  %rem21 = urem i64 %31, 8, !dbg !1465
  %conv22 = trunc i64 %rem21 to i32, !dbg !1464
  %call23 = call ptr @check_bytes8(ptr noundef %29, i8 noundef zeroext %30, i32 noundef %conv22) #8, !dbg !1466
  store ptr %call23, ptr %retval, align 8, !dbg !1467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !1467

cleanup24:                                        ; preds = %while.end, %if.then17, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefix) #7, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr %words) #7, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %value64) #7, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #7, !dbg !1468
  %32 = load ptr, ptr %retval, align 8, !dbg !1468
  ret ptr %32, !dbg !1468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @check_bytes8(ptr noundef %start, i8 noundef zeroext %value, i32 noundef %bytes) #0 align 16 !dbg !1469 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  %bytes.addr = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1475, metadata !DIExpression()), !dbg !1478
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1476, metadata !DIExpression()), !dbg !1479
  store i32 %bytes, ptr %bytes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1477, metadata !DIExpression()), !dbg !1480
  br label %while.cond, !dbg !1481

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %bytes.addr, align 4, !dbg !1482
  %tobool = icmp ne i32 %0, 0, !dbg !1481
  br i1 %tobool, label %while.body, label %while.end, !dbg !1481

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %start.addr, align 8, !dbg !1483
  %2 = load i8, ptr %1, align 1, !dbg !1486
  %conv = zext i8 %2 to i32, !dbg !1486
  %3 = load i8, ptr %value.addr, align 1, !dbg !1487
  %conv1 = zext i8 %3 to i32, !dbg !1487
  %cmp = icmp ne i32 %conv, %conv1, !dbg !1488
  br i1 %cmp, label %if.then, label %if.end, !dbg !1489

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %start.addr, align 8, !dbg !1490
  store ptr %4, ptr %retval, align 8, !dbg !1491
  br label %return, !dbg !1491

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %start.addr, align 8, !dbg !1492
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !1492
  store ptr %incdec.ptr, ptr %start.addr, align 8, !dbg !1492
  %6 = load i32, ptr %bytes.addr, align 4, !dbg !1493
  %dec = add i32 %6, -1, !dbg !1493
  store i32 %dec, ptr %bytes.addr, align 4, !dbg !1493
  br label %while.cond, !dbg !1481, !llvm.loop !1494

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !1496
  br label %return, !dbg !1496

return:                                           ; preds = %while.end, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !1497
  ret ptr %7, !dbg !1497
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1498 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1508, metadata !DIExpression()), !dbg !1510
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1509, metadata !DIExpression()), !dbg !1511
  ret i1 true, !dbg !1512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @count_masked_bytes(i64 noundef %mask) #3 align 16 !dbg !1513 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1517, metadata !DIExpression()), !dbg !1518
  %0 = load i64, ptr %mask.addr, align 8, !dbg !1519
  %mul = mul i64 %0, 283686952306184, !dbg !1520
  %shr = lshr i64 %mul, 56, !dbg !1521
  ret i64 %shr, !dbg !1522
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strncasecmp118", scope: !2, file: !3, line: 61, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.string.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -ffreestanding -D KBUILD_MODFILE=\22lib/string\22 -D KBUILD_BASENAME=\22string\22 -D KBUILD_MODNAME=\22string\22 -D __KBUILD_MODNAME=kmod_string -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/string.ll lib/string.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/string.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f478ef6cf1c93b5c580f08a753a4b0")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !15, !17, !18, !19, !54, !39, !16, !61}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !3, line: 681, size: 64, elements: !59)
!22 = distinct !DISubprogram(name: "memcmp", scope: !3, file: !3, line: 671, type: !23, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !32)
!23 = !DISubroutineType(types: !24)
!24 = !{!12, !25, !25, !27}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 61, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !30, line: 72, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !30, line: 16, baseType: !16)
!32 = !{!33, !34, !35, !36, !40, !41, !42, !47, !48, !52}
!33 = !DILocalVariable(name: "cs", arg: 1, scope: !22, file: !3, line: 671, type: !25)
!34 = !DILocalVariable(name: "ct", arg: 2, scope: !22, file: !3, line: 671, type: !25)
!35 = !DILocalVariable(name: "count", arg: 3, scope: !22, file: !3, line: 671, type: !27)
!36 = !DILocalVariable(name: "su1", scope: !22, file: !3, line: 673, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DILocalVariable(name: "su2", scope: !22, file: !3, line: 673, type: !37)
!41 = !DILocalVariable(name: "res", scope: !22, file: !3, line: 674, type: !12)
!42 = !DILocalVariable(name: "u1", scope: !43, file: !3, line: 678, type: !45)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 677, column: 38)
!44 = distinct !DILexicalBlock(scope: !22, file: !3, line: 677, column: 6)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!47 = !DILocalVariable(name: "u2", scope: !43, file: !3, line: 679, type: !45)
!48 = !DILocalVariable(name: "__pptr", scope: !49, file: !3, line: 681, type: !19)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 681, column: 8)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 681, column: 8)
!51 = distinct !DILexicalBlock(scope: !43, file: !3, line: 680, column: 6)
!52 = !DILocalVariable(name: "__pptr", scope: !53, file: !3, line: 681, type: !54)
!53 = distinct !DILexicalBlock(scope: !50, file: !3, line: 681, column: 29)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !3, line: 681, size: 64, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !56, file: !3, line: 681, baseType: !46, size: 64)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !21, file: !3, line: 681, baseType: !46, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !63, line: 23, baseType: !64)
!63 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !65, line: 31, baseType: !66)
!65 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!66 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!67 = !{!0, !68, !70, !72, !74, !76, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strcasecmp119", scope: !2, file: !3, line: 75, type: !13, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strcpy120", scope: !2, file: !3, line: 87, type: !13, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strncpy121", scope: !2, file: !3, line: 103, type: !13, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strlcpy122", scope: !2, file: !3, line: 118, type: !13, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 104, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 13)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strscpy123", scope: !2, file: !3, line: 188, type: !13, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_stpcpy124", scope: !2, file: !3, line: 213, type: !13, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strcat125", scope: !2, file: !3, line: 226, type: !13, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strncat126", scope: !2, file: !3, line: 246, type: !13, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strlcat127", scope: !2, file: !3, line: 267, type: !13, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strcmp128", scope: !2, file: !3, line: 290, type: !13, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strncmp129", scope: !2, file: !3, line: 315, type: !13, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strchr130", scope: !2, file: !3, line: 334, type: !13, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strchrnul131", scope: !2, file: !3, line: 352, type: !13, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strrchr132", scope: !2, file: !3, line: 387, type: !13, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strnchr133", scope: !2, file: !3, line: 410, type: !13, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strlen134", scope: !2, file: !3, line: 422, type: !13, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strnlen135", scope: !2, file: !3, line: 434, type: !13, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strspn136", scope: !2, file: !3, line: 453, type: !13, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strcspn137", scope: !2, file: !3, line: 472, type: !13, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strpbrk138", scope: !2, file: !3, line: 491, type: !13, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strsep139", scope: !2, file: !3, line: 520, type: !13, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memcmp140", scope: !2, file: !3, line: 696, type: !13, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bcmp141", scope: !2, file: !3, line: 715, type: !13, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memscan142", scope: !2, file: !3, line: 740, type: !13, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strstr143", scope: !2, file: !3, line: 765, type: !13, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_strnstr144", scope: !2, file: !3, line: 790, type: !13, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memchr145", scope: !2, file: !3, line: 813, type: !13, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memchr_inv146", scope: !2, file: !3, line: 880, type: !13, isLocal: true, isDefinition: true)
!129 = !{i32 7, !"Dwarf Version", i32 5}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 8, !"cf-protection-branch", i32 1}
!133 = !{i32 4, !"function_return_thunk_extern", i32 1}
!134 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!135 = !{i32 1, !"Code Model", i32 2}
!136 = !{i32 1, !"override-stack-alignment", i32 8}
!137 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!138 = distinct !DISubprogram(name: "strncasecmp", scope: !3, file: !3, line: 39, type: !139, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!139 = !DISubroutineType(types: !140)
!140 = !{!12, !141, !141, !27}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!143 = !{!144, !145, !146, !147, !148}
!144 = !DILocalVariable(name: "s1", arg: 1, scope: !138, file: !3, line: 39, type: !141)
!145 = !DILocalVariable(name: "s2", arg: 2, scope: !138, file: !3, line: 39, type: !141)
!146 = !DILocalVariable(name: "len", arg: 3, scope: !138, file: !3, line: 39, type: !27)
!147 = !DILocalVariable(name: "c1", scope: !138, file: !3, line: 42, type: !39)
!148 = !DILocalVariable(name: "c2", scope: !138, file: !3, line: 42, type: !39)
!149 = !DILocation(line: 39, column: 29, scope: !138)
!150 = !DILocation(line: 39, column: 45, scope: !138)
!151 = !DILocation(line: 39, column: 56, scope: !138)
!152 = !DILocation(line: 42, column: 2, scope: !138)
!153 = !DILocation(line: 42, column: 16, scope: !138)
!154 = !DILocation(line: 42, column: 20, scope: !138)
!155 = !DILocation(line: 44, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !138, file: !3, line: 44, column: 6)
!157 = !DILocation(line: 44, column: 6, scope: !138)
!158 = !DILocation(line: 45, column: 3, scope: !156)
!159 = !DILocation(line: 47, column: 2, scope: !138)
!160 = !DILocation(line: 48, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !138, file: !3, line: 47, column: 5)
!162 = !DILocation(line: 48, column: 8, scope: !161)
!163 = !DILocation(line: 48, column: 6, scope: !161)
!164 = !DILocation(line: 49, column: 11, scope: !161)
!165 = !DILocation(line: 49, column: 8, scope: !161)
!166 = !DILocation(line: 49, column: 6, scope: !161)
!167 = !DILocation(line: 50, column: 8, scope: !168)
!168 = distinct !DILexicalBlock(scope: !161, file: !3, line: 50, column: 7)
!169 = !DILocation(line: 50, column: 11, scope: !168)
!170 = !DILocation(line: 50, column: 15, scope: !168)
!171 = !DILocation(line: 50, column: 7, scope: !161)
!172 = !DILocation(line: 51, column: 4, scope: !168)
!173 = !DILocation(line: 52, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !3, line: 52, column: 7)
!175 = !DILocation(line: 52, column: 13, scope: !174)
!176 = !DILocation(line: 52, column: 10, scope: !174)
!177 = !DILocation(line: 52, column: 7, scope: !161)
!178 = !DILocation(line: 53, column: 4, scope: !174)
!179 = !DILocation(line: 54, column: 8, scope: !161)
!180 = !DILocation(line: 54, column: 6, scope: !161)
!181 = !DILocation(line: 55, column: 8, scope: !161)
!182 = !DILocation(line: 55, column: 6, scope: !161)
!183 = !DILocation(line: 56, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !161, file: !3, line: 56, column: 7)
!185 = !DILocation(line: 56, column: 13, scope: !184)
!186 = !DILocation(line: 56, column: 10, scope: !184)
!187 = !DILocation(line: 56, column: 7, scope: !161)
!188 = !DILocation(line: 57, column: 4, scope: !184)
!189 = !DILocation(line: 58, column: 2, scope: !161)
!190 = !DILocation(line: 58, column: 11, scope: !138)
!191 = distinct !{!191, !159, !192, !193, !194}
!192 = !DILocation(line: 58, column: 16, scope: !138)
!193 = !{!"llvm.loop.mustprogress"}
!194 = !{!"llvm.loop.unroll.disable"}
!195 = !DILocation(line: 59, column: 14, scope: !138)
!196 = !DILocation(line: 59, column: 9, scope: !138)
!197 = !DILocation(line: 59, column: 24, scope: !138)
!198 = !DILocation(line: 59, column: 19, scope: !138)
!199 = !DILocation(line: 59, column: 17, scope: !138)
!200 = !DILocation(line: 59, column: 2, scope: !138)
!201 = !DILocation(line: 60, column: 1, scope: !138)
!202 = distinct !DISubprogram(name: "__tolower", scope: !203, file: !203, line: 49, type: !204, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!203 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!204 = !DISubroutineType(types: !205)
!205 = !{!39, !39}
!206 = !{!207}
!207 = !DILocalVariable(name: "c", arg: 1, scope: !202, file: !203, line: 49, type: !39)
!208 = !DILocation(line: 49, column: 53, scope: !202)
!209 = !DILocation(line: 51, column: 6, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !203, line: 51, column: 6)
!211 = !DILocation(line: 51, column: 6, scope: !202)
!212 = !DILocation(line: 52, column: 5, scope: !210)
!213 = !DILocation(line: 52, column: 3, scope: !210)
!214 = !DILocation(line: 53, column: 9, scope: !202)
!215 = !DILocation(line: 53, column: 2, scope: !202)
!216 = distinct !DISubprogram(name: "strcasecmp", scope: !3, file: !3, line: 65, type: !217, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!12, !141, !141}
!219 = !{!220, !221, !222, !223}
!220 = !DILocalVariable(name: "s1", arg: 1, scope: !216, file: !3, line: 65, type: !141)
!221 = !DILocalVariable(name: "s2", arg: 2, scope: !216, file: !3, line: 65, type: !141)
!222 = !DILocalVariable(name: "c1", scope: !216, file: !3, line: 67, type: !12)
!223 = !DILocalVariable(name: "c2", scope: !216, file: !3, line: 67, type: !12)
!224 = !DILocation(line: 65, column: 28, scope: !216)
!225 = !DILocation(line: 65, column: 44, scope: !216)
!226 = !DILocation(line: 67, column: 2, scope: !216)
!227 = !DILocation(line: 67, column: 6, scope: !216)
!228 = !DILocation(line: 67, column: 10, scope: !216)
!229 = !DILocation(line: 69, column: 2, scope: !216)
!230 = !DILocation(line: 70, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !216, file: !3, line: 69, column: 5)
!232 = !DILocation(line: 70, column: 6, scope: !231)
!233 = !DILocation(line: 71, column: 8, scope: !231)
!234 = !DILocation(line: 71, column: 6, scope: !231)
!235 = !DILocation(line: 72, column: 2, scope: !231)
!236 = !DILocation(line: 72, column: 11, scope: !216)
!237 = !DILocation(line: 72, column: 17, scope: !216)
!238 = !DILocation(line: 72, column: 14, scope: !216)
!239 = !DILocation(line: 72, column: 20, scope: !216)
!240 = !DILocation(line: 72, column: 23, scope: !216)
!241 = !DILocation(line: 72, column: 26, scope: !216)
!242 = !DILocation(line: 0, scope: !216)
!243 = distinct !{!243, !229, !244, !193, !194}
!244 = !DILocation(line: 72, column: 30, scope: !216)
!245 = !DILocation(line: 73, column: 9, scope: !216)
!246 = !DILocation(line: 73, column: 14, scope: !216)
!247 = !DILocation(line: 73, column: 12, scope: !216)
!248 = !DILocation(line: 74, column: 1, scope: !216)
!249 = !DILocation(line: 73, column: 2, scope: !216)
!250 = distinct !DISubprogram(name: "strcpy", scope: !3, file: !3, line: 79, type: !251, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{!18, !18, !141}
!253 = !{!254, !255, !256}
!254 = !DILocalVariable(name: "dest", arg: 1, scope: !250, file: !3, line: 79, type: !18)
!255 = !DILocalVariable(name: "src", arg: 2, scope: !250, file: !3, line: 79, type: !141)
!256 = !DILocalVariable(name: "tmp", scope: !250, file: !3, line: 81, type: !18)
!257 = !DILocation(line: 79, column: 20, scope: !250)
!258 = !DILocation(line: 79, column: 38, scope: !250)
!259 = !DILocation(line: 81, column: 2, scope: !250)
!260 = !DILocation(line: 81, column: 8, scope: !250)
!261 = !DILocation(line: 81, column: 14, scope: !250)
!262 = !DILocation(line: 83, column: 2, scope: !250)
!263 = !DILocation(line: 83, column: 24, scope: !250)
!264 = !DILocation(line: 83, column: 20, scope: !250)
!265 = !DILocation(line: 83, column: 15, scope: !250)
!266 = !DILocation(line: 83, column: 18, scope: !250)
!267 = !DILocation(line: 83, column: 9, scope: !250)
!268 = !DILocation(line: 83, column: 28, scope: !250)
!269 = distinct !{!269, !262, !270, !193, !194}
!270 = !DILocation(line: 84, column: 16, scope: !250)
!271 = !DILocation(line: 85, column: 9, scope: !250)
!272 = !DILocation(line: 86, column: 1, scope: !250)
!273 = !DILocation(line: 85, column: 2, scope: !250)
!274 = distinct !DISubprogram(name: "strncpy", scope: !3, file: !3, line: 91, type: !275, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!18, !18, !141, !27}
!277 = !{!278, !279, !280, !281}
!278 = !DILocalVariable(name: "dest", arg: 1, scope: !274, file: !3, line: 91, type: !18)
!279 = !DILocalVariable(name: "src", arg: 2, scope: !274, file: !3, line: 91, type: !141)
!280 = !DILocalVariable(name: "count", arg: 3, scope: !274, file: !3, line: 91, type: !27)
!281 = !DILocalVariable(name: "tmp", scope: !274, file: !3, line: 93, type: !18)
!282 = !DILocation(line: 91, column: 21, scope: !274)
!283 = !DILocation(line: 91, column: 39, scope: !274)
!284 = !DILocation(line: 91, column: 51, scope: !274)
!285 = !DILocation(line: 93, column: 2, scope: !274)
!286 = !DILocation(line: 93, column: 8, scope: !274)
!287 = !DILocation(line: 93, column: 14, scope: !274)
!288 = !DILocation(line: 95, column: 2, scope: !274)
!289 = !DILocation(line: 95, column: 9, scope: !274)
!290 = !DILocation(line: 96, column: 16, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !3, line: 96, column: 7)
!292 = distinct !DILexicalBlock(scope: !274, file: !3, line: 95, column: 16)
!293 = !DILocation(line: 96, column: 15, scope: !291)
!294 = !DILocation(line: 96, column: 9, scope: !291)
!295 = !DILocation(line: 96, column: 13, scope: !291)
!296 = !DILocation(line: 96, column: 7, scope: !291)
!297 = !DILocation(line: 96, column: 21, scope: !291)
!298 = !DILocation(line: 96, column: 7, scope: !292)
!299 = !DILocation(line: 97, column: 7, scope: !291)
!300 = !DILocation(line: 97, column: 4, scope: !291)
!301 = !DILocation(line: 98, column: 6, scope: !292)
!302 = !DILocation(line: 99, column: 8, scope: !292)
!303 = distinct !{!303, !288, !304, !193, !194}
!304 = !DILocation(line: 100, column: 2, scope: !274)
!305 = !DILocation(line: 101, column: 9, scope: !274)
!306 = !DILocation(line: 102, column: 1, scope: !274)
!307 = !DILocation(line: 101, column: 2, scope: !274)
!308 = distinct !DISubprogram(name: "strlcpy", scope: !3, file: !3, line: 107, type: !309, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!27, !18, !141, !27}
!311 = !{!312, !313, !314, !315, !316}
!312 = !DILocalVariable(name: "dest", arg: 1, scope: !308, file: !3, line: 107, type: !18)
!313 = !DILocalVariable(name: "src", arg: 2, scope: !308, file: !3, line: 107, type: !141)
!314 = !DILocalVariable(name: "size", arg: 3, scope: !308, file: !3, line: 107, type: !27)
!315 = !DILocalVariable(name: "ret", scope: !308, file: !3, line: 109, type: !27)
!316 = !DILocalVariable(name: "len", scope: !317, file: !3, line: 112, type: !27)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 111, column: 12)
!318 = distinct !DILexicalBlock(scope: !308, file: !3, line: 111, column: 6)
!319 = !DILocation(line: 107, column: 22, scope: !308)
!320 = !DILocation(line: 107, column: 40, scope: !308)
!321 = !DILocation(line: 107, column: 52, scope: !308)
!322 = !DILocation(line: 109, column: 2, scope: !308)
!323 = !DILocation(line: 109, column: 9, scope: !308)
!324 = !DILocation(line: 109, column: 22, scope: !308)
!325 = !DILocation(line: 109, column: 15, scope: !308)
!326 = !DILocation(line: 111, column: 6, scope: !318)
!327 = !DILocation(line: 111, column: 6, scope: !308)
!328 = !DILocation(line: 112, column: 3, scope: !317)
!329 = !DILocation(line: 112, column: 10, scope: !317)
!330 = !DILocation(line: 112, column: 17, scope: !317)
!331 = !DILocation(line: 112, column: 24, scope: !317)
!332 = !DILocation(line: 112, column: 21, scope: !317)
!333 = !DILocation(line: 112, column: 16, scope: !317)
!334 = !DILocation(line: 112, column: 32, scope: !317)
!335 = !DILocation(line: 112, column: 37, scope: !317)
!336 = !DILocation(line: 112, column: 43, scope: !317)
!337 = !DILocation(line: 113, column: 20, scope: !317)
!338 = !DILocation(line: 113, column: 26, scope: !317)
!339 = !DILocation(line: 113, column: 31, scope: !317)
!340 = !DILocation(line: 113, column: 3, scope: !317)
!341 = !DILocation(line: 114, column: 3, scope: !317)
!342 = !DILocation(line: 114, column: 8, scope: !317)
!343 = !DILocation(line: 114, column: 13, scope: !317)
!344 = !DILocation(line: 115, column: 2, scope: !318)
!345 = !DILocation(line: 115, column: 2, scope: !317)
!346 = !DILocation(line: 116, column: 9, scope: !308)
!347 = !DILocation(line: 117, column: 1, scope: !308)
!348 = !DILocation(line: 116, column: 2, scope: !308)
!349 = distinct !DISubprogram(name: "strlen", scope: !3, file: !3, line: 414, type: !350, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!27, !141}
!352 = !{!353, !354}
!353 = !DILocalVariable(name: "s", arg: 1, scope: !349, file: !3, line: 414, type: !141)
!354 = !DILocalVariable(name: "sc", scope: !349, file: !3, line: 416, type: !141)
!355 = !DILocation(line: 414, column: 27, scope: !349)
!356 = !DILocation(line: 416, column: 2, scope: !349)
!357 = !DILocation(line: 416, column: 14, scope: !349)
!358 = !DILocation(line: 418, column: 12, scope: !359)
!359 = distinct !DILexicalBlock(scope: !349, file: !3, line: 418, column: 2)
!360 = !DILocation(line: 418, column: 10, scope: !359)
!361 = !DILocation(line: 418, column: 7, scope: !359)
!362 = !DILocation(line: 418, column: 16, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 418, column: 2)
!364 = !DILocation(line: 418, column: 15, scope: !363)
!365 = !DILocation(line: 418, column: 19, scope: !363)
!366 = !DILocation(line: 418, column: 2, scope: !359)
!367 = !DILocation(line: 418, column: 28, scope: !363)
!368 = !DILocation(line: 418, column: 2, scope: !363)
!369 = distinct !{!369, !366, !370, !193, !194}
!370 = !DILocation(line: 419, column: 16, scope: !359)
!371 = !DILocation(line: 420, column: 9, scope: !349)
!372 = !DILocation(line: 420, column: 14, scope: !349)
!373 = !DILocation(line: 420, column: 12, scope: !349)
!374 = !DILocation(line: 421, column: 1, scope: !349)
!375 = !DILocation(line: 420, column: 2, scope: !349)
!376 = distinct !DISubprogram(name: "strscpy", scope: !3, file: !3, line: 122, type: !377, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !18, !141, !27}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !30, line: 73, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !30, line: 15, baseType: !14)
!382 = !{!383, !384, !385, !386, !393, !394, !395, !398, !401, !404, !406, !407}
!383 = !DILocalVariable(name: "dest", arg: 1, scope: !376, file: !3, line: 122, type: !18)
!384 = !DILocalVariable(name: "src", arg: 2, scope: !376, file: !3, line: 122, type: !141)
!385 = !DILocalVariable(name: "count", arg: 3, scope: !376, file: !3, line: 122, type: !27)
!386 = !DILocalVariable(name: "constants", scope: !376, file: !3, line: 124, type: !387)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_at_a_time", file: !389, line: 14, size: 128, elements: !390)
!389 = !DIFile(filename: "./arch/x86/include/asm/word-at-a-time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9ff3ba13b74d134be400adb436d72b7")
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "one_bits", scope: !388, file: !389, line: 15, baseType: !46, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "high_bits", scope: !388, file: !389, line: 15, baseType: !46, size: 64, offset: 64)
!393 = !DILocalVariable(name: "max", scope: !376, file: !3, line: 125, type: !27)
!394 = !DILocalVariable(name: "res", scope: !376, file: !3, line: 126, type: !14)
!395 = !DILocalVariable(name: "__ret_warn_on", scope: !396, file: !3, line: 128, type: !12)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 128, column: 20)
!397 = distinct !DILexicalBlock(scope: !376, file: !3, line: 128, column: 6)
!398 = !DILocalVariable(name: "__flags", scope: !399, file: !3, line: 128, type: !12)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 128, column: 20)
!400 = distinct !DILexicalBlock(scope: !396, file: !3, line: 128, column: 20)
!401 = !DILocalVariable(name: "limit", scope: !402, file: !3, line: 137, type: !27)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 136, column: 38)
!403 = distinct !DILexicalBlock(scope: !376, file: !3, line: 136, column: 6)
!404 = !DILocalVariable(name: "c", scope: !405, file: !3, line: 156, type: !16)
!405 = distinct !DILexicalBlock(scope: !376, file: !3, line: 155, column: 39)
!406 = !DILocalVariable(name: "data", scope: !405, file: !3, line: 156, type: !16)
!407 = !DILocalVariable(name: "c", scope: !408, file: !3, line: 172, type: !17)
!408 = distinct !DILexicalBlock(scope: !376, file: !3, line: 171, column: 16)
!409 = !DILocation(line: 122, column: 23, scope: !376)
!410 = !DILocation(line: 122, column: 41, scope: !376)
!411 = !DILocation(line: 122, column: 53, scope: !376)
!412 = !DILocation(line: 124, column: 2, scope: !376)
!413 = !DILocation(line: 124, column: 30, scope: !376)
!414 = !DILocation(line: 125, column: 2, scope: !376)
!415 = !DILocation(line: 125, column: 9, scope: !376)
!416 = !DILocation(line: 125, column: 15, scope: !376)
!417 = !DILocation(line: 126, column: 2, scope: !376)
!418 = !DILocation(line: 126, column: 7, scope: !376)
!419 = !DILocation(line: 128, column: 6, scope: !397)
!420 = !DILocation(line: 128, column: 12, scope: !397)
!421 = !DILocation(line: 128, column: 17, scope: !397)
!422 = !DILocation(line: 128, column: 20, scope: !396)
!423 = !DILocation(line: 128, column: 20, scope: !400)
!424 = !DILocation(line: 128, column: 20, scope: !399)
!425 = !DILocation(line: 128, column: 20, scope: !426)
!426 = distinct !DILexicalBlock(scope: !399, file: !3, line: 128, column: 20)
!427 = !DILocation(line: 128, column: 20, scope: !428)
!428 = distinct !DILexicalBlock(scope: !399, file: !3, line: 128, column: 20)
!429 = !{i64 2151461094, i64 2151461123, i64 2151461169, i64 2151461227, i64 2151461281, i64 2151461335, i64 2151461390, i64 2151461421, i64 2151461729, i64 2151461735, i64 2151461782, i64 2151461805, i64 2151461831}
!430 = !DILocation(line: 128, column: 20, scope: !431)
!431 = distinct !DILexicalBlock(scope: !399, file: !3, line: 128, column: 20)
!432 = !DILocation(line: 128, column: 20, scope: !397)
!433 = !DILocation(line: 128, column: 6, scope: !376)
!434 = !DILocation(line: 129, column: 3, scope: !397)
!435 = !DILocation(line: 136, column: 12, scope: !403)
!436 = !DILocation(line: 136, column: 6, scope: !403)
!437 = !DILocation(line: 136, column: 16, scope: !403)
!438 = !DILocation(line: 136, column: 6, scope: !376)
!439 = !DILocation(line: 137, column: 3, scope: !402)
!440 = !DILocation(line: 137, column: 10, scope: !402)
!441 = !DILocation(line: 137, column: 37, scope: !402)
!442 = !DILocation(line: 137, column: 31, scope: !402)
!443 = !DILocation(line: 137, column: 41, scope: !402)
!444 = !DILocation(line: 137, column: 28, scope: !402)
!445 = !DILocation(line: 138, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !402, file: !3, line: 138, column: 7)
!447 = !DILocation(line: 138, column: 15, scope: !446)
!448 = !DILocation(line: 138, column: 13, scope: !446)
!449 = !DILocation(line: 138, column: 7, scope: !402)
!450 = !DILocation(line: 139, column: 10, scope: !446)
!451 = !DILocation(line: 139, column: 8, scope: !446)
!452 = !DILocation(line: 139, column: 4, scope: !446)
!453 = !DILocation(line: 140, column: 2, scope: !403)
!454 = !DILocation(line: 140, column: 2, scope: !402)
!455 = !DILocation(line: 155, column: 2, scope: !376)
!456 = !DILocation(line: 155, column: 9, scope: !376)
!457 = !DILocation(line: 155, column: 13, scope: !376)
!458 = !DILocation(line: 156, column: 3, scope: !405)
!459 = !DILocation(line: 156, column: 17, scope: !405)
!460 = !DILocation(line: 156, column: 20, scope: !405)
!461 = !DILocation(line: 158, column: 27, scope: !405)
!462 = !DILocation(line: 158, column: 31, scope: !405)
!463 = !DILocation(line: 158, column: 30, scope: !405)
!464 = !DILocation(line: 158, column: 7, scope: !405)
!465 = !DILocation(line: 158, column: 5, scope: !405)
!466 = !DILocation(line: 159, column: 16, scope: !467)
!467 = distinct !DILexicalBlock(scope: !405, file: !3, line: 159, column: 7)
!468 = !DILocation(line: 159, column: 7, scope: !467)
!469 = !DILocation(line: 159, column: 7, scope: !405)
!470 = !DILocation(line: 160, column: 26, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !3, line: 159, column: 39)
!472 = !DILocation(line: 160, column: 29, scope: !471)
!473 = !DILocation(line: 160, column: 11, scope: !471)
!474 = !DILocation(line: 160, column: 9, scope: !471)
!475 = !DILocation(line: 161, column: 28, scope: !471)
!476 = !DILocation(line: 161, column: 11, scope: !471)
!477 = !DILocation(line: 161, column: 9, scope: !471)
!478 = !DILocation(line: 162, column: 35, scope: !471)
!479 = !DILocation(line: 162, column: 39, scope: !471)
!480 = !DILocation(line: 162, column: 37, scope: !471)
!481 = !DILocation(line: 162, column: 23, scope: !471)
!482 = !DILocation(line: 162, column: 28, scope: !471)
!483 = !DILocation(line: 162, column: 27, scope: !471)
!484 = !DILocation(line: 162, column: 33, scope: !471)
!485 = !DILocation(line: 163, column: 11, scope: !471)
!486 = !DILocation(line: 163, column: 27, scope: !471)
!487 = !DILocation(line: 163, column: 17, scope: !471)
!488 = !DILocation(line: 163, column: 15, scope: !471)
!489 = !DILocation(line: 163, column: 4, scope: !471)
!490 = !DILocation(line: 165, column: 34, scope: !405)
!491 = !DILocation(line: 165, column: 22, scope: !405)
!492 = !DILocation(line: 165, column: 27, scope: !405)
!493 = !DILocation(line: 165, column: 26, scope: !405)
!494 = !DILocation(line: 165, column: 32, scope: !405)
!495 = !DILocation(line: 166, column: 7, scope: !405)
!496 = !DILocation(line: 167, column: 9, scope: !405)
!497 = !DILocation(line: 168, column: 7, scope: !405)
!498 = !DILocation(line: 169, column: 2, scope: !376)
!499 = distinct !{!499, !455, !498, !193, !194}
!500 = !DILocation(line: 171, column: 2, scope: !376)
!501 = !DILocation(line: 171, column: 9, scope: !376)
!502 = !DILocation(line: 172, column: 3, scope: !408)
!503 = !DILocation(line: 172, column: 8, scope: !408)
!504 = !DILocation(line: 174, column: 7, scope: !408)
!505 = !DILocation(line: 174, column: 11, scope: !408)
!506 = !DILocation(line: 174, column: 5, scope: !408)
!507 = !DILocation(line: 175, column: 15, scope: !408)
!508 = !DILocation(line: 175, column: 3, scope: !408)
!509 = !DILocation(line: 175, column: 8, scope: !408)
!510 = !DILocation(line: 175, column: 13, scope: !408)
!511 = !DILocation(line: 176, column: 8, scope: !512)
!512 = distinct !DILexicalBlock(scope: !408, file: !3, line: 176, column: 7)
!513 = !DILocation(line: 176, column: 7, scope: !408)
!514 = !DILocation(line: 177, column: 11, scope: !512)
!515 = !DILocation(line: 177, column: 4, scope: !512)
!516 = !DILocation(line: 178, column: 6, scope: !408)
!517 = !DILocation(line: 179, column: 8, scope: !408)
!518 = !DILocation(line: 180, column: 2, scope: !376)
!519 = distinct !{!519, !500, !518, !193, !194}
!520 = !DILocation(line: 183, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !376, file: !3, line: 183, column: 6)
!522 = !DILocation(line: 183, column: 6, scope: !376)
!523 = !DILocation(line: 184, column: 3, scope: !521)
!524 = !DILocation(line: 184, column: 8, scope: !521)
!525 = !DILocation(line: 184, column: 11, scope: !521)
!526 = !DILocation(line: 184, column: 15, scope: !521)
!527 = !DILocation(line: 186, column: 2, scope: !376)
!528 = !DILocation(line: 187, column: 1, scope: !376)
!529 = distinct !DISubprogram(name: "read_word_at_a_time", scope: !530, file: !530, line: 83, type: !531, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!530 = !DIFile(filename: "./include/asm-generic/rwonce.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58a03ecb2752a04ef9d857f8e36ba5d6")
!531 = !DISubroutineType(types: !532)
!532 = !{!16, !25}
!533 = !{!534}
!534 = !DILocalVariable(name: "addr", arg: 1, scope: !529, file: !530, line: 83, type: !25)
!535 = !DILocation(line: 83, column: 47, scope: !529)
!536 = !DILocation(line: 85, column: 19, scope: !529)
!537 = !DILocation(line: 85, column: 2, scope: !529)
!538 = !DILocation(line: 86, column: 27, scope: !529)
!539 = !DILocation(line: 86, column: 9, scope: !529)
!540 = !DILocation(line: 86, column: 2, scope: !529)
!541 = distinct !DISubprogram(name: "has_zero", scope: !389, file: !389, line: 47, type: !542, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!542 = !DISubroutineType(types: !543)
!543 = !{!16, !16, !15, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!545 = !{!546, !547, !548, !549}
!546 = !DILocalVariable(name: "a", arg: 1, scope: !541, file: !389, line: 47, type: !16)
!547 = !DILocalVariable(name: "bits", arg: 2, scope: !541, file: !389, line: 47, type: !15)
!548 = !DILocalVariable(name: "c", arg: 3, scope: !541, file: !389, line: 47, type: !544)
!549 = !DILocalVariable(name: "mask", scope: !541, file: !389, line: 49, type: !16)
!550 = !DILocation(line: 47, column: 52, scope: !541)
!551 = !DILocation(line: 47, column: 70, scope: !541)
!552 = !DILocation(line: 47, column: 105, scope: !541)
!553 = !DILocation(line: 49, column: 2, scope: !541)
!554 = !DILocation(line: 49, column: 16, scope: !541)
!555 = !DILocation(line: 49, column: 25, scope: !541)
!556 = !DILocation(line: 49, column: 29, scope: !541)
!557 = !DILocation(line: 49, column: 32, scope: !541)
!558 = !DILocation(line: 49, column: 27, scope: !541)
!559 = !DILocation(line: 49, column: 45, scope: !541)
!560 = !DILocation(line: 49, column: 44, scope: !541)
!561 = !DILocation(line: 49, column: 42, scope: !541)
!562 = !DILocation(line: 49, column: 50, scope: !541)
!563 = !DILocation(line: 49, column: 53, scope: !541)
!564 = !DILocation(line: 49, column: 48, scope: !541)
!565 = !DILocation(line: 50, column: 10, scope: !541)
!566 = !DILocation(line: 50, column: 3, scope: !541)
!567 = !DILocation(line: 50, column: 8, scope: !541)
!568 = !DILocation(line: 51, column: 9, scope: !541)
!569 = !DILocation(line: 52, column: 1, scope: !541)
!570 = !DILocation(line: 51, column: 2, scope: !541)
!571 = distinct !DISubprogram(name: "prep_zero_mask", scope: !389, file: !389, line: 54, type: !572, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!16, !16, !16, !544}
!574 = !{!575, !576, !577}
!575 = !DILocalVariable(name: "a", arg: 1, scope: !571, file: !389, line: 54, type: !16)
!576 = !DILocalVariable(name: "bits", arg: 2, scope: !571, file: !389, line: 54, type: !16)
!577 = !DILocalVariable(name: "c", arg: 3, scope: !571, file: !389, line: 54, type: !544)
!578 = !DILocation(line: 54, column: 58, scope: !571)
!579 = !DILocation(line: 54, column: 75, scope: !571)
!580 = !DILocation(line: 54, column: 110, scope: !571)
!581 = !DILocation(line: 56, column: 9, scope: !571)
!582 = !DILocation(line: 56, column: 2, scope: !571)
!583 = distinct !DISubprogram(name: "create_zero_mask", scope: !389, file: !389, line: 59, type: !584, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{!16, !16}
!586 = !{!587}
!587 = !DILocalVariable(name: "bits", arg: 1, scope: !583, file: !389, line: 59, type: !16)
!588 = !DILocation(line: 59, column: 60, scope: !583)
!589 = !DILocation(line: 61, column: 10, scope: !583)
!590 = !DILocation(line: 61, column: 15, scope: !583)
!591 = !DILocation(line: 61, column: 23, scope: !583)
!592 = !DILocation(line: 61, column: 22, scope: !583)
!593 = !DILocation(line: 61, column: 20, scope: !583)
!594 = !DILocation(line: 61, column: 7, scope: !583)
!595 = !DILocation(line: 62, column: 9, scope: !583)
!596 = !DILocation(line: 62, column: 14, scope: !583)
!597 = !DILocation(line: 62, column: 2, scope: !583)
!598 = distinct !DISubprogram(name: "find_zero", scope: !389, file: !389, line: 68, type: !584, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!599 = !{!600}
!600 = !DILocalVariable(name: "mask", arg: 1, scope: !598, file: !389, line: 68, type: !16)
!601 = !DILocation(line: 68, column: 53, scope: !598)
!602 = !DILocation(line: 70, column: 28, scope: !598)
!603 = !DILocation(line: 70, column: 9, scope: !598)
!604 = !DILocation(line: 70, column: 2, scope: !598)
!605 = distinct !DISubprogram(name: "stpcpy", scope: !3, file: !3, line: 207, type: !606, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!606 = !DISubroutineType(types: !607)
!607 = !{!18, !608, !609}
!608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!610 = !{!611, !612}
!611 = !DILocalVariable(name: "dest", arg: 1, scope: !605, file: !3, line: 207, type: !608)
!612 = !DILocalVariable(name: "src", arg: 2, scope: !605, file: !3, line: 207, type: !609)
!613 = !DILocation(line: 207, column: 33, scope: !605)
!614 = !DILocation(line: 207, column: 64, scope: !605)
!615 = !DILocation(line: 209, column: 2, scope: !605)
!616 = !DILocation(line: 209, column: 24, scope: !605)
!617 = !DILocation(line: 209, column: 20, scope: !605)
!618 = !DILocation(line: 209, column: 15, scope: !605)
!619 = !DILocation(line: 209, column: 18, scope: !605)
!620 = !DILocation(line: 209, column: 9, scope: !605)
!621 = !DILocation(line: 209, column: 28, scope: !605)
!622 = distinct !{!622, !615, !623, !193, !194}
!623 = !DILocation(line: 210, column: 16, scope: !605)
!624 = !DILocation(line: 211, column: 9, scope: !605)
!625 = !DILocation(line: 211, column: 2, scope: !605)
!626 = distinct !DISubprogram(name: "strcat", scope: !3, file: !3, line: 216, type: !251, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!627 = !{!628, !629, !630}
!628 = !DILocalVariable(name: "dest", arg: 1, scope: !626, file: !3, line: 216, type: !18)
!629 = !DILocalVariable(name: "src", arg: 2, scope: !626, file: !3, line: 216, type: !141)
!630 = !DILocalVariable(name: "tmp", scope: !626, file: !3, line: 218, type: !18)
!631 = !DILocation(line: 216, column: 20, scope: !626)
!632 = !DILocation(line: 216, column: 38, scope: !626)
!633 = !DILocation(line: 218, column: 2, scope: !626)
!634 = !DILocation(line: 218, column: 8, scope: !626)
!635 = !DILocation(line: 218, column: 14, scope: !626)
!636 = !DILocation(line: 220, column: 2, scope: !626)
!637 = !DILocation(line: 220, column: 10, scope: !626)
!638 = !DILocation(line: 220, column: 9, scope: !626)
!639 = !DILocation(line: 221, column: 7, scope: !626)
!640 = distinct !{!640, !636, !639, !193, !194}
!641 = !DILocation(line: 222, column: 2, scope: !626)
!642 = !DILocation(line: 222, column: 24, scope: !626)
!643 = !DILocation(line: 222, column: 20, scope: !626)
!644 = !DILocation(line: 222, column: 15, scope: !626)
!645 = !DILocation(line: 222, column: 18, scope: !626)
!646 = !DILocation(line: 222, column: 9, scope: !626)
!647 = !DILocation(line: 222, column: 28, scope: !626)
!648 = distinct !{!648, !641, !649, !193, !194}
!649 = !DILocation(line: 223, column: 3, scope: !626)
!650 = !DILocation(line: 224, column: 9, scope: !626)
!651 = !DILocation(line: 225, column: 1, scope: !626)
!652 = !DILocation(line: 224, column: 2, scope: !626)
!653 = distinct !DISubprogram(name: "strncat", scope: !3, file: !3, line: 230, type: !275, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!654 = !{!655, !656, !657, !658}
!655 = !DILocalVariable(name: "dest", arg: 1, scope: !653, file: !3, line: 230, type: !18)
!656 = !DILocalVariable(name: "src", arg: 2, scope: !653, file: !3, line: 230, type: !141)
!657 = !DILocalVariable(name: "count", arg: 3, scope: !653, file: !3, line: 230, type: !27)
!658 = !DILocalVariable(name: "tmp", scope: !653, file: !3, line: 232, type: !18)
!659 = !DILocation(line: 230, column: 21, scope: !653)
!660 = !DILocation(line: 230, column: 39, scope: !653)
!661 = !DILocation(line: 230, column: 51, scope: !653)
!662 = !DILocation(line: 232, column: 2, scope: !653)
!663 = !DILocation(line: 232, column: 8, scope: !653)
!664 = !DILocation(line: 232, column: 14, scope: !653)
!665 = !DILocation(line: 234, column: 6, scope: !666)
!666 = distinct !DILexicalBlock(scope: !653, file: !3, line: 234, column: 6)
!667 = !DILocation(line: 234, column: 6, scope: !653)
!668 = !DILocation(line: 235, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !666, file: !3, line: 234, column: 13)
!670 = !DILocation(line: 235, column: 11, scope: !669)
!671 = !DILocation(line: 235, column: 10, scope: !669)
!672 = !DILocation(line: 236, column: 8, scope: !669)
!673 = distinct !{!673, !668, !672, !193, !194}
!674 = !DILocation(line: 237, column: 3, scope: !669)
!675 = !DILocation(line: 237, column: 25, scope: !669)
!676 = !DILocation(line: 237, column: 21, scope: !669)
!677 = !DILocation(line: 237, column: 16, scope: !669)
!678 = !DILocation(line: 237, column: 19, scope: !669)
!679 = !DILocation(line: 237, column: 10, scope: !669)
!680 = !DILocation(line: 237, column: 29, scope: !669)
!681 = !DILocation(line: 238, column: 8, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 238, column: 8)
!683 = distinct !DILexicalBlock(scope: !669, file: !3, line: 237, column: 35)
!684 = !DILocation(line: 238, column: 16, scope: !682)
!685 = !DILocation(line: 238, column: 8, scope: !683)
!686 = !DILocation(line: 239, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !3, line: 238, column: 22)
!688 = !DILocation(line: 239, column: 11, scope: !687)
!689 = !DILocation(line: 240, column: 5, scope: !687)
!690 = distinct !{!690, !674, !691, !193, !194}
!691 = !DILocation(line: 242, column: 3, scope: !669)
!692 = !DILocation(line: 243, column: 2, scope: !669)
!693 = !DILocation(line: 244, column: 9, scope: !653)
!694 = !DILocation(line: 245, column: 1, scope: !653)
!695 = !DILocation(line: 244, column: 2, scope: !653)
!696 = distinct !DISubprogram(name: "strlcat", scope: !3, file: !3, line: 250, type: !309, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!697 = !{!698, !699, !700, !701, !702, !703}
!698 = !DILocalVariable(name: "dest", arg: 1, scope: !696, file: !3, line: 250, type: !18)
!699 = !DILocalVariable(name: "src", arg: 2, scope: !696, file: !3, line: 250, type: !141)
!700 = !DILocalVariable(name: "count", arg: 3, scope: !696, file: !3, line: 250, type: !27)
!701 = !DILocalVariable(name: "dsize", scope: !696, file: !3, line: 252, type: !27)
!702 = !DILocalVariable(name: "len", scope: !696, file: !3, line: 253, type: !27)
!703 = !DILocalVariable(name: "res", scope: !696, file: !3, line: 254, type: !27)
!704 = !DILocation(line: 250, column: 22, scope: !696)
!705 = !DILocation(line: 250, column: 40, scope: !696)
!706 = !DILocation(line: 250, column: 52, scope: !696)
!707 = !DILocation(line: 252, column: 2, scope: !696)
!708 = !DILocation(line: 252, column: 9, scope: !696)
!709 = !DILocation(line: 252, column: 24, scope: !696)
!710 = !DILocation(line: 252, column: 17, scope: !696)
!711 = !DILocation(line: 253, column: 2, scope: !696)
!712 = !DILocation(line: 253, column: 9, scope: !696)
!713 = !DILocation(line: 253, column: 22, scope: !696)
!714 = !DILocation(line: 253, column: 15, scope: !696)
!715 = !DILocation(line: 254, column: 2, scope: !696)
!716 = !DILocation(line: 254, column: 9, scope: !696)
!717 = !DILocation(line: 254, column: 15, scope: !696)
!718 = !DILocation(line: 254, column: 23, scope: !696)
!719 = !DILocation(line: 254, column: 21, scope: !696)
!720 = !DILocation(line: 257, column: 2, scope: !696)
!721 = !DILocation(line: 257, column: 2, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 257, column: 2)
!723 = distinct !DILexicalBlock(scope: !696, file: !3, line: 257, column: 2)
!724 = !DILocation(line: 257, column: 2, scope: !723)
!725 = !DILocation(line: 257, column: 2, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !3, line: 257, column: 2)
!727 = !DILocation(line: 257, column: 2, scope: !728)
!728 = distinct !DILexicalBlock(scope: !726, file: !3, line: 257, column: 2)
!729 = !DILocation(line: 257, column: 2, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !3, line: 257, column: 2)
!731 = !{i64 2151473223, i64 2151473252, i64 2151473298, i64 2151473356, i64 2151473410, i64 2151473464, i64 2151473519, i64 2151473550}
!732 = !DILocation(line: 259, column: 10, scope: !696)
!733 = !DILocation(line: 259, column: 7, scope: !696)
!734 = !DILocation(line: 260, column: 11, scope: !696)
!735 = !DILocation(line: 260, column: 8, scope: !696)
!736 = !DILocation(line: 261, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !696, file: !3, line: 261, column: 6)
!738 = !DILocation(line: 261, column: 13, scope: !737)
!739 = !DILocation(line: 261, column: 10, scope: !737)
!740 = !DILocation(line: 261, column: 6, scope: !696)
!741 = !DILocation(line: 262, column: 9, scope: !737)
!742 = !DILocation(line: 262, column: 14, scope: !737)
!743 = !DILocation(line: 262, column: 7, scope: !737)
!744 = !DILocation(line: 262, column: 3, scope: !737)
!745 = !DILocation(line: 263, column: 19, scope: !696)
!746 = !DILocation(line: 263, column: 25, scope: !696)
!747 = !DILocation(line: 263, column: 30, scope: !696)
!748 = !DILocation(line: 263, column: 2, scope: !696)
!749 = !DILocation(line: 264, column: 2, scope: !696)
!750 = !DILocation(line: 264, column: 7, scope: !696)
!751 = !DILocation(line: 264, column: 12, scope: !696)
!752 = !DILocation(line: 265, column: 9, scope: !696)
!753 = !DILocation(line: 266, column: 1, scope: !696)
!754 = !DILocation(line: 265, column: 2, scope: !696)
!755 = distinct !DISubprogram(name: "strcmp", scope: !3, file: !3, line: 276, type: !217, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!756 = !{!757, !758, !759, !760}
!757 = !DILocalVariable(name: "cs", arg: 1, scope: !755, file: !3, line: 276, type: !141)
!758 = !DILocalVariable(name: "ct", arg: 2, scope: !755, file: !3, line: 276, type: !141)
!759 = !DILocalVariable(name: "c1", scope: !755, file: !3, line: 278, type: !39)
!760 = !DILocalVariable(name: "c2", scope: !755, file: !3, line: 278, type: !39)
!761 = !DILocation(line: 276, column: 24, scope: !755)
!762 = !DILocation(line: 276, column: 40, scope: !755)
!763 = !DILocation(line: 278, column: 2, scope: !755)
!764 = !DILocation(line: 278, column: 16, scope: !755)
!765 = !DILocation(line: 278, column: 20, scope: !755)
!766 = !DILocation(line: 280, column: 2, scope: !755)
!767 = !DILocation(line: 281, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !755, file: !3, line: 280, column: 12)
!769 = !DILocation(line: 281, column: 8, scope: !768)
!770 = !DILocation(line: 281, column: 6, scope: !768)
!771 = !DILocation(line: 282, column: 11, scope: !768)
!772 = !DILocation(line: 282, column: 8, scope: !768)
!773 = !DILocation(line: 282, column: 6, scope: !768)
!774 = !DILocation(line: 283, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !768, file: !3, line: 283, column: 7)
!776 = !DILocation(line: 283, column: 13, scope: !775)
!777 = !DILocation(line: 283, column: 10, scope: !775)
!778 = !DILocation(line: 283, column: 7, scope: !768)
!779 = !DILocation(line: 284, column: 11, scope: !775)
!780 = !DILocation(line: 284, column: 16, scope: !775)
!781 = !DILocation(line: 284, column: 14, scope: !775)
!782 = !DILocation(line: 284, column: 4, scope: !775)
!783 = !DILocation(line: 285, column: 8, scope: !784)
!784 = distinct !DILexicalBlock(scope: !768, file: !3, line: 285, column: 7)
!785 = !DILocation(line: 285, column: 7, scope: !768)
!786 = !DILocation(line: 286, column: 4, scope: !784)
!787 = distinct !{!787, !766, !788, !194}
!788 = !DILocation(line: 287, column: 2, scope: !755)
!789 = !DILocation(line: 288, column: 2, scope: !755)
!790 = !DILocation(line: 289, column: 1, scope: !755)
!791 = distinct !DISubprogram(name: "strncmp", scope: !3, file: !3, line: 300, type: !139, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!792 = !{!793, !794, !795, !796, !797}
!793 = !DILocalVariable(name: "cs", arg: 1, scope: !791, file: !3, line: 300, type: !141)
!794 = !DILocalVariable(name: "ct", arg: 2, scope: !791, file: !3, line: 300, type: !141)
!795 = !DILocalVariable(name: "count", arg: 3, scope: !791, file: !3, line: 300, type: !27)
!796 = !DILocalVariable(name: "c1", scope: !791, file: !3, line: 302, type: !39)
!797 = !DILocalVariable(name: "c2", scope: !791, file: !3, line: 302, type: !39)
!798 = !DILocation(line: 300, column: 25, scope: !791)
!799 = !DILocation(line: 300, column: 41, scope: !791)
!800 = !DILocation(line: 300, column: 52, scope: !791)
!801 = !DILocation(line: 302, column: 2, scope: !791)
!802 = !DILocation(line: 302, column: 16, scope: !791)
!803 = !DILocation(line: 302, column: 20, scope: !791)
!804 = !DILocation(line: 304, column: 2, scope: !791)
!805 = !DILocation(line: 304, column: 9, scope: !791)
!806 = !DILocation(line: 305, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !791, file: !3, line: 304, column: 16)
!808 = !DILocation(line: 305, column: 8, scope: !807)
!809 = !DILocation(line: 305, column: 6, scope: !807)
!810 = !DILocation(line: 306, column: 11, scope: !807)
!811 = !DILocation(line: 306, column: 8, scope: !807)
!812 = !DILocation(line: 306, column: 6, scope: !807)
!813 = !DILocation(line: 307, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !807, file: !3, line: 307, column: 7)
!815 = !DILocation(line: 307, column: 13, scope: !814)
!816 = !DILocation(line: 307, column: 10, scope: !814)
!817 = !DILocation(line: 307, column: 7, scope: !807)
!818 = !DILocation(line: 308, column: 11, scope: !814)
!819 = !DILocation(line: 308, column: 16, scope: !814)
!820 = !DILocation(line: 308, column: 14, scope: !814)
!821 = !DILocation(line: 308, column: 4, scope: !814)
!822 = !DILocation(line: 309, column: 8, scope: !823)
!823 = distinct !DILexicalBlock(scope: !807, file: !3, line: 309, column: 7)
!824 = !DILocation(line: 309, column: 7, scope: !807)
!825 = !DILocation(line: 310, column: 4, scope: !823)
!826 = !DILocation(line: 311, column: 8, scope: !807)
!827 = distinct !{!827, !804, !828, !193, !194}
!828 = !DILocation(line: 312, column: 2, scope: !791)
!829 = !DILocation(line: 313, column: 2, scope: !791)
!830 = !DILocation(line: 314, column: 1, scope: !791)
!831 = distinct !DISubprogram(name: "strchr", scope: !3, file: !3, line: 327, type: !832, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{!18, !141, !12}
!834 = !{!835, !836}
!835 = !DILocalVariable(name: "s", arg: 1, scope: !831, file: !3, line: 327, type: !141)
!836 = !DILocalVariable(name: "c", arg: 2, scope: !831, file: !3, line: 327, type: !12)
!837 = !DILocation(line: 327, column: 26, scope: !831)
!838 = !DILocation(line: 327, column: 33, scope: !831)
!839 = !DILocation(line: 329, column: 2, scope: !831)
!840 = !DILocation(line: 329, column: 10, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 329, column: 2)
!842 = distinct !DILexicalBlock(scope: !831, file: !3, line: 329, column: 2)
!843 = !DILocation(line: 329, column: 9, scope: !841)
!844 = !DILocation(line: 329, column: 21, scope: !841)
!845 = !DILocation(line: 329, column: 15, scope: !841)
!846 = !DILocation(line: 329, column: 12, scope: !841)
!847 = !DILocation(line: 329, column: 2, scope: !842)
!848 = !DILocation(line: 330, column: 8, scope: !849)
!849 = distinct !DILexicalBlock(scope: !841, file: !3, line: 330, column: 7)
!850 = !DILocation(line: 330, column: 7, scope: !849)
!851 = !DILocation(line: 330, column: 10, scope: !849)
!852 = !DILocation(line: 330, column: 7, scope: !841)
!853 = !DILocation(line: 331, column: 4, scope: !849)
!854 = !DILocation(line: 330, column: 13, scope: !849)
!855 = !DILocation(line: 329, column: 24, scope: !841)
!856 = !DILocation(line: 329, column: 2, scope: !841)
!857 = distinct !{!857, !847, !858, !193, !194}
!858 = !DILocation(line: 331, column: 11, scope: !842)
!859 = !DILocation(line: 332, column: 17, scope: !831)
!860 = !DILocation(line: 332, column: 2, scope: !831)
!861 = !DILocation(line: 333, column: 1, scope: !831)
!862 = distinct !DISubprogram(name: "strchrnul", scope: !3, file: !3, line: 346, type: !832, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!863 = !{!864, !865}
!864 = !DILocalVariable(name: "s", arg: 1, scope: !862, file: !3, line: 346, type: !141)
!865 = !DILocalVariable(name: "c", arg: 2, scope: !862, file: !3, line: 346, type: !12)
!866 = !DILocation(line: 346, column: 29, scope: !862)
!867 = !DILocation(line: 346, column: 36, scope: !862)
!868 = !DILocation(line: 348, column: 2, scope: !862)
!869 = !DILocation(line: 348, column: 10, scope: !862)
!870 = !DILocation(line: 348, column: 9, scope: !862)
!871 = !DILocation(line: 348, column: 12, scope: !862)
!872 = !DILocation(line: 348, column: 16, scope: !862)
!873 = !DILocation(line: 348, column: 15, scope: !862)
!874 = !DILocation(line: 348, column: 27, scope: !862)
!875 = !DILocation(line: 348, column: 21, scope: !862)
!876 = !DILocation(line: 348, column: 18, scope: !862)
!877 = !DILocation(line: 0, scope: !862)
!878 = !DILocation(line: 349, column: 4, scope: !862)
!879 = distinct !{!879, !868, !878, !193, !194}
!880 = !DILocation(line: 350, column: 17, scope: !862)
!881 = !DILocation(line: 350, column: 2, scope: !862)
!882 = distinct !DISubprogram(name: "strnchrnul", scope: !3, file: !3, line: 365, type: !883, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!18, !141, !27, !12}
!885 = !{!886, !887, !888}
!886 = !DILocalVariable(name: "s", arg: 1, scope: !882, file: !3, line: 365, type: !141)
!887 = !DILocalVariable(name: "count", arg: 2, scope: !882, file: !3, line: 365, type: !27)
!888 = !DILocalVariable(name: "c", arg: 3, scope: !882, file: !3, line: 365, type: !12)
!889 = !DILocation(line: 365, column: 30, scope: !882)
!890 = !DILocation(line: 365, column: 40, scope: !882)
!891 = !DILocation(line: 365, column: 51, scope: !882)
!892 = !DILocation(line: 367, column: 2, scope: !882)
!893 = !DILocation(line: 367, column: 14, scope: !882)
!894 = !DILocation(line: 367, column: 17, scope: !882)
!895 = !DILocation(line: 367, column: 21, scope: !882)
!896 = !DILocation(line: 367, column: 20, scope: !882)
!897 = !DILocation(line: 367, column: 23, scope: !882)
!898 = !DILocation(line: 367, column: 27, scope: !882)
!899 = !DILocation(line: 367, column: 26, scope: !882)
!900 = !DILocation(line: 367, column: 38, scope: !882)
!901 = !DILocation(line: 367, column: 32, scope: !882)
!902 = !DILocation(line: 367, column: 29, scope: !882)
!903 = !DILocation(line: 0, scope: !882)
!904 = !DILocation(line: 368, column: 4, scope: !882)
!905 = distinct !{!905, !892, !904, !193, !194}
!906 = !DILocation(line: 369, column: 17, scope: !882)
!907 = !DILocation(line: 369, column: 2, scope: !882)
!908 = distinct !DISubprogram(name: "strrchr", scope: !3, file: !3, line: 378, type: !832, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!909 = !{!910, !911, !912}
!910 = !DILocalVariable(name: "s", arg: 1, scope: !908, file: !3, line: 378, type: !141)
!911 = !DILocalVariable(name: "c", arg: 2, scope: !908, file: !3, line: 378, type: !12)
!912 = !DILocalVariable(name: "last", scope: !908, file: !3, line: 380, type: !141)
!913 = !DILocation(line: 378, column: 27, scope: !908)
!914 = !DILocation(line: 378, column: 34, scope: !908)
!915 = !DILocation(line: 380, column: 2, scope: !908)
!916 = !DILocation(line: 380, column: 14, scope: !908)
!917 = !DILocation(line: 381, column: 2, scope: !908)
!918 = !DILocation(line: 382, column: 8, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 382, column: 7)
!920 = distinct !DILexicalBlock(scope: !908, file: !3, line: 381, column: 5)
!921 = !DILocation(line: 382, column: 7, scope: !919)
!922 = !DILocation(line: 382, column: 19, scope: !919)
!923 = !DILocation(line: 382, column: 13, scope: !919)
!924 = !DILocation(line: 382, column: 10, scope: !919)
!925 = !DILocation(line: 382, column: 7, scope: !920)
!926 = !DILocation(line: 383, column: 11, scope: !919)
!927 = !DILocation(line: 383, column: 9, scope: !919)
!928 = !DILocation(line: 383, column: 4, scope: !919)
!929 = !DILocation(line: 384, column: 2, scope: !920)
!930 = !DILocation(line: 384, column: 13, scope: !908)
!931 = !DILocation(line: 384, column: 11, scope: !908)
!932 = distinct !{!932, !917, !933, !193, !194}
!933 = !DILocation(line: 384, column: 15, scope: !908)
!934 = !DILocation(line: 385, column: 17, scope: !908)
!935 = !DILocation(line: 386, column: 1, scope: !908)
!936 = !DILocation(line: 385, column: 2, scope: !908)
!937 = distinct !DISubprogram(name: "strnchr", scope: !3, file: !3, line: 400, type: !883, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !938)
!938 = !{!939, !940, !941}
!939 = !DILocalVariable(name: "s", arg: 1, scope: !937, file: !3, line: 400, type: !141)
!940 = !DILocalVariable(name: "count", arg: 2, scope: !937, file: !3, line: 400, type: !27)
!941 = !DILocalVariable(name: "c", arg: 3, scope: !937, file: !3, line: 400, type: !12)
!942 = !DILocation(line: 400, column: 27, scope: !937)
!943 = !DILocation(line: 400, column: 37, scope: !937)
!944 = !DILocation(line: 400, column: 48, scope: !937)
!945 = !DILocation(line: 402, column: 2, scope: !937)
!946 = !DILocation(line: 402, column: 14, scope: !937)
!947 = !DILocation(line: 403, column: 8, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 403, column: 7)
!949 = distinct !DILexicalBlock(scope: !937, file: !3, line: 402, column: 18)
!950 = !DILocation(line: 403, column: 7, scope: !948)
!951 = !DILocation(line: 403, column: 19, scope: !948)
!952 = !DILocation(line: 403, column: 13, scope: !948)
!953 = !DILocation(line: 403, column: 10, scope: !948)
!954 = !DILocation(line: 403, column: 7, scope: !949)
!955 = !DILocation(line: 404, column: 19, scope: !948)
!956 = !DILocation(line: 404, column: 4, scope: !948)
!957 = !DILocation(line: 405, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !949, file: !3, line: 405, column: 7)
!959 = !DILocation(line: 405, column: 7, scope: !958)
!960 = !DILocation(line: 405, column: 12, scope: !958)
!961 = !DILocation(line: 405, column: 7, scope: !949)
!962 = !DILocation(line: 406, column: 4, scope: !958)
!963 = distinct !{!963, !945, !964, !193, !194}
!964 = !DILocation(line: 407, column: 2, scope: !937)
!965 = !DILocation(line: 408, column: 2, scope: !937)
!966 = !DILocation(line: 409, column: 1, scope: !937)
!967 = distinct !DISubprogram(name: "strnlen", scope: !3, file: !3, line: 426, type: !968, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!29, !141, !27}
!970 = !{!971, !972, !973}
!971 = !DILocalVariable(name: "s", arg: 1, scope: !967, file: !3, line: 426, type: !141)
!972 = !DILocalVariable(name: "count", arg: 2, scope: !967, file: !3, line: 426, type: !27)
!973 = !DILocalVariable(name: "sc", scope: !967, file: !3, line: 428, type: !141)
!974 = !DILocation(line: 426, column: 28, scope: !967)
!975 = !DILocation(line: 426, column: 38, scope: !967)
!976 = !DILocation(line: 428, column: 2, scope: !967)
!977 = !DILocation(line: 428, column: 14, scope: !967)
!978 = !DILocation(line: 430, column: 12, scope: !979)
!979 = distinct !DILexicalBlock(scope: !967, file: !3, line: 430, column: 2)
!980 = !DILocation(line: 430, column: 10, scope: !979)
!981 = !DILocation(line: 430, column: 7, scope: !979)
!982 = !DILocation(line: 430, column: 20, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !3, line: 430, column: 2)
!984 = !DILocation(line: 430, column: 23, scope: !983)
!985 = !DILocation(line: 430, column: 27, scope: !983)
!986 = !DILocation(line: 430, column: 26, scope: !983)
!987 = !DILocation(line: 430, column: 30, scope: !983)
!988 = !DILocation(line: 0, scope: !983)
!989 = !DILocation(line: 430, column: 2, scope: !979)
!990 = !DILocation(line: 430, column: 39, scope: !983)
!991 = !DILocation(line: 430, column: 2, scope: !983)
!992 = distinct !{!992, !989, !993, !193, !194}
!993 = !DILocation(line: 431, column: 16, scope: !979)
!994 = !DILocation(line: 432, column: 9, scope: !967)
!995 = !DILocation(line: 432, column: 14, scope: !967)
!996 = !DILocation(line: 432, column: 12, scope: !967)
!997 = !DILocation(line: 433, column: 1, scope: !967)
!998 = !DILocation(line: 432, column: 2, scope: !967)
!999 = distinct !DISubprogram(name: "strspn", scope: !3, file: !3, line: 443, type: !1000, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!29, !141, !141}
!1002 = !{!1003, !1004, !1005}
!1003 = !DILocalVariable(name: "s", arg: 1, scope: !999, file: !3, line: 443, type: !141)
!1004 = !DILocalVariable(name: "accept", arg: 2, scope: !999, file: !3, line: 443, type: !141)
!1005 = !DILocalVariable(name: "p", scope: !999, file: !3, line: 445, type: !141)
!1006 = !DILocation(line: 443, column: 27, scope: !999)
!1007 = !DILocation(line: 443, column: 42, scope: !999)
!1008 = !DILocation(line: 445, column: 2, scope: !999)
!1009 = !DILocation(line: 445, column: 14, scope: !999)
!1010 = !DILocation(line: 447, column: 11, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !999, file: !3, line: 447, column: 2)
!1012 = !DILocation(line: 447, column: 9, scope: !1011)
!1013 = !DILocation(line: 447, column: 7, scope: !1011)
!1014 = !DILocation(line: 447, column: 15, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 447, column: 2)
!1016 = !DILocation(line: 447, column: 14, scope: !1015)
!1017 = !DILocation(line: 447, column: 17, scope: !1015)
!1018 = !DILocation(line: 447, column: 2, scope: !1011)
!1019 = !DILocation(line: 448, column: 15, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 448, column: 7)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 447, column: 31)
!1022 = !DILocation(line: 448, column: 24, scope: !1020)
!1023 = !DILocation(line: 448, column: 23, scope: !1020)
!1024 = !DILocation(line: 448, column: 8, scope: !1020)
!1025 = !DILocation(line: 448, column: 7, scope: !1021)
!1026 = !DILocation(line: 449, column: 4, scope: !1020)
!1027 = !DILocation(line: 450, column: 2, scope: !1021)
!1028 = !DILocation(line: 447, column: 26, scope: !1015)
!1029 = !DILocation(line: 447, column: 2, scope: !1015)
!1030 = distinct !{!1030, !1018, !1031, !193, !194}
!1031 = !DILocation(line: 450, column: 2, scope: !1011)
!1032 = !DILocation(line: 451, column: 9, scope: !999)
!1033 = !DILocation(line: 451, column: 13, scope: !999)
!1034 = !DILocation(line: 451, column: 11, scope: !999)
!1035 = !DILocation(line: 452, column: 1, scope: !999)
!1036 = !DILocation(line: 451, column: 2, scope: !999)
!1037 = distinct !DISubprogram(name: "strcspn", scope: !3, file: !3, line: 462, type: !1000, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1038 = !{!1039, !1040, !1041}
!1039 = !DILocalVariable(name: "s", arg: 1, scope: !1037, file: !3, line: 462, type: !141)
!1040 = !DILocalVariable(name: "reject", arg: 2, scope: !1037, file: !3, line: 462, type: !141)
!1041 = !DILocalVariable(name: "p", scope: !1037, file: !3, line: 464, type: !141)
!1042 = !DILocation(line: 462, column: 28, scope: !1037)
!1043 = !DILocation(line: 462, column: 43, scope: !1037)
!1044 = !DILocation(line: 464, column: 2, scope: !1037)
!1045 = !DILocation(line: 464, column: 14, scope: !1037)
!1046 = !DILocation(line: 466, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 466, column: 2)
!1048 = !DILocation(line: 466, column: 9, scope: !1047)
!1049 = !DILocation(line: 466, column: 7, scope: !1047)
!1050 = !DILocation(line: 466, column: 15, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 466, column: 2)
!1052 = !DILocation(line: 466, column: 14, scope: !1051)
!1053 = !DILocation(line: 466, column: 17, scope: !1051)
!1054 = !DILocation(line: 466, column: 2, scope: !1047)
!1055 = !DILocation(line: 467, column: 14, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 467, column: 7)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 466, column: 31)
!1058 = !DILocation(line: 467, column: 23, scope: !1056)
!1059 = !DILocation(line: 467, column: 22, scope: !1056)
!1060 = !DILocation(line: 467, column: 7, scope: !1056)
!1061 = !DILocation(line: 467, column: 7, scope: !1057)
!1062 = !DILocation(line: 468, column: 4, scope: !1056)
!1063 = !DILocation(line: 469, column: 2, scope: !1057)
!1064 = !DILocation(line: 466, column: 26, scope: !1051)
!1065 = !DILocation(line: 466, column: 2, scope: !1051)
!1066 = distinct !{!1066, !1054, !1067, !193, !194}
!1067 = !DILocation(line: 469, column: 2, scope: !1047)
!1068 = !DILocation(line: 470, column: 9, scope: !1037)
!1069 = !DILocation(line: 470, column: 13, scope: !1037)
!1070 = !DILocation(line: 470, column: 11, scope: !1037)
!1071 = !DILocation(line: 471, column: 1, scope: !1037)
!1072 = !DILocation(line: 470, column: 2, scope: !1037)
!1073 = distinct !DISubprogram(name: "strpbrk", scope: !3, file: !3, line: 481, type: !1074, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!18, !141, !141}
!1076 = !{!1077, !1078, !1079}
!1077 = !DILocalVariable(name: "cs", arg: 1, scope: !1073, file: !3, line: 481, type: !141)
!1078 = !DILocalVariable(name: "ct", arg: 2, scope: !1073, file: !3, line: 481, type: !141)
!1079 = !DILocalVariable(name: "sc", scope: !1073, file: !3, line: 483, type: !141)
!1080 = !DILocation(line: 481, column: 27, scope: !1073)
!1081 = !DILocation(line: 481, column: 43, scope: !1073)
!1082 = !DILocation(line: 483, column: 2, scope: !1073)
!1083 = !DILocation(line: 483, column: 14, scope: !1073)
!1084 = !DILocation(line: 485, column: 12, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 485, column: 2)
!1086 = !DILocation(line: 485, column: 10, scope: !1085)
!1087 = !DILocation(line: 485, column: 7, scope: !1085)
!1088 = !DILocation(line: 485, column: 17, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 485, column: 2)
!1090 = !DILocation(line: 485, column: 16, scope: !1089)
!1091 = !DILocation(line: 485, column: 20, scope: !1089)
!1092 = !DILocation(line: 485, column: 2, scope: !1085)
!1093 = !DILocation(line: 486, column: 14, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 486, column: 7)
!1095 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 485, column: 35)
!1096 = !DILocation(line: 486, column: 19, scope: !1094)
!1097 = !DILocation(line: 486, column: 18, scope: !1094)
!1098 = !DILocation(line: 486, column: 7, scope: !1094)
!1099 = !DILocation(line: 486, column: 7, scope: !1095)
!1100 = !DILocation(line: 487, column: 19, scope: !1094)
!1101 = !DILocation(line: 487, column: 4, scope: !1094)
!1102 = !DILocation(line: 488, column: 2, scope: !1095)
!1103 = !DILocation(line: 485, column: 29, scope: !1089)
!1104 = !DILocation(line: 485, column: 2, scope: !1089)
!1105 = distinct !{!1105, !1092, !1106, !193, !194}
!1106 = !DILocation(line: 488, column: 2, scope: !1085)
!1107 = !DILocation(line: 489, column: 2, scope: !1073)
!1108 = !DILocation(line: 490, column: 1, scope: !1073)
!1109 = distinct !DISubprogram(name: "strsep", scope: !3, file: !3, line: 506, type: !1110, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!18, !1112, !141}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1113 = !{!1114, !1115, !1116, !1117}
!1114 = !DILocalVariable(name: "s", arg: 1, scope: !1109, file: !3, line: 506, type: !1112)
!1115 = !DILocalVariable(name: "ct", arg: 2, scope: !1109, file: !3, line: 506, type: !141)
!1116 = !DILocalVariable(name: "sbegin", scope: !1109, file: !3, line: 508, type: !18)
!1117 = !DILocalVariable(name: "end", scope: !1109, file: !3, line: 509, type: !18)
!1118 = !DILocation(line: 506, column: 21, scope: !1109)
!1119 = !DILocation(line: 506, column: 36, scope: !1109)
!1120 = !DILocation(line: 508, column: 2, scope: !1109)
!1121 = !DILocation(line: 508, column: 8, scope: !1109)
!1122 = !DILocation(line: 508, column: 18, scope: !1109)
!1123 = !DILocation(line: 508, column: 17, scope: !1109)
!1124 = !DILocation(line: 509, column: 2, scope: !1109)
!1125 = !DILocation(line: 509, column: 8, scope: !1109)
!1126 = !DILocation(line: 511, column: 6, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 511, column: 6)
!1128 = !DILocation(line: 511, column: 13, scope: !1127)
!1129 = !DILocation(line: 511, column: 6, scope: !1109)
!1130 = !DILocation(line: 512, column: 3, scope: !1127)
!1131 = !DILocation(line: 514, column: 16, scope: !1109)
!1132 = !DILocation(line: 514, column: 24, scope: !1109)
!1133 = !DILocation(line: 514, column: 8, scope: !1109)
!1134 = !DILocation(line: 514, column: 6, scope: !1109)
!1135 = !DILocation(line: 515, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 515, column: 6)
!1137 = !DILocation(line: 515, column: 6, scope: !1109)
!1138 = !DILocation(line: 516, column: 7, scope: !1136)
!1139 = !DILocation(line: 516, column: 10, scope: !1136)
!1140 = !DILocation(line: 516, column: 3, scope: !1136)
!1141 = !DILocation(line: 517, column: 7, scope: !1109)
!1142 = !DILocation(line: 517, column: 3, scope: !1109)
!1143 = !DILocation(line: 517, column: 5, scope: !1109)
!1144 = !DILocation(line: 518, column: 9, scope: !1109)
!1145 = !DILocation(line: 518, column: 2, scope: !1109)
!1146 = !DILocation(line: 519, column: 1, scope: !1109)
!1147 = !DILocation(line: 671, column: 34, scope: !22)
!1148 = !DILocation(line: 671, column: 50, scope: !22)
!1149 = !DILocation(line: 671, column: 61, scope: !22)
!1150 = !DILocation(line: 673, column: 2, scope: !22)
!1151 = !DILocation(line: 673, column: 23, scope: !22)
!1152 = !DILocation(line: 673, column: 29, scope: !22)
!1153 = !DILocation(line: 674, column: 2, scope: !22)
!1154 = !DILocation(line: 674, column: 6, scope: !22)
!1155 = !DILocation(line: 677, column: 6, scope: !44)
!1156 = !DILocation(line: 677, column: 12, scope: !44)
!1157 = !DILocation(line: 677, column: 6, scope: !22)
!1158 = !DILocation(line: 678, column: 3, scope: !43)
!1159 = !DILocation(line: 678, column: 24, scope: !43)
!1160 = !DILocation(line: 678, column: 29, scope: !43)
!1161 = !DILocation(line: 679, column: 3, scope: !43)
!1162 = !DILocation(line: 679, column: 24, scope: !43)
!1163 = !DILocation(line: 679, column: 29, scope: !43)
!1164 = !DILocation(line: 680, column: 3, scope: !43)
!1165 = !DILocation(line: 681, column: 8, scope: !49)
!1166 = !DILocation(line: 681, column: 8, scope: !50)
!1167 = !DILocation(line: 681, column: 29, scope: !53)
!1168 = !DILocation(line: 681, column: 29, scope: !50)
!1169 = !DILocation(line: 681, column: 26, scope: !50)
!1170 = !DILocation(line: 681, column: 8, scope: !51)
!1171 = !DILocation(line: 682, column: 5, scope: !50)
!1172 = !DILocation(line: 683, column: 6, scope: !51)
!1173 = !DILocation(line: 684, column: 6, scope: !51)
!1174 = !DILocation(line: 685, column: 10, scope: !51)
!1175 = !DILocation(line: 686, column: 3, scope: !51)
!1176 = !DILocation(line: 686, column: 12, scope: !43)
!1177 = !DILocation(line: 686, column: 18, scope: !43)
!1178 = distinct !{!1178, !1164, !1179, !193, !194}
!1179 = !DILocation(line: 686, column: 42, scope: !43)
!1180 = !DILocation(line: 687, column: 8, scope: !43)
!1181 = !DILocation(line: 687, column: 6, scope: !43)
!1182 = !DILocation(line: 688, column: 8, scope: !43)
!1183 = !DILocation(line: 688, column: 6, scope: !43)
!1184 = !DILocation(line: 689, column: 2, scope: !44)
!1185 = !DILocation(line: 689, column: 2, scope: !43)
!1186 = !DILocation(line: 691, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !22, file: !3, line: 691, column: 2)
!1188 = !DILocation(line: 691, column: 11, scope: !1187)
!1189 = !DILocation(line: 691, column: 23, scope: !1187)
!1190 = !DILocation(line: 691, column: 21, scope: !1187)
!1191 = !DILocation(line: 691, column: 7, scope: !1187)
!1192 = !DILocation(line: 691, column: 31, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 691, column: 2)
!1194 = !DILocation(line: 691, column: 29, scope: !1193)
!1195 = !DILocation(line: 691, column: 2, scope: !1187)
!1196 = !DILocation(line: 692, column: 15, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 692, column: 7)
!1198 = !DILocation(line: 692, column: 14, scope: !1197)
!1199 = !DILocation(line: 692, column: 22, scope: !1197)
!1200 = !DILocation(line: 692, column: 21, scope: !1197)
!1201 = !DILocation(line: 692, column: 19, scope: !1197)
!1202 = !DILocation(line: 692, column: 12, scope: !1197)
!1203 = !DILocation(line: 692, column: 27, scope: !1197)
!1204 = !DILocation(line: 692, column: 7, scope: !1193)
!1205 = !DILocation(line: 693, column: 4, scope: !1197)
!1206 = !DILocation(line: 692, column: 30, scope: !1197)
!1207 = !DILocation(line: 691, column: 38, scope: !1193)
!1208 = !DILocation(line: 691, column: 45, scope: !1193)
!1209 = !DILocation(line: 691, column: 57, scope: !1193)
!1210 = !DILocation(line: 691, column: 2, scope: !1193)
!1211 = distinct !{!1211, !1195, !1212, !193, !194}
!1212 = !DILocation(line: 693, column: 4, scope: !1187)
!1213 = !DILocation(line: 694, column: 9, scope: !22)
!1214 = !DILocation(line: 695, column: 1, scope: !22)
!1215 = !DILocation(line: 694, column: 2, scope: !22)
!1216 = distinct !DISubprogram(name: "bcmp", scope: !3, file: !3, line: 711, type: !23, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DILocalVariable(name: "a", arg: 1, scope: !1216, file: !3, line: 711, type: !25)
!1219 = !DILocalVariable(name: "b", arg: 2, scope: !1216, file: !3, line: 711, type: !25)
!1220 = !DILocalVariable(name: "len", arg: 3, scope: !1216, file: !3, line: 711, type: !27)
!1221 = !DILocation(line: 711, column: 22, scope: !1216)
!1222 = !DILocation(line: 711, column: 37, scope: !1216)
!1223 = !DILocation(line: 711, column: 47, scope: !1216)
!1224 = !DILocation(line: 713, column: 16, scope: !1216)
!1225 = !DILocation(line: 713, column: 19, scope: !1216)
!1226 = !DILocation(line: 713, column: 22, scope: !1216)
!1227 = !DILocation(line: 713, column: 9, scope: !1216)
!1228 = !DILocation(line: 713, column: 2, scope: !1216)
!1229 = distinct !DISubprogram(name: "memscan", scope: !3, file: !3, line: 728, type: !1230, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!13, !13, !12, !27}
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DILocalVariable(name: "addr", arg: 1, scope: !1229, file: !3, line: 728, type: !13)
!1234 = !DILocalVariable(name: "c", arg: 2, scope: !1229, file: !3, line: 728, type: !12)
!1235 = !DILocalVariable(name: "size", arg: 3, scope: !1229, file: !3, line: 728, type: !27)
!1236 = !DILocalVariable(name: "p", scope: !1229, file: !3, line: 730, type: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1238 = !DILocation(line: 728, column: 21, scope: !1229)
!1239 = !DILocation(line: 728, column: 31, scope: !1229)
!1240 = !DILocation(line: 728, column: 41, scope: !1229)
!1241 = !DILocation(line: 730, column: 2, scope: !1229)
!1242 = !DILocation(line: 730, column: 17, scope: !1229)
!1243 = !DILocation(line: 730, column: 21, scope: !1229)
!1244 = !DILocation(line: 732, column: 2, scope: !1229)
!1245 = !DILocation(line: 732, column: 9, scope: !1229)
!1246 = !DILocation(line: 733, column: 8, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 733, column: 7)
!1248 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 732, column: 15)
!1249 = !DILocation(line: 733, column: 7, scope: !1247)
!1250 = !DILocation(line: 733, column: 28, scope: !1247)
!1251 = !DILocation(line: 733, column: 13, scope: !1247)
!1252 = !DILocation(line: 733, column: 10, scope: !1247)
!1253 = !DILocation(line: 733, column: 7, scope: !1248)
!1254 = !DILocation(line: 734, column: 19, scope: !1247)
!1255 = !DILocation(line: 734, column: 4, scope: !1247)
!1256 = !DILocation(line: 735, column: 4, scope: !1248)
!1257 = !DILocation(line: 736, column: 7, scope: !1248)
!1258 = distinct !{!1258, !1244, !1259, !193, !194}
!1259 = !DILocation(line: 737, column: 2, scope: !1229)
!1260 = !DILocation(line: 738, column: 19, scope: !1229)
!1261 = !DILocation(line: 738, column: 4, scope: !1229)
!1262 = !DILocation(line: 739, column: 1, scope: !1229)
!1263 = distinct !DISubprogram(name: "strstr", scope: !3, file: !3, line: 749, type: !1074, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1264 = !{!1265, !1266, !1267, !1268}
!1265 = !DILocalVariable(name: "s1", arg: 1, scope: !1263, file: !3, line: 749, type: !141)
!1266 = !DILocalVariable(name: "s2", arg: 2, scope: !1263, file: !3, line: 749, type: !141)
!1267 = !DILocalVariable(name: "l1", scope: !1263, file: !3, line: 751, type: !27)
!1268 = !DILocalVariable(name: "l2", scope: !1263, file: !3, line: 751, type: !27)
!1269 = !DILocation(line: 749, column: 26, scope: !1263)
!1270 = !DILocation(line: 749, column: 42, scope: !1263)
!1271 = !DILocation(line: 751, column: 2, scope: !1263)
!1272 = !DILocation(line: 751, column: 9, scope: !1263)
!1273 = !DILocation(line: 751, column: 13, scope: !1263)
!1274 = !DILocation(line: 753, column: 14, scope: !1263)
!1275 = !DILocation(line: 753, column: 7, scope: !1263)
!1276 = !DILocation(line: 753, column: 5, scope: !1263)
!1277 = !DILocation(line: 754, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 754, column: 6)
!1279 = !DILocation(line: 754, column: 6, scope: !1263)
!1280 = !DILocation(line: 755, column: 18, scope: !1278)
!1281 = !DILocation(line: 755, column: 3, scope: !1278)
!1282 = !DILocation(line: 756, column: 14, scope: !1263)
!1283 = !DILocation(line: 756, column: 7, scope: !1263)
!1284 = !DILocation(line: 756, column: 5, scope: !1263)
!1285 = !DILocation(line: 757, column: 2, scope: !1263)
!1286 = !DILocation(line: 757, column: 9, scope: !1263)
!1287 = !DILocation(line: 757, column: 15, scope: !1263)
!1288 = !DILocation(line: 757, column: 12, scope: !1263)
!1289 = !DILocation(line: 758, column: 5, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 757, column: 19)
!1291 = !DILocation(line: 759, column: 15, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 759, column: 7)
!1293 = !DILocation(line: 759, column: 19, scope: !1292)
!1294 = !DILocation(line: 759, column: 23, scope: !1292)
!1295 = !DILocation(line: 759, column: 8, scope: !1292)
!1296 = !DILocation(line: 759, column: 7, scope: !1290)
!1297 = !DILocation(line: 760, column: 19, scope: !1292)
!1298 = !DILocation(line: 760, column: 4, scope: !1292)
!1299 = !DILocation(line: 761, column: 5, scope: !1290)
!1300 = distinct !{!1300, !1285, !1301, !193, !194}
!1301 = !DILocation(line: 762, column: 2, scope: !1263)
!1302 = !DILocation(line: 763, column: 2, scope: !1263)
!1303 = !DILocation(line: 764, column: 1, scope: !1263)
!1304 = distinct !DISubprogram(name: "strnstr", scope: !3, file: !3, line: 775, type: !1305, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!18, !141, !141, !27}
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DILocalVariable(name: "s1", arg: 1, scope: !1304, file: !3, line: 775, type: !141)
!1309 = !DILocalVariable(name: "s2", arg: 2, scope: !1304, file: !3, line: 775, type: !141)
!1310 = !DILocalVariable(name: "len", arg: 3, scope: !1304, file: !3, line: 775, type: !27)
!1311 = !DILocalVariable(name: "l2", scope: !1304, file: !3, line: 777, type: !27)
!1312 = !DILocation(line: 775, column: 27, scope: !1304)
!1313 = !DILocation(line: 775, column: 43, scope: !1304)
!1314 = !DILocation(line: 775, column: 54, scope: !1304)
!1315 = !DILocation(line: 777, column: 2, scope: !1304)
!1316 = !DILocation(line: 777, column: 9, scope: !1304)
!1317 = !DILocation(line: 779, column: 14, scope: !1304)
!1318 = !DILocation(line: 779, column: 7, scope: !1304)
!1319 = !DILocation(line: 779, column: 5, scope: !1304)
!1320 = !DILocation(line: 780, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 780, column: 6)
!1322 = !DILocation(line: 780, column: 6, scope: !1304)
!1323 = !DILocation(line: 781, column: 18, scope: !1321)
!1324 = !DILocation(line: 781, column: 3, scope: !1321)
!1325 = !DILocation(line: 782, column: 2, scope: !1304)
!1326 = !DILocation(line: 782, column: 9, scope: !1304)
!1327 = !DILocation(line: 782, column: 16, scope: !1304)
!1328 = !DILocation(line: 782, column: 13, scope: !1304)
!1329 = !DILocation(line: 783, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 782, column: 20)
!1331 = !DILocation(line: 784, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 784, column: 7)
!1333 = !DILocation(line: 784, column: 19, scope: !1332)
!1334 = !DILocation(line: 784, column: 23, scope: !1332)
!1335 = !DILocation(line: 784, column: 8, scope: !1332)
!1336 = !DILocation(line: 784, column: 7, scope: !1330)
!1337 = !DILocation(line: 785, column: 19, scope: !1332)
!1338 = !DILocation(line: 785, column: 4, scope: !1332)
!1339 = !DILocation(line: 786, column: 5, scope: !1330)
!1340 = distinct !{!1340, !1325, !1341, !193, !194}
!1341 = !DILocation(line: 787, column: 2, scope: !1304)
!1342 = !DILocation(line: 788, column: 2, scope: !1304)
!1343 = !DILocation(line: 789, column: 1, scope: !1304)
!1344 = distinct !DISubprogram(name: "memchr", scope: !3, file: !3, line: 803, type: !1345, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!13, !25, !12, !27}
!1347 = !{!1348, !1349, !1350, !1351}
!1348 = !DILocalVariable(name: "s", arg: 1, scope: !1344, file: !3, line: 803, type: !25)
!1349 = !DILocalVariable(name: "c", arg: 2, scope: !1344, file: !3, line: 803, type: !12)
!1350 = !DILocalVariable(name: "n", arg: 3, scope: !1344, file: !3, line: 803, type: !27)
!1351 = !DILocalVariable(name: "p", scope: !1344, file: !3, line: 805, type: !37)
!1352 = !DILocation(line: 803, column: 26, scope: !1344)
!1353 = !DILocation(line: 803, column: 33, scope: !1344)
!1354 = !DILocation(line: 803, column: 43, scope: !1344)
!1355 = !DILocation(line: 805, column: 2, scope: !1344)
!1356 = !DILocation(line: 805, column: 23, scope: !1344)
!1357 = !DILocation(line: 805, column: 27, scope: !1344)
!1358 = !DILocation(line: 806, column: 2, scope: !1344)
!1359 = !DILocation(line: 806, column: 10, scope: !1344)
!1360 = !DILocation(line: 806, column: 13, scope: !1344)
!1361 = !DILocation(line: 807, column: 29, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 807, column: 14)
!1363 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 806, column: 19)
!1364 = !DILocation(line: 807, column: 14, scope: !1362)
!1365 = !DILocation(line: 807, column: 36, scope: !1362)
!1366 = !DILocation(line: 807, column: 34, scope: !1362)
!1367 = !DILocation(line: 807, column: 31, scope: !1362)
!1368 = !DILocation(line: 807, column: 14, scope: !1363)
!1369 = !DILocation(line: 808, column: 20, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 807, column: 40)
!1371 = !DILocation(line: 808, column: 22, scope: !1370)
!1372 = !DILocation(line: 808, column: 4, scope: !1370)
!1373 = distinct !{!1373, !1358, !1374, !193, !194}
!1374 = !DILocation(line: 810, column: 2, scope: !1344)
!1375 = !DILocation(line: 811, column: 2, scope: !1344)
!1376 = !DILocation(line: 812, column: 1, scope: !1344)
!1377 = distinct !DISubprogram(name: "memchr_inv", scope: !3, file: !3, line: 836, type: !1345, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1385, !1386, !1387, !1388}
!1379 = !DILocalVariable(name: "start", arg: 1, scope: !1377, file: !3, line: 836, type: !25)
!1380 = !DILocalVariable(name: "c", arg: 2, scope: !1377, file: !3, line: 836, type: !12)
!1381 = !DILocalVariable(name: "bytes", arg: 3, scope: !1377, file: !3, line: 836, type: !27)
!1382 = !DILocalVariable(name: "value", scope: !1377, file: !3, line: 838, type: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !63, line: 17, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !65, line: 21, baseType: !39)
!1385 = !DILocalVariable(name: "value64", scope: !1377, file: !3, line: 839, type: !62)
!1386 = !DILocalVariable(name: "words", scope: !1377, file: !3, line: 840, type: !7)
!1387 = !DILocalVariable(name: "prefix", scope: !1377, file: !3, line: 840, type: !7)
!1388 = !DILocalVariable(name: "r", scope: !1389, file: !3, line: 859, type: !1391)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 858, column: 14)
!1390 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 858, column: 6)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1392 = !DILocation(line: 836, column: 30, scope: !1377)
!1393 = !DILocation(line: 836, column: 41, scope: !1377)
!1394 = !DILocation(line: 836, column: 51, scope: !1377)
!1395 = !DILocation(line: 838, column: 2, scope: !1377)
!1396 = !DILocation(line: 838, column: 5, scope: !1377)
!1397 = !DILocation(line: 838, column: 13, scope: !1377)
!1398 = !DILocation(line: 839, column: 2, scope: !1377)
!1399 = !DILocation(line: 839, column: 6, scope: !1377)
!1400 = !DILocation(line: 840, column: 2, scope: !1377)
!1401 = !DILocation(line: 840, column: 15, scope: !1377)
!1402 = !DILocation(line: 840, column: 22, scope: !1377)
!1403 = !DILocation(line: 842, column: 6, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 842, column: 6)
!1405 = !DILocation(line: 842, column: 12, scope: !1404)
!1406 = !DILocation(line: 842, column: 6, scope: !1377)
!1407 = !DILocation(line: 843, column: 23, scope: !1404)
!1408 = !DILocation(line: 843, column: 30, scope: !1404)
!1409 = !DILocation(line: 843, column: 37, scope: !1404)
!1410 = !DILocation(line: 843, column: 10, scope: !1404)
!1411 = !DILocation(line: 843, column: 3, scope: !1404)
!1412 = !DILocation(line: 845, column: 12, scope: !1377)
!1413 = !DILocation(line: 845, column: 10, scope: !1377)
!1414 = !DILocation(line: 847, column: 10, scope: !1377)
!1415 = !DILocation(line: 857, column: 26, scope: !1377)
!1416 = !DILocation(line: 857, column: 11, scope: !1377)
!1417 = !DILocation(line: 857, column: 32, scope: !1377)
!1418 = !DILocation(line: 857, column: 9, scope: !1377)
!1419 = !DILocation(line: 858, column: 6, scope: !1390)
!1420 = !DILocation(line: 858, column: 6, scope: !1377)
!1421 = !DILocation(line: 859, column: 3, scope: !1389)
!1422 = !DILocation(line: 859, column: 7, scope: !1389)
!1423 = !DILocation(line: 861, column: 16, scope: !1389)
!1424 = !DILocation(line: 861, column: 14, scope: !1389)
!1425 = !DILocation(line: 861, column: 10, scope: !1389)
!1426 = !DILocation(line: 862, column: 20, scope: !1389)
!1427 = !DILocation(line: 862, column: 27, scope: !1389)
!1428 = !DILocation(line: 862, column: 34, scope: !1389)
!1429 = !DILocation(line: 862, column: 7, scope: !1389)
!1430 = !DILocation(line: 862, column: 5, scope: !1389)
!1431 = !DILocation(line: 863, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 863, column: 7)
!1433 = !DILocation(line: 863, column: 7, scope: !1389)
!1434 = !DILocation(line: 864, column: 11, scope: !1432)
!1435 = !DILocation(line: 864, column: 4, scope: !1432)
!1436 = !DILocation(line: 865, column: 12, scope: !1389)
!1437 = !DILocation(line: 865, column: 9, scope: !1389)
!1438 = !DILocation(line: 866, column: 12, scope: !1389)
!1439 = !DILocation(line: 866, column: 9, scope: !1389)
!1440 = !DILocation(line: 867, column: 2, scope: !1390)
!1441 = !DILocation(line: 867, column: 2, scope: !1389)
!1442 = !DILocation(line: 869, column: 10, scope: !1377)
!1443 = !DILocation(line: 869, column: 16, scope: !1377)
!1444 = !DILocation(line: 869, column: 8, scope: !1377)
!1445 = !DILocation(line: 871, column: 2, scope: !1377)
!1446 = !DILocation(line: 871, column: 9, scope: !1377)
!1447 = !DILocation(line: 872, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 872, column: 7)
!1449 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 871, column: 16)
!1450 = !DILocation(line: 872, column: 7, scope: !1448)
!1451 = !DILocation(line: 872, column: 24, scope: !1448)
!1452 = !DILocation(line: 872, column: 21, scope: !1448)
!1453 = !DILocation(line: 872, column: 7, scope: !1449)
!1454 = !DILocation(line: 873, column: 24, scope: !1448)
!1455 = !DILocation(line: 873, column: 31, scope: !1448)
!1456 = !DILocation(line: 873, column: 11, scope: !1448)
!1457 = !DILocation(line: 873, column: 4, scope: !1448)
!1458 = !DILocation(line: 874, column: 9, scope: !1449)
!1459 = !DILocation(line: 875, column: 8, scope: !1449)
!1460 = distinct !{!1460, !1445, !1461, !193, !194}
!1461 = !DILocation(line: 876, column: 2, scope: !1377)
!1462 = !DILocation(line: 878, column: 22, scope: !1377)
!1463 = !DILocation(line: 878, column: 29, scope: !1377)
!1464 = !DILocation(line: 878, column: 36, scope: !1377)
!1465 = !DILocation(line: 878, column: 42, scope: !1377)
!1466 = !DILocation(line: 878, column: 9, scope: !1377)
!1467 = !DILocation(line: 878, column: 2, scope: !1377)
!1468 = !DILocation(line: 879, column: 1, scope: !1377)
!1469 = distinct !DISubprogram(name: "check_bytes8", scope: !3, file: !3, line: 816, type: !1470, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!13, !1472, !1383, !7}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1474 = !{!1475, !1476, !1477}
!1475 = !DILocalVariable(name: "start", arg: 1, scope: !1469, file: !3, line: 816, type: !1472)
!1476 = !DILocalVariable(name: "value", arg: 2, scope: !1469, file: !3, line: 816, type: !1383)
!1477 = !DILocalVariable(name: "bytes", arg: 3, scope: !1469, file: !3, line: 816, type: !7)
!1478 = !DILocation(line: 816, column: 37, scope: !1469)
!1479 = !DILocation(line: 816, column: 47, scope: !1469)
!1480 = !DILocation(line: 816, column: 67, scope: !1469)
!1481 = !DILocation(line: 818, column: 2, scope: !1469)
!1482 = !DILocation(line: 818, column: 9, scope: !1469)
!1483 = !DILocation(line: 819, column: 8, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 819, column: 7)
!1485 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 818, column: 16)
!1486 = !DILocation(line: 819, column: 7, scope: !1484)
!1487 = !DILocation(line: 819, column: 17, scope: !1484)
!1488 = !DILocation(line: 819, column: 14, scope: !1484)
!1489 = !DILocation(line: 819, column: 7, scope: !1485)
!1490 = !DILocation(line: 820, column: 19, scope: !1484)
!1491 = !DILocation(line: 820, column: 4, scope: !1484)
!1492 = !DILocation(line: 821, column: 8, scope: !1485)
!1493 = !DILocation(line: 822, column: 8, scope: !1485)
!1494 = distinct !{!1494, !1481, !1495, !193, !194}
!1495 = !DILocation(line: 823, column: 2, scope: !1469)
!1496 = !DILocation(line: 824, column: 2, scope: !1469)
!1497 = !DILocation(line: 825, column: 1, scope: !1469)
!1498 = distinct !DISubprogram(name: "kasan_check_read", scope: !1499, file: !1499, line: 40, type: !1500, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1499 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1502, !1504, !7}
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !1503)
!1503 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1507 = !{!1508, !1509}
!1508 = !DILocalVariable(name: "p", arg: 1, scope: !1498, file: !1499, line: 40, type: !1504)
!1509 = !DILocalVariable(name: "size", arg: 2, scope: !1498, file: !1499, line: 40, type: !7)
!1510 = !DILocation(line: 40, column: 58, scope: !1498)
!1511 = !DILocation(line: 40, column: 74, scope: !1498)
!1512 = !DILocation(line: 42, column: 2, scope: !1498)
!1513 = distinct !DISubprogram(name: "count_masked_bytes", scope: !389, file: !389, line: 28, type: !1514, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1516)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!14, !16}
!1516 = !{!1517}
!1517 = !DILocalVariable(name: "mask", arg: 1, scope: !1513, file: !389, line: 28, type: !16)
!1518 = !DILocation(line: 28, column: 53, scope: !1513)
!1519 = !DILocation(line: 30, column: 9, scope: !1513)
!1520 = !DILocation(line: 30, column: 13, scope: !1513)
!1521 = !DILocation(line: 30, column: 35, scope: !1513)
!1522 = !DILocation(line: 30, column: 2, scope: !1513)
