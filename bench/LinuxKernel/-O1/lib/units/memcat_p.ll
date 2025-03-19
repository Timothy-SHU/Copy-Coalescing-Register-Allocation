; ModuleID = 'lib/memcat_p.c'
source_filename = "lib/memcat_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___memcat_p: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __memcat_p ; .previous"

@__UNIQUE_ID___addressable___memcat_p118 = internal global ptr @__memcat_p, section ".discard.addressable", align 8, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !27
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___memcat_p118], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__memcat_p(ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !42 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %new = alloca ptr, align 8
  %nr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !47, metadata !DIExpression()), !dbg !53
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !48, metadata !DIExpression()), !dbg !54
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %p, metadata !49, metadata !DIExpression()), !dbg !56
  %0 = load ptr, ptr %a.addr, align 8, !dbg !57
  store ptr %0, ptr %p, align 8, !dbg !56
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %new, metadata !50, metadata !DIExpression()), !dbg !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #12, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !51, metadata !DIExpression()), !dbg !60
  store i32 0, ptr %nr, align 4, !dbg !61
  %1 = load ptr, ptr %a.addr, align 8, !dbg !63
  store ptr %1, ptr %p, align 8, !dbg !64
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8, !dbg !66
  %3 = load ptr, ptr %2, align 8, !dbg !68
  %tobool = icmp ne ptr %3, null, !dbg !69
  br i1 %tobool, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %nr, align 4, !dbg !70
  %inc = add i32 %4, 1, !dbg !70
  store i32 %inc, ptr %nr, align 4, !dbg !70
  %5 = load ptr, ptr %p, align 8, !dbg !71
  %incdec.ptr = getelementptr ptr, ptr %5, i32 1, !dbg !71
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !71
  br label %for.cond, !dbg !72, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %b.addr, align 8, !dbg !77
  store ptr %6, ptr %p, align 8, !dbg !79
  br label %for.cond1, !dbg !80

for.cond1:                                        ; preds = %for.inc4, %for.end
  %7 = load ptr, ptr %p, align 8, !dbg !81
  %8 = load ptr, ptr %7, align 8, !dbg !83
  %tobool2 = icmp ne ptr %8, null, !dbg !84
  br i1 %tobool2, label %for.body3, label %for.end7, !dbg !84

for.body3:                                        ; preds = %for.cond1
  br label %for.inc4, !dbg !84

for.inc4:                                         ; preds = %for.body3
  %9 = load i32, ptr %nr, align 4, !dbg !85
  %inc5 = add i32 %9, 1, !dbg !85
  store i32 %inc5, ptr %nr, align 4, !dbg !85
  %10 = load ptr, ptr %p, align 8, !dbg !86
  %incdec.ptr6 = getelementptr ptr, ptr %10, i32 1, !dbg !86
  store ptr %incdec.ptr6, ptr %p, align 8, !dbg !86
  br label %for.cond1, !dbg !87, !llvm.loop !88

for.end7:                                         ; preds = %for.cond1
  %11 = load i32, ptr %nr, align 4, !dbg !90
  %inc8 = add i32 %11, 1, !dbg !90
  store i32 %inc8, ptr %nr, align 4, !dbg !90
  %12 = load i32, ptr %nr, align 4, !dbg !91
  %conv = sext i32 %12 to i64, !dbg !91
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #13, !dbg !92
  store ptr %call, ptr %new, align 8, !dbg !93
  %13 = load ptr, ptr %new, align 8, !dbg !94
  %tobool9 = icmp ne ptr %13, null, !dbg !94
  br i1 %tobool9, label %if.end, label %if.then, !dbg !96

if.then:                                          ; preds = %for.end7
  store ptr null, ptr %retval, align 8, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end:                                           ; preds = %for.end7
  %14 = load i32, ptr %nr, align 4, !dbg !98
  %dec = add i32 %14, -1, !dbg !98
  store i32 %dec, ptr %nr, align 4, !dbg !98
  br label %for.cond10, !dbg !100

for.cond10:                                       ; preds = %cond.end, %if.end
  %15 = load i32, ptr %nr, align 4, !dbg !101
  %cmp = icmp sge i32 %15, 0, !dbg !103
  br i1 %cmp, label %for.body12, label %for.end19, !dbg !104

for.body12:                                       ; preds = %for.cond10
  %16 = load ptr, ptr %p, align 8, !dbg !105
  %17 = load ptr, ptr %16, align 8, !dbg !106
  %18 = load ptr, ptr %new, align 8, !dbg !107
  %19 = load i32, ptr %nr, align 4, !dbg !108
  %idxprom = sext i32 %19 to i64, !dbg !107
  %arrayidx = getelementptr ptr, ptr %18, i64 %idxprom, !dbg !107
  store ptr %17, ptr %arrayidx, align 8, !dbg !109
  br label %for.inc13, !dbg !107

for.inc13:                                        ; preds = %for.body12
  %20 = load i32, ptr %nr, align 4, !dbg !110
  %dec14 = add i32 %20, -1, !dbg !110
  store i32 %dec14, ptr %nr, align 4, !dbg !110
  %21 = load ptr, ptr %p, align 8, !dbg !111
  %22 = load ptr, ptr %b.addr, align 8, !dbg !112
  %cmp15 = icmp eq ptr %21, %22, !dbg !113
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !111

cond.true:                                        ; preds = %for.inc13
  %23 = load ptr, ptr %a.addr, align 8, !dbg !114
  %24 = load i32, ptr %nr, align 4, !dbg !115
  %idxprom17 = sext i32 %24 to i64, !dbg !114
  %arrayidx18 = getelementptr ptr, ptr %23, i64 %idxprom17, !dbg !114
  br label %cond.end, !dbg !111

cond.false:                                       ; preds = %for.inc13
  %25 = load ptr, ptr %p, align 8, !dbg !116
  %add.ptr = getelementptr ptr, ptr %25, i64 -1, !dbg !117
  br label %cond.end, !dbg !111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx18, %cond.true ], [ %add.ptr, %cond.false ], !dbg !111
  store ptr %cond, ptr %p, align 8, !dbg !118
  br label %for.cond10, !dbg !119, !llvm.loop !120

for.end19:                                        ; preds = %for.cond10
  %26 = load ptr, ptr %new, align 8, !dbg !122
  store ptr %26, ptr %retval, align 8, !dbg !123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !123

cleanup:                                          ; preds = %for.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #12, !dbg !124
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !124
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !124
  %27 = load ptr, ptr %retval, align 8, !dbg !124
  ret ptr %27, !dbg !124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !125 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !133, metadata !DIExpression()), !dbg !137
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !134, metadata !DIExpression()), !dbg !138
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !135, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #12, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !136, metadata !DIExpression()), !dbg !141
  %0 = load i64, ptr %n.addr, align 8, !dbg !142
  %1 = load i64, ptr %size.addr, align 8, !dbg !142
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !142
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !142
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !142
  store i64 %4, ptr %bytes, align 8, !dbg !142
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #14, !dbg !142
  %lnot = xor i1 %call, true, !dbg !142
  %lnot1 = xor i1 %lnot, true, !dbg !142
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !142
  %conv = sext i32 %lnot.ext to i64, !dbg !142
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !142
  %tobool = icmp ne i64 %expval, 0, !dbg !142
  br i1 %tobool, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !145

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !146
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !148
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !149

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !150
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !151
  br i1 %8, label %if.then2, label %if.end4, !dbg !152

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !153
  %10 = load i32, ptr %flags.addr, align 4, !dbg !154
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #15, !dbg !155
  store ptr %call3, ptr %retval, align 8, !dbg !156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !157
  %12 = load i32, ptr %flags.addr, align 4, !dbg !158
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #15, !dbg !159
  store ptr %call5, ptr %retval, align 8, !dbg !160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !160

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #12, !dbg !161
  %13 = load ptr, ptr %retval, align 8, !dbg !161
  ret ptr %13, !dbg !161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !162 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !171, !range !172, !noundef !173
  %tobool = trunc i8 %0 to i1, !dbg !171
  %lnot = xor i1 %tobool, true, !dbg !171
  %lnot1 = xor i1 %lnot, true, !dbg !171
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !171
  %conv = sext i32 %lnot.ext to i64, !dbg !171
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !171
  %tobool2 = icmp ne i64 %expval, 0, !dbg !171
  ret i1 %tobool2, !dbg !174
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !175 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !179, metadata !DIExpression()), !dbg !184
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !180, metadata !DIExpression()), !dbg !185
  %0 = load i64, ptr %size.addr, align 8, !dbg !186
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !187
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !188

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !189
  %tobool = icmp ne i64 %2, 0, !dbg !189
  br i1 %tobool, label %if.then, label %if.end7, !dbg !190

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %index, metadata !181, metadata !DIExpression()), !dbg !192
  %3 = load i64, ptr %size.addr, align 8, !dbg !193
  %cmp = icmp ugt i64 %3, 8192, !dbg !195
  br i1 %cmp, label %if.then1, label %if.end, !dbg !196

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !197
  %5 = load i32, ptr %flags.addr, align 4, !dbg !198
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !199
  store ptr %call, ptr %retval, align 8, !dbg !200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !200

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !201
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !201
  store i32 %call2, ptr %index, align 4, !dbg !202
  %7 = load i32, ptr %flags.addr, align 4, !dbg !203
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !204
  %9 = ptrtoint ptr %8 to i64, !dbg !204
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !205
  %idxprom = zext i32 %call3 to i64, !dbg !206
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !206
  %10 = load i32, ptr %index, align 4, !dbg !207
  %idxprom4 = zext i32 %10 to i64, !dbg !206
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !206
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !206
  %12 = load i32, ptr %flags.addr, align 4, !dbg !208
  %13 = load i64, ptr %size.addr, align 8, !dbg !209
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !210
  store ptr %call6, ptr %retval, align 8, !dbg !211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !211

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !212
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !213
  %15 = load i32, ptr %flags.addr, align 4, !dbg !214
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !215
  store ptr %call8, ptr %retval, align 8, !dbg !216
  br label %return, !dbg !216

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !217
  ret ptr %16, !dbg !217
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !218 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !219 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !220 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !224, metadata !DIExpression()), !dbg !226
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !225, metadata !DIExpression()), !dbg !227
  %0 = load i64, ptr %size.addr, align 8, !dbg !228
  %tobool = icmp ne i64 %0, 0, !dbg !228
  br i1 %tobool, label %if.end, label %if.then, !dbg !230

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !231
  br label %return, !dbg !231

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !232
  %cmp = icmp ule i64 %1, 8, !dbg !234
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !235

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !236
  br label %return, !dbg !236

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !237
  %cmp3 = icmp ugt i64 %2, 64, !dbg !239
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !240

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !241
  %cmp4 = icmp ule i64 %3, 96, !dbg !242
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !243

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !244
  br label %return, !dbg !244

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !245
  %cmp7 = icmp ugt i64 %4, 128, !dbg !247
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !248

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !249
  %cmp9 = icmp ule i64 %5, 192, !dbg !250
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !251

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !252
  br label %return, !dbg !252

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !253
  %cmp12 = icmp ule i64 %6, 8, !dbg !255
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !256

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !257
  br label %return, !dbg !257

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !258
  %cmp15 = icmp ule i64 %7, 16, !dbg !260
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !261

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !262
  br label %return, !dbg !262

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !263
  %cmp18 = icmp ule i64 %8, 32, !dbg !265
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !266

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !267
  br label %return, !dbg !267

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !268
  %cmp21 = icmp ule i64 %9, 64, !dbg !270
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !271

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !272
  br label %return, !dbg !272

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !273
  %cmp24 = icmp ule i64 %10, 128, !dbg !275
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !276

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !277
  br label %return, !dbg !277

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !278
  %cmp27 = icmp ule i64 %11, 256, !dbg !280
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !281

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !282
  br label %return, !dbg !282

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !283
  %cmp30 = icmp ule i64 %12, 512, !dbg !285
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !286

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !287
  br label %return, !dbg !287

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !288
  %cmp33 = icmp ule i64 %13, 1024, !dbg !290
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !291

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !292
  br label %return, !dbg !292

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !293
  %cmp36 = icmp ule i64 %14, 2048, !dbg !295
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !296

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !297
  br label %return, !dbg !297

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !298
  %cmp39 = icmp ule i64 %15, 4096, !dbg !300
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !301

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !302
  br label %return, !dbg !302

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !303
  %cmp42 = icmp ule i64 %16, 8192, !dbg !305
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !306

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !307
  br label %return, !dbg !307

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !308
  %cmp45 = icmp ule i64 %17, 16384, !dbg !310
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !311

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !312
  br label %return, !dbg !312

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !313
  %cmp48 = icmp ule i64 %18, 32768, !dbg !315
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !316

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !317
  br label %return, !dbg !317

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !318
  %cmp51 = icmp ule i64 %19, 65536, !dbg !320
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !321

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !322
  br label %return, !dbg !322

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !323
  %cmp54 = icmp ule i64 %20, 131072, !dbg !325
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !326

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !327
  br label %return, !dbg !327

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !328
  %cmp57 = icmp ule i64 %21, 262144, !dbg !330
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !331

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !332
  br label %return, !dbg !332

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !333
  %cmp60 = icmp ule i64 %22, 524288, !dbg !335
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !336

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !337
  br label %return, !dbg !337

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !338
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !340
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !341

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !342
  br label %return, !dbg !342

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !343
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !345
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !346

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !347
  br label %return, !dbg !347

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !348, !range !172, !noundef !173
  %tobool69 = trunc i8 %25 to i1, !dbg !348
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !350

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !351

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #17, !dbg !352, !srcloc !355
  unreachable, !dbg !352

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !356

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !357

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !358

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !360

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !358

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #12, !dbg !362, !srcloc !364
  br label %do.end75, !dbg !362

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !358

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !365
  br label %return, !dbg !365

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !366
  ret i32 %26, !dbg !366
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !367 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !373 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !377, metadata !DIExpression()), !dbg !379
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !378, metadata !DIExpression()), !dbg !380
  %0 = load i32, ptr %flags.addr, align 4, !dbg !381
  %and = and i32 %0, 17, !dbg !381
  %cmp = icmp eq i32 %and, 0, !dbg !381
  %lnot = xor i1 %cmp, true, !dbg !381
  %lnot1 = xor i1 %lnot, true, !dbg !381
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !381
  %conv = sext i32 %lnot.ext to i64, !dbg !381
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !381
  %tobool = icmp ne i64 %expval, 0, !dbg !381
  br i1 %tobool, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !384
  br label %return, !dbg !384

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !385
  %and2 = and i32 %1, 1, !dbg !387
  %tobool3 = icmp ne i32 %and2, 0, !dbg !387
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !388

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !389
  br label %return, !dbg !389

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !390
  br label %return, !dbg !390

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !392
  ret i32 %2, !dbg !392
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !393 dso_local void @__compiletime_assert_117() #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone allocsize(0,1) }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___memcat_p118", scope: !2, file: !3, line: 33, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.memcat_p.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/memcat_p\22 -D KBUILD_BASENAME=\22memcat_p\22 -D KBUILD_MODNAME=\22memcat_p\22 -D __KBUILD_MODNAME=kmod_memcat_p -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/memcat_p.ll lib/memcat_p.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/memcat_p.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c6d5f0ed6ec87bc8700915c1535126e")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 154, baseType: !7)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!0, !27}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 168, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32}
!32 = !DISubrange(count: 21)
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 8, !"cf-protection-branch", i32 1}
!37 = !{i32 4, !"function_return_thunk_extern", i32 1}
!38 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!39 = !{i32 1, !"Code Model", i32 2}
!40 = !{i32 1, !"override-stack-alignment", i32 8}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = distinct !DISubprogram(name: "__memcat_p", scope: !3, file: !3, line: 10, type: !43, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !45, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!46 = !{!47, !48, !49, !50, !51}
!47 = !DILocalVariable(name: "a", arg: 1, scope: !42, file: !3, line: 10, type: !45)
!48 = !DILocalVariable(name: "b", arg: 2, scope: !42, file: !3, line: 10, type: !45)
!49 = !DILocalVariable(name: "p", scope: !42, file: !3, line: 12, type: !45)
!50 = !DILocalVariable(name: "new", scope: !42, file: !3, line: 12, type: !45)
!51 = !DILocalVariable(name: "nr", scope: !42, file: !3, line: 13, type: !52)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DILocation(line: 10, column: 26, scope: !42)
!54 = !DILocation(line: 10, column: 36, scope: !42)
!55 = !DILocation(line: 12, column: 2, scope: !42)
!56 = !DILocation(line: 12, column: 9, scope: !42)
!57 = !DILocation(line: 12, column: 13, scope: !42)
!58 = !DILocation(line: 12, column: 18, scope: !42)
!59 = !DILocation(line: 13, column: 2, scope: !42)
!60 = !DILocation(line: 13, column: 6, scope: !42)
!61 = !DILocation(line: 16, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !3, line: 16, column: 2)
!63 = !DILocation(line: 16, column: 19, scope: !62)
!64 = !DILocation(line: 16, column: 17, scope: !62)
!65 = !DILocation(line: 16, column: 7, scope: !62)
!66 = !DILocation(line: 16, column: 23, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !3, line: 16, column: 2)
!68 = !DILocation(line: 16, column: 22, scope: !67)
!69 = !DILocation(line: 16, column: 2, scope: !62)
!70 = !DILocation(line: 16, column: 28, scope: !67)
!71 = !DILocation(line: 16, column: 33, scope: !67)
!72 = !DILocation(line: 16, column: 2, scope: !67)
!73 = distinct !{!73, !69, !74, !75, !76}
!74 = !DILocation(line: 17, column: 3, scope: !62)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !DILocation(line: 18, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !42, file: !3, line: 18, column: 2)
!79 = !DILocation(line: 18, column: 9, scope: !78)
!80 = !DILocation(line: 18, column: 7, scope: !78)
!81 = !DILocation(line: 18, column: 15, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !3, line: 18, column: 2)
!83 = !DILocation(line: 18, column: 14, scope: !82)
!84 = !DILocation(line: 18, column: 2, scope: !78)
!85 = !DILocation(line: 18, column: 20, scope: !82)
!86 = !DILocation(line: 18, column: 25, scope: !82)
!87 = !DILocation(line: 18, column: 2, scope: !82)
!88 = distinct !{!88, !84, !89, !75, !76}
!89 = !DILocation(line: 19, column: 3, scope: !78)
!90 = !DILocation(line: 21, column: 4, scope: !42)
!91 = !DILocation(line: 23, column: 22, scope: !42)
!92 = !DILocation(line: 23, column: 8, scope: !42)
!93 = !DILocation(line: 23, column: 6, scope: !42)
!94 = !DILocation(line: 24, column: 7, scope: !95)
!95 = distinct !DILexicalBlock(scope: !42, file: !3, line: 24, column: 6)
!96 = !DILocation(line: 24, column: 6, scope: !42)
!97 = !DILocation(line: 25, column: 3, scope: !95)
!98 = !DILocation(line: 28, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !42, file: !3, line: 28, column: 2)
!100 = !DILocation(line: 28, column: 7, scope: !99)
!101 = !DILocation(line: 28, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !3, line: 28, column: 2)
!103 = !DILocation(line: 28, column: 16, scope: !102)
!104 = !DILocation(line: 28, column: 2, scope: !99)
!105 = !DILocation(line: 29, column: 14, scope: !102)
!106 = !DILocation(line: 29, column: 13, scope: !102)
!107 = !DILocation(line: 29, column: 3, scope: !102)
!108 = !DILocation(line: 29, column: 7, scope: !102)
!109 = !DILocation(line: 29, column: 11, scope: !102)
!110 = !DILocation(line: 28, column: 24, scope: !102)
!111 = !DILocation(line: 28, column: 32, scope: !102)
!112 = !DILocation(line: 28, column: 37, scope: !102)
!113 = !DILocation(line: 28, column: 34, scope: !102)
!114 = !DILocation(line: 28, column: 42, scope: !102)
!115 = !DILocation(line: 28, column: 44, scope: !102)
!116 = !DILocation(line: 28, column: 50, scope: !102)
!117 = !DILocation(line: 28, column: 52, scope: !102)
!118 = !DILocation(line: 28, column: 30, scope: !102)
!119 = !DILocation(line: 28, column: 2, scope: !102)
!120 = distinct !{!120, !104, !121, !75, !76}
!121 = !DILocation(line: 29, column: 14, scope: !99)
!122 = !DILocation(line: 31, column: 9, scope: !42)
!123 = !DILocation(line: 31, column: 2, scope: !42)
!124 = !DILocation(line: 32, column: 1, scope: !42)
!125 = distinct !DISubprogram(name: "kmalloc_array", scope: !12, file: !12, line: 629, type: !126, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!126 = !DISubroutineType(types: !127)
!127 = !{!24, !128, !128, !22}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !130, line: 72, baseType: !131)
!130 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !130, line: 16, baseType: !25)
!132 = !{!133, !134, !135, !136}
!133 = !DILocalVariable(name: "n", arg: 1, scope: !125, file: !12, line: 629, type: !128)
!134 = !DILocalVariable(name: "size", arg: 2, scope: !125, file: !12, line: 629, type: !128)
!135 = !DILocalVariable(name: "flags", arg: 3, scope: !125, file: !12, line: 629, type: !22)
!136 = !DILocalVariable(name: "bytes", scope: !125, file: !12, line: 631, type: !128)
!137 = !DILocation(line: 629, column: 61, scope: !125)
!138 = !DILocation(line: 629, column: 71, scope: !125)
!139 = !DILocation(line: 629, column: 83, scope: !125)
!140 = !DILocation(line: 631, column: 2, scope: !125)
!141 = !DILocation(line: 631, column: 9, scope: !125)
!142 = !DILocation(line: 633, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !125, file: !12, line: 633, column: 6)
!144 = !DILocation(line: 633, column: 6, scope: !125)
!145 = !DILocation(line: 634, column: 3, scope: !143)
!146 = !DILocation(line: 635, column: 27, scope: !147)
!147 = distinct !DILexicalBlock(scope: !125, file: !12, line: 635, column: 6)
!148 = !DILocation(line: 635, column: 6, scope: !147)
!149 = !DILocation(line: 635, column: 30, scope: !147)
!150 = !DILocation(line: 635, column: 54, scope: !147)
!151 = !DILocation(line: 635, column: 33, scope: !147)
!152 = !DILocation(line: 635, column: 6, scope: !125)
!153 = !DILocation(line: 636, column: 18, scope: !147)
!154 = !DILocation(line: 636, column: 25, scope: !147)
!155 = !DILocation(line: 636, column: 10, scope: !147)
!156 = !DILocation(line: 636, column: 3, scope: !147)
!157 = !DILocation(line: 637, column: 19, scope: !125)
!158 = !DILocation(line: 637, column: 26, scope: !125)
!159 = !DILocation(line: 637, column: 9, scope: !125)
!160 = !DILocation(line: 637, column: 2, scope: !125)
!161 = !DILocation(line: 638, column: 1, scope: !125)
!162 = distinct !DISubprogram(name: "__must_check_overflow", scope: !163, file: !163, line: 51, type: !164, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!163 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !166}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !167)
!167 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!168 = !{!169}
!169 = !DILocalVariable(name: "overflow", arg: 1, scope: !162, file: !163, line: 51, type: !166)
!170 = !DILocation(line: 51, column: 60, scope: !162)
!171 = !DILocation(line: 53, column: 9, scope: !162)
!172 = !{i8 0, i8 2}
!173 = !{}
!174 = !DILocation(line: 53, column: 2, scope: !162)
!175 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !176, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!24, !128, !22}
!178 = !{!179, !180, !181}
!179 = !DILocalVariable(name: "size", arg: 1, scope: !175, file: !12, line: 591, type: !128)
!180 = !DILocalVariable(name: "flags", arg: 2, scope: !175, file: !12, line: 591, type: !22)
!181 = !DILocalVariable(name: "index", scope: !182, file: !12, line: 594, type: !7)
!182 = distinct !DILexicalBlock(scope: !183, file: !12, line: 593, column: 42)
!183 = distinct !DILexicalBlock(scope: !175, file: !12, line: 593, column: 6)
!184 = !DILocation(line: 591, column: 61, scope: !175)
!185 = !DILocation(line: 591, column: 73, scope: !175)
!186 = !DILocation(line: 593, column: 27, scope: !183)
!187 = !DILocation(line: 593, column: 6, scope: !183)
!188 = !DILocation(line: 593, column: 33, scope: !183)
!189 = !DILocation(line: 593, column: 36, scope: !183)
!190 = !DILocation(line: 593, column: 6, scope: !175)
!191 = !DILocation(line: 594, column: 3, scope: !182)
!192 = !DILocation(line: 594, column: 16, scope: !182)
!193 = !DILocation(line: 596, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !182, file: !12, line: 596, column: 7)
!195 = !DILocation(line: 596, column: 12, scope: !194)
!196 = !DILocation(line: 596, column: 7, scope: !182)
!197 = !DILocation(line: 597, column: 25, scope: !194)
!198 = !DILocation(line: 597, column: 31, scope: !194)
!199 = !DILocation(line: 597, column: 11, scope: !194)
!200 = !DILocation(line: 597, column: 4, scope: !194)
!201 = !DILocation(line: 599, column: 11, scope: !182)
!202 = !DILocation(line: 599, column: 9, scope: !182)
!203 = !DILocation(line: 601, column: 33, scope: !182)
!204 = !DILocation(line: 601, column: 40, scope: !182)
!205 = !DILocation(line: 601, column: 20, scope: !182)
!206 = !DILocation(line: 601, column: 5, scope: !182)
!207 = !DILocation(line: 601, column: 51, scope: !182)
!208 = !DILocation(line: 602, column: 5, scope: !182)
!209 = !DILocation(line: 602, column: 12, scope: !182)
!210 = !DILocation(line: 600, column: 10, scope: !182)
!211 = !DILocation(line: 600, column: 3, scope: !182)
!212 = !DILocation(line: 603, column: 2, scope: !183)
!213 = !DILocation(line: 604, column: 19, scope: !175)
!214 = !DILocation(line: 604, column: 25, scope: !175)
!215 = !DILocation(line: 604, column: 9, scope: !175)
!216 = !DILocation(line: 604, column: 2, scope: !175)
!217 = !DILocation(line: 605, column: 1, scope: !175)
!218 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !221, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{!7, !128, !166}
!223 = !{!224, !225}
!224 = !DILocalVariable(name: "size", arg: 1, scope: !220, file: !12, line: 444, type: !128)
!225 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !220, file: !12, line: 445, type: !166)
!226 = !DILocation(line: 444, column: 60, scope: !220)
!227 = !DILocation(line: 445, column: 16, scope: !220)
!228 = !DILocation(line: 447, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !12, line: 447, column: 6)
!230 = !DILocation(line: 447, column: 6, scope: !220)
!231 = !DILocation(line: 448, column: 3, scope: !229)
!232 = !DILocation(line: 450, column: 6, scope: !233)
!233 = distinct !DILexicalBlock(scope: !220, file: !12, line: 450, column: 6)
!234 = !DILocation(line: 450, column: 11, scope: !233)
!235 = !DILocation(line: 450, column: 6, scope: !220)
!236 = !DILocation(line: 451, column: 3, scope: !233)
!237 = !DILocation(line: 453, column: 32, scope: !238)
!238 = distinct !DILexicalBlock(scope: !220, file: !12, line: 453, column: 6)
!239 = !DILocation(line: 453, column: 37, scope: !238)
!240 = !DILocation(line: 453, column: 42, scope: !238)
!241 = !DILocation(line: 453, column: 45, scope: !238)
!242 = !DILocation(line: 453, column: 50, scope: !238)
!243 = !DILocation(line: 453, column: 6, scope: !220)
!244 = !DILocation(line: 454, column: 3, scope: !238)
!245 = !DILocation(line: 455, column: 32, scope: !246)
!246 = distinct !DILexicalBlock(scope: !220, file: !12, line: 455, column: 6)
!247 = !DILocation(line: 455, column: 37, scope: !246)
!248 = !DILocation(line: 455, column: 43, scope: !246)
!249 = !DILocation(line: 455, column: 46, scope: !246)
!250 = !DILocation(line: 455, column: 51, scope: !246)
!251 = !DILocation(line: 455, column: 6, scope: !220)
!252 = !DILocation(line: 456, column: 3, scope: !246)
!253 = !DILocation(line: 457, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !220, file: !12, line: 457, column: 6)
!255 = !DILocation(line: 457, column: 11, scope: !254)
!256 = !DILocation(line: 457, column: 6, scope: !220)
!257 = !DILocation(line: 457, column: 26, scope: !254)
!258 = !DILocation(line: 458, column: 6, scope: !259)
!259 = distinct !DILexicalBlock(scope: !220, file: !12, line: 458, column: 6)
!260 = !DILocation(line: 458, column: 11, scope: !259)
!261 = !DILocation(line: 458, column: 6, scope: !220)
!262 = !DILocation(line: 458, column: 26, scope: !259)
!263 = !DILocation(line: 459, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !220, file: !12, line: 459, column: 6)
!265 = !DILocation(line: 459, column: 11, scope: !264)
!266 = !DILocation(line: 459, column: 6, scope: !220)
!267 = !DILocation(line: 459, column: 26, scope: !264)
!268 = !DILocation(line: 460, column: 6, scope: !269)
!269 = distinct !DILexicalBlock(scope: !220, file: !12, line: 460, column: 6)
!270 = !DILocation(line: 460, column: 11, scope: !269)
!271 = !DILocation(line: 460, column: 6, scope: !220)
!272 = !DILocation(line: 460, column: 26, scope: !269)
!273 = !DILocation(line: 461, column: 6, scope: !274)
!274 = distinct !DILexicalBlock(scope: !220, file: !12, line: 461, column: 6)
!275 = !DILocation(line: 461, column: 11, scope: !274)
!276 = !DILocation(line: 461, column: 6, scope: !220)
!277 = !DILocation(line: 461, column: 26, scope: !274)
!278 = !DILocation(line: 462, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !220, file: !12, line: 462, column: 6)
!280 = !DILocation(line: 462, column: 11, scope: !279)
!281 = !DILocation(line: 462, column: 6, scope: !220)
!282 = !DILocation(line: 462, column: 26, scope: !279)
!283 = !DILocation(line: 463, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !220, file: !12, line: 463, column: 6)
!285 = !DILocation(line: 463, column: 11, scope: !284)
!286 = !DILocation(line: 463, column: 6, scope: !220)
!287 = !DILocation(line: 463, column: 26, scope: !284)
!288 = !DILocation(line: 464, column: 6, scope: !289)
!289 = distinct !DILexicalBlock(scope: !220, file: !12, line: 464, column: 6)
!290 = !DILocation(line: 464, column: 11, scope: !289)
!291 = !DILocation(line: 464, column: 6, scope: !220)
!292 = !DILocation(line: 464, column: 26, scope: !289)
!293 = !DILocation(line: 465, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !220, file: !12, line: 465, column: 6)
!295 = !DILocation(line: 465, column: 11, scope: !294)
!296 = !DILocation(line: 465, column: 6, scope: !220)
!297 = !DILocation(line: 465, column: 26, scope: !294)
!298 = !DILocation(line: 466, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !220, file: !12, line: 466, column: 6)
!300 = !DILocation(line: 466, column: 11, scope: !299)
!301 = !DILocation(line: 466, column: 6, scope: !220)
!302 = !DILocation(line: 466, column: 26, scope: !299)
!303 = !DILocation(line: 467, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !220, file: !12, line: 467, column: 6)
!305 = !DILocation(line: 467, column: 11, scope: !304)
!306 = !DILocation(line: 467, column: 6, scope: !220)
!307 = !DILocation(line: 467, column: 26, scope: !304)
!308 = !DILocation(line: 468, column: 6, scope: !309)
!309 = distinct !DILexicalBlock(scope: !220, file: !12, line: 468, column: 6)
!310 = !DILocation(line: 468, column: 11, scope: !309)
!311 = !DILocation(line: 468, column: 6, scope: !220)
!312 = !DILocation(line: 468, column: 26, scope: !309)
!313 = !DILocation(line: 469, column: 6, scope: !314)
!314 = distinct !DILexicalBlock(scope: !220, file: !12, line: 469, column: 6)
!315 = !DILocation(line: 469, column: 11, scope: !314)
!316 = !DILocation(line: 469, column: 6, scope: !220)
!317 = !DILocation(line: 469, column: 26, scope: !314)
!318 = !DILocation(line: 470, column: 6, scope: !319)
!319 = distinct !DILexicalBlock(scope: !220, file: !12, line: 470, column: 6)
!320 = !DILocation(line: 470, column: 11, scope: !319)
!321 = !DILocation(line: 470, column: 6, scope: !220)
!322 = !DILocation(line: 470, column: 26, scope: !319)
!323 = !DILocation(line: 471, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !220, file: !12, line: 471, column: 6)
!325 = !DILocation(line: 471, column: 11, scope: !324)
!326 = !DILocation(line: 471, column: 6, scope: !220)
!327 = !DILocation(line: 471, column: 26, scope: !324)
!328 = !DILocation(line: 472, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !220, file: !12, line: 472, column: 6)
!330 = !DILocation(line: 472, column: 11, scope: !329)
!331 = !DILocation(line: 472, column: 6, scope: !220)
!332 = !DILocation(line: 472, column: 26, scope: !329)
!333 = !DILocation(line: 473, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !220, file: !12, line: 473, column: 6)
!335 = !DILocation(line: 473, column: 11, scope: !334)
!336 = !DILocation(line: 473, column: 6, scope: !220)
!337 = !DILocation(line: 473, column: 26, scope: !334)
!338 = !DILocation(line: 474, column: 6, scope: !339)
!339 = distinct !DILexicalBlock(scope: !220, file: !12, line: 474, column: 6)
!340 = !DILocation(line: 474, column: 11, scope: !339)
!341 = !DILocation(line: 474, column: 6, scope: !220)
!342 = !DILocation(line: 474, column: 27, scope: !339)
!343 = !DILocation(line: 475, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !220, file: !12, line: 475, column: 6)
!345 = !DILocation(line: 475, column: 11, scope: !344)
!346 = !DILocation(line: 475, column: 6, scope: !220)
!347 = !DILocation(line: 475, column: 32, scope: !344)
!348 = !DILocation(line: 477, column: 50, scope: !349)
!349 = distinct !DILexicalBlock(scope: !220, file: !12, line: 477, column: 6)
!350 = !DILocation(line: 477, column: 6, scope: !220)
!351 = !DILocation(line: 478, column: 3, scope: !349)
!352 = !DILocation(line: 478, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !12, line: 478, column: 3)
!354 = distinct !DILexicalBlock(scope: !349, file: !12, line: 478, column: 3)
!355 = !{i32 -2143562495}
!356 = !DILocation(line: 478, column: 3, scope: !354)
!357 = !DILocation(line: 480, column: 3, scope: !349)
!358 = !DILocation(line: 480, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !349, file: !12, line: 480, column: 3)
!360 = !DILocation(line: 480, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !359, file: !12, line: 480, column: 3)
!362 = !DILocation(line: 480, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !12, line: 480, column: 3)
!364 = !{i64 2151405004, i64 2151405033, i64 2151405079, i64 2151405137, i64 2151405191, i64 2151405245, i64 2151405300, i64 2151405331}
!365 = !DILocation(line: 483, column: 2, scope: !220)
!366 = !DILocation(line: 484, column: 1, scope: !220)
!367 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubroutineType(types: !369)
!369 = !{!24, !370, !22, !128}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !372, line: 11, flags: DIFlagFwdDecl)
!372 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!373 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !374, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{!11, !22, !25}
!376 = !{!377, !378}
!377 = !DILocalVariable(name: "flags", arg: 1, scope: !373, file: !12, line: 401, type: !22)
!378 = !DILocalVariable(name: "caller", arg: 2, scope: !373, file: !12, line: 401, type: !25)
!379 = !DILocation(line: 401, column: 67, scope: !373)
!380 = !DILocation(line: 401, column: 88, scope: !373)
!381 = !DILocation(line: 407, column: 6, scope: !382)
!382 = distinct !DILexicalBlock(scope: !373, file: !12, line: 407, column: 6)
!383 = !DILocation(line: 407, column: 6, scope: !373)
!384 = !DILocation(line: 413, column: 3, scope: !382)
!385 = !DILocation(line: 423, column: 38, scope: !386)
!386 = distinct !DILexicalBlock(scope: !373, file: !12, line: 423, column: 6)
!387 = !DILocation(line: 423, column: 44, scope: !386)
!388 = !DILocation(line: 423, column: 6, scope: !373)
!389 = !DILocation(line: 424, column: 3, scope: !386)
!390 = !DILocation(line: 426, column: 3, scope: !391)
!391 = distinct !DILexicalBlock(scope: !373, file: !12, line: 425, column: 6)
!392 = !DILocation(line: 429, column: 1, scope: !373)
!393 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !394, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{null}
