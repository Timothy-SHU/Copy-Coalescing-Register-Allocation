; ModuleID = 'drivers/gpu/drm/drm_rect.c'
source_filename = "drivers/gpu/drm/drm_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rect_intersect: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rect_intersect ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rect_clip_scaled: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rect_clip_scaled ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rect_calc_hscale: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rect_calc_hscale ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rect_calc_vscale: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rect_calc_vscale ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rect_debug_print: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rect_debug_print ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rect_rotate: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rect_rotate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rect_rotate_inv: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rect_rotate_inv ; .previous"

%struct.drm_rect = type { i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_drm_rect_intersect275 = internal global ptr @drm_rect_intersect, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_rect_clip_scaled278 = internal global ptr @drm_rect_clip_scaled, section ".discard.addressable", align 8, !dbg !29
@__UNIQUE_ID___addressable_drm_rect_calc_hscale279 = internal global ptr @drm_rect_calc_hscale, section ".discard.addressable", align 8, !dbg !31
@__UNIQUE_ID___addressable_drm_rect_calc_vscale280 = internal global ptr @drm_rect_calc_vscale, section ".discard.addressable", align 8, !dbg !33
@.str = private unnamed_addr constant [35 x i8] c"%s%d.%06ux%d.%06u%+d.%06u%+d.%06u\0A\00", align 1, !dbg !35
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%dx%d%+d%+d\0A\00", align 1, !dbg !41
@__UNIQUE_ID___addressable_drm_rect_debug_print281 = internal global ptr @drm_rect_debug_print, section ".discard.addressable", align 8, !dbg !46
@__UNIQUE_ID___addressable_drm_rect_rotate282 = internal global ptr @drm_rect_rotate, section ".discard.addressable", align 8, !dbg !48
@__UNIQUE_ID___addressable_drm_rect_rotate_inv283 = internal global ptr @drm_rect_rotate_inv, section ".discard.addressable", align 8, !dbg !50
@.str.2 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_rect.c\00", align 1, !dbg !52
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_drm_rect_intersect275, ptr @__UNIQUE_ID___addressable_drm_rect_clip_scaled278, ptr @__UNIQUE_ID___addressable_drm_rect_calc_hscale279, ptr @__UNIQUE_ID___addressable_drm_rect_calc_vscale280, ptr @__UNIQUE_ID___addressable_drm_rect_debug_print281, ptr @__UNIQUE_ID___addressable_drm_rect_rotate282, ptr @__UNIQUE_ID___addressable_drm_rect_rotate_inv283], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_rect_intersect(ptr noundef %r1, ptr noundef %r2) #0 align 16 !dbg !66 {
entry:
  %r1.addr = alloca ptr, align 8
  %r2.addr = alloca ptr, align 8
  %__UNIQUE_ID___x267 = alloca i32, align 4
  %__UNIQUE_ID___y268 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x269 = alloca i32, align 4
  %__UNIQUE_ID___y270 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %__UNIQUE_ID___x271 = alloca i32, align 4
  %__UNIQUE_ID___y272 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %__UNIQUE_ID___x273 = alloca i32, align 4
  %__UNIQUE_ID___y274 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  store ptr %r1, ptr %r1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r1.addr, metadata !83, metadata !DIExpression()), !dbg !98
  store ptr %r2, ptr %r2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r2.addr, metadata !84, metadata !DIExpression()), !dbg !99
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x267) #7, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x267, metadata !85, metadata !DIExpression()), !dbg !100
  %0 = load ptr, ptr %r1.addr, align 8, !dbg !100
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 0, !dbg !100
  %1 = load i32, ptr %x1, align 4, !dbg !100
  store i32 %1, ptr %__UNIQUE_ID___x267, align 4, !dbg !100
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y268) #7, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y268, metadata !87, metadata !DIExpression()), !dbg !100
  %2 = load ptr, ptr %r2.addr, align 8, !dbg !100
  %x11 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 0, !dbg !100
  %3 = load i32, ptr %x11, align 4, !dbg !100
  store i32 %3, ptr %__UNIQUE_ID___y268, align 4, !dbg !100
  %4 = load i32, ptr %__UNIQUE_ID___x267, align 4, !dbg !100
  %5 = load i32, ptr %__UNIQUE_ID___y268, align 4, !dbg !100
  %cmp = icmp sgt i32 %4, %5, !dbg !100
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !100

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %__UNIQUE_ID___x267, align 4, !dbg !100
  br label %cond.end, !dbg !100

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___y268, align 4, !dbg !100
  br label %cond.end, !dbg !100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !100
  store i32 %cond, ptr %tmp, align 4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y268) #7, !dbg !101
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x267) #7, !dbg !101
  %8 = load i32, ptr %tmp, align 4, !dbg !100
  %9 = load ptr, ptr %r1.addr, align 8, !dbg !102
  %x12 = getelementptr inbounds %struct.drm_rect, ptr %9, i32 0, i32 0, !dbg !103
  store i32 %8, ptr %x12, align 4, !dbg !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x269) #7, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x269, metadata !89, metadata !DIExpression()), !dbg !105
  %10 = load ptr, ptr %r1.addr, align 8, !dbg !105
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %10, i32 0, i32 1, !dbg !105
  %11 = load i32, ptr %y1, align 4, !dbg !105
  store i32 %11, ptr %__UNIQUE_ID___x269, align 4, !dbg !105
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y270) #7, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y270, metadata !91, metadata !DIExpression()), !dbg !105
  %12 = load ptr, ptr %r2.addr, align 8, !dbg !105
  %y13 = getelementptr inbounds %struct.drm_rect, ptr %12, i32 0, i32 1, !dbg !105
  %13 = load i32, ptr %y13, align 4, !dbg !105
  store i32 %13, ptr %__UNIQUE_ID___y270, align 4, !dbg !105
  %14 = load i32, ptr %__UNIQUE_ID___x269, align 4, !dbg !105
  %15 = load i32, ptr %__UNIQUE_ID___y270, align 4, !dbg !105
  %cmp5 = icmp sgt i32 %14, %15, !dbg !105
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !105

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, ptr %__UNIQUE_ID___x269, align 4, !dbg !105
  br label %cond.end8, !dbg !105

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, ptr %__UNIQUE_ID___y270, align 4, !dbg !105
  br label %cond.end8, !dbg !105

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ], !dbg !105
  store i32 %cond9, ptr %tmp4, align 4, !dbg !105
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y270) #7, !dbg !106
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x269) #7, !dbg !106
  %18 = load i32, ptr %tmp4, align 4, !dbg !105
  %19 = load ptr, ptr %r1.addr, align 8, !dbg !107
  %y110 = getelementptr inbounds %struct.drm_rect, ptr %19, i32 0, i32 1, !dbg !108
  store i32 %18, ptr %y110, align 4, !dbg !109
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x271) #7, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x271, metadata !92, metadata !DIExpression()), !dbg !110
  %20 = load ptr, ptr %r1.addr, align 8, !dbg !110
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %20, i32 0, i32 2, !dbg !110
  %21 = load i32, ptr %x2, align 4, !dbg !110
  store i32 %21, ptr %__UNIQUE_ID___x271, align 4, !dbg !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y272) #7, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y272, metadata !94, metadata !DIExpression()), !dbg !110
  %22 = load ptr, ptr %r2.addr, align 8, !dbg !110
  %x211 = getelementptr inbounds %struct.drm_rect, ptr %22, i32 0, i32 2, !dbg !110
  %23 = load i32, ptr %x211, align 4, !dbg !110
  store i32 %23, ptr %__UNIQUE_ID___y272, align 4, !dbg !110
  %24 = load i32, ptr %__UNIQUE_ID___x271, align 4, !dbg !110
  %25 = load i32, ptr %__UNIQUE_ID___y272, align 4, !dbg !110
  %cmp13 = icmp slt i32 %24, %25, !dbg !110
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !110

cond.true14:                                      ; preds = %cond.end8
  %26 = load i32, ptr %__UNIQUE_ID___x271, align 4, !dbg !110
  br label %cond.end16, !dbg !110

cond.false15:                                     ; preds = %cond.end8
  %27 = load i32, ptr %__UNIQUE_ID___y272, align 4, !dbg !110
  br label %cond.end16, !dbg !110

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ %26, %cond.true14 ], [ %27, %cond.false15 ], !dbg !110
  store i32 %cond17, ptr %tmp12, align 4, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y272) #7, !dbg !111
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x271) #7, !dbg !111
  %28 = load i32, ptr %tmp12, align 4, !dbg !110
  %29 = load ptr, ptr %r1.addr, align 8, !dbg !112
  %x218 = getelementptr inbounds %struct.drm_rect, ptr %29, i32 0, i32 2, !dbg !113
  store i32 %28, ptr %x218, align 4, !dbg !114
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x273) #7, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x273, metadata !95, metadata !DIExpression()), !dbg !115
  %30 = load ptr, ptr %r1.addr, align 8, !dbg !115
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %30, i32 0, i32 3, !dbg !115
  %31 = load i32, ptr %y2, align 4, !dbg !115
  store i32 %31, ptr %__UNIQUE_ID___x273, align 4, !dbg !115
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y274) #7, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y274, metadata !97, metadata !DIExpression()), !dbg !115
  %32 = load ptr, ptr %r2.addr, align 8, !dbg !115
  %y219 = getelementptr inbounds %struct.drm_rect, ptr %32, i32 0, i32 3, !dbg !115
  %33 = load i32, ptr %y219, align 4, !dbg !115
  store i32 %33, ptr %__UNIQUE_ID___y274, align 4, !dbg !115
  %34 = load i32, ptr %__UNIQUE_ID___x273, align 4, !dbg !115
  %35 = load i32, ptr %__UNIQUE_ID___y274, align 4, !dbg !115
  %cmp21 = icmp slt i32 %34, %35, !dbg !115
  br i1 %cmp21, label %cond.true22, label %cond.false23, !dbg !115

cond.true22:                                      ; preds = %cond.end16
  %36 = load i32, ptr %__UNIQUE_ID___x273, align 4, !dbg !115
  br label %cond.end24, !dbg !115

cond.false23:                                     ; preds = %cond.end16
  %37 = load i32, ptr %__UNIQUE_ID___y274, align 4, !dbg !115
  br label %cond.end24, !dbg !115

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i32 [ %36, %cond.true22 ], [ %37, %cond.false23 ], !dbg !115
  store i32 %cond25, ptr %tmp20, align 4, !dbg !115
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y274) #7, !dbg !116
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x273) #7, !dbg !116
  %38 = load i32, ptr %tmp20, align 4, !dbg !115
  %39 = load ptr, ptr %r1.addr, align 8, !dbg !117
  %y226 = getelementptr inbounds %struct.drm_rect, ptr %39, i32 0, i32 3, !dbg !118
  store i32 %38, ptr %y226, align 4, !dbg !119
  %40 = load ptr, ptr %r1.addr, align 8, !dbg !120
  %call = call zeroext i1 @drm_rect_visible(ptr noundef %40) #8, !dbg !121
  ret i1 %call, !dbg !122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_rect_visible(ptr noundef %r) #3 align 16 !dbg !123 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = load ptr, ptr %r.addr, align 8, !dbg !129
  %call = call i32 @drm_rect_width(ptr noundef %0) #8, !dbg !130
  %cmp = icmp sgt i32 %call, 0, !dbg !131
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !132

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !133
  %call1 = call i32 @drm_rect_height(ptr noundef %1) #8, !dbg !134
  %cmp2 = icmp sgt i32 %call1, 0, !dbg !135
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !136
  ret i1 %2, !dbg !137
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_rect_clip_scaled(ptr noundef %src, ptr noundef %dst, ptr noundef %clip) #0 align 16 !dbg !138 {
entry:
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %clip.addr = alloca ptr, align 8
  %diff = alloca i32, align 4
  %new_src_w = alloca i32, align 4
  %new_src_h = alloca i32, align 4
  %new_src_w24 = alloca i32, align 4
  %new_src_h39 = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !142, metadata !DIExpression()), !dbg !160
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !143, metadata !DIExpression()), !dbg !161
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !144, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %diff) #7, !dbg !163
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !145, metadata !DIExpression()), !dbg !164
  %0 = load ptr, ptr %clip.addr, align 8, !dbg !165
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 0, !dbg !166
  %1 = load i32, ptr %x1, align 4, !dbg !166
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !167
  %x11 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 0, !dbg !168
  %3 = load i32, ptr %x11, align 4, !dbg !168
  %sub = sub i32 %1, %3, !dbg !169
  store i32 %sub, ptr %diff, align 4, !dbg !170
  %4 = load i32, ptr %diff, align 4, !dbg !171
  %cmp = icmp sgt i32 %4, 0, !dbg !172
  br i1 %cmp, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_src_w) #7, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %new_src_w, metadata !146, metadata !DIExpression()), !dbg !175
  %5 = load ptr, ptr %src.addr, align 8, !dbg !176
  %call = call i32 @drm_rect_width(ptr noundef %5) #8, !dbg !177
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !178
  %call2 = call i32 @drm_rect_width(ptr noundef %6) #8, !dbg !179
  %call3 = call i32 @clip_scaled(i32 noundef %call, i32 noundef %call2, ptr noundef %diff) #8, !dbg !180
  store i32 %call3, ptr %new_src_w, align 4, !dbg !175
  %7 = load ptr, ptr %src.addr, align 8, !dbg !181
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %7, i32 0, i32 2, !dbg !182
  %8 = load i32, ptr %x2, align 4, !dbg !182
  %9 = load i32, ptr %new_src_w, align 4, !dbg !183
  %sub4 = sub i32 %8, %9, !dbg !184
  %10 = load ptr, ptr %src.addr, align 8, !dbg !185
  %x15 = getelementptr inbounds %struct.drm_rect, ptr %10, i32 0, i32 0, !dbg !186
  store i32 %sub4, ptr %x15, align 4, !dbg !187
  %11 = load i32, ptr %diff, align 4, !dbg !188
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !189
  %x16 = getelementptr inbounds %struct.drm_rect, ptr %12, i32 0, i32 0, !dbg !190
  %13 = load i32, ptr %x16, align 4, !dbg !191
  %add = add i32 %13, %11, !dbg !191
  store i32 %add, ptr %x16, align 4, !dbg !191
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_src_w) #7, !dbg !192
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %clip.addr, align 8, !dbg !194
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %14, i32 0, i32 1, !dbg !195
  %15 = load i32, ptr %y1, align 4, !dbg !195
  %16 = load ptr, ptr %dst.addr, align 8, !dbg !196
  %y17 = getelementptr inbounds %struct.drm_rect, ptr %16, i32 0, i32 1, !dbg !197
  %17 = load i32, ptr %y17, align 4, !dbg !197
  %sub8 = sub i32 %15, %17, !dbg !198
  store i32 %sub8, ptr %diff, align 4, !dbg !199
  %18 = load i32, ptr %diff, align 4, !dbg !200
  %cmp9 = icmp sgt i32 %18, 0, !dbg !201
  br i1 %cmp9, label %if.then10, label %if.end18, !dbg !202

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_src_h) #7, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %new_src_h, metadata !151, metadata !DIExpression()), !dbg !204
  %19 = load ptr, ptr %src.addr, align 8, !dbg !205
  %call11 = call i32 @drm_rect_height(ptr noundef %19) #8, !dbg !206
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !207
  %call12 = call i32 @drm_rect_height(ptr noundef %20) #8, !dbg !208
  %call13 = call i32 @clip_scaled(i32 noundef %call11, i32 noundef %call12, ptr noundef %diff) #8, !dbg !209
  store i32 %call13, ptr %new_src_h, align 4, !dbg !204
  %21 = load ptr, ptr %src.addr, align 8, !dbg !210
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %21, i32 0, i32 3, !dbg !211
  %22 = load i32, ptr %y2, align 4, !dbg !211
  %23 = load i32, ptr %new_src_h, align 4, !dbg !212
  %sub14 = sub i32 %22, %23, !dbg !213
  %24 = load ptr, ptr %src.addr, align 8, !dbg !214
  %y115 = getelementptr inbounds %struct.drm_rect, ptr %24, i32 0, i32 1, !dbg !215
  store i32 %sub14, ptr %y115, align 4, !dbg !216
  %25 = load i32, ptr %diff, align 4, !dbg !217
  %26 = load ptr, ptr %dst.addr, align 8, !dbg !218
  %y116 = getelementptr inbounds %struct.drm_rect, ptr %26, i32 0, i32 1, !dbg !219
  %27 = load i32, ptr %y116, align 4, !dbg !220
  %add17 = add i32 %27, %25, !dbg !220
  store i32 %add17, ptr %y116, align 4, !dbg !220
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_src_h) #7, !dbg !221
  br label %if.end18, !dbg !222

if.end18:                                         ; preds = %if.then10, %if.end
  %28 = load ptr, ptr %dst.addr, align 8, !dbg !223
  %x219 = getelementptr inbounds %struct.drm_rect, ptr %28, i32 0, i32 2, !dbg !224
  %29 = load i32, ptr %x219, align 4, !dbg !224
  %30 = load ptr, ptr %clip.addr, align 8, !dbg !225
  %x220 = getelementptr inbounds %struct.drm_rect, ptr %30, i32 0, i32 2, !dbg !226
  %31 = load i32, ptr %x220, align 4, !dbg !226
  %sub21 = sub i32 %29, %31, !dbg !227
  store i32 %sub21, ptr %diff, align 4, !dbg !228
  %32 = load i32, ptr %diff, align 4, !dbg !229
  %cmp22 = icmp sgt i32 %32, 0, !dbg !230
  br i1 %cmp22, label %if.then23, label %if.end33, !dbg !231

if.then23:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_src_w24) #7, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %new_src_w24, metadata !154, metadata !DIExpression()), !dbg !233
  %33 = load ptr, ptr %src.addr, align 8, !dbg !234
  %call25 = call i32 @drm_rect_width(ptr noundef %33) #8, !dbg !235
  %34 = load ptr, ptr %dst.addr, align 8, !dbg !236
  %call26 = call i32 @drm_rect_width(ptr noundef %34) #8, !dbg !237
  %call27 = call i32 @clip_scaled(i32 noundef %call25, i32 noundef %call26, ptr noundef %diff) #8, !dbg !238
  store i32 %call27, ptr %new_src_w24, align 4, !dbg !233
  %35 = load ptr, ptr %src.addr, align 8, !dbg !239
  %x128 = getelementptr inbounds %struct.drm_rect, ptr %35, i32 0, i32 0, !dbg !240
  %36 = load i32, ptr %x128, align 4, !dbg !240
  %37 = load i32, ptr %new_src_w24, align 4, !dbg !241
  %add29 = add i32 %36, %37, !dbg !242
  %38 = load ptr, ptr %src.addr, align 8, !dbg !243
  %x230 = getelementptr inbounds %struct.drm_rect, ptr %38, i32 0, i32 2, !dbg !244
  store i32 %add29, ptr %x230, align 4, !dbg !245
  %39 = load i32, ptr %diff, align 4, !dbg !246
  %40 = load ptr, ptr %dst.addr, align 8, !dbg !247
  %x231 = getelementptr inbounds %struct.drm_rect, ptr %40, i32 0, i32 2, !dbg !248
  %41 = load i32, ptr %x231, align 4, !dbg !249
  %sub32 = sub i32 %41, %39, !dbg !249
  store i32 %sub32, ptr %x231, align 4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_src_w24) #7, !dbg !250
  br label %if.end33, !dbg !251

if.end33:                                         ; preds = %if.then23, %if.end18
  %42 = load ptr, ptr %dst.addr, align 8, !dbg !252
  %y234 = getelementptr inbounds %struct.drm_rect, ptr %42, i32 0, i32 3, !dbg !253
  %43 = load i32, ptr %y234, align 4, !dbg !253
  %44 = load ptr, ptr %clip.addr, align 8, !dbg !254
  %y235 = getelementptr inbounds %struct.drm_rect, ptr %44, i32 0, i32 3, !dbg !255
  %45 = load i32, ptr %y235, align 4, !dbg !255
  %sub36 = sub i32 %43, %45, !dbg !256
  store i32 %sub36, ptr %diff, align 4, !dbg !257
  %46 = load i32, ptr %diff, align 4, !dbg !258
  %cmp37 = icmp sgt i32 %46, 0, !dbg !259
  br i1 %cmp37, label %if.then38, label %if.end48, !dbg !260

if.then38:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_src_h39) #7, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %new_src_h39, metadata !157, metadata !DIExpression()), !dbg !262
  %47 = load ptr, ptr %src.addr, align 8, !dbg !263
  %call40 = call i32 @drm_rect_height(ptr noundef %47) #8, !dbg !264
  %48 = load ptr, ptr %dst.addr, align 8, !dbg !265
  %call41 = call i32 @drm_rect_height(ptr noundef %48) #8, !dbg !266
  %call42 = call i32 @clip_scaled(i32 noundef %call40, i32 noundef %call41, ptr noundef %diff) #8, !dbg !267
  store i32 %call42, ptr %new_src_h39, align 4, !dbg !262
  %49 = load ptr, ptr %src.addr, align 8, !dbg !268
  %y143 = getelementptr inbounds %struct.drm_rect, ptr %49, i32 0, i32 1, !dbg !269
  %50 = load i32, ptr %y143, align 4, !dbg !269
  %51 = load i32, ptr %new_src_h39, align 4, !dbg !270
  %add44 = add i32 %50, %51, !dbg !271
  %52 = load ptr, ptr %src.addr, align 8, !dbg !272
  %y245 = getelementptr inbounds %struct.drm_rect, ptr %52, i32 0, i32 3, !dbg !273
  store i32 %add44, ptr %y245, align 4, !dbg !274
  %53 = load i32, ptr %diff, align 4, !dbg !275
  %54 = load ptr, ptr %dst.addr, align 8, !dbg !276
  %y246 = getelementptr inbounds %struct.drm_rect, ptr %54, i32 0, i32 3, !dbg !277
  %55 = load i32, ptr %y246, align 4, !dbg !278
  %sub47 = sub i32 %55, %53, !dbg !278
  store i32 %sub47, ptr %y246, align 4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_src_h39) #7, !dbg !279
  br label %if.end48, !dbg !280

if.end48:                                         ; preds = %if.then38, %if.end33
  %56 = load ptr, ptr %dst.addr, align 8, !dbg !281
  %call49 = call zeroext i1 @drm_rect_visible(ptr noundef %56) #8, !dbg !282
  call void @llvm.lifetime.end.p0(i64 4, ptr %diff) #7, !dbg !283
  ret i1 %call49, !dbg !284
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clip_scaled(i32 noundef %src, i32 noundef %dst, ptr noundef %clip) #0 align 16 !dbg !285 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  %clip.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x276 = alloca i32, align 4
  %__UNIQUE_ID___y277 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp10 = alloca i64, align 8
  %_tmp12 = alloca i64, align 8
  %__base13 = alloca i32, align 4
  %__rem14 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  store i32 %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !290, metadata !DIExpression()), !dbg !309
  store i32 %dst, ptr %dst.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !291, metadata !DIExpression()), !dbg !310
  store ptr %clip, ptr %clip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clip.addr, metadata !292, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !293, metadata !DIExpression()), !dbg !313
  %0 = load i32, ptr %dst.addr, align 4, !dbg !314
  %cmp = icmp eq i32 %0, 0, !dbg !316
  br i1 %cmp, label %if.then, label %if.end, !dbg !317

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !318

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x276) #7, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x276, metadata !294, metadata !DIExpression()), !dbg !319
  %1 = load ptr, ptr %clip.addr, align 8, !dbg !319
  %2 = load i32, ptr %1, align 4, !dbg !319
  store i32 %2, ptr %__UNIQUE_ID___x276, align 4, !dbg !319
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y277) #7, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y277, metadata !296, metadata !DIExpression()), !dbg !319
  %3 = load i32, ptr %dst.addr, align 4, !dbg !319
  store i32 %3, ptr %__UNIQUE_ID___y277, align 4, !dbg !319
  %4 = load i32, ptr %__UNIQUE_ID___x276, align 4, !dbg !319
  %5 = load i32, ptr %__UNIQUE_ID___y277, align 4, !dbg !319
  %cmp2 = icmp slt i32 %4, %5, !dbg !319
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !319

cond.true:                                        ; preds = %if.end
  %6 = load i32, ptr %__UNIQUE_ID___x276, align 4, !dbg !319
  br label %cond.end, !dbg !319

cond.false:                                       ; preds = %if.end
  %7 = load i32, ptr %__UNIQUE_ID___y277, align 4, !dbg !319
  br label %cond.end, !dbg !319

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !319
  store i32 %cond, ptr %tmp1, align 4, !dbg !319
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y277) #7, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x276) #7, !dbg !320
  %8 = load i32, ptr %tmp1, align 4, !dbg !319
  %9 = load ptr, ptr %clip.addr, align 8, !dbg !321
  store i32 %8, ptr %9, align 4, !dbg !322
  %10 = load i32, ptr %src.addr, align 4, !dbg !323
  %11 = load i32, ptr %dst.addr, align 4, !dbg !324
  %12 = load ptr, ptr %clip.addr, align 8, !dbg !325
  %13 = load i32, ptr %12, align 4, !dbg !326
  %sub = sub i32 %11, %13, !dbg !327
  %call = call i64 @mul_u32_u32(i32 noundef %10, i32 noundef %sub) #8, !dbg !328
  store i64 %call, ptr %tmp, align 8, !dbg !329
  %14 = load i32, ptr %src.addr, align 4, !dbg !330
  %15 = load i32, ptr %dst.addr, align 4, !dbg !331
  %shl = shl i32 %15, 16, !dbg !332
  %cmp3 = icmp slt i32 %14, %shl, !dbg !333
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !334

if.then4:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #7, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !297, metadata !DIExpression()), !dbg !335
  %16 = load i64, ptr %tmp, align 8, !dbg !335
  %17 = load i32, ptr %dst.addr, align 4, !dbg !335
  %conv = sext i32 %17 to i64, !dbg !335
  %add = add i64 %16, %conv, !dbg !335
  %sub5 = sub i64 %add, 1, !dbg !335
  store i64 %sub5, ptr %_tmp, align 8, !dbg !335
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #7, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !300, metadata !DIExpression()), !dbg !336
  %18 = load i32, ptr %dst.addr, align 4, !dbg !336
  store i32 %18, ptr %__base, align 4, !dbg !336
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #7, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !303, metadata !DIExpression()), !dbg !336
  %19 = load i64, ptr %_tmp, align 8, !dbg !336
  %20 = load i32, ptr %__base, align 4, !dbg !336
  %conv6 = zext i32 %20 to i64, !dbg !336
  %rem = urem i64 %19, %conv6, !dbg !336
  %conv7 = trunc i64 %rem to i32, !dbg !336
  store i32 %conv7, ptr %__rem, align 4, !dbg !336
  %21 = load i64, ptr %_tmp, align 8, !dbg !336
  %22 = load i32, ptr %__base, align 4, !dbg !336
  %conv8 = zext i32 %22 to i64, !dbg !336
  %div = udiv i64 %21, %conv8, !dbg !336
  store i64 %div, ptr %_tmp, align 8, !dbg !336
  %23 = load i32, ptr %__rem, align 4, !dbg !336
  store i32 %23, ptr %tmp9, align 4, !dbg !336
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #7, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #7, !dbg !335
  %24 = load i32, ptr %tmp9, align 4, !dbg !336
  %25 = load i64, ptr %_tmp, align 8, !dbg !335
  store i64 %25, ptr %tmp10, align 8, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #7, !dbg !337
  %26 = load i64, ptr %tmp10, align 8, !dbg !335
  %conv11 = trunc i64 %26 to i32, !dbg !337
  store i32 %conv11, ptr %retval, align 4, !dbg !338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !338

if.else:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp12) #7, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %_tmp12, metadata !304, metadata !DIExpression()), !dbg !339
  %27 = load i64, ptr %tmp, align 8, !dbg !339
  store i64 %27, ptr %_tmp12, align 8, !dbg !339
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base13) #7, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %__base13, metadata !306, metadata !DIExpression()), !dbg !340
  %28 = load i32, ptr %dst.addr, align 4, !dbg !340
  store i32 %28, ptr %__base13, align 4, !dbg !340
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem14) #7, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %__rem14, metadata !308, metadata !DIExpression()), !dbg !340
  %29 = load i64, ptr %_tmp12, align 8, !dbg !340
  %30 = load i32, ptr %__base13, align 4, !dbg !340
  %conv15 = zext i32 %30 to i64, !dbg !340
  %rem16 = urem i64 %29, %conv15, !dbg !340
  %conv17 = trunc i64 %rem16 to i32, !dbg !340
  store i32 %conv17, ptr %__rem14, align 4, !dbg !340
  %31 = load i64, ptr %_tmp12, align 8, !dbg !340
  %32 = load i32, ptr %__base13, align 4, !dbg !340
  %conv18 = zext i32 %32 to i64, !dbg !340
  %div19 = udiv i64 %31, %conv18, !dbg !340
  store i64 %div19, ptr %_tmp12, align 8, !dbg !340
  %33 = load i32, ptr %__rem14, align 4, !dbg !340
  store i32 %33, ptr %tmp20, align 4, !dbg !340
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem14) #7, !dbg !339
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base13) #7, !dbg !339
  %34 = load i32, ptr %tmp20, align 4, !dbg !340
  %35 = load i64, ptr %_tmp12, align 8, !dbg !339
  store i64 %35, ptr %tmp21, align 8, !dbg !339
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp12) #7, !dbg !341
  %36 = load i64, ptr %tmp21, align 8, !dbg !339
  %conv22 = trunc i64 %36 to i32, !dbg !341
  store i32 %conv22, ptr %retval, align 4, !dbg !342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !342

cleanup:                                          ; preds = %if.else, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !343
  %37 = load i32, ptr %retval, align 4, !dbg !343
  ret i32 %37, !dbg !343
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_rect_width(ptr noundef %r) #3 align 16 !dbg !344 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load ptr, ptr %r.addr, align 8, !dbg !350
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 2, !dbg !351
  %1 = load i32, ptr %x2, align 4, !dbg !351
  %2 = load ptr, ptr %r.addr, align 8, !dbg !352
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 0, !dbg !353
  %3 = load i32, ptr %x1, align 4, !dbg !353
  %sub = sub i32 %1, %3, !dbg !354
  ret i32 %sub, !dbg !355
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_rect_height(ptr noundef %r) #3 align 16 !dbg !356 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load ptr, ptr %r.addr, align 8, !dbg !360
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %0, i32 0, i32 3, !dbg !361
  %1 = load i32, ptr %y2, align 4, !dbg !361
  %2 = load ptr, ptr %r.addr, align 8, !dbg !362
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %2, i32 0, i32 1, !dbg !363
  %3 = load i32, ptr %y1, align 4, !dbg !363
  %sub = sub i32 %1, %3, !dbg !364
  ret i32 %sub, !dbg !365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_rect_calc_hscale(ptr noundef %src, ptr noundef %dst, i32 noundef %min_hscale, i32 noundef %max_hscale) #0 align 16 !dbg !366 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %min_hscale.addr = alloca i32, align 4
  %max_hscale.addr = alloca i32, align 4
  %src_w = alloca i32, align 4
  %dst_w = alloca i32, align 4
  %hscale = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !370, metadata !DIExpression()), !dbg !377
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !371, metadata !DIExpression()), !dbg !378
  store i32 %min_hscale, ptr %min_hscale.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_hscale.addr, metadata !372, metadata !DIExpression()), !dbg !379
  store i32 %max_hscale, ptr %max_hscale.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_hscale.addr, metadata !373, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 4, ptr %src_w) #7, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %src_w, metadata !374, metadata !DIExpression()), !dbg !382
  %0 = load ptr, ptr %src.addr, align 8, !dbg !383
  %call = call i32 @drm_rect_width(ptr noundef %0) #8, !dbg !384
  store i32 %call, ptr %src_w, align 4, !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %dst_w) #7, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %dst_w, metadata !375, metadata !DIExpression()), !dbg !386
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !387
  %call1 = call i32 @drm_rect_width(ptr noundef %1) #8, !dbg !388
  store i32 %call1, ptr %dst_w, align 4, !dbg !386
  call void @llvm.lifetime.start.p0(i64 4, ptr %hscale) #7, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %hscale, metadata !376, metadata !DIExpression()), !dbg !390
  %2 = load i32, ptr %src_w, align 4, !dbg !391
  %3 = load i32, ptr %dst_w, align 4, !dbg !392
  %call2 = call i32 @drm_calc_scale(i32 noundef %2, i32 noundef %3) #8, !dbg !393
  store i32 %call2, ptr %hscale, align 4, !dbg !390
  %4 = load i32, ptr %hscale, align 4, !dbg !394
  %cmp = icmp slt i32 %4, 0, !dbg !396
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !397

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %dst_w, align 4, !dbg !398
  %cmp3 = icmp eq i32 %5, 0, !dbg !399
  br i1 %cmp3, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, ptr %hscale, align 4, !dbg !401
  store i32 %6, ptr %retval, align 4, !dbg !402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !402

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, ptr %hscale, align 4, !dbg !403
  %8 = load i32, ptr %min_hscale.addr, align 4, !dbg !405
  %cmp4 = icmp slt i32 %7, %8, !dbg !406
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !407

lor.lhs.false5:                                   ; preds = %if.end
  %9 = load i32, ptr %hscale, align 4, !dbg !408
  %10 = load i32, ptr %max_hscale.addr, align 4, !dbg !409
  %cmp6 = icmp sgt i32 %9, %10, !dbg !410
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !411

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -34, ptr %retval, align 4, !dbg !412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

if.end8:                                          ; preds = %lor.lhs.false5
  %11 = load i32, ptr %hscale, align 4, !dbg !413
  store i32 %11, ptr %retval, align 4, !dbg !414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !414

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %hscale) #7, !dbg !415
  call void @llvm.lifetime.end.p0(i64 4, ptr %dst_w) #7, !dbg !415
  call void @llvm.lifetime.end.p0(i64 4, ptr %src_w) #7, !dbg !415
  %12 = load i32, ptr %retval, align 4, !dbg !415
  ret i32 %12, !dbg !415
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_calc_scale(i32 noundef %src, i32 noundef %dst) #0 align 16 !dbg !416 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  %scale = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !420, metadata !DIExpression()), !dbg !429
  store i32 %dst, ptr %dst.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !421, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 4, ptr %scale) #7, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %scale, metadata !422, metadata !DIExpression()), !dbg !432
  store i32 0, ptr %scale, align 4, !dbg !432
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !423, metadata !DIExpression()), !dbg !433
  %0 = load i32, ptr %src.addr, align 4, !dbg !433
  %cmp = icmp slt i32 %0, 0, !dbg !433
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !433

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %dst.addr, align 4, !dbg !433
  %cmp1 = icmp slt i32 %1, 0, !dbg !433
  br label %lor.end, !dbg !433

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %2, true, !dbg !433
  %lnot2 = xor i1 %lnot, true, !dbg !433
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !433
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !433
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !434
  %tobool = icmp ne i32 %3, 0, !dbg !434
  %lnot3 = xor i1 %tobool, true, !dbg !434
  %lnot5 = xor i1 %lnot3, true, !dbg !434
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !434
  %conv = sext i32 %lnot.ext6 to i64, !dbg !434
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !434
  %tobool7 = icmp ne i64 %expval, 0, !dbg !434
  br i1 %tobool7, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !434

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !426, metadata !DIExpression()), !dbg !435
  store i32 2305, ptr %__flags, align 4, !dbg !435
  br label %do.body8, !dbg !435

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !436

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !436

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !435

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !438
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 138, i32 %4, i64 12) #7, !dbg !438, !srcloc !440
  br label %do.cond10, !dbg !438

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !438

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !435

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !441

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !441

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !434
  br label %do.cond15, !dbg !435

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !435

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !435

if.end:                                           ; preds = %do.end16, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !433
  %tobool17 = icmp ne i32 %5, 0, !dbg !433
  %lnot18 = xor i1 %tobool17, true, !dbg !433
  %lnot20 = xor i1 %lnot18, true, !dbg !433
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !433
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !433
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !433
  store i64 %expval23, ptr %tmp, align 8, !dbg !434
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !443
  %6 = load i64, ptr %tmp, align 8, !dbg !433
  %tobool24 = icmp ne i64 %6, 0, !dbg !443
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !444

if.then25:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !445

if.end26:                                         ; preds = %if.end
  %7 = load i32, ptr %dst.addr, align 4, !dbg !446
  %cmp27 = icmp eq i32 %7, 0, !dbg !448
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !449

if.then29:                                        ; preds = %if.end26
  store i32 0, ptr %retval, align 4, !dbg !450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !450

if.end30:                                         ; preds = %if.end26
  %8 = load i32, ptr %src.addr, align 4, !dbg !451
  %9 = load i32, ptr %dst.addr, align 4, !dbg !453
  %shl = shl i32 %9, 16, !dbg !454
  %cmp31 = icmp sgt i32 %8, %shl, !dbg !455
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !456

if.then33:                                        ; preds = %if.end30
  %10 = load i32, ptr %src.addr, align 4, !dbg !457
  %11 = load i32, ptr %dst.addr, align 4, !dbg !457
  %add = add i32 %10, %11, !dbg !457
  %sub = sub i32 %add, 1, !dbg !457
  %12 = load i32, ptr %dst.addr, align 4, !dbg !457
  %div = sdiv i32 %sub, %12, !dbg !457
  store i32 %div, ptr %retval, align 4, !dbg !458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !458

if.else:                                          ; preds = %if.end30
  %13 = load i32, ptr %src.addr, align 4, !dbg !459
  %14 = load i32, ptr %dst.addr, align 4, !dbg !460
  %div34 = sdiv i32 %13, %14, !dbg !461
  store i32 %div34, ptr %scale, align 4, !dbg !462
  br label %if.end35

if.end35:                                         ; preds = %if.else
  %15 = load i32, ptr %scale, align 4, !dbg !463
  store i32 %15, ptr %retval, align 4, !dbg !464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !464

cleanup:                                          ; preds = %if.end35, %if.then33, %if.then29, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %scale) #7, !dbg !465
  %16 = load i32, ptr %retval, align 4, !dbg !465
  ret i32 %16, !dbg !465
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_rect_calc_vscale(ptr noundef %src, ptr noundef %dst, i32 noundef %min_vscale, i32 noundef %max_vscale) #0 align 16 !dbg !466 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %min_vscale.addr = alloca i32, align 4
  %max_vscale.addr = alloca i32, align 4
  %src_h = alloca i32, align 4
  %dst_h = alloca i32, align 4
  %vscale = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !468, metadata !DIExpression()), !dbg !475
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !469, metadata !DIExpression()), !dbg !476
  store i32 %min_vscale, ptr %min_vscale.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_vscale.addr, metadata !470, metadata !DIExpression()), !dbg !477
  store i32 %max_vscale, ptr %max_vscale.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_vscale.addr, metadata !471, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %src_h) #7, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %src_h, metadata !472, metadata !DIExpression()), !dbg !480
  %0 = load ptr, ptr %src.addr, align 8, !dbg !481
  %call = call i32 @drm_rect_height(ptr noundef %0) #8, !dbg !482
  store i32 %call, ptr %src_h, align 4, !dbg !480
  call void @llvm.lifetime.start.p0(i64 4, ptr %dst_h) #7, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %dst_h, metadata !473, metadata !DIExpression()), !dbg !484
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !485
  %call1 = call i32 @drm_rect_height(ptr noundef %1) #8, !dbg !486
  store i32 %call1, ptr %dst_h, align 4, !dbg !484
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #7, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %vscale, metadata !474, metadata !DIExpression()), !dbg !488
  %2 = load i32, ptr %src_h, align 4, !dbg !489
  %3 = load i32, ptr %dst_h, align 4, !dbg !490
  %call2 = call i32 @drm_calc_scale(i32 noundef %2, i32 noundef %3) #8, !dbg !491
  store i32 %call2, ptr %vscale, align 4, !dbg !488
  %4 = load i32, ptr %vscale, align 4, !dbg !492
  %cmp = icmp slt i32 %4, 0, !dbg !494
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !495

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %dst_h, align 4, !dbg !496
  %cmp3 = icmp eq i32 %5, 0, !dbg !497
  br i1 %cmp3, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, ptr %vscale, align 4, !dbg !499
  store i32 %6, ptr %retval, align 4, !dbg !500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !500

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, ptr %vscale, align 4, !dbg !501
  %8 = load i32, ptr %min_vscale.addr, align 4, !dbg !503
  %cmp4 = icmp slt i32 %7, %8, !dbg !504
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !505

lor.lhs.false5:                                   ; preds = %if.end
  %9 = load i32, ptr %vscale, align 4, !dbg !506
  %10 = load i32, ptr %max_vscale.addr, align 4, !dbg !507
  %cmp6 = icmp sgt i32 %9, %10, !dbg !508
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !509

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -34, ptr %retval, align 4, !dbg !510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

if.end8:                                          ; preds = %lor.lhs.false5
  %11 = load i32, ptr %vscale, align 4, !dbg !511
  store i32 %11, ptr %retval, align 4, !dbg !512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !512

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #7, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %dst_h) #7, !dbg !513
  call void @llvm.lifetime.end.p0(i64 4, ptr %src_h) #7, !dbg !513
  %12 = load i32, ptr %retval, align 4, !dbg !513
  ret i32 %12, !dbg !513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_rect_debug_print(ptr noundef %prefix, ptr noundef %r, i1 noundef zeroext %fixed_point) #0 align 16 !dbg !514 {
entry:
  %prefix.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %fixed_point.addr = alloca i8, align 1
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !520, metadata !DIExpression()), !dbg !523
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !521, metadata !DIExpression()), !dbg !524
  %frombool = zext i1 %fixed_point to i8
  store i8 %frombool, ptr %fixed_point.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fixed_point.addr, metadata !522, metadata !DIExpression()), !dbg !525
  %0 = load i8, ptr %fixed_point.addr, align 1, !dbg !526, !range !528, !noundef !529
  %tobool = trunc i8 %0 to i1, !dbg !526
  br i1 %tobool, label %if.then, label %if.else, !dbg !530

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %prefix.addr, align 8, !dbg !531
  %2 = load ptr, ptr %r.addr, align 8, !dbg !531
  %call = call i32 @drm_rect_width(ptr noundef %2) #8, !dbg !531
  %shr = ashr i32 %call, 16, !dbg !531
  %3 = load ptr, ptr %r.addr, align 8, !dbg !531
  %call1 = call i32 @drm_rect_width(ptr noundef %3) #8, !dbg !531
  %and = and i32 %call1, 65535, !dbg !531
  %mul = mul i32 %and, 15625, !dbg !531
  %shr2 = ashr i32 %mul, 10, !dbg !531
  %4 = load ptr, ptr %r.addr, align 8, !dbg !531
  %call3 = call i32 @drm_rect_height(ptr noundef %4) #8, !dbg !531
  %shr4 = ashr i32 %call3, 16, !dbg !531
  %5 = load ptr, ptr %r.addr, align 8, !dbg !531
  %call5 = call i32 @drm_rect_height(ptr noundef %5) #8, !dbg !531
  %and6 = and i32 %call5, 65535, !dbg !531
  %mul7 = mul i32 %and6, 15625, !dbg !531
  %shr8 = ashr i32 %mul7, 10, !dbg !531
  %6 = load ptr, ptr %r.addr, align 8, !dbg !531
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %6, i32 0, i32 0, !dbg !531
  %7 = load i32, ptr %x1, align 4, !dbg !531
  %shr9 = ashr i32 %7, 16, !dbg !531
  %8 = load ptr, ptr %r.addr, align 8, !dbg !531
  %x110 = getelementptr inbounds %struct.drm_rect, ptr %8, i32 0, i32 0, !dbg !531
  %9 = load i32, ptr %x110, align 4, !dbg !531
  %and11 = and i32 %9, 65535, !dbg !531
  %mul12 = mul i32 %and11, 15625, !dbg !531
  %shr13 = ashr i32 %mul12, 10, !dbg !531
  %10 = load ptr, ptr %r.addr, align 8, !dbg !531
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %10, i32 0, i32 1, !dbg !531
  %11 = load i32, ptr %y1, align 4, !dbg !531
  %shr14 = ashr i32 %11, 16, !dbg !531
  %12 = load ptr, ptr %r.addr, align 8, !dbg !531
  %y115 = getelementptr inbounds %struct.drm_rect, ptr %12, i32 0, i32 1, !dbg !531
  %13 = load i32, ptr %y115, align 4, !dbg !531
  %and16 = and i32 %13, 65535, !dbg !531
  %mul17 = mul i32 %and16, 15625, !dbg !531
  %shr18 = ashr i32 %mul17, 10, !dbg !531
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 2, ptr noundef @.str, ptr noundef %1, i32 noundef %shr, i32 noundef %shr2, i32 noundef %shr4, i32 noundef %shr8, i32 noundef %shr9, i32 noundef %shr13, i32 noundef %shr14, i32 noundef %shr18) #8, !dbg !531
  br label %if.end, !dbg !531

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %prefix.addr, align 8, !dbg !532
  %15 = load ptr, ptr %r.addr, align 8, !dbg !532
  %call19 = call i32 @drm_rect_width(ptr noundef %15) #8, !dbg !532
  %16 = load ptr, ptr %r.addr, align 8, !dbg !532
  %call20 = call i32 @drm_rect_height(ptr noundef %16) #8, !dbg !532
  %17 = load ptr, ptr %r.addr, align 8, !dbg !532
  %x121 = getelementptr inbounds %struct.drm_rect, ptr %17, i32 0, i32 0, !dbg !532
  %18 = load i32, ptr %x121, align 4, !dbg !532
  %19 = load ptr, ptr %r.addr, align 8, !dbg !532
  %y122 = getelementptr inbounds %struct.drm_rect, ptr %19, i32 0, i32 1, !dbg !532
  %20 = load i32, ptr %y122, align 4, !dbg !532
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 2, ptr noundef @.str.1, ptr noundef %14, i32 noundef %call19, i32 noundef %call20, i32 noundef %18, i32 noundef %20) #8, !dbg !532
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !533
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !534 dso_local void @___drm_dbg(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_rect_rotate(ptr noundef %r, i32 noundef %width, i32 noundef %height, i32 noundef %rotation) #0 align 16 !dbg !585 {
entry:
  %r.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rotation.addr = alloca i32, align 4
  %tmp = alloca %struct.drm_rect, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !589, metadata !DIExpression()), !dbg !594
  store i32 %width, ptr %width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !590, metadata !DIExpression()), !dbg !595
  store i32 %height, ptr %height.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %height.addr, metadata !591, metadata !DIExpression()), !dbg !596
  store i32 %rotation, ptr %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rotation.addr, metadata !592, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !593, metadata !DIExpression()), !dbg !599
  %0 = load i32, ptr %rotation.addr, align 4, !dbg !600
  %and = and i32 %0, 48, !dbg !602
  %tobool = icmp ne i32 %and, 0, !dbg !602
  br i1 %tobool, label %if.then, label %if.end15, !dbg !603

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !604
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %1, i64 16, i1 false), !dbg !606
  %2 = load i32, ptr %rotation.addr, align 4, !dbg !607
  %and1 = and i32 %2, 16, !dbg !609
  %tobool2 = icmp ne i32 %and1, 0, !dbg !609
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !610

if.then3:                                         ; preds = %if.then
  %3 = load i32, ptr %width.addr, align 4, !dbg !611
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !613
  %4 = load i32, ptr %x2, align 4, !dbg !613
  %sub = sub i32 %3, %4, !dbg !614
  %5 = load ptr, ptr %r.addr, align 8, !dbg !615
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %5, i32 0, i32 0, !dbg !616
  store i32 %sub, ptr %x1, align 4, !dbg !617
  %6 = load i32, ptr %width.addr, align 4, !dbg !618
  %x14 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !619
  %7 = load i32, ptr %x14, align 4, !dbg !619
  %sub5 = sub i32 %6, %7, !dbg !620
  %8 = load ptr, ptr %r.addr, align 8, !dbg !621
  %x26 = getelementptr inbounds %struct.drm_rect, ptr %8, i32 0, i32 2, !dbg !622
  store i32 %sub5, ptr %x26, align 4, !dbg !623
  br label %if.end, !dbg !624

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load i32, ptr %rotation.addr, align 4, !dbg !625
  %and7 = and i32 %9, 32, !dbg !627
  %tobool8 = icmp ne i32 %and7, 0, !dbg !627
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !628

if.then9:                                         ; preds = %if.end
  %10 = load i32, ptr %height.addr, align 4, !dbg !629
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !631
  %11 = load i32, ptr %y2, align 4, !dbg !631
  %sub10 = sub i32 %10, %11, !dbg !632
  %12 = load ptr, ptr %r.addr, align 8, !dbg !633
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %12, i32 0, i32 1, !dbg !634
  store i32 %sub10, ptr %y1, align 4, !dbg !635
  %13 = load i32, ptr %height.addr, align 4, !dbg !636
  %y111 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !637
  %14 = load i32, ptr %y111, align 4, !dbg !637
  %sub12 = sub i32 %13, %14, !dbg !638
  %15 = load ptr, ptr %r.addr, align 8, !dbg !639
  %y213 = getelementptr inbounds %struct.drm_rect, ptr %15, i32 0, i32 3, !dbg !640
  store i32 %sub12, ptr %y213, align 4, !dbg !641
  br label %if.end14, !dbg !642

if.end14:                                         ; preds = %if.then9, %if.end
  br label %if.end15, !dbg !643

if.end15:                                         ; preds = %if.end14, %entry
  %16 = load i32, ptr %rotation.addr, align 4, !dbg !644
  %and16 = and i32 %16, 15, !dbg !645
  switch i32 %and16, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb
    i32 4, label %sw.bb27
    i32 8, label %sw.bb40
  ], !dbg !646

sw.bb:                                            ; preds = %if.end15
  %17 = load ptr, ptr %r.addr, align 8, !dbg !647
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %17, i64 16, i1 false), !dbg !649
  %y117 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !650
  %18 = load i32, ptr %y117, align 4, !dbg !650
  %19 = load ptr, ptr %r.addr, align 8, !dbg !651
  %x118 = getelementptr inbounds %struct.drm_rect, ptr %19, i32 0, i32 0, !dbg !652
  store i32 %18, ptr %x118, align 4, !dbg !653
  %y219 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !654
  %20 = load i32, ptr %y219, align 4, !dbg !654
  %21 = load ptr, ptr %r.addr, align 8, !dbg !655
  %x220 = getelementptr inbounds %struct.drm_rect, ptr %21, i32 0, i32 2, !dbg !656
  store i32 %20, ptr %x220, align 4, !dbg !657
  %22 = load i32, ptr %width.addr, align 4, !dbg !658
  %x221 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !659
  %23 = load i32, ptr %x221, align 4, !dbg !659
  %sub22 = sub i32 %22, %23, !dbg !660
  %24 = load ptr, ptr %r.addr, align 8, !dbg !661
  %y123 = getelementptr inbounds %struct.drm_rect, ptr %24, i32 0, i32 1, !dbg !662
  store i32 %sub22, ptr %y123, align 4, !dbg !663
  %25 = load i32, ptr %width.addr, align 4, !dbg !664
  %x124 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !665
  %26 = load i32, ptr %x124, align 4, !dbg !665
  %sub25 = sub i32 %25, %26, !dbg !666
  %27 = load ptr, ptr %r.addr, align 8, !dbg !667
  %y226 = getelementptr inbounds %struct.drm_rect, ptr %27, i32 0, i32 3, !dbg !668
  store i32 %sub25, ptr %y226, align 4, !dbg !669
  br label %sw.epilog, !dbg !670

sw.bb27:                                          ; preds = %if.end15
  %28 = load ptr, ptr %r.addr, align 8, !dbg !671
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %28, i64 16, i1 false), !dbg !672
  %29 = load i32, ptr %width.addr, align 4, !dbg !673
  %x228 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !674
  %30 = load i32, ptr %x228, align 4, !dbg !674
  %sub29 = sub i32 %29, %30, !dbg !675
  %31 = load ptr, ptr %r.addr, align 8, !dbg !676
  %x130 = getelementptr inbounds %struct.drm_rect, ptr %31, i32 0, i32 0, !dbg !677
  store i32 %sub29, ptr %x130, align 4, !dbg !678
  %32 = load i32, ptr %width.addr, align 4, !dbg !679
  %x131 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !680
  %33 = load i32, ptr %x131, align 4, !dbg !680
  %sub32 = sub i32 %32, %33, !dbg !681
  %34 = load ptr, ptr %r.addr, align 8, !dbg !682
  %x233 = getelementptr inbounds %struct.drm_rect, ptr %34, i32 0, i32 2, !dbg !683
  store i32 %sub32, ptr %x233, align 4, !dbg !684
  %35 = load i32, ptr %height.addr, align 4, !dbg !685
  %y234 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !686
  %36 = load i32, ptr %y234, align 4, !dbg !686
  %sub35 = sub i32 %35, %36, !dbg !687
  %37 = load ptr, ptr %r.addr, align 8, !dbg !688
  %y136 = getelementptr inbounds %struct.drm_rect, ptr %37, i32 0, i32 1, !dbg !689
  store i32 %sub35, ptr %y136, align 4, !dbg !690
  %38 = load i32, ptr %height.addr, align 4, !dbg !691
  %y137 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !692
  %39 = load i32, ptr %y137, align 4, !dbg !692
  %sub38 = sub i32 %38, %39, !dbg !693
  %40 = load ptr, ptr %r.addr, align 8, !dbg !694
  %y239 = getelementptr inbounds %struct.drm_rect, ptr %40, i32 0, i32 3, !dbg !695
  store i32 %sub38, ptr %y239, align 4, !dbg !696
  br label %sw.epilog, !dbg !697

sw.bb40:                                          ; preds = %if.end15
  %41 = load ptr, ptr %r.addr, align 8, !dbg !698
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %41, i64 16, i1 false), !dbg !699
  %42 = load i32, ptr %height.addr, align 4, !dbg !700
  %y241 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !701
  %43 = load i32, ptr %y241, align 4, !dbg !701
  %sub42 = sub i32 %42, %43, !dbg !702
  %44 = load ptr, ptr %r.addr, align 8, !dbg !703
  %x143 = getelementptr inbounds %struct.drm_rect, ptr %44, i32 0, i32 0, !dbg !704
  store i32 %sub42, ptr %x143, align 4, !dbg !705
  %45 = load i32, ptr %height.addr, align 4, !dbg !706
  %y144 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !707
  %46 = load i32, ptr %y144, align 4, !dbg !707
  %sub45 = sub i32 %45, %46, !dbg !708
  %47 = load ptr, ptr %r.addr, align 8, !dbg !709
  %x246 = getelementptr inbounds %struct.drm_rect, ptr %47, i32 0, i32 2, !dbg !710
  store i32 %sub45, ptr %x246, align 4, !dbg !711
  %x147 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !712
  %48 = load i32, ptr %x147, align 4, !dbg !712
  %49 = load ptr, ptr %r.addr, align 8, !dbg !713
  %y148 = getelementptr inbounds %struct.drm_rect, ptr %49, i32 0, i32 1, !dbg !714
  store i32 %48, ptr %y148, align 4, !dbg !715
  %x249 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !716
  %50 = load i32, ptr %x249, align 4, !dbg !716
  %51 = load ptr, ptr %r.addr, align 8, !dbg !717
  %y250 = getelementptr inbounds %struct.drm_rect, ptr %51, i32 0, i32 3, !dbg !718
  store i32 %50, ptr %y250, align 4, !dbg !719
  br label %sw.epilog, !dbg !720

sw.default:                                       ; preds = %if.end15
  br label %sw.epilog, !dbg !721

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb27, %sw.bb, %if.end15
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7, !dbg !722
  ret void, !dbg !722
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_rect_rotate_inv(ptr noundef %r, i32 noundef %width, i32 noundef %height, i32 noundef %rotation) #0 align 16 !dbg !723 {
entry:
  %r.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rotation.addr = alloca i32, align 4
  %tmp = alloca %struct.drm_rect, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !725, metadata !DIExpression()), !dbg !730
  store i32 %width, ptr %width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !726, metadata !DIExpression()), !dbg !731
  store i32 %height, ptr %height.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %height.addr, metadata !727, metadata !DIExpression()), !dbg !732
  store i32 %rotation, ptr %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rotation.addr, metadata !728, metadata !DIExpression()), !dbg !733
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7, !dbg !734
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !729, metadata !DIExpression()), !dbg !735
  %0 = load i32, ptr %rotation.addr, align 4, !dbg !736
  %and = and i32 %0, 15, !dbg !737
  switch i32 %and, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb
    i32 4, label %sw.bb6
    i32 8, label %sw.bb19
  ], !dbg !738

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !739
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %1, i64 16, i1 false), !dbg !741
  %2 = load i32, ptr %width.addr, align 4, !dbg !742
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !743
  %3 = load i32, ptr %y2, align 4, !dbg !743
  %sub = sub i32 %2, %3, !dbg !744
  %4 = load ptr, ptr %r.addr, align 8, !dbg !745
  %x1 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 0, !dbg !746
  store i32 %sub, ptr %x1, align 4, !dbg !747
  %5 = load i32, ptr %width.addr, align 4, !dbg !748
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !749
  %6 = load i32, ptr %y1, align 4, !dbg !749
  %sub1 = sub i32 %5, %6, !dbg !750
  %7 = load ptr, ptr %r.addr, align 8, !dbg !751
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %7, i32 0, i32 2, !dbg !752
  store i32 %sub1, ptr %x2, align 4, !dbg !753
  %x12 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !754
  %8 = load i32, ptr %x12, align 4, !dbg !754
  %9 = load ptr, ptr %r.addr, align 8, !dbg !755
  %y13 = getelementptr inbounds %struct.drm_rect, ptr %9, i32 0, i32 1, !dbg !756
  store i32 %8, ptr %y13, align 4, !dbg !757
  %x24 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !758
  %10 = load i32, ptr %x24, align 4, !dbg !758
  %11 = load ptr, ptr %r.addr, align 8, !dbg !759
  %y25 = getelementptr inbounds %struct.drm_rect, ptr %11, i32 0, i32 3, !dbg !760
  store i32 %10, ptr %y25, align 4, !dbg !761
  br label %sw.epilog, !dbg !762

sw.bb6:                                           ; preds = %entry
  %12 = load ptr, ptr %r.addr, align 8, !dbg !763
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %12, i64 16, i1 false), !dbg !764
  %13 = load i32, ptr %width.addr, align 4, !dbg !765
  %x27 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !766
  %14 = load i32, ptr %x27, align 4, !dbg !766
  %sub8 = sub i32 %13, %14, !dbg !767
  %15 = load ptr, ptr %r.addr, align 8, !dbg !768
  %x19 = getelementptr inbounds %struct.drm_rect, ptr %15, i32 0, i32 0, !dbg !769
  store i32 %sub8, ptr %x19, align 4, !dbg !770
  %16 = load i32, ptr %width.addr, align 4, !dbg !771
  %x110 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !772
  %17 = load i32, ptr %x110, align 4, !dbg !772
  %sub11 = sub i32 %16, %17, !dbg !773
  %18 = load ptr, ptr %r.addr, align 8, !dbg !774
  %x212 = getelementptr inbounds %struct.drm_rect, ptr %18, i32 0, i32 2, !dbg !775
  store i32 %sub11, ptr %x212, align 4, !dbg !776
  %19 = load i32, ptr %height.addr, align 4, !dbg !777
  %y213 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !778
  %20 = load i32, ptr %y213, align 4, !dbg !778
  %sub14 = sub i32 %19, %20, !dbg !779
  %21 = load ptr, ptr %r.addr, align 8, !dbg !780
  %y115 = getelementptr inbounds %struct.drm_rect, ptr %21, i32 0, i32 1, !dbg !781
  store i32 %sub14, ptr %y115, align 4, !dbg !782
  %22 = load i32, ptr %height.addr, align 4, !dbg !783
  %y116 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !784
  %23 = load i32, ptr %y116, align 4, !dbg !784
  %sub17 = sub i32 %22, %23, !dbg !785
  %24 = load ptr, ptr %r.addr, align 8, !dbg !786
  %y218 = getelementptr inbounds %struct.drm_rect, ptr %24, i32 0, i32 3, !dbg !787
  store i32 %sub17, ptr %y218, align 4, !dbg !788
  br label %sw.epilog, !dbg !789

sw.bb19:                                          ; preds = %entry
  %25 = load ptr, ptr %r.addr, align 8, !dbg !790
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %25, i64 16, i1 false), !dbg !791
  %y120 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !792
  %26 = load i32, ptr %y120, align 4, !dbg !792
  %27 = load ptr, ptr %r.addr, align 8, !dbg !793
  %x121 = getelementptr inbounds %struct.drm_rect, ptr %27, i32 0, i32 0, !dbg !794
  store i32 %26, ptr %x121, align 4, !dbg !795
  %y222 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !796
  %28 = load i32, ptr %y222, align 4, !dbg !796
  %29 = load ptr, ptr %r.addr, align 8, !dbg !797
  %x223 = getelementptr inbounds %struct.drm_rect, ptr %29, i32 0, i32 2, !dbg !798
  store i32 %28, ptr %x223, align 4, !dbg !799
  %30 = load i32, ptr %height.addr, align 4, !dbg !800
  %x224 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !801
  %31 = load i32, ptr %x224, align 4, !dbg !801
  %sub25 = sub i32 %30, %31, !dbg !802
  %32 = load ptr, ptr %r.addr, align 8, !dbg !803
  %y126 = getelementptr inbounds %struct.drm_rect, ptr %32, i32 0, i32 1, !dbg !804
  store i32 %sub25, ptr %y126, align 4, !dbg !805
  %33 = load i32, ptr %height.addr, align 4, !dbg !806
  %x127 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !807
  %34 = load i32, ptr %x127, align 4, !dbg !807
  %sub28 = sub i32 %33, %34, !dbg !808
  %35 = load ptr, ptr %r.addr, align 8, !dbg !809
  %y229 = getelementptr inbounds %struct.drm_rect, ptr %35, i32 0, i32 3, !dbg !810
  store i32 %sub28, ptr %y229, align 4, !dbg !811
  br label %sw.epilog, !dbg !812

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !813

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %sw.bb6, %sw.bb, %entry
  %36 = load i32, ptr %rotation.addr, align 4, !dbg !814
  %and30 = and i32 %36, 48, !dbg !816
  %tobool = icmp ne i32 %and30, 0, !dbg !816
  br i1 %tobool, label %if.then, label %if.end50, !dbg !817

if.then:                                          ; preds = %sw.epilog
  %37 = load ptr, ptr %r.addr, align 8, !dbg !818
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %37, i64 16, i1 false), !dbg !820
  %38 = load i32, ptr %rotation.addr, align 4, !dbg !821
  %and31 = and i32 %38, 16, !dbg !823
  %tobool32 = icmp ne i32 %and31, 0, !dbg !823
  br i1 %tobool32, label %if.then33, label %if.end, !dbg !824

if.then33:                                        ; preds = %if.then
  %39 = load i32, ptr %width.addr, align 4, !dbg !825
  %x234 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 2, !dbg !827
  %40 = load i32, ptr %x234, align 4, !dbg !827
  %sub35 = sub i32 %39, %40, !dbg !828
  %41 = load ptr, ptr %r.addr, align 8, !dbg !829
  %x136 = getelementptr inbounds %struct.drm_rect, ptr %41, i32 0, i32 0, !dbg !830
  store i32 %sub35, ptr %x136, align 4, !dbg !831
  %42 = load i32, ptr %width.addr, align 4, !dbg !832
  %x137 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 0, !dbg !833
  %43 = load i32, ptr %x137, align 4, !dbg !833
  %sub38 = sub i32 %42, %43, !dbg !834
  %44 = load ptr, ptr %r.addr, align 8, !dbg !835
  %x239 = getelementptr inbounds %struct.drm_rect, ptr %44, i32 0, i32 2, !dbg !836
  store i32 %sub38, ptr %x239, align 4, !dbg !837
  br label %if.end, !dbg !838

if.end:                                           ; preds = %if.then33, %if.then
  %45 = load i32, ptr %rotation.addr, align 4, !dbg !839
  %and40 = and i32 %45, 32, !dbg !841
  %tobool41 = icmp ne i32 %and40, 0, !dbg !841
  br i1 %tobool41, label %if.then42, label %if.end49, !dbg !842

if.then42:                                        ; preds = %if.end
  %46 = load i32, ptr %height.addr, align 4, !dbg !843
  %y243 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 3, !dbg !845
  %47 = load i32, ptr %y243, align 4, !dbg !845
  %sub44 = sub i32 %46, %47, !dbg !846
  %48 = load ptr, ptr %r.addr, align 8, !dbg !847
  %y145 = getelementptr inbounds %struct.drm_rect, ptr %48, i32 0, i32 1, !dbg !848
  store i32 %sub44, ptr %y145, align 4, !dbg !849
  %49 = load i32, ptr %height.addr, align 4, !dbg !850
  %y146 = getelementptr inbounds %struct.drm_rect, ptr %tmp, i32 0, i32 1, !dbg !851
  %50 = load i32, ptr %y146, align 4, !dbg !851
  %sub47 = sub i32 %49, %50, !dbg !852
  %51 = load ptr, ptr %r.addr, align 8, !dbg !853
  %y248 = getelementptr inbounds %struct.drm_rect, ptr %51, i32 0, i32 3, !dbg !854
  store i32 %sub47, ptr %y248, align 4, !dbg !855
  br label %if.end49, !dbg !856

if.end49:                                         ; preds = %if.then42, %if.end
  br label %if.end50, !dbg !857

if.end50:                                         ; preds = %if.end49, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7, !dbg !858
  ret void, !dbg !858
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mul_u32_u32(i32 noundef %a, i32 noundef %b) #3 align 16 !dbg !859 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !864, metadata !DIExpression()), !dbg !866
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !865, metadata !DIExpression()), !dbg !867
  %0 = load i32, ptr %a.addr, align 4, !dbg !868
  %conv = zext i32 %0 to i64, !dbg !869
  %1 = load i32, ptr %b.addr, align 4, !dbg !870
  %conv1 = zext i32 %1 to i64, !dbg !870
  %mul = mul i64 %conv, %conv1, !dbg !871
  ret i64 %mul, !dbg !872
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rect_intersect275", scope: !2, file: !3, line: 53, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_rect.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_rect\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_rect.ll drivers/gpu/drm/drm_rect.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_rect.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d91c24f1643fc9fd7e8ef20dd15f0608")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !6, line: 330, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!10 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!11 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!12 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!13 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!14 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!15 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!16 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!17 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!18 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!19 = !{!20, !21, !22, !24}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 113, baseType: !24)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !21)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !{!0, !29, !31, !33, !35, !41, !46, !48, !50, !52}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rect_clip_scaled278", scope: !2, file: !3, line: 132, type: !20, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rect_calc_hscale279", scope: !2, file: !3, line: 185, type: !20, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rect_calc_vscale280", scope: !2, file: !3, line: 220, type: !20, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 280, elements: !39)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40}
!40 = !DISubrange(count: 35)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 120, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 15)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rect_debug_print281", scope: !2, file: !3, line: 235, type: !20, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rect_rotate282", scope: !2, file: !3, line: 301, type: !20, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rect_rotate_inv283", scope: !2, file: !3, line: 375, type: !20, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 216, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 27)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 8, !"cf-protection-branch", i32 1}
!61 = !{i32 4, !"function_return_thunk_extern", i32 1}
!62 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!63 = !{i32 1, !"Code Model", i32 2}
!64 = !{i32 1, !"override-stack-alignment", i32 8}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = distinct !DISubprogram(name: "drm_rect_intersect", scope: !3, file: !3, line: 44, type: !67, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !71, !80}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !70)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !73, line: 46, size: 128, elements: !74)
!73 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!74 = !{!75, !77, !78, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !72, file: !73, line: 47, baseType: !76, size: 32)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !72, file: !73, line: 47, baseType: !76, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !72, file: !73, line: 47, baseType: !76, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !72, file: !73, line: 47, baseType: !76, size: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!82 = !{!83, !84, !85, !87, !89, !91, !92, !94, !95, !97}
!83 = !DILocalVariable(name: "r1", arg: 1, scope: !66, file: !3, line: 44, type: !71)
!84 = !DILocalVariable(name: "r2", arg: 2, scope: !66, file: !3, line: 44, type: !80)
!85 = !DILocalVariable(name: "__UNIQUE_ID___x267", scope: !86, file: !3, line: 46, type: !76)
!86 = distinct !DILexicalBlock(scope: !66, file: !3, line: 46, column: 11)
!87 = !DILocalVariable(name: "__UNIQUE_ID___y268", scope: !86, file: !3, line: 46, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!89 = !DILocalVariable(name: "__UNIQUE_ID___x269", scope: !90, file: !3, line: 47, type: !76)
!90 = distinct !DILexicalBlock(scope: !66, file: !3, line: 47, column: 11)
!91 = !DILocalVariable(name: "__UNIQUE_ID___y270", scope: !90, file: !3, line: 47, type: !88)
!92 = !DILocalVariable(name: "__UNIQUE_ID___x271", scope: !93, file: !3, line: 48, type: !76)
!93 = distinct !DILexicalBlock(scope: !66, file: !3, line: 48, column: 11)
!94 = !DILocalVariable(name: "__UNIQUE_ID___y272", scope: !93, file: !3, line: 48, type: !88)
!95 = !DILocalVariable(name: "__UNIQUE_ID___x273", scope: !96, file: !3, line: 49, type: !76)
!96 = distinct !DILexicalBlock(scope: !66, file: !3, line: 49, column: 11)
!97 = !DILocalVariable(name: "__UNIQUE_ID___y274", scope: !96, file: !3, line: 49, type: !88)
!98 = !DILocation(line: 44, column: 42, scope: !66)
!99 = !DILocation(line: 44, column: 69, scope: !66)
!100 = !DILocation(line: 46, column: 11, scope: !86)
!101 = !DILocation(line: 46, column: 11, scope: !66)
!102 = !DILocation(line: 46, column: 2, scope: !66)
!103 = !DILocation(line: 46, column: 6, scope: !66)
!104 = !DILocation(line: 46, column: 9, scope: !66)
!105 = !DILocation(line: 47, column: 11, scope: !90)
!106 = !DILocation(line: 47, column: 11, scope: !66)
!107 = !DILocation(line: 47, column: 2, scope: !66)
!108 = !DILocation(line: 47, column: 6, scope: !66)
!109 = !DILocation(line: 47, column: 9, scope: !66)
!110 = !DILocation(line: 48, column: 11, scope: !93)
!111 = !DILocation(line: 48, column: 11, scope: !66)
!112 = !DILocation(line: 48, column: 2, scope: !66)
!113 = !DILocation(line: 48, column: 6, scope: !66)
!114 = !DILocation(line: 48, column: 9, scope: !66)
!115 = !DILocation(line: 49, column: 11, scope: !96)
!116 = !DILocation(line: 49, column: 11, scope: !66)
!117 = !DILocation(line: 49, column: 2, scope: !66)
!118 = !DILocation(line: 49, column: 6, scope: !66)
!119 = !DILocation(line: 49, column: 9, scope: !66)
!120 = !DILocation(line: 51, column: 26, scope: !66)
!121 = !DILocation(line: 51, column: 9, scope: !66)
!122 = !DILocation(line: 51, column: 2, scope: !66)
!123 = distinct !DISubprogram(name: "drm_rect_visible", scope: !73, file: !73, line: 208, type: !124, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!69, !80}
!126 = !{!127}
!127 = !DILocalVariable(name: "r", arg: 1, scope: !123, file: !73, line: 208, type: !80)
!128 = !DILocation(line: 208, column: 60, scope: !123)
!129 = !DILocation(line: 210, column: 24, scope: !123)
!130 = !DILocation(line: 210, column: 9, scope: !123)
!131 = !DILocation(line: 210, column: 27, scope: !123)
!132 = !DILocation(line: 210, column: 31, scope: !123)
!133 = !DILocation(line: 210, column: 50, scope: !123)
!134 = !DILocation(line: 210, column: 34, scope: !123)
!135 = !DILocation(line: 210, column: 53, scope: !123)
!136 = !DILocation(line: 0, scope: !123)
!137 = !DILocation(line: 210, column: 2, scope: !123)
!138 = distinct !DISubprogram(name: "drm_rect_clip_scaled", scope: !3, file: !3, line: 92, type: !139, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!69, !71, !71, !80}
!141 = !{!142, !143, !144, !145, !146, !151, !154, !157}
!142 = !DILocalVariable(name: "src", arg: 1, scope: !138, file: !3, line: 92, type: !71)
!143 = !DILocalVariable(name: "dst", arg: 2, scope: !138, file: !3, line: 92, type: !71)
!144 = !DILocalVariable(name: "clip", arg: 3, scope: !138, file: !3, line: 93, type: !80)
!145 = !DILocalVariable(name: "diff", scope: !138, file: !3, line: 95, type: !76)
!146 = !DILocalVariable(name: "new_src_w", scope: !147, file: !3, line: 99, type: !149)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 98, column: 16)
!148 = distinct !DILexicalBlock(scope: !138, file: !3, line: 98, column: 6)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!151 = !DILocalVariable(name: "new_src_h", scope: !152, file: !3, line: 107, type: !149)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 106, column: 16)
!153 = distinct !DILexicalBlock(scope: !138, file: !3, line: 106, column: 6)
!154 = !DILocalVariable(name: "new_src_w", scope: !155, file: !3, line: 115, type: !149)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 114, column: 16)
!156 = distinct !DILexicalBlock(scope: !138, file: !3, line: 114, column: 6)
!157 = !DILocalVariable(name: "new_src_h", scope: !158, file: !3, line: 123, type: !149)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 122, column: 16)
!159 = distinct !DILexicalBlock(scope: !138, file: !3, line: 122, column: 6)
!160 = !DILocation(line: 92, column: 44, scope: !138)
!161 = !DILocation(line: 92, column: 66, scope: !138)
!162 = !DILocation(line: 93, column: 29, scope: !138)
!163 = !DILocation(line: 95, column: 2, scope: !138)
!164 = !DILocation(line: 95, column: 6, scope: !138)
!165 = !DILocation(line: 97, column: 9, scope: !138)
!166 = !DILocation(line: 97, column: 15, scope: !138)
!167 = !DILocation(line: 97, column: 20, scope: !138)
!168 = !DILocation(line: 97, column: 25, scope: !138)
!169 = !DILocation(line: 97, column: 18, scope: !138)
!170 = !DILocation(line: 97, column: 7, scope: !138)
!171 = !DILocation(line: 98, column: 6, scope: !148)
!172 = !DILocation(line: 98, column: 11, scope: !148)
!173 = !DILocation(line: 98, column: 6, scope: !138)
!174 = !DILocation(line: 99, column: 3, scope: !147)
!175 = !DILocation(line: 99, column: 7, scope: !147)
!176 = !DILocation(line: 99, column: 46, scope: !147)
!177 = !DILocation(line: 99, column: 31, scope: !147)
!178 = !DILocation(line: 100, column: 25, scope: !147)
!179 = !DILocation(line: 100, column: 10, scope: !147)
!180 = !DILocation(line: 99, column: 19, scope: !147)
!181 = !DILocation(line: 102, column: 13, scope: !147)
!182 = !DILocation(line: 102, column: 18, scope: !147)
!183 = !DILocation(line: 102, column: 23, scope: !147)
!184 = !DILocation(line: 102, column: 21, scope: !147)
!185 = !DILocation(line: 102, column: 3, scope: !147)
!186 = !DILocation(line: 102, column: 8, scope: !147)
!187 = !DILocation(line: 102, column: 11, scope: !147)
!188 = !DILocation(line: 103, column: 14, scope: !147)
!189 = !DILocation(line: 103, column: 3, scope: !147)
!190 = !DILocation(line: 103, column: 8, scope: !147)
!191 = !DILocation(line: 103, column: 11, scope: !147)
!192 = !DILocation(line: 104, column: 2, scope: !148)
!193 = !DILocation(line: 104, column: 2, scope: !147)
!194 = !DILocation(line: 105, column: 9, scope: !138)
!195 = !DILocation(line: 105, column: 15, scope: !138)
!196 = !DILocation(line: 105, column: 20, scope: !138)
!197 = !DILocation(line: 105, column: 25, scope: !138)
!198 = !DILocation(line: 105, column: 18, scope: !138)
!199 = !DILocation(line: 105, column: 7, scope: !138)
!200 = !DILocation(line: 106, column: 6, scope: !153)
!201 = !DILocation(line: 106, column: 11, scope: !153)
!202 = !DILocation(line: 106, column: 6, scope: !138)
!203 = !DILocation(line: 107, column: 3, scope: !152)
!204 = !DILocation(line: 107, column: 7, scope: !152)
!205 = !DILocation(line: 107, column: 47, scope: !152)
!206 = !DILocation(line: 107, column: 31, scope: !152)
!207 = !DILocation(line: 108, column: 26, scope: !152)
!208 = !DILocation(line: 108, column: 10, scope: !152)
!209 = !DILocation(line: 107, column: 19, scope: !152)
!210 = !DILocation(line: 110, column: 13, scope: !152)
!211 = !DILocation(line: 110, column: 18, scope: !152)
!212 = !DILocation(line: 110, column: 23, scope: !152)
!213 = !DILocation(line: 110, column: 21, scope: !152)
!214 = !DILocation(line: 110, column: 3, scope: !152)
!215 = !DILocation(line: 110, column: 8, scope: !152)
!216 = !DILocation(line: 110, column: 11, scope: !152)
!217 = !DILocation(line: 111, column: 14, scope: !152)
!218 = !DILocation(line: 111, column: 3, scope: !152)
!219 = !DILocation(line: 111, column: 8, scope: !152)
!220 = !DILocation(line: 111, column: 11, scope: !152)
!221 = !DILocation(line: 112, column: 2, scope: !153)
!222 = !DILocation(line: 112, column: 2, scope: !152)
!223 = !DILocation(line: 113, column: 9, scope: !138)
!224 = !DILocation(line: 113, column: 14, scope: !138)
!225 = !DILocation(line: 113, column: 19, scope: !138)
!226 = !DILocation(line: 113, column: 25, scope: !138)
!227 = !DILocation(line: 113, column: 17, scope: !138)
!228 = !DILocation(line: 113, column: 7, scope: !138)
!229 = !DILocation(line: 114, column: 6, scope: !156)
!230 = !DILocation(line: 114, column: 11, scope: !156)
!231 = !DILocation(line: 114, column: 6, scope: !138)
!232 = !DILocation(line: 115, column: 3, scope: !155)
!233 = !DILocation(line: 115, column: 7, scope: !155)
!234 = !DILocation(line: 115, column: 46, scope: !155)
!235 = !DILocation(line: 115, column: 31, scope: !155)
!236 = !DILocation(line: 116, column: 25, scope: !155)
!237 = !DILocation(line: 116, column: 10, scope: !155)
!238 = !DILocation(line: 115, column: 19, scope: !155)
!239 = !DILocation(line: 118, column: 13, scope: !155)
!240 = !DILocation(line: 118, column: 18, scope: !155)
!241 = !DILocation(line: 118, column: 23, scope: !155)
!242 = !DILocation(line: 118, column: 21, scope: !155)
!243 = !DILocation(line: 118, column: 3, scope: !155)
!244 = !DILocation(line: 118, column: 8, scope: !155)
!245 = !DILocation(line: 118, column: 11, scope: !155)
!246 = !DILocation(line: 119, column: 14, scope: !155)
!247 = !DILocation(line: 119, column: 3, scope: !155)
!248 = !DILocation(line: 119, column: 8, scope: !155)
!249 = !DILocation(line: 119, column: 11, scope: !155)
!250 = !DILocation(line: 120, column: 2, scope: !156)
!251 = !DILocation(line: 120, column: 2, scope: !155)
!252 = !DILocation(line: 121, column: 9, scope: !138)
!253 = !DILocation(line: 121, column: 14, scope: !138)
!254 = !DILocation(line: 121, column: 19, scope: !138)
!255 = !DILocation(line: 121, column: 25, scope: !138)
!256 = !DILocation(line: 121, column: 17, scope: !138)
!257 = !DILocation(line: 121, column: 7, scope: !138)
!258 = !DILocation(line: 122, column: 6, scope: !159)
!259 = !DILocation(line: 122, column: 11, scope: !159)
!260 = !DILocation(line: 122, column: 6, scope: !138)
!261 = !DILocation(line: 123, column: 3, scope: !158)
!262 = !DILocation(line: 123, column: 7, scope: !158)
!263 = !DILocation(line: 123, column: 47, scope: !158)
!264 = !DILocation(line: 123, column: 31, scope: !158)
!265 = !DILocation(line: 124, column: 26, scope: !158)
!266 = !DILocation(line: 124, column: 10, scope: !158)
!267 = !DILocation(line: 123, column: 19, scope: !158)
!268 = !DILocation(line: 126, column: 13, scope: !158)
!269 = !DILocation(line: 126, column: 18, scope: !158)
!270 = !DILocation(line: 126, column: 23, scope: !158)
!271 = !DILocation(line: 126, column: 21, scope: !158)
!272 = !DILocation(line: 126, column: 3, scope: !158)
!273 = !DILocation(line: 126, column: 8, scope: !158)
!274 = !DILocation(line: 126, column: 11, scope: !158)
!275 = !DILocation(line: 127, column: 14, scope: !158)
!276 = !DILocation(line: 127, column: 3, scope: !158)
!277 = !DILocation(line: 127, column: 8, scope: !158)
!278 = !DILocation(line: 127, column: 11, scope: !158)
!279 = !DILocation(line: 128, column: 2, scope: !159)
!280 = !DILocation(line: 128, column: 2, scope: !158)
!281 = !DILocation(line: 130, column: 26, scope: !138)
!282 = !DILocation(line: 130, column: 9, scope: !138)
!283 = !DILocation(line: 131, column: 1, scope: !138)
!284 = !DILocation(line: 130, column: 2, scope: !138)
!285 = distinct !DISubprogram(name: "clip_scaled", scope: !3, file: !3, line: 55, type: !286, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!286 = !DISubroutineType(types: !287)
!287 = !{!149, !76, !76, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!289 = !{!290, !291, !292, !293, !294, !296, !297, !300, !303, !304, !306, !308}
!290 = !DILocalVariable(name: "src", arg: 1, scope: !285, file: !3, line: 55, type: !76)
!291 = !DILocalVariable(name: "dst", arg: 2, scope: !285, file: !3, line: 55, type: !76)
!292 = !DILocalVariable(name: "clip", arg: 3, scope: !285, file: !3, line: 55, type: !288)
!293 = !DILocalVariable(name: "tmp", scope: !285, file: !3, line: 57, type: !24)
!294 = !DILocalVariable(name: "__UNIQUE_ID___x276", scope: !295, file: !3, line: 63, type: !76)
!295 = distinct !DILexicalBlock(scope: !285, file: !3, line: 63, column: 10)
!296 = !DILocalVariable(name: "__UNIQUE_ID___y277", scope: !295, file: !3, line: 63, type: !76)
!297 = !DILocalVariable(name: "_tmp", scope: !298, file: !3, line: 72, type: !21)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 72, column: 10)
!299 = distinct !DILexicalBlock(scope: !285, file: !3, line: 71, column: 6)
!300 = !DILocalVariable(name: "__base", scope: !301, file: !3, line: 72, type: !302)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 72, column: 10)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 110, baseType: !149)
!303 = !DILocalVariable(name: "__rem", scope: !301, file: !3, line: 72, type: !302)
!304 = !DILocalVariable(name: "_tmp", scope: !305, file: !3, line: 74, type: !21)
!305 = distinct !DILexicalBlock(scope: !299, file: !3, line: 74, column: 10)
!306 = !DILocalVariable(name: "__base", scope: !307, file: !3, line: 74, type: !302)
!307 = distinct !DILexicalBlock(scope: !305, file: !3, line: 74, column: 10)
!308 = !DILocalVariable(name: "__rem", scope: !307, file: !3, line: 74, type: !302)
!309 = !DILocation(line: 55, column: 28, scope: !285)
!310 = !DILocation(line: 55, column: 37, scope: !285)
!311 = !DILocation(line: 55, column: 47, scope: !285)
!312 = !DILocation(line: 57, column: 2, scope: !285)
!313 = !DILocation(line: 57, column: 6, scope: !285)
!314 = !DILocation(line: 59, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !285, file: !3, line: 59, column: 6)
!316 = !DILocation(line: 59, column: 10, scope: !315)
!317 = !DILocation(line: 59, column: 6, scope: !285)
!318 = !DILocation(line: 60, column: 3, scope: !315)
!319 = !DILocation(line: 63, column: 10, scope: !295)
!320 = !DILocation(line: 63, column: 10, scope: !285)
!321 = !DILocation(line: 63, column: 3, scope: !285)
!322 = !DILocation(line: 63, column: 8, scope: !285)
!323 = !DILocation(line: 65, column: 20, scope: !285)
!324 = !DILocation(line: 65, column: 25, scope: !285)
!325 = !DILocation(line: 65, column: 32, scope: !285)
!326 = !DILocation(line: 65, column: 31, scope: !285)
!327 = !DILocation(line: 65, column: 29, scope: !285)
!328 = !DILocation(line: 65, column: 8, scope: !285)
!329 = !DILocation(line: 65, column: 6, scope: !285)
!330 = !DILocation(line: 71, column: 6, scope: !299)
!331 = !DILocation(line: 71, column: 13, scope: !299)
!332 = !DILocation(line: 71, column: 17, scope: !299)
!333 = !DILocation(line: 71, column: 10, scope: !299)
!334 = !DILocation(line: 71, column: 6, scope: !285)
!335 = !DILocation(line: 72, column: 10, scope: !298)
!336 = !DILocation(line: 72, column: 10, scope: !301)
!337 = !DILocation(line: 72, column: 10, scope: !299)
!338 = !DILocation(line: 72, column: 3, scope: !299)
!339 = !DILocation(line: 74, column: 10, scope: !305)
!340 = !DILocation(line: 74, column: 10, scope: !307)
!341 = !DILocation(line: 74, column: 10, scope: !299)
!342 = !DILocation(line: 74, column: 3, scope: !299)
!343 = !DILocation(line: 75, column: 1, scope: !285)
!344 = distinct !DISubprogram(name: "drm_rect_width", scope: !73, file: !73, line: 184, type: !345, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!76, !80}
!347 = !{!348}
!348 = !DILocalVariable(name: "r", arg: 1, scope: !344, file: !73, line: 184, type: !80)
!349 = !DILocation(line: 184, column: 57, scope: !344)
!350 = !DILocation(line: 186, column: 9, scope: !344)
!351 = !DILocation(line: 186, column: 12, scope: !344)
!352 = !DILocation(line: 186, column: 17, scope: !344)
!353 = !DILocation(line: 186, column: 20, scope: !344)
!354 = !DILocation(line: 186, column: 15, scope: !344)
!355 = !DILocation(line: 186, column: 2, scope: !344)
!356 = distinct !DISubprogram(name: "drm_rect_height", scope: !73, file: !73, line: 196, type: !345, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!357 = !{!358}
!358 = !DILocalVariable(name: "r", arg: 1, scope: !356, file: !73, line: 196, type: !80)
!359 = !DILocation(line: 196, column: 58, scope: !356)
!360 = !DILocation(line: 198, column: 9, scope: !356)
!361 = !DILocation(line: 198, column: 12, scope: !356)
!362 = !DILocation(line: 198, column: 17, scope: !356)
!363 = !DILocation(line: 198, column: 20, scope: !356)
!364 = !DILocation(line: 198, column: 15, scope: !356)
!365 = !DILocation(line: 198, column: 2, scope: !356)
!366 = distinct !DISubprogram(name: "drm_rect_calc_hscale", scope: !3, file: !3, line: 169, type: !367, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{!76, !80, !80, !76, !76}
!369 = !{!370, !371, !372, !373, !374, !375, !376}
!370 = !DILocalVariable(name: "src", arg: 1, scope: !366, file: !3, line: 169, type: !80)
!371 = !DILocalVariable(name: "dst", arg: 2, scope: !366, file: !3, line: 170, type: !80)
!372 = !DILocalVariable(name: "min_hscale", arg: 3, scope: !366, file: !3, line: 171, type: !76)
!373 = !DILocalVariable(name: "max_hscale", arg: 4, scope: !366, file: !3, line: 171, type: !76)
!374 = !DILocalVariable(name: "src_w", scope: !366, file: !3, line: 173, type: !76)
!375 = !DILocalVariable(name: "dst_w", scope: !366, file: !3, line: 174, type: !76)
!376 = !DILocalVariable(name: "hscale", scope: !366, file: !3, line: 175, type: !76)
!377 = !DILocation(line: 169, column: 49, scope: !366)
!378 = !DILocation(line: 170, column: 28, scope: !366)
!379 = !DILocation(line: 171, column: 9, scope: !366)
!380 = !DILocation(line: 171, column: 25, scope: !366)
!381 = !DILocation(line: 173, column: 2, scope: !366)
!382 = !DILocation(line: 173, column: 6, scope: !366)
!383 = !DILocation(line: 173, column: 29, scope: !366)
!384 = !DILocation(line: 173, column: 14, scope: !366)
!385 = !DILocation(line: 174, column: 2, scope: !366)
!386 = !DILocation(line: 174, column: 6, scope: !366)
!387 = !DILocation(line: 174, column: 29, scope: !366)
!388 = !DILocation(line: 174, column: 14, scope: !366)
!389 = !DILocation(line: 175, column: 2, scope: !366)
!390 = !DILocation(line: 175, column: 6, scope: !366)
!391 = !DILocation(line: 175, column: 30, scope: !366)
!392 = !DILocation(line: 175, column: 37, scope: !366)
!393 = !DILocation(line: 175, column: 15, scope: !366)
!394 = !DILocation(line: 177, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !366, file: !3, line: 177, column: 6)
!396 = !DILocation(line: 177, column: 13, scope: !395)
!397 = !DILocation(line: 177, column: 17, scope: !395)
!398 = !DILocation(line: 177, column: 20, scope: !395)
!399 = !DILocation(line: 177, column: 26, scope: !395)
!400 = !DILocation(line: 177, column: 6, scope: !366)
!401 = !DILocation(line: 178, column: 10, scope: !395)
!402 = !DILocation(line: 178, column: 3, scope: !395)
!403 = !DILocation(line: 180, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !366, file: !3, line: 180, column: 6)
!405 = !DILocation(line: 180, column: 15, scope: !404)
!406 = !DILocation(line: 180, column: 13, scope: !404)
!407 = !DILocation(line: 180, column: 26, scope: !404)
!408 = !DILocation(line: 180, column: 29, scope: !404)
!409 = !DILocation(line: 180, column: 38, scope: !404)
!410 = !DILocation(line: 180, column: 36, scope: !404)
!411 = !DILocation(line: 180, column: 6, scope: !366)
!412 = !DILocation(line: 181, column: 3, scope: !404)
!413 = !DILocation(line: 183, column: 9, scope: !366)
!414 = !DILocation(line: 183, column: 2, scope: !366)
!415 = !DILocation(line: 184, column: 1, scope: !366)
!416 = distinct !DISubprogram(name: "drm_calc_scale", scope: !3, file: !3, line: 134, type: !417, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!76, !76, !76}
!419 = !{!420, !421, !422, !423, !426}
!420 = !DILocalVariable(name: "src", arg: 1, scope: !416, file: !3, line: 134, type: !76)
!421 = !DILocalVariable(name: "dst", arg: 2, scope: !416, file: !3, line: 134, type: !76)
!422 = !DILocalVariable(name: "scale", scope: !416, file: !3, line: 136, type: !76)
!423 = !DILocalVariable(name: "__ret_warn_on", scope: !424, file: !3, line: 138, type: !76)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 138, column: 6)
!425 = distinct !DILexicalBlock(scope: !416, file: !3, line: 138, column: 6)
!426 = !DILocalVariable(name: "__flags", scope: !427, file: !3, line: 138, type: !76)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 138, column: 6)
!428 = distinct !DILexicalBlock(scope: !424, file: !3, line: 138, column: 6)
!429 = !DILocation(line: 134, column: 31, scope: !416)
!430 = !DILocation(line: 134, column: 40, scope: !416)
!431 = !DILocation(line: 136, column: 2, scope: !416)
!432 = !DILocation(line: 136, column: 6, scope: !416)
!433 = !DILocation(line: 138, column: 6, scope: !424)
!434 = !DILocation(line: 138, column: 6, scope: !428)
!435 = !DILocation(line: 138, column: 6, scope: !427)
!436 = !DILocation(line: 138, column: 6, scope: !437)
!437 = distinct !DILexicalBlock(scope: !427, file: !3, line: 138, column: 6)
!438 = !DILocation(line: 138, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !427, file: !3, line: 138, column: 6)
!440 = !{i64 2154110826, i64 2154110855, i64 2154110901, i64 2154110959, i64 2154111013, i64 2154111067, i64 2154111122, i64 2154111153, i64 2154111461, i64 2154111467, i64 2154111514, i64 2154111537, i64 2154111563}
!441 = !DILocation(line: 138, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !427, file: !3, line: 138, column: 6)
!443 = !DILocation(line: 138, column: 6, scope: !425)
!444 = !DILocation(line: 138, column: 6, scope: !416)
!445 = !DILocation(line: 139, column: 3, scope: !425)
!446 = !DILocation(line: 141, column: 6, scope: !447)
!447 = distinct !DILexicalBlock(scope: !416, file: !3, line: 141, column: 6)
!448 = !DILocation(line: 141, column: 10, scope: !447)
!449 = !DILocation(line: 141, column: 6, scope: !416)
!450 = !DILocation(line: 142, column: 3, scope: !447)
!451 = !DILocation(line: 144, column: 6, scope: !452)
!452 = distinct !DILexicalBlock(scope: !416, file: !3, line: 144, column: 6)
!453 = !DILocation(line: 144, column: 13, scope: !452)
!454 = !DILocation(line: 144, column: 17, scope: !452)
!455 = !DILocation(line: 144, column: 10, scope: !452)
!456 = !DILocation(line: 144, column: 6, scope: !416)
!457 = !DILocation(line: 145, column: 10, scope: !452)
!458 = !DILocation(line: 145, column: 3, scope: !452)
!459 = !DILocation(line: 147, column: 11, scope: !452)
!460 = !DILocation(line: 147, column: 17, scope: !452)
!461 = !DILocation(line: 147, column: 15, scope: !452)
!462 = !DILocation(line: 147, column: 9, scope: !452)
!463 = !DILocation(line: 149, column: 9, scope: !416)
!464 = !DILocation(line: 149, column: 2, scope: !416)
!465 = !DILocation(line: 150, column: 1, scope: !416)
!466 = distinct !DISubprogram(name: "drm_rect_calc_vscale", scope: !3, file: !3, line: 204, type: !367, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474}
!468 = !DILocalVariable(name: "src", arg: 1, scope: !466, file: !3, line: 204, type: !80)
!469 = !DILocalVariable(name: "dst", arg: 2, scope: !466, file: !3, line: 205, type: !80)
!470 = !DILocalVariable(name: "min_vscale", arg: 3, scope: !466, file: !3, line: 206, type: !76)
!471 = !DILocalVariable(name: "max_vscale", arg: 4, scope: !466, file: !3, line: 206, type: !76)
!472 = !DILocalVariable(name: "src_h", scope: !466, file: !3, line: 208, type: !76)
!473 = !DILocalVariable(name: "dst_h", scope: !466, file: !3, line: 209, type: !76)
!474 = !DILocalVariable(name: "vscale", scope: !466, file: !3, line: 210, type: !76)
!475 = !DILocation(line: 204, column: 49, scope: !466)
!476 = !DILocation(line: 205, column: 28, scope: !466)
!477 = !DILocation(line: 206, column: 9, scope: !466)
!478 = !DILocation(line: 206, column: 25, scope: !466)
!479 = !DILocation(line: 208, column: 2, scope: !466)
!480 = !DILocation(line: 208, column: 6, scope: !466)
!481 = !DILocation(line: 208, column: 30, scope: !466)
!482 = !DILocation(line: 208, column: 14, scope: !466)
!483 = !DILocation(line: 209, column: 2, scope: !466)
!484 = !DILocation(line: 209, column: 6, scope: !466)
!485 = !DILocation(line: 209, column: 30, scope: !466)
!486 = !DILocation(line: 209, column: 14, scope: !466)
!487 = !DILocation(line: 210, column: 2, scope: !466)
!488 = !DILocation(line: 210, column: 6, scope: !466)
!489 = !DILocation(line: 210, column: 30, scope: !466)
!490 = !DILocation(line: 210, column: 37, scope: !466)
!491 = !DILocation(line: 210, column: 15, scope: !466)
!492 = !DILocation(line: 212, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !466, file: !3, line: 212, column: 6)
!494 = !DILocation(line: 212, column: 13, scope: !493)
!495 = !DILocation(line: 212, column: 17, scope: !493)
!496 = !DILocation(line: 212, column: 20, scope: !493)
!497 = !DILocation(line: 212, column: 26, scope: !493)
!498 = !DILocation(line: 212, column: 6, scope: !466)
!499 = !DILocation(line: 213, column: 10, scope: !493)
!500 = !DILocation(line: 213, column: 3, scope: !493)
!501 = !DILocation(line: 215, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !466, file: !3, line: 215, column: 6)
!503 = !DILocation(line: 215, column: 15, scope: !502)
!504 = !DILocation(line: 215, column: 13, scope: !502)
!505 = !DILocation(line: 215, column: 26, scope: !502)
!506 = !DILocation(line: 215, column: 29, scope: !502)
!507 = !DILocation(line: 215, column: 38, scope: !502)
!508 = !DILocation(line: 215, column: 36, scope: !502)
!509 = !DILocation(line: 215, column: 6, scope: !466)
!510 = !DILocation(line: 216, column: 3, scope: !502)
!511 = !DILocation(line: 218, column: 9, scope: !466)
!512 = !DILocation(line: 218, column: 2, scope: !466)
!513 = !DILocation(line: 219, column: 1, scope: !466)
!514 = distinct !DISubprogram(name: "drm_rect_debug_print", scope: !3, file: !3, line: 228, type: !515, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !517, !80, !69}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!519 = !{!520, !521, !522}
!520 = !DILocalVariable(name: "prefix", arg: 1, scope: !514, file: !3, line: 228, type: !517)
!521 = !DILocalVariable(name: "r", arg: 2, scope: !514, file: !3, line: 228, type: !80)
!522 = !DILocalVariable(name: "fixed_point", arg: 3, scope: !514, file: !3, line: 228, type: !69)
!523 = !DILocation(line: 228, column: 39, scope: !514)
!524 = !DILocation(line: 228, column: 70, scope: !514)
!525 = !DILocation(line: 228, column: 78, scope: !514)
!526 = !DILocation(line: 230, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !514, file: !3, line: 230, column: 6)
!528 = !{i8 0, i8 2}
!529 = !{}
!530 = !DILocation(line: 230, column: 6, scope: !514)
!531 = !DILocation(line: 231, column: 3, scope: !527)
!532 = !DILocation(line: 233, column: 3, scope: !527)
!533 = !DILocation(line: 234, column: 1, scope: !514)
!534 = !DISubprogram(name: "___drm_dbg", scope: !6, file: !6, line: 571, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !537, !5, !517, null}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !539, line: 16, size: 448, align: 64, elements: !540)
!539 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !538, file: !539, line: 21, baseType: !517, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !538, file: !539, line: 22, baseType: !517, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !538, file: !539, line: 23, baseType: !517, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !538, file: !539, line: 24, baseType: !517, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !538, file: !539, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !538, file: !539, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !539, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !538, file: !539, line: 57, baseType: !549, size: 128, offset: 320)
!549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !539, line: 54, size: 128, elements: !550)
!550 = !{!551, !581}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !549, file: !539, line: 55, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !553, line: 359, size: 128, elements: !554)
!553 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !552, file: !553, line: 360, baseType: !556, size: 128)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !553, line: 85, size: 128, elements: !557)
!557 = !{!558, !563}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !556, file: !553, line: 86, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !23, line: 174, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 172, size: 32, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !560, file: !23, line: 173, baseType: !76, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !553, line: 101, baseType: !564, size: 64, offset: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !556, file: !553, line: 101, size: 64, elements: !565)
!565 = !{!566, !568, !578}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !564, file: !553, line: 102, baseType: !567, size: 64)
!567 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !564, file: !553, line: 103, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !553, line: 117, size: 128, elements: !571)
!571 = !{!572, !575, !576}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !570, file: !553, line: 118, baseType: !573, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !25, line: 20, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !27, line: 26, baseType: !76)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !570, file: !553, line: 119, baseType: !573, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !570, file: !553, line: 120, baseType: !577, size: 64, offset: 64)
!577 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !553, line: 104, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !553, line: 104, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !549, file: !539, line: 56, baseType: !582, size: 128)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !553, line: 363, size: 128, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !582, file: !553, line: 364, baseType: !556, size: 128)
!585 = distinct !DISubprogram(name: "drm_rect_rotate", scope: !3, file: !3, line: 253, type: !586, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !71, !76, !76, !7}
!588 = !{!589, !590, !591, !592, !593}
!589 = !DILocalVariable(name: "r", arg: 1, scope: !585, file: !3, line: 253, type: !71)
!590 = !DILocalVariable(name: "width", arg: 2, scope: !585, file: !3, line: 254, type: !76)
!591 = !DILocalVariable(name: "height", arg: 3, scope: !585, file: !3, line: 254, type: !76)
!592 = !DILocalVariable(name: "rotation", arg: 4, scope: !585, file: !3, line: 255, type: !7)
!593 = !DILocalVariable(name: "tmp", scope: !585, file: !3, line: 257, type: !72)
!594 = !DILocation(line: 253, column: 39, scope: !585)
!595 = !DILocation(line: 254, column: 12, scope: !585)
!596 = !DILocation(line: 254, column: 23, scope: !585)
!597 = !DILocation(line: 255, column: 21, scope: !585)
!598 = !DILocation(line: 257, column: 2, scope: !585)
!599 = !DILocation(line: 257, column: 18, scope: !585)
!600 = !DILocation(line: 259, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !585, file: !3, line: 259, column: 6)
!602 = !DILocation(line: 259, column: 15, scope: !601)
!603 = !DILocation(line: 259, column: 6, scope: !585)
!604 = !DILocation(line: 260, column: 10, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 259, column: 60)
!606 = !DILocation(line: 260, column: 9, scope: !605)
!607 = !DILocation(line: 262, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 262, column: 7)
!609 = !DILocation(line: 262, column: 16, scope: !608)
!610 = !DILocation(line: 262, column: 7, scope: !605)
!611 = !DILocation(line: 263, column: 12, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !3, line: 262, column: 38)
!613 = !DILocation(line: 263, column: 24, scope: !612)
!614 = !DILocation(line: 263, column: 18, scope: !612)
!615 = !DILocation(line: 263, column: 4, scope: !612)
!616 = !DILocation(line: 263, column: 7, scope: !612)
!617 = !DILocation(line: 263, column: 10, scope: !612)
!618 = !DILocation(line: 264, column: 12, scope: !612)
!619 = !DILocation(line: 264, column: 24, scope: !612)
!620 = !DILocation(line: 264, column: 18, scope: !612)
!621 = !DILocation(line: 264, column: 4, scope: !612)
!622 = !DILocation(line: 264, column: 7, scope: !612)
!623 = !DILocation(line: 264, column: 10, scope: !612)
!624 = !DILocation(line: 265, column: 3, scope: !612)
!625 = !DILocation(line: 267, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !605, file: !3, line: 267, column: 7)
!627 = !DILocation(line: 267, column: 16, scope: !626)
!628 = !DILocation(line: 267, column: 7, scope: !605)
!629 = !DILocation(line: 268, column: 12, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 267, column: 38)
!631 = !DILocation(line: 268, column: 25, scope: !630)
!632 = !DILocation(line: 268, column: 19, scope: !630)
!633 = !DILocation(line: 268, column: 4, scope: !630)
!634 = !DILocation(line: 268, column: 7, scope: !630)
!635 = !DILocation(line: 268, column: 10, scope: !630)
!636 = !DILocation(line: 269, column: 12, scope: !630)
!637 = !DILocation(line: 269, column: 25, scope: !630)
!638 = !DILocation(line: 269, column: 19, scope: !630)
!639 = !DILocation(line: 269, column: 4, scope: !630)
!640 = !DILocation(line: 269, column: 7, scope: !630)
!641 = !DILocation(line: 269, column: 10, scope: !630)
!642 = !DILocation(line: 270, column: 3, scope: !630)
!643 = !DILocation(line: 271, column: 2, scope: !605)
!644 = !DILocation(line: 273, column: 10, scope: !585)
!645 = !DILocation(line: 273, column: 19, scope: !585)
!646 = !DILocation(line: 273, column: 2, scope: !585)
!647 = !DILocation(line: 277, column: 10, scope: !648)
!648 = distinct !DILexicalBlock(scope: !585, file: !3, line: 273, column: 43)
!649 = !DILocation(line: 277, column: 9, scope: !648)
!650 = !DILocation(line: 278, column: 15, scope: !648)
!651 = !DILocation(line: 278, column: 3, scope: !648)
!652 = !DILocation(line: 278, column: 6, scope: !648)
!653 = !DILocation(line: 278, column: 9, scope: !648)
!654 = !DILocation(line: 279, column: 15, scope: !648)
!655 = !DILocation(line: 279, column: 3, scope: !648)
!656 = !DILocation(line: 279, column: 6, scope: !648)
!657 = !DILocation(line: 279, column: 9, scope: !648)
!658 = !DILocation(line: 280, column: 11, scope: !648)
!659 = !DILocation(line: 280, column: 23, scope: !648)
!660 = !DILocation(line: 280, column: 17, scope: !648)
!661 = !DILocation(line: 280, column: 3, scope: !648)
!662 = !DILocation(line: 280, column: 6, scope: !648)
!663 = !DILocation(line: 280, column: 9, scope: !648)
!664 = !DILocation(line: 281, column: 11, scope: !648)
!665 = !DILocation(line: 281, column: 23, scope: !648)
!666 = !DILocation(line: 281, column: 17, scope: !648)
!667 = !DILocation(line: 281, column: 3, scope: !648)
!668 = !DILocation(line: 281, column: 6, scope: !648)
!669 = !DILocation(line: 281, column: 9, scope: !648)
!670 = !DILocation(line: 282, column: 3, scope: !648)
!671 = !DILocation(line: 284, column: 10, scope: !648)
!672 = !DILocation(line: 284, column: 9, scope: !648)
!673 = !DILocation(line: 285, column: 11, scope: !648)
!674 = !DILocation(line: 285, column: 23, scope: !648)
!675 = !DILocation(line: 285, column: 17, scope: !648)
!676 = !DILocation(line: 285, column: 3, scope: !648)
!677 = !DILocation(line: 285, column: 6, scope: !648)
!678 = !DILocation(line: 285, column: 9, scope: !648)
!679 = !DILocation(line: 286, column: 11, scope: !648)
!680 = !DILocation(line: 286, column: 23, scope: !648)
!681 = !DILocation(line: 286, column: 17, scope: !648)
!682 = !DILocation(line: 286, column: 3, scope: !648)
!683 = !DILocation(line: 286, column: 6, scope: !648)
!684 = !DILocation(line: 286, column: 9, scope: !648)
!685 = !DILocation(line: 287, column: 11, scope: !648)
!686 = !DILocation(line: 287, column: 24, scope: !648)
!687 = !DILocation(line: 287, column: 18, scope: !648)
!688 = !DILocation(line: 287, column: 3, scope: !648)
!689 = !DILocation(line: 287, column: 6, scope: !648)
!690 = !DILocation(line: 287, column: 9, scope: !648)
!691 = !DILocation(line: 288, column: 11, scope: !648)
!692 = !DILocation(line: 288, column: 24, scope: !648)
!693 = !DILocation(line: 288, column: 18, scope: !648)
!694 = !DILocation(line: 288, column: 3, scope: !648)
!695 = !DILocation(line: 288, column: 6, scope: !648)
!696 = !DILocation(line: 288, column: 9, scope: !648)
!697 = !DILocation(line: 289, column: 3, scope: !648)
!698 = !DILocation(line: 291, column: 10, scope: !648)
!699 = !DILocation(line: 291, column: 9, scope: !648)
!700 = !DILocation(line: 292, column: 11, scope: !648)
!701 = !DILocation(line: 292, column: 24, scope: !648)
!702 = !DILocation(line: 292, column: 18, scope: !648)
!703 = !DILocation(line: 292, column: 3, scope: !648)
!704 = !DILocation(line: 292, column: 6, scope: !648)
!705 = !DILocation(line: 292, column: 9, scope: !648)
!706 = !DILocation(line: 293, column: 11, scope: !648)
!707 = !DILocation(line: 293, column: 24, scope: !648)
!708 = !DILocation(line: 293, column: 18, scope: !648)
!709 = !DILocation(line: 293, column: 3, scope: !648)
!710 = !DILocation(line: 293, column: 6, scope: !648)
!711 = !DILocation(line: 293, column: 9, scope: !648)
!712 = !DILocation(line: 294, column: 15, scope: !648)
!713 = !DILocation(line: 294, column: 3, scope: !648)
!714 = !DILocation(line: 294, column: 6, scope: !648)
!715 = !DILocation(line: 294, column: 9, scope: !648)
!716 = !DILocation(line: 295, column: 15, scope: !648)
!717 = !DILocation(line: 295, column: 3, scope: !648)
!718 = !DILocation(line: 295, column: 6, scope: !648)
!719 = !DILocation(line: 295, column: 9, scope: !648)
!720 = !DILocation(line: 296, column: 3, scope: !648)
!721 = !DILocation(line: 298, column: 3, scope: !648)
!722 = !DILocation(line: 300, column: 1, scope: !585)
!723 = distinct !DISubprogram(name: "drm_rect_rotate_inv", scope: !3, file: !3, line: 327, type: !586, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !724)
!724 = !{!725, !726, !727, !728, !729}
!725 = !DILocalVariable(name: "r", arg: 1, scope: !723, file: !3, line: 327, type: !71)
!726 = !DILocalVariable(name: "width", arg: 2, scope: !723, file: !3, line: 328, type: !76)
!727 = !DILocalVariable(name: "height", arg: 3, scope: !723, file: !3, line: 328, type: !76)
!728 = !DILocalVariable(name: "rotation", arg: 4, scope: !723, file: !3, line: 329, type: !7)
!729 = !DILocalVariable(name: "tmp", scope: !723, file: !3, line: 331, type: !72)
!730 = !DILocation(line: 327, column: 43, scope: !723)
!731 = !DILocation(line: 328, column: 9, scope: !723)
!732 = !DILocation(line: 328, column: 20, scope: !723)
!733 = !DILocation(line: 329, column: 18, scope: !723)
!734 = !DILocation(line: 331, column: 2, scope: !723)
!735 = !DILocation(line: 331, column: 18, scope: !723)
!736 = !DILocation(line: 333, column: 10, scope: !723)
!737 = !DILocation(line: 333, column: 19, scope: !723)
!738 = !DILocation(line: 333, column: 2, scope: !723)
!739 = !DILocation(line: 337, column: 10, scope: !740)
!740 = distinct !DILexicalBlock(scope: !723, file: !3, line: 333, column: 43)
!741 = !DILocation(line: 337, column: 9, scope: !740)
!742 = !DILocation(line: 338, column: 11, scope: !740)
!743 = !DILocation(line: 338, column: 23, scope: !740)
!744 = !DILocation(line: 338, column: 17, scope: !740)
!745 = !DILocation(line: 338, column: 3, scope: !740)
!746 = !DILocation(line: 338, column: 6, scope: !740)
!747 = !DILocation(line: 338, column: 9, scope: !740)
!748 = !DILocation(line: 339, column: 11, scope: !740)
!749 = !DILocation(line: 339, column: 23, scope: !740)
!750 = !DILocation(line: 339, column: 17, scope: !740)
!751 = !DILocation(line: 339, column: 3, scope: !740)
!752 = !DILocation(line: 339, column: 6, scope: !740)
!753 = !DILocation(line: 339, column: 9, scope: !740)
!754 = !DILocation(line: 340, column: 15, scope: !740)
!755 = !DILocation(line: 340, column: 3, scope: !740)
!756 = !DILocation(line: 340, column: 6, scope: !740)
!757 = !DILocation(line: 340, column: 9, scope: !740)
!758 = !DILocation(line: 341, column: 15, scope: !740)
!759 = !DILocation(line: 341, column: 3, scope: !740)
!760 = !DILocation(line: 341, column: 6, scope: !740)
!761 = !DILocation(line: 341, column: 9, scope: !740)
!762 = !DILocation(line: 342, column: 3, scope: !740)
!763 = !DILocation(line: 344, column: 10, scope: !740)
!764 = !DILocation(line: 344, column: 9, scope: !740)
!765 = !DILocation(line: 345, column: 11, scope: !740)
!766 = !DILocation(line: 345, column: 23, scope: !740)
!767 = !DILocation(line: 345, column: 17, scope: !740)
!768 = !DILocation(line: 345, column: 3, scope: !740)
!769 = !DILocation(line: 345, column: 6, scope: !740)
!770 = !DILocation(line: 345, column: 9, scope: !740)
!771 = !DILocation(line: 346, column: 11, scope: !740)
!772 = !DILocation(line: 346, column: 23, scope: !740)
!773 = !DILocation(line: 346, column: 17, scope: !740)
!774 = !DILocation(line: 346, column: 3, scope: !740)
!775 = !DILocation(line: 346, column: 6, scope: !740)
!776 = !DILocation(line: 346, column: 9, scope: !740)
!777 = !DILocation(line: 347, column: 11, scope: !740)
!778 = !DILocation(line: 347, column: 24, scope: !740)
!779 = !DILocation(line: 347, column: 18, scope: !740)
!780 = !DILocation(line: 347, column: 3, scope: !740)
!781 = !DILocation(line: 347, column: 6, scope: !740)
!782 = !DILocation(line: 347, column: 9, scope: !740)
!783 = !DILocation(line: 348, column: 11, scope: !740)
!784 = !DILocation(line: 348, column: 24, scope: !740)
!785 = !DILocation(line: 348, column: 18, scope: !740)
!786 = !DILocation(line: 348, column: 3, scope: !740)
!787 = !DILocation(line: 348, column: 6, scope: !740)
!788 = !DILocation(line: 348, column: 9, scope: !740)
!789 = !DILocation(line: 349, column: 3, scope: !740)
!790 = !DILocation(line: 351, column: 10, scope: !740)
!791 = !DILocation(line: 351, column: 9, scope: !740)
!792 = !DILocation(line: 352, column: 15, scope: !740)
!793 = !DILocation(line: 352, column: 3, scope: !740)
!794 = !DILocation(line: 352, column: 6, scope: !740)
!795 = !DILocation(line: 352, column: 9, scope: !740)
!796 = !DILocation(line: 353, column: 15, scope: !740)
!797 = !DILocation(line: 353, column: 3, scope: !740)
!798 = !DILocation(line: 353, column: 6, scope: !740)
!799 = !DILocation(line: 353, column: 9, scope: !740)
!800 = !DILocation(line: 354, column: 11, scope: !740)
!801 = !DILocation(line: 354, column: 24, scope: !740)
!802 = !DILocation(line: 354, column: 18, scope: !740)
!803 = !DILocation(line: 354, column: 3, scope: !740)
!804 = !DILocation(line: 354, column: 6, scope: !740)
!805 = !DILocation(line: 354, column: 9, scope: !740)
!806 = !DILocation(line: 355, column: 11, scope: !740)
!807 = !DILocation(line: 355, column: 24, scope: !740)
!808 = !DILocation(line: 355, column: 18, scope: !740)
!809 = !DILocation(line: 355, column: 3, scope: !740)
!810 = !DILocation(line: 355, column: 6, scope: !740)
!811 = !DILocation(line: 355, column: 9, scope: !740)
!812 = !DILocation(line: 356, column: 3, scope: !740)
!813 = !DILocation(line: 358, column: 3, scope: !740)
!814 = !DILocation(line: 361, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !723, file: !3, line: 361, column: 6)
!816 = !DILocation(line: 361, column: 15, scope: !815)
!817 = !DILocation(line: 361, column: 6, scope: !723)
!818 = !DILocation(line: 362, column: 10, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 361, column: 60)
!820 = !DILocation(line: 362, column: 9, scope: !819)
!821 = !DILocation(line: 364, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 364, column: 7)
!823 = !DILocation(line: 364, column: 16, scope: !822)
!824 = !DILocation(line: 364, column: 7, scope: !819)
!825 = !DILocation(line: 365, column: 12, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 364, column: 38)
!827 = !DILocation(line: 365, column: 24, scope: !826)
!828 = !DILocation(line: 365, column: 18, scope: !826)
!829 = !DILocation(line: 365, column: 4, scope: !826)
!830 = !DILocation(line: 365, column: 7, scope: !826)
!831 = !DILocation(line: 365, column: 10, scope: !826)
!832 = !DILocation(line: 366, column: 12, scope: !826)
!833 = !DILocation(line: 366, column: 24, scope: !826)
!834 = !DILocation(line: 366, column: 18, scope: !826)
!835 = !DILocation(line: 366, column: 4, scope: !826)
!836 = !DILocation(line: 366, column: 7, scope: !826)
!837 = !DILocation(line: 366, column: 10, scope: !826)
!838 = !DILocation(line: 367, column: 3, scope: !826)
!839 = !DILocation(line: 369, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !819, file: !3, line: 369, column: 7)
!841 = !DILocation(line: 369, column: 16, scope: !840)
!842 = !DILocation(line: 369, column: 7, scope: !819)
!843 = !DILocation(line: 370, column: 12, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !3, line: 369, column: 38)
!845 = !DILocation(line: 370, column: 25, scope: !844)
!846 = !DILocation(line: 370, column: 19, scope: !844)
!847 = !DILocation(line: 370, column: 4, scope: !844)
!848 = !DILocation(line: 370, column: 7, scope: !844)
!849 = !DILocation(line: 370, column: 10, scope: !844)
!850 = !DILocation(line: 371, column: 12, scope: !844)
!851 = !DILocation(line: 371, column: 25, scope: !844)
!852 = !DILocation(line: 371, column: 19, scope: !844)
!853 = !DILocation(line: 371, column: 4, scope: !844)
!854 = !DILocation(line: 371, column: 7, scope: !844)
!855 = !DILocation(line: 371, column: 10, scope: !844)
!856 = !DILocation(line: 372, column: 3, scope: !844)
!857 = !DILocation(line: 373, column: 2, scope: !819)
!858 = !DILocation(line: 374, column: 1, scope: !723)
!859 = distinct !DISubprogram(name: "mul_u32_u32", scope: !860, file: !860, line: 155, type: !861, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!860 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!861 = !DISubroutineType(types: !862)
!862 = !{!24, !149, !149}
!863 = !{!864, !865}
!864 = !DILocalVariable(name: "a", arg: 1, scope: !859, file: !860, line: 155, type: !149)
!865 = !DILocalVariable(name: "b", arg: 2, scope: !859, file: !860, line: 155, type: !149)
!866 = !DILocation(line: 155, column: 35, scope: !859)
!867 = !DILocation(line: 155, column: 42, scope: !859)
!868 = !DILocation(line: 157, column: 14, scope: !859)
!869 = !DILocation(line: 157, column: 9, scope: !859)
!870 = !DILocation(line: 157, column: 18, scope: !859)
!871 = !DILocation(line: 157, column: 16, scope: !859)
!872 = !DILocation(line: 157, column: 2, scope: !859)
