; ModuleID = 'lib/cmdline.c'
source_filename = "lib/cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_option: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad get_option ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_options: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad get_options ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memparse: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memparse ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_next_arg: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad next_arg ; .previous"

@__UNIQUE_ID___addressable_get_option3 = internal global ptr @get_option, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_get_options4 = internal global ptr @get_options, section ".discard.addressable", align 8, !dbg !19
@__UNIQUE_ID___addressable_memparse5 = internal global ptr @memparse, section ".discard.addressable", align 8, !dbg !21
@_ctype = external dso_local constant [0 x i8], align 1
@__UNIQUE_ID___addressable_next_arg6 = internal global ptr @next_arg, section ".discard.addressable", align 8, !dbg !23
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_get_option3, ptr @__UNIQUE_ID___addressable_get_options4, ptr @__UNIQUE_ID___addressable_memparse5, ptr @__UNIQUE_ID___addressable_next_arg6], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_option(ptr noundef %str, ptr noundef %pint) #0 align 16 !dbg !34 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %pint.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !39, metadata !DIExpression()), !dbg !43
  store ptr %pint, ptr %pint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pint.addr, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #4, !dbg !45
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !41, metadata !DIExpression()), !dbg !46
  %0 = load ptr, ptr %str.addr, align 8, !dbg !47
  %1 = load ptr, ptr %0, align 8, !dbg !48
  store ptr %1, ptr %cur, align 8, !dbg !46
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #4, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %value, metadata !42, metadata !DIExpression()), !dbg !50
  %2 = load ptr, ptr %cur, align 8, !dbg !51
  %tobool = icmp ne ptr %2, null, !dbg !51
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !53

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %cur, align 8, !dbg !54
  %4 = load i8, ptr %3, align 1, !dbg !55
  %tobool1 = icmp ne i8 %4, 0, !dbg !56
  br i1 %tobool1, label %if.end, label %if.then, !dbg !57

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !58
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !58

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %cur, align 8, !dbg !59
  %6 = load i8, ptr %5, align 1, !dbg !61
  %conv = zext i8 %6 to i32, !dbg !61
  %cmp = icmp eq i32 %conv, 45, !dbg !62
  br i1 %cmp, label %if.then3, label %if.else, !dbg !63

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %cur, align 8, !dbg !64
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !64
  store ptr %incdec.ptr, ptr %cur, align 8, !dbg !64
  %8 = load ptr, ptr %str.addr, align 8, !dbg !65
  %call = call i64 @simple_strtoull(ptr noundef %incdec.ptr, ptr noundef %8, i32 noundef 0) #5, !dbg !66
  %sub = sub i64 0, %call, !dbg !67
  %conv4 = trunc i64 %sub to i32, !dbg !67
  store i32 %conv4, ptr %value, align 4, !dbg !68
  br label %if.end7, !dbg !69

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %cur, align 8, !dbg !70
  %10 = load ptr, ptr %str.addr, align 8, !dbg !71
  %call5 = call i64 @simple_strtoull(ptr noundef %9, ptr noundef %10, i32 noundef 0) #5, !dbg !72
  %conv6 = trunc i64 %call5 to i32, !dbg !72
  store i32 %conv6, ptr %value, align 4, !dbg !73
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %11 = load ptr, ptr %pint.addr, align 8, !dbg !74
  %tobool8 = icmp ne ptr %11, null, !dbg !74
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !76

if.then9:                                         ; preds = %if.end7
  %12 = load i32, ptr %value, align 4, !dbg !77
  %13 = load ptr, ptr %pint.addr, align 8, !dbg !78
  store i32 %12, ptr %13, align 4, !dbg !79
  br label %if.end10, !dbg !80

if.end10:                                         ; preds = %if.then9, %if.end7
  %14 = load ptr, ptr %cur, align 8, !dbg !81
  %15 = load ptr, ptr %str.addr, align 8, !dbg !83
  %16 = load ptr, ptr %15, align 8, !dbg !84
  %cmp11 = icmp eq ptr %14, %16, !dbg !85
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !86

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !87
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !87

if.end14:                                         ; preds = %if.end10
  %17 = load ptr, ptr %str.addr, align 8, !dbg !88
  %18 = load ptr, ptr %17, align 8, !dbg !90
  %19 = load i8, ptr %18, align 1, !dbg !91
  %conv15 = zext i8 %19 to i32, !dbg !91
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !92
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !93

if.then18:                                        ; preds = %if.end14
  %20 = load ptr, ptr %str.addr, align 8, !dbg !94
  %21 = load ptr, ptr %20, align 8, !dbg !96
  %incdec.ptr19 = getelementptr i8, ptr %21, i32 1, !dbg !96
  store ptr %incdec.ptr19, ptr %20, align 8, !dbg !96
  store i32 2, ptr %retval, align 4, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end20:                                         ; preds = %if.end14
  %22 = load ptr, ptr %str.addr, align 8, !dbg !98
  %23 = load ptr, ptr %22, align 8, !dbg !100
  %24 = load i8, ptr %23, align 1, !dbg !101
  %conv21 = zext i8 %24 to i32, !dbg !101
  %cmp22 = icmp eq i32 %conv21, 45, !dbg !102
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !103

if.then24:                                        ; preds = %if.end20
  store i32 3, ptr %retval, align 4, !dbg !104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !104

if.end25:                                         ; preds = %if.end20
  store i32 1, ptr %retval, align 4, !dbg !105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !105

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #4, !dbg !106
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #4, !dbg !106
  %25 = load i32, ptr %retval, align 4, !dbg !106
  ret i32 %25, !dbg !106
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !107 dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_options(ptr noundef %str, i32 noundef %nints, ptr noundef %ints) #0 align 16 !dbg !114 {
entry:
  %str.addr = alloca ptr, align 8
  %nints.addr = alloca i32, align 4
  %ints.addr = alloca ptr, align 8
  %validate = alloca i8, align 1
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  %pint = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca i32, align 4
  %range_nums = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !118, metadata !DIExpression()), !dbg !133
  store i32 %nints, ptr %nints.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nints.addr, metadata !119, metadata !DIExpression()), !dbg !134
  store ptr %ints, ptr %ints.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ints.addr, metadata !120, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 1, ptr %validate) #4, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %validate, metadata !121, metadata !DIExpression()), !dbg !137
  %0 = load i32, ptr %nints.addr, align 4, !dbg !138
  %cmp = icmp eq i32 %0, 0, !dbg !139
  %frombool = zext i1 %cmp to i8, !dbg !137
  store i8 %frombool, ptr %validate, align 1, !dbg !137
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #4, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %res, metadata !125, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %i, metadata !126, metadata !DIExpression()), !dbg !142
  store i32 1, ptr %i, align 4, !dbg !142
  br label %while.cond, !dbg !143

while.cond:                                       ; preds = %cleanup.cont23, %entry
  %1 = load i32, ptr %i, align 4, !dbg !144
  %2 = load i32, ptr %nints.addr, align 4, !dbg !145
  %cmp1 = icmp slt i32 %1, %2, !dbg !146
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !147

lor.rhs:                                          ; preds = %while.cond
  %3 = load i8, ptr %validate, align 1, !dbg !148, !range !149, !noundef !150
  %tobool = trunc i8 %3 to i1, !dbg !148
  br label %lor.end, !dbg !147

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %tobool, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end, !dbg !143

while.body:                                       ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pint) #4, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %pint, metadata !127, metadata !DIExpression()), !dbg !152
  %5 = load i8, ptr %validate, align 1, !dbg !153, !range !149, !noundef !150
  %tobool2 = trunc i8 %5 to i1, !dbg !153
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !153

cond.true:                                        ; preds = %while.body
  %6 = load ptr, ptr %ints.addr, align 8, !dbg !154
  br label %cond.end, !dbg !153

cond.false:                                       ; preds = %while.body
  %7 = load ptr, ptr %ints.addr, align 8, !dbg !155
  %8 = load i32, ptr %i, align 4, !dbg !156
  %idx.ext = sext i32 %8 to i64, !dbg !157
  %add.ptr = getelementptr i32, ptr %7, i64 %idx.ext, !dbg !157
  br label %cond.end, !dbg !153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %add.ptr, %cond.false ], !dbg !153
  store ptr %cond, ptr %pint, align 8, !dbg !152
  %9 = load ptr, ptr %pint, align 8, !dbg !158
  %call = call i32 @get_option(ptr noundef %str.addr, ptr noundef %9) #5, !dbg !159
  store i32 %call, ptr %res, align 4, !dbg !160
  %10 = load i32, ptr %res, align 4, !dbg !161
  %cmp3 = icmp eq i32 %10, 0, !dbg !163
  br i1 %cmp3, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %cond.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !165

if.end:                                           ; preds = %cond.end
  %11 = load i32, ptr %res, align 4, !dbg !166
  %cmp4 = icmp eq i32 %11, 3, !dbg !167
  br i1 %cmp4, label %if.then5, label %if.end17, !dbg !168

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %n, metadata !129, metadata !DIExpression()), !dbg !170
  %12 = load i8, ptr %validate, align 1, !dbg !171, !range !149, !noundef !150
  %tobool6 = trunc i8 %12 to i1, !dbg !171
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !171

cond.true7:                                       ; preds = %if.then5
  br label %cond.end9, !dbg !171

cond.false8:                                      ; preds = %if.then5
  %13 = load i32, ptr %nints.addr, align 4, !dbg !172
  %14 = load i32, ptr %i, align 4, !dbg !173
  %sub = sub i32 %13, %14, !dbg !174
  br label %cond.end9, !dbg !171

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ 0, %cond.true7 ], [ %sub, %cond.false8 ], !dbg !171
  store i32 %cond10, ptr %n, align 4, !dbg !170
  call void @llvm.lifetime.start.p0(i64 4, ptr %range_nums) #4, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %range_nums, metadata !132, metadata !DIExpression()), !dbg !176
  %15 = load ptr, ptr %pint, align 8, !dbg !177
  %16 = load i32, ptr %n, align 4, !dbg !178
  %call11 = call i32 @get_range(ptr noundef %str.addr, ptr noundef %15, i32 noundef %16) #5, !dbg !179
  store i32 %call11, ptr %range_nums, align 4, !dbg !180
  %17 = load i32, ptr %range_nums, align 4, !dbg !181
  %cmp12 = icmp slt i32 %17, 0, !dbg !183
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !184

if.then13:                                        ; preds = %cond.end9
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !185

if.end14:                                         ; preds = %cond.end9
  %18 = load i32, ptr %range_nums, align 4, !dbg !186
  %sub15 = sub i32 %18, 1, !dbg !187
  %19 = load i32, ptr %i, align 4, !dbg !188
  %add = add i32 %19, %sub15, !dbg !188
  store i32 %add, ptr %i, align 4, !dbg !188
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !189
  br label %cleanup, !dbg !189

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %range_nums) #4, !dbg !189
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4, !dbg !189
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17, !dbg !190

if.end17:                                         ; preds = %cleanup.cont, %if.end
  %20 = load i32, ptr %i, align 4, !dbg !191
  %inc = add i32 %20, 1, !dbg !191
  store i32 %inc, ptr %i, align 4, !dbg !191
  %21 = load i32, ptr %res, align 4, !dbg !192
  %cmp18 = icmp eq i32 %21, 1, !dbg !194
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !195

if.then19:                                        ; preds = %if.end17
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !196

if.end20:                                         ; preds = %if.end17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !197
  br label %cleanup21, !dbg !197

cleanup21:                                        ; preds = %if.end20, %if.then19, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pint) #4, !dbg !197
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 0, label %cleanup.cont23
    i32 3, label %while.end
  ]

cleanup.cont23:                                   ; preds = %cleanup21
  br label %while.cond, !dbg !143, !llvm.loop !198

while.end:                                        ; preds = %cleanup21, %lor.end
  %22 = load i32, ptr %i, align 4, !dbg !201
  %sub24 = sub i32 %22, 1, !dbg !202
  %23 = load ptr, ptr %ints.addr, align 8, !dbg !203
  %arrayidx = getelementptr i32, ptr %23, i64 0, !dbg !203
  store i32 %sub24, ptr %arrayidx, align 4, !dbg !204
  %24 = load ptr, ptr %str.addr, align 8, !dbg !205
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !206
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #4, !dbg !206
  call void @llvm.lifetime.end.p0(i64 1, ptr %validate) #4, !dbg !206
  ret ptr %24, !dbg !207

unreachable:                                      ; preds = %cleanup21
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_range(ptr noundef %str, ptr noundef %pint, i32 noundef %n) #0 align 16 !dbg !208 {
entry:
  %str.addr = alloca ptr, align 8
  %pint.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %inc_counter = alloca i32, align 4
  %upper_range = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !212, metadata !DIExpression()), !dbg !218
  store ptr %pint, ptr %pint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pint.addr, metadata !213, metadata !DIExpression()), !dbg !219
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !214, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %x, metadata !215, metadata !DIExpression()), !dbg !222
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_counter) #4, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %inc_counter, metadata !216, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper_range) #4, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %upper_range, metadata !217, metadata !DIExpression()), !dbg !224
  %0 = load ptr, ptr %str.addr, align 8, !dbg !225
  %1 = load ptr, ptr %0, align 8, !dbg !226
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !226
  store ptr %incdec.ptr, ptr %0, align 8, !dbg !226
  %2 = load ptr, ptr %str.addr, align 8, !dbg !227
  %3 = load ptr, ptr %2, align 8, !dbg !228
  %call = call i64 @simple_strtol(ptr noundef %3, ptr noundef null, i32 noundef 0) #5, !dbg !229
  %conv = trunc i64 %call to i32, !dbg !229
  store i32 %conv, ptr %upper_range, align 4, !dbg !230
  %4 = load i32, ptr %upper_range, align 4, !dbg !231
  %5 = load ptr, ptr %pint.addr, align 8, !dbg !232
  %6 = load i32, ptr %5, align 4, !dbg !233
  %sub = sub i32 %4, %6, !dbg !234
  store i32 %sub, ptr %inc_counter, align 4, !dbg !235
  %7 = load ptr, ptr %pint.addr, align 8, !dbg !236
  %8 = load i32, ptr %7, align 4, !dbg !238
  store i32 %8, ptr %x, align 4, !dbg !239
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !241
  %tobool = icmp ne i32 %9, 0, !dbg !241
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !243

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, ptr %x, align 4, !dbg !244
  %11 = load i32, ptr %upper_range, align 4, !dbg !245
  %cmp = icmp slt i32 %10, %11, !dbg !246
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !247
  br i1 %12, label %for.body, label %for.end, !dbg !248

for.body:                                         ; preds = %land.end
  %13 = load i32, ptr %x, align 4, !dbg !249
  %14 = load ptr, ptr %pint.addr, align 8, !dbg !250
  %incdec.ptr2 = getelementptr i32, ptr %14, i32 1, !dbg !250
  store ptr %incdec.ptr2, ptr %pint.addr, align 8, !dbg !250
  store i32 %13, ptr %14, align 4, !dbg !251
  br label %for.inc, !dbg !252

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %x, align 4, !dbg !253
  %inc = add i32 %15, 1, !dbg !253
  store i32 %inc, ptr %x, align 4, !dbg !253
  %16 = load i32, ptr %n.addr, align 4, !dbg !254
  %dec = add i32 %16, -1, !dbg !254
  store i32 %dec, ptr %n.addr, align 4, !dbg !254
  br label %for.cond, !dbg !255, !llvm.loop !256

for.end:                                          ; preds = %land.end
  %17 = load i32, ptr %inc_counter, align 4, !dbg !258
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper_range) #4, !dbg !259
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_counter) #4, !dbg !259
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4, !dbg !259
  ret i32 %17, !dbg !260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @memparse(ptr noundef %ptr, ptr noundef %retptr) #0 align 16 !dbg !261 {
entry:
  %ptr.addr = alloca ptr, align 8
  %retptr.addr = alloca ptr, align 8
  %endptr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !265, metadata !DIExpression()), !dbg !269
  store ptr %retptr, ptr %retptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %retptr.addr, metadata !266, metadata !DIExpression()), !dbg !270
  call void @llvm.lifetime.start.p0(i64 8, ptr %endptr) #4, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %endptr, metadata !267, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !268, metadata !DIExpression()), !dbg !274
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !275
  %call = call i64 @simple_strtoull(ptr noundef %0, ptr noundef %endptr, i32 noundef 0) #5, !dbg !276
  store i64 %call, ptr %ret, align 8, !dbg !274
  %1 = load ptr, ptr %endptr, align 8, !dbg !277
  %2 = load i8, ptr %1, align 1, !dbg !278
  %conv = zext i8 %2 to i32, !dbg !278
  switch i32 %conv, label %sw.default [
    i32 69, label %sw.bb
    i32 101, label %sw.bb
    i32 80, label %sw.bb1
    i32 112, label %sw.bb1
    i32 84, label %sw.bb3
    i32 116, label %sw.bb3
    i32 71, label %sw.bb5
    i32 103, label %sw.bb5
    i32 77, label %sw.bb7
    i32 109, label %sw.bb7
    i32 75, label %sw.bb9
    i32 107, label %sw.bb9
  ], !dbg !279

sw.bb:                                            ; preds = %entry, %entry
  %3 = load i64, ptr %ret, align 8, !dbg !280
  %shl = shl i64 %3, 10, !dbg !280
  store i64 %shl, ptr %ret, align 8, !dbg !280
  br label %sw.bb1, !dbg !282

sw.bb1:                                           ; preds = %entry, %entry, %sw.bb
  %4 = load i64, ptr %ret, align 8, !dbg !283
  %shl2 = shl i64 %4, 10, !dbg !283
  store i64 %shl2, ptr %ret, align 8, !dbg !283
  br label %sw.bb3, !dbg !284

sw.bb3:                                           ; preds = %entry, %entry, %sw.bb1
  %5 = load i64, ptr %ret, align 8, !dbg !285
  %shl4 = shl i64 %5, 10, !dbg !285
  store i64 %shl4, ptr %ret, align 8, !dbg !285
  br label %sw.bb5, !dbg !286

sw.bb5:                                           ; preds = %entry, %entry, %sw.bb3
  %6 = load i64, ptr %ret, align 8, !dbg !287
  %shl6 = shl i64 %6, 10, !dbg !287
  store i64 %shl6, ptr %ret, align 8, !dbg !287
  br label %sw.bb7, !dbg !288

sw.bb7:                                           ; preds = %entry, %entry, %sw.bb5
  %7 = load i64, ptr %ret, align 8, !dbg !289
  %shl8 = shl i64 %7, 10, !dbg !289
  store i64 %shl8, ptr %ret, align 8, !dbg !289
  br label %sw.bb9, !dbg !290

sw.bb9:                                           ; preds = %entry, %entry, %sw.bb7
  %8 = load i64, ptr %ret, align 8, !dbg !291
  %shl10 = shl i64 %8, 10, !dbg !291
  store i64 %shl10, ptr %ret, align 8, !dbg !291
  %9 = load ptr, ptr %endptr, align 8, !dbg !292
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !292
  store ptr %incdec.ptr, ptr %endptr, align 8, !dbg !292
  br label %sw.default, !dbg !293

sw.default:                                       ; preds = %entry, %sw.bb9
  br label %sw.epilog, !dbg !294

sw.epilog:                                        ; preds = %sw.default
  %10 = load ptr, ptr %retptr.addr, align 8, !dbg !295
  %tobool = icmp ne ptr %10, null, !dbg !295
  br i1 %tobool, label %if.then, label %if.end, !dbg !297

if.then:                                          ; preds = %sw.epilog
  %11 = load ptr, ptr %endptr, align 8, !dbg !298
  %12 = load ptr, ptr %retptr.addr, align 8, !dbg !299
  store ptr %11, ptr %12, align 8, !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then, %sw.epilog
  %13 = load i64, ptr %ret, align 8, !dbg !302
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4, !dbg !303
  call void @llvm.lifetime.end.p0(i64 8, ptr %endptr) #4, !dbg !303
  ret i64 %13, !dbg !304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @parse_option_str(ptr noundef %str, ptr noundef %option) #0 align 16 !dbg !305 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !309, metadata !DIExpression()), !dbg !311
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !310, metadata !DIExpression()), !dbg !312
  br label %while.cond, !dbg !313

while.cond:                                       ; preds = %if.end20, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !314
  %1 = load i8, ptr %0, align 1, !dbg !315
  %tobool = icmp ne i8 %1, 0, !dbg !313
  br i1 %tobool, label %while.body, label %while.end21, !dbg !313

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8, !dbg !316
  %3 = load ptr, ptr %option.addr, align 8, !dbg !319
  %4 = load ptr, ptr %option.addr, align 8, !dbg !320
  %call = call i64 @strlen(ptr noundef %4) #5, !dbg !321
  %call1 = call i32 @strncmp(ptr noundef %2, ptr noundef %3, i64 noundef %call) #5, !dbg !322
  %tobool2 = icmp ne i32 %call1, 0, !dbg !322
  br i1 %tobool2, label %if.end7, label %if.then, !dbg !323

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %option.addr, align 8, !dbg !324
  %call3 = call i64 @strlen(ptr noundef %5) #5, !dbg !326
  %6 = load ptr, ptr %str.addr, align 8, !dbg !327
  %add.ptr = getelementptr i8, ptr %6, i64 %call3, !dbg !327
  store ptr %add.ptr, ptr %str.addr, align 8, !dbg !327
  %7 = load ptr, ptr %str.addr, align 8, !dbg !328
  %8 = load i8, ptr %7, align 1, !dbg !330
  %tobool4 = icmp ne i8 %8, 0, !dbg !330
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !331

lor.lhs.false:                                    ; preds = %if.then
  %9 = load ptr, ptr %str.addr, align 8, !dbg !332
  %10 = load i8, ptr %9, align 1, !dbg !333
  %conv = zext i8 %10 to i32, !dbg !333
  %cmp = icmp eq i32 %conv, 44, !dbg !334
  br i1 %cmp, label %if.then6, label %if.end, !dbg !335

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i1 true, ptr %retval, align 1, !dbg !336
  br label %return, !dbg !336

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end7, !dbg !337

if.end7:                                          ; preds = %if.end, %while.body
  br label %while.cond8, !dbg !338

while.cond8:                                      ; preds = %while.body14, %if.end7
  %11 = load ptr, ptr %str.addr, align 8, !dbg !339
  %12 = load i8, ptr %11, align 1, !dbg !340
  %conv9 = zext i8 %12 to i32, !dbg !340
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !340
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !341

land.rhs:                                         ; preds = %while.cond8
  %13 = load ptr, ptr %str.addr, align 8, !dbg !342
  %14 = load i8, ptr %13, align 1, !dbg !343
  %conv11 = zext i8 %14 to i32, !dbg !343
  %cmp12 = icmp ne i32 %conv11, 44, !dbg !344
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %15 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs ], !dbg !345
  br i1 %15, label %while.body14, label %while.end, !dbg !338

while.body14:                                     ; preds = %land.end
  %16 = load ptr, ptr %str.addr, align 8, !dbg !346
  %incdec.ptr = getelementptr i8, ptr %16, i32 1, !dbg !346
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !346
  br label %while.cond8, !dbg !338, !llvm.loop !347

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %str.addr, align 8, !dbg !348
  %18 = load i8, ptr %17, align 1, !dbg !350
  %conv15 = zext i8 %18 to i32, !dbg !350
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !351
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !352

if.then18:                                        ; preds = %while.end
  %19 = load ptr, ptr %str.addr, align 8, !dbg !353
  %incdec.ptr19 = getelementptr i8, ptr %19, i32 1, !dbg !353
  store ptr %incdec.ptr19, ptr %str.addr, align 8, !dbg !353
  br label %if.end20, !dbg !354

if.end20:                                         ; preds = %if.then18, %while.end
  br label %while.cond, !dbg !313, !llvm.loop !355

while.end21:                                      ; preds = %while.cond
  store i1 false, ptr %retval, align 1, !dbg !357
  br label %return, !dbg !357

return:                                           ; preds = %while.end21, %if.then6
  %20 = load i1, ptr %retval, align 1, !dbg !358
  ret i1 %20, !dbg !358
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !359 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !367 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @next_arg(ptr noundef %args, ptr noundef %param, ptr noundef %val) #0 align 16 !dbg !370 {
entry:
  %args.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %equals = alloca i32, align 4
  %in_quote = alloca i32, align 4
  %quoted = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !374, metadata !DIExpression()), !dbg !381
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !375, metadata !DIExpression()), !dbg !382
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !376, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %i, metadata !377, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 4, ptr %equals) #4, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %equals, metadata !378, metadata !DIExpression()), !dbg !386
  store i32 0, ptr %equals, align 4, !dbg !386
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_quote) #4, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %in_quote, metadata !379, metadata !DIExpression()), !dbg !388
  store i32 0, ptr %in_quote, align 4, !dbg !388
  call void @llvm.lifetime.start.p0(i64 4, ptr %quoted) #4, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %quoted, metadata !380, metadata !DIExpression()), !dbg !389
  store i32 0, ptr %quoted, align 4, !dbg !389
  %0 = load ptr, ptr %args.addr, align 8, !dbg !390
  %1 = load i8, ptr %0, align 1, !dbg !392
  %conv = zext i8 %1 to i32, !dbg !392
  %cmp = icmp eq i32 %conv, 34, !dbg !393
  br i1 %cmp, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %args.addr, align 8, !dbg !395
  %incdec.ptr = getelementptr i8, ptr %2, i32 1, !dbg !395
  store ptr %incdec.ptr, ptr %args.addr, align 8, !dbg !395
  store i32 1, ptr %in_quote, align 4, !dbg !397
  store i32 1, ptr %quoted, align 4, !dbg !398
  br label %if.end, !dbg !399

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !400
  br label %for.cond, !dbg !402

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %args.addr, align 8, !dbg !403
  %4 = load i32, ptr %i, align 4, !dbg !405
  %idxprom = zext i32 %4 to i64, !dbg !403
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !403
  %5 = load i8, ptr %arrayidx, align 1, !dbg !403
  %tobool = icmp ne i8 %5, 0, !dbg !406
  br i1 %tobool, label %for.body, label %for.end, !dbg !406

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %args.addr, align 8, !dbg !407
  %7 = load i32, ptr %i, align 4, !dbg !407
  %idxprom2 = zext i32 %7 to i64, !dbg !407
  %arrayidx3 = getelementptr i8, ptr %6, i64 %idxprom2, !dbg !407
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !407
  %conv4 = zext i8 %8 to i32, !dbg !407
  %idxprom5 = sext i32 %conv4 to i64, !dbg !407
  %arrayidx6 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom5, !dbg !407
  %9 = load i8, ptr %arrayidx6, align 1, !dbg !407
  %conv7 = zext i8 %9 to i32, !dbg !407
  %and = and i32 %conv7, 32, !dbg !407
  %cmp8 = icmp ne i32 %and, 0, !dbg !407
  br i1 %cmp8, label %land.lhs.true, label %if.end12, !dbg !410

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, ptr %in_quote, align 4, !dbg !411
  %tobool10 = icmp ne i32 %10, 0, !dbg !411
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !412

if.then11:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !413

if.end12:                                         ; preds = %land.lhs.true, %for.body
  %11 = load i32, ptr %equals, align 4, !dbg !414
  %cmp13 = icmp eq i32 %11, 0, !dbg !416
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !417

if.then15:                                        ; preds = %if.end12
  %12 = load ptr, ptr %args.addr, align 8, !dbg !418
  %13 = load i32, ptr %i, align 4, !dbg !421
  %idxprom16 = zext i32 %13 to i64, !dbg !418
  %arrayidx17 = getelementptr i8, ptr %12, i64 %idxprom16, !dbg !418
  %14 = load i8, ptr %arrayidx17, align 1, !dbg !418
  %conv18 = zext i8 %14 to i32, !dbg !418
  %cmp19 = icmp eq i32 %conv18, 61, !dbg !422
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !423

if.then21:                                        ; preds = %if.then15
  %15 = load i32, ptr %i, align 4, !dbg !424
  store i32 %15, ptr %equals, align 4, !dbg !425
  br label %if.end22, !dbg !426

if.end22:                                         ; preds = %if.then21, %if.then15
  br label %if.end23, !dbg !427

if.end23:                                         ; preds = %if.end22, %if.end12
  %16 = load ptr, ptr %args.addr, align 8, !dbg !428
  %17 = load i32, ptr %i, align 4, !dbg !430
  %idxprom24 = zext i32 %17 to i64, !dbg !428
  %arrayidx25 = getelementptr i8, ptr %16, i64 %idxprom24, !dbg !428
  %18 = load i8, ptr %arrayidx25, align 1, !dbg !428
  %conv26 = zext i8 %18 to i32, !dbg !428
  %cmp27 = icmp eq i32 %conv26, 34, !dbg !431
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !432

if.then29:                                        ; preds = %if.end23
  %19 = load i32, ptr %in_quote, align 4, !dbg !433
  %tobool30 = icmp ne i32 %19, 0, !dbg !434
  %lnot = xor i1 %tobool30, true, !dbg !434
  %lnot.ext = zext i1 %lnot to i32, !dbg !434
  store i32 %lnot.ext, ptr %in_quote, align 4, !dbg !435
  br label %if.end31, !dbg !436

if.end31:                                         ; preds = %if.then29, %if.end23
  br label %for.inc, !dbg !437

for.inc:                                          ; preds = %if.end31
  %20 = load i32, ptr %i, align 4, !dbg !438
  %inc = add i32 %20, 1, !dbg !438
  store i32 %inc, ptr %i, align 4, !dbg !438
  br label %for.cond, !dbg !439, !llvm.loop !440

for.end:                                          ; preds = %if.then11, %for.cond
  %21 = load ptr, ptr %args.addr, align 8, !dbg !442
  %22 = load ptr, ptr %param.addr, align 8, !dbg !443
  store ptr %21, ptr %22, align 8, !dbg !444
  %23 = load i32, ptr %equals, align 4, !dbg !445
  %tobool32 = icmp ne i32 %23, 0, !dbg !445
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !447

if.then33:                                        ; preds = %for.end
  %24 = load ptr, ptr %val.addr, align 8, !dbg !448
  store ptr null, ptr %24, align 8, !dbg !449
  br label %if.end53, !dbg !450

if.else:                                          ; preds = %for.end
  %25 = load ptr, ptr %args.addr, align 8, !dbg !451
  %26 = load i32, ptr %equals, align 4, !dbg !453
  %idxprom34 = zext i32 %26 to i64, !dbg !451
  %arrayidx35 = getelementptr i8, ptr %25, i64 %idxprom34, !dbg !451
  store i8 0, ptr %arrayidx35, align 1, !dbg !454
  %27 = load ptr, ptr %args.addr, align 8, !dbg !455
  %28 = load i32, ptr %equals, align 4, !dbg !456
  %idx.ext = zext i32 %28 to i64, !dbg !457
  %add.ptr = getelementptr i8, ptr %27, i64 %idx.ext, !dbg !457
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !458
  %29 = load ptr, ptr %val.addr, align 8, !dbg !459
  store ptr %add.ptr36, ptr %29, align 8, !dbg !460
  %30 = load ptr, ptr %val.addr, align 8, !dbg !461
  %31 = load ptr, ptr %30, align 8, !dbg !463
  %32 = load i8, ptr %31, align 1, !dbg !464
  %conv37 = zext i8 %32 to i32, !dbg !464
  %cmp38 = icmp eq i32 %conv37, 34, !dbg !465
  br i1 %cmp38, label %if.then40, label %if.end52, !dbg !466

if.then40:                                        ; preds = %if.else
  %33 = load ptr, ptr %val.addr, align 8, !dbg !467
  %34 = load ptr, ptr %33, align 8, !dbg !469
  %incdec.ptr41 = getelementptr i8, ptr %34, i32 1, !dbg !469
  store ptr %incdec.ptr41, ptr %33, align 8, !dbg !469
  %35 = load ptr, ptr %args.addr, align 8, !dbg !470
  %36 = load i32, ptr %i, align 4, !dbg !472
  %sub = sub i32 %36, 1, !dbg !473
  %idxprom42 = zext i32 %sub to i64, !dbg !470
  %arrayidx43 = getelementptr i8, ptr %35, i64 %idxprom42, !dbg !470
  %37 = load i8, ptr %arrayidx43, align 1, !dbg !470
  %conv44 = zext i8 %37 to i32, !dbg !470
  %cmp45 = icmp eq i32 %conv44, 34, !dbg !474
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !475

if.then47:                                        ; preds = %if.then40
  %38 = load ptr, ptr %args.addr, align 8, !dbg !476
  %39 = load i32, ptr %i, align 4, !dbg !477
  %sub48 = sub i32 %39, 1, !dbg !478
  %idxprom49 = zext i32 %sub48 to i64, !dbg !476
  %arrayidx50 = getelementptr i8, ptr %38, i64 %idxprom49, !dbg !476
  store i8 0, ptr %arrayidx50, align 1, !dbg !479
  br label %if.end51, !dbg !476

if.end51:                                         ; preds = %if.then47, %if.then40
  br label %if.end52, !dbg !480

if.end52:                                         ; preds = %if.end51, %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then33
  %40 = load i32, ptr %quoted, align 4, !dbg !481
  %tobool54 = icmp ne i32 %40, 0, !dbg !481
  br i1 %tobool54, label %land.lhs.true55, label %if.end69, !dbg !483

land.lhs.true55:                                  ; preds = %if.end53
  %41 = load i32, ptr %i, align 4, !dbg !484
  %cmp56 = icmp ugt i32 %41, 0, !dbg !485
  br i1 %cmp56, label %land.lhs.true58, label %if.end69, !dbg !486

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %42 = load ptr, ptr %args.addr, align 8, !dbg !487
  %43 = load i32, ptr %i, align 4, !dbg !488
  %sub59 = sub i32 %43, 1, !dbg !489
  %idxprom60 = zext i32 %sub59 to i64, !dbg !487
  %arrayidx61 = getelementptr i8, ptr %42, i64 %idxprom60, !dbg !487
  %44 = load i8, ptr %arrayidx61, align 1, !dbg !487
  %conv62 = zext i8 %44 to i32, !dbg !487
  %cmp63 = icmp eq i32 %conv62, 34, !dbg !490
  br i1 %cmp63, label %if.then65, label %if.end69, !dbg !491

if.then65:                                        ; preds = %land.lhs.true58
  %45 = load ptr, ptr %args.addr, align 8, !dbg !492
  %46 = load i32, ptr %i, align 4, !dbg !493
  %sub66 = sub i32 %46, 1, !dbg !494
  %idxprom67 = zext i32 %sub66 to i64, !dbg !492
  %arrayidx68 = getelementptr i8, ptr %45, i64 %idxprom67, !dbg !492
  store i8 0, ptr %arrayidx68, align 1, !dbg !495
  br label %if.end69, !dbg !492

if.end69:                                         ; preds = %if.then65, %land.lhs.true58, %land.lhs.true55, %if.end53
  %47 = load ptr, ptr %args.addr, align 8, !dbg !496
  %48 = load i32, ptr %i, align 4, !dbg !498
  %idxprom70 = zext i32 %48 to i64, !dbg !496
  %arrayidx71 = getelementptr i8, ptr %47, i64 %idxprom70, !dbg !496
  %49 = load i8, ptr %arrayidx71, align 1, !dbg !496
  %tobool72 = icmp ne i8 %49, 0, !dbg !496
  br i1 %tobool72, label %if.then73, label %if.else78, !dbg !499

if.then73:                                        ; preds = %if.end69
  %50 = load ptr, ptr %args.addr, align 8, !dbg !500
  %51 = load i32, ptr %i, align 4, !dbg !502
  %idxprom74 = zext i32 %51 to i64, !dbg !500
  %arrayidx75 = getelementptr i8, ptr %50, i64 %idxprom74, !dbg !500
  store i8 0, ptr %arrayidx75, align 1, !dbg !503
  %52 = load i32, ptr %i, align 4, !dbg !504
  %add = add i32 %52, 1, !dbg !505
  %53 = load ptr, ptr %args.addr, align 8, !dbg !506
  %idx.ext76 = zext i32 %add to i64, !dbg !506
  %add.ptr77 = getelementptr i8, ptr %53, i64 %idx.ext76, !dbg !506
  store ptr %add.ptr77, ptr %args.addr, align 8, !dbg !506
  br label %if.end81, !dbg !507

if.else78:                                        ; preds = %if.end69
  %54 = load i32, ptr %i, align 4, !dbg !508
  %55 = load ptr, ptr %args.addr, align 8, !dbg !509
  %idx.ext79 = zext i32 %54 to i64, !dbg !509
  %add.ptr80 = getelementptr i8, ptr %55, i64 %idx.ext79, !dbg !509
  store ptr %add.ptr80, ptr %args.addr, align 8, !dbg !509
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then73
  %56 = load ptr, ptr %args.addr, align 8, !dbg !510
  %call = call ptr @skip_spaces(ptr noundef %56) #5, !dbg !511
  call void @llvm.lifetime.end.p0(i64 4, ptr %quoted) #4, !dbg !512
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_quote) #4, !dbg !512
  call void @llvm.lifetime.end.p0(i64 4, ptr %equals) #4, !dbg !512
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !512
  ret ptr %call, !dbg !513
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !514 dso_local ptr @skip_spaces(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !517 dso_local i64 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_option3", scope: !2, file: !3, line: 80, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.cmdline.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/cmdline\22 -D KBUILD_BASENAME=\22cmdline\22 -D KBUILD_MODNAME=\22cmdline\22 -D __KBUILD_MODNAME=kmod_cmdline -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/cmdline.ll lib/cmdline.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e6e1e1bf5ecca5aab0462e451cfcdf2")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !16, !17}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!0, !19, !21, !23}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_options4", scope: !2, file: !3, line: 139, type: !12, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memparse5", scope: !2, file: !3, line: 191, type: !12, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_next_arg6", scope: !2, file: !3, line: 275, type: !12, isLocal: true, isDefinition: true)
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 8, !"cf-protection-branch", i32 1}
!29 = !{i32 4, !"function_return_thunk_extern", i32 1}
!30 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!31 = !{i32 1, !"Code Model", i32 2}
!32 = !{i32 1, !"override-stack-alignment", i32 8}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = distinct !DISubprogram(name: "get_option", scope: !3, file: !3, line: 56, type: !35, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!35 = !DISubroutineType(types: !36)
!36 = !{!16, !13, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!38 = !{!39, !40, !41, !42}
!39 = !DILocalVariable(name: "str", arg: 1, scope: !34, file: !3, line: 56, type: !13)
!40 = !DILocalVariable(name: "pint", arg: 2, scope: !34, file: !3, line: 56, type: !37)
!41 = !DILocalVariable(name: "cur", scope: !34, file: !3, line: 58, type: !14)
!42 = !DILocalVariable(name: "value", scope: !34, file: !3, line: 59, type: !16)
!43 = !DILocation(line: 56, column: 23, scope: !34)
!44 = !DILocation(line: 56, column: 33, scope: !34)
!45 = !DILocation(line: 58, column: 2, scope: !34)
!46 = !DILocation(line: 58, column: 8, scope: !34)
!47 = !DILocation(line: 58, column: 15, scope: !34)
!48 = !DILocation(line: 58, column: 14, scope: !34)
!49 = !DILocation(line: 59, column: 2, scope: !34)
!50 = !DILocation(line: 59, column: 6, scope: !34)
!51 = !DILocation(line: 61, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !34, file: !3, line: 61, column: 6)
!53 = !DILocation(line: 61, column: 11, scope: !52)
!54 = !DILocation(line: 61, column: 17, scope: !52)
!55 = !DILocation(line: 61, column: 16, scope: !52)
!56 = !DILocation(line: 61, column: 15, scope: !52)
!57 = !DILocation(line: 61, column: 6, scope: !34)
!58 = !DILocation(line: 62, column: 3, scope: !52)
!59 = !DILocation(line: 63, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !34, file: !3, line: 63, column: 6)
!61 = !DILocation(line: 63, column: 6, scope: !60)
!62 = !DILocation(line: 63, column: 11, scope: !60)
!63 = !DILocation(line: 63, column: 6, scope: !34)
!64 = !DILocation(line: 64, column: 28, scope: !60)
!65 = !DILocation(line: 64, column: 35, scope: !60)
!66 = !DILocation(line: 64, column: 12, scope: !60)
!67 = !DILocation(line: 64, column: 11, scope: !60)
!68 = !DILocation(line: 64, column: 9, scope: !60)
!69 = !DILocation(line: 64, column: 3, scope: !60)
!70 = !DILocation(line: 66, column: 27, scope: !60)
!71 = !DILocation(line: 66, column: 32, scope: !60)
!72 = !DILocation(line: 66, column: 11, scope: !60)
!73 = !DILocation(line: 66, column: 9, scope: !60)
!74 = !DILocation(line: 67, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !34, file: !3, line: 67, column: 6)
!76 = !DILocation(line: 67, column: 6, scope: !34)
!77 = !DILocation(line: 68, column: 11, scope: !75)
!78 = !DILocation(line: 68, column: 4, scope: !75)
!79 = !DILocation(line: 68, column: 9, scope: !75)
!80 = !DILocation(line: 68, column: 3, scope: !75)
!81 = !DILocation(line: 69, column: 6, scope: !82)
!82 = distinct !DILexicalBlock(scope: !34, file: !3, line: 69, column: 6)
!83 = !DILocation(line: 69, column: 14, scope: !82)
!84 = !DILocation(line: 69, column: 13, scope: !82)
!85 = !DILocation(line: 69, column: 10, scope: !82)
!86 = !DILocation(line: 69, column: 6, scope: !34)
!87 = !DILocation(line: 70, column: 3, scope: !82)
!88 = !DILocation(line: 71, column: 8, scope: !89)
!89 = distinct !DILexicalBlock(scope: !34, file: !3, line: 71, column: 6)
!90 = !DILocation(line: 71, column: 7, scope: !89)
!91 = !DILocation(line: 71, column: 6, scope: !89)
!92 = !DILocation(line: 71, column: 12, scope: !89)
!93 = !DILocation(line: 71, column: 6, scope: !34)
!94 = !DILocation(line: 72, column: 5, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !3, line: 71, column: 20)
!96 = !DILocation(line: 72, column: 9, scope: !95)
!97 = !DILocation(line: 73, column: 3, scope: !95)
!98 = !DILocation(line: 75, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !34, file: !3, line: 75, column: 6)
!100 = !DILocation(line: 75, column: 7, scope: !99)
!101 = !DILocation(line: 75, column: 6, scope: !99)
!102 = !DILocation(line: 75, column: 12, scope: !99)
!103 = !DILocation(line: 75, column: 6, scope: !34)
!104 = !DILocation(line: 76, column: 3, scope: !99)
!105 = !DILocation(line: 78, column: 2, scope: !34)
!106 = !DILocation(line: 79, column: 1, scope: !34)
!107 = !DISubprogram(name: "simple_strtoull", scope: !108, file: !108, line: 147, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !112, !13, !7}
!111 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!114 = distinct !DISubprogram(name: "get_options", scope: !3, file: !3, line: 107, type: !115, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!14, !112, !16, !37}
!117 = !{!118, !119, !120, !121, !125, !126, !127, !129, !132}
!118 = !DILocalVariable(name: "str", arg: 1, scope: !114, file: !3, line: 107, type: !112)
!119 = !DILocalVariable(name: "nints", arg: 2, scope: !114, file: !3, line: 107, type: !16)
!120 = !DILocalVariable(name: "ints", arg: 3, scope: !114, file: !3, line: 107, type: !37)
!121 = !DILocalVariable(name: "validate", scope: !114, file: !3, line: 109, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !123, line: 35, baseType: !124)
!123 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!124 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!125 = !DILocalVariable(name: "res", scope: !114, file: !3, line: 110, type: !16)
!126 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 110, type: !16)
!127 = !DILocalVariable(name: "pint", scope: !128, file: !3, line: 113, type: !37)
!128 = distinct !DILexicalBlock(scope: !114, file: !3, line: 112, column: 32)
!129 = !DILocalVariable(name: "n", scope: !130, file: !3, line: 119, type: !16)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 118, column: 17)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 118, column: 7)
!132 = !DILocalVariable(name: "range_nums", scope: !130, file: !3, line: 120, type: !16)
!133 = !DILocation(line: 107, column: 31, scope: !114)
!134 = !DILocation(line: 107, column: 40, scope: !114)
!135 = !DILocation(line: 107, column: 52, scope: !114)
!136 = !DILocation(line: 109, column: 2, scope: !114)
!137 = !DILocation(line: 109, column: 7, scope: !114)
!138 = !DILocation(line: 109, column: 19, scope: !114)
!139 = !DILocation(line: 109, column: 25, scope: !114)
!140 = !DILocation(line: 110, column: 2, scope: !114)
!141 = !DILocation(line: 110, column: 6, scope: !114)
!142 = !DILocation(line: 110, column: 11, scope: !114)
!143 = !DILocation(line: 112, column: 2, scope: !114)
!144 = !DILocation(line: 112, column: 9, scope: !114)
!145 = !DILocation(line: 112, column: 13, scope: !114)
!146 = !DILocation(line: 112, column: 11, scope: !114)
!147 = !DILocation(line: 112, column: 19, scope: !114)
!148 = !DILocation(line: 112, column: 22, scope: !114)
!149 = !{i8 0, i8 2}
!150 = !{}
!151 = !DILocation(line: 113, column: 3, scope: !128)
!152 = !DILocation(line: 113, column: 8, scope: !128)
!153 = !DILocation(line: 113, column: 15, scope: !128)
!154 = !DILocation(line: 113, column: 26, scope: !128)
!155 = !DILocation(line: 113, column: 33, scope: !128)
!156 = !DILocation(line: 113, column: 40, scope: !128)
!157 = !DILocation(line: 113, column: 38, scope: !128)
!158 = !DILocation(line: 115, column: 35, scope: !128)
!159 = !DILocation(line: 115, column: 9, scope: !128)
!160 = !DILocation(line: 115, column: 7, scope: !128)
!161 = !DILocation(line: 116, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !128, file: !3, line: 116, column: 7)
!163 = !DILocation(line: 116, column: 11, scope: !162)
!164 = !DILocation(line: 116, column: 7, scope: !128)
!165 = !DILocation(line: 117, column: 4, scope: !162)
!166 = !DILocation(line: 118, column: 7, scope: !131)
!167 = !DILocation(line: 118, column: 11, scope: !131)
!168 = !DILocation(line: 118, column: 7, scope: !128)
!169 = !DILocation(line: 119, column: 4, scope: !130)
!170 = !DILocation(line: 119, column: 8, scope: !130)
!171 = !DILocation(line: 119, column: 12, scope: !130)
!172 = !DILocation(line: 119, column: 27, scope: !130)
!173 = !DILocation(line: 119, column: 35, scope: !130)
!174 = !DILocation(line: 119, column: 33, scope: !130)
!175 = !DILocation(line: 120, column: 4, scope: !130)
!176 = !DILocation(line: 120, column: 8, scope: !130)
!177 = !DILocation(line: 122, column: 42, scope: !130)
!178 = !DILocation(line: 122, column: 48, scope: !130)
!179 = !DILocation(line: 122, column: 17, scope: !130)
!180 = !DILocation(line: 122, column: 15, scope: !130)
!181 = !DILocation(line: 123, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !130, file: !3, line: 123, column: 8)
!183 = !DILocation(line: 123, column: 19, scope: !182)
!184 = !DILocation(line: 123, column: 8, scope: !130)
!185 = !DILocation(line: 124, column: 5, scope: !182)
!186 = !DILocation(line: 130, column: 10, scope: !130)
!187 = !DILocation(line: 130, column: 21, scope: !130)
!188 = !DILocation(line: 130, column: 6, scope: !130)
!189 = !DILocation(line: 131, column: 3, scope: !131)
!190 = !DILocation(line: 131, column: 3, scope: !130)
!191 = !DILocation(line: 132, column: 4, scope: !128)
!192 = !DILocation(line: 133, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !128, file: !3, line: 133, column: 7)
!194 = !DILocation(line: 133, column: 11, scope: !193)
!195 = !DILocation(line: 133, column: 7, scope: !128)
!196 = !DILocation(line: 134, column: 4, scope: !193)
!197 = !DILocation(line: 135, column: 2, scope: !114)
!198 = distinct !{!198, !143, !197, !199, !200}
!199 = !{!"llvm.loop.mustprogress"}
!200 = !{!"llvm.loop.unroll.disable"}
!201 = !DILocation(line: 136, column: 12, scope: !114)
!202 = !DILocation(line: 136, column: 14, scope: !114)
!203 = !DILocation(line: 136, column: 2, scope: !114)
!204 = !DILocation(line: 136, column: 10, scope: !114)
!205 = !DILocation(line: 137, column: 17, scope: !114)
!206 = !DILocation(line: 138, column: 1, scope: !114)
!207 = !DILocation(line: 137, column: 2, scope: !114)
!208 = distinct !DISubprogram(name: "get_range", scope: !3, file: !3, line: 23, type: !209, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!16, !13, !37, !16}
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DILocalVariable(name: "str", arg: 1, scope: !208, file: !3, line: 23, type: !13)
!213 = !DILocalVariable(name: "pint", arg: 2, scope: !208, file: !3, line: 23, type: !37)
!214 = !DILocalVariable(name: "n", arg: 3, scope: !208, file: !3, line: 23, type: !16)
!215 = !DILocalVariable(name: "x", scope: !208, file: !3, line: 25, type: !16)
!216 = !DILocalVariable(name: "inc_counter", scope: !208, file: !3, line: 25, type: !16)
!217 = !DILocalVariable(name: "upper_range", scope: !208, file: !3, line: 25, type: !16)
!218 = !DILocation(line: 23, column: 29, scope: !208)
!219 = !DILocation(line: 23, column: 39, scope: !208)
!220 = !DILocation(line: 23, column: 49, scope: !208)
!221 = !DILocation(line: 25, column: 2, scope: !208)
!222 = !DILocation(line: 25, column: 6, scope: !208)
!223 = !DILocation(line: 25, column: 9, scope: !208)
!224 = !DILocation(line: 25, column: 22, scope: !208)
!225 = !DILocation(line: 27, column: 4, scope: !208)
!226 = !DILocation(line: 27, column: 8, scope: !208)
!227 = !DILocation(line: 28, column: 32, scope: !208)
!228 = !DILocation(line: 28, column: 31, scope: !208)
!229 = !DILocation(line: 28, column: 16, scope: !208)
!230 = !DILocation(line: 28, column: 14, scope: !208)
!231 = !DILocation(line: 29, column: 16, scope: !208)
!232 = !DILocation(line: 29, column: 31, scope: !208)
!233 = !DILocation(line: 29, column: 30, scope: !208)
!234 = !DILocation(line: 29, column: 28, scope: !208)
!235 = !DILocation(line: 29, column: 14, scope: !208)
!236 = !DILocation(line: 30, column: 12, scope: !237)
!237 = distinct !DILexicalBlock(scope: !208, file: !3, line: 30, column: 2)
!238 = !DILocation(line: 30, column: 11, scope: !237)
!239 = !DILocation(line: 30, column: 9, scope: !237)
!240 = !DILocation(line: 30, column: 7, scope: !237)
!241 = !DILocation(line: 30, column: 18, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 30, column: 2)
!243 = !DILocation(line: 30, column: 20, scope: !242)
!244 = !DILocation(line: 30, column: 23, scope: !242)
!245 = !DILocation(line: 30, column: 27, scope: !242)
!246 = !DILocation(line: 30, column: 25, scope: !242)
!247 = !DILocation(line: 0, scope: !242)
!248 = !DILocation(line: 30, column: 2, scope: !237)
!249 = !DILocation(line: 31, column: 13, scope: !242)
!250 = !DILocation(line: 31, column: 8, scope: !242)
!251 = !DILocation(line: 31, column: 11, scope: !242)
!252 = !DILocation(line: 31, column: 3, scope: !242)
!253 = !DILocation(line: 30, column: 41, scope: !242)
!254 = !DILocation(line: 30, column: 46, scope: !242)
!255 = !DILocation(line: 30, column: 2, scope: !242)
!256 = distinct !{!256, !248, !257, !199, !200}
!257 = !DILocation(line: 31, column: 13, scope: !237)
!258 = !DILocation(line: 32, column: 9, scope: !208)
!259 = !DILocation(line: 33, column: 1, scope: !208)
!260 = !DILocation(line: 32, column: 2, scope: !208)
!261 = distinct !DISubprogram(name: "memparse", scope: !3, file: !3, line: 150, type: !262, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!111, !112, !13}
!264 = !{!265, !266, !267, !268}
!265 = !DILocalVariable(name: "ptr", arg: 1, scope: !261, file: !3, line: 150, type: !112)
!266 = !DILocalVariable(name: "retptr", arg: 2, scope: !261, file: !3, line: 150, type: !13)
!267 = !DILocalVariable(name: "endptr", scope: !261, file: !3, line: 152, type: !14)
!268 = !DILocalVariable(name: "ret", scope: !261, file: !3, line: 154, type: !111)
!269 = !DILocation(line: 150, column: 41, scope: !261)
!270 = !DILocation(line: 150, column: 53, scope: !261)
!271 = !DILocation(line: 152, column: 2, scope: !261)
!272 = !DILocation(line: 152, column: 8, scope: !261)
!273 = !DILocation(line: 154, column: 2, scope: !261)
!274 = !DILocation(line: 154, column: 21, scope: !261)
!275 = !DILocation(line: 154, column: 43, scope: !261)
!276 = !DILocation(line: 154, column: 27, scope: !261)
!277 = !DILocation(line: 156, column: 11, scope: !261)
!278 = !DILocation(line: 156, column: 10, scope: !261)
!279 = !DILocation(line: 156, column: 2, scope: !261)
!280 = !DILocation(line: 159, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !261, file: !3, line: 156, column: 19)
!282 = !DILocation(line: 159, column: 3, scope: !281)
!283 = !DILocation(line: 163, column: 7, scope: !281)
!284 = !DILocation(line: 163, column: 3, scope: !281)
!285 = !DILocation(line: 167, column: 7, scope: !281)
!286 = !DILocation(line: 167, column: 3, scope: !281)
!287 = !DILocation(line: 171, column: 7, scope: !281)
!288 = !DILocation(line: 171, column: 3, scope: !281)
!289 = !DILocation(line: 175, column: 7, scope: !281)
!290 = !DILocation(line: 175, column: 3, scope: !281)
!291 = !DILocation(line: 179, column: 7, scope: !281)
!292 = !DILocation(line: 180, column: 9, scope: !281)
!293 = !DILocation(line: 180, column: 3, scope: !281)
!294 = !DILocation(line: 183, column: 3, scope: !281)
!295 = !DILocation(line: 186, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !261, file: !3, line: 186, column: 6)
!297 = !DILocation(line: 186, column: 6, scope: !261)
!298 = !DILocation(line: 187, column: 13, scope: !296)
!299 = !DILocation(line: 187, column: 4, scope: !296)
!300 = !DILocation(line: 187, column: 11, scope: !296)
!301 = !DILocation(line: 187, column: 3, scope: !296)
!302 = !DILocation(line: 189, column: 9, scope: !261)
!303 = !DILocation(line: 190, column: 1, scope: !261)
!304 = !DILocation(line: 189, column: 2, scope: !261)
!305 = distinct !DISubprogram(name: "parse_option_str", scope: !3, file: !3, line: 203, type: !306, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!122, !112, !112}
!308 = !{!309, !310}
!309 = !DILocalVariable(name: "str", arg: 1, scope: !305, file: !3, line: 203, type: !112)
!310 = !DILocalVariable(name: "option", arg: 2, scope: !305, file: !3, line: 203, type: !112)
!311 = !DILocation(line: 203, column: 35, scope: !305)
!312 = !DILocation(line: 203, column: 52, scope: !305)
!313 = !DILocation(line: 205, column: 2, scope: !305)
!314 = !DILocation(line: 205, column: 10, scope: !305)
!315 = !DILocation(line: 205, column: 9, scope: !305)
!316 = !DILocation(line: 206, column: 16, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 206, column: 7)
!318 = distinct !DILexicalBlock(scope: !305, file: !3, line: 205, column: 15)
!319 = !DILocation(line: 206, column: 21, scope: !317)
!320 = !DILocation(line: 206, column: 36, scope: !317)
!321 = !DILocation(line: 206, column: 29, scope: !317)
!322 = !DILocation(line: 206, column: 8, scope: !317)
!323 = !DILocation(line: 206, column: 7, scope: !318)
!324 = !DILocation(line: 207, column: 18, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !3, line: 206, column: 46)
!326 = !DILocation(line: 207, column: 11, scope: !325)
!327 = !DILocation(line: 207, column: 8, scope: !325)
!328 = !DILocation(line: 208, column: 10, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 208, column: 8)
!330 = !DILocation(line: 208, column: 9, scope: !329)
!331 = !DILocation(line: 208, column: 14, scope: !329)
!332 = !DILocation(line: 208, column: 18, scope: !329)
!333 = !DILocation(line: 208, column: 17, scope: !329)
!334 = !DILocation(line: 208, column: 22, scope: !329)
!335 = !DILocation(line: 208, column: 8, scope: !325)
!336 = !DILocation(line: 209, column: 5, scope: !329)
!337 = !DILocation(line: 210, column: 3, scope: !325)
!338 = !DILocation(line: 212, column: 3, scope: !318)
!339 = !DILocation(line: 212, column: 11, scope: !318)
!340 = !DILocation(line: 212, column: 10, scope: !318)
!341 = !DILocation(line: 212, column: 15, scope: !318)
!342 = !DILocation(line: 212, column: 19, scope: !318)
!343 = !DILocation(line: 212, column: 18, scope: !318)
!344 = !DILocation(line: 212, column: 23, scope: !318)
!345 = !DILocation(line: 0, scope: !318)
!346 = !DILocation(line: 213, column: 7, scope: !318)
!347 = distinct !{!347, !338, !346, !199, !200}
!348 = !DILocation(line: 215, column: 8, scope: !349)
!349 = distinct !DILexicalBlock(scope: !318, file: !3, line: 215, column: 7)
!350 = !DILocation(line: 215, column: 7, scope: !349)
!351 = !DILocation(line: 215, column: 12, scope: !349)
!352 = !DILocation(line: 215, column: 7, scope: !318)
!353 = !DILocation(line: 216, column: 7, scope: !349)
!354 = !DILocation(line: 216, column: 4, scope: !349)
!355 = distinct !{!355, !313, !356, !199, !200}
!356 = !DILocation(line: 217, column: 2, scope: !305)
!357 = !DILocation(line: 219, column: 2, scope: !305)
!358 = !DILocation(line: 220, column: 1, scope: !305)
!359 = !DISubprogram(name: "strncmp", scope: !360, file: !360, line: 91, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!361 = !DISubroutineType(types: !362)
!362 = !{!16, !112, !112, !363}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !364, line: 72, baseType: !365)
!364 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !364, line: 16, baseType: !366)
!366 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!367 = !DISubprogram(name: "strlen", scope: !360, file: !360, line: 128, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubroutineType(types: !369)
!369 = !{!366, !112}
!370 = distinct !DISubprogram(name: "next_arg", scope: !3, file: !3, line: 227, type: !371, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!14, !14, !13, !13}
!373 = !{!374, !375, !376, !377, !378, !379, !380}
!374 = !DILocalVariable(name: "args", arg: 1, scope: !370, file: !3, line: 227, type: !14)
!375 = !DILocalVariable(name: "param", arg: 2, scope: !370, file: !3, line: 227, type: !13)
!376 = !DILocalVariable(name: "val", arg: 3, scope: !370, file: !3, line: 227, type: !13)
!377 = !DILocalVariable(name: "i", scope: !370, file: !3, line: 229, type: !7)
!378 = !DILocalVariable(name: "equals", scope: !370, file: !3, line: 229, type: !7)
!379 = !DILocalVariable(name: "in_quote", scope: !370, file: !3, line: 230, type: !16)
!380 = !DILocalVariable(name: "quoted", scope: !370, file: !3, line: 230, type: !16)
!381 = !DILocation(line: 227, column: 22, scope: !370)
!382 = !DILocation(line: 227, column: 35, scope: !370)
!383 = !DILocation(line: 227, column: 49, scope: !370)
!384 = !DILocation(line: 229, column: 2, scope: !370)
!385 = !DILocation(line: 229, column: 15, scope: !370)
!386 = !DILocation(line: 229, column: 18, scope: !370)
!387 = !DILocation(line: 230, column: 2, scope: !370)
!388 = !DILocation(line: 230, column: 6, scope: !370)
!389 = !DILocation(line: 230, column: 20, scope: !370)
!390 = !DILocation(line: 232, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !370, file: !3, line: 232, column: 6)
!392 = !DILocation(line: 232, column: 6, scope: !391)
!393 = !DILocation(line: 232, column: 12, scope: !391)
!394 = !DILocation(line: 232, column: 6, scope: !370)
!395 = !DILocation(line: 233, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 232, column: 20)
!397 = !DILocation(line: 234, column: 12, scope: !396)
!398 = !DILocation(line: 235, column: 10, scope: !396)
!399 = !DILocation(line: 236, column: 2, scope: !396)
!400 = !DILocation(line: 238, column: 9, scope: !401)
!401 = distinct !DILexicalBlock(scope: !370, file: !3, line: 238, column: 2)
!402 = !DILocation(line: 238, column: 7, scope: !401)
!403 = !DILocation(line: 238, column: 14, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !3, line: 238, column: 2)
!405 = !DILocation(line: 238, column: 19, scope: !404)
!406 = !DILocation(line: 238, column: 2, scope: !401)
!407 = !DILocation(line: 239, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 239, column: 7)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 238, column: 28)
!410 = !DILocation(line: 239, column: 24, scope: !408)
!411 = !DILocation(line: 239, column: 28, scope: !408)
!412 = !DILocation(line: 239, column: 7, scope: !409)
!413 = !DILocation(line: 240, column: 4, scope: !408)
!414 = !DILocation(line: 241, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !3, line: 241, column: 7)
!416 = !DILocation(line: 241, column: 14, scope: !415)
!417 = !DILocation(line: 241, column: 7, scope: !409)
!418 = !DILocation(line: 242, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 242, column: 8)
!420 = distinct !DILexicalBlock(scope: !415, file: !3, line: 241, column: 20)
!421 = !DILocation(line: 242, column: 13, scope: !419)
!422 = !DILocation(line: 242, column: 16, scope: !419)
!423 = !DILocation(line: 242, column: 8, scope: !420)
!424 = !DILocation(line: 243, column: 14, scope: !419)
!425 = !DILocation(line: 243, column: 12, scope: !419)
!426 = !DILocation(line: 243, column: 5, scope: !419)
!427 = !DILocation(line: 244, column: 3, scope: !420)
!428 = !DILocation(line: 245, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !409, file: !3, line: 245, column: 7)
!430 = !DILocation(line: 245, column: 12, scope: !429)
!431 = !DILocation(line: 245, column: 15, scope: !429)
!432 = !DILocation(line: 245, column: 7, scope: !409)
!433 = !DILocation(line: 246, column: 16, scope: !429)
!434 = !DILocation(line: 246, column: 15, scope: !429)
!435 = !DILocation(line: 246, column: 13, scope: !429)
!436 = !DILocation(line: 246, column: 4, scope: !429)
!437 = !DILocation(line: 247, column: 2, scope: !409)
!438 = !DILocation(line: 238, column: 24, scope: !404)
!439 = !DILocation(line: 238, column: 2, scope: !404)
!440 = distinct !{!440, !406, !441, !199, !200}
!441 = !DILocation(line: 247, column: 2, scope: !401)
!442 = !DILocation(line: 249, column: 11, scope: !370)
!443 = !DILocation(line: 249, column: 3, scope: !370)
!444 = !DILocation(line: 249, column: 9, scope: !370)
!445 = !DILocation(line: 250, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !370, file: !3, line: 250, column: 6)
!447 = !DILocation(line: 250, column: 6, scope: !370)
!448 = !DILocation(line: 251, column: 4, scope: !446)
!449 = !DILocation(line: 251, column: 8, scope: !446)
!450 = !DILocation(line: 251, column: 3, scope: !446)
!451 = !DILocation(line: 253, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !446, file: !3, line: 252, column: 7)
!453 = !DILocation(line: 253, column: 8, scope: !452)
!454 = !DILocation(line: 253, column: 16, scope: !452)
!455 = !DILocation(line: 254, column: 10, scope: !452)
!456 = !DILocation(line: 254, column: 17, scope: !452)
!457 = !DILocation(line: 254, column: 15, scope: !452)
!458 = !DILocation(line: 254, column: 24, scope: !452)
!459 = !DILocation(line: 254, column: 4, scope: !452)
!460 = !DILocation(line: 254, column: 8, scope: !452)
!461 = !DILocation(line: 257, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !452, file: !3, line: 257, column: 7)
!463 = !DILocation(line: 257, column: 8, scope: !462)
!464 = !DILocation(line: 257, column: 7, scope: !462)
!465 = !DILocation(line: 257, column: 13, scope: !462)
!466 = !DILocation(line: 257, column: 7, scope: !452)
!467 = !DILocation(line: 258, column: 6, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !3, line: 257, column: 21)
!469 = !DILocation(line: 258, column: 10, scope: !468)
!470 = !DILocation(line: 259, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 259, column: 8)
!472 = !DILocation(line: 259, column: 13, scope: !471)
!473 = !DILocation(line: 259, column: 14, scope: !471)
!474 = !DILocation(line: 259, column: 18, scope: !471)
!475 = !DILocation(line: 259, column: 8, scope: !468)
!476 = !DILocation(line: 260, column: 5, scope: !471)
!477 = !DILocation(line: 260, column: 10, scope: !471)
!478 = !DILocation(line: 260, column: 11, scope: !471)
!479 = !DILocation(line: 260, column: 15, scope: !471)
!480 = !DILocation(line: 261, column: 3, scope: !468)
!481 = !DILocation(line: 263, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !370, file: !3, line: 263, column: 6)
!483 = !DILocation(line: 263, column: 13, scope: !482)
!484 = !DILocation(line: 263, column: 16, scope: !482)
!485 = !DILocation(line: 263, column: 18, scope: !482)
!486 = !DILocation(line: 263, column: 22, scope: !482)
!487 = !DILocation(line: 263, column: 25, scope: !482)
!488 = !DILocation(line: 263, column: 30, scope: !482)
!489 = !DILocation(line: 263, column: 31, scope: !482)
!490 = !DILocation(line: 263, column: 35, scope: !482)
!491 = !DILocation(line: 263, column: 6, scope: !370)
!492 = !DILocation(line: 264, column: 3, scope: !482)
!493 = !DILocation(line: 264, column: 8, scope: !482)
!494 = !DILocation(line: 264, column: 9, scope: !482)
!495 = !DILocation(line: 264, column: 13, scope: !482)
!496 = !DILocation(line: 266, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !370, file: !3, line: 266, column: 6)
!498 = !DILocation(line: 266, column: 11, scope: !497)
!499 = !DILocation(line: 266, column: 6, scope: !370)
!500 = !DILocation(line: 267, column: 3, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 266, column: 15)
!502 = !DILocation(line: 267, column: 8, scope: !501)
!503 = !DILocation(line: 267, column: 11, scope: !501)
!504 = !DILocation(line: 268, column: 11, scope: !501)
!505 = !DILocation(line: 268, column: 13, scope: !501)
!506 = !DILocation(line: 268, column: 8, scope: !501)
!507 = !DILocation(line: 269, column: 2, scope: !501)
!508 = !DILocation(line: 270, column: 11, scope: !497)
!509 = !DILocation(line: 270, column: 8, scope: !497)
!510 = !DILocation(line: 273, column: 21, scope: !370)
!511 = !DILocation(line: 273, column: 9, scope: !370)
!512 = !DILocation(line: 274, column: 1, scope: !370)
!513 = !DILocation(line: 273, column: 2, scope: !370)
!514 = !DISubprogram(name: "skip_spaces", scope: !360, file: !360, line: 112, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DISubroutineType(types: !516)
!516 = !{!14, !112}
!517 = !DISubprogram(name: "simple_strtol", scope: !108, file: !108, line: 146, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !112, !13, !7}
!520 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
