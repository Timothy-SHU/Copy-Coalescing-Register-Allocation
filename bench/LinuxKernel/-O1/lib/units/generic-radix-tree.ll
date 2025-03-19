; ModuleID = 'lib/generic-radix-tree.c'
source_filename = "lib/generic-radix-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___genradix_ptr: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __genradix_ptr ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___genradix_ptr_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __genradix_ptr_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___genradix_iter_peek: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __genradix_iter_peek ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___genradix_prealloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __genradix_prealloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___genradix_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __genradix_free ; .previous"

%struct.__genradix = type { ptr }
%struct.genradix_node = type { %union.anon }
%union.anon = type { [512 x ptr] }
%struct.genradix_iter = type { i64, i64 }

@__UNIQUE_ID___addressable___genradix_ptr120 = internal global ptr @__genradix_ptr, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable___genradix_ptr_alloc123 = internal global ptr @__genradix_ptr_alloc, section ".discard.addressable", align 8, !dbg !54
@__UNIQUE_ID___addressable___genradix_iter_peek125 = internal global ptr @__genradix_iter_peek, section ".discard.addressable", align 8, !dbg !56
@__UNIQUE_ID___addressable___genradix_prealloc126 = internal global ptr @__genradix_prealloc, section ".discard.addressable", align 8, !dbg !58
@__UNIQUE_ID___addressable___genradix_free127 = internal global ptr @__genradix_free, section ".discard.addressable", align 8, !dbg !60
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable___genradix_ptr120, ptr @__UNIQUE_ID___addressable___genradix_ptr_alloc123, ptr @__UNIQUE_ID___addressable___genradix_iter_peek125, ptr @__UNIQUE_ID___addressable___genradix_prealloc126, ptr @__UNIQUE_ID___addressable___genradix_free127], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__genradix_ptr(ptr noundef %radix, i64 noundef %offset) #0 align 16 !dbg !71 {
entry:
  %retval = alloca ptr, align 8
  %radix.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %r = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %n = alloca ptr, align 8
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %radix, ptr %radix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %radix.addr, metadata !79, metadata !DIExpression()), !dbg !84
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !80, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %r, metadata !81, metadata !DIExpression()), !dbg !87
  br label %do.body, !dbg !88

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !90

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !90

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %radix.addr, align 8, !dbg !88
  %root = getelementptr inbounds %struct.__genradix, ptr %0, i32 0, i32 0, !dbg !88
  %1 = load volatile ptr, ptr %root, align 8, !dbg !88
  store ptr %1, ptr %tmp, align 8, !dbg !90
  %2 = load ptr, ptr %tmp, align 8, !dbg !88
  store ptr %2, ptr %r, align 8, !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %n, metadata !82, metadata !DIExpression()), !dbg !93
  %3 = load ptr, ptr %r, align 8, !dbg !94
  %call = call ptr @genradix_root_to_node(ptr noundef %3) #9, !dbg !95
  store ptr %call, ptr %n, align 8, !dbg !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #8, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %level, metadata !83, metadata !DIExpression()), !dbg !97
  %4 = load ptr, ptr %r, align 8, !dbg !98
  %call1 = call i32 @genradix_root_to_depth(ptr noundef %4) #9, !dbg !99
  store i32 %call1, ptr %level, align 4, !dbg !97
  %5 = load i64, ptr %offset.addr, align 8, !dbg !100
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !100
  br i1 %6, label %cond.true, label %cond.false3, !dbg !100

cond.true:                                        ; preds = %do.end
  %7 = load i64, ptr %offset.addr, align 8, !dbg !100
  %cmp = icmp ult i64 %7, 2, !dbg !100
  br i1 %cmp, label %cond.true2, label %cond.false, !dbg !100

cond.true2:                                       ; preds = %cond.true
  br label %cond.end, !dbg !100

cond.false:                                       ; preds = %cond.true
  %8 = load i64, ptr %offset.addr, align 8, !dbg !100
  %9 = call i64 @llvm.ctlz.i64(i64 %8, i1 true), !dbg !100
  %cast = trunc i64 %9 to i32, !dbg !100
  %sub = sub i32 63, %cast, !dbg !100
  br label %cond.end, !dbg !100

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi i32 [ 0, %cond.true2 ], [ %sub, %cond.false ], !dbg !100
  br label %cond.end5, !dbg !100

cond.false3:                                      ; preds = %do.end
  %10 = load i64, ptr %offset.addr, align 8, !dbg !100
  %call4 = call i32 @__ilog2_u64(i64 noundef %10) #10, !dbg !100
  br label %cond.end5, !dbg !100

cond.end5:                                        ; preds = %cond.false3, %cond.end
  %cond6 = phi i32 [ %cond, %cond.end ], [ %call4, %cond.false3 ], !dbg !100
  %11 = load i32, ptr %level, align 4, !dbg !102
  %call7 = call i32 @genradix_depth_shift(i32 noundef %11) #9, !dbg !103
  %cmp8 = icmp sge i32 %cond6, %call7, !dbg !104
  br i1 %cmp8, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %cond.end5
  store ptr null, ptr %retval, align 8, !dbg !106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !106

if.end:                                           ; preds = %cond.end5
  br label %while.cond, !dbg !107

while.cond:                                       ; preds = %if.end13, %if.end
  br label %while.body, !dbg !107

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %n, align 8, !dbg !108
  %tobool = icmp ne ptr %12, null, !dbg !108
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !111

if.then9:                                         ; preds = %while.body
  store ptr null, ptr %retval, align 8, !dbg !112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !112

if.end10:                                         ; preds = %while.body
  %13 = load i32, ptr %level, align 4, !dbg !113
  %tobool11 = icmp ne i32 %13, 0, !dbg !113
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !115

if.then12:                                        ; preds = %if.end10
  br label %while.end, !dbg !116

if.end13:                                         ; preds = %if.end10
  %14 = load i32, ptr %level, align 4, !dbg !117
  %dec = add i32 %14, -1, !dbg !117
  store i32 %dec, ptr %level, align 4, !dbg !117
  %15 = load ptr, ptr %n, align 8, !dbg !118
  %16 = getelementptr inbounds %struct.genradix_node, ptr %15, i32 0, i32 0, !dbg !119
  %17 = load i64, ptr %offset.addr, align 8, !dbg !120
  %18 = load i32, ptr %level, align 4, !dbg !121
  %call14 = call i32 @genradix_depth_shift(i32 noundef %18) #9, !dbg !122
  %sh_prom = zext i32 %call14 to i64, !dbg !123
  %shr = lshr i64 %17, %sh_prom, !dbg !123
  %arrayidx = getelementptr [512 x ptr], ptr %16, i64 0, i64 %shr, !dbg !118
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !118
  store ptr %19, ptr %n, align 8, !dbg !124
  %20 = load i32, ptr %level, align 4, !dbg !125
  %call15 = call i64 @genradix_depth_size(i32 noundef %20) #9, !dbg !126
  %sub16 = sub i64 %call15, 1, !dbg !127
  %21 = load i64, ptr %offset.addr, align 8, !dbg !128
  %and = and i64 %21, %sub16, !dbg !128
  store i64 %and, ptr %offset.addr, align 8, !dbg !128
  br label %while.cond, !dbg !107, !llvm.loop !129

while.end:                                        ; preds = %if.then12
  %22 = load ptr, ptr %n, align 8, !dbg !132
  %23 = getelementptr inbounds %struct.genradix_node, ptr %22, i32 0, i32 0, !dbg !133
  %24 = load i64, ptr %offset.addr, align 8, !dbg !134
  %arrayidx17 = getelementptr [4096 x i8], ptr %23, i64 0, i64 %24, !dbg !132
  store ptr %arrayidx17, ptr %retval, align 8, !dbg !135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !135

cleanup:                                          ; preds = %while.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #8, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8, !dbg !136
  %25 = load ptr, ptr %retval, align 8, !dbg !136
  ret ptr %25, !dbg !136
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @genradix_root_to_node(ptr noundef %r) #3 align 16 !dbg !137 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load ptr, ptr %r.addr, align 8, !dbg !143
  %1 = ptrtoint ptr %0 to i64, !dbg !144
  %and = and i64 %1, -8, !dbg !145
  %2 = inttoptr i64 %and to ptr, !dbg !146
  ret ptr %2, !dbg !147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @genradix_root_to_depth(ptr noundef %r) #3 align 16 !dbg !148 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load ptr, ptr %r.addr, align 8, !dbg !154
  %1 = ptrtoint ptr %0 to i64, !dbg !155
  %and = and i64 %1, 7, !dbg !156
  %conv = trunc i64 %and to i32, !dbg !155
  ret i32 %conv, !dbg !157
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #5 align 16 !dbg !158 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load i64, ptr %n.addr, align 8, !dbg !166
  %call = call i32 @fls64(i64 noundef %0) #9, !dbg !167
  %sub = sub i32 %call, 1, !dbg !168
  ret i32 %sub, !dbg !169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @genradix_depth_shift(i32 noundef %depth) #3 align 16 !dbg !170 {
entry:
  %depth.addr = alloca i32, align 4
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load i32, ptr %depth.addr, align 4, !dbg !176
  %mul = mul i32 9, %0, !dbg !177
  %add = add i32 12, %mul, !dbg !178
  ret i32 %add, !dbg !179
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @genradix_depth_size(i32 noundef %depth) #3 align 16 !dbg !180 {
entry:
  %depth.addr = alloca i32, align 4
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = load i32, ptr %depth.addr, align 4, !dbg !186
  %call = call i32 @genradix_depth_shift(i32 noundef %0) #9, !dbg !187
  %sh_prom = zext i32 %call to i64, !dbg !188
  %shl = shl i64 1, %sh_prom, !dbg !188
  ret i64 %shl, !dbg !189
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__genradix_ptr_alloc(ptr noundef %radix, i64 noundef %offset, i32 noundef %gfp_mask) #0 align 16 !dbg !190 {
entry:
  %retval = alloca ptr, align 8
  %radix.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %n = alloca ptr, align 8
  %new_node = alloca ptr, align 8
  %level = alloca i32, align 4
  %r = alloca ptr, align 8
  %new_root = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tmp43 = alloca ptr, align 8
  %__ai_ptr53 = alloca ptr, align 8
  %tmp57 = alloca ptr, align 8
  %__ret58 = alloca ptr, align 8
  %__old59 = alloca ptr, align 8
  %__new60 = alloca ptr, align 8
  %__ptr61 = alloca ptr, align 8
  %tmp62 = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %radix, ptr %radix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %radix.addr, metadata !194, metadata !DIExpression()), !dbg !228
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !195, metadata !DIExpression()), !dbg !229
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !196, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #8, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %v, metadata !197, metadata !DIExpression()), !dbg !232
  br label %do.body, !dbg !233

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !235

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !235

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %radix.addr, align 8, !dbg !233
  %root = getelementptr inbounds %struct.__genradix, ptr %0, i32 0, i32 0, !dbg !233
  %1 = load volatile ptr, ptr %root, align 8, !dbg !233
  store ptr %1, ptr %tmp, align 8, !dbg !235
  %2 = load ptr, ptr %tmp, align 8, !dbg !233
  store ptr %2, ptr %v, align 8, !dbg !232
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !237
  call void @llvm.dbg.declare(metadata ptr %n, metadata !198, metadata !DIExpression()), !dbg !238
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_node) #8, !dbg !237
  call void @llvm.dbg.declare(metadata ptr %new_node, metadata !199, metadata !DIExpression()), !dbg !239
  store ptr null, ptr %new_node, align 8, !dbg !239
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #8, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %level, metadata !200, metadata !DIExpression()), !dbg !241
  br label %while.cond, !dbg !242

while.cond:                                       ; preds = %cleanup.cont, %do.end
  br label %while.body, !dbg !242

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %r, metadata !201, metadata !DIExpression()), !dbg !244
  %3 = load ptr, ptr %v, align 8, !dbg !245
  store ptr %3, ptr %r, align 8, !dbg !244
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_root) #8, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %new_root, metadata !203, metadata !DIExpression()), !dbg !246
  %4 = load ptr, ptr %r, align 8, !dbg !247
  %call = call ptr @genradix_root_to_node(ptr noundef %4) #9, !dbg !248
  store ptr %call, ptr %n, align 8, !dbg !249
  %5 = load ptr, ptr %r, align 8, !dbg !250
  %call1 = call i32 @genradix_root_to_depth(ptr noundef %5) #9, !dbg !251
  store i32 %call1, ptr %level, align 4, !dbg !252
  %6 = load ptr, ptr %n, align 8, !dbg !253
  %tobool = icmp ne ptr %6, null, !dbg !253
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !255

land.lhs.true:                                    ; preds = %while.body
  %7 = load i64, ptr %offset.addr, align 8, !dbg !256
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !256
  br i1 %8, label %cond.true, label %cond.false3, !dbg !256

cond.true:                                        ; preds = %land.lhs.true
  %9 = load i64, ptr %offset.addr, align 8, !dbg !256
  %cmp = icmp ult i64 %9, 2, !dbg !256
  br i1 %cmp, label %cond.true2, label %cond.false, !dbg !256

cond.true2:                                       ; preds = %cond.true
  br label %cond.end, !dbg !256

cond.false:                                       ; preds = %cond.true
  %10 = load i64, ptr %offset.addr, align 8, !dbg !256
  %11 = call i64 @llvm.ctlz.i64(i64 %10, i1 true), !dbg !256
  %cast = trunc i64 %11 to i32, !dbg !256
  %sub = sub i32 63, %cast, !dbg !256
  br label %cond.end, !dbg !256

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi i32 [ 0, %cond.true2 ], [ %sub, %cond.false ], !dbg !256
  br label %cond.end5, !dbg !256

cond.false3:                                      ; preds = %land.lhs.true
  %12 = load i64, ptr %offset.addr, align 8, !dbg !256
  %call4 = call i32 @__ilog2_u64(i64 noundef %12) #10, !dbg !256
  br label %cond.end5, !dbg !256

cond.end5:                                        ; preds = %cond.false3, %cond.end
  %cond6 = phi i32 [ %cond, %cond.end ], [ %call4, %cond.false3 ], !dbg !256
  %13 = load i32, ptr %level, align 4, !dbg !257
  %call7 = call i32 @genradix_depth_shift(i32 noundef %13) #9, !dbg !258
  %cmp8 = icmp slt i32 %cond6, %call7, !dbg !259
  br i1 %cmp8, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %cond.end5
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !261

if.end:                                           ; preds = %cond.end5, %while.body
  %14 = load ptr, ptr %new_node, align 8, !dbg !262
  %tobool9 = icmp ne ptr %14, null, !dbg !262
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !264

if.then10:                                        ; preds = %if.end
  %15 = load i32, ptr %gfp_mask.addr, align 4, !dbg !265
  %call11 = call ptr @genradix_alloc_node(i32 noundef %15) #9, !dbg !267
  store ptr %call11, ptr %new_node, align 8, !dbg !268
  %16 = load ptr, ptr %new_node, align 8, !dbg !269
  %tobool12 = icmp ne ptr %16, null, !dbg !269
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !271

if.then13:                                        ; preds = %if.then10
  store ptr null, ptr %retval, align 8, !dbg !272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !272

if.end14:                                         ; preds = %if.then10
  br label %if.end15, !dbg !273

if.end15:                                         ; preds = %if.end14, %if.end
  %17 = load ptr, ptr %n, align 8, !dbg !274
  %18 = load ptr, ptr %new_node, align 8, !dbg !275
  %19 = getelementptr inbounds %struct.genradix_node, ptr %18, i32 0, i32 0, !dbg !276
  %arrayidx = getelementptr [512 x ptr], ptr %19, i64 0, i64 0, !dbg !275
  store ptr %17, ptr %arrayidx, align 8, !dbg !277
  %20 = load ptr, ptr %new_node, align 8, !dbg !278
  %21 = ptrtoint ptr %20 to i64, !dbg !279
  %22 = load ptr, ptr %n, align 8, !dbg !280
  %tobool16 = icmp ne ptr %22, null, !dbg !280
  br i1 %tobool16, label %cond.true17, label %cond.false18, !dbg !280

cond.true17:                                      ; preds = %if.end15
  %23 = load i32, ptr %level, align 4, !dbg !281
  %add = add i32 %23, 1, !dbg !282
  br label %cond.end19, !dbg !280

cond.false18:                                     ; preds = %if.end15
  br label %cond.end19, !dbg !280

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ %add, %cond.true17 ], [ 0, %cond.false18 ], !dbg !280
  %conv = zext i32 %cond20 to i64, !dbg !283
  %or = or i64 %21, %conv, !dbg !284
  %24 = inttoptr i64 %or to ptr, !dbg !285
  store ptr %24, ptr %new_root, align 8, !dbg !286
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !204, metadata !DIExpression()), !dbg !287
  %25 = load ptr, ptr %radix.addr, align 8, !dbg !287
  %root21 = getelementptr inbounds %struct.__genradix, ptr %25, i32 0, i32 0, !dbg !287
  store ptr %root21, ptr %__ai_ptr, align 8, !dbg !287
  br label %do.body22, !dbg !287

do.body22:                                        ; preds = %cond.end19
  br label %do.cond23, !dbg !288

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !288

do.end24:                                         ; preds = %do.cond23
  %26 = load ptr, ptr %__ai_ptr, align 8, !dbg !287
  call void @instrument_atomic_read_write(ptr noundef %26, i64 noundef 8) #9, !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #8, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !208, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #8, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !210, metadata !DIExpression()), !dbg !290
  %27 = load ptr, ptr %r, align 8, !dbg !290
  store ptr %27, ptr %__old, align 8, !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #8, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !211, metadata !DIExpression()), !dbg !290
  %28 = load ptr, ptr %new_root, align 8, !dbg !290
  store ptr %28, ptr %__new, align 8, !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #8, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !212, metadata !DIExpression()), !dbg !290
  %29 = load ptr, ptr %__ai_ptr, align 8, !dbg !290
  store ptr %29, ptr %__ptr, align 8, !dbg !290
  %30 = load ptr, ptr %__ptr, align 8, !dbg !290
  %31 = load ptr, ptr %__new, align 8, !dbg !290
  %32 = load ptr, ptr %__old, align 8, !dbg !290
  %33 = call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %30, ptr %31, ptr %32, ptr elementtype(i64) %30) #8, !dbg !290, !srcloc !291
  store ptr %33, ptr %__ret, align 8, !dbg !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #8, !dbg !290
  %34 = load ptr, ptr %__ret, align 8, !dbg !290
  store ptr %34, ptr %tmp26, align 8, !dbg !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #8, !dbg !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #8, !dbg !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #8, !dbg !287
  %35 = load ptr, ptr %tmp26, align 8, !dbg !290
  store ptr %35, ptr %tmp25, align 8, !dbg !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !292
  %36 = load ptr, ptr %tmp25, align 8, !dbg !287
  store ptr %36, ptr %v, align 8, !dbg !293
  %37 = load ptr, ptr %r, align 8, !dbg !294
  %cmp27 = icmp eq ptr %36, %37, !dbg !295
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !296

if.then29:                                        ; preds = %do.end24
  %38 = load ptr, ptr %new_root, align 8, !dbg !297
  store ptr %38, ptr %v, align 8, !dbg !299
  store ptr null, ptr %new_node, align 8, !dbg !300
  br label %if.end31, !dbg !301

if.else:                                          ; preds = %do.end24
  %39 = load ptr, ptr %new_node, align 8, !dbg !302
  %40 = getelementptr inbounds %struct.genradix_node, ptr %39, i32 0, i32 0, !dbg !304
  %arrayidx30 = getelementptr [512 x ptr], ptr %40, i64 0, i64 0, !dbg !302
  store ptr null, ptr %arrayidx30, align 8, !dbg !305
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !306
  br label %cleanup, !dbg !306

cleanup:                                          ; preds = %if.end31, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_root) #8, !dbg !306
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8, !dbg !306
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup78 [
    i32 0, label %cleanup.cont
    i32 5, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !242, !llvm.loop !307

while.end:                                        ; preds = %cleanup
  br label %while.cond33, !dbg !308

while.cond33:                                     ; preds = %cleanup.cont72, %while.end
  %41 = load i32, ptr %level, align 4, !dbg !309
  %dec = add i32 %41, -1, !dbg !309
  store i32 %dec, ptr %level, align 4, !dbg !309
  %tobool34 = icmp ne i32 %41, 0, !dbg !308
  br i1 %tobool34, label %while.body35, label %while.end73, !dbg !308

while.body35:                                     ; preds = %while.cond33
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %p, metadata !213, metadata !DIExpression()), !dbg !311
  %42 = load ptr, ptr %n, align 8, !dbg !312
  %43 = getelementptr inbounds %struct.genradix_node, ptr %42, i32 0, i32 0, !dbg !313
  %44 = load i64, ptr %offset.addr, align 8, !dbg !314
  %45 = load i32, ptr %level, align 4, !dbg !315
  %call36 = call i32 @genradix_depth_shift(i32 noundef %45) #9, !dbg !316
  %sh_prom = zext i32 %call36 to i64, !dbg !317
  %shr = lshr i64 %44, %sh_prom, !dbg !317
  %arrayidx37 = getelementptr [512 x ptr], ptr %43, i64 0, i64 %shr, !dbg !312
  store ptr %arrayidx37, ptr %p, align 8, !dbg !311
  %46 = load i32, ptr %level, align 4, !dbg !318
  %call38 = call i64 @genradix_depth_size(i32 noundef %46) #9, !dbg !319
  %sub39 = sub i64 %call38, 1, !dbg !320
  %47 = load i64, ptr %offset.addr, align 8, !dbg !321
  %and = and i64 %47, %sub39, !dbg !321
  store i64 %and, ptr %offset.addr, align 8, !dbg !321
  br label %do.body40, !dbg !322

do.body40:                                        ; preds = %while.body35
  br label %do.cond41, !dbg !324

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !324

do.end42:                                         ; preds = %do.cond41
  %48 = load ptr, ptr %p, align 8, !dbg !322
  %49 = load volatile ptr, ptr %48, align 8, !dbg !322
  store ptr %49, ptr %tmp43, align 8, !dbg !324
  %50 = load ptr, ptr %tmp43, align 8, !dbg !322
  store ptr %50, ptr %n, align 8, !dbg !326
  %51 = load ptr, ptr %n, align 8, !dbg !327
  %tobool44 = icmp ne ptr %51, null, !dbg !327
  br i1 %tobool44, label %if.end69, label %if.then45, !dbg !328

if.then45:                                        ; preds = %do.end42
  %52 = load ptr, ptr %new_node, align 8, !dbg !329
  %tobool46 = icmp ne ptr %52, null, !dbg !329
  br i1 %tobool46, label %if.end52, label %if.then47, !dbg !331

if.then47:                                        ; preds = %if.then45
  %53 = load i32, ptr %gfp_mask.addr, align 4, !dbg !332
  %call48 = call ptr @genradix_alloc_node(i32 noundef %53) #9, !dbg !334
  store ptr %call48, ptr %new_node, align 8, !dbg !335
  %54 = load ptr, ptr %new_node, align 8, !dbg !336
  %tobool49 = icmp ne ptr %54, null, !dbg !336
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !338

if.then50:                                        ; preds = %if.then47
  store ptr null, ptr %retval, align 8, !dbg !339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !339

if.end51:                                         ; preds = %if.then47
  br label %if.end52, !dbg !340

if.end52:                                         ; preds = %if.end51, %if.then45
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr53) #8, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr53, metadata !216, metadata !DIExpression()), !dbg !341
  %55 = load ptr, ptr %p, align 8, !dbg !341
  store ptr %55, ptr %__ai_ptr53, align 8, !dbg !341
  br label %do.body54, !dbg !341

do.body54:                                        ; preds = %if.end52
  br label %do.cond55, !dbg !342

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !342

do.end56:                                         ; preds = %do.cond55
  %56 = load ptr, ptr %__ai_ptr53, align 8, !dbg !341
  call void @instrument_atomic_read_write(ptr noundef %56, i64 noundef 8) #9, !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret58) #8, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %__ret58, metadata !221, metadata !DIExpression()), !dbg !344
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old59) #8, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %__old59, metadata !223, metadata !DIExpression()), !dbg !344
  store ptr null, ptr %__old59, align 8, !dbg !344
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new60) #8, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %__new60, metadata !224, metadata !DIExpression()), !dbg !344
  %57 = load ptr, ptr %new_node, align 8, !dbg !344
  store ptr %57, ptr %__new60, align 8, !dbg !344
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr61) #8, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %__ptr61, metadata !225, metadata !DIExpression()), !dbg !344
  %58 = load ptr, ptr %__ai_ptr53, align 8, !dbg !344
  store ptr %58, ptr %__ptr61, align 8, !dbg !344
  %59 = load ptr, ptr %__ptr61, align 8, !dbg !344
  %60 = load ptr, ptr %__new60, align 8, !dbg !344
  %61 = load ptr, ptr %__old59, align 8, !dbg !344
  %62 = call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %59, ptr %60, ptr %61, ptr elementtype(i64) %59) #8, !dbg !344, !srcloc !345
  store ptr %62, ptr %__ret58, align 8, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr61) #8, !dbg !344
  %63 = load ptr, ptr %__ret58, align 8, !dbg !344
  store ptr %63, ptr %tmp62, align 8, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new60) #8, !dbg !341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old59) #8, !dbg !341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret58) #8, !dbg !341
  %64 = load ptr, ptr %tmp62, align 8, !dbg !344
  store ptr %64, ptr %tmp57, align 8, !dbg !341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr53) #8, !dbg !346
  %65 = load ptr, ptr %tmp57, align 8, !dbg !341
  store ptr %65, ptr %n, align 8, !dbg !347
  %tobool63 = icmp ne ptr %65, null, !dbg !347
  br i1 %tobool63, label %if.end68, label %if.then64, !dbg !348

if.then64:                                        ; preds = %do.end56
  br label %do.body65, !dbg !349

do.body65:                                        ; preds = %if.then64
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #8, !dbg !350
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !226, metadata !DIExpression()), !dbg !350
  %66 = load ptr, ptr %n, align 8, !dbg !350
  store ptr %66, ptr %__tmp, align 8, !dbg !350
  %67 = load ptr, ptr %new_node, align 8, !dbg !350
  store ptr %67, ptr %n, align 8, !dbg !350
  %68 = load ptr, ptr %__tmp, align 8, !dbg !350
  store ptr %68, ptr %new_node, align 8, !dbg !350
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #8, !dbg !349
  br label %do.cond66, !dbg !350

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !350

do.end67:                                         ; preds = %do.cond66
  br label %if.end68, !dbg !350

if.end68:                                         ; preds = %do.end67, %do.end56
  br label %if.end69, !dbg !351

if.end69:                                         ; preds = %if.end68, %do.end42
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !352
  br label %cleanup70, !dbg !352

cleanup70:                                        ; preds = %if.end69, %if.then50
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !352
  %cleanup.dest71 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest71, label %cleanup78 [
    i32 0, label %cleanup.cont72
  ]

cleanup.cont72:                                   ; preds = %cleanup70
  br label %while.cond33, !dbg !308, !llvm.loop !353

while.end73:                                      ; preds = %while.cond33
  %69 = load ptr, ptr %new_node, align 8, !dbg !355
  %tobool74 = icmp ne ptr %69, null, !dbg !355
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !357

if.then75:                                        ; preds = %while.end73
  %70 = load ptr, ptr %new_node, align 8, !dbg !358
  call void @genradix_free_node(ptr noundef %70) #9, !dbg !359
  br label %if.end76, !dbg !359

if.end76:                                         ; preds = %if.then75, %while.end73
  %71 = load ptr, ptr %n, align 8, !dbg !360
  %72 = getelementptr inbounds %struct.genradix_node, ptr %71, i32 0, i32 0, !dbg !361
  %73 = load i64, ptr %offset.addr, align 8, !dbg !362
  %arrayidx77 = getelementptr [4096 x i8], ptr %72, i64 0, i64 %73, !dbg !360
  store ptr %arrayidx77, ptr %retval, align 8, !dbg !363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !363

cleanup78:                                        ; preds = %if.end76, %cleanup70, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #8, !dbg !364
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_node) #8, !dbg !364
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !364
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #8, !dbg !364
  %74 = load ptr, ptr %retval, align 8, !dbg !364
  ret ptr %74, !dbg !364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @genradix_alloc_node(i32 noundef %gfp_mask) #3 align 16 !dbg !365 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %node, metadata !370, metadata !DIExpression()), !dbg !373
  %0 = load i32, ptr %gfp_mask.addr, align 4, !dbg !374
  %or = or i32 %0, 256, !dbg !374
  %call = call i64 @__get_free_pages(i32 noundef %or, i32 noundef 0) #9, !dbg !374
  %1 = inttoptr i64 %call to ptr, !dbg !375
  store ptr %1, ptr %node, align 8, !dbg !376
  %2 = load ptr, ptr %node, align 8, !dbg !377
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !378
  call void @kmemleak_alloc(ptr noundef %2, i64 noundef 4096, i32 noundef 1, i32 noundef %3) #9, !dbg !379
  %4 = load ptr, ptr %node, align 8, !dbg !380
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8, !dbg !381
  ret ptr %4, !dbg !382
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !383 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !391, metadata !DIExpression()), !dbg !393
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !392, metadata !DIExpression()), !dbg !394
  %0 = load ptr, ptr %v.addr, align 8, !dbg !395
  %1 = load i64, ptr %size.addr, align 8, !dbg !396
  %conv = trunc i64 %1 to i32, !dbg !396
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !397
  %2 = load ptr, ptr %v.addr, align 8, !dbg !398
  %3 = load i64, ptr %size.addr, align 8, !dbg !398
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !398
  ret void, !dbg !399
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @genradix_free_node(ptr noundef %node) #3 align 16 !dbg !400 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load ptr, ptr %node.addr, align 8, !dbg !406
  call void @kmemleak_free(ptr noundef %0) #9, !dbg !407
  %1 = load ptr, ptr %node.addr, align 8, !dbg !408
  %2 = ptrtoint ptr %1 to i64, !dbg !408
  call void @free_pages(i64 noundef %2, i32 noundef 0) #9, !dbg !408
  ret void, !dbg !409
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__genradix_iter_peek(ptr noundef %iter, ptr noundef %radix, i64 noundef %objs_per_page) #0 align 16 !dbg !410 {
entry:
  %retval = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %radix.addr = alloca ptr, align 8
  %objs_per_page.addr = alloca i64, align 8
  %r = alloca ptr, align 8
  %n = alloca ptr, align 8
  %level = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %objs_per_ptr = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !419, metadata !DIExpression()), !dbg !430
  store ptr %radix, ptr %radix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %radix.addr, metadata !420, metadata !DIExpression()), !dbg !431
  store i64 %objs_per_page, ptr %objs_per_page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %objs_per_page.addr, metadata !421, metadata !DIExpression()), !dbg !432
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %r, metadata !422, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %n, metadata !423, metadata !DIExpression()), !dbg !436
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #8, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %level, metadata !424, metadata !DIExpression()), !dbg !438
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %i, metadata !425, metadata !DIExpression()), !dbg !439
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !440
  %offset = getelementptr inbounds %struct.genradix_iter, ptr %0, i32 0, i32 0, !dbg !442
  %1 = load i64, ptr %offset, align 8, !dbg !442
  %cmp = icmp eq i64 %1, -1, !dbg !443
  br i1 %cmp, label %if.then, label %if.end, !dbg !444

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !445

if.end:                                           ; preds = %entry
  br label %restart, !dbg !446

restart:                                          ; preds = %cleanup, %if.end
  call void @llvm.dbg.label(metadata !426), !dbg !447
  br label %do.body, !dbg !448

do.body:                                          ; preds = %restart
  br label %do.cond, !dbg !450

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !450

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %radix.addr, align 8, !dbg !448
  %root = getelementptr inbounds %struct.__genradix, ptr %2, i32 0, i32 0, !dbg !448
  %3 = load volatile ptr, ptr %root, align 8, !dbg !448
  store ptr %3, ptr %tmp, align 8, !dbg !450
  %4 = load ptr, ptr %tmp, align 8, !dbg !448
  store ptr %4, ptr %r, align 8, !dbg !452
  %5 = load ptr, ptr %r, align 8, !dbg !453
  %tobool = icmp ne ptr %5, null, !dbg !453
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !455

if.then1:                                         ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !456

if.end2:                                          ; preds = %do.end
  %6 = load ptr, ptr %r, align 8, !dbg !457
  %call = call ptr @genradix_root_to_node(ptr noundef %6) #9, !dbg !458
  store ptr %call, ptr %n, align 8, !dbg !459
  %7 = load ptr, ptr %r, align 8, !dbg !460
  %call3 = call i32 @genradix_root_to_depth(ptr noundef %7) #9, !dbg !461
  store i32 %call3, ptr %level, align 4, !dbg !462
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !463
  %offset4 = getelementptr inbounds %struct.genradix_iter, ptr %8, i32 0, i32 0, !dbg !463
  %9 = load i64, ptr %offset4, align 8, !dbg !463
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !463
  br i1 %10, label %cond.true, label %cond.false9, !dbg !463

cond.true:                                        ; preds = %if.end2
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !463
  %offset5 = getelementptr inbounds %struct.genradix_iter, ptr %11, i32 0, i32 0, !dbg !463
  %12 = load i64, ptr %offset5, align 8, !dbg !463
  %cmp6 = icmp ult i64 %12, 2, !dbg !463
  br i1 %cmp6, label %cond.true7, label %cond.false, !dbg !463

cond.true7:                                       ; preds = %cond.true
  br label %cond.end, !dbg !463

cond.false:                                       ; preds = %cond.true
  %13 = load ptr, ptr %iter.addr, align 8, !dbg !463
  %offset8 = getelementptr inbounds %struct.genradix_iter, ptr %13, i32 0, i32 0, !dbg !463
  %14 = load i64, ptr %offset8, align 8, !dbg !463
  %15 = call i64 @llvm.ctlz.i64(i64 %14, i1 true), !dbg !463
  %cast = trunc i64 %15 to i32, !dbg !463
  %sub = sub i32 63, %cast, !dbg !463
  br label %cond.end, !dbg !463

cond.end:                                         ; preds = %cond.false, %cond.true7
  %cond = phi i32 [ 0, %cond.true7 ], [ %sub, %cond.false ], !dbg !463
  br label %cond.end12, !dbg !463

cond.false9:                                      ; preds = %if.end2
  %16 = load ptr, ptr %iter.addr, align 8, !dbg !463
  %offset10 = getelementptr inbounds %struct.genradix_iter, ptr %16, i32 0, i32 0, !dbg !463
  %17 = load i64, ptr %offset10, align 8, !dbg !463
  %call11 = call i32 @__ilog2_u64(i64 noundef %17) #10, !dbg !463
  br label %cond.end12, !dbg !463

cond.end12:                                       ; preds = %cond.false9, %cond.end
  %cond13 = phi i32 [ %cond, %cond.end ], [ %call11, %cond.false9 ], !dbg !463
  %18 = load i32, ptr %level, align 4, !dbg !465
  %call14 = call i32 @genradix_depth_shift(i32 noundef %18) #9, !dbg !466
  %cmp15 = icmp sge i32 %cond13, %call14, !dbg !467
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !468

if.then16:                                        ; preds = %cond.end12
  store ptr null, ptr %retval, align 8, !dbg !469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !469

if.end17:                                         ; preds = %cond.end12
  br label %while.cond, !dbg !470

while.cond:                                       ; preds = %while.end, %if.end17
  %19 = load i32, ptr %level, align 4, !dbg !471
  %tobool18 = icmp ne i32 %19, 0, !dbg !470
  br i1 %tobool18, label %while.body, label %while.end47, !dbg !470

while.body:                                       ; preds = %while.cond
  %20 = load i32, ptr %level, align 4, !dbg !472
  %dec = add i32 %20, -1, !dbg !472
  store i32 %dec, ptr %level, align 4, !dbg !472
  %21 = load ptr, ptr %iter.addr, align 8, !dbg !473
  %offset19 = getelementptr inbounds %struct.genradix_iter, ptr %21, i32 0, i32 0, !dbg !474
  %22 = load i64, ptr %offset19, align 8, !dbg !474
  %23 = load i32, ptr %level, align 4, !dbg !475
  %call20 = call i32 @genradix_depth_shift(i32 noundef %23) #9, !dbg !476
  %sh_prom = zext i32 %call20 to i64, !dbg !477
  %shr = lshr i64 %22, %sh_prom, !dbg !477
  %and = and i64 %shr, 511, !dbg !478
  %conv = trunc i64 %and to i32, !dbg !479
  store i32 %conv, ptr %i, align 4, !dbg !480
  br label %while.cond21, !dbg !481

while.cond21:                                     ; preds = %cleanup.cont, %while.body
  %24 = load ptr, ptr %n, align 8, !dbg !482
  %25 = getelementptr inbounds %struct.genradix_node, ptr %24, i32 0, i32 0, !dbg !483
  %26 = load i32, ptr %i, align 4, !dbg !484
  %idxprom = zext i32 %26 to i64, !dbg !482
  %arrayidx = getelementptr [512 x ptr], ptr %25, i64 0, i64 %idxprom, !dbg !482
  %27 = load ptr, ptr %arrayidx, align 8, !dbg !482
  %tobool22 = icmp ne ptr %27, null, !dbg !485
  %lnot = xor i1 %tobool22, true, !dbg !485
  br i1 %lnot, label %while.body23, label %while.end, !dbg !481

while.body23:                                     ; preds = %while.cond21
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs_per_ptr) #8, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %objs_per_ptr, metadata !427, metadata !DIExpression()), !dbg !487
  %28 = load i32, ptr %level, align 4, !dbg !488
  %call24 = call i64 @genradix_depth_size(i32 noundef %28) #9, !dbg !489
  store i64 %call24, ptr %objs_per_ptr, align 8, !dbg !487
  %29 = load ptr, ptr %iter.addr, align 8, !dbg !490
  %offset25 = getelementptr inbounds %struct.genradix_iter, ptr %29, i32 0, i32 0, !dbg !492
  %30 = load i64, ptr %offset25, align 8, !dbg !492
  %31 = load i64, ptr %objs_per_ptr, align 8, !dbg !493
  %add = add i64 %30, %31, !dbg !494
  %32 = load ptr, ptr %iter.addr, align 8, !dbg !495
  %offset26 = getelementptr inbounds %struct.genradix_iter, ptr %32, i32 0, i32 0, !dbg !496
  %33 = load i64, ptr %offset26, align 8, !dbg !496
  %cmp27 = icmp ult i64 %add, %33, !dbg !497
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !498

if.then29:                                        ; preds = %while.body23
  %34 = load ptr, ptr %iter.addr, align 8, !dbg !499
  %offset30 = getelementptr inbounds %struct.genradix_iter, ptr %34, i32 0, i32 0, !dbg !501
  store i64 -1, ptr %offset30, align 8, !dbg !502
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !503
  %pos = getelementptr inbounds %struct.genradix_iter, ptr %35, i32 0, i32 1, !dbg !504
  store i64 -1, ptr %pos, align 8, !dbg !505
  store ptr null, ptr %retval, align 8, !dbg !506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !506

if.end31:                                         ; preds = %while.body23
  %36 = load i32, ptr %i, align 4, !dbg !507
  %inc = add i32 %36, 1, !dbg !507
  store i32 %inc, ptr %i, align 4, !dbg !507
  %37 = load ptr, ptr %iter.addr, align 8, !dbg !508
  %offset32 = getelementptr inbounds %struct.genradix_iter, ptr %37, i32 0, i32 0, !dbg !508
  %38 = load i64, ptr %offset32, align 8, !dbg !508
  %39 = load i64, ptr %objs_per_ptr, align 8, !dbg !508
  %add33 = add i64 %38, %39, !dbg !508
  %40 = load i64, ptr %objs_per_ptr, align 8, !dbg !508
  %sub34 = sub i64 %40, 1, !dbg !508
  %not = xor i64 %sub34, -1, !dbg !508
  %and35 = and i64 %add33, %not, !dbg !508
  %41 = load ptr, ptr %iter.addr, align 8, !dbg !509
  %offset36 = getelementptr inbounds %struct.genradix_iter, ptr %41, i32 0, i32 0, !dbg !510
  store i64 %and35, ptr %offset36, align 8, !dbg !511
  %42 = load ptr, ptr %iter.addr, align 8, !dbg !512
  %offset37 = getelementptr inbounds %struct.genradix_iter, ptr %42, i32 0, i32 0, !dbg !513
  %43 = load i64, ptr %offset37, align 8, !dbg !513
  %shr38 = lshr i64 %43, 12, !dbg !514
  %44 = load i64, ptr %objs_per_page.addr, align 8, !dbg !515
  %mul = mul i64 %shr38, %44, !dbg !516
  %45 = load ptr, ptr %iter.addr, align 8, !dbg !517
  %pos39 = getelementptr inbounds %struct.genradix_iter, ptr %45, i32 0, i32 1, !dbg !518
  store i64 %mul, ptr %pos39, align 8, !dbg !519
  %46 = load i32, ptr %i, align 4, !dbg !520
  %conv40 = zext i32 %46 to i64, !dbg !520
  %cmp41 = icmp eq i64 %conv40, 512, !dbg !522
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !523

if.then43:                                        ; preds = %if.end31
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !524

if.end44:                                         ; preds = %if.end31
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !525
  br label %cleanup, !dbg !525

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs_per_ptr) #8, !dbg !525
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
    i32 2, label %restart
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond21, !dbg !481, !llvm.loop !526

while.end:                                        ; preds = %while.cond21
  %47 = load ptr, ptr %n, align 8, !dbg !527
  %48 = getelementptr inbounds %struct.genradix_node, ptr %47, i32 0, i32 0, !dbg !528
  %49 = load i32, ptr %i, align 4, !dbg !529
  %idxprom45 = zext i32 %49 to i64, !dbg !527
  %arrayidx46 = getelementptr [512 x ptr], ptr %48, i64 0, i64 %idxprom45, !dbg !527
  %50 = load ptr, ptr %arrayidx46, align 8, !dbg !527
  store ptr %50, ptr %n, align 8, !dbg !530
  br label %while.cond, !dbg !470, !llvm.loop !531

while.end47:                                      ; preds = %while.cond
  %51 = load ptr, ptr %n, align 8, !dbg !533
  %52 = getelementptr inbounds %struct.genradix_node, ptr %51, i32 0, i32 0, !dbg !534
  %53 = load ptr, ptr %iter.addr, align 8, !dbg !535
  %offset48 = getelementptr inbounds %struct.genradix_iter, ptr %53, i32 0, i32 0, !dbg !536
  %54 = load i64, ptr %offset48, align 8, !dbg !536
  %and49 = and i64 %54, 4095, !dbg !537
  %arrayidx50 = getelementptr [4096 x i8], ptr %52, i64 0, i64 %and49, !dbg !533
  store ptr %arrayidx50, ptr %retval, align 8, !dbg !538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !538

cleanup51:                                        ; preds = %while.end47, %cleanup, %if.then16, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !539
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #8, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8, !dbg !539
  %55 = load ptr, ptr %retval, align 8, !dbg !539
  ret ptr %55, !dbg !539
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__genradix_prealloc(ptr noundef %radix, i64 noundef %size, i32 noundef %gfp_mask) #0 align 16 !dbg !540 {
entry:
  %retval = alloca i32, align 4
  %radix.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp_mask.addr = alloca i32, align 4
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %radix, ptr %radix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %radix.addr, metadata !544, metadata !DIExpression()), !dbg !548
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !545, metadata !DIExpression()), !dbg !549
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !546, metadata !DIExpression()), !dbg !550
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #8, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !547, metadata !DIExpression()), !dbg !552
  store i64 0, ptr %offset, align 8, !dbg !553
  br label %for.cond, !dbg !555

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %offset, align 8, !dbg !556
  %1 = load i64, ptr %size.addr, align 8, !dbg !558
  %cmp = icmp ult i64 %0, %1, !dbg !559
  br i1 %cmp, label %for.body, label %for.end, !dbg !560

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %radix.addr, align 8, !dbg !561
  %3 = load i64, ptr %offset, align 8, !dbg !563
  %4 = load i32, ptr %gfp_mask.addr, align 4, !dbg !564
  %call = call ptr @__genradix_ptr_alloc(ptr noundef %2, i64 noundef %3, i32 noundef %4) #9, !dbg !565
  %tobool = icmp ne ptr %call, null, !dbg !565
  br i1 %tobool, label %if.end, label %if.then, !dbg !566

if.then:                                          ; preds = %for.body
  store i32 -12, ptr %retval, align 4, !dbg !567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !567

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !568

for.inc:                                          ; preds = %if.end
  %5 = load i64, ptr %offset, align 8, !dbg !569
  %add = add i64 %5, 4096, !dbg !569
  store i64 %add, ptr %offset, align 8, !dbg !569
  br label %for.cond, !dbg !570, !llvm.loop !571

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !573

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #8, !dbg !574
  %6 = load i32, ptr %retval, align 4, !dbg !574
  ret i32 %6, !dbg !574
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__genradix_free(ptr noundef %radix) #0 align 16 !dbg !575 {
entry:
  %radix.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %radix, ptr %radix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %radix.addr, metadata !579, metadata !DIExpression()), !dbg !585
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %r, metadata !580, metadata !DIExpression()), !dbg !587
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #8, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !581, metadata !DIExpression()), !dbg !588
  %0 = load ptr, ptr %radix.addr, align 8, !dbg !588
  %root = getelementptr inbounds %struct.__genradix, ptr %0, i32 0, i32 0, !dbg !588
  store ptr %root, ptr %__ai_ptr, align 8, !dbg !588
  br label %do.body, !dbg !588

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !589

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !589

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %__ai_ptr, align 8, !dbg !588
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #9, !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #8, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !583, metadata !DIExpression()), !dbg !591
  store ptr null, ptr %__ret, align 8, !dbg !591
  %2 = load ptr, ptr %__ret, align 8, !dbg !591
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !591
  %4 = call ptr asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %3, ptr %2, ptr elementtype(ptr) %3) #8, !dbg !591, !srcloc !592
  store ptr %4, ptr %__ret, align 8, !dbg !591
  %5 = load ptr, ptr %__ret, align 8, !dbg !591
  store ptr %5, ptr %tmp1, align 8, !dbg !591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #8, !dbg !588
  %6 = load ptr, ptr %tmp1, align 8, !dbg !591
  store ptr %6, ptr %tmp, align 8, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #8, !dbg !593
  %7 = load ptr, ptr %tmp, align 8, !dbg !588
  store ptr %7, ptr %r, align 8, !dbg !587
  %8 = load ptr, ptr %r, align 8, !dbg !594
  %call = call ptr @genradix_root_to_node(ptr noundef %8) #9, !dbg !595
  %9 = load ptr, ptr %r, align 8, !dbg !596
  %call2 = call i32 @genradix_root_to_depth(ptr noundef %9) #9, !dbg !597
  call void @genradix_free_recurse(ptr noundef %call, i32 noundef %call2) #9, !dbg !598
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8, !dbg !599
  ret void, !dbg !599
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @genradix_free_recurse(ptr noundef %n, i32 noundef %level) #0 align 16 !dbg !600 {
entry:
  %n.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !604, metadata !DIExpression()), !dbg !609
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !605, metadata !DIExpression()), !dbg !610
  %0 = load i32, ptr %level.addr, align 4, !dbg !611
  %tobool = icmp ne i32 %0, 0, !dbg !611
  br i1 %tobool, label %if.then, label %if.end6, !dbg !612

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !613
  call void @llvm.dbg.declare(metadata ptr %i, metadata !606, metadata !DIExpression()), !dbg !614
  store i32 0, ptr %i, align 4, !dbg !615
  br label %for.cond, !dbg !617

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !dbg !618
  %conv = zext i32 %1 to i64, !dbg !618
  %cmp = icmp ult i64 %conv, 512, !dbg !620
  br i1 %cmp, label %for.body, label %for.end, !dbg !621

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %n.addr, align 8, !dbg !622
  %3 = getelementptr inbounds %struct.genradix_node, ptr %2, i32 0, i32 0, !dbg !624
  %4 = load i32, ptr %i, align 4, !dbg !625
  %idxprom = zext i32 %4 to i64, !dbg !622
  %arrayidx = getelementptr [512 x ptr], ptr %3, i64 0, i64 %idxprom, !dbg !622
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !622
  %tobool2 = icmp ne ptr %5, null, !dbg !622
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !626

if.then3:                                         ; preds = %for.body
  %6 = load ptr, ptr %n.addr, align 8, !dbg !627
  %7 = getelementptr inbounds %struct.genradix_node, ptr %6, i32 0, i32 0, !dbg !628
  %8 = load i32, ptr %i, align 4, !dbg !629
  %idxprom4 = zext i32 %8 to i64, !dbg !627
  %arrayidx5 = getelementptr [512 x ptr], ptr %7, i64 0, i64 %idxprom4, !dbg !627
  %9 = load ptr, ptr %arrayidx5, align 8, !dbg !627
  %10 = load i32, ptr %level.addr, align 4, !dbg !630
  %sub = sub i32 %10, 1, !dbg !631
  call void @genradix_free_recurse(ptr noundef %9, i32 noundef %sub) #9, !dbg !632
  br label %if.end, !dbg !632

if.end:                                           ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !633

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !634
  %inc = add i32 %11, 1, !dbg !634
  store i32 %inc, ptr %i, align 4, !dbg !634
  br label %for.cond, !dbg !635, !llvm.loop !636

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !638
  br label %if.end6, !dbg !639

if.end6:                                          ; preds = %for.end, %entry
  %12 = load ptr, ptr %n.addr, align 8, !dbg !640
  call void @genradix_free_node(ptr noundef %12) #9, !dbg !641
  ret void, !dbg !642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #6 align 16 !dbg !643 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #8, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !649, metadata !DIExpression()), !dbg !652
  store i32 -1, ptr %bitpos, align 4, !dbg !652
  %0 = load i32, ptr %bitpos, align 4, !dbg !653
  %1 = load i64, ptr %x.addr, align 8, !dbg !654
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #11, !dbg !653, !srcloc !655
  store i32 %2, ptr %bitpos, align 4, !dbg !653
  %3 = load i32, ptr %bitpos, align 4, !dbg !656
  %add = add i32 %3, 1, !dbg !657
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #8, !dbg !658
  ret i32 %add, !dbg !659
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !660 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_alloc(ptr noundef %ptr, i64 noundef %size, i32 noundef %min_count, i32 noundef %gfp) #3 align 16 !dbg !664 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %min_count.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !671, metadata !DIExpression()), !dbg !675
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !672, metadata !DIExpression()), !dbg !676
  store i32 %min_count, ptr %min_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_count.addr, metadata !673, metadata !DIExpression()), !dbg !677
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !674, metadata !DIExpression()), !dbg !678
  ret void, !dbg !679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !680 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !687, metadata !DIExpression()), !dbg !689
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !688, metadata !DIExpression()), !dbg !690
  ret i1 true, !dbg !691
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !692 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !697, metadata !DIExpression()), !dbg !700
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !698, metadata !DIExpression()), !dbg !701
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !699, metadata !DIExpression()), !dbg !702
  ret void, !dbg !703
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_free(ptr noundef %ptr) #3 align 16 !dbg !704 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !708, metadata !DIExpression()), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !711 dso_local void @free_pages(i64 noundef, i32 noundef) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind willreturn memory(none) }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___genradix_ptr120", scope: !2, file: !3, line: 77, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.generic-radix-tree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/generic-radix-tree\22 -D KBUILD_BASENAME=\22generic_radix_tree\22 -D KBUILD_MODNAME=\22generic_radix_tree\22 -D __KBUILD_MODNAME=kmod_generic_radix_tree -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/generic-radix-tree.ll lib/generic-radix-tree.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !53, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/generic-radix-tree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8715cc37675e01363d810812458b194")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !18, !15, !19, !20, !27, !47, !30, !52}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "genradix_root", file: !17, line: 46, flags: DIFlagFwdDecl)
!17 = !DIFile(filename: "./include/linux/generic-radix-tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a949fb3d8e4ba1e29046c33281c1e74")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genradix_node", file: !3, line: 10, size: 32768, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, scope: !31, file: !3, line: 11, baseType: !34, size: 32768)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !31, file: !3, line: 11, size: 32768, elements: !35)
!35 = !{!36, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !34, file: !3, line: 13, baseType: !37, size: 32768)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !3, line: 16, baseType: !41, size: 32768)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32768, elements: !45)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!46}
!46 = !DISubrange(count: 4096)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 61, baseType: !49)
!48 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !50, line: 72, baseType: !51)
!50 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !50, line: 16, baseType: !19)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !48, line: 154, baseType: !7)
!53 = !{!0, !54, !56, !58, !60}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___genradix_ptr_alloc123", scope: !2, file: !3, line: 162, type: !18, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___genradix_iter_peek125", scope: !2, file: !3, line: 215, type: !18, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___genradix_prealloc126", scope: !2, file: !3, line: 241, type: !18, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___genradix_free127", scope: !2, file: !3, line: 250, type: !18, isLocal: true, isDefinition: true)
!62 = !{i32 7, !"Dwarf Version", i32 5}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 8, !"cf-protection-branch", i32 1}
!66 = !{i32 4, !"function_return_thunk_extern", i32 1}
!67 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!68 = !{i32 1, !"Code Model", i32 2}
!69 = !{i32 1, !"override-stack-alignment", i32 8}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = distinct !DISubprogram(name: "__genradix_ptr", scope: !3, file: !3, line: 54, type: !72, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!72 = !DISubroutineType(types: !73)
!73 = !{!18, !74, !47}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__genradix", file: !17, line: 48, size: 64, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !75, file: !17, line: 49, baseType: !15, size: 64)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DILocalVariable(name: "radix", arg: 1, scope: !71, file: !3, line: 54, type: !74)
!80 = !DILocalVariable(name: "offset", arg: 2, scope: !71, file: !3, line: 54, type: !47)
!81 = !DILocalVariable(name: "r", scope: !71, file: !3, line: 56, type: !15)
!82 = !DILocalVariable(name: "n", scope: !71, file: !3, line: 57, type: !30)
!83 = !DILocalVariable(name: "level", scope: !71, file: !3, line: 58, type: !7)
!84 = !DILocation(line: 54, column: 41, scope: !71)
!85 = !DILocation(line: 54, column: 55, scope: !71)
!86 = !DILocation(line: 56, column: 2, scope: !71)
!87 = !DILocation(line: 56, column: 24, scope: !71)
!88 = !DILocation(line: 56, column: 28, scope: !89)
!89 = distinct !DILexicalBlock(scope: !71, file: !3, line: 56, column: 28)
!90 = !DILocation(line: 56, column: 28, scope: !91)
!91 = distinct !DILexicalBlock(scope: !89, file: !3, line: 56, column: 28)
!92 = !DILocation(line: 57, column: 2, scope: !71)
!93 = !DILocation(line: 57, column: 24, scope: !71)
!94 = !DILocation(line: 57, column: 50, scope: !71)
!95 = !DILocation(line: 57, column: 28, scope: !71)
!96 = !DILocation(line: 58, column: 2, scope: !71)
!97 = !DILocation(line: 58, column: 11, scope: !71)
!98 = !DILocation(line: 58, column: 43, scope: !71)
!99 = !DILocation(line: 58, column: 20, scope: !71)
!100 = !DILocation(line: 60, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !71, file: !3, line: 60, column: 6)
!102 = !DILocation(line: 60, column: 44, scope: !101)
!103 = !DILocation(line: 60, column: 23, scope: !101)
!104 = !DILocation(line: 60, column: 20, scope: !101)
!105 = !DILocation(line: 60, column: 6, scope: !71)
!106 = !DILocation(line: 61, column: 3, scope: !101)
!107 = !DILocation(line: 63, column: 2, scope: !71)
!108 = !DILocation(line: 64, column: 8, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 64, column: 7)
!110 = distinct !DILexicalBlock(scope: !71, file: !3, line: 63, column: 12)
!111 = !DILocation(line: 64, column: 7, scope: !110)
!112 = !DILocation(line: 65, column: 4, scope: !109)
!113 = !DILocation(line: 66, column: 8, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !3, line: 66, column: 7)
!115 = !DILocation(line: 66, column: 7, scope: !110)
!116 = !DILocation(line: 67, column: 4, scope: !114)
!117 = !DILocation(line: 69, column: 8, scope: !110)
!118 = !DILocation(line: 71, column: 7, scope: !110)
!119 = !DILocation(line: 71, column: 10, scope: !110)
!120 = !DILocation(line: 71, column: 19, scope: !110)
!121 = !DILocation(line: 71, column: 50, scope: !110)
!122 = !DILocation(line: 71, column: 29, scope: !110)
!123 = !DILocation(line: 71, column: 26, scope: !110)
!124 = !DILocation(line: 71, column: 5, scope: !110)
!125 = !DILocation(line: 72, column: 33, scope: !110)
!126 = !DILocation(line: 72, column: 13, scope: !110)
!127 = !DILocation(line: 72, column: 40, scope: !110)
!128 = !DILocation(line: 72, column: 10, scope: !110)
!129 = distinct !{!129, !107, !130, !131}
!130 = !DILocation(line: 73, column: 2, scope: !71)
!131 = !{!"llvm.loop.unroll.disable"}
!132 = !DILocation(line: 75, column: 10, scope: !71)
!133 = !DILocation(line: 75, column: 13, scope: !71)
!134 = !DILocation(line: 75, column: 18, scope: !71)
!135 = !DILocation(line: 75, column: 2, scope: !71)
!136 = !DILocation(line: 76, column: 1, scope: !71)
!137 = distinct !DISubprogram(name: "genradix_root_to_node", scope: !3, file: !3, line: 45, type: !138, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!30, !15}
!140 = !{!141}
!141 = !DILocalVariable(name: "r", arg: 1, scope: !137, file: !3, line: 45, type: !15)
!142 = !DILocation(line: 45, column: 81, scope: !137)
!143 = !DILocation(line: 47, column: 35, scope: !137)
!144 = !DILocation(line: 47, column: 19, scope: !137)
!145 = !DILocation(line: 47, column: 37, scope: !137)
!146 = !DILocation(line: 47, column: 9, scope: !137)
!147 = !DILocation(line: 47, column: 2, scope: !137)
!148 = distinct !DISubprogram(name: "genradix_root_to_depth", scope: !3, file: !3, line: 40, type: !149, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!7, !15}
!151 = !{!152}
!152 = !DILocalVariable(name: "r", arg: 1, scope: !148, file: !3, line: 40, type: !15)
!153 = !DILocation(line: 40, column: 69, scope: !148)
!154 = !DILocation(line: 42, column: 25, scope: !148)
!155 = !DILocation(line: 42, column: 9, scope: !148)
!156 = !DILocation(line: 42, column: 27, scope: !148)
!157 = !DILocation(line: 42, column: 2, scope: !148)
!158 = distinct !DISubprogram(name: "__ilog2_u64", scope: !159, file: !159, line: 30, type: !160, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!159 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !22}
!162 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!163 = !{!164}
!164 = !DILocalVariable(name: "n", arg: 1, scope: !158, file: !159, line: 30, type: !22)
!165 = !DILocation(line: 30, column: 21, scope: !158)
!166 = !DILocation(line: 32, column: 15, scope: !158)
!167 = !DILocation(line: 32, column: 9, scope: !158)
!168 = !DILocation(line: 32, column: 18, scope: !158)
!169 = !DILocation(line: 32, column: 2, scope: !158)
!170 = distinct !DISubprogram(name: "genradix_depth_shift", scope: !3, file: !3, line: 20, type: !171, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!162, !7}
!173 = !{!174}
!174 = !DILocalVariable(name: "depth", arg: 1, scope: !170, file: !3, line: 20, type: !7)
!175 = !DILocation(line: 20, column: 49, scope: !170)
!176 = !DILocation(line: 22, column: 43, scope: !170)
!177 = !DILocation(line: 22, column: 41, scope: !170)
!178 = !DILocation(line: 22, column: 20, scope: !170)
!179 = !DILocation(line: 22, column: 2, scope: !170)
!180 = distinct !DISubprogram(name: "genradix_depth_size", scope: !3, file: !3, line: 28, type: !181, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!181 = !DISubroutineType(types: !182)
!182 = !{!47, !7}
!183 = !{!184}
!184 = !DILocalVariable(name: "depth", arg: 1, scope: !180, file: !3, line: 28, type: !7)
!185 = !DILocation(line: 28, column: 51, scope: !180)
!186 = !DILocation(line: 30, column: 37, scope: !180)
!187 = !DILocation(line: 30, column: 16, scope: !180)
!188 = !DILocation(line: 30, column: 13, scope: !180)
!189 = !DILocation(line: 30, column: 2, scope: !180)
!190 = distinct !DISubprogram(name: "__genradix_ptr_alloc", scope: !3, file: !3, line: 104, type: !191, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!18, !74, !47, !52}
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !203, !204, !208, !210, !211, !212, !213, !216, !221, !223, !224, !225, !226}
!194 = !DILocalVariable(name: "radix", arg: 1, scope: !190, file: !3, line: 104, type: !74)
!195 = !DILocalVariable(name: "offset", arg: 2, scope: !190, file: !3, line: 104, type: !47)
!196 = !DILocalVariable(name: "gfp_mask", arg: 3, scope: !190, file: !3, line: 105, type: !52)
!197 = !DILocalVariable(name: "v", scope: !190, file: !3, line: 107, type: !15)
!198 = !DILocalVariable(name: "n", scope: !190, file: !3, line: 108, type: !30)
!199 = !DILocalVariable(name: "new_node", scope: !190, file: !3, line: 108, type: !30)
!200 = !DILocalVariable(name: "level", scope: !190, file: !3, line: 109, type: !7)
!201 = !DILocalVariable(name: "r", scope: !202, file: !3, line: 113, type: !15)
!202 = distinct !DILexicalBlock(scope: !190, file: !3, line: 112, column: 12)
!203 = !DILocalVariable(name: "new_root", scope: !202, file: !3, line: 113, type: !15)
!204 = !DILocalVariable(name: "__ai_ptr", scope: !205, file: !3, line: 131, type: !207)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 131, column: 12)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 131, column: 7)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!208 = !DILocalVariable(name: "__ret", scope: !209, file: !3, line: 131, type: !15)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 131, column: 12)
!210 = !DILocalVariable(name: "__old", scope: !209, file: !3, line: 131, type: !15)
!211 = !DILocalVariable(name: "__new", scope: !209, file: !3, line: 131, type: !15)
!212 = !DILocalVariable(name: "__ptr", scope: !209, file: !3, line: 131, type: !20)
!213 = !DILocalVariable(name: "p", scope: !214, file: !3, line: 140, type: !215)
!214 = distinct !DILexicalBlock(scope: !190, file: !3, line: 139, column: 18)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!216 = !DILocalVariable(name: "__ai_ptr", scope: !217, file: !3, line: 152, type: !215)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 152, column: 14)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 152, column: 8)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 145, column: 11)
!220 = distinct !DILexicalBlock(scope: !214, file: !3, line: 145, column: 7)
!221 = !DILocalVariable(name: "__ret", scope: !222, file: !3, line: 152, type: !30)
!222 = distinct !DILexicalBlock(scope: !217, file: !3, line: 152, column: 14)
!223 = !DILocalVariable(name: "__old", scope: !222, file: !3, line: 152, type: !30)
!224 = !DILocalVariable(name: "__new", scope: !222, file: !3, line: 152, type: !30)
!225 = !DILocalVariable(name: "__ptr", scope: !222, file: !3, line: 152, type: !20)
!226 = !DILocalVariable(name: "__tmp", scope: !227, file: !3, line: 153, type: !30)
!227 = distinct !DILexicalBlock(scope: !218, file: !3, line: 153, column: 5)
!228 = !DILocation(line: 104, column: 47, scope: !190)
!229 = !DILocation(line: 104, column: 61, scope: !190)
!230 = !DILocation(line: 105, column: 13, scope: !190)
!231 = !DILocation(line: 107, column: 2, scope: !190)
!232 = !DILocation(line: 107, column: 24, scope: !190)
!233 = !DILocation(line: 107, column: 28, scope: !234)
!234 = distinct !DILexicalBlock(scope: !190, file: !3, line: 107, column: 28)
!235 = !DILocation(line: 107, column: 28, scope: !236)
!236 = distinct !DILexicalBlock(scope: !234, file: !3, line: 107, column: 28)
!237 = !DILocation(line: 108, column: 2, scope: !190)
!238 = !DILocation(line: 108, column: 24, scope: !190)
!239 = !DILocation(line: 108, column: 28, scope: !190)
!240 = !DILocation(line: 109, column: 2, scope: !190)
!241 = !DILocation(line: 109, column: 11, scope: !190)
!242 = !DILocation(line: 112, column: 2, scope: !190)
!243 = !DILocation(line: 113, column: 3, scope: !202)
!244 = !DILocation(line: 113, column: 25, scope: !202)
!245 = !DILocation(line: 113, column: 29, scope: !202)
!246 = !DILocation(line: 113, column: 33, scope: !202)
!247 = !DILocation(line: 115, column: 29, scope: !202)
!248 = !DILocation(line: 115, column: 7, scope: !202)
!249 = !DILocation(line: 115, column: 5, scope: !202)
!250 = !DILocation(line: 116, column: 34, scope: !202)
!251 = !DILocation(line: 116, column: 11, scope: !202)
!252 = !DILocation(line: 116, column: 9, scope: !202)
!253 = !DILocation(line: 118, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !202, file: !3, line: 118, column: 7)
!255 = !DILocation(line: 118, column: 9, scope: !254)
!256 = !DILocation(line: 118, column: 12, scope: !254)
!257 = !DILocation(line: 118, column: 49, scope: !254)
!258 = !DILocation(line: 118, column: 28, scope: !254)
!259 = !DILocation(line: 118, column: 26, scope: !254)
!260 = !DILocation(line: 118, column: 7, scope: !202)
!261 = !DILocation(line: 119, column: 4, scope: !254)
!262 = !DILocation(line: 121, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !202, file: !3, line: 121, column: 7)
!264 = !DILocation(line: 121, column: 7, scope: !202)
!265 = !DILocation(line: 122, column: 35, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !3, line: 121, column: 18)
!267 = !DILocation(line: 122, column: 15, scope: !266)
!268 = !DILocation(line: 122, column: 13, scope: !266)
!269 = !DILocation(line: 123, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 123, column: 8)
!271 = !DILocation(line: 123, column: 8, scope: !266)
!272 = !DILocation(line: 124, column: 5, scope: !270)
!273 = !DILocation(line: 125, column: 3, scope: !266)
!274 = !DILocation(line: 127, column: 27, scope: !202)
!275 = !DILocation(line: 127, column: 3, scope: !202)
!276 = !DILocation(line: 127, column: 13, scope: !202)
!277 = !DILocation(line: 127, column: 25, scope: !202)
!278 = !DILocation(line: 129, column: 25, scope: !202)
!279 = !DILocation(line: 129, column: 9, scope: !202)
!280 = !DILocation(line: 129, column: 37, scope: !202)
!281 = !DILocation(line: 129, column: 41, scope: !202)
!282 = !DILocation(line: 129, column: 47, scope: !202)
!283 = !DILocation(line: 129, column: 36, scope: !202)
!284 = !DILocation(line: 129, column: 34, scope: !202)
!285 = !DILocation(line: 128, column: 15, scope: !202)
!286 = !DILocation(line: 128, column: 12, scope: !202)
!287 = !DILocation(line: 131, column: 12, scope: !205)
!288 = !DILocation(line: 131, column: 12, scope: !289)
!289 = distinct !DILexicalBlock(scope: !205, file: !3, line: 131, column: 12)
!290 = !DILocation(line: 131, column: 12, scope: !209)
!291 = !{i64 2151489068, i64 2151489107, i64 2151489128, i64 2151489165, i64 2151489188, i64 2151489197}
!292 = !DILocation(line: 131, column: 12, scope: !206)
!293 = !DILocation(line: 131, column: 10, scope: !206)
!294 = !DILocation(line: 131, column: 59, scope: !206)
!295 = !DILocation(line: 131, column: 56, scope: !206)
!296 = !DILocation(line: 131, column: 7, scope: !202)
!297 = !DILocation(line: 132, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !206, file: !3, line: 131, column: 62)
!299 = !DILocation(line: 132, column: 6, scope: !298)
!300 = !DILocation(line: 133, column: 13, scope: !298)
!301 = !DILocation(line: 134, column: 3, scope: !298)
!302 = !DILocation(line: 135, column: 4, scope: !303)
!303 = distinct !DILexicalBlock(scope: !206, file: !3, line: 134, column: 10)
!304 = !DILocation(line: 135, column: 14, scope: !303)
!305 = !DILocation(line: 135, column: 26, scope: !303)
!306 = !DILocation(line: 137, column: 2, scope: !190)
!307 = distinct !{!307, !242, !306, !131}
!308 = !DILocation(line: 139, column: 2, scope: !190)
!309 = !DILocation(line: 139, column: 14, scope: !190)
!310 = !DILocation(line: 140, column: 3, scope: !214)
!311 = !DILocation(line: 140, column: 26, scope: !214)
!312 = !DILocation(line: 141, column: 5, scope: !214)
!313 = !DILocation(line: 141, column: 8, scope: !214)
!314 = !DILocation(line: 141, column: 17, scope: !214)
!315 = !DILocation(line: 141, column: 48, scope: !214)
!316 = !DILocation(line: 141, column: 27, scope: !214)
!317 = !DILocation(line: 141, column: 24, scope: !214)
!318 = !DILocation(line: 142, column: 33, scope: !214)
!319 = !DILocation(line: 142, column: 13, scope: !214)
!320 = !DILocation(line: 142, column: 40, scope: !214)
!321 = !DILocation(line: 142, column: 10, scope: !214)
!322 = !DILocation(line: 144, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !214, file: !3, line: 144, column: 7)
!324 = !DILocation(line: 144, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !3, line: 144, column: 7)
!326 = !DILocation(line: 144, column: 5, scope: !214)
!327 = !DILocation(line: 145, column: 8, scope: !220)
!328 = !DILocation(line: 145, column: 7, scope: !214)
!329 = !DILocation(line: 146, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !219, file: !3, line: 146, column: 8)
!331 = !DILocation(line: 146, column: 8, scope: !219)
!332 = !DILocation(line: 147, column: 36, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 146, column: 19)
!334 = !DILocation(line: 147, column: 16, scope: !333)
!335 = !DILocation(line: 147, column: 14, scope: !333)
!336 = !DILocation(line: 148, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 148, column: 9)
!338 = !DILocation(line: 148, column: 9, scope: !333)
!339 = !DILocation(line: 149, column: 6, scope: !337)
!340 = !DILocation(line: 150, column: 4, scope: !333)
!341 = !DILocation(line: 152, column: 14, scope: !217)
!342 = !DILocation(line: 152, column: 14, scope: !343)
!343 = distinct !DILexicalBlock(scope: !217, file: !3, line: 152, column: 14)
!344 = !DILocation(line: 152, column: 14, scope: !222)
!345 = !{i64 2151494244, i64 2151494283, i64 2151494304, i64 2151494341, i64 2151494364, i64 2151494373}
!346 = !DILocation(line: 152, column: 14, scope: !218)
!347 = !DILocation(line: 152, column: 12, scope: !218)
!348 = !DILocation(line: 152, column: 8, scope: !219)
!349 = !DILocation(line: 153, column: 5, scope: !218)
!350 = !DILocation(line: 153, column: 5, scope: !227)
!351 = !DILocation(line: 154, column: 3, scope: !219)
!352 = !DILocation(line: 155, column: 2, scope: !190)
!353 = distinct !{!353, !308, !352, !354, !131}
!354 = !{!"llvm.loop.mustprogress"}
!355 = !DILocation(line: 157, column: 6, scope: !356)
!356 = distinct !DILexicalBlock(scope: !190, file: !3, line: 157, column: 6)
!357 = !DILocation(line: 157, column: 6, scope: !190)
!358 = !DILocation(line: 158, column: 22, scope: !356)
!359 = !DILocation(line: 158, column: 3, scope: !356)
!360 = !DILocation(line: 160, column: 10, scope: !190)
!361 = !DILocation(line: 160, column: 13, scope: !190)
!362 = !DILocation(line: 160, column: 18, scope: !190)
!363 = !DILocation(line: 160, column: 2, scope: !190)
!364 = !DILocation(line: 161, column: 1, scope: !190)
!365 = distinct !DISubprogram(name: "genradix_alloc_node", scope: !3, file: !3, line: 79, type: !366, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!30, !52}
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !365, file: !3, line: 79, type: !52)
!370 = !DILocalVariable(name: "node", scope: !365, file: !3, line: 81, type: !30)
!371 = !DILocation(line: 79, column: 63, scope: !365)
!372 = !DILocation(line: 81, column: 2, scope: !365)
!373 = !DILocation(line: 81, column: 24, scope: !365)
!374 = !DILocation(line: 83, column: 33, scope: !365)
!375 = !DILocation(line: 83, column: 9, scope: !365)
!376 = !DILocation(line: 83, column: 7, scope: !365)
!377 = !DILocation(line: 90, column: 17, scope: !365)
!378 = !DILocation(line: 90, column: 37, scope: !365)
!379 = !DILocation(line: 90, column: 2, scope: !365)
!380 = !DILocation(line: 91, column: 9, scope: !365)
!381 = !DILocation(line: 92, column: 1, scope: !365)
!382 = !DILocation(line: 91, column: 2, scope: !365)
!383 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !384, file: !384, line: 94, type: !385, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!384 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387, !47}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!390 = !{!391, !392}
!391 = !DILocalVariable(name: "v", arg: 1, scope: !383, file: !384, line: 94, type: !387)
!392 = !DILocalVariable(name: "size", arg: 2, scope: !383, file: !384, line: 94, type: !47)
!393 = !DILocation(line: 94, column: 79, scope: !383)
!394 = !DILocation(line: 94, column: 89, scope: !383)
!395 = !DILocation(line: 96, column: 20, scope: !383)
!396 = !DILocation(line: 96, column: 23, scope: !383)
!397 = !DILocation(line: 96, column: 2, scope: !383)
!398 = !DILocation(line: 97, column: 2, scope: !383)
!399 = !DILocation(line: 98, column: 1, scope: !383)
!400 = distinct !DISubprogram(name: "genradix_free_node", scope: !3, file: !3, line: 94, type: !401, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !30}
!403 = !{!404}
!404 = !DILocalVariable(name: "node", arg: 1, scope: !400, file: !3, line: 94, type: !30)
!405 = !DILocation(line: 94, column: 61, scope: !400)
!406 = !DILocation(line: 96, column: 16, scope: !400)
!407 = !DILocation(line: 96, column: 2, scope: !400)
!408 = !DILocation(line: 97, column: 2, scope: !400)
!409 = !DILocation(line: 98, column: 1, scope: !400)
!410 = distinct !DISubprogram(name: "__genradix_iter_peek", scope: !3, file: !3, line: 164, type: !411, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !418)
!411 = !DISubroutineType(types: !412)
!412 = !{!18, !413, !74, !47}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genradix_iter", file: !17, line: 154, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !414, file: !17, line: 155, baseType: !47, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !414, file: !17, line: 156, baseType: !47, size: 64, offset: 64)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427}
!419 = !DILocalVariable(name: "iter", arg: 1, scope: !410, file: !3, line: 164, type: !413)
!420 = !DILocalVariable(name: "radix", arg: 2, scope: !410, file: !3, line: 165, type: !74)
!421 = !DILocalVariable(name: "objs_per_page", arg: 3, scope: !410, file: !3, line: 166, type: !47)
!422 = !DILocalVariable(name: "r", scope: !410, file: !3, line: 168, type: !15)
!423 = !DILocalVariable(name: "n", scope: !410, file: !3, line: 169, type: !30)
!424 = !DILocalVariable(name: "level", scope: !410, file: !3, line: 170, type: !7)
!425 = !DILocalVariable(name: "i", scope: !410, file: !3, line: 170, type: !7)
!426 = !DILabel(scope: !410, name: "restart", file: !3, line: 175)
!427 = !DILocalVariable(name: "objs_per_ptr", scope: !428, file: !3, line: 193, type: !47)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 192, column: 27)
!429 = distinct !DILexicalBlock(scope: !410, file: !3, line: 186, column: 16)
!430 = !DILocation(line: 164, column: 50, scope: !410)
!431 = !DILocation(line: 165, column: 26, scope: !410)
!432 = !DILocation(line: 166, column: 14, scope: !410)
!433 = !DILocation(line: 168, column: 2, scope: !410)
!434 = !DILocation(line: 168, column: 24, scope: !410)
!435 = !DILocation(line: 169, column: 2, scope: !410)
!436 = !DILocation(line: 169, column: 24, scope: !410)
!437 = !DILocation(line: 170, column: 2, scope: !410)
!438 = !DILocation(line: 170, column: 11, scope: !410)
!439 = !DILocation(line: 170, column: 18, scope: !410)
!440 = !DILocation(line: 172, column: 6, scope: !441)
!441 = distinct !DILexicalBlock(scope: !410, file: !3, line: 172, column: 6)
!442 = !DILocation(line: 172, column: 12, scope: !441)
!443 = !DILocation(line: 172, column: 19, scope: !441)
!444 = !DILocation(line: 172, column: 6, scope: !410)
!445 = !DILocation(line: 173, column: 3, scope: !441)
!446 = !DILocation(line: 172, column: 22, scope: !441)
!447 = !DILocation(line: 175, column: 1, scope: !410)
!448 = !DILocation(line: 176, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !410, file: !3, line: 176, column: 6)
!450 = !DILocation(line: 176, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !3, line: 176, column: 6)
!452 = !DILocation(line: 176, column: 4, scope: !410)
!453 = !DILocation(line: 177, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !410, file: !3, line: 177, column: 6)
!455 = !DILocation(line: 177, column: 6, scope: !410)
!456 = !DILocation(line: 178, column: 3, scope: !454)
!457 = !DILocation(line: 180, column: 28, scope: !410)
!458 = !DILocation(line: 180, column: 6, scope: !410)
!459 = !DILocation(line: 180, column: 4, scope: !410)
!460 = !DILocation(line: 181, column: 33, scope: !410)
!461 = !DILocation(line: 181, column: 10, scope: !410)
!462 = !DILocation(line: 181, column: 8, scope: !410)
!463 = !DILocation(line: 183, column: 6, scope: !464)
!464 = distinct !DILexicalBlock(scope: !410, file: !3, line: 183, column: 6)
!465 = !DILocation(line: 183, column: 50, scope: !464)
!466 = !DILocation(line: 183, column: 29, scope: !464)
!467 = !DILocation(line: 183, column: 26, scope: !464)
!468 = !DILocation(line: 183, column: 6, scope: !410)
!469 = !DILocation(line: 184, column: 3, scope: !464)
!470 = !DILocation(line: 186, column: 2, scope: !410)
!471 = !DILocation(line: 186, column: 9, scope: !410)
!472 = !DILocation(line: 187, column: 8, scope: !429)
!473 = !DILocation(line: 189, column: 8, scope: !429)
!474 = !DILocation(line: 189, column: 14, scope: !429)
!475 = !DILocation(line: 189, column: 45, scope: !429)
!476 = !DILocation(line: 189, column: 24, scope: !429)
!477 = !DILocation(line: 189, column: 21, scope: !429)
!478 = !DILocation(line: 189, column: 53, scope: !429)
!479 = !DILocation(line: 189, column: 7, scope: !429)
!480 = !DILocation(line: 189, column: 5, scope: !429)
!481 = !DILocation(line: 192, column: 3, scope: !429)
!482 = !DILocation(line: 192, column: 11, scope: !429)
!483 = !DILocation(line: 192, column: 14, scope: !429)
!484 = !DILocation(line: 192, column: 23, scope: !429)
!485 = !DILocation(line: 192, column: 10, scope: !429)
!486 = !DILocation(line: 193, column: 4, scope: !428)
!487 = !DILocation(line: 193, column: 11, scope: !428)
!488 = !DILocation(line: 193, column: 46, scope: !428)
!489 = !DILocation(line: 193, column: 26, scope: !428)
!490 = !DILocation(line: 195, column: 8, scope: !491)
!491 = distinct !DILexicalBlock(scope: !428, file: !3, line: 195, column: 8)
!492 = !DILocation(line: 195, column: 14, scope: !491)
!493 = !DILocation(line: 195, column: 23, scope: !491)
!494 = !DILocation(line: 195, column: 21, scope: !491)
!495 = !DILocation(line: 195, column: 38, scope: !491)
!496 = !DILocation(line: 195, column: 44, scope: !491)
!497 = !DILocation(line: 195, column: 36, scope: !491)
!498 = !DILocation(line: 195, column: 8, scope: !428)
!499 = !DILocation(line: 196, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !491, file: !3, line: 195, column: 52)
!501 = !DILocation(line: 196, column: 11, scope: !500)
!502 = !DILocation(line: 196, column: 18, scope: !500)
!503 = !DILocation(line: 197, column: 5, scope: !500)
!504 = !DILocation(line: 197, column: 11, scope: !500)
!505 = !DILocation(line: 197, column: 15, scope: !500)
!506 = !DILocation(line: 198, column: 5, scope: !500)
!507 = !DILocation(line: 201, column: 5, scope: !428)
!508 = !DILocation(line: 202, column: 19, scope: !428)
!509 = !DILocation(line: 202, column: 4, scope: !428)
!510 = !DILocation(line: 202, column: 10, scope: !428)
!511 = !DILocation(line: 202, column: 17, scope: !428)
!512 = !DILocation(line: 204, column: 17, scope: !428)
!513 = !DILocation(line: 204, column: 23, scope: !428)
!514 = !DILocation(line: 204, column: 30, scope: !428)
!515 = !DILocation(line: 205, column: 5, scope: !428)
!516 = !DILocation(line: 204, column: 45, scope: !428)
!517 = !DILocation(line: 204, column: 4, scope: !428)
!518 = !DILocation(line: 204, column: 10, scope: !428)
!519 = !DILocation(line: 204, column: 14, scope: !428)
!520 = !DILocation(line: 206, column: 8, scope: !521)
!521 = distinct !DILexicalBlock(scope: !428, file: !3, line: 206, column: 8)
!522 = !DILocation(line: 206, column: 10, scope: !521)
!523 = !DILocation(line: 206, column: 8, scope: !428)
!524 = !DILocation(line: 207, column: 5, scope: !521)
!525 = !DILocation(line: 208, column: 3, scope: !429)
!526 = distinct !{!526, !481, !525, !354, !131}
!527 = !DILocation(line: 210, column: 7, scope: !429)
!528 = !DILocation(line: 210, column: 10, scope: !429)
!529 = !DILocation(line: 210, column: 19, scope: !429)
!530 = !DILocation(line: 210, column: 5, scope: !429)
!531 = distinct !{!531, !470, !532, !354, !131}
!532 = !DILocation(line: 211, column: 2, scope: !410)
!533 = !DILocation(line: 213, column: 10, scope: !410)
!534 = !DILocation(line: 213, column: 13, scope: !410)
!535 = !DILocation(line: 213, column: 18, scope: !410)
!536 = !DILocation(line: 213, column: 24, scope: !410)
!537 = !DILocation(line: 213, column: 31, scope: !410)
!538 = !DILocation(line: 213, column: 2, scope: !410)
!539 = !DILocation(line: 214, column: 1, scope: !410)
!540 = distinct !DISubprogram(name: "__genradix_prealloc", scope: !3, file: !3, line: 230, type: !541, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!162, !74, !47, !52}
!543 = !{!544, !545, !546, !547}
!544 = !DILocalVariable(name: "radix", arg: 1, scope: !540, file: !3, line: 230, type: !74)
!545 = !DILocalVariable(name: "size", arg: 2, scope: !540, file: !3, line: 230, type: !47)
!546 = !DILocalVariable(name: "gfp_mask", arg: 3, scope: !540, file: !3, line: 231, type: !52)
!547 = !DILocalVariable(name: "offset", scope: !540, file: !3, line: 233, type: !47)
!548 = !DILocation(line: 230, column: 44, scope: !540)
!549 = !DILocation(line: 230, column: 58, scope: !540)
!550 = !DILocation(line: 231, column: 10, scope: !540)
!551 = !DILocation(line: 233, column: 2, scope: !540)
!552 = !DILocation(line: 233, column: 9, scope: !540)
!553 = !DILocation(line: 235, column: 14, scope: !554)
!554 = distinct !DILexicalBlock(scope: !540, file: !3, line: 235, column: 2)
!555 = !DILocation(line: 235, column: 7, scope: !554)
!556 = !DILocation(line: 235, column: 19, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 235, column: 2)
!558 = !DILocation(line: 235, column: 28, scope: !557)
!559 = !DILocation(line: 235, column: 26, scope: !557)
!560 = !DILocation(line: 235, column: 2, scope: !554)
!561 = !DILocation(line: 236, column: 29, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !3, line: 236, column: 7)
!563 = !DILocation(line: 236, column: 36, scope: !562)
!564 = !DILocation(line: 236, column: 44, scope: !562)
!565 = !DILocation(line: 236, column: 8, scope: !562)
!566 = !DILocation(line: 236, column: 7, scope: !557)
!567 = !DILocation(line: 237, column: 4, scope: !562)
!568 = !DILocation(line: 236, column: 52, scope: !562)
!569 = !DILocation(line: 235, column: 41, scope: !557)
!570 = !DILocation(line: 235, column: 2, scope: !557)
!571 = distinct !{!571, !560, !572, !354, !131}
!572 = !DILocation(line: 237, column: 12, scope: !554)
!573 = !DILocation(line: 239, column: 2, scope: !540)
!574 = !DILocation(line: 240, column: 1, scope: !540)
!575 = distinct !DISubprogram(name: "__genradix_free", scope: !3, file: !3, line: 243, type: !576, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !74}
!578 = !{!579, !580, !581, !583}
!579 = !DILocalVariable(name: "radix", arg: 1, scope: !575, file: !3, line: 243, type: !74)
!580 = !DILocalVariable(name: "r", scope: !575, file: !3, line: 245, type: !15)
!581 = !DILocalVariable(name: "__ai_ptr", scope: !582, file: !3, line: 245, type: !207)
!582 = distinct !DILexicalBlock(scope: !575, file: !3, line: 245, column: 28)
!583 = !DILocalVariable(name: "__ret", scope: !584, file: !3, line: 245, type: !15)
!584 = distinct !DILexicalBlock(scope: !582, file: !3, line: 245, column: 28)
!585 = !DILocation(line: 243, column: 41, scope: !575)
!586 = !DILocation(line: 245, column: 2, scope: !575)
!587 = !DILocation(line: 245, column: 24, scope: !575)
!588 = !DILocation(line: 245, column: 28, scope: !582)
!589 = !DILocation(line: 245, column: 28, scope: !590)
!590 = distinct !DILexicalBlock(scope: !582, file: !3, line: 245, column: 28)
!591 = !DILocation(line: 245, column: 28, scope: !584)
!592 = !{i64 2151509027}
!593 = !DILocation(line: 245, column: 28, scope: !575)
!594 = !DILocation(line: 247, column: 46, scope: !575)
!595 = !DILocation(line: 247, column: 24, scope: !575)
!596 = !DILocation(line: 248, column: 33, scope: !575)
!597 = !DILocation(line: 248, column: 10, scope: !575)
!598 = !DILocation(line: 247, column: 2, scope: !575)
!599 = !DILocation(line: 249, column: 1, scope: !575)
!600 = distinct !DISubprogram(name: "genradix_free_recurse", scope: !3, file: !3, line: 217, type: !601, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !30, !7}
!603 = !{!604, !605, !606}
!604 = !DILocalVariable(name: "n", arg: 1, scope: !600, file: !3, line: 217, type: !30)
!605 = !DILocalVariable(name: "level", arg: 2, scope: !600, file: !3, line: 217, type: !7)
!606 = !DILocalVariable(name: "i", scope: !607, file: !3, line: 220, type: !7)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 219, column: 13)
!608 = distinct !DILexicalBlock(scope: !600, file: !3, line: 219, column: 6)
!609 = !DILocation(line: 217, column: 57, scope: !600)
!610 = !DILocation(line: 217, column: 69, scope: !600)
!611 = !DILocation(line: 219, column: 6, scope: !608)
!612 = !DILocation(line: 219, column: 6, scope: !600)
!613 = !DILocation(line: 220, column: 3, scope: !607)
!614 = !DILocation(line: 220, column: 12, scope: !607)
!615 = !DILocation(line: 222, column: 10, scope: !616)
!616 = distinct !DILexicalBlock(scope: !607, file: !3, line: 222, column: 3)
!617 = !DILocation(line: 222, column: 8, scope: !616)
!618 = !DILocation(line: 222, column: 15, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 222, column: 3)
!620 = !DILocation(line: 222, column: 17, scope: !619)
!621 = !DILocation(line: 222, column: 3, scope: !616)
!622 = !DILocation(line: 223, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !3, line: 223, column: 8)
!624 = !DILocation(line: 223, column: 11, scope: !623)
!625 = !DILocation(line: 223, column: 20, scope: !623)
!626 = !DILocation(line: 223, column: 8, scope: !619)
!627 = !DILocation(line: 224, column: 27, scope: !623)
!628 = !DILocation(line: 224, column: 30, scope: !623)
!629 = !DILocation(line: 224, column: 39, scope: !623)
!630 = !DILocation(line: 224, column: 43, scope: !623)
!631 = !DILocation(line: 224, column: 49, scope: !623)
!632 = !DILocation(line: 224, column: 5, scope: !623)
!633 = !DILocation(line: 223, column: 21, scope: !623)
!634 = !DILocation(line: 222, column: 34, scope: !619)
!635 = !DILocation(line: 222, column: 3, scope: !619)
!636 = distinct !{!636, !621, !637, !354, !131}
!637 = !DILocation(line: 224, column: 52, scope: !616)
!638 = !DILocation(line: 225, column: 2, scope: !608)
!639 = !DILocation(line: 225, column: 2, scope: !607)
!640 = !DILocation(line: 227, column: 21, scope: !600)
!641 = !DILocation(line: 227, column: 2, scope: !600)
!642 = !DILocation(line: 228, column: 1, scope: !600)
!643 = distinct !DISubprogram(name: "fls64", scope: !644, file: !644, line: 401, type: !645, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !647)
!644 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!645 = !DISubroutineType(types: !646)
!646 = !{!162, !24}
!647 = !{!648, !649}
!648 = !DILocalVariable(name: "x", arg: 1, scope: !643, file: !644, line: 401, type: !24)
!649 = !DILocalVariable(name: "bitpos", scope: !643, file: !644, line: 403, type: !162)
!650 = !DILocation(line: 401, column: 40, scope: !643)
!651 = !DILocation(line: 403, column: 2, scope: !643)
!652 = !DILocation(line: 403, column: 6, scope: !643)
!653 = !DILocation(line: 409, column: 2, scope: !643)
!654 = !DILocation(line: 411, column: 14, scope: !643)
!655 = !{i64 381058}
!656 = !DILocation(line: 412, column: 9, scope: !643)
!657 = !DILocation(line: 412, column: 16, scope: !643)
!658 = !DILocation(line: 413, column: 1, scope: !643)
!659 = !DILocation(line: 412, column: 2, scope: !643)
!660 = !DISubprogram(name: "__get_free_pages", scope: !661, file: !661, line: 289, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!662 = !DISubroutineType(types: !663)
!663 = !{!19, !52, !7}
!664 = distinct !DISubprogram(name: "kmemleak_alloc", scope: !665, file: !665, line: 61, type: !666, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!665 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!666 = !DISubroutineType(types: !667)
!667 = !{null, !668, !47, !162, !52}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!670 = !{!671, !672, !673, !674}
!671 = !DILocalVariable(name: "ptr", arg: 1, scope: !664, file: !665, line: 61, type: !668)
!672 = !DILocalVariable(name: "size", arg: 2, scope: !664, file: !665, line: 61, type: !47)
!673 = !DILocalVariable(name: "min_count", arg: 3, scope: !664, file: !665, line: 61, type: !162)
!674 = !DILocalVariable(name: "gfp", arg: 4, scope: !664, file: !665, line: 62, type: !52)
!675 = !DILocation(line: 61, column: 47, scope: !664)
!676 = !DILocation(line: 61, column: 59, scope: !664)
!677 = !DILocation(line: 61, column: 69, scope: !664)
!678 = !DILocation(line: 62, column: 13, scope: !664)
!679 = !DILocation(line: 64, column: 1, scope: !664)
!680 = distinct !DISubprogram(name: "kasan_check_write", scope: !681, file: !681, line: 44, type: !682, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!681 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!682 = !DISubroutineType(types: !683)
!683 = !{!684, !387, !7}
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !48, line: 35, baseType: !685)
!685 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!686 = !{!687, !688}
!687 = !DILocalVariable(name: "p", arg: 1, scope: !680, file: !681, line: 44, type: !387)
!688 = !DILocalVariable(name: "size", arg: 2, scope: !680, file: !681, line: 44, type: !7)
!689 = !DILocation(line: 44, column: 59, scope: !680)
!690 = !DILocation(line: 44, column: 75, scope: !680)
!691 = !DILocation(line: 46, column: 2, scope: !680)
!692 = distinct !DISubprogram(name: "kcsan_check_access", scope: !693, file: !693, line: 229, type: !694, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!693 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!694 = !DISubroutineType(types: !695)
!695 = !{null, !387, !47, !162}
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "ptr", arg: 1, scope: !692, file: !693, line: 229, type: !387)
!698 = !DILocalVariable(name: "size", arg: 2, scope: !692, file: !693, line: 229, type: !47)
!699 = !DILocalVariable(name: "type", arg: 3, scope: !692, file: !693, line: 230, type: !162)
!700 = !DILocation(line: 229, column: 60, scope: !692)
!701 = !DILocation(line: 229, column: 72, scope: !692)
!702 = !DILocation(line: 230, column: 15, scope: !692)
!703 = !DILocation(line: 230, column: 23, scope: !692)
!704 = distinct !DISubprogram(name: "kmemleak_free", scope: !665, file: !665, line: 78, type: !705, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !668}
!707 = !{!708}
!708 = !DILocalVariable(name: "ptr", arg: 1, scope: !704, file: !665, line: 78, type: !668)
!709 = !DILocation(line: 78, column: 46, scope: !704)
!710 = !DILocation(line: 80, column: 1, scope: !704)
!711 = !DISubprogram(name: "free_pages", scope: !661, file: !661, line: 303, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !19, !7}
